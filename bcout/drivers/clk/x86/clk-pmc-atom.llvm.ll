; ModuleID = '../bcout/drivers/clk/x86/clk-pmc-atom.llvm.bc'
source_filename = "drivers/clk/x86/clk-pmc-atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_plt_clk_driver_init6:\09\09\09"
module asm ".long\09plt_clk_driver_init - .\09\09\09"
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
%struct.vdso_image = type opaque
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
%struct.kmem_cache = type opaque
%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.pmc_clk_data = type { i8*, %struct.pmc_clk*, i8 }
%struct.pmc_clk = type { i8*, i64, i8* }
%struct.clk_plt_data = type { %struct.clk_plt_fixed**, i8, [6 x %struct.clk_plt*], %struct.clk_lookup*, %struct.clk_lookup* }
%struct.clk_plt_fixed = type { %struct.clk_hw*, %struct.clk_lookup* }
%struct.clk_plt = type { %struct.clk_hw, i8*, %struct.clk_lookup*, %struct.spinlock }
%struct.clk_lookup = type { %struct.list_head, i8*, i8*, %struct.clk*, %struct.clk_hw* }

@__UNIQUE_ID___addressable_plt_clk_driver_init162 = internal global i8* bitcast (i32 ()* @plt_clk_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@plt_clk_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @plt_clk_probe, i32 (%struct.platform_device*)* @plt_clk_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !231
@.str = private unnamed_addr constant [13 x i8] c"clk-pmc-atom\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ether_clk\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pmc_plt_clk\00", align 1
@plt_clk_ops = internal constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* @plt_clk_enable, void (%struct.clk_hw*)* @plt_clk_disable, i32 (%struct.clk_hw*)* @plt_clk_is_enabled, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* null, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @__clk_mux_determine_rate, i32 (%struct.clk_hw*, i8)* @plt_clk_set_parent, i8 (%struct.clk_hw*)* @plt_clk_get_parent, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !2225
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_plt_clk_driver_init162 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_clk_driver_init() #0 section ".init.text" !dbg !2233 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @plt_clk_driver, %struct.module* null) #10, !dbg !2236
  ret i32 %call, !dbg !2236
}

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_clk_probe(%struct.platform_device* %pdev) #2 !dbg !2237 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %pmc_data = alloca %struct.pmc_clk_data*, align 8
  %parent_names = alloca i8**, align 8
  %data = alloca %struct.clk_plt_data*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2238, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.declare(metadata %struct.pmc_clk_data** %pmc_data, metadata !2240, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.declare(metadata i8*** %parent_names, metadata !2257, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.declare(metadata %struct.clk_plt_data** %data, metadata !2259, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2276, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2278, metadata !DIExpression()), !dbg !2279
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2280
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2281
  %call = call i8* @dev_get_platdata(%struct.device* %dev) #10, !dbg !2282
  %1 = bitcast i8* %call to %struct.pmc_clk_data*, !dbg !2282
  store %struct.pmc_clk_data* %1, %struct.pmc_clk_data** %pmc_data, align 8, !dbg !2283
  %2 = load %struct.pmc_clk_data*, %struct.pmc_clk_data** %pmc_data, align 8, !dbg !2284
  %tobool = icmp ne %struct.pmc_clk_data* %2, null, !dbg !2284
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2286

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.pmc_clk_data*, %struct.pmc_clk_data** %pmc_data, align 8, !dbg !2287
  %clks = getelementptr inbounds %struct.pmc_clk_data, %struct.pmc_clk_data* %3, i32 0, i32 1, !dbg !2288
  %4 = load %struct.pmc_clk*, %struct.pmc_clk** %clks, align 8, !dbg !2288
  %tobool1 = icmp ne %struct.pmc_clk* %4, null, !dbg !2287
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2289

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2290
  br label %return, !dbg !2290

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2291
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !2292
  %call3 = call i8* @devm_kzalloc(%struct.device* %dev2, i64 80, i32 3264) #10, !dbg !2293
  %6 = bitcast i8* %call3 to %struct.clk_plt_data*, !dbg !2293
  store %struct.clk_plt_data* %6, %struct.clk_plt_data** %data, align 8, !dbg !2294
  %7 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2295
  %tobool4 = icmp ne %struct.clk_plt_data* %7, null, !dbg !2295
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2297

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2298
  br label %return, !dbg !2298

if.end6:                                          ; preds = %if.end
  %8 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2299
  %9 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2300
  %10 = load %struct.pmc_clk_data*, %struct.pmc_clk_data** %pmc_data, align 8, !dbg !2301
  %clks7 = getelementptr inbounds %struct.pmc_clk_data, %struct.pmc_clk_data* %10, i32 0, i32 1, !dbg !2302
  %11 = load %struct.pmc_clk*, %struct.pmc_clk** %clks7, align 8, !dbg !2302
  %call8 = call i8** @plt_clk_register_parents(%struct.platform_device* %8, %struct.clk_plt_data* %9, %struct.pmc_clk* %11) #10, !dbg !2303
  store i8** %call8, i8*** %parent_names, align 8, !dbg !2304
  %12 = load i8**, i8*** %parent_names, align 8, !dbg !2305
  %13 = bitcast i8** %12 to i8*, !dbg !2305
  %call9 = call zeroext i1 @IS_ERR(i8* %13) #10, !dbg !2307
  br i1 %call9, label %if.then10, label %if.end12, !dbg !2308

if.then10:                                        ; preds = %if.end6
  %14 = load i8**, i8*** %parent_names, align 8, !dbg !2309
  %15 = bitcast i8** %14 to i8*, !dbg !2309
  %call11 = call i64 @PTR_ERR(i8* %15) #10, !dbg !2310
  %conv = trunc i64 %call11 to i32, !dbg !2310
  store i32 %conv, i32* %retval, align 4, !dbg !2311
  br label %return, !dbg !2311

if.end12:                                         ; preds = %if.end6
  store i32 0, i32* %i, align 4, !dbg !2312
  br label %for.cond, !dbg !2314

for.cond:                                         ; preds = %for.inc, %if.end12
  %16 = load i32, i32* %i, align 4, !dbg !2315
  %cmp = icmp ult i32 %16, 6, !dbg !2317
  br i1 %cmp, label %for.body, label %for.end, !dbg !2318

for.body:                                         ; preds = %for.cond
  %17 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2319
  %18 = load i32, i32* %i, align 4, !dbg !2321
  %19 = load %struct.pmc_clk_data*, %struct.pmc_clk_data** %pmc_data, align 8, !dbg !2322
  %20 = load i8**, i8*** %parent_names, align 8, !dbg !2323
  %21 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2324
  %nparents = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %21, i32 0, i32 1, !dbg !2325
  %22 = load i8, i8* %nparents, align 8, !dbg !2325
  %conv14 = zext i8 %22 to i32, !dbg !2324
  %call15 = call %struct.clk_plt* @plt_clk_register(%struct.platform_device* %17, i32 %18, %struct.pmc_clk_data* %19, i8** %20, i32 %conv14) #10, !dbg !2326
  %23 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2327
  %clks16 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %23, i32 0, i32 2, !dbg !2328
  %24 = load i32, i32* %i, align 4, !dbg !2329
  %idxprom = zext i32 %24 to i64, !dbg !2327
  %arrayidx = getelementptr [6 x %struct.clk_plt*], [6 x %struct.clk_plt*]* %clks16, i64 0, i64 %idxprom, !dbg !2327
  store %struct.clk_plt* %call15, %struct.clk_plt** %arrayidx, align 8, !dbg !2330
  %25 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2331
  %clks17 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %25, i32 0, i32 2, !dbg !2333
  %26 = load i32, i32* %i, align 4, !dbg !2334
  %idxprom18 = zext i32 %26 to i64, !dbg !2331
  %arrayidx19 = getelementptr [6 x %struct.clk_plt*], [6 x %struct.clk_plt*]* %clks17, i64 0, i64 %idxprom18, !dbg !2331
  %27 = load %struct.clk_plt*, %struct.clk_plt** %arrayidx19, align 8, !dbg !2331
  %28 = bitcast %struct.clk_plt* %27 to i8*, !dbg !2331
  %call20 = call zeroext i1 @IS_ERR(i8* %28) #10, !dbg !2335
  br i1 %call20, label %if.then21, label %if.end27, !dbg !2336

if.then21:                                        ; preds = %for.body
  %29 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2337
  %clks22 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %29, i32 0, i32 2, !dbg !2339
  %30 = load i32, i32* %i, align 4, !dbg !2340
  %idxprom23 = zext i32 %30 to i64, !dbg !2337
  %arrayidx24 = getelementptr [6 x %struct.clk_plt*], [6 x %struct.clk_plt*]* %clks22, i64 0, i64 %idxprom23, !dbg !2337
  %31 = load %struct.clk_plt*, %struct.clk_plt** %arrayidx24, align 8, !dbg !2337
  %32 = bitcast %struct.clk_plt* %31 to i8*, !dbg !2337
  %call25 = call i64 @PTR_ERR(i8* %32) #10, !dbg !2341
  %conv26 = trunc i64 %call25 to i32, !dbg !2341
  store i32 %conv26, i32* %err, align 4, !dbg !2342
  br label %err_unreg_clk_plt, !dbg !2343

if.end27:                                         ; preds = %for.body
  br label %for.inc, !dbg !2344

for.inc:                                          ; preds = %if.end27
  %33 = load i32, i32* %i, align 4, !dbg !2345
  %inc = add i32 %33, 1, !dbg !2345
  store i32 %inc, i32* %i, align 4, !dbg !2345
  br label %for.cond, !dbg !2346, !llvm.loop !2347

for.end:                                          ; preds = %for.cond
  %34 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2349
  %clks28 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %34, i32 0, i32 2, !dbg !2350
  %arrayidx29 = getelementptr [6 x %struct.clk_plt*], [6 x %struct.clk_plt*]* %clks28, i64 0, i64 3, !dbg !2349
  %35 = load %struct.clk_plt*, %struct.clk_plt** %arrayidx29, align 8, !dbg !2349
  %hw = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %35, i32 0, i32 0, !dbg !2351
  %call30 = call %struct.clk_lookup* (%struct.clk_hw*, i8*, i8*, ...) @clkdev_hw_create(%struct.clk_hw* %hw, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* null) #10, !dbg !2352
  %36 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2353
  %mclk_lookup = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %36, i32 0, i32 3, !dbg !2354
  store %struct.clk_lookup* %call30, %struct.clk_lookup** %mclk_lookup, align 8, !dbg !2355
  %37 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2356
  %mclk_lookup31 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %37, i32 0, i32 3, !dbg !2358
  %38 = load %struct.clk_lookup*, %struct.clk_lookup** %mclk_lookup31, align 8, !dbg !2358
  %tobool32 = icmp ne %struct.clk_lookup* %38, null, !dbg !2356
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !2359

if.then33:                                        ; preds = %for.end
  store i32 -12, i32* %err, align 4, !dbg !2360
  br label %err_unreg_clk_plt, !dbg !2362

if.end34:                                         ; preds = %for.end
  %39 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2363
  %clks35 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %39, i32 0, i32 2, !dbg !2364
  %arrayidx36 = getelementptr [6 x %struct.clk_plt*], [6 x %struct.clk_plt*]* %clks35, i64 0, i64 4, !dbg !2363
  %40 = load %struct.clk_plt*, %struct.clk_plt** %arrayidx36, align 8, !dbg !2363
  %hw37 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %40, i32 0, i32 0, !dbg !2365
  %call38 = call %struct.clk_lookup* (%struct.clk_hw*, i8*, i8*, ...) @clkdev_hw_create(%struct.clk_hw* %hw37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* null) #10, !dbg !2366
  %41 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2367
  %ether_clk_lookup = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %41, i32 0, i32 4, !dbg !2368
  store %struct.clk_lookup* %call38, %struct.clk_lookup** %ether_clk_lookup, align 8, !dbg !2369
  %42 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2370
  %ether_clk_lookup39 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %42, i32 0, i32 4, !dbg !2372
  %43 = load %struct.clk_lookup*, %struct.clk_lookup** %ether_clk_lookup39, align 8, !dbg !2372
  %tobool40 = icmp ne %struct.clk_lookup* %43, null, !dbg !2370
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !2373

if.then41:                                        ; preds = %if.end34
  store i32 -12, i32* %err, align 4, !dbg !2374
  br label %err_drop_mclk, !dbg !2376

if.end42:                                         ; preds = %if.end34
  %44 = load i8**, i8*** %parent_names, align 8, !dbg !2377
  %45 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2378
  %nparents43 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %45, i32 0, i32 1, !dbg !2379
  %46 = load i8, i8* %nparents43, align 8, !dbg !2379
  %conv44 = zext i8 %46 to i32, !dbg !2378
  call void @plt_clk_free_parent_names_loop(i8** %44, i32 %conv44) #10, !dbg !2380
  %47 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2381
  %48 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2382
  %49 = bitcast %struct.clk_plt_data* %48 to i8*, !dbg !2382
  call void @platform_set_drvdata(%struct.platform_device* %47, i8* %49) #10, !dbg !2383
  store i32 0, i32* %retval, align 4, !dbg !2384
  br label %return, !dbg !2384

err_drop_mclk:                                    ; preds = %if.then41
  call void @llvm.dbg.label(metadata !2385), !dbg !2386
  %50 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2387
  %mclk_lookup45 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %50, i32 0, i32 3, !dbg !2388
  %51 = load %struct.clk_lookup*, %struct.clk_lookup** %mclk_lookup45, align 8, !dbg !2388
  call void @clkdev_drop(%struct.clk_lookup* %51) #10, !dbg !2389
  br label %err_unreg_clk_plt, !dbg !2389

err_unreg_clk_plt:                                ; preds = %err_drop_mclk, %if.then33, %if.then21
  call void @llvm.dbg.label(metadata !2390), !dbg !2391
  %52 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2392
  %53 = load i32, i32* %i, align 4, !dbg !2393
  call void @plt_clk_unregister_loop(%struct.clk_plt_data* %52, i32 %53) #10, !dbg !2394
  %54 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2395
  call void @plt_clk_unregister_parents(%struct.clk_plt_data* %54) #10, !dbg !2396
  %55 = load i8**, i8*** %parent_names, align 8, !dbg !2397
  %56 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2398
  %nparents46 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %56, i32 0, i32 1, !dbg !2399
  %57 = load i8, i8* %nparents46, align 8, !dbg !2399
  %conv47 = zext i8 %57 to i32, !dbg !2398
  call void @plt_clk_free_parent_names_loop(i8** %55, i32 %conv47) #10, !dbg !2400
  %58 = load i32, i32* %err, align 4, !dbg !2401
  store i32 %58, i32* %retval, align 4, !dbg !2402
  br label %return, !dbg !2402

return:                                           ; preds = %err_unreg_clk_plt, %if.end42, %if.then10, %if.then5, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !2403
  ret i32 %59, !dbg !2403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_clk_remove(%struct.platform_device* %pdev) #2 !dbg !2404 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data = alloca %struct.clk_plt_data*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata %struct.clk_plt_data** %data, metadata !2407, metadata !DIExpression()), !dbg !2408
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2409
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #10, !dbg !2410
  %1 = bitcast i8* %call to %struct.clk_plt_data*, !dbg !2410
  store %struct.clk_plt_data* %1, %struct.clk_plt_data** %data, align 8, !dbg !2411
  %2 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2412
  %ether_clk_lookup = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %2, i32 0, i32 4, !dbg !2413
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %ether_clk_lookup, align 8, !dbg !2413
  call void @clkdev_drop(%struct.clk_lookup* %3) #10, !dbg !2414
  %4 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2415
  %mclk_lookup = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %4, i32 0, i32 3, !dbg !2416
  %5 = load %struct.clk_lookup*, %struct.clk_lookup** %mclk_lookup, align 8, !dbg !2416
  call void @clkdev_drop(%struct.clk_lookup* %5) #10, !dbg !2417
  %6 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2418
  call void @plt_clk_unregister_loop(%struct.clk_plt_data* %6, i32 6) #10, !dbg !2419
  %7 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data, align 8, !dbg !2420
  call void @plt_clk_unregister_parents(%struct.clk_plt_data* %7) #10, !dbg !2421
  ret i32 0, !dbg !2422
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_platdata(%struct.device* %dev) #2 !dbg !2423 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2426, metadata !DIExpression()), !dbg !2427
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2428
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 7, !dbg !2429
  %1 = load i8*, i8** %platform_data, align 8, !dbg !2429
  ret i8* %1, !dbg !2430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2431 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2438, metadata !DIExpression()), !dbg !2439
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2440
  %1 = load i64, i64* %size.addr, align 8, !dbg !2441
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2442
  %or = or i32 %2, 256, !dbg !2443
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #10, !dbg !2444
  ret i8* %call, !dbg !2445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8** @plt_clk_register_parents(%struct.platform_device* %pdev, %struct.clk_plt_data* %data, %struct.pmc_clk* %clks) #2 !dbg !2446 {
entry:
  %retval = alloca i8**, align 8
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca %struct.clk_plt_data*, align 8
  %clks.addr = alloca %struct.pmc_clk*, align 8
  %parent_names = alloca i8**, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %nparents = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2449, metadata !DIExpression()), !dbg !2450
  store %struct.clk_plt_data* %data, %struct.clk_plt_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_plt_data** %data.addr, metadata !2451, metadata !DIExpression()), !dbg !2452
  store %struct.pmc_clk* %clks, %struct.pmc_clk** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pmc_clk** %clks.addr, metadata !2453, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.declare(metadata i8*** %parent_names, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2457, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2459, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.declare(metadata i32* %nparents, metadata !2461, metadata !DIExpression()), !dbg !2462
  store i32 0, i32* %nparents, align 4, !dbg !2462
  %0 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2463
  %nparents1 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %0, i32 0, i32 1, !dbg !2464
  store i8 0, i8* %nparents1, align 8, !dbg !2465
  br label %while.cond, !dbg !2466

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.pmc_clk*, %struct.pmc_clk** %clks.addr, align 8, !dbg !2467
  %2 = load i32, i32* %nparents, align 4, !dbg !2468
  %idxprom = sext i32 %2 to i64, !dbg !2467
  %arrayidx = getelementptr %struct.pmc_clk, %struct.pmc_clk* %1, i64 %idxprom, !dbg !2467
  %name = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %arrayidx, i32 0, i32 0, !dbg !2469
  %3 = load i8*, i8** %name, align 8, !dbg !2469
  %tobool = icmp ne i8* %3, null, !dbg !2466
  br i1 %tobool, label %while.body, label %while.end, !dbg !2466

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %nparents, align 4, !dbg !2470
  %inc = add i32 %4, 1, !dbg !2470
  store i32 %inc, i32* %nparents, align 4, !dbg !2470
  br label %while.cond, !dbg !2466, !llvm.loop !2471

while.end:                                        ; preds = %while.cond
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2472
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !2473
  %6 = load i32, i32* %nparents, align 4, !dbg !2474
  %conv = sext i32 %6 to i64, !dbg !2474
  %call = call i8* @devm_kcalloc(%struct.device* %dev, i64 %conv, i64 8, i32 3264) #10, !dbg !2475
  %7 = bitcast i8* %call to %struct.clk_plt_fixed**, !dbg !2475
  %8 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2476
  %parents = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %8, i32 0, i32 0, !dbg !2477
  store %struct.clk_plt_fixed** %7, %struct.clk_plt_fixed*** %parents, align 8, !dbg !2478
  %9 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2479
  %parents2 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %9, i32 0, i32 0, !dbg !2481
  %10 = load %struct.clk_plt_fixed**, %struct.clk_plt_fixed*** %parents2, align 8, !dbg !2481
  %tobool3 = icmp ne %struct.clk_plt_fixed** %10, null, !dbg !2479
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2482

if.then:                                          ; preds = %while.end
  %call4 = call i8* @ERR_PTR(i64 -12) #10, !dbg !2483
  %11 = bitcast i8* %call4 to i8**, !dbg !2483
  store i8** %11, i8*** %retval, align 8, !dbg !2484
  br label %return, !dbg !2484

if.end:                                           ; preds = %while.end
  %12 = load i32, i32* %nparents, align 4, !dbg !2485
  %conv5 = sext i32 %12 to i64, !dbg !2485
  %call6 = call i8* @kcalloc(i64 %conv5, i64 8, i32 3264) #10, !dbg !2486
  %13 = bitcast i8* %call6 to i8**, !dbg !2486
  store i8** %13, i8*** %parent_names, align 8, !dbg !2487
  %14 = load i8**, i8*** %parent_names, align 8, !dbg !2488
  %tobool7 = icmp ne i8** %14, null, !dbg !2488
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !2490

if.then8:                                         ; preds = %if.end
  %call9 = call i8* @ERR_PTR(i64 -12) #10, !dbg !2491
  %15 = bitcast i8* %call9 to i8**, !dbg !2491
  store i8** %15, i8*** %retval, align 8, !dbg !2492
  br label %return, !dbg !2492

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !2493
  br label %for.cond, !dbg !2495

for.cond:                                         ; preds = %for.inc, %if.end10
  %16 = load i32, i32* %i, align 4, !dbg !2496
  %17 = load i32, i32* %nparents, align 4, !dbg !2498
  %cmp = icmp ult i32 %16, %17, !dbg !2499
  br i1 %cmp, label %for.body, label %for.end, !dbg !2500

for.body:                                         ; preds = %for.cond
  %18 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2501
  %19 = load %struct.pmc_clk*, %struct.pmc_clk** %clks.addr, align 8, !dbg !2503
  %20 = load i32, i32* %i, align 4, !dbg !2504
  %idxprom12 = zext i32 %20 to i64, !dbg !2503
  %arrayidx13 = getelementptr %struct.pmc_clk, %struct.pmc_clk* %19, i64 %idxprom12, !dbg !2503
  %name14 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %arrayidx13, i32 0, i32 0, !dbg !2505
  %21 = load i8*, i8** %name14, align 8, !dbg !2505
  %22 = load %struct.pmc_clk*, %struct.pmc_clk** %clks.addr, align 8, !dbg !2506
  %23 = load i32, i32* %i, align 4, !dbg !2507
  %idxprom15 = zext i32 %23 to i64, !dbg !2506
  %arrayidx16 = getelementptr %struct.pmc_clk, %struct.pmc_clk* %22, i64 %idxprom15, !dbg !2506
  %parent_name = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %arrayidx16, i32 0, i32 2, !dbg !2508
  %24 = load i8*, i8** %parent_name, align 8, !dbg !2508
  %25 = load %struct.pmc_clk*, %struct.pmc_clk** %clks.addr, align 8, !dbg !2509
  %26 = load i32, i32* %i, align 4, !dbg !2510
  %idxprom17 = zext i32 %26 to i64, !dbg !2509
  %arrayidx18 = getelementptr %struct.pmc_clk, %struct.pmc_clk* %25, i64 %idxprom17, !dbg !2509
  %freq = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %arrayidx18, i32 0, i32 1, !dbg !2511
  %27 = load i64, i64* %freq, align 8, !dbg !2511
  %call19 = call %struct.clk_plt_fixed* @plt_clk_register_fixed_rate(%struct.platform_device* %18, i8* %21, i8* %24, i64 %27) #10, !dbg !2512
  %28 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2513
  %parents20 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %28, i32 0, i32 0, !dbg !2514
  %29 = load %struct.clk_plt_fixed**, %struct.clk_plt_fixed*** %parents20, align 8, !dbg !2514
  %30 = load i32, i32* %i, align 4, !dbg !2515
  %idxprom21 = zext i32 %30 to i64, !dbg !2513
  %arrayidx22 = getelementptr %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %29, i64 %idxprom21, !dbg !2513
  store %struct.clk_plt_fixed* %call19, %struct.clk_plt_fixed** %arrayidx22, align 8, !dbg !2516
  %31 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2517
  %parents23 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %31, i32 0, i32 0, !dbg !2519
  %32 = load %struct.clk_plt_fixed**, %struct.clk_plt_fixed*** %parents23, align 8, !dbg !2519
  %33 = load i32, i32* %i, align 4, !dbg !2520
  %idxprom24 = zext i32 %33 to i64, !dbg !2517
  %arrayidx25 = getelementptr %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %32, i64 %idxprom24, !dbg !2517
  %34 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %arrayidx25, align 8, !dbg !2517
  %35 = bitcast %struct.clk_plt_fixed* %34 to i8*, !dbg !2517
  %call26 = call zeroext i1 @IS_ERR(i8* %35) #10, !dbg !2521
  br i1 %call26, label %if.then27, label %if.end33, !dbg !2522

if.then27:                                        ; preds = %for.body
  %36 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2523
  %parents28 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %36, i32 0, i32 0, !dbg !2525
  %37 = load %struct.clk_plt_fixed**, %struct.clk_plt_fixed*** %parents28, align 8, !dbg !2525
  %38 = load i32, i32* %i, align 4, !dbg !2526
  %idxprom29 = zext i32 %38 to i64, !dbg !2523
  %arrayidx30 = getelementptr %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %37, i64 %idxprom29, !dbg !2523
  %39 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %arrayidx30, align 8, !dbg !2523
  %40 = bitcast %struct.clk_plt_fixed* %39 to i8*, !dbg !2523
  %call31 = call i64 @PTR_ERR(i8* %40) #10, !dbg !2527
  %conv32 = trunc i64 %call31 to i32, !dbg !2527
  store i32 %conv32, i32* %err, align 4, !dbg !2528
  br label %err_unreg, !dbg !2529

if.end33:                                         ; preds = %for.body
  %41 = load %struct.pmc_clk*, %struct.pmc_clk** %clks.addr, align 8, !dbg !2530
  %42 = load i32, i32* %i, align 4, !dbg !2531
  %idxprom34 = zext i32 %42 to i64, !dbg !2530
  %arrayidx35 = getelementptr %struct.pmc_clk, %struct.pmc_clk* %41, i64 %idxprom34, !dbg !2530
  %name36 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %arrayidx35, i32 0, i32 0, !dbg !2532
  %43 = load i8*, i8** %name36, align 8, !dbg !2532
  %call37 = call i8* @kstrdup_const(i8* %43, i32 3264) #10, !dbg !2533
  %44 = load i8**, i8*** %parent_names, align 8, !dbg !2534
  %45 = load i32, i32* %i, align 4, !dbg !2535
  %idxprom38 = zext i32 %45 to i64, !dbg !2534
  %arrayidx39 = getelementptr i8*, i8** %44, i64 %idxprom38, !dbg !2534
  store i8* %call37, i8** %arrayidx39, align 8, !dbg !2536
  br label %for.inc, !dbg !2537

for.inc:                                          ; preds = %if.end33
  %46 = load i32, i32* %i, align 4, !dbg !2538
  %inc40 = add i32 %46, 1, !dbg !2538
  store i32 %inc40, i32* %i, align 4, !dbg !2538
  br label %for.cond, !dbg !2539, !llvm.loop !2540

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %nparents, align 4, !dbg !2542
  %conv41 = trunc i32 %47 to i8, !dbg !2542
  %48 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2543
  %nparents42 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %48, i32 0, i32 1, !dbg !2544
  store i8 %conv41, i8* %nparents42, align 8, !dbg !2545
  %49 = load i8**, i8*** %parent_names, align 8, !dbg !2546
  store i8** %49, i8*** %retval, align 8, !dbg !2547
  br label %return, !dbg !2547

err_unreg:                                        ; preds = %if.then27
  call void @llvm.dbg.label(metadata !2548), !dbg !2549
  %50 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2550
  %51 = load i32, i32* %i, align 4, !dbg !2551
  call void @plt_clk_unregister_fixed_rate_loop(%struct.clk_plt_data* %50, i32 %51) #10, !dbg !2552
  %52 = load i8**, i8*** %parent_names, align 8, !dbg !2553
  %53 = load i32, i32* %i, align 4, !dbg !2554
  call void @plt_clk_free_parent_names_loop(i8** %52, i32 %53) #10, !dbg !2555
  %54 = load i32, i32* %err, align 4, !dbg !2556
  %conv43 = sext i32 %54 to i64, !dbg !2556
  %call44 = call i8* @ERR_PTR(i64 %conv43) #10, !dbg !2557
  %55 = bitcast i8* %call44 to i8**, !dbg !2557
  store i8** %55, i8*** %retval, align 8, !dbg !2558
  br label %return, !dbg !2558

return:                                           ; preds = %err_unreg, %for.end, %if.then8, %if.then
  %56 = load i8**, i8*** %retval, align 8, !dbg !2559
  ret i8** %56, !dbg !2559
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2560 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2566
  %1 = ptrtoint i8* %0 to i64, !dbg !2566
  %2 = inttoptr i64 %1 to i8*, !dbg !2566
  %3 = ptrtoint i8* %2 to i64, !dbg !2566
  %cmp = icmp uge i64 %3, -4095, !dbg !2566
  %lnot = xor i1 %cmp, true, !dbg !2566
  %lnot1 = xor i1 %lnot, true, !dbg !2566
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2566
  %conv = sext i32 %lnot.ext to i64, !dbg !2566
  %tobool = icmp ne i64 %conv, 0, !dbg !2566
  ret i1 %tobool, !dbg !2567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2568 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2571, metadata !DIExpression()), !dbg !2572
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2573
  %1 = ptrtoint i8* %0 to i64, !dbg !2574
  ret i64 %1, !dbg !2575
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_plt* @plt_clk_register(%struct.platform_device* %pdev, i32 %id, %struct.pmc_clk_data* %pmc_data, i8** %parent_names, i32 %num_parents) #2 !dbg !2576 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2579, metadata !DIExpression()), !dbg !2586
  %retval = alloca %struct.clk_plt*, align 8
  %pdev.addr = alloca %struct.platform_device*, align 8
  %id.addr = alloca i32, align 4
  %pmc_data.addr = alloca %struct.pmc_clk_data*, align 8
  %parent_names.addr = alloca i8**, align 8
  %num_parents.addr = alloca i32, align 4
  %pclk = alloca %struct.clk_plt*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2589, metadata !DIExpression()), !dbg !2590
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  store %struct.pmc_clk_data* %pmc_data, %struct.pmc_clk_data** %pmc_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pmc_clk_data** %pmc_data.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  store i8** %parent_names, i8*** %parent_names.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %parent_names.addr, metadata !2595, metadata !DIExpression()), !dbg !2596
  store i32 %num_parents, i32* %num_parents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_parents.addr, metadata !2597, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.declare(metadata %struct.clk_plt** %pclk, metadata !2599, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !2601, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2603, metadata !DIExpression()), !dbg !2604
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2605
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2606
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 40, i32 3264) #10, !dbg !2607
  %1 = bitcast i8* %call to %struct.clk_plt*, !dbg !2607
  store %struct.clk_plt* %1, %struct.clk_plt** %pclk, align 8, !dbg !2608
  %2 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2609
  %tobool = icmp ne %struct.clk_plt* %2, null, !dbg !2609
  br i1 %tobool, label %if.end, label %if.then, !dbg !2611

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #10, !dbg !2612
  %3 = bitcast i8* %call1 to %struct.clk_plt*, !dbg !2612
  store %struct.clk_plt* %3, %struct.clk_plt** %retval, align 8, !dbg !2613
  br label %return, !dbg !2613

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %id.addr, align 4, !dbg !2614
  %call2 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %4) #10, !dbg !2615
  %name = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !2616
  store i8* %call2, i8** %name, align 8, !dbg !2617
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !2618
  store %struct.clk_ops* @plt_clk_ops, %struct.clk_ops** %ops, align 8, !dbg !2619
  %flags = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !2620
  store i64 0, i64* %flags, align 8, !dbg !2621
  %5 = load i8**, i8*** %parent_names.addr, align 8, !dbg !2622
  %parent_names3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 2, !dbg !2623
  store i8** %5, i8*** %parent_names3, align 8, !dbg !2624
  %6 = load i32, i32* %num_parents.addr, align 4, !dbg !2625
  %conv = trunc i32 %6 to i8, !dbg !2625
  %num_parents4 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !2626
  store i8 %conv, i8* %num_parents4, align 8, !dbg !2627
  %7 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2628
  %hw = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %7, i32 0, i32 0, !dbg !2629
  %init5 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw, i32 0, i32 2, !dbg !2630
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init5, align 8, !dbg !2631
  %8 = load %struct.pmc_clk_data*, %struct.pmc_clk_data** %pmc_data.addr, align 8, !dbg !2632
  %base = getelementptr inbounds %struct.pmc_clk_data, %struct.pmc_clk_data* %8, i32 0, i32 0, !dbg !2633
  %9 = load i8*, i8** %base, align 8, !dbg !2633
  %add.ptr = getelementptr i8, i8* %9, i64 96, !dbg !2634
  %10 = load i32, i32* %id.addr, align 4, !dbg !2635
  %mul = mul i32 %10, 4, !dbg !2636
  %idx.ext = sext i32 %mul to i64, !dbg !2637
  %add.ptr6 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !2637
  %11 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2638
  %reg = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %11, i32 0, i32 1, !dbg !2639
  store i8* %add.ptr6, i8** %reg, align 8, !dbg !2640
  br label %do.body, !dbg !2641

do.body:                                          ; preds = %if.end
  %12 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2642
  %lock = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %12, i32 0, i32 3, !dbg !2642
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2643
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !2644
  %rlock.i = bitcast %union.anon* %14 to %struct.raw_spinlock*, !dbg !2644
  %15 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2642
  %lock8 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %15, i32 0, i32 3, !dbg !2642
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !2642
  %rlock = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !2642
  %17 = bitcast %struct.spinlock* %lock8 to i8*, !dbg !2642
  %18 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 1 %18, i64 0, i1 false), !dbg !2642
  br label %do.end, !dbg !2642

do.end:                                           ; preds = %do.body
  %19 = load %struct.pmc_clk_data*, %struct.pmc_clk_data** %pmc_data.addr, align 8, !dbg !2645
  %critical = getelementptr inbounds %struct.pmc_clk_data, %struct.pmc_clk_data* %19, i32 0, i32 2, !dbg !2647
  %20 = load i8, i8* %critical, align 8, !dbg !2647
  %tobool9 = trunc i8 %20 to i1, !dbg !2647
  br i1 %tobool9, label %land.lhs.true, label %if.end16, !dbg !2648

land.lhs.true:                                    ; preds = %do.end
  %21 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2649
  %hw11 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %21, i32 0, i32 0, !dbg !2650
  %call12 = call i32 @plt_clk_is_enabled(%struct.clk_hw* %hw11) #10, !dbg !2651
  %tobool13 = icmp ne i32 %call12, 0, !dbg !2651
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !2652

if.then14:                                        ; preds = %land.lhs.true
  %flags15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !2653
  %22 = load i64, i64* %flags15, align 8, !dbg !2654
  %or = or i64 %22, 2048, !dbg !2654
  store i64 %or, i64* %flags15, align 8, !dbg !2654
  br label %if.end16, !dbg !2655

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %do.end
  %23 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2656
  %dev17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 3, !dbg !2657
  %24 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2658
  %hw18 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %24, i32 0, i32 0, !dbg !2659
  %call19 = call i32 @devm_clk_hw_register(%struct.device* %dev17, %struct.clk_hw* %hw18) #10, !dbg !2660
  store i32 %call19, i32* %ret, align 4, !dbg !2661
  %25 = load i32, i32* %ret, align 4, !dbg !2662
  %tobool20 = icmp ne i32 %25, 0, !dbg !2662
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !2664

if.then21:                                        ; preds = %if.end16
  %26 = load i32, i32* %ret, align 4, !dbg !2665
  %conv22 = sext i32 %26 to i64, !dbg !2665
  %call23 = call i8* @ERR_PTR(i64 %conv22) #10, !dbg !2667
  %27 = bitcast i8* %call23 to %struct.clk_plt*, !dbg !2667
  store %struct.clk_plt* %27, %struct.clk_plt** %pclk, align 8, !dbg !2668
  br label %err_free_init, !dbg !2669

if.end24:                                         ; preds = %if.end16
  %28 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2670
  %hw25 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %28, i32 0, i32 0, !dbg !2671
  %name26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !2672
  %29 = load i8*, i8** %name26, align 8, !dbg !2672
  %call27 = call %struct.clk_lookup* (%struct.clk_hw*, i8*, i8*, ...) @clkdev_hw_create(%struct.clk_hw* %hw25, i8* %29, i8* null) #10, !dbg !2673
  %30 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2674
  %lookup = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %30, i32 0, i32 2, !dbg !2675
  store %struct.clk_lookup* %call27, %struct.clk_lookup** %lookup, align 8, !dbg !2676
  %31 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2677
  %lookup28 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %31, i32 0, i32 2, !dbg !2679
  %32 = load %struct.clk_lookup*, %struct.clk_lookup** %lookup28, align 8, !dbg !2679
  %tobool29 = icmp ne %struct.clk_lookup* %32, null, !dbg !2677
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !2680

if.then30:                                        ; preds = %if.end24
  %call31 = call i8* @ERR_PTR(i64 -12) #10, !dbg !2681
  %33 = bitcast i8* %call31 to %struct.clk_plt*, !dbg !2681
  store %struct.clk_plt* %33, %struct.clk_plt** %pclk, align 8, !dbg !2683
  br label %err_free_init, !dbg !2684

if.end32:                                         ; preds = %if.end24
  br label %err_free_init, !dbg !2679

err_free_init:                                    ; preds = %if.end32, %if.then30, %if.then21
  call void @llvm.dbg.label(metadata !2685), !dbg !2686
  %name33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !2687
  %34 = load i8*, i8** %name33, align 8, !dbg !2687
  call void @kfree(i8* %34) #10, !dbg !2688
  %35 = load %struct.clk_plt*, %struct.clk_plt** %pclk, align 8, !dbg !2689
  store %struct.clk_plt* %35, %struct.clk_plt** %retval, align 8, !dbg !2690
  br label %return, !dbg !2690

return:                                           ; preds = %err_free_init, %if.then
  %36 = load %struct.clk_plt*, %struct.clk_plt** %retval, align 8, !dbg !2691
  ret %struct.clk_plt* %36, !dbg !2691
}

; Function Attrs: noredzone
declare dso_local %struct.clk_lookup* @clkdev_hw_create(%struct.clk_hw*, i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plt_clk_free_parent_names_loop(i8** %parent_names, i32 %i) #2 !dbg !2692 {
entry:
  %parent_names.addr = alloca i8**, align 8
  %i.addr = alloca i32, align 4
  store i8** %parent_names, i8*** %parent_names.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %parent_names.addr, metadata !2695, metadata !DIExpression()), !dbg !2696
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !2697, metadata !DIExpression()), !dbg !2698
  br label %while.cond, !dbg !2699

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i.addr, align 4, !dbg !2700
  %dec = add i32 %0, -1, !dbg !2700
  store i32 %dec, i32* %i.addr, align 4, !dbg !2700
  %tobool = icmp ne i32 %0, 0, !dbg !2699
  br i1 %tobool, label %while.body, label %while.end, !dbg !2699

while.body:                                       ; preds = %while.cond
  %1 = load i8**, i8*** %parent_names.addr, align 8, !dbg !2701
  %2 = load i32, i32* %i.addr, align 4, !dbg !2702
  %idxprom = zext i32 %2 to i64, !dbg !2701
  %arrayidx = getelementptr i8*, i8** %1, i64 %idxprom, !dbg !2701
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !2701
  call void @kfree_const(i8* %3) #10, !dbg !2703
  br label %while.cond, !dbg !2699, !llvm.loop !2704

while.end:                                        ; preds = %while.cond
  %4 = load i8**, i8*** %parent_names.addr, align 8, !dbg !2706
  %5 = bitcast i8** %4 to i8*, !dbg !2706
  call void @kfree(i8* %5) #10, !dbg !2707
  ret void, !dbg !2708
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2709 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2712, metadata !DIExpression()), !dbg !2713
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2714, metadata !DIExpression()), !dbg !2715
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2716
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2717
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2718
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #10, !dbg !2719
  ret void, !dbg !2720
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @clkdev_drop(%struct.clk_lookup*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plt_clk_unregister_loop(%struct.clk_plt_data* %data, i32 %i) #2 !dbg !2721 {
entry:
  %data.addr = alloca %struct.clk_plt_data*, align 8
  %i.addr = alloca i32, align 4
  store %struct.clk_plt_data* %data, %struct.clk_plt_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_plt_data** %data.addr, metadata !2724, metadata !DIExpression()), !dbg !2725
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !2726, metadata !DIExpression()), !dbg !2727
  br label %while.cond, !dbg !2728

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i.addr, align 4, !dbg !2729
  %dec = add i32 %0, -1, !dbg !2729
  store i32 %dec, i32* %i.addr, align 4, !dbg !2729
  %tobool = icmp ne i32 %0, 0, !dbg !2728
  br i1 %tobool, label %while.body, label %while.end, !dbg !2728

while.body:                                       ; preds = %while.cond
  %1 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2730
  %clks = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %1, i32 0, i32 2, !dbg !2731
  %2 = load i32, i32* %i.addr, align 4, !dbg !2732
  %idxprom = zext i32 %2 to i64, !dbg !2730
  %arrayidx = getelementptr [6 x %struct.clk_plt*], [6 x %struct.clk_plt*]* %clks, i64 0, i64 %idxprom, !dbg !2730
  %3 = load %struct.clk_plt*, %struct.clk_plt** %arrayidx, align 8, !dbg !2730
  call void @plt_clk_unregister(%struct.clk_plt* %3) #10, !dbg !2733
  br label %while.cond, !dbg !2728, !llvm.loop !2734

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2736
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plt_clk_unregister_parents(%struct.clk_plt_data* %data) #2 !dbg !2737 {
entry:
  %data.addr = alloca %struct.clk_plt_data*, align 8
  store %struct.clk_plt_data* %data, %struct.clk_plt_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_plt_data** %data.addr, metadata !2740, metadata !DIExpression()), !dbg !2741
  %0 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2742
  %1 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2743
  %nparents = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %1, i32 0, i32 1, !dbg !2744
  %2 = load i8, i8* %nparents, align 8, !dbg !2744
  %conv = zext i8 %2 to i32, !dbg !2743
  call void @plt_clk_unregister_fixed_rate_loop(%struct.clk_plt_data* %0, i32 %conv) #10, !dbg !2745
  ret void, !dbg !2746
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kcalloc(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !2747 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2752, metadata !DIExpression()), !dbg !2753
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2754, metadata !DIExpression()), !dbg !2755
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2756, metadata !DIExpression()), !dbg !2757
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2758
  %1 = load i64, i64* %n.addr, align 8, !dbg !2759
  %2 = load i64, i64* %size.addr, align 8, !dbg !2760
  %3 = load i32, i32* %flags.addr, align 4, !dbg !2761
  %or = or i32 %3, 256, !dbg !2762
  %call = call i8* @devm_kmalloc_array(%struct.device* %0, i64 %1, i64 %2, i32 %or) #10, !dbg !2763
  ret i8* %call, !dbg !2764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #2 !dbg !2765 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  %0 = load i64, i64* %error.addr, align 8, !dbg !2770
  %1 = inttoptr i64 %0 to i8*, !dbg !2771
  ret i8* %1, !dbg !2772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #2 !dbg !2773 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2776, metadata !DIExpression()), !dbg !2777
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2778, metadata !DIExpression()), !dbg !2779
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2780, metadata !DIExpression()), !dbg !2781
  %0 = load i64, i64* %n.addr, align 8, !dbg !2782
  %1 = load i64, i64* %size.addr, align 8, !dbg !2783
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2784
  %or = or i32 %2, 256, !dbg !2785
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !2786
  ret i8* %call, !dbg !2787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_plt_fixed* @plt_clk_register_fixed_rate(%struct.platform_device* %pdev, i8* %name, i8* %parent_name, i64 %fixed_rate) #2 !dbg !2788 {
entry:
  %retval = alloca %struct.clk_plt_fixed*, align 8
  %pdev.addr = alloca %struct.platform_device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %fixed_rate.addr = alloca i64, align 8
  %pclk = alloca %struct.clk_plt_fixed*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2791, metadata !DIExpression()), !dbg !2792
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2793, metadata !DIExpression()), !dbg !2794
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2795, metadata !DIExpression()), !dbg !2796
  store i64 %fixed_rate, i64* %fixed_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %fixed_rate.addr, metadata !2797, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.declare(metadata %struct.clk_plt_fixed** %pclk, metadata !2799, metadata !DIExpression()), !dbg !2800
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2801
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2802
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 16, i32 3264) #10, !dbg !2803
  %1 = bitcast i8* %call to %struct.clk_plt_fixed*, !dbg !2803
  store %struct.clk_plt_fixed* %1, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2804
  %2 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2805
  %tobool = icmp ne %struct.clk_plt_fixed* %2, null, !dbg !2805
  br i1 %tobool, label %if.end, label %if.then, !dbg !2807

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #10, !dbg !2808
  %3 = bitcast i8* %call1 to %struct.clk_plt_fixed*, !dbg !2808
  store %struct.clk_plt_fixed* %3, %struct.clk_plt_fixed** %retval, align 8, !dbg !2809
  br label %return, !dbg !2809

if.end:                                           ; preds = %entry
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2810
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 3, !dbg !2810
  %5 = load i8*, i8** %name.addr, align 8, !dbg !2810
  %6 = load i8*, i8** %parent_name.addr, align 8, !dbg !2810
  %7 = load i64, i64* %fixed_rate.addr, align 8, !dbg !2810
  %call3 = call %struct.clk_hw* @__clk_hw_register_fixed_rate(%struct.device* %dev2, %struct.device_node* null, i8* %5, i8* %6, %struct.clk_hw* null, %struct.clk_parent_data* null, i64 0, i64 %7, i64 0, i64 0) #10, !dbg !2810
  %8 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2811
  %clk = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %8, i32 0, i32 0, !dbg !2812
  store %struct.clk_hw* %call3, %struct.clk_hw** %clk, align 8, !dbg !2813
  %9 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2814
  %clk4 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %9, i32 0, i32 0, !dbg !2816
  %10 = load %struct.clk_hw*, %struct.clk_hw** %clk4, align 8, !dbg !2816
  %11 = bitcast %struct.clk_hw* %10 to i8*, !dbg !2814
  %call5 = call zeroext i1 @IS_ERR(i8* %11) #10, !dbg !2817
  br i1 %call5, label %if.then6, label %if.end9, !dbg !2818

if.then6:                                         ; preds = %if.end
  %12 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2819
  %clk7 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %12, i32 0, i32 0, !dbg !2820
  %13 = load %struct.clk_hw*, %struct.clk_hw** %clk7, align 8, !dbg !2820
  %14 = bitcast %struct.clk_hw* %13 to i8*, !dbg !2819
  %call8 = call i8* @ERR_CAST(i8* %14) #10, !dbg !2821
  %15 = bitcast i8* %call8 to %struct.clk_plt_fixed*, !dbg !2821
  store %struct.clk_plt_fixed* %15, %struct.clk_plt_fixed** %retval, align 8, !dbg !2822
  br label %return, !dbg !2822

if.end9:                                          ; preds = %if.end
  %16 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2823
  %clk10 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %16, i32 0, i32 0, !dbg !2824
  %17 = load %struct.clk_hw*, %struct.clk_hw** %clk10, align 8, !dbg !2824
  %18 = load i8*, i8** %name.addr, align 8, !dbg !2825
  %call11 = call %struct.clk_lookup* (%struct.clk_hw*, i8*, i8*, ...) @clkdev_hw_create(%struct.clk_hw* %17, i8* %18, i8* null) #10, !dbg !2826
  %19 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2827
  %lookup = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %19, i32 0, i32 1, !dbg !2828
  store %struct.clk_lookup* %call11, %struct.clk_lookup** %lookup, align 8, !dbg !2829
  %20 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2830
  %lookup12 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %20, i32 0, i32 1, !dbg !2832
  %21 = load %struct.clk_lookup*, %struct.clk_lookup** %lookup12, align 8, !dbg !2832
  %tobool13 = icmp ne %struct.clk_lookup* %21, null, !dbg !2830
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !2833

if.then14:                                        ; preds = %if.end9
  %22 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2834
  %clk15 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %22, i32 0, i32 0, !dbg !2836
  %23 = load %struct.clk_hw*, %struct.clk_hw** %clk15, align 8, !dbg !2836
  call void @clk_hw_unregister_fixed_rate(%struct.clk_hw* %23) #10, !dbg !2837
  %call16 = call i8* @ERR_PTR(i64 -12) #10, !dbg !2838
  %24 = bitcast i8* %call16 to %struct.clk_plt_fixed*, !dbg !2838
  store %struct.clk_plt_fixed* %24, %struct.clk_plt_fixed** %retval, align 8, !dbg !2839
  br label %return, !dbg !2839

if.end17:                                         ; preds = %if.end9
  %25 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk, align 8, !dbg !2840
  store %struct.clk_plt_fixed* %25, %struct.clk_plt_fixed** %retval, align 8, !dbg !2841
  br label %return, !dbg !2841

return:                                           ; preds = %if.end17, %if.then14, %if.then6, %if.then
  %26 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %retval, align 8, !dbg !2842
  ret %struct.clk_plt_fixed* %26, !dbg !2842
}

; Function Attrs: noredzone
declare dso_local i8* @kstrdup_const(i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plt_clk_unregister_fixed_rate_loop(%struct.clk_plt_data* %data, i32 %i) #2 !dbg !2843 {
entry:
  %data.addr = alloca %struct.clk_plt_data*, align 8
  %i.addr = alloca i32, align 4
  store %struct.clk_plt_data* %data, %struct.clk_plt_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_plt_data** %data.addr, metadata !2844, metadata !DIExpression()), !dbg !2845
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !2846, metadata !DIExpression()), !dbg !2847
  br label %while.cond, !dbg !2848

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i.addr, align 4, !dbg !2849
  %dec = add i32 %0, -1, !dbg !2849
  store i32 %dec, i32* %i.addr, align 4, !dbg !2849
  %tobool = icmp ne i32 %0, 0, !dbg !2848
  br i1 %tobool, label %while.body, label %while.end, !dbg !2848

while.body:                                       ; preds = %while.cond
  %1 = load %struct.clk_plt_data*, %struct.clk_plt_data** %data.addr, align 8, !dbg !2850
  %parents = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %1, i32 0, i32 0, !dbg !2851
  %2 = load %struct.clk_plt_fixed**, %struct.clk_plt_fixed*** %parents, align 8, !dbg !2851
  %3 = load i32, i32* %i.addr, align 4, !dbg !2852
  %idxprom = zext i32 %3 to i64, !dbg !2850
  %arrayidx = getelementptr %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %2, i64 %idxprom, !dbg !2850
  %4 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %arrayidx, align 8, !dbg !2850
  call void @plt_clk_unregister_fixed_rate(%struct.clk_plt_fixed* %4) #10, !dbg !2853
  br label %while.cond, !dbg !2848, !llvm.loop !2854

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kmalloc_array(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !2857 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2858, metadata !DIExpression()), !dbg !2859
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2860, metadata !DIExpression()), !dbg !2861
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2862, metadata !DIExpression()), !dbg !2863
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2864, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2866, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2868, metadata !DIExpression()), !dbg !2871
  %0 = load i64, i64* %n.addr, align 8, !dbg !2871
  store i64 %0, i64* %__a, align 8, !dbg !2871
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2872, metadata !DIExpression()), !dbg !2871
  %1 = load i64, i64* %size.addr, align 8, !dbg !2871
  store i64 %1, i64* %__b, align 8, !dbg !2871
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2873, metadata !DIExpression()), !dbg !2871
  store i64* %bytes, i64** %__d, align 8, !dbg !2871
  %cmp = icmp eq i64* %__a, %__b, !dbg !2871
  %conv = zext i1 %cmp to i32, !dbg !2871
  %2 = load i64*, i64** %__d, align 8, !dbg !2871
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2871
  %conv2 = zext i1 %cmp1 to i32, !dbg !2871
  %3 = load i64, i64* %__a, align 8, !dbg !2871
  %4 = load i64, i64* %__b, align 8, !dbg !2871
  %5 = load i64*, i64** %__d, align 8, !dbg !2871
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2871
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2871
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2871
  store i64 %8, i64* %5, align 8, !dbg !2871
  %frombool = zext i1 %7 to i8, !dbg !2871
  store i8 %frombool, i8* %tmp, align 1, !dbg !2871
  %9 = load i8, i8* %tmp, align 1, !dbg !2871
  %tobool = trunc i8 %9 to i1, !dbg !2871
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !2875
  %lnot = xor i1 %call, true, !dbg !2875
  %lnot3 = xor i1 %lnot, true, !dbg !2875
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2875
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2875
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2875
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2876

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2877
  br label %return, !dbg !2877

if.end:                                           ; preds = %entry
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2878
  %11 = load i64, i64* %bytes, align 8, !dbg !2879
  %12 = load i32, i32* %flags.addr, align 4, !dbg !2880
  %call6 = call noalias i8* @devm_kmalloc(%struct.device* %10, i64 %11, i32 %12) #10, !dbg !2881
  store i8* %call6, i8** %retval, align 8, !dbg !2882
  br label %return, !dbg !2882

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !2883
  ret i8* %13, !dbg !2883
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !2884 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !2890
  %tobool = trunc i8 %0 to i1, !dbg !2890
  %lnot = xor i1 %tobool, true, !dbg !2890
  %lnot1 = xor i1 %lnot, true, !dbg !2890
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2890
  %conv = sext i32 %lnot.ext to i64, !dbg !2890
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2890
  ret i1 %tobool2, !dbg !2891
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #2 !dbg !2892 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2893, metadata !DIExpression()), !dbg !2897
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2906, metadata !DIExpression()), !dbg !2907
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2908, metadata !DIExpression()), !dbg !2909
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2910, metadata !DIExpression()), !dbg !2911
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2912, metadata !DIExpression()), !dbg !2916
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2918, metadata !DIExpression()), !dbg !2922
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2924, metadata !DIExpression()), !dbg !2928
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2933, metadata !DIExpression()), !dbg !2934
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2935, metadata !DIExpression()), !dbg !2936
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2937, metadata !DIExpression()), !dbg !2938
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2939, metadata !DIExpression()), !dbg !2940
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2941, metadata !DIExpression()), !dbg !2942
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2943, metadata !DIExpression()), !dbg !2944
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2945, metadata !DIExpression()), !dbg !2946
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2947, metadata !DIExpression()), !dbg !2948
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2949, metadata !DIExpression()), !dbg !2950
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2951, metadata !DIExpression()), !dbg !2952
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2957, metadata !DIExpression()), !dbg !2960
  %0 = load i64, i64* %n.addr, align 8, !dbg !2960
  store i64 %0, i64* %__a, align 8, !dbg !2960
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2961, metadata !DIExpression()), !dbg !2960
  %1 = load i64, i64* %size.addr, align 8, !dbg !2960
  store i64 %1, i64* %__b, align 8, !dbg !2960
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2962, metadata !DIExpression()), !dbg !2960
  store i64* %bytes, i64** %__d, align 8, !dbg !2960
  %cmp = icmp eq i64* %__a, %__b, !dbg !2960
  %conv = zext i1 %cmp to i32, !dbg !2960
  %2 = load i64*, i64** %__d, align 8, !dbg !2960
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2960
  %conv2 = zext i1 %cmp1 to i32, !dbg !2960
  %3 = load i64, i64* %__a, align 8, !dbg !2960
  %4 = load i64, i64* %__b, align 8, !dbg !2960
  %5 = load i64*, i64** %__d, align 8, !dbg !2960
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2960
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2960
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2960
  store i64 %8, i64* %5, align 8, !dbg !2960
  %frombool = zext i1 %7 to i8, !dbg !2960
  store i8 %frombool, i8* %tmp, align 1, !dbg !2960
  %9 = load i8, i8* %tmp, align 1, !dbg !2960
  %tobool = trunc i8 %9 to i1, !dbg !2960
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !2963
  %lnot = xor i1 %call, true, !dbg !2963
  %lnot3 = xor i1 %lnot, true, !dbg !2963
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2963
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2963
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2963
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2964

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2965
  br label %return, !dbg !2965

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !2966
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2967
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !2968

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !2969
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2970
  br i1 %13, label %if.then6, label %if.end8, !dbg !2971

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !2972
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2973
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !2974
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !2975
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !2976

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !2977
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !2978
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2979

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !2980
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !2981
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !2982
  %call.i.i = call i32 @get_order(i64 %21) #11, !dbg !2983
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2942
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !2984
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2985
  %24 = load i32, i32* %order.i.i, align 4, !dbg !2986
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2987
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2988
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2989
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #12, !dbg !2990
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2990
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2990
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2990
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2990
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2991
  br label %kmalloc.exit, !dbg !2991

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !2992
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2993
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !2993
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2995

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2996
  br label %kmalloc_index.exit.i, !dbg !2996

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2997
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !2999
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3000

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3001
  br label %kmalloc_index.exit.i, !dbg !3001

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3002
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3004
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3005

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3006
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3007
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3008

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3009
  br label %kmalloc_index.exit.i, !dbg !3009

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3010
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3012
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3013

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3014
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3015
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3016

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3017
  br label %kmalloc_index.exit.i, !dbg !3017

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3018
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3020
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3021

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3022
  br label %kmalloc_index.exit.i, !dbg !3022

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3023
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3025
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3026

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3027
  br label %kmalloc_index.exit.i, !dbg !3027

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3028
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3030
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3031

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3032
  br label %kmalloc_index.exit.i, !dbg !3032

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3033
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3035
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3036

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3037
  br label %kmalloc_index.exit.i, !dbg !3037

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3038
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3040
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3041

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3042
  br label %kmalloc_index.exit.i, !dbg !3042

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3043
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3045
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3046

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3047
  br label %kmalloc_index.exit.i, !dbg !3047

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3048
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3050
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3051

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3052
  br label %kmalloc_index.exit.i, !dbg !3052

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3053
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3055
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3056

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3057
  br label %kmalloc_index.exit.i, !dbg !3057

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3058
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3060
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3061

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3062
  br label %kmalloc_index.exit.i, !dbg !3062

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3063
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3065
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3066

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3067
  br label %kmalloc_index.exit.i, !dbg !3067

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3068
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3070
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3071

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3072
  br label %kmalloc_index.exit.i, !dbg !3072

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3073
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3075
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3076

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3077
  br label %kmalloc_index.exit.i, !dbg !3077

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3078
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3080
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3081

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3082
  br label %kmalloc_index.exit.i, !dbg !3082

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3083
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3085
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3086

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3087
  br label %kmalloc_index.exit.i, !dbg !3087

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3088
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3090
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3091

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3092
  br label %kmalloc_index.exit.i, !dbg !3092

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3093
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3095
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3096

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3097
  br label %kmalloc_index.exit.i, !dbg !3097

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3098
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3100
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3101

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3102
  br label %kmalloc_index.exit.i, !dbg !3102

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3103
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3105
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3106

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3107
  br label %kmalloc_index.exit.i, !dbg !3107

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3108
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3110
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3111

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3112
  br label %kmalloc_index.exit.i, !dbg !3112

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3113
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3115
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3116

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3117
  br label %kmalloc_index.exit.i, !dbg !3117

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3118
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3120
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3121

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3122
  br label %kmalloc_index.exit.i, !dbg !3122

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3123
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3125
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3126

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3127
  br label %kmalloc_index.exit.i, !dbg !3127

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3128
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3130
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3131

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3132
  br label %kmalloc_index.exit.i, !dbg !3132

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3133
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3135
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3136

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3137
  br label %kmalloc_index.exit.i, !dbg !3137

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3138, !srcloc !3141
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 101) #9, !dbg !3142, !srcloc !3145
  unreachable, !dbg !3146

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3147
  store i32 %59, i32* %index.i, align 4, !dbg !3148
  %60 = load i32, i32* %index.i, align 4, !dbg !3149
  %tobool.i = icmp ne i32 %60, 0, !dbg !3149
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3151

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3152
  br label %kmalloc.exit, !dbg !3152

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3153
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3154
  %and.i.i = and i32 %62, 17, !dbg !3154
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3154
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3154
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3154
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3154
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3156

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3157
  br label %kmalloc_type.exit.i, !dbg !3157

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3158
  %and2.i.i = and i32 %63, 1, !dbg !3159
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3158
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3158
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3158
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3160
  br label %kmalloc_type.exit.i, !dbg !3160

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3161
  %idxprom.i = zext i32 %65 to i64, !dbg !3162
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3162
  %66 = load i32, i32* %index.i, align 4, !dbg !3163
  %idxprom6.i = zext i32 %66 to i64, !dbg !3162
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3162
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3162
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3164
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3165
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3166
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3167
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #12, !dbg !3168
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3168
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3168
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3168
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3168
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2911
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3169
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3170
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3171
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3172
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #12, !dbg !3173
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3174
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3175
  store i8* %76, i8** %retval.i, align 8, !dbg !3176
  br label %kmalloc.exit, !dbg !3176

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3177
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3178
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #12, !dbg !3179
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3179
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3179
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3179
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3179
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3180
  br label %kmalloc.exit, !dbg !3180

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3181
  store i8* %79, i8** %retval, align 8, !dbg !3182
  br label %return, !dbg !3182

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3183
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3184
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !3185
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3185
  %maskedptr = and i64 %ptrint, 7, !dbg !3185
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3185
  call void @llvm.assume(i1 %maskcond), !dbg !3185
  store i8* %call9, i8** %retval, align 8, !dbg !3186
  br label %return, !dbg !3186

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3187
  ret i8* %82, !dbg !3187
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3188 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3192, metadata !DIExpression()), !dbg !3197
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3199, metadata !DIExpression()), !dbg !3200
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3201, metadata !DIExpression()), !dbg !3202
  %0 = load i64, i64* %size.addr, align 8, !dbg !3203
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3205
  br i1 %1, label %if.then, label %if.end447, !dbg !3206

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3207
  %tobool = icmp ne i64 %2, 0, !dbg !3207
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3210

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3211
  br label %return, !dbg !3211

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3212
  %cmp = icmp ult i64 %3, 4096, !dbg !3214
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3215

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3216
  br label %return, !dbg !3216

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub = sub i64 %4, 1, !dbg !3217
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3217
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3217

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub4 = sub i64 %6, 1, !dbg !3217
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3217
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3217

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub6 = sub i64 %8, 1, !dbg !3217
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3217
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3217

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3217

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub9 = sub i64 %9, 1, !dbg !3217
  %and = and i64 %sub9, -9223372036854775808, !dbg !3217
  %tobool10 = icmp ne i64 %and, 0, !dbg !3217
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3217

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3217

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub13 = sub i64 %10, 1, !dbg !3217
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3217
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3217
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3217

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3217

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub18 = sub i64 %11, 1, !dbg !3217
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3217
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3217
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3217

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3217

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub23 = sub i64 %12, 1, !dbg !3217
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3217
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3217
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3217

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3217

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub28 = sub i64 %13, 1, !dbg !3217
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3217
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3217
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3217

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3217

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub33 = sub i64 %14, 1, !dbg !3217
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3217
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3217
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3217

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3217

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub38 = sub i64 %15, 1, !dbg !3217
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3217
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3217
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3217

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3217

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub43 = sub i64 %16, 1, !dbg !3217
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3217
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3217
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3217

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3217

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub48 = sub i64 %17, 1, !dbg !3217
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3217
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3217
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3217

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3217

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub53 = sub i64 %18, 1, !dbg !3217
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3217
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3217
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3217

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3217

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub58 = sub i64 %19, 1, !dbg !3217
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3217
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3217
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3217

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3217

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub63 = sub i64 %20, 1, !dbg !3217
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3217
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3217
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3217

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3217

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub68 = sub i64 %21, 1, !dbg !3217
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3217
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3217
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3217

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3217

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub73 = sub i64 %22, 1, !dbg !3217
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3217
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3217
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3217

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3217

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub78 = sub i64 %23, 1, !dbg !3217
  %and79 = and i64 %sub78, 562949953421312, !dbg !3217
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3217
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3217

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3217

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub83 = sub i64 %24, 1, !dbg !3217
  %and84 = and i64 %sub83, 281474976710656, !dbg !3217
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3217
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3217

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3217

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub88 = sub i64 %25, 1, !dbg !3217
  %and89 = and i64 %sub88, 140737488355328, !dbg !3217
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3217
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3217

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3217

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub93 = sub i64 %26, 1, !dbg !3217
  %and94 = and i64 %sub93, 70368744177664, !dbg !3217
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3217
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3217

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3217

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub98 = sub i64 %27, 1, !dbg !3217
  %and99 = and i64 %sub98, 35184372088832, !dbg !3217
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3217
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3217

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3217

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub103 = sub i64 %28, 1, !dbg !3217
  %and104 = and i64 %sub103, 17592186044416, !dbg !3217
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3217
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3217

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3217

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub108 = sub i64 %29, 1, !dbg !3217
  %and109 = and i64 %sub108, 8796093022208, !dbg !3217
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3217
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3217

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3217

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub113 = sub i64 %30, 1, !dbg !3217
  %and114 = and i64 %sub113, 4398046511104, !dbg !3217
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3217
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3217

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3217

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub118 = sub i64 %31, 1, !dbg !3217
  %and119 = and i64 %sub118, 2199023255552, !dbg !3217
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3217
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3217

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3217

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub123 = sub i64 %32, 1, !dbg !3217
  %and124 = and i64 %sub123, 1099511627776, !dbg !3217
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3217
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3217

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3217

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub128 = sub i64 %33, 1, !dbg !3217
  %and129 = and i64 %sub128, 549755813888, !dbg !3217
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3217
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3217

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3217

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub133 = sub i64 %34, 1, !dbg !3217
  %and134 = and i64 %sub133, 274877906944, !dbg !3217
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3217
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3217

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3217

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub138 = sub i64 %35, 1, !dbg !3217
  %and139 = and i64 %sub138, 137438953472, !dbg !3217
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3217
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3217

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3217

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub143 = sub i64 %36, 1, !dbg !3217
  %and144 = and i64 %sub143, 68719476736, !dbg !3217
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3217
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3217

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3217

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub148 = sub i64 %37, 1, !dbg !3217
  %and149 = and i64 %sub148, 34359738368, !dbg !3217
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3217
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3217

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3217

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub153 = sub i64 %38, 1, !dbg !3217
  %and154 = and i64 %sub153, 17179869184, !dbg !3217
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3217
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3217

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3217

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub158 = sub i64 %39, 1, !dbg !3217
  %and159 = and i64 %sub158, 8589934592, !dbg !3217
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3217
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3217

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3217

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub163 = sub i64 %40, 1, !dbg !3217
  %and164 = and i64 %sub163, 4294967296, !dbg !3217
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3217
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3217

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3217

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub168 = sub i64 %41, 1, !dbg !3217
  %and169 = and i64 %sub168, 2147483648, !dbg !3217
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3217
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3217

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3217

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub173 = sub i64 %42, 1, !dbg !3217
  %and174 = and i64 %sub173, 1073741824, !dbg !3217
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3217
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3217

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3217

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub178 = sub i64 %43, 1, !dbg !3217
  %and179 = and i64 %sub178, 536870912, !dbg !3217
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3217
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3217

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3217

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub183 = sub i64 %44, 1, !dbg !3217
  %and184 = and i64 %sub183, 268435456, !dbg !3217
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3217
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3217

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3217

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub188 = sub i64 %45, 1, !dbg !3217
  %and189 = and i64 %sub188, 134217728, !dbg !3217
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3217
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3217

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3217

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub193 = sub i64 %46, 1, !dbg !3217
  %and194 = and i64 %sub193, 67108864, !dbg !3217
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3217
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3217

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3217

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub198 = sub i64 %47, 1, !dbg !3217
  %and199 = and i64 %sub198, 33554432, !dbg !3217
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3217
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3217

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3217

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub203 = sub i64 %48, 1, !dbg !3217
  %and204 = and i64 %sub203, 16777216, !dbg !3217
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3217
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3217

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3217

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub208 = sub i64 %49, 1, !dbg !3217
  %and209 = and i64 %sub208, 8388608, !dbg !3217
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3217
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3217

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3217

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub213 = sub i64 %50, 1, !dbg !3217
  %and214 = and i64 %sub213, 4194304, !dbg !3217
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3217
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3217

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3217

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub218 = sub i64 %51, 1, !dbg !3217
  %and219 = and i64 %sub218, 2097152, !dbg !3217
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3217
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3217

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3217

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub223 = sub i64 %52, 1, !dbg !3217
  %and224 = and i64 %sub223, 1048576, !dbg !3217
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3217
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3217

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3217

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub228 = sub i64 %53, 1, !dbg !3217
  %and229 = and i64 %sub228, 524288, !dbg !3217
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3217
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3217

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3217

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub233 = sub i64 %54, 1, !dbg !3217
  %and234 = and i64 %sub233, 262144, !dbg !3217
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3217
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3217

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3217

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub238 = sub i64 %55, 1, !dbg !3217
  %and239 = and i64 %sub238, 131072, !dbg !3217
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3217
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3217

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3217

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub243 = sub i64 %56, 1, !dbg !3217
  %and244 = and i64 %sub243, 65536, !dbg !3217
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3217
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3217

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3217

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub248 = sub i64 %57, 1, !dbg !3217
  %and249 = and i64 %sub248, 32768, !dbg !3217
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3217
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3217

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3217

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub253 = sub i64 %58, 1, !dbg !3217
  %and254 = and i64 %sub253, 16384, !dbg !3217
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3217
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3217

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3217

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub258 = sub i64 %59, 1, !dbg !3217
  %and259 = and i64 %sub258, 8192, !dbg !3217
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3217
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3217

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3217

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub263 = sub i64 %60, 1, !dbg !3217
  %and264 = and i64 %sub263, 4096, !dbg !3217
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3217
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3217

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3217

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub268 = sub i64 %61, 1, !dbg !3217
  %and269 = and i64 %sub268, 2048, !dbg !3217
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3217
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3217

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3217

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub273 = sub i64 %62, 1, !dbg !3217
  %and274 = and i64 %sub273, 1024, !dbg !3217
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3217
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3217

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3217

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub278 = sub i64 %63, 1, !dbg !3217
  %and279 = and i64 %sub278, 512, !dbg !3217
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3217
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3217

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3217

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub283 = sub i64 %64, 1, !dbg !3217
  %and284 = and i64 %sub283, 256, !dbg !3217
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3217
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3217

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3217

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub288 = sub i64 %65, 1, !dbg !3217
  %and289 = and i64 %sub288, 128, !dbg !3217
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3217
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3217

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3217

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub293 = sub i64 %66, 1, !dbg !3217
  %and294 = and i64 %sub293, 64, !dbg !3217
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3217
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3217

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3217

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub298 = sub i64 %67, 1, !dbg !3217
  %and299 = and i64 %sub298, 32, !dbg !3217
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3217
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3217

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3217

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub303 = sub i64 %68, 1, !dbg !3217
  %and304 = and i64 %sub303, 16, !dbg !3217
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3217
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3217

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3217

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub308 = sub i64 %69, 1, !dbg !3217
  %and309 = and i64 %sub308, 8, !dbg !3217
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3217
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3217

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3217

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub313 = sub i64 %70, 1, !dbg !3217
  %and314 = and i64 %sub313, 4, !dbg !3217
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3217
  %71 = zext i1 %tobool315 to i64, !dbg !3217
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3217
  br label %cond.end, !dbg !3217

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3217
  br label %cond.end317, !dbg !3217

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3217
  br label %cond.end319, !dbg !3217

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3217
  br label %cond.end321, !dbg !3217

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3217
  br label %cond.end323, !dbg !3217

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3217
  br label %cond.end325, !dbg !3217

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3217
  br label %cond.end327, !dbg !3217

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3217
  br label %cond.end329, !dbg !3217

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3217
  br label %cond.end331, !dbg !3217

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3217
  br label %cond.end333, !dbg !3217

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3217
  br label %cond.end335, !dbg !3217

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3217
  br label %cond.end337, !dbg !3217

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3217
  br label %cond.end339, !dbg !3217

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3217
  br label %cond.end341, !dbg !3217

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3217
  br label %cond.end343, !dbg !3217

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3217
  br label %cond.end345, !dbg !3217

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3217
  br label %cond.end347, !dbg !3217

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3217
  br label %cond.end349, !dbg !3217

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3217
  br label %cond.end351, !dbg !3217

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3217
  br label %cond.end353, !dbg !3217

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3217
  br label %cond.end355, !dbg !3217

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3217
  br label %cond.end357, !dbg !3217

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3217
  br label %cond.end359, !dbg !3217

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3217
  br label %cond.end361, !dbg !3217

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3217
  br label %cond.end363, !dbg !3217

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3217
  br label %cond.end365, !dbg !3217

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3217
  br label %cond.end367, !dbg !3217

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3217
  br label %cond.end369, !dbg !3217

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3217
  br label %cond.end371, !dbg !3217

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3217
  br label %cond.end373, !dbg !3217

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3217
  br label %cond.end375, !dbg !3217

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3217
  br label %cond.end377, !dbg !3217

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3217
  br label %cond.end379, !dbg !3217

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3217
  br label %cond.end381, !dbg !3217

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3217
  br label %cond.end383, !dbg !3217

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3217
  br label %cond.end385, !dbg !3217

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3217
  br label %cond.end387, !dbg !3217

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3217
  br label %cond.end389, !dbg !3217

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3217
  br label %cond.end391, !dbg !3217

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3217
  br label %cond.end393, !dbg !3217

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3217
  br label %cond.end395, !dbg !3217

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3217
  br label %cond.end397, !dbg !3217

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3217
  br label %cond.end399, !dbg !3217

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3217
  br label %cond.end401, !dbg !3217

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3217
  br label %cond.end403, !dbg !3217

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3217
  br label %cond.end405, !dbg !3217

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3217
  br label %cond.end407, !dbg !3217

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3217
  br label %cond.end409, !dbg !3217

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3217
  br label %cond.end411, !dbg !3217

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3217
  br label %cond.end413, !dbg !3217

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3217
  br label %cond.end415, !dbg !3217

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3217
  br label %cond.end417, !dbg !3217

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3217
  br label %cond.end419, !dbg !3217

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3217
  br label %cond.end421, !dbg !3217

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3217
  br label %cond.end423, !dbg !3217

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3217
  br label %cond.end425, !dbg !3217

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3217
  br label %cond.end427, !dbg !3217

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3217
  br label %cond.end429, !dbg !3217

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3217
  br label %cond.end431, !dbg !3217

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3217
  br label %cond.end433, !dbg !3217

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3217
  br label %cond.end435, !dbg !3217

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3217
  br label %cond.end437, !dbg !3217

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3217
  br label %cond.end440, !dbg !3217

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3217

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3217
  br label %cond.end444, !dbg !3217

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3217
  %sub443 = sub i64 %72, 1, !dbg !3217
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3217
  br label %cond.end444, !dbg !3217

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3217
  %sub446 = sub i32 %cond445, 12, !dbg !3218
  %add = add i32 %sub446, 1, !dbg !3219
  store i32 %add, i32* %retval, align 4, !dbg !3220
  br label %return, !dbg !3220

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3221
  %dec = add i64 %73, -1, !dbg !3221
  store i64 %dec, i64* %size.addr, align 8, !dbg !3221
  %74 = load i64, i64* %size.addr, align 8, !dbg !3222
  %shr = lshr i64 %74, 12, !dbg !3222
  store i64 %shr, i64* %size.addr, align 8, !dbg !3222
  %75 = load i64, i64* %size.addr, align 8, !dbg !3223
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3200
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3224
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3225
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !3224, !srcloc !3226
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3224
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3227
  %add.i = add i32 %79, 1, !dbg !3228
  store i32 %add.i, i32* %retval, align 4, !dbg !3229
  br label %return, !dbg !3229

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3230
  ret i32 %80, !dbg !3230
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3231 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3192, metadata !DIExpression()), !dbg !3235
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3199, metadata !DIExpression()), !dbg !3237
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  %0 = load i64, i64* %n.addr, align 8, !dbg !3240
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3237
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3241
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3242
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !3241, !srcloc !3226
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3241
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3243
  %add.i = add i32 %4, 1, !dbg !3244
  %sub = sub i32 %add.i, 1, !dbg !3245
  ret i32 %sub, !dbg !3246
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !3247 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3257, metadata !DIExpression()), !dbg !3258
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3259
  ret i8* %0, !dbg !3260
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @__clk_hw_register_fixed_rate(%struct.device*, %struct.device_node*, i8*, i8*, %struct.clk_hw*, %struct.clk_parent_data*, i64, i64, i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #2 !dbg !3261 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3266
  ret i8* %0, !dbg !3267
}

; Function Attrs: noredzone
declare dso_local void @clk_hw_unregister_fixed_rate(%struct.clk_hw*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plt_clk_unregister_fixed_rate(%struct.clk_plt_fixed* %pclk) #2 !dbg !3268 {
entry:
  %pclk.addr = alloca %struct.clk_plt_fixed*, align 8
  store %struct.clk_plt_fixed* %pclk, %struct.clk_plt_fixed** %pclk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_plt_fixed** %pclk.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  %0 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk.addr, align 8, !dbg !3273
  %lookup = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %0, i32 0, i32 1, !dbg !3274
  %1 = load %struct.clk_lookup*, %struct.clk_lookup** %lookup, align 8, !dbg !3274
  call void @clkdev_drop(%struct.clk_lookup* %1) #10, !dbg !3275
  %2 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %pclk.addr, align 8, !dbg !3276
  %clk = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %2, i32 0, i32 0, !dbg !3277
  %3 = load %struct.clk_hw*, %struct.clk_hw** %clk, align 8, !dbg !3277
  call void @clk_hw_unregister_fixed_rate(%struct.clk_hw* %3) #10, !dbg !3278
  ret void, !dbg !3279
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_clk_is_enabled(%struct.clk_hw* %hw) #2 !dbg !3280 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_plt*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_plt*, align 8
  %value = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.declare(metadata %struct.clk_plt** %clk, metadata !3283, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3285, metadata !DIExpression()), !dbg !3287
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !3287
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !3287
  store i8* %1, i8** %__mptr, align 8, !dbg !3287
  br label %do.body, !dbg !3287

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3288

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3287
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3287
  %3 = bitcast i8* %add.ptr to %struct.clk_plt*, !dbg !3287
  store %struct.clk_plt* %3, %struct.clk_plt** %tmp, align 8, !dbg !3288
  %4 = load %struct.clk_plt*, %struct.clk_plt** %tmp, align 8, !dbg !3287
  store %struct.clk_plt* %4, %struct.clk_plt** %clk, align 8, !dbg !3284
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3290, metadata !DIExpression()), !dbg !3291
  %5 = load %struct.clk_plt*, %struct.clk_plt** %clk, align 8, !dbg !3292
  %reg = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %5, i32 0, i32 1, !dbg !3293
  %6 = load i8*, i8** %reg, align 8, !dbg !3293
  %call = call i32 @readl(i8* %6) #10, !dbg !3294
  store i32 %call, i32* %value, align 4, !dbg !3295
  %7 = load i32, i32* %value, align 4, !dbg !3296
  %call1 = call i32 @plt_reg_to_enabled(i32 %7) #10, !dbg !3297
  ret i32 %call1, !dbg !3298
}

; Function Attrs: noredzone
declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_clk_enable(%struct.clk_hw* %hw) #2 !dbg !3299 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_plt*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_plt*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !3300, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.declare(metadata %struct.clk_plt** %clk, metadata !3302, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3304, metadata !DIExpression()), !dbg !3306
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !3306
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !3306
  store i8* %1, i8** %__mptr, align 8, !dbg !3306
  br label %do.body, !dbg !3306

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3307

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3306
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3306
  %3 = bitcast i8* %add.ptr to %struct.clk_plt*, !dbg !3306
  store %struct.clk_plt* %3, %struct.clk_plt** %tmp, align 8, !dbg !3307
  %4 = load %struct.clk_plt*, %struct.clk_plt** %tmp, align 8, !dbg !3306
  store %struct.clk_plt* %4, %struct.clk_plt** %clk, align 8, !dbg !3303
  %5 = load %struct.clk_plt*, %struct.clk_plt** %clk, align 8, !dbg !3309
  call void @plt_clk_reg_update(%struct.clk_plt* %5, i32 3, i32 1) #10, !dbg !3310
  ret i32 0, !dbg !3311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plt_clk_disable(%struct.clk_hw* %hw) #2 !dbg !3312 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_plt*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_plt*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !3313, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.declare(metadata %struct.clk_plt** %clk, metadata !3315, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3317, metadata !DIExpression()), !dbg !3319
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !3319
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !3319
  store i8* %1, i8** %__mptr, align 8, !dbg !3319
  br label %do.body, !dbg !3319

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3320

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3319
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3319
  %3 = bitcast i8* %add.ptr to %struct.clk_plt*, !dbg !3319
  store %struct.clk_plt* %3, %struct.clk_plt** %tmp, align 8, !dbg !3320
  %4 = load %struct.clk_plt*, %struct.clk_plt** %tmp, align 8, !dbg !3319
  store %struct.clk_plt* %4, %struct.clk_plt** %clk, align 8, !dbg !3316
  %5 = load %struct.clk_plt*, %struct.clk_plt** %clk, align 8, !dbg !3322
  call void @plt_clk_reg_update(%struct.clk_plt* %5, i32 3, i32 2) #10, !dbg !3323
  ret void, !dbg !3324
}

; Function Attrs: noredzone
declare dso_local i32 @__clk_mux_determine_rate(%struct.clk_hw*, %struct.clk_rate_request*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_clk_set_parent(%struct.clk_hw* %hw, i8 zeroext %index) #2 !dbg !3325 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %index.addr = alloca i8, align 1
  %clk = alloca %struct.clk_plt*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_plt*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !3328, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.declare(metadata %struct.clk_plt** %clk, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3332, metadata !DIExpression()), !dbg !3334
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !3334
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !3334
  store i8* %1, i8** %__mptr, align 8, !dbg !3334
  br label %do.body, !dbg !3334

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3335

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3334
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3334
  %3 = bitcast i8* %add.ptr to %struct.clk_plt*, !dbg !3334
  store %struct.clk_plt* %3, %struct.clk_plt** %tmp, align 8, !dbg !3335
  %4 = load %struct.clk_plt*, %struct.clk_plt** %tmp, align 8, !dbg !3334
  store %struct.clk_plt* %4, %struct.clk_plt** %clk, align 8, !dbg !3331
  %5 = load %struct.clk_plt*, %struct.clk_plt** %clk, align 8, !dbg !3337
  %6 = load i8, i8* %index.addr, align 1, !dbg !3338
  %conv = zext i8 %6 to i32, !dbg !3338
  %call = call i32 @plt_parent_to_reg(i32 %conv) #10, !dbg !3339
  call void @plt_clk_reg_update(%struct.clk_plt* %5, i32 4, i32 %call) #10, !dbg !3340
  ret i32 0, !dbg !3341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @plt_clk_get_parent(%struct.clk_hw* %hw) #2 !dbg !3342 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %clk = alloca %struct.clk_plt*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_plt*, align 8
  %value = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.declare(metadata %struct.clk_plt** %clk, metadata !3345, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3347, metadata !DIExpression()), !dbg !3349
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !3349
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !3349
  store i8* %1, i8** %__mptr, align 8, !dbg !3349
  br label %do.body, !dbg !3349

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3350

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3349
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3349
  %3 = bitcast i8* %add.ptr to %struct.clk_plt*, !dbg !3349
  store %struct.clk_plt* %3, %struct.clk_plt** %tmp, align 8, !dbg !3350
  %4 = load %struct.clk_plt*, %struct.clk_plt** %tmp, align 8, !dbg !3349
  store %struct.clk_plt* %4, %struct.clk_plt** %clk, align 8, !dbg !3346
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3352, metadata !DIExpression()), !dbg !3353
  %5 = load %struct.clk_plt*, %struct.clk_plt** %clk, align 8, !dbg !3354
  %reg = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %5, i32 0, i32 1, !dbg !3355
  %6 = load i8*, i8** %reg, align 8, !dbg !3355
  %call = call i32 @readl(i8* %6) #10, !dbg !3356
  store i32 %call, i32* %value, align 4, !dbg !3357
  %7 = load i32, i32* %value, align 4, !dbg !3358
  %call1 = call i32 @plt_reg_to_parent(i32 %7) #10, !dbg !3359
  %conv = trunc i32 %call1 to i8, !dbg !3359
  ret i8 %conv, !dbg !3360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plt_clk_reg_update(%struct.clk_plt* %clk, i32 %mask, i32 %val) #2 !dbg !3361 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !3364, metadata !DIExpression()), !dbg !3368
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3370, metadata !DIExpression()), !dbg !3371
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2579, metadata !DIExpression()), !dbg !3372
  %clk.addr = alloca %struct.clk_plt*, align 8
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.clk_plt* %clk, %struct.clk_plt** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_plt** %clk.addr, metadata !3379, metadata !DIExpression()), !dbg !3380
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !3381, metadata !DIExpression()), !dbg !3382
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3383, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3385, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3387, metadata !DIExpression()), !dbg !3388
  br label %do.body, !dbg !3389

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3390

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3394, metadata !DIExpression()), !dbg !3393
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3393
  %conv = zext i1 %cmp to i32, !dbg !3393
  store i32 1, i32* %tmp2, align 4, !dbg !3393
  %0 = load i32, i32* %tmp2, align 4, !dbg !3393
  br label %do.body3, !dbg !3395

do.body3:                                         ; preds = %do.body1
  br label %do.body4, !dbg !3396

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !3397

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !3399, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !3403, metadata !DIExpression()), !dbg !3402
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !3402
  %conv9 = zext i1 %cmp8 to i32, !dbg !3402
  store i32 1, i32* %tmp10, align 4, !dbg !3402
  %1 = load i32, i32* %tmp10, align 4, !dbg !3402
  %call = call i64 @arch_local_irq_save() #10, !dbg !3404
  store i64 %call, i64* %flags, align 8, !dbg !3404
  br label %do.end, !dbg !3404

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !3397

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !3396

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !3405, !srcloc !3406
  br label %do.body13, !dbg !3405

do.body13:                                        ; preds = %do.body12
  %2 = load %struct.clk_plt*, %struct.clk_plt** %clk.addr, align 8, !dbg !3407
  %lock = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %2, i32 0, i32 3, !dbg !3407
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3408
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !3409
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !3409
  br label %do.end15, !dbg !3407

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !3405

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3396

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3395

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !3390

do.end19:                                         ; preds = %do.end18
  %5 = load %struct.clk_plt*, %struct.clk_plt** %clk.addr, align 8, !dbg !3410
  %reg = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %5, i32 0, i32 1, !dbg !3411
  %6 = load i8*, i8** %reg, align 8, !dbg !3411
  %call20 = call i32 @readl(i8* %6) #10, !dbg !3412
  store i32 %call20, i32* %tmp, align 4, !dbg !3413
  %7 = load i32, i32* %tmp, align 4, !dbg !3414
  %8 = load i32, i32* %mask.addr, align 4, !dbg !3415
  %neg = xor i32 %8, -1, !dbg !3416
  %and = and i32 %7, %neg, !dbg !3417
  %9 = load i32, i32* %val.addr, align 4, !dbg !3418
  %10 = load i32, i32* %mask.addr, align 4, !dbg !3419
  %and21 = and i32 %9, %10, !dbg !3420
  %or = or i32 %and, %and21, !dbg !3421
  store i32 %or, i32* %tmp, align 4, !dbg !3422
  %11 = load i32, i32* %tmp, align 4, !dbg !3423
  %12 = load %struct.clk_plt*, %struct.clk_plt** %clk.addr, align 8, !dbg !3424
  %reg22 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %12, i32 0, i32 1, !dbg !3425
  %13 = load i8*, i8** %reg22, align 8, !dbg !3425
  call void @writel(i32 %11, i8* %13) #10, !dbg !3426
  %14 = load %struct.clk_plt*, %struct.clk_plt** %clk.addr, align 8, !dbg !3427
  %lock23 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %14, i32 0, i32 3, !dbg !3428
  %15 = load i64, i64* %flags, align 8, !dbg !3429
  store %struct.spinlock* %lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %15, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !227, metadata !3430, metadata !DIExpression()) #9, !dbg !3433
  call void @llvm.dbg.declare(metadata !227, metadata !3434, metadata !DIExpression()) #9, !dbg !3433
  store i32 1, i32* %tmp.i, align 4, !dbg !3433
  %16 = load i32, i32* %tmp.i, align 4, !dbg !3433
  call void @llvm.dbg.declare(metadata !227, metadata !3435, metadata !DIExpression()) #9, !dbg !3440
  call void @llvm.dbg.declare(metadata !227, metadata !3441, metadata !DIExpression()) #9, !dbg !3440
  store i32 1, i32* %tmp8.i, align 4, !dbg !3440
  %17 = load i32, i32* %tmp8.i, align 4, !dbg !3440
  %18 = load i64, i64* %flags.addr.i, align 8, !dbg !3442
  call void @arch_local_irq_restore(i64 %18) #12, !dbg !3442
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !3443, !srcloc !3445
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !3446
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !3446
  %rlock.i25 = bitcast %union.anon* %20 to %struct.raw_spinlock*, !dbg !3446
  ret void, !dbg !3448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !3449 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !3453, metadata !DIExpression()), !dbg !3454
  %call = call i64 @arch_local_save_flags() #10, !dbg !3455
  store i64 %call, i64* %f, align 8, !dbg !3456
  call void @arch_local_irq_disable() #10, !dbg !3457
  %0 = load i64, i64* %f, align 8, !dbg !3458
  ret i64 %0, !dbg !3459
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !3460 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3467, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3469, metadata !DIExpression()), !dbg !3468
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3468
  %1 = bitcast i8* %0 to i32*, !dbg !3468
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #9, !dbg !3468, !srcloc !3470
  store i32 %2, i32* %ret, align 4, !dbg !3468
  %3 = load i32, i32* %ret, align 4, !dbg !3468
  ret i32 %3, !dbg !3468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !3471 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3475, metadata !DIExpression()), !dbg !3476
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3477, metadata !DIExpression()), !dbg !3476
  %0 = load i32, i32* %val.addr, align 4, !dbg !3476
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3476
  %2 = bitcast i8* %1 to i32*, !dbg !3476
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #9, !dbg !3476, !srcloc !3478
  ret void, !dbg !3476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !3479 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3480, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3483, metadata !DIExpression()), !dbg !3482
  %0 = load i64, i64* %__edi, align 8, !dbg !3482
  store i64 %0, i64* %__edi, align 8, !dbg !3482
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3484, metadata !DIExpression()), !dbg !3482
  %1 = load i64, i64* %__esi, align 8, !dbg !3482
  store i64 %1, i64* %__esi, align 8, !dbg !3482
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3485, metadata !DIExpression()), !dbg !3482
  %2 = load i64, i64* %__edx, align 8, !dbg !3482
  store i64 %2, i64* %__edx, align 8, !dbg !3482
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3486, metadata !DIExpression()), !dbg !3482
  %3 = load i64, i64* %__ecx, align 8, !dbg !3482
  store i64 %3, i64* %__ecx, align 8, !dbg !3482
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3487, metadata !DIExpression()), !dbg !3482
  %4 = load i64, i64* %__eax, align 8, !dbg !3482
  store i64 %4, i64* %__eax, align 8, !dbg !3482
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3482
  %6 = call i64 @llvm.read_register.i64(metadata !2227), !dbg !3488
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !3488, !srcloc !3491
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3488
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3488
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3488
  call void @llvm.write_register.i64(metadata !2227, i64 %asmresult1), !dbg !3488
  %8 = load i64, i64* %__eax, align 8, !dbg !3488
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3492, metadata !DIExpression()), !dbg !3494
  store i64 -1, i64* %__mask, align 8, !dbg !3494
  %9 = load i64, i64* %__mask, align 8, !dbg !3494
  store i64 %9, i64* %tmp, align 8, !dbg !3494
  %10 = load i64, i64* %tmp, align 8, !dbg !3494
  %and = and i64 %8, %10, !dbg !3488
  store i64 %and, i64* %__ret, align 8, !dbg !3488
  %11 = load i64, i64* %__ret, align 8, !dbg !3482
  store i64 %11, i64* %tmp2, align 8, !dbg !3495
  %12 = load i64, i64* %tmp2, align 8, !dbg !3482
  ret i64 %12, !dbg !3496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !3497 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3500, metadata !DIExpression()), !dbg !3502
  %0 = load i64, i64* %__edi, align 8, !dbg !3502
  store i64 %0, i64* %__edi, align 8, !dbg !3502
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3503, metadata !DIExpression()), !dbg !3502
  %1 = load i64, i64* %__esi, align 8, !dbg !3502
  store i64 %1, i64* %__esi, align 8, !dbg !3502
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3504, metadata !DIExpression()), !dbg !3502
  %2 = load i64, i64* %__edx, align 8, !dbg !3502
  store i64 %2, i64* %__edx, align 8, !dbg !3502
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3505, metadata !DIExpression()), !dbg !3502
  %3 = load i64, i64* %__ecx, align 8, !dbg !3502
  store i64 %3, i64* %__ecx, align 8, !dbg !3502
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3506, metadata !DIExpression()), !dbg !3502
  %4 = load i64, i64* %__eax, align 8, !dbg !3502
  store i64 %4, i64* %__eax, align 8, !dbg !3502
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3502
  %6 = call i64 @llvm.read_register.i64(metadata !2227), !dbg !3502
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !3502, !srcloc !3507
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3502
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3502
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3502
  call void @llvm.write_register.i64(metadata !2227, i64 %asmresult1), !dbg !3502
  ret void, !dbg !3508
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !3509 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3512, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3514, metadata !DIExpression()), !dbg !3516
  %0 = load i64, i64* %__edi, align 8, !dbg !3516
  store i64 %0, i64* %__edi, align 8, !dbg !3516
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3517, metadata !DIExpression()), !dbg !3516
  %1 = load i64, i64* %__esi, align 8, !dbg !3516
  store i64 %1, i64* %__esi, align 8, !dbg !3516
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3518, metadata !DIExpression()), !dbg !3516
  %2 = load i64, i64* %__edx, align 8, !dbg !3516
  store i64 %2, i64* %__edx, align 8, !dbg !3516
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3519, metadata !DIExpression()), !dbg !3516
  %3 = load i64, i64* %__ecx, align 8, !dbg !3516
  store i64 %3, i64* %__ecx, align 8, !dbg !3516
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3520, metadata !DIExpression()), !dbg !3516
  %4 = load i64, i64* %__eax, align 8, !dbg !3516
  store i64 %4, i64* %__eax, align 8, !dbg !3516
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3516
  %6 = call i64 @llvm.read_register.i64(metadata !2227), !dbg !3516
  %7 = load i64, i64* %f.addr, align 8, !dbg !3516
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !3516, !srcloc !3521
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3516
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3516
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3516
  call void @llvm.write_register.i64(metadata !2227, i64 %asmresult1), !dbg !3516
  ret void, !dbg !3522
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_parent_to_reg(i32 %index) #2 !dbg !3523 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3526, metadata !DIExpression()), !dbg !3527
  %0 = load i32, i32* %index.addr, align 4, !dbg !3528
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !3529

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !3530

sw.bb:                                            ; preds = %entry, %sw.default
  store i32 0, i32* %retval, align 4, !dbg !3531
  br label %return, !dbg !3531

sw.bb1:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !3533
  br label %return, !dbg !3533

return:                                           ; preds = %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !3534
  ret i32 %1, !dbg !3534
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_reg_to_parent(i32 %reg) #2 !dbg !3535 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !3536, metadata !DIExpression()), !dbg !3537
  %0 = load i32, i32* %reg.addr, align 4, !dbg !3538
  %conv = sext i32 %0 to i64, !dbg !3538
  %and = and i64 %conv, 4, !dbg !3539
  switch i64 %and, label %sw.default [
    i64 0, label %sw.bb
    i64 4, label %sw.bb1
  ], !dbg !3540

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !3541

sw.bb:                                            ; preds = %entry, %sw.default
  store i32 0, i32* %retval, align 4, !dbg !3542
  br label %return, !dbg !3542

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !3544
  br label %return, !dbg !3544

return:                                           ; preds = %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !3545
  ret i32 %1, !dbg !3545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @plt_reg_to_enabled(i32 %reg) #2 !dbg !3546 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !3547, metadata !DIExpression()), !dbg !3548
  %0 = load i32, i32* %reg.addr, align 4, !dbg !3549
  %conv = sext i32 %0 to i64, !dbg !3549
  %and = and i64 %conv, 3, !dbg !3550
  switch i64 %and, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb
    i64 2, label %sw.bb1
    i64 3, label %sw.bb1
  ], !dbg !3551

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %retval, align 4, !dbg !3552
  br label %return, !dbg !3552

sw.bb1:                                           ; preds = %entry, %entry
  br label %sw.default, !dbg !3552

sw.default:                                       ; preds = %entry, %sw.bb1
  store i32 0, i32* %retval, align 4, !dbg !3554
  br label %return, !dbg !3554

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !3555
  ret i32 %1, !dbg !3555
}

; Function Attrs: noredzone
declare dso_local void @kfree_const(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3556 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3559, metadata !DIExpression()), !dbg !3560
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3561, metadata !DIExpression()), !dbg !3562
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3563
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3564
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3565
  store i8* %0, i8** %driver_data, align 8, !dbg !3566
  ret void, !dbg !3567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @plt_clk_unregister(%struct.clk_plt* %pclk) #2 !dbg !3568 {
entry:
  %pclk.addr = alloca %struct.clk_plt*, align 8
  store %struct.clk_plt* %pclk, %struct.clk_plt** %pclk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_plt** %pclk.addr, metadata !3571, metadata !DIExpression()), !dbg !3572
  %0 = load %struct.clk_plt*, %struct.clk_plt** %pclk.addr, align 8, !dbg !3573
  %lookup = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %0, i32 0, i32 2, !dbg !3574
  %1 = load %struct.clk_lookup*, %struct.clk_lookup** %lookup, align 8, !dbg !3574
  call void @clkdev_drop(%struct.clk_lookup* %1) #10, !dbg !3575
  ret void, !dbg !3576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3577 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3582, metadata !DIExpression()), !dbg !3583
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3584
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3585
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #10, !dbg !3586
  ret i8* %call, !dbg !3587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3588 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3589, metadata !DIExpression()), !dbg !3590
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3591
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3592
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3592
  ret i8* %1, !dbg !3593
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2227}
!llvm.module.flags = !{!2228, !2229, !2230, !2231}
!llvm.ident = !{!2232}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_plt_clk_driver_init162", scope: !2, file: !3, line: 390, type: !63, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !230, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/x86/clk-pmc-atom.c", directory: "/home/lizy2001/genbc/linux")
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
!57 = !{!58, !61, !63, !64, !65, !66, !97, !228}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !60, line: 76, flags: DIFlagFwdDecl)
!60 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !62, line: 148, baseType: !7)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_plt", file: !3, line: 36, size: 320, elements: !68)
!68 = !{!69, !196, !197, !212}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !67, file: !3, line: 37, baseType: !70, size: 192)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !71, line: 312, size: 192, elements: !72)
!71 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !76, !79}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !70, file: !71, line: 313, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !71, line: 38, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !70, file: !71, line: 314, baseType: !77, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !71, line: 36, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !70, file: !71, line: 315, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !71, line: 285, size: 448, elements: !83)
!83 = !{!84, !88, !178, !181, !192, !194, !195}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !71, line: 286, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !82, file: !71, line: 287, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !71, line: 220, size: 1600, elements: !92)
!92 = !{!93, !99, !103, !104, !105, !106, !107, !108, !109, !110, !111, !115, !120, !132, !141, !145, !149, !153, !154, !155, !159, !168, !169, !170, !171}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !91, file: !71, line: 221, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !98}
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !91, file: !71, line: 222, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !98}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !91, file: !71, line: 223, baseType: !94, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !91, file: !71, line: 224, baseType: !100, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !91, file: !71, line: 225, baseType: !94, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !91, file: !71, line: 226, baseType: !100, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !91, file: !71, line: 227, baseType: !94, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !91, file: !71, line: 228, baseType: !100, size: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !91, file: !71, line: 229, baseType: !94, size: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !91, file: !71, line: 230, baseType: !100, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !91, file: !71, line: 231, baseType: !112, size: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!64, !98, !64}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !91, file: !71, line: 233, baseType: !116, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!65, !98, !64, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !91, file: !71, line: 235, baseType: !121, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!97, !98, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !71, line: 55, size: 320, elements: !126)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !125, file: !71, line: 56, baseType: !64, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !125, file: !71, line: 57, baseType: !64, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !125, file: !71, line: 58, baseType: !64, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !125, file: !71, line: 59, baseType: !64, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !125, file: !71, line: 60, baseType: !98, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !91, file: !71, line: 237, baseType: !133, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!97, !98, !136}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !137, line: 17, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !91, file: !71, line: 238, baseType: !142, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!136, !98}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !91, file: !71, line: 239, baseType: !146, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!97, !98, !64, !64}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !91, file: !71, line: 241, baseType: !150, size: 64, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!97, !98, !64, !64, !136}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !91, file: !71, line: 244, baseType: !112, size: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !91, file: !71, line: 246, baseType: !94, size: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !91, file: !71, line: 247, baseType: !156, size: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!97, !98, !97}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !91, file: !71, line: 248, baseType: !160, size: 64, offset: 1280)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!97, !98, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !71, line: 69, size: 64, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !164, file: !71, line: 70, baseType: !7, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !164, file: !71, line: 71, baseType: !7, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !91, file: !71, line: 250, baseType: !160, size: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !91, file: !71, line: 252, baseType: !94, size: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !91, file: !71, line: 253, baseType: !100, size: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !91, file: !71, line: 254, baseType: !172, size: 64, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !98, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !177, line: 21, flags: DIFlagFwdDecl)
!177 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !82, file: !71, line: 289, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !82, file: !71, line: 290, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !71, line: 264, size: 256, elements: !185)
!185 = !{!186, !189, !190, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !184, file: !71, line: 265, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !184, file: !71, line: 266, baseType: !85, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !71, line: 267, baseType: !85, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !184, file: !71, line: 268, baseType: !97, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !82, file: !71, line: 291, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !82, file: !71, line: 292, baseType: !136, size: 8, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !71, line: 293, baseType: !64, size: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !67, file: !3, line: 38, baseType: !63, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !67, file: !3, line: 39, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_lookup", file: !200, line: 18, size: 384, elements: !201)
!200 = !DIFile(filename: "./include/linux/clkdev.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !208, !209, !210, !211}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !200, line: 19, baseType: !203, size: 128)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !62, line: 178, size: 128, elements: !204)
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !62, line: 179, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !62, line: 179, baseType: !206, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !199, file: !200, line: 20, baseType: !85, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "con_id", scope: !199, file: !200, line: 21, baseType: !85, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !199, file: !200, line: 22, baseType: !77, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "clk_hw", scope: !199, file: !200, line: 23, baseType: !98, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !67, file: !3, line: 41, baseType: !213, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !214, line: 83, baseType: !215)
!214 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !214, line: 71, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !214, line: 72, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !214, line: 72, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !218, file: !214, line: 73, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !214, line: 20, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !221, file: !214, line: 21, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !225, line: 25, baseType: !226)
!225 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 25, elements: !227)
!227 = !{}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!230 = !{!0, !231, !2225}
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "plt_clk_driver", scope: !2, file: !3, line: 383, type: !233, isLocal: true, isDefinition: true)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !234, line: 200, size: 1600, elements: !235)
!234 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !2212, !2213, !2217, !2221, !2222, !2223, !2224}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !233, file: !234, line: 201, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!97, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !234, line: 22, size: 6208, elements: !242)
!242 = !{!243, !244, !245, !248, !2181, !2182, !2183, !2184, !2198, !2206, !2207, !2210}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !234, line: 23, baseType: !85, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !241, file: !234, line: 24, baseType: !97, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !241, file: !234, line: 25, baseType: !246, size: 8, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 30, baseType: !247)
!247 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !241, file: !234, line: 26, baseType: !249, size: 5568, offset: 128)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !250)
!250 = !{!251, !1707, !1709, !1712, !1713, !1764, !1858, !1859, !1860, !1861, !1862, !1871, !1976, !1989, !1992, !1993, !1997, !1999, !2000, !2001, !2005, !2011, !2012, !2015, !2130, !2131, !2134, !2135, !2136, !2137, !2169, !2170, !2171, !2174, !2177, !2178, !2179, !2180}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !249, file: !30, line: 462, baseType: !252, size: 512)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !253, line: 64, size: 512, elements: !254)
!253 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !256, !257, !259, !304, !1545, !1697, !1702, !1703, !1704, !1705, !1706}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !253, line: 65, baseType: !85, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !252, file: !253, line: 66, baseType: !203, size: 128, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !252, file: !253, line: 67, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !252, file: !253, line: 68, baseType: !260, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !253, line: 192, size: 704, elements: !262)
!262 = !{!263, !264, !265, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !261, file: !253, line: 193, baseType: !203, size: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !261, file: !253, line: 194, baseType: !213, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !261, file: !253, line: 195, baseType: !252, size: 512, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !261, file: !253, line: 196, baseType: !267, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !253, line: 156, size: 192, elements: !270)
!270 = !{!271, !276, !281}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !269, file: !253, line: 157, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!97, !260, !258}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !253, line: 158, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!85, !260, !258}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !269, file: !253, line: 159, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!97, !260, !258, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !253, line: 148, size: 20736, elements: !288)
!288 = !{!289, !294, !298, !299, !303}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !287, file: !253, line: 149, baseType: !290, size: 192)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 192, elements: !292)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!292 = !{!293}
!293 = !DISubrange(count: 3)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !287, file: !253, line: 150, baseType: !295, size: 4096, offset: 192)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 4096, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !287, file: !253, line: 151, baseType: !97, size: 32, offset: 4288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !287, file: !253, line: 152, baseType: !300, size: 16384, offset: 4320)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 16384, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 2048)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !287, file: !253, line: 153, baseType: !97, size: 32, offset: 20704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !252, file: !253, line: 69, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !253, line: 138, size: 448, elements: !307)
!307 = !{!308, !312, !340, !342, !1492, !1523, !1527}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !253, line: 139, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !258}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !306, file: !253, line: 140, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !316, line: 230, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !333}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !315, file: !316, line: 231, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !258, !326, !291}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !62, line: 60, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !324, line: 73, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !324, line: 15, baseType: !65)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !316, line: 30, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !316, line: 31, baseType: !85, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !327, file: !316, line: 32, baseType: !331, size: 16, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !62, line: 19, baseType: !332)
!332 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !315, file: !316, line: 232, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!322, !258, !326, !85, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 55, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !306, file: !253, line: 141, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !306, file: !253, line: 142, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !316, line: 84, size: 320, elements: !347)
!347 = !{!348, !349, !353, !1489, !1490}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !316, line: 85, baseType: !85, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !346, file: !316, line: 86, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!331, !258, !326, !97}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !346, file: !316, line: 88, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!331, !258, !357, !97}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !316, line: 168, size: 448, elements: !359)
!359 = !{!360, !361, !362, !363, !373, !374}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !358, file: !316, line: 169, baseType: !327, size: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !358, file: !316, line: 170, baseType: !337, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !358, file: !316, line: 171, baseType: !63, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !358, file: !316, line: 172, baseType: !364, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!322, !367, !258, !357, !291, !370, !337}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !369, line: 526, flags: DIFlagFwdDecl)
!369 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !62, line: 46, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !324, line: 88, baseType: !372)
!372 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !358, file: !316, line: 174, baseType: !364, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !358, file: !316, line: 176, baseType: !375, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!97, !367, !258, !357, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !380, line: 305, size: 1472, elements: !381)
!380 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382, !383, !384, !385, !386, !394, !395, !1463, !1469, !1470, !1475, !1476, !1479, !1483, !1484, !1485, !1486, !1487}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !379, file: !380, line: 308, baseType: !64, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !379, file: !380, line: 309, baseType: !64, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !379, file: !380, line: 313, baseType: !378, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !379, file: !380, line: 313, baseType: !378, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !379, file: !380, line: 315, baseType: !387, size: 192, align: 64, offset: 256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !388, line: 24, size: 192, align: 64, elements: !389)
!388 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390, !391, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !387, file: !388, line: 25, baseType: !64, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !387, file: !388, line: 26, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !387, file: !388, line: 27, baseType: !392, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !379, file: !380, line: 323, baseType: !64, size: 64, offset: 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !379, file: !380, line: 327, baseType: !396, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !380, line: 388, size: 7296, elements: !398)
!398 = !{!399, !1459}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !380, line: 389, baseType: !400, size: 7296)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !397, file: !380, line: 389, size: 7296, elements: !401)
!401 = !{!402, !403, !407, !411, !415, !416, !417, !418, !419, !427, !432, !433, !434, !435, !444, !445, !446, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !481, !489, !492, !524, !525, !1430, !1431, !1434, !1437, !1438, !1441, !1442, !1443, !1446, !1458}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !400, file: !380, line: 390, baseType: !378, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !400, file: !380, line: 391, baseType: !404, size: 64, offset: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !388, line: 31, size: 64, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !404, file: !388, line: 32, baseType: !392, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !400, file: !380, line: 392, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !137, line: 23, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !410)
!410 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !400, file: !380, line: 394, baseType: !412, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!64, !367, !64, !64, !64, !64}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !400, file: !380, line: 398, baseType: !64, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !400, file: !380, line: 399, baseType: !64, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !400, file: !380, line: 405, baseType: !64, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !400, file: !380, line: 406, baseType: !64, size: 64, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !400, file: !380, line: 407, baseType: !420, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !369, line: 286, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 286, size: 64, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !422, file: !369, line: 286, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !426, line: 18, baseType: !64)
!426 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!427 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !400, file: !380, line: 416, baseType: !428, size: 32, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !62, line: 168, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 166, size: 32, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !429, file: !62, line: 167, baseType: !97, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !400, file: !380, line: 428, baseType: !428, size: 32, offset: 608)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !400, file: !380, line: 437, baseType: !428, size: 32, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !400, file: !380, line: 447, baseType: !428, size: 32, offset: 672)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !400, file: !380, line: 450, baseType: !436, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !437, line: 13, baseType: !438)
!437 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !62, line: 175, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 173, size: 64, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !439, file: !62, line: 174, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !137, line: 22, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !372)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !400, file: !380, line: 452, baseType: !97, size: 32, offset: 768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !400, file: !380, line: 454, baseType: !213, offset: 800)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !400, file: !380, line: 457, baseType: !447, size: 256, offset: 832)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !448, line: 35, size: 256, elements: !449)
!448 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!449 = !{!450, !451, !452, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !447, file: !448, line: 36, baseType: !436, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !447, file: !448, line: 42, baseType: !436, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !447, file: !448, line: 46, baseType: !453, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !214, line: 29, baseType: !221)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !447, file: !448, line: 47, baseType: !203, size: 128, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !400, file: !380, line: 459, baseType: !203, size: 128, offset: 1088)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !400, file: !380, line: 466, baseType: !64, size: 64, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !400, file: !380, line: 467, baseType: !64, size: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !400, file: !380, line: 469, baseType: !64, size: 64, offset: 1344)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !400, file: !380, line: 470, baseType: !64, size: 64, offset: 1408)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !400, file: !380, line: 471, baseType: !438, size: 64, offset: 1472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !400, file: !380, line: 472, baseType: !64, size: 64, offset: 1536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !400, file: !380, line: 473, baseType: !64, size: 64, offset: 1600)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !400, file: !380, line: 474, baseType: !64, size: 64, offset: 1664)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !400, file: !380, line: 475, baseType: !64, size: 64, offset: 1728)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !400, file: !380, line: 477, baseType: !213, offset: 1792)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !400, file: !380, line: 478, baseType: !64, size: 64, offset: 1792)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !400, file: !380, line: 478, baseType: !64, size: 64, offset: 1856)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !400, file: !380, line: 478, baseType: !64, size: 64, offset: 1920)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !400, file: !380, line: 478, baseType: !64, size: 64, offset: 1984)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !400, file: !380, line: 479, baseType: !64, size: 64, offset: 2048)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !400, file: !380, line: 479, baseType: !64, size: 64, offset: 2112)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !400, file: !380, line: 479, baseType: !64, size: 64, offset: 2176)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !400, file: !380, line: 480, baseType: !64, size: 64, offset: 2240)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !400, file: !380, line: 480, baseType: !64, size: 64, offset: 2304)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !400, file: !380, line: 480, baseType: !64, size: 64, offset: 2368)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !400, file: !380, line: 480, baseType: !64, size: 64, offset: 2432)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !400, file: !380, line: 482, baseType: !478, size: 2816, offset: 2496)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2816, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 44)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !400, file: !380, line: 488, baseType: !482, size: 256, offset: 5312)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !483, line: 60, size: 256, elements: !484)
!483 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !482, file: !483, line: 61, baseType: !486, size: 256)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 256, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 4)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !400, file: !380, line: 490, baseType: !490, size: 64, offset: 5568)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !380, line: 490, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !400, file: !380, line: 493, baseType: !493, size: 896, offset: 5632)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !494, line: 53, baseType: !495)
!494 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 896, elements: !496)
!496 = !{!497, !498, !499, !500, !503, !504, !511, !512, !516, !517, !520}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !495, file: !494, line: 18, baseType: !408, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !495, file: !494, line: 28, baseType: !438, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !495, file: !494, line: 31, baseType: !447, size: 256, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !495, file: !494, line: 32, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !494, line: 32, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !495, file: !494, line: 37, baseType: !332, size: 16, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !495, file: !494, line: 40, baseType: !505, size: 192, offset: 512)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !506, line: 53, size: 192, elements: !507)
!506 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!507 = !{!508, !509, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !505, file: !506, line: 54, baseType: !436, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !505, file: !506, line: 55, baseType: !213, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !505, file: !506, line: 59, baseType: !203, size: 128, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !495, file: !494, line: 41, baseType: !63, size: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !495, file: !494, line: 42, baseType: !513, size: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !494, line: 42, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !495, file: !494, line: 44, baseType: !428, size: 32, offset: 832)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !495, file: !494, line: 50, baseType: !518, size: 16, offset: 864)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !137, line: 19, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !332)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !495, file: !494, line: 51, baseType: !521, size: 16, offset: 880)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !137, line: 18, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !523)
!523 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !380, line: 495, baseType: !64, size: 64, offset: 6528)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !400, file: !380, line: 497, baseType: !526, size: 64, offset: 6592)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !380, line: 381, size: 384, elements: !528)
!528 = !{!529, !530, !1429}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !527, file: !380, line: 382, baseType: !428, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !527, file: !380, line: 383, baseType: !531, size: 128, offset: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !380, line: 376, size: 128, elements: !532)
!532 = !{!533, !1427}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !531, file: !380, line: 377, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !536, line: 640, size: 48640, elements: !537)
!536 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !546, !548, !549, !555, !556, !557, !558, !559, !560, !561, !562, !566, !584, !595, !687, !688, !689, !700, !701, !703, !704, !705, !706, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !785, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !841, !843, !844, !845, !857, !859, !860, !861, !862, !863, !869, !870, !871, !872, !873, !874, !875, !887, !892, !896, !897, !898, !901, !905, !908, !911, !914, !917, !920, !923, !926, !932, !933, !934, !940, !941, !942, !943, !944, !953, !954, !955, !956, !957, !962, !963, !964, !967, !968, !971, !974, !977, !980, !983, !986, !987, !1067, !1070, !1073, !1074, !1077, !1078, !1079, !1085, !1086, !1087, !1100, !1101, !1102, !1112, !1117, !1120, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !535, file: !536, line: 646, baseType: !539, size: 128)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !540, line: 56, size: 128, elements: !541)
!540 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !540, line: 57, baseType: !64, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !539, file: !540, line: 58, baseType: !544, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !137, line: 21, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !7)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !535, file: !536, line: 649, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !535, file: !536, line: 657, baseType: !63, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !535, file: !536, line: 658, baseType: !550, size: 32, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !551, line: 113, baseType: !552)
!551 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !551, line: 111, size: 32, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !552, file: !551, line: 112, baseType: !428, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !536, line: 660, baseType: !7, size: 32, offset: 288)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !535, file: !536, line: 661, baseType: !7, size: 32, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !535, file: !536, line: 684, baseType: !97, size: 32, offset: 352)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !535, file: !536, line: 686, baseType: !97, size: 32, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !535, file: !536, line: 687, baseType: !97, size: 32, offset: 416)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !535, file: !536, line: 688, baseType: !97, size: 32, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !535, file: !536, line: 689, baseType: !7, size: 32, offset: 480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !535, file: !536, line: 691, baseType: !563, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !536, line: 691, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !535, file: !536, line: 692, baseType: !567, size: 832, offset: 576)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !536, line: 451, size: 832, elements: !568)
!568 = !{!569, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !567, file: !536, line: 453, baseType: !570, size: 128)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !536, line: 325, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !570, file: !536, line: 326, baseType: !64, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !570, file: !536, line: 327, baseType: !544, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !567, file: !536, line: 454, baseType: !387, size: 192, align: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !567, file: !536, line: 455, baseType: !203, size: 128, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !567, file: !536, line: 456, baseType: !7, size: 32, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !567, file: !536, line: 458, baseType: !408, size: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !567, file: !536, line: 459, baseType: !408, size: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !567, file: !536, line: 460, baseType: !408, size: 64, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !567, file: !536, line: 461, baseType: !408, size: 64, offset: 704)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !567, file: !536, line: 463, baseType: !408, size: 64, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !567, file: !536, line: 465, baseType: !583, offset: 832)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !536, line: 415, elements: !227)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !535, file: !536, line: 693, baseType: !585, size: 384, offset: 1408)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !536, line: 489, size: 384, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !585, file: !536, line: 490, baseType: !203, size: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !585, file: !536, line: 491, baseType: !64, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !585, file: !536, line: 492, baseType: !64, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !585, file: !536, line: 493, baseType: !7, size: 32, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !585, file: !536, line: 494, baseType: !332, size: 16, offset: 288)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !585, file: !536, line: 495, baseType: !332, size: 16, offset: 304)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !585, file: !536, line: 497, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !535, file: !536, line: 697, baseType: !596, size: 1792, offset: 1792)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !536, line: 507, size: 1792, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !684, !685}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !596, file: !536, line: 508, baseType: !387, size: 192, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !596, file: !536, line: 515, baseType: !408, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !596, file: !536, line: 516, baseType: !408, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !596, file: !536, line: 517, baseType: !408, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !596, file: !536, line: 518, baseType: !408, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !596, file: !536, line: 519, baseType: !408, size: 64, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !596, file: !536, line: 526, baseType: !442, size: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !596, file: !536, line: 527, baseType: !408, size: 64, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !536, line: 528, baseType: !7, size: 32, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !596, file: !536, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !596, file: !536, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !596, file: !536, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !596, file: !536, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !596, file: !536, line: 563, baseType: !612, size: 512, offset: 704)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !613)
!613 = !{!614, !622, !623, !628, !680, !681, !682, !683}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 119, baseType: !615, size: 256)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !616, line: 9, size: 256, elements: !617)
!616 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !616, line: 10, baseType: !387, size: 192, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !615, file: !616, line: 11, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !621, line: 29, baseType: !442)
!621 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !612, file: !6, line: 120, baseType: !620, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !612, file: !6, line: 121, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!5, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !612, file: !6, line: 122, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !631)
!631 = !{!632, !652, !653, !656, !666, !667, !675, !679}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !630, file: !6, line: 160, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !634, file: !6, line: 215, baseType: !453)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !634, file: !6, line: 216, baseType: !7, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !634, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !634, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !634, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !634, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !634, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !634, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !634, file: !6, line: 233, baseType: !620, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !634, file: !6, line: 234, baseType: !627, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !634, file: !6, line: 235, baseType: !620, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !634, file: !6, line: 236, baseType: !627, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !634, file: !6, line: 237, baseType: !649, size: 4096, offset: 512)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 4096, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 8)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !630, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !630, file: !6, line: 162, baseType: !654, size: 32, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !62, line: 27, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !324, line: 96, baseType: !97)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !630, file: !6, line: 163, baseType: !657, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !658, line: 276, baseType: !659)
!658 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !658, line: 276, size: 32, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !659, file: !658, line: 276, baseType: !662, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !658, line: 70, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !658, line: 65, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !663, file: !658, line: 66, baseType: !7, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !630, file: !6, line: 164, baseType: !627, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !630, file: !6, line: 165, baseType: !668, size: 128, offset: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !616, line: 14, size: 128, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !668, file: !616, line: 15, baseType: !671, size: 128)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !388, line: 125, size: 128, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !671, file: !388, line: 126, baseType: !404, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !671, file: !388, line: 127, baseType: !392, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !630, file: !6, line: 166, baseType: !676, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!620}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !630, file: !6, line: 167, baseType: !620, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !612, file: !6, line: 123, baseType: !136, size: 8, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !612, file: !6, line: 124, baseType: !136, size: 8, offset: 456)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !612, file: !6, line: 125, baseType: !136, size: 8, offset: 464)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !612, file: !6, line: 126, baseType: !136, size: 8, offset: 472)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !596, file: !536, line: 572, baseType: !612, size: 512, offset: 1216)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !596, file: !536, line: 580, baseType: !686, size: 64, offset: 1728)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !535, file: !536, line: 721, baseType: !7, size: 32, offset: 3584)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !535, file: !536, line: 722, baseType: !97, size: 32, offset: 3616)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !535, file: !536, line: 723, baseType: !690, size: 64, offset: 3648)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !693, line: 17, baseType: !694)
!693 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !693, line: 17, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !694, file: !693, line: 17, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 1)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !535, file: !536, line: 724, baseType: !692, size: 64, offset: 3712)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !535, file: !536, line: 749, baseType: !702, offset: 3776)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !536, line: 290, elements: !227)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !535, file: !536, line: 751, baseType: !203, size: 128, offset: 3776)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !535, file: !536, line: 757, baseType: !396, size: 64, offset: 3904)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !535, file: !536, line: 758, baseType: !396, size: 64, offset: 3968)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !535, file: !536, line: 761, baseType: !707, size: 320, offset: 4032)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !483, line: 34, size: 320, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !707, file: !483, line: 35, baseType: !408, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !707, file: !483, line: 36, baseType: !711, size: 256, offset: 64)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 256, elements: !487)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !535, file: !536, line: 766, baseType: !97, size: 32, offset: 4352)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !535, file: !536, line: 767, baseType: !97, size: 32, offset: 4384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !535, file: !536, line: 768, baseType: !97, size: 32, offset: 4416)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !535, file: !536, line: 770, baseType: !97, size: 32, offset: 4448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !535, file: !536, line: 772, baseType: !64, size: 64, offset: 4480)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !535, file: !536, line: 775, baseType: !7, size: 32, offset: 4544)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !535, file: !536, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !535, file: !536, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !535, file: !536, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !535, file: !536, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !535, file: !536, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !535, file: !536, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !535, file: !536, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !535, file: !536, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !535, file: !536, line: 831, baseType: !64, size: 64, offset: 4672)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !535, file: !536, line: 833, baseType: !728, size: 384, offset: 4736)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !729)
!729 = !{!730, !735}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !728, file: !12, line: 26, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!65, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !12, line: 27, baseType: !736, size: 320, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !728, file: !12, line: 27, size: 320, elements: !737)
!737 = !{!738, !748, !775}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !736, file: !12, line: 36, baseType: !739, size: 320)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !12, line: 29, size: 320, elements: !740)
!740 = !{!741, !743, !744, !745, !746, !747}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !739, file: !12, line: 30, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !739, file: !12, line: 31, baseType: !544, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !12, line: 32, baseType: !544, size: 32, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !739, file: !12, line: 33, baseType: !544, size: 32, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !739, file: !12, line: 34, baseType: !408, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !739, file: !12, line: 35, baseType: !742, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !736, file: !12, line: 46, baseType: !749, size: 192)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !12, line: 38, size: 192, elements: !750)
!750 = !{!751, !752, !753, !774}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !749, file: !12, line: 39, baseType: !654, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !12, line: 41, baseType: !754, size: 64, offset: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !12, line: 41, size: 64, elements: !755)
!755 = !{!756, !764}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !754, file: !12, line: 42, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !759, line: 7, size: 128, elements: !760)
!759 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!760 = !{!761, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !758, file: !759, line: 8, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !324, line: 93, baseType: !372)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !758, file: !759, line: 9, baseType: !372, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !754, file: !12, line: 43, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !767, line: 7, size: 64, elements: !768)
!767 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!768 = !{!769, !773}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !766, file: !767, line: 8, baseType: !770, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !767, line: 5, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !137, line: 20, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !97)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !766, file: !767, line: 9, baseType: !771, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !749, file: !12, line: 45, baseType: !408, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !736, file: !12, line: 54, baseType: !776, size: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !12, line: 48, size: 256, elements: !777)
!777 = !{!778, !781, !782, !783, !784}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !776, file: !12, line: 49, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !776, file: !12, line: 50, baseType: !97, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !776, file: !12, line: 51, baseType: !97, size: 32, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !776, file: !12, line: 52, baseType: !64, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !776, file: !12, line: 53, baseType: !64, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !535, file: !536, line: 835, baseType: !786, size: 32, offset: 5120)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !62, line: 22, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !324, line: 28, baseType: !97)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !535, file: !536, line: 836, baseType: !786, size: 32, offset: 5152)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !535, file: !536, line: 840, baseType: !64, size: 64, offset: 5184)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !535, file: !536, line: 849, baseType: !534, size: 64, offset: 5248)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !535, file: !536, line: 852, baseType: !534, size: 64, offset: 5312)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !535, file: !536, line: 857, baseType: !203, size: 128, offset: 5376)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !535, file: !536, line: 858, baseType: !203, size: 128, offset: 5504)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !535, file: !536, line: 859, baseType: !534, size: 64, offset: 5632)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !535, file: !536, line: 867, baseType: !203, size: 128, offset: 5696)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !535, file: !536, line: 868, baseType: !203, size: 128, offset: 5824)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !535, file: !536, line: 871, baseType: !798, size: 64, offset: 5952)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !800, line: 59, size: 768, elements: !801)
!800 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !803, !804, !805, !816, !817, !824, !833}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !799, file: !800, line: 61, baseType: !550, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !799, file: !800, line: 62, baseType: !7, size: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !799, file: !800, line: 63, baseType: !213, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !799, file: !800, line: 65, baseType: !806, size: 256, offset: 64)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 256, elements: !487)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !62, line: 182, size: 64, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !807, file: !62, line: 183, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !62, line: 186, size: 128, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !811, file: !62, line: 187, baseType: !810, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !811, file: !62, line: 187, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !799, file: !800, line: 66, baseType: !807, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !799, file: !800, line: 68, baseType: !818, size: 128, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !819, line: 40, baseType: !820)
!819 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !819, line: 36, size: 128, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !820, file: !819, line: 37, baseType: !213)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !820, file: !819, line: 38, baseType: !203, size: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !799, file: !800, line: 69, baseType: !825, size: 128, align: 64, offset: 512)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !62, line: 216, size: 128, align: 64, elements: !826)
!826 = !{!827, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !62, line: 217, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !825, file: !62, line: 218, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !828}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !799, file: !800, line: 70, baseType: !834, size: 128, offset: 640)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 128, elements: !698)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !800, line: 54, size: 128, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !835, file: !800, line: 55, baseType: !97, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !835, file: !800, line: 56, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !800, line: 56, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !535, file: !536, line: 872, baseType: !842, size: 512, offset: 6016)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 512, elements: !487)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !535, file: !536, line: 873, baseType: !203, size: 128, offset: 6528)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !535, file: !536, line: 874, baseType: !203, size: 128, offset: 6656)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !535, file: !536, line: 876, baseType: !846, size: 64, offset: 6784)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !848, line: 26, size: 192, elements: !849)
!848 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !847, file: !848, line: 27, baseType: !7, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !847, file: !848, line: 28, baseType: !852, size: 128, offset: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !853, line: 43, size: 128, elements: !854)
!853 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !852, file: !853, line: 44, baseType: !453)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !852, file: !853, line: 45, baseType: !203, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !535, file: !536, line: 879, baseType: !858, size: 64, offset: 6848)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !535, file: !536, line: 882, baseType: !858, size: 64, offset: 6912)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !535, file: !536, line: 884, baseType: !408, size: 64, offset: 6976)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !535, file: !536, line: 885, baseType: !408, size: 64, offset: 7040)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !535, file: !536, line: 890, baseType: !408, size: 64, offset: 7104)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !535, file: !536, line: 891, baseType: !864, size: 128, offset: 7168)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !536, line: 242, size: 128, elements: !865)
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !864, file: !536, line: 244, baseType: !408, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !864, file: !536, line: 245, baseType: !408, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !864, file: !536, line: 246, baseType: !453, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !535, file: !536, line: 900, baseType: !64, size: 64, offset: 7296)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !535, file: !536, line: 901, baseType: !64, size: 64, offset: 7360)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !535, file: !536, line: 904, baseType: !408, size: 64, offset: 7424)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !535, file: !536, line: 907, baseType: !408, size: 64, offset: 7488)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !535, file: !536, line: 910, baseType: !64, size: 64, offset: 7552)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !535, file: !536, line: 911, baseType: !64, size: 64, offset: 7616)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !535, file: !536, line: 914, baseType: !876, size: 640, offset: 7680)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !877, line: 123, size: 640, elements: !878)
!877 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!878 = !{!879, !885, !886}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !876, file: !877, line: 124, baseType: !880, size: 576)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, size: 576, elements: !292)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !877, line: 108, size: 192, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !881, file: !877, line: 109, baseType: !408, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !881, file: !877, line: 110, baseType: !668, size: 128, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !876, file: !877, line: 125, baseType: !7, size: 32, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !876, file: !877, line: 126, baseType: !7, size: 32, offset: 608)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !535, file: !536, line: 917, baseType: !888, size: 192, offset: 8320)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !877, line: 134, size: 192, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !888, file: !877, line: 135, baseType: !825, size: 128, align: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !888, file: !877, line: 136, baseType: !7, size: 32, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !535, file: !536, line: 923, baseType: !893, size: 64, offset: 8512)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !536, line: 923, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !535, file: !536, line: 926, baseType: !893, size: 64, offset: 8576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !535, file: !536, line: 929, baseType: !893, size: 64, offset: 8640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !535, file: !536, line: 933, baseType: !899, size: 64, offset: 8704)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !536, line: 933, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !535, file: !536, line: 943, baseType: !902, size: 128, offset: 8768)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 16)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !535, file: !536, line: 945, baseType: !906, size: 64, offset: 8896)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !536, line: 49, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !535, file: !536, line: 956, baseType: !909, size: 64, offset: 8960)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !536, line: 45, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !535, file: !536, line: 959, baseType: !912, size: 64, offset: 9024)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !536, line: 959, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !535, file: !536, line: 962, baseType: !915, size: 64, offset: 9088)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !536, line: 66, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !535, file: !536, line: 966, baseType: !918, size: 64, offset: 9152)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !536, line: 50, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !535, file: !536, line: 969, baseType: !921, size: 64, offset: 9216)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !877, line: 223, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !535, file: !536, line: 970, baseType: !924, size: 64, offset: 9280)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !536, line: 62, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !535, file: !536, line: 971, baseType: !927, size: 64, offset: 9344)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !928, line: 25, baseType: !929)
!928 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !928, line: 23, size: 64, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !929, file: !928, line: 24, baseType: !697, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !535, file: !536, line: 972, baseType: !927, size: 64, offset: 9408)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !535, file: !536, line: 974, baseType: !927, size: 64, offset: 9472)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !535, file: !536, line: 975, baseType: !935, size: 192, offset: 9536)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !936, line: 30, size: 192, elements: !937)
!936 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !935, file: !936, line: 31, baseType: !203, size: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !935, file: !936, line: 32, baseType: !927, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !535, file: !536, line: 976, baseType: !64, size: 64, offset: 9728)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !535, file: !536, line: 977, baseType: !337, size: 64, offset: 9792)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !535, file: !536, line: 978, baseType: !7, size: 32, offset: 9856)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !535, file: !536, line: 980, baseType: !828, size: 64, offset: 9920)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !535, file: !536, line: 989, baseType: !945, size: 128, offset: 9984)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !946, line: 35, size: 128, elements: !947)
!946 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !945, file: !946, line: 36, baseType: !97, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !945, file: !946, line: 37, baseType: !428, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !945, file: !946, line: 38, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !946, line: 23, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !535, file: !536, line: 992, baseType: !408, size: 64, offset: 10112)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !535, file: !536, line: 993, baseType: !408, size: 64, offset: 10176)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !535, file: !536, line: 996, baseType: !213, offset: 10240)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !535, file: !536, line: 999, baseType: !453, offset: 10240)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !535, file: !536, line: 1001, baseType: !958, size: 64, offset: 10240)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !536, line: 636, size: 64, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !958, file: !536, line: 637, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !535, file: !536, line: 1005, baseType: !671, size: 128, offset: 10304)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !535, file: !536, line: 1007, baseType: !534, size: 64, offset: 10432)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !535, file: !536, line: 1009, baseType: !965, size: 64, offset: 10496)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !536, line: 1009, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !535, file: !536, line: 1043, baseType: !63, size: 64, offset: 10560)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !535, file: !536, line: 1046, baseType: !969, size: 64, offset: 10624)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !536, line: 41, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !535, file: !536, line: 1050, baseType: !972, size: 64, offset: 10688)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !536, line: 42, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !535, file: !536, line: 1054, baseType: !975, size: 64, offset: 10752)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !536, line: 55, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !535, file: !536, line: 1056, baseType: !978, size: 64, offset: 10816)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !536, line: 40, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !535, file: !536, line: 1058, baseType: !981, size: 64, offset: 10880)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !536, line: 47, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !535, file: !536, line: 1061, baseType: !984, size: 64, offset: 10944)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !536, line: 43, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !535, file: !536, line: 1064, baseType: !64, size: 64, offset: 11008)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !535, file: !536, line: 1065, baseType: !988, size: 64, offset: 11072)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !936, line: 14, baseType: !990)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !936, line: 12, size: 384, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !936, line: 13, baseType: !993, size: 384)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !936, line: 13, size: 384, elements: !994)
!994 = !{!995, !996, !997, !998}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !993, file: !936, line: 13, baseType: !97, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !993, file: !936, line: 13, baseType: !97, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !993, file: !936, line: 13, baseType: !97, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !993, file: !936, line: 13, baseType: !999, size: 256, offset: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1000, line: 32, size: 256, elements: !1001)
!1000 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !{!1002, !1008, !1021, !1027, !1036, !1056, !1061}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !999, file: !1000, line: 37, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !1000, line: 34, size: 64, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1003, file: !1000, line: 35, baseType: !787, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1003, file: !1000, line: 36, baseType: !1007, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !324, line: 49, baseType: !7)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !999, file: !1000, line: 45, baseType: !1009, size: 192)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !1000, line: 40, size: 192, elements: !1010)
!1010 = !{!1011, !1013, !1014, !1020}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1009, file: !1000, line: 41, baseType: !1012, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !324, line: 95, baseType: !97)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1009, file: !1000, line: 42, baseType: !97, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1009, file: !1000, line: 43, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1000, line: 11, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1000, line: 8, size: 64, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1016, file: !1000, line: 9, baseType: !97, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1016, file: !1000, line: 10, baseType: !63, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1009, file: !1000, line: 44, baseType: !97, size: 32, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !999, file: !1000, line: 52, baseType: !1022, size: 128)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !1000, line: 48, size: 128, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1022, file: !1000, line: 49, baseType: !787, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1022, file: !1000, line: 50, baseType: !1007, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1022, file: !1000, line: 51, baseType: !1015, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !999, file: !1000, line: 61, baseType: !1028, size: 256)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !1000, line: 55, size: 256, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1035}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1028, file: !1000, line: 56, baseType: !787, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1028, file: !1000, line: 57, baseType: !1007, size: 32, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1028, file: !1000, line: 58, baseType: !97, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1028, file: !1000, line: 59, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !324, line: 94, baseType: !325)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1028, file: !1000, line: 60, baseType: !1034, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !999, file: !1000, line: 95, baseType: !1037, size: 256)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !1000, line: 64, size: 256, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1037, file: !1000, line: 65, baseType: !63, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !1000, line: 77, baseType: !1041, size: 192, offset: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !1000, line: 77, size: 192, elements: !1042)
!1042 = !{!1043, !1044, !1051}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1041, file: !1000, line: 82, baseType: !523, size: 16)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1041, file: !1000, line: 88, baseType: !1045, size: 192)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !1000, line: 84, size: 192, elements: !1046)
!1046 = !{!1047, !1049, !1050}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1045, file: !1000, line: 85, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !650)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1045, file: !1000, line: 86, baseType: !63, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1045, file: !1000, line: 87, baseType: !63, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1041, file: !1000, line: 93, baseType: !1052, size: 96)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !1000, line: 90, size: 96, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1052, file: !1000, line: 91, baseType: !1048, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1052, file: !1000, line: 92, baseType: !545, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !999, file: !1000, line: 101, baseType: !1057, size: 128)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !1000, line: 98, size: 128, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1057, file: !1000, line: 99, baseType: !65, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1057, file: !1000, line: 100, baseType: !97, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !999, file: !1000, line: 108, baseType: !1062, size: 128)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !1000, line: 104, size: 128, elements: !1063)
!1063 = !{!1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1062, file: !1000, line: 105, baseType: !63, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1062, file: !1000, line: 106, baseType: !97, size: 32, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1062, file: !1000, line: 107, baseType: !7, size: 32, offset: 96)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !535, file: !536, line: 1067, baseType: !1068, offset: 11136)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1069, line: 12, elements: !227)
!1069 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !535, file: !536, line: 1099, baseType: !1071, size: 64, offset: 11136)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !536, line: 56, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !535, file: !536, line: 1103, baseType: !203, size: 128, offset: 11200)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !535, file: !536, line: 1104, baseType: !1075, size: 64, offset: 11328)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !536, line: 46, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !535, file: !536, line: 1105, baseType: !505, size: 192, offset: 11392)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !535, file: !536, line: 1106, baseType: !7, size: 32, offset: 11584)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !535, file: !536, line: 1109, baseType: !1080, size: 128, offset: 11648)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 128, elements: !1083)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !536, line: 51, flags: DIFlagFwdDecl)
!1083 = !{!1084}
!1084 = !DISubrange(count: 2)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !535, file: !536, line: 1110, baseType: !505, size: 192, offset: 11776)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !535, file: !536, line: 1111, baseType: !203, size: 128, offset: 11968)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !535, file: !536, line: 1173, baseType: !1088, size: 64, offset: 12096)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1090, line: 62, size: 256, align: 256, elements: !1091)
!1090 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1091 = !{!1092, !1093, !1094, !1099}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1089, file: !1090, line: 75, baseType: !545, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1089, file: !1090, line: 90, baseType: !545, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1089, file: !1090, line: 124, baseType: !1095, size: 64, offset: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !1090, line: 109, size: 64, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1095, file: !1090, line: 110, baseType: !409, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1095, file: !1090, line: 112, baseType: !409, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !1090, line: 144, baseType: !545, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !535, file: !536, line: 1174, baseType: !544, size: 32, offset: 12160)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !535, file: !536, line: 1179, baseType: !64, size: 64, offset: 12224)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !535, file: !536, line: 1182, baseType: !1103, size: 128, offset: 12288)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !483, line: 76, size: 128, elements: !1104)
!1104 = !{!1105, !1110, !1111}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1103, file: !483, line: 85, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1107, line: 7, size: 64, elements: !1108)
!1107 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !{!1109}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1106, file: !1107, line: 12, baseType: !694, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1103, file: !483, line: 88, baseType: !246, size: 8, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1103, file: !483, line: 95, baseType: !246, size: 8, offset: 72)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !536, line: 1184, baseType: !1113, size: 128, offset: 12416)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !536, line: 1184, size: 128, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1113, file: !536, line: 1185, baseType: !550, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1113, file: !536, line: 1186, baseType: !825, size: 128, align: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !535, file: !536, line: 1190, baseType: !1118, size: 64, offset: 12544)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !536, line: 53, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !535, file: !536, line: 1192, baseType: !1121, size: 128, offset: 12608)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !483, line: 64, size: 128, elements: !1122)
!1122 = !{!1123, !1216, !1217}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1121, file: !483, line: 65, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !380, line: 68, size: 512, align: 128, elements: !1126)
!1126 = !{!1127, !1128, !1208, !1215}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1125, file: !380, line: 69, baseType: !64, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !380, line: 77, baseType: !1129, size: 320, offset: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !380, line: 77, size: 320, elements: !1130)
!1130 = !{!1131, !1140, !1145, !1173, !1181, !1187, !1200, !1207}
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !380, line: 78, baseType: !1132, size: 320)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !380, line: 78, size: 320, elements: !1133)
!1133 = !{!1134, !1135, !1138, !1139}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1132, file: !380, line: 84, baseType: !203, size: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1132, file: !380, line: 86, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !380, line: 26, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1132, file: !380, line: 87, baseType: !64, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1132, file: !380, line: 94, baseType: !64, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !380, line: 96, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !380, line: 96, size: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1141, file: !380, line: 101, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !62, line: 143, baseType: !408)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !380, line: 103, baseType: !1146, size: 320)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !380, line: 103, size: 320, elements: !1147)
!1147 = !{!1148, !1158, !1161, !1162}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !380, line: 104, baseType: !1149, size: 128)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !380, line: 104, size: 128, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1149, file: !380, line: 105, baseType: !203, size: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !380, line: 106, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1149, file: !380, line: 106, size: 128, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1153, file: !380, line: 107, baseType: !1124, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1153, file: !380, line: 109, baseType: !97, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1153, file: !380, line: 110, baseType: !97, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1146, file: !380, line: 117, baseType: !1159, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !380, line: 117, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1146, file: !380, line: 119, baseType: !63, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !380, line: 120, baseType: !1163, size: 64, offset: 256)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !380, line: 120, size: 64, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1163, file: !380, line: 121, baseType: !63, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1163, file: !380, line: 122, baseType: !64, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !380, line: 123, baseType: !1168, size: 32)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1163, file: !380, line: 123, size: 32, elements: !1169)
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1168, file: !380, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1168, file: !380, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1168, file: !380, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !380, line: 130, baseType: !1174, size: 192)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !380, line: 130, size: 192, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1174, file: !380, line: 131, baseType: !64, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1174, file: !380, line: 134, baseType: !140, size: 8, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1174, file: !380, line: 135, baseType: !140, size: 8, offset: 72)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1174, file: !380, line: 136, baseType: !428, size: 32, offset: 96)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1174, file: !380, line: 137, baseType: !7, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !380, line: 139, baseType: !1182, size: 256)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !380, line: 139, size: 256, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1182, file: !380, line: 140, baseType: !64, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1182, file: !380, line: 141, baseType: !428, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1182, file: !380, line: 143, baseType: !203, size: 128, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !380, line: 145, baseType: !1188, size: 256)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !380, line: 145, size: 256, elements: !1189)
!1189 = !{!1190, !1191, !1193, !1194, !1199}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1188, file: !380, line: 146, baseType: !64, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1188, file: !380, line: 147, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !369, line: 509, baseType: !1124)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1188, file: !380, line: 148, baseType: !64, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !380, line: 149, baseType: !1195, size: 64, offset: 192)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !380, line: 149, size: 64, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1195, file: !380, line: 150, baseType: !396, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1195, file: !380, line: 151, baseType: !428, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1188, file: !380, line: 156, baseType: !213, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !380, line: 159, baseType: !1201, size: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !380, line: 159, size: 128, elements: !1202)
!1202 = !{!1203, !1206}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1201, file: !380, line: 161, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !380, line: 161, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1201, file: !380, line: 162, baseType: !63, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1129, file: !380, line: 176, baseType: !825, size: 128, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !380, line: 179, baseType: !1209, size: 32, offset: 384)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !380, line: 179, size: 32, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1209, file: !380, line: 184, baseType: !428, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1209, file: !380, line: 192, baseType: !7, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1209, file: !380, line: 194, baseType: !7, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1209, file: !380, line: 195, baseType: !97, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1125, file: !380, line: 199, baseType: !428, size: 32, offset: 416)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1121, file: !483, line: 67, baseType: !545, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1121, file: !483, line: 68, baseType: !545, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !535, file: !536, line: 1206, baseType: !97, size: 32, offset: 12736)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !535, file: !536, line: 1207, baseType: !97, size: 32, offset: 12768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !535, file: !536, line: 1209, baseType: !64, size: 64, offset: 12800)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !535, file: !536, line: 1219, baseType: !408, size: 64, offset: 12864)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !535, file: !536, line: 1220, baseType: !408, size: 64, offset: 12928)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !535, file: !536, line: 1317, baseType: !97, size: 32, offset: 12992)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !535, file: !536, line: 1319, baseType: !534, size: 64, offset: 13056)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !535, file: !536, line: 1322, baseType: !1226, size: 64, offset: 13120)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1228, line: 56, size: 512, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1236, !1237, !1239}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1227, file: !1228, line: 57, baseType: !1226, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1227, file: !1228, line: 58, baseType: !63, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1227, file: !1228, line: 59, baseType: !64, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1227, file: !1228, line: 60, baseType: !64, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1227, file: !1228, line: 61, baseType: !1235, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1227, file: !1228, line: 62, baseType: !7, size: 32, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1227, file: !1228, line: 63, baseType: !1238, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !62, line: 153, baseType: !408)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1227, file: !1228, line: 64, baseType: !1240, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !535, file: !536, line: 1326, baseType: !550, size: 32, offset: 13184)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !535, file: !536, line: 1342, baseType: !63, size: 64, offset: 13248)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !535, file: !536, line: 1343, baseType: !409, size: 64, offset: 13312)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !535, file: !536, line: 1344, baseType: !408, size: 64, offset: 13376)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !535, file: !536, line: 1345, baseType: !409, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !535, file: !536, line: 1346, baseType: !409, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !535, file: !536, line: 1347, baseType: !409, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !535, file: !536, line: 1348, baseType: !825, size: 128, align: 64, offset: 13504)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !535, file: !536, line: 1358, baseType: !1251, size: 34816, offset: 13824)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1252, line: 485, size: 34816, elements: !1253)
!1252 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1253 = !{!1254, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1283, !1284, !1285, !1286, !1287, !1288, !1291, !1292, !1293}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1251, file: !1252, line: 487, baseType: !1255, size: 192)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1256, size: 192, elements: !292)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1257, line: 16, size: 64, elements: !1258)
!1257 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1256, file: !1257, line: 17, baseType: !518, size: 16)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1256, file: !1257, line: 18, baseType: !518, size: 16, offset: 16)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1256, file: !1257, line: 19, baseType: !518, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1256, file: !1257, line: 19, baseType: !518, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1256, file: !1257, line: 19, baseType: !518, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1256, file: !1257, line: 19, baseType: !518, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1256, file: !1257, line: 19, baseType: !518, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1256, file: !1257, line: 20, baseType: !518, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1256, file: !1257, line: 20, baseType: !518, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1256, file: !1257, line: 20, baseType: !518, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1256, file: !1257, line: 20, baseType: !518, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1256, file: !1257, line: 20, baseType: !518, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1256, file: !1257, line: 20, baseType: !518, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1251, file: !1252, line: 491, baseType: !64, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1251, file: !1252, line: 495, baseType: !332, size: 16, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1251, file: !1252, line: 496, baseType: !332, size: 16, offset: 272)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1251, file: !1252, line: 497, baseType: !332, size: 16, offset: 288)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1251, file: !1252, line: 498, baseType: !332, size: 16, offset: 304)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1251, file: !1252, line: 502, baseType: !64, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1251, file: !1252, line: 503, baseType: !64, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1251, file: !1252, line: 514, baseType: !1280, size: 256, offset: 448)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1281, size: 256, elements: !487)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1252, line: 483, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1251, file: !1252, line: 516, baseType: !64, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1251, file: !1252, line: 518, baseType: !64, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1251, file: !1252, line: 520, baseType: !64, size: 64, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1251, file: !1252, line: 521, baseType: !64, size: 64, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1251, file: !1252, line: 522, baseType: !64, size: 64, offset: 960)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1251, file: !1252, line: 528, baseType: !1289, size: 64, offset: 1024)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1252, line: 10, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1251, file: !1252, line: 535, baseType: !64, size: 64, offset: 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1251, file: !1252, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1251, file: !1252, line: 540, baseType: !1294, size: 33280, offset: 1536)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1295, line: 317, size: 33280, elements: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1294, file: !1295, line: 330, baseType: !7, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1294, file: !1295, line: 337, baseType: !64, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1294, file: !1295, line: 348, baseType: !1300, size: 32768, offset: 512)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1295, line: 304, size: 32768, elements: !1301)
!1301 = !{!1302, !1317, !1356, !1406, !1423}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1300, file: !1295, line: 305, baseType: !1303, size: 896)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1295, line: 12, size: 896, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1316}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1303, file: !1295, line: 13, baseType: !544, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1303, file: !1295, line: 14, baseType: !544, size: 32, offset: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1303, file: !1295, line: 15, baseType: !544, size: 32, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1303, file: !1295, line: 16, baseType: !544, size: 32, offset: 96)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1303, file: !1295, line: 17, baseType: !544, size: 32, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1303, file: !1295, line: 18, baseType: !544, size: 32, offset: 160)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1303, file: !1295, line: 19, baseType: !544, size: 32, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1303, file: !1295, line: 22, baseType: !1313, size: 640, offset: 224)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 640, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 20)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1303, file: !1295, line: 25, baseType: !544, size: 32, offset: 864)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1300, file: !1295, line: 306, baseType: !1318, size: 4096, align: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1295, line: 34, size: 4096, align: 128, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1339, !1340, !1341, !1345, !1347, !1351}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1318, file: !1295, line: 35, baseType: !518, size: 16)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1318, file: !1295, line: 36, baseType: !518, size: 16, offset: 16)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1318, file: !1295, line: 37, baseType: !518, size: 16, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1318, file: !1295, line: 38, baseType: !518, size: 16, offset: 48)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1295, line: 39, baseType: !1325, size: 128, offset: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1295, line: 39, size: 128, elements: !1326)
!1326 = !{!1327, !1332}
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !1295, line: 40, baseType: !1328, size: 128)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1325, file: !1295, line: 40, size: 128, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1328, file: !1295, line: 41, baseType: !408, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1328, file: !1295, line: 42, baseType: !408, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !1295, line: 44, baseType: !1333, size: 128)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1325, file: !1295, line: 44, size: 128, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1333, file: !1295, line: 45, baseType: !544, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1333, file: !1295, line: 46, baseType: !544, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1333, file: !1295, line: 47, baseType: !544, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1333, file: !1295, line: 48, baseType: !544, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1318, file: !1295, line: 51, baseType: !544, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1318, file: !1295, line: 52, baseType: !544, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1318, file: !1295, line: 55, baseType: !1342, size: 1024, offset: 256)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 1024, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1318, file: !1295, line: 58, baseType: !1346, size: 2048, offset: 1280)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 2048, elements: !296)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1318, file: !1295, line: 60, baseType: !1348, size: 384, offset: 3328)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 384, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 12)
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1295, line: 62, baseType: !1352, size: 384, offset: 3712)
!1352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1295, line: 62, size: 384, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1352, file: !1295, line: 63, baseType: !1348, size: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1352, file: !1295, line: 64, baseType: !1348, size: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1300, file: !1295, line: 307, baseType: !1357, size: 1088)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1295, line: 79, size: 1088, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1405}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1357, file: !1295, line: 80, baseType: !544, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1357, file: !1295, line: 81, baseType: !544, size: 32, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1357, file: !1295, line: 82, baseType: !544, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1357, file: !1295, line: 83, baseType: !544, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1357, file: !1295, line: 84, baseType: !544, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1357, file: !1295, line: 85, baseType: !544, size: 32, offset: 160)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1357, file: !1295, line: 86, baseType: !544, size: 32, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1357, file: !1295, line: 88, baseType: !1313, size: 640, offset: 224)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1357, file: !1295, line: 89, baseType: !136, size: 8, offset: 864)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1357, file: !1295, line: 90, baseType: !136, size: 8, offset: 872)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1357, file: !1295, line: 91, baseType: !136, size: 8, offset: 880)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1357, file: !1295, line: 92, baseType: !136, size: 8, offset: 888)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1357, file: !1295, line: 93, baseType: !136, size: 8, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1357, file: !1295, line: 94, baseType: !136, size: 8, offset: 904)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1357, file: !1295, line: 95, baseType: !1374, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1376, line: 11, size: 128, elements: !1377)
!1376 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1375, file: !1376, line: 12, baseType: !65, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1375, file: !1376, line: 13, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1382, line: 56, size: 1344, elements: !1383)
!1382 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1381, file: !1382, line: 61, baseType: !64, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1381, file: !1382, line: 62, baseType: !64, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1381, file: !1382, line: 63, baseType: !64, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1381, file: !1382, line: 64, baseType: !64, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1381, file: !1382, line: 65, baseType: !64, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1381, file: !1382, line: 66, baseType: !64, size: 64, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1381, file: !1382, line: 68, baseType: !64, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1381, file: !1382, line: 69, baseType: !64, size: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1381, file: !1382, line: 70, baseType: !64, size: 64, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1381, file: !1382, line: 71, baseType: !64, size: 64, offset: 576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1381, file: !1382, line: 72, baseType: !64, size: 64, offset: 640)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1381, file: !1382, line: 73, baseType: !64, size: 64, offset: 704)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1381, file: !1382, line: 74, baseType: !64, size: 64, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1381, file: !1382, line: 75, baseType: !64, size: 64, offset: 832)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1381, file: !1382, line: 76, baseType: !64, size: 64, offset: 896)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1381, file: !1382, line: 81, baseType: !64, size: 64, offset: 960)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1381, file: !1382, line: 83, baseType: !64, size: 64, offset: 1024)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1381, file: !1382, line: 84, baseType: !64, size: 64, offset: 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !1382, line: 85, baseType: !64, size: 64, offset: 1152)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1381, file: !1382, line: 86, baseType: !64, size: 64, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1381, file: !1382, line: 87, baseType: !64, size: 64, offset: 1280)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1357, file: !1295, line: 96, baseType: !544, size: 32, offset: 1024)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1300, file: !1295, line: 308, baseType: !1407, size: 4608, align: 512)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1295, line: 289, size: 4608, align: 512, elements: !1408)
!1408 = !{!1409, !1410, !1419}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1407, file: !1295, line: 290, baseType: !1318, size: 4096, align: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1407, file: !1295, line: 291, baseType: !1411, size: 512, offset: 4096)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1295, line: 268, size: 512, elements: !1412)
!1412 = !{!1413, !1414, !1415}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1411, file: !1295, line: 269, baseType: !408, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1411, file: !1295, line: 270, baseType: !408, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1411, file: !1295, line: 271, baseType: !1416, size: 384, offset: 128)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 384, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 6)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1407, file: !1295, line: 292, baseType: !1420, offset: 4608)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 0)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1300, file: !1295, line: 309, baseType: !1424, size: 32768)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32768, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: 4096)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !380, line: 378, baseType: !1428, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !527, file: !380, line: 384, baseType: !847, size: 192, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !400, file: !380, line: 500, baseType: !213, offset: 6656)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !400, file: !380, line: 501, baseType: !1432, size: 64, offset: 6656)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !380, line: 387, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !400, file: !380, line: 516, baseType: !1435, size: 64, offset: 6720)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !380, line: 516, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !400, file: !380, line: 519, baseType: !367, size: 64, offset: 6784)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !400, file: !380, line: 521, baseType: !1439, size: 64, offset: 6848)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !380, line: 521, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !400, file: !380, line: 545, baseType: !428, size: 32, offset: 6912)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !400, file: !380, line: 548, baseType: !246, size: 8, offset: 6944)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !400, file: !380, line: 550, baseType: !1444, offset: 6952)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1445, line: 142, elements: !227)
!1445 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !400, file: !380, line: 554, baseType: !1447, size: 256, offset: 6976)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1448, line: 102, size: 256, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1451, !1452}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1447, file: !1448, line: 103, baseType: !436, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1447, file: !1448, line: 104, baseType: !203, size: 128, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1447, file: !1448, line: 105, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1448, line: 21, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !400, file: !380, line: 557, baseType: !544, size: 32, offset: 7232)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !397, file: !380, line: 565, baseType: !1460, offset: 7296)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !1461)
!1461 = !{!1462}
!1462 = !DISubrange(count: -1)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !379, file: !380, line: 333, baseType: !1464, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !369, line: 284, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !369, line: 284, size: 64, elements: !1466)
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1465, file: !369, line: 284, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !426, line: 19, baseType: !64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !379, file: !380, line: 334, baseType: !64, size: 64, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !379, file: !380, line: 343, baseType: !1471, size: 256, offset: 704)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !380, line: 340, size: 256, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1471, file: !380, line: 341, baseType: !387, size: 192, align: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1471, file: !380, line: 342, baseType: !64, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !379, file: !380, line: 351, baseType: !203, size: 128, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !379, file: !380, line: 353, baseType: !1477, size: 64, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !380, line: 353, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !379, file: !380, line: 356, baseType: !1480, size: 64, offset: 1152)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !380, line: 356, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !379, file: !380, line: 359, baseType: !64, size: 64, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !379, file: !380, line: 361, baseType: !367, size: 64, offset: 1280)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !379, file: !380, line: 362, baseType: !63, size: 64, offset: 1344)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !379, file: !380, line: 365, baseType: !436, size: 64, offset: 1408)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !379, file: !380, line: 373, baseType: !1488, offset: 1472)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !380, line: 296, elements: !227)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !346, file: !316, line: 90, baseType: !341, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !346, file: !316, line: 91, baseType: !1491, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !306, file: !253, line: 143, baseType: !1493, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1496, !258}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1499)
!1499 = !{!1500, !1501, !1505, !1509, !1515, !1519}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1498, file: !18, line: 40, baseType: !17, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1498, file: !18, line: 41, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!246}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1498, file: !18, line: 42, baseType: !1506, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!63}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1498, file: !18, line: 43, baseType: !1510, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1240, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1498, file: !18, line: 44, baseType: !1516, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!1240}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1498, file: !18, line: 45, baseType: !1520, size: 64, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !63}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !306, file: !253, line: 144, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1240, !258}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !306, file: !253, line: 145, baseType: !1528, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !258, !1531, !1538}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1533, line: 23, baseType: !1534)
!1533 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1533, line: 21, size: 32, elements: !1535)
!1535 = !{!1536}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1534, file: !1533, line: 22, baseType: !1537, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !62, line: 32, baseType: !1007)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1533, line: 28, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1533, line: 26, size: 32, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1540, file: !1533, line: 27, baseType: !1543, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !62, line: 33, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !324, line: 50, baseType: !7)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !252, file: !253, line: 70, baseType: !1546, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !177, line: 123, size: 1024, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1690, !1691, !1692, !1693, !1694}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1547, file: !177, line: 124, baseType: !428, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1547, file: !177, line: 125, baseType: !428, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1547, file: !177, line: 135, baseType: !1546, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1547, file: !177, line: 136, baseType: !85, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1547, file: !177, line: 138, baseType: !387, size: 192, align: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1547, file: !177, line: 140, baseType: !1240, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1547, file: !177, line: 141, baseType: !7, size: 32, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !177, line: 142, baseType: !1557, size: 256, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !177, line: 142, size: 256, elements: !1558)
!1558 = !{!1559, !1613, !1617}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1557, file: !177, line: 143, baseType: !1560, size: 192)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !177, line: 91, size: 192, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1560, file: !177, line: 92, baseType: !64, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1560, file: !177, line: 94, baseType: !404, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1560, file: !177, line: 100, baseType: !1565, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !177, line: 180, size: 704, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1583, !1584, !1585, !1611, !1612}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1566, file: !177, line: 182, baseType: !1546, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !177, line: 183, baseType: !7, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1566, file: !177, line: 186, baseType: !1571, size: 192, offset: 128)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1572, line: 19, size: 192, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574, !1581, !1582}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1571, file: !1572, line: 20, baseType: !1575, size: 128)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1576, line: 292, size: 128, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1579, !1580}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1575, file: !1576, line: 293, baseType: !213)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1575, file: !1576, line: 295, baseType: !61, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1575, file: !1576, line: 296, baseType: !63, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1571, file: !1572, line: 21, baseType: !7, size: 32, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1571, file: !1572, line: 22, baseType: !7, size: 32, offset: 160)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1566, file: !177, line: 187, baseType: !544, size: 32, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1566, file: !177, line: 188, baseType: !544, size: 32, offset: 352)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1566, file: !177, line: 189, baseType: !1586, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !177, line: 168, size: 320, elements: !1588)
!1588 = !{!1589, !1595, !1599, !1603, !1607}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1587, file: !177, line: 169, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!97, !1593, !1565}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !369, line: 539, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1587, file: !177, line: 171, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!97, !1546, !85, !331}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1587, file: !177, line: 173, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!97, !1546}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1587, file: !177, line: 174, baseType: !1604, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!97, !1546, !1546, !85}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1587, file: !177, line: 176, baseType: !1608, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!97, !1593, !1546, !1565}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1566, file: !177, line: 192, baseType: !203, size: 128, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1566, file: !177, line: 194, baseType: !818, size: 128, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1557, file: !177, line: 144, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !177, line: 103, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1614, file: !177, line: 104, baseType: !1546, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1557, file: !177, line: 145, baseType: !1618, size: 256)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !177, line: 107, size: 256, elements: !1619)
!1619 = !{!1620, !1685, !1688, !1689}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1618, file: !177, line: 108, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !177, line: 217, size: 768, elements: !1624)
!1624 = !{!1625, !1645, !1649, !1653, !1658, !1662, !1666, !1670, !1671, !1672, !1673, !1681}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1623, file: !177, line: 222, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!97, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !177, line: 197, size: 1088, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1630, file: !177, line: 199, baseType: !1546, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1630, file: !177, line: 200, baseType: !367, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1630, file: !177, line: 201, baseType: !1593, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1630, file: !177, line: 202, baseType: !63, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1630, file: !177, line: 205, baseType: !505, size: 192, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1630, file: !177, line: 206, baseType: !505, size: 192, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1630, file: !177, line: 207, baseType: !97, size: 32, offset: 640)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1630, file: !177, line: 208, baseType: !203, size: 128, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1630, file: !177, line: 209, baseType: !291, size: 64, offset: 832)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1630, file: !177, line: 211, baseType: !337, size: 64, offset: 896)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1630, file: !177, line: 212, baseType: !246, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1630, file: !177, line: 213, baseType: !246, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1630, file: !177, line: 214, baseType: !1480, size: 64, offset: 1024)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1623, file: !177, line: 223, baseType: !1646, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !1629}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1623, file: !177, line: 236, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!97, !1593, !63}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1623, file: !177, line: 238, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!63, !1593, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1623, file: !177, line: 239, baseType: !1659, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!63, !1593, !63, !1657}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1623, file: !177, line: 240, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1593, !63}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1623, file: !177, line: 242, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!322, !1629, !291, !337, !370}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1623, file: !177, line: 252, baseType: !337, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1623, file: !177, line: 259, baseType: !246, size: 8, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1623, file: !177, line: 260, baseType: !1667, size: 64, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1623, file: !177, line: 263, baseType: !1674, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!1677, !1629, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1678, line: 52, baseType: !7)
!1678 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !177, line: 27, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1623, file: !177, line: 266, baseType: !1682, size: 64, offset: 704)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!97, !1629, !378}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1618, file: !177, line: 109, baseType: !1686, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !177, line: 31, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1618, file: !177, line: 110, baseType: !370, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1618, file: !177, line: 111, baseType: !1546, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1547, file: !177, line: 148, baseType: !63, size: 64, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1547, file: !177, line: 154, baseType: !408, size: 64, offset: 832)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !177, line: 156, baseType: !332, size: 16, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1547, file: !177, line: 157, baseType: !331, size: 16, offset: 912)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1547, file: !177, line: 158, baseType: !1695, size: 64, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !177, line: 32, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !252, file: !253, line: 71, baseType: !1698, size: 32, offset: 448)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1699, line: 19, size: 32, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1698, file: !1699, line: 20, baseType: !550, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !252, file: !253, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !252, file: !253, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !252, file: !253, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !252, file: !253, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !252, file: !253, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !249, file: !30, line: 463, baseType: !1708, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !249, file: !30, line: 465, baseType: !1710, size: 64, offset: 576)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !249, file: !30, line: 467, baseType: !85, size: 64, offset: 640)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !249, file: !30, line: 468, baseType: !1714, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1724, !1729, !1733}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1716, file: !30, line: 88, baseType: !85, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1716, file: !30, line: 89, baseType: !343, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1716, file: !30, line: 90, baseType: !1721, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!97, !1708, !286}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1716, file: !30, line: 91, baseType: !1725, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!291, !1708, !1728, !1531, !1538}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1716, file: !30, line: 93, baseType: !1730, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1708}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1716, file: !30, line: 95, baseType: !1734, size: 64, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1737)
!1737 = !{!1738, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1736, file: !37, line: 279, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!97, !1708}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1736, file: !37, line: 280, baseType: !1730, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1736, file: !37, line: 281, baseType: !1739, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1736, file: !37, line: 282, baseType: !1739, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1736, file: !37, line: 283, baseType: !1739, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1736, file: !37, line: 284, baseType: !1739, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1736, file: !37, line: 285, baseType: !1739, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1736, file: !37, line: 286, baseType: !1739, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1736, file: !37, line: 287, baseType: !1739, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1736, file: !37, line: 288, baseType: !1739, size: 64, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1736, file: !37, line: 289, baseType: !1739, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1736, file: !37, line: 290, baseType: !1739, size: 64, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1736, file: !37, line: 291, baseType: !1739, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1736, file: !37, line: 292, baseType: !1739, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1736, file: !37, line: 293, baseType: !1739, size: 64, offset: 896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1736, file: !37, line: 294, baseType: !1739, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1736, file: !37, line: 295, baseType: !1739, size: 64, offset: 1024)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1736, file: !37, line: 296, baseType: !1739, size: 64, offset: 1088)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1736, file: !37, line: 297, baseType: !1739, size: 64, offset: 1152)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1736, file: !37, line: 298, baseType: !1739, size: 64, offset: 1216)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1736, file: !37, line: 299, baseType: !1739, size: 64, offset: 1280)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1736, file: !37, line: 300, baseType: !1739, size: 64, offset: 1344)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1736, file: !37, line: 301, baseType: !1739, size: 64, offset: 1408)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !249, file: !30, line: 470, baseType: !1765, size: 64, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1767, line: 82, size: 1408, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1851, !1854, !1857}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1766, file: !1767, line: 83, baseType: !85, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1766, file: !1767, line: 84, baseType: !85, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1766, file: !1767, line: 85, baseType: !1708, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1766, file: !1767, line: 86, baseType: !343, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1766, file: !1767, line: 87, baseType: !343, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1766, file: !1767, line: 88, baseType: !343, size: 64, offset: 320)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1766, file: !1767, line: 90, baseType: !1776, size: 64, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!97, !1708, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1785, !1786, !1787, !1788, !1802, !1815, !1816, !1817, !1818, !1819, !1827, !1828, !1829, !1830, !1831, !1832}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1780, file: !24, line: 96, baseType: !85, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1780, file: !24, line: 97, baseType: !1765, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1780, file: !24, line: 99, baseType: !58, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1780, file: !24, line: 100, baseType: !85, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1780, file: !24, line: 102, baseType: !246, size: 8, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1780, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1780, file: !24, line: 105, baseType: !1789, size: 64, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1792, line: 262, size: 1600, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1796, !1797, !1801}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1791, file: !1792, line: 263, baseType: !1795, size: 256)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !1343)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1791, file: !1792, line: 264, baseType: !1795, size: 256, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1791, file: !1792, line: 265, baseType: !1798, size: 1024, offset: 512)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1024, elements: !1799)
!1799 = !{!1800}
!1800 = !DISubrange(count: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1791, file: !1792, line: 266, baseType: !1240, size: 64, offset: 1536)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1780, file: !24, line: 106, baseType: !1803, size: 64, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1792, line: 210, size: 256, elements: !1806)
!1806 = !{!1807, !1811, !1813, !1814}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1805, file: !1792, line: 211, baseType: !1808, size: 72)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 72, elements: !1809)
!1809 = !{!1810}
!1810 = !DISubrange(count: 9)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1805, file: !1792, line: 212, baseType: !1812, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1792, line: 14, baseType: !64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1805, file: !1792, line: 213, baseType: !545, size: 32, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1805, file: !1792, line: 214, baseType: !545, size: 32, offset: 224)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1780, file: !24, line: 108, baseType: !1739, size: 64, offset: 448)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1780, file: !24, line: 109, baseType: !1730, size: 64, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1780, file: !24, line: 110, baseType: !1739, size: 64, offset: 576)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1780, file: !24, line: 111, baseType: !1730, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1780, file: !24, line: 112, baseType: !1820, size: 64, offset: 704)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!97, !1708, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1824, file: !37, line: 51, baseType: !97, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1780, file: !24, line: 113, baseType: !1739, size: 64, offset: 768)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1780, file: !24, line: 114, baseType: !343, size: 64, offset: 832)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1780, file: !24, line: 115, baseType: !343, size: 64, offset: 896)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1780, file: !24, line: 117, baseType: !1734, size: 64, offset: 960)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1780, file: !24, line: 118, baseType: !1730, size: 64, offset: 1024)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1780, file: !24, line: 120, baseType: !1833, size: 64, offset: 1088)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1766, file: !1767, line: 91, baseType: !1721, size: 64, offset: 448)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1766, file: !1767, line: 92, baseType: !1739, size: 64, offset: 512)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1766, file: !1767, line: 93, baseType: !1730, size: 64, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1766, file: !1767, line: 94, baseType: !1739, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1766, file: !1767, line: 95, baseType: !1730, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1766, file: !1767, line: 97, baseType: !1739, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1766, file: !1767, line: 98, baseType: !1739, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1766, file: !1767, line: 100, baseType: !1820, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1766, file: !1767, line: 101, baseType: !1739, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1766, file: !1767, line: 103, baseType: !1739, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1766, file: !1767, line: 105, baseType: !1739, size: 64, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1766, file: !1767, line: 107, baseType: !1734, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1766, file: !1767, line: 109, baseType: !1848, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1850)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1767, line: 109, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1766, file: !1767, line: 111, baseType: !1852, size: 64, offset: 1280)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1767, line: 111, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1766, file: !1767, line: 112, baseType: !1855, offset: 1344)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1856, line: 187, elements: !227)
!1856 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1766, file: !1767, line: 114, baseType: !246, size: 8, offset: 1344)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !249, file: !30, line: 471, baseType: !1779, size: 64, offset: 832)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !249, file: !30, line: 473, baseType: !63, size: 64, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !249, file: !30, line: 475, baseType: !63, size: 64, offset: 960)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !249, file: !30, line: 480, baseType: !505, size: 192, offset: 1024)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !249, file: !30, line: 484, baseType: !1863, size: 576, offset: 1216)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1863, file: !30, line: 362, baseType: !203, size: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1863, file: !30, line: 363, baseType: !203, size: 128, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1863, file: !30, line: 364, baseType: !203, size: 128, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1863, file: !30, line: 365, baseType: !203, size: 128, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1863, file: !30, line: 366, baseType: !246, size: 8, offset: 512)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1863, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !249, file: !30, line: 485, baseType: !1872, size: 2304, offset: 1792)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1969, !1973}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1872, file: !37, line: 566, baseType: !1823, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1872, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1872, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1872, file: !37, line: 569, baseType: !246, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1872, file: !37, line: 570, baseType: !246, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1872, file: !37, line: 571, baseType: !246, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1872, file: !37, line: 572, baseType: !246, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1872, file: !37, line: 573, baseType: !246, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1872, file: !37, line: 574, baseType: !246, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1872, file: !37, line: 575, baseType: !246, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1872, file: !37, line: 576, baseType: !246, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1872, file: !37, line: 577, baseType: !544, size: 32, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1872, file: !37, line: 578, baseType: !213, offset: 96)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1872, file: !37, line: 580, baseType: !203, size: 128, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1872, file: !37, line: 581, baseType: !847, size: 192, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1872, file: !37, line: 582, baseType: !1890, size: 64, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1892, line: 43, size: 1472, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1901, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1891, file: !1892, line: 44, baseType: !85, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1891, file: !1892, line: 45, baseType: !97, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1891, file: !1892, line: 46, baseType: !203, size: 128, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1891, file: !1892, line: 47, baseType: !213, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1891, file: !1892, line: 48, baseType: !1899, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1891, file: !1892, line: 49, baseType: !1902, size: 320, offset: 320)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1903, line: 11, size: 320, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !{!1905, !1906, !1907, !1912}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1902, file: !1903, line: 16, baseType: !811, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1902, file: !1903, line: 17, baseType: !64, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1902, file: !1903, line: 18, baseType: !1908, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1902, file: !1903, line: 19, baseType: !544, size: 32, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1891, file: !1892, line: 50, baseType: !64, size: 64, offset: 640)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1891, file: !1892, line: 51, baseType: !620, size: 64, offset: 704)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1891, file: !1892, line: 52, baseType: !620, size: 64, offset: 768)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1891, file: !1892, line: 53, baseType: !620, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1891, file: !1892, line: 54, baseType: !620, size: 64, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1891, file: !1892, line: 55, baseType: !620, size: 64, offset: 960)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1891, file: !1892, line: 56, baseType: !64, size: 64, offset: 1024)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1891, file: !1892, line: 57, baseType: !64, size: 64, offset: 1088)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1891, file: !1892, line: 58, baseType: !64, size: 64, offset: 1152)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1891, file: !1892, line: 59, baseType: !64, size: 64, offset: 1216)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1891, file: !1892, line: 60, baseType: !64, size: 64, offset: 1280)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1891, file: !1892, line: 61, baseType: !1708, size: 64, offset: 1344)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1891, file: !1892, line: 62, baseType: !246, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1891, file: !1892, line: 63, baseType: !246, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1872, file: !37, line: 583, baseType: !246, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1872, file: !37, line: 584, baseType: !246, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1872, file: !37, line: 585, baseType: !246, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1872, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1872, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1872, file: !37, line: 592, baseType: !612, size: 512, offset: 576)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1872, file: !37, line: 593, baseType: !408, size: 64, offset: 1088)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1872, file: !37, line: 594, baseType: !1447, size: 256, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1872, file: !37, line: 595, baseType: !818, size: 128, offset: 1408)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1872, file: !37, line: 596, baseType: !1899, size: 64, offset: 1536)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1872, file: !37, line: 597, baseType: !428, size: 32, offset: 1600)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1872, file: !37, line: 598, baseType: !428, size: 32, offset: 1632)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1872, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1872, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1872, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1872, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1872, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1872, file: !37, line: 604, baseType: !246, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1872, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1872, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1872, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1872, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1872, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1872, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1872, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1872, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1872, file: !37, line: 613, baseType: !97, size: 32, offset: 1792)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1872, file: !37, line: 614, baseType: !97, size: 32, offset: 1824)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1872, file: !37, line: 615, baseType: !408, size: 64, offset: 1856)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1872, file: !37, line: 616, baseType: !408, size: 64, offset: 1920)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1872, file: !37, line: 617, baseType: !408, size: 64, offset: 1984)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1872, file: !37, line: 618, baseType: !408, size: 64, offset: 2048)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1872, file: !37, line: 620, baseType: !1960, size: 64, offset: 2112)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1961, file: !37, line: 537, baseType: !213)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1961, file: !37, line: 538, baseType: !7, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1961, file: !37, line: 540, baseType: !203, size: 128, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1961, file: !37, line: 543, baseType: !1967, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1872, file: !37, line: 621, baseType: !1970, size: 64, offset: 2176)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1708, !771}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1872, file: !37, line: 622, baseType: !1974, size: 64, offset: 2240)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !249, file: !30, line: 486, baseType: !1977, size: 64, offset: 4096)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1986, !1987, !1988}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1978, file: !37, line: 643, baseType: !1736, size: 1472)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1978, file: !37, line: 644, baseType: !1739, size: 64, offset: 1472)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1978, file: !37, line: 645, baseType: !1983, size: 64, offset: 1536)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1708, !246}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1978, file: !37, line: 646, baseType: !1739, size: 64, offset: 1600)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1978, file: !37, line: 647, baseType: !1730, size: 64, offset: 1664)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1978, file: !37, line: 648, baseType: !1730, size: 64, offset: 1728)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !249, file: !30, line: 493, baseType: !1990, size: 64, offset: 4160)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !249, file: !30, line: 499, baseType: !203, size: 128, offset: 4224)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !249, file: !30, line: 502, baseType: !1994, size: 64, offset: 4352)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1996)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !249, file: !30, line: 504, baseType: !1998, size: 64, offset: 4416)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !249, file: !30, line: 505, baseType: !408, size: 64, offset: 4480)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !249, file: !30, line: 510, baseType: !408, size: 64, offset: 4544)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !249, file: !30, line: 511, baseType: !2002, size: 64, offset: 4608)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2004)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !249, file: !30, line: 513, baseType: !2006, size: 64, offset: 4672)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2007, file: !30, line: 293, baseType: !7, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2007, file: !30, line: 294, baseType: !64, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !249, file: !30, line: 515, baseType: !203, size: 128, offset: 4736)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !249, file: !30, line: 526, baseType: !2013, offset: 4864)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2014, line: 5, elements: !227)
!2014 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !249, file: !30, line: 528, baseType: !2016, size: 64, offset: 4864)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2018, line: 51, size: 1344, elements: !2019)
!2018 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !{!2020, !2021, !2023, !2024, !2114, !2123, !2124, !2125, !2126, !2127, !2128, !2129}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2017, file: !2018, line: 52, baseType: !85, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2017, file: !2018, line: 53, baseType: !2022, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2018, line: 28, baseType: !544)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2017, file: !2018, line: 54, baseType: !85, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2017, file: !2018, line: 55, baseType: !2025, size: 192, offset: 192)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2026, line: 17, size: 192, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !{!2028, !2030, !2113}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2025, file: !2026, line: 18, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2025, file: !2026, line: 19, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2026, line: 110, size: 1152, elements: !2034)
!2034 = !{!2035, !2039, !2043, !2049, !2055, !2059, !2063, !2068, !2072, !2073, !2077, !2081, !2085, !2096, !2097, !2098, !2099, !2109}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2033, file: !2026, line: 111, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!2029, !2029}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2033, file: !2026, line: 112, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !2029}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2033, file: !2026, line: 113, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!246, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2033, file: !2026, line: 114, baseType: !2050, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!1240, !2047, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2033, file: !2026, line: 116, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!246, !2047, !85}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2033, file: !2026, line: 118, baseType: !2060, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!97, !2047, !85, !7, !63, !337}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2033, file: !2026, line: 123, baseType: !2064, size: 64, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!97, !2047, !85, !2067, !337}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2033, file: !2026, line: 126, baseType: !2069, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!85, !2047}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2033, file: !2026, line: 127, baseType: !2069, size: 64, offset: 512)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2033, file: !2026, line: 128, baseType: !2074, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!2029, !2047}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2033, file: !2026, line: 130, baseType: !2078, size: 64, offset: 640)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!2029, !2047, !2029}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2033, file: !2026, line: 133, baseType: !2082, size: 64, offset: 704)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!2029, !2047, !85}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2033, file: !2026, line: 135, baseType: !2086, size: 64, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!97, !2047, !85, !85, !7, !7, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2026, line: 43, size: 640, elements: !2091)
!2091 = !{!2092, !2093, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2090, file: !2026, line: 44, baseType: !2029, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2090, file: !2026, line: 45, baseType: !7, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2090, file: !2026, line: 46, baseType: !2095, size: 512, offset: 128)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 512, elements: !650)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2033, file: !2026, line: 140, baseType: !2078, size: 64, offset: 832)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2033, file: !2026, line: 143, baseType: !2074, size: 64, offset: 896)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2033, file: !2026, line: 145, baseType: !2036, size: 64, offset: 960)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2033, file: !2026, line: 146, baseType: !2100, size: 64, offset: 1024)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!97, !2047, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2026, line: 29, size: 128, elements: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2104, file: !2026, line: 30, baseType: !7, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2104, file: !2026, line: 31, baseType: !7, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2104, file: !2026, line: 32, baseType: !2047, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2033, file: !2026, line: 148, baseType: !2110, size: 64, offset: 1088)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!97, !2047, !1708}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2025, file: !2026, line: 20, baseType: !1708, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2017, file: !2018, line: 57, baseType: !2115, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2018, line: 31, size: 704, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2116, file: !2018, line: 32, baseType: !291, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2116, file: !2018, line: 33, baseType: !97, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2116, file: !2018, line: 34, baseType: !63, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2116, file: !2018, line: 35, baseType: !2115, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2116, file: !2018, line: 43, baseType: !358, size: 448, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2017, file: !2018, line: 58, baseType: !2115, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2017, file: !2018, line: 59, baseType: !2016, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2017, file: !2018, line: 60, baseType: !2016, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2017, file: !2018, line: 61, baseType: !2016, size: 64, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2017, file: !2018, line: 63, baseType: !252, size: 512, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2017, file: !2018, line: 65, baseType: !64, size: 64, offset: 1216)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2017, file: !2018, line: 66, baseType: !63, size: 64, offset: 1280)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !249, file: !30, line: 529, baseType: !2029, size: 64, offset: 4928)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !249, file: !30, line: 534, baseType: !2132, size: 32, offset: 4992)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !62, line: 16, baseType: !2133)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !62, line: 13, baseType: !544)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !249, file: !30, line: 535, baseType: !544, size: 32, offset: 5024)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !249, file: !30, line: 537, baseType: !213, offset: 5056)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !249, file: !30, line: 538, baseType: !203, size: 128, offset: 5056)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !249, file: !30, line: 540, baseType: !2138, size: 64, offset: 5184)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2140, line: 54, size: 960, elements: !2141)
!2140 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2152, !2156, !2157, !2158, !2159, !2163, !2167, !2168}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2139, file: !2140, line: 55, baseType: !85, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2139, file: !2140, line: 56, baseType: !58, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2139, file: !2140, line: 58, baseType: !343, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2139, file: !2140, line: 59, baseType: !343, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2139, file: !2140, line: 60, baseType: !258, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2139, file: !2140, line: 62, baseType: !1721, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2139, file: !2140, line: 63, baseType: !2149, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!291, !1708, !1728}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2139, file: !2140, line: 65, baseType: !2153, size: 64, offset: 448)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !2138}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2139, file: !2140, line: 66, baseType: !1730, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2139, file: !2140, line: 68, baseType: !1739, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2139, file: !2140, line: 70, baseType: !1496, size: 64, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2139, file: !2140, line: 71, baseType: !2160, size: 64, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!1240, !1708}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2139, file: !2140, line: 73, baseType: !2164, size: 64, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !1708, !1531, !1538}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2139, file: !2140, line: 75, baseType: !1734, size: 64, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2139, file: !2140, line: 77, baseType: !1852, size: 64, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !249, file: !30, line: 541, baseType: !343, size: 64, offset: 5248)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !249, file: !30, line: 543, baseType: !1730, size: 64, offset: 5312)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !249, file: !30, line: 544, baseType: !2172, size: 64, offset: 5376)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !249, file: !30, line: 545, baseType: !2175, size: 64, offset: 5440)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !249, file: !30, line: 547, baseType: !246, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !249, file: !30, line: 548, baseType: !246, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !249, file: !30, line: 549, baseType: !246, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !249, file: !30, line: 550, baseType: !246, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !241, file: !234, line: 27, baseType: !408, size: 64, offset: 5696)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !241, file: !234, line: 28, baseType: !2007, size: 128, offset: 5760)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !241, file: !234, line: 29, baseType: !544, size: 32, offset: 5888)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !241, file: !234, line: 30, baseType: !2185, size: 64, offset: 5952)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2187, line: 20, size: 512, elements: !2188)
!2187 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2188 = !{!2189, !2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2186, file: !2187, line: 21, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !62, line: 158, baseType: !1238)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2186, file: !2187, line: 22, baseType: !2190, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2186, file: !2187, line: 23, baseType: !85, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2186, file: !2187, line: 24, baseType: !64, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2186, file: !2187, line: 25, baseType: !64, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2186, file: !2187, line: 26, baseType: !2185, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2186, file: !2187, line: 26, baseType: !2185, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2186, file: !2187, line: 26, baseType: !2185, size: 64, offset: 448)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !241, file: !234, line: 32, baseType: !2199, size: 64, offset: 6016)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1792, line: 586, size: 256, elements: !2202)
!2202 = !{!2203, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2201, file: !1792, line: 587, baseType: !2204, size: 160)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 160, elements: !1314)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2201, file: !1792, line: 588, baseType: !1812, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !241, file: !234, line: 33, baseType: !291, size: 64, offset: 6080)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !241, file: !234, line: 36, baseType: !2208, size: 64, offset: 6144)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !234, line: 18, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !241, file: !234, line: 39, baseType: !2211, offset: 6208)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2014, line: 8, elements: !227)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !233, file: !234, line: 202, baseType: !237, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !233, file: !234, line: 203, baseType: !2214, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !240}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !233, file: !234, line: 204, baseType: !2218, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!97, !240, !1823}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !233, file: !234, line: 205, baseType: !237, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !233, file: !234, line: 206, baseType: !1780, size: 1152, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !233, file: !234, line: 207, baseType: !2199, size: 64, offset: 1472)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !233, file: !234, line: 208, baseType: !246, size: 8, offset: 1536)
!2225 = !DIGlobalVariableExpression(var: !2226, expr: !DIExpression())
!2226 = distinct !DIGlobalVariable(name: "plt_clk_ops", scope: !2, file: !3, line: 151, type: !90, isLocal: true, isDefinition: true)
!2227 = !{!"rsp"}
!2228 = !{i32 7, !"Dwarf Version", i32 4}
!2229 = !{i32 2, !"Debug Info Version", i32 3}
!2230 = !{i32 1, !"wchar_size", i32 2}
!2231 = !{i32 1, !"Code Model", i32 2}
!2232 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2233 = distinct !DISubprogram(name: "plt_clk_driver_init", scope: !3, file: !3, line: 390, type: !2234, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!97}
!2236 = !DILocation(line: 390, column: 1, scope: !2233)
!2237 = distinct !DISubprogram(name: "plt_clk_probe", scope: !3, file: !3, line: 315, type: !238, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2238 = !DILocalVariable(name: "pdev", arg: 1, scope: !2237, file: !3, line: 315, type: !240)
!2239 = !DILocation(line: 315, column: 50, scope: !2237)
!2240 = !DILocalVariable(name: "pmc_data", scope: !2237, file: !3, line: 317, type: !2241)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmc_clk_data", file: !2244, line: 33, size: 192, elements: !2245)
!2244 = !DIFile(filename: "./include/linux/platform_data/x86/clk-pmc-atom.h", directory: "/home/lizy2001/genbc/linux")
!2245 = !{!2246, !2247, !2255}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2243, file: !2244, line: 34, baseType: !63, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "clks", scope: !2243, file: !2244, line: 35, baseType: !2248, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmc_clk", file: !2244, line: 19, size: 192, elements: !2251)
!2251 = !{!2252, !2253, !2254}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2250, file: !2244, line: 20, baseType: !85, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2250, file: !2244, line: 21, baseType: !64, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "parent_name", scope: !2250, file: !2244, line: 22, baseType: !85, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !2243, file: !2244, line: 36, baseType: !246, size: 8, offset: 128)
!2256 = !DILocation(line: 317, column: 29, scope: !2237)
!2257 = !DILocalVariable(name: "parent_names", scope: !2237, file: !3, line: 318, type: !2067)
!2258 = !DILocation(line: 318, column: 15, scope: !2237)
!2259 = !DILocalVariable(name: "data", scope: !2237, file: !3, line: 319, type: !2260)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_plt_data", file: !3, line: 46, size: 640, elements: !2262)
!2262 = !{!2263, !2270, !2271, !2273, !2274}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "parents", scope: !2261, file: !3, line: 47, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_plt_fixed", file: !3, line: 31, size: 128, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2266, file: !3, line: 32, baseType: !98, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2266, file: !3, line: 33, baseType: !198, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nparents", scope: !2261, file: !3, line: 48, baseType: !136, size: 8, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "clks", scope: !2261, file: !3, line: 49, baseType: !2272, size: 384, offset: 128)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 384, elements: !1417)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mclk_lookup", scope: !2261, file: !3, line: 50, baseType: !198, size: 64, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ether_clk_lookup", scope: !2261, file: !3, line: 51, baseType: !198, size: 64, offset: 576)
!2275 = !DILocation(line: 319, column: 23, scope: !2237)
!2276 = !DILocalVariable(name: "i", scope: !2237, file: !3, line: 320, type: !7)
!2277 = !DILocation(line: 320, column: 15, scope: !2237)
!2278 = !DILocalVariable(name: "err", scope: !2237, file: !3, line: 321, type: !97)
!2279 = !DILocation(line: 321, column: 6, scope: !2237)
!2280 = !DILocation(line: 323, column: 31, scope: !2237)
!2281 = !DILocation(line: 323, column: 37, scope: !2237)
!2282 = !DILocation(line: 323, column: 13, scope: !2237)
!2283 = !DILocation(line: 323, column: 11, scope: !2237)
!2284 = !DILocation(line: 324, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 324, column: 6)
!2286 = !DILocation(line: 324, column: 16, scope: !2285)
!2287 = !DILocation(line: 324, column: 20, scope: !2285)
!2288 = !DILocation(line: 324, column: 30, scope: !2285)
!2289 = !DILocation(line: 324, column: 6, scope: !2237)
!2290 = !DILocation(line: 325, column: 3, scope: !2285)
!2291 = !DILocation(line: 327, column: 23, scope: !2237)
!2292 = !DILocation(line: 327, column: 29, scope: !2237)
!2293 = !DILocation(line: 327, column: 9, scope: !2237)
!2294 = !DILocation(line: 327, column: 7, scope: !2237)
!2295 = !DILocation(line: 328, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 328, column: 6)
!2297 = !DILocation(line: 328, column: 6, scope: !2237)
!2298 = !DILocation(line: 329, column: 3, scope: !2296)
!2299 = !DILocation(line: 331, column: 42, scope: !2237)
!2300 = !DILocation(line: 331, column: 48, scope: !2237)
!2301 = !DILocation(line: 331, column: 54, scope: !2237)
!2302 = !DILocation(line: 331, column: 64, scope: !2237)
!2303 = !DILocation(line: 331, column: 17, scope: !2237)
!2304 = !DILocation(line: 331, column: 15, scope: !2237)
!2305 = !DILocation(line: 332, column: 13, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 332, column: 6)
!2307 = !DILocation(line: 332, column: 6, scope: !2306)
!2308 = !DILocation(line: 332, column: 6, scope: !2237)
!2309 = !DILocation(line: 333, column: 18, scope: !2306)
!2310 = !DILocation(line: 333, column: 10, scope: !2306)
!2311 = !DILocation(line: 333, column: 3, scope: !2306)
!2312 = !DILocation(line: 335, column: 9, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 335, column: 2)
!2314 = !DILocation(line: 335, column: 7, scope: !2313)
!2315 = !DILocation(line: 335, column: 14, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 335, column: 2)
!2317 = !DILocation(line: 335, column: 16, scope: !2316)
!2318 = !DILocation(line: 335, column: 2, scope: !2313)
!2319 = !DILocation(line: 336, column: 36, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 335, column: 36)
!2321 = !DILocation(line: 336, column: 42, scope: !2320)
!2322 = !DILocation(line: 336, column: 45, scope: !2320)
!2323 = !DILocation(line: 337, column: 8, scope: !2320)
!2324 = !DILocation(line: 337, column: 22, scope: !2320)
!2325 = !DILocation(line: 337, column: 28, scope: !2320)
!2326 = !DILocation(line: 336, column: 19, scope: !2320)
!2327 = !DILocation(line: 336, column: 3, scope: !2320)
!2328 = !DILocation(line: 336, column: 9, scope: !2320)
!2329 = !DILocation(line: 336, column: 14, scope: !2320)
!2330 = !DILocation(line: 336, column: 17, scope: !2320)
!2331 = !DILocation(line: 338, column: 14, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 338, column: 7)
!2333 = !DILocation(line: 338, column: 20, scope: !2332)
!2334 = !DILocation(line: 338, column: 25, scope: !2332)
!2335 = !DILocation(line: 338, column: 7, scope: !2332)
!2336 = !DILocation(line: 338, column: 7, scope: !2320)
!2337 = !DILocation(line: 339, column: 18, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 338, column: 30)
!2339 = !DILocation(line: 339, column: 24, scope: !2338)
!2340 = !DILocation(line: 339, column: 29, scope: !2338)
!2341 = !DILocation(line: 339, column: 10, scope: !2338)
!2342 = !DILocation(line: 339, column: 8, scope: !2338)
!2343 = !DILocation(line: 340, column: 4, scope: !2338)
!2344 = !DILocation(line: 342, column: 2, scope: !2320)
!2345 = !DILocation(line: 335, column: 32, scope: !2316)
!2346 = !DILocation(line: 335, column: 2, scope: !2316)
!2347 = distinct !{!2347, !2318, !2348}
!2348 = !DILocation(line: 342, column: 2, scope: !2313)
!2349 = !DILocation(line: 343, column: 40, scope: !2237)
!2350 = !DILocation(line: 343, column: 46, scope: !2237)
!2351 = !DILocation(line: 343, column: 55, scope: !2237)
!2352 = !DILocation(line: 343, column: 22, scope: !2237)
!2353 = !DILocation(line: 343, column: 2, scope: !2237)
!2354 = !DILocation(line: 343, column: 8, scope: !2237)
!2355 = !DILocation(line: 343, column: 20, scope: !2237)
!2356 = !DILocation(line: 344, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 344, column: 6)
!2358 = !DILocation(line: 344, column: 13, scope: !2357)
!2359 = !DILocation(line: 344, column: 6, scope: !2237)
!2360 = !DILocation(line: 345, column: 7, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 344, column: 26)
!2362 = !DILocation(line: 346, column: 3, scope: !2361)
!2363 = !DILocation(line: 349, column: 45, scope: !2237)
!2364 = !DILocation(line: 349, column: 51, scope: !2237)
!2365 = !DILocation(line: 349, column: 60, scope: !2237)
!2366 = !DILocation(line: 349, column: 27, scope: !2237)
!2367 = !DILocation(line: 349, column: 2, scope: !2237)
!2368 = !DILocation(line: 349, column: 8, scope: !2237)
!2369 = !DILocation(line: 349, column: 25, scope: !2237)
!2370 = !DILocation(line: 351, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 351, column: 6)
!2372 = !DILocation(line: 351, column: 13, scope: !2371)
!2373 = !DILocation(line: 351, column: 6, scope: !2237)
!2374 = !DILocation(line: 352, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 351, column: 31)
!2376 = !DILocation(line: 353, column: 3, scope: !2375)
!2377 = !DILocation(line: 356, column: 33, scope: !2237)
!2378 = !DILocation(line: 356, column: 47, scope: !2237)
!2379 = !DILocation(line: 356, column: 53, scope: !2237)
!2380 = !DILocation(line: 356, column: 2, scope: !2237)
!2381 = !DILocation(line: 358, column: 23, scope: !2237)
!2382 = !DILocation(line: 358, column: 29, scope: !2237)
!2383 = !DILocation(line: 358, column: 2, scope: !2237)
!2384 = !DILocation(line: 359, column: 2, scope: !2237)
!2385 = !DILabel(scope: !2237, name: "err_drop_mclk", file: !3, line: 361)
!2386 = !DILocation(line: 361, column: 1, scope: !2237)
!2387 = !DILocation(line: 362, column: 14, scope: !2237)
!2388 = !DILocation(line: 362, column: 20, scope: !2237)
!2389 = !DILocation(line: 362, column: 2, scope: !2237)
!2390 = !DILabel(scope: !2237, name: "err_unreg_clk_plt", file: !3, line: 363)
!2391 = !DILocation(line: 363, column: 1, scope: !2237)
!2392 = !DILocation(line: 364, column: 26, scope: !2237)
!2393 = !DILocation(line: 364, column: 32, scope: !2237)
!2394 = !DILocation(line: 364, column: 2, scope: !2237)
!2395 = !DILocation(line: 365, column: 29, scope: !2237)
!2396 = !DILocation(line: 365, column: 2, scope: !2237)
!2397 = !DILocation(line: 366, column: 33, scope: !2237)
!2398 = !DILocation(line: 366, column: 47, scope: !2237)
!2399 = !DILocation(line: 366, column: 53, scope: !2237)
!2400 = !DILocation(line: 366, column: 2, scope: !2237)
!2401 = !DILocation(line: 367, column: 9, scope: !2237)
!2402 = !DILocation(line: 367, column: 2, scope: !2237)
!2403 = !DILocation(line: 368, column: 1, scope: !2237)
!2404 = distinct !DISubprogram(name: "plt_clk_remove", scope: !3, file: !3, line: 370, type: !238, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2405 = !DILocalVariable(name: "pdev", arg: 1, scope: !2404, file: !3, line: 370, type: !240)
!2406 = !DILocation(line: 370, column: 51, scope: !2404)
!2407 = !DILocalVariable(name: "data", scope: !2404, file: !3, line: 372, type: !2260)
!2408 = !DILocation(line: 372, column: 23, scope: !2404)
!2409 = !DILocation(line: 374, column: 30, scope: !2404)
!2410 = !DILocation(line: 374, column: 9, scope: !2404)
!2411 = !DILocation(line: 374, column: 7, scope: !2404)
!2412 = !DILocation(line: 376, column: 14, scope: !2404)
!2413 = !DILocation(line: 376, column: 20, scope: !2404)
!2414 = !DILocation(line: 376, column: 2, scope: !2404)
!2415 = !DILocation(line: 377, column: 14, scope: !2404)
!2416 = !DILocation(line: 377, column: 20, scope: !2404)
!2417 = !DILocation(line: 377, column: 2, scope: !2404)
!2418 = !DILocation(line: 378, column: 26, scope: !2404)
!2419 = !DILocation(line: 378, column: 2, scope: !2404)
!2420 = !DILocation(line: 379, column: 29, scope: !2404)
!2421 = !DILocation(line: 379, column: 2, scope: !2404)
!2422 = !DILocation(line: 380, column: 2, scope: !2404)
!2423 = distinct !DISubprogram(name: "dev_get_platdata", scope: !30, file: !30, line: 828, type: !2424, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!63, !2053}
!2426 = !DILocalVariable(name: "dev", arg: 1, scope: !2423, file: !30, line: 828, type: !2053)
!2427 = !DILocation(line: 828, column: 59, scope: !2423)
!2428 = !DILocation(line: 830, column: 9, scope: !2423)
!2429 = !DILocation(line: 830, column: 14, scope: !2423)
!2430 = !DILocation(line: 830, column: 2, scope: !2423)
!2431 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2432, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!63, !1708, !337, !61}
!2434 = !DILocalVariable(name: "dev", arg: 1, scope: !2431, file: !30, line: 215, type: !1708)
!2435 = !DILocation(line: 215, column: 49, scope: !2431)
!2436 = !DILocalVariable(name: "size", arg: 2, scope: !2431, file: !30, line: 215, type: !337)
!2437 = !DILocation(line: 215, column: 61, scope: !2431)
!2438 = !DILocalVariable(name: "gfp", arg: 3, scope: !2431, file: !30, line: 215, type: !61)
!2439 = !DILocation(line: 215, column: 73, scope: !2431)
!2440 = !DILocation(line: 217, column: 22, scope: !2431)
!2441 = !DILocation(line: 217, column: 27, scope: !2431)
!2442 = !DILocation(line: 217, column: 33, scope: !2431)
!2443 = !DILocation(line: 217, column: 37, scope: !2431)
!2444 = !DILocation(line: 217, column: 9, scope: !2431)
!2445 = !DILocation(line: 217, column: 2, scope: !2431)
!2446 = distinct !DISubprogram(name: "plt_clk_register_parents", scope: !3, file: !3, line: 266, type: !2447, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!2067, !240, !2260, !2248}
!2449 = !DILocalVariable(name: "pdev", arg: 1, scope: !2446, file: !3, line: 266, type: !240)
!2450 = !DILocation(line: 266, column: 70, scope: !2446)
!2451 = !DILocalVariable(name: "data", arg: 2, scope: !2446, file: !3, line: 267, type: !2260)
!2452 = !DILocation(line: 267, column: 32, scope: !2446)
!2453 = !DILocalVariable(name: "clks", arg: 3, scope: !2446, file: !3, line: 268, type: !2248)
!2454 = !DILocation(line: 268, column: 33, scope: !2446)
!2455 = !DILocalVariable(name: "parent_names", scope: !2446, file: !3, line: 270, type: !2067)
!2456 = !DILocation(line: 270, column: 15, scope: !2446)
!2457 = !DILocalVariable(name: "i", scope: !2446, file: !3, line: 271, type: !7)
!2458 = !DILocation(line: 271, column: 15, scope: !2446)
!2459 = !DILocalVariable(name: "err", scope: !2446, file: !3, line: 272, type: !97)
!2460 = !DILocation(line: 272, column: 6, scope: !2446)
!2461 = !DILocalVariable(name: "nparents", scope: !2446, file: !3, line: 273, type: !97)
!2462 = !DILocation(line: 273, column: 6, scope: !2446)
!2463 = !DILocation(line: 275, column: 2, scope: !2446)
!2464 = !DILocation(line: 275, column: 8, scope: !2446)
!2465 = !DILocation(line: 275, column: 17, scope: !2446)
!2466 = !DILocation(line: 276, column: 2, scope: !2446)
!2467 = !DILocation(line: 276, column: 9, scope: !2446)
!2468 = !DILocation(line: 276, column: 14, scope: !2446)
!2469 = !DILocation(line: 276, column: 24, scope: !2446)
!2470 = !DILocation(line: 277, column: 11, scope: !2446)
!2471 = distinct !{!2471, !2466, !2470}
!2472 = !DILocation(line: 279, column: 32, scope: !2446)
!2473 = !DILocation(line: 279, column: 38, scope: !2446)
!2474 = !DILocation(line: 279, column: 43, scope: !2446)
!2475 = !DILocation(line: 279, column: 18, scope: !2446)
!2476 = !DILocation(line: 279, column: 2, scope: !2446)
!2477 = !DILocation(line: 279, column: 8, scope: !2446)
!2478 = !DILocation(line: 279, column: 16, scope: !2446)
!2479 = !DILocation(line: 281, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 281, column: 6)
!2481 = !DILocation(line: 281, column: 13, scope: !2480)
!2482 = !DILocation(line: 281, column: 6, scope: !2446)
!2483 = !DILocation(line: 282, column: 10, scope: !2480)
!2484 = !DILocation(line: 282, column: 3, scope: !2480)
!2485 = !DILocation(line: 284, column: 25, scope: !2446)
!2486 = !DILocation(line: 284, column: 17, scope: !2446)
!2487 = !DILocation(line: 284, column: 15, scope: !2446)
!2488 = !DILocation(line: 286, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 286, column: 6)
!2490 = !DILocation(line: 286, column: 6, scope: !2446)
!2491 = !DILocation(line: 287, column: 10, scope: !2489)
!2492 = !DILocation(line: 287, column: 3, scope: !2489)
!2493 = !DILocation(line: 289, column: 9, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 289, column: 2)
!2495 = !DILocation(line: 289, column: 7, scope: !2494)
!2496 = !DILocation(line: 289, column: 14, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 289, column: 2)
!2498 = !DILocation(line: 289, column: 18, scope: !2497)
!2499 = !DILocation(line: 289, column: 16, scope: !2497)
!2500 = !DILocation(line: 289, column: 2, scope: !2494)
!2501 = !DILocation(line: 291, column: 32, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 289, column: 33)
!2503 = !DILocation(line: 291, column: 38, scope: !2502)
!2504 = !DILocation(line: 291, column: 43, scope: !2502)
!2505 = !DILocation(line: 291, column: 46, scope: !2502)
!2506 = !DILocation(line: 292, column: 11, scope: !2502)
!2507 = !DILocation(line: 292, column: 16, scope: !2502)
!2508 = !DILocation(line: 292, column: 19, scope: !2502)
!2509 = !DILocation(line: 293, column: 11, scope: !2502)
!2510 = !DILocation(line: 293, column: 16, scope: !2502)
!2511 = !DILocation(line: 293, column: 19, scope: !2502)
!2512 = !DILocation(line: 291, column: 4, scope: !2502)
!2513 = !DILocation(line: 290, column: 3, scope: !2502)
!2514 = !DILocation(line: 290, column: 9, scope: !2502)
!2515 = !DILocation(line: 290, column: 17, scope: !2502)
!2516 = !DILocation(line: 290, column: 20, scope: !2502)
!2517 = !DILocation(line: 294, column: 14, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 294, column: 7)
!2519 = !DILocation(line: 294, column: 20, scope: !2518)
!2520 = !DILocation(line: 294, column: 28, scope: !2518)
!2521 = !DILocation(line: 294, column: 7, scope: !2518)
!2522 = !DILocation(line: 294, column: 7, scope: !2502)
!2523 = !DILocation(line: 295, column: 18, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 294, column: 33)
!2525 = !DILocation(line: 295, column: 24, scope: !2524)
!2526 = !DILocation(line: 295, column: 32, scope: !2524)
!2527 = !DILocation(line: 295, column: 10, scope: !2524)
!2528 = !DILocation(line: 295, column: 8, scope: !2524)
!2529 = !DILocation(line: 296, column: 4, scope: !2524)
!2530 = !DILocation(line: 298, column: 35, scope: !2502)
!2531 = !DILocation(line: 298, column: 40, scope: !2502)
!2532 = !DILocation(line: 298, column: 43, scope: !2502)
!2533 = !DILocation(line: 298, column: 21, scope: !2502)
!2534 = !DILocation(line: 298, column: 3, scope: !2502)
!2535 = !DILocation(line: 298, column: 16, scope: !2502)
!2536 = !DILocation(line: 298, column: 19, scope: !2502)
!2537 = !DILocation(line: 299, column: 2, scope: !2502)
!2538 = !DILocation(line: 289, column: 29, scope: !2497)
!2539 = !DILocation(line: 289, column: 2, scope: !2497)
!2540 = distinct !{!2540, !2500, !2541}
!2541 = !DILocation(line: 299, column: 2, scope: !2494)
!2542 = !DILocation(line: 301, column: 19, scope: !2446)
!2543 = !DILocation(line: 301, column: 2, scope: !2446)
!2544 = !DILocation(line: 301, column: 8, scope: !2446)
!2545 = !DILocation(line: 301, column: 17, scope: !2446)
!2546 = !DILocation(line: 302, column: 9, scope: !2446)
!2547 = !DILocation(line: 302, column: 2, scope: !2446)
!2548 = !DILabel(scope: !2446, name: "err_unreg", file: !3, line: 304)
!2549 = !DILocation(line: 304, column: 1, scope: !2446)
!2550 = !DILocation(line: 305, column: 37, scope: !2446)
!2551 = !DILocation(line: 305, column: 43, scope: !2446)
!2552 = !DILocation(line: 305, column: 2, scope: !2446)
!2553 = !DILocation(line: 306, column: 33, scope: !2446)
!2554 = !DILocation(line: 306, column: 47, scope: !2446)
!2555 = !DILocation(line: 306, column: 2, scope: !2446)
!2556 = !DILocation(line: 307, column: 17, scope: !2446)
!2557 = !DILocation(line: 307, column: 9, scope: !2446)
!2558 = !DILocation(line: 307, column: 2, scope: !2446)
!2559 = !DILocation(line: 308, column: 1, scope: !2446)
!2560 = distinct !DISubprogram(name: "IS_ERR", scope: !2561, file: !2561, line: 34, type: !2562, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2561 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!246, !1240}
!2564 = !DILocalVariable(name: "ptr", arg: 1, scope: !2560, file: !2561, line: 34, type: !1240)
!2565 = !DILocation(line: 34, column: 60, scope: !2560)
!2566 = !DILocation(line: 36, column: 9, scope: !2560)
!2567 = !DILocation(line: 36, column: 2, scope: !2560)
!2568 = distinct !DISubprogram(name: "PTR_ERR", scope: !2561, file: !2561, line: 29, type: !2569, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!65, !1240}
!2571 = !DILocalVariable(name: "ptr", arg: 1, scope: !2568, file: !2561, line: 29, type: !1240)
!2572 = !DILocation(line: 29, column: 61, scope: !2568)
!2573 = !DILocation(line: 31, column: 16, scope: !2568)
!2574 = !DILocation(line: 31, column: 9, scope: !2568)
!2575 = !DILocation(line: 31, column: 2, scope: !2568)
!2576 = distinct !DISubprogram(name: "plt_clk_register", scope: !3, file: !3, line: 160, type: !2577, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!66, !240, !97, !2241, !2067, !97}
!2579 = !DILocalVariable(name: "lock", arg: 1, scope: !2580, file: !2581, line: 327, type: !2585)
!2580 = distinct !DISubprogram(name: "spinlock_check", scope: !2581, file: !2581, line: 327, type: !2582, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2581 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!2586 = !DILocation(line: 327, column: 67, scope: !2580, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 181, column: 2, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 181, column: 2)
!2589 = !DILocalVariable(name: "pdev", arg: 1, scope: !2576, file: !3, line: 160, type: !240)
!2590 = !DILocation(line: 160, column: 65, scope: !2576)
!2591 = !DILocalVariable(name: "id", arg: 2, scope: !2576, file: !3, line: 160, type: !97)
!2592 = !DILocation(line: 160, column: 75, scope: !2576)
!2593 = !DILocalVariable(name: "pmc_data", arg: 3, scope: !2576, file: !3, line: 161, type: !2241)
!2594 = !DILocation(line: 161, column: 33, scope: !2576)
!2595 = !DILocalVariable(name: "parent_names", arg: 4, scope: !2576, file: !3, line: 162, type: !2067)
!2596 = !DILocation(line: 162, column: 19, scope: !2576)
!2597 = !DILocalVariable(name: "num_parents", arg: 5, scope: !2576, file: !3, line: 163, type: !97)
!2598 = !DILocation(line: 163, column: 10, scope: !2576)
!2599 = !DILocalVariable(name: "pclk", scope: !2576, file: !3, line: 165, type: !66)
!2600 = !DILocation(line: 165, column: 18, scope: !2576)
!2601 = !DILocalVariable(name: "init", scope: !2576, file: !3, line: 166, type: !82)
!2602 = !DILocation(line: 166, column: 23, scope: !2576)
!2603 = !DILocalVariable(name: "ret", scope: !2576, file: !3, line: 167, type: !97)
!2604 = !DILocation(line: 167, column: 6, scope: !2576)
!2605 = !DILocation(line: 169, column: 23, scope: !2576)
!2606 = !DILocation(line: 169, column: 29, scope: !2576)
!2607 = !DILocation(line: 169, column: 9, scope: !2576)
!2608 = !DILocation(line: 169, column: 7, scope: !2576)
!2609 = !DILocation(line: 170, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 170, column: 6)
!2611 = !DILocation(line: 170, column: 6, scope: !2576)
!2612 = !DILocation(line: 171, column: 10, scope: !2610)
!2613 = !DILocation(line: 171, column: 3, scope: !2610)
!2614 = !DILocation(line: 173, column: 65, scope: !2576)
!2615 = !DILocation(line: 173, column: 15, scope: !2576)
!2616 = !DILocation(line: 173, column: 7, scope: !2576)
!2617 = !DILocation(line: 173, column: 12, scope: !2576)
!2618 = !DILocation(line: 174, column: 7, scope: !2576)
!2619 = !DILocation(line: 174, column: 11, scope: !2576)
!2620 = !DILocation(line: 175, column: 7, scope: !2576)
!2621 = !DILocation(line: 175, column: 13, scope: !2576)
!2622 = !DILocation(line: 176, column: 22, scope: !2576)
!2623 = !DILocation(line: 176, column: 7, scope: !2576)
!2624 = !DILocation(line: 176, column: 20, scope: !2576)
!2625 = !DILocation(line: 177, column: 21, scope: !2576)
!2626 = !DILocation(line: 177, column: 7, scope: !2576)
!2627 = !DILocation(line: 177, column: 19, scope: !2576)
!2628 = !DILocation(line: 179, column: 2, scope: !2576)
!2629 = !DILocation(line: 179, column: 8, scope: !2576)
!2630 = !DILocation(line: 179, column: 11, scope: !2576)
!2631 = !DILocation(line: 179, column: 16, scope: !2576)
!2632 = !DILocation(line: 180, column: 14, scope: !2576)
!2633 = !DILocation(line: 180, column: 24, scope: !2576)
!2634 = !DILocation(line: 180, column: 29, scope: !2576)
!2635 = !DILocation(line: 180, column: 52, scope: !2576)
!2636 = !DILocation(line: 180, column: 55, scope: !2576)
!2637 = !DILocation(line: 180, column: 50, scope: !2576)
!2638 = !DILocation(line: 180, column: 2, scope: !2576)
!2639 = !DILocation(line: 180, column: 8, scope: !2576)
!2640 = !DILocation(line: 180, column: 12, scope: !2576)
!2641 = !DILocation(line: 181, column: 2, scope: !2576)
!2642 = !DILocation(line: 181, column: 2, scope: !2588)
!2643 = !DILocation(line: 329, column: 10, scope: !2580, inlinedAt: !2587)
!2644 = !DILocation(line: 329, column: 16, scope: !2580, inlinedAt: !2587)
!2645 = !DILocation(line: 188, column: 6, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 188, column: 6)
!2647 = !DILocation(line: 188, column: 16, scope: !2646)
!2648 = !DILocation(line: 188, column: 25, scope: !2646)
!2649 = !DILocation(line: 188, column: 48, scope: !2646)
!2650 = !DILocation(line: 188, column: 54, scope: !2646)
!2651 = !DILocation(line: 188, column: 28, scope: !2646)
!2652 = !DILocation(line: 188, column: 6, scope: !2576)
!2653 = !DILocation(line: 189, column: 8, scope: !2646)
!2654 = !DILocation(line: 189, column: 14, scope: !2646)
!2655 = !DILocation(line: 189, column: 3, scope: !2646)
!2656 = !DILocation(line: 191, column: 30, scope: !2576)
!2657 = !DILocation(line: 191, column: 36, scope: !2576)
!2658 = !DILocation(line: 191, column: 42, scope: !2576)
!2659 = !DILocation(line: 191, column: 48, scope: !2576)
!2660 = !DILocation(line: 191, column: 8, scope: !2576)
!2661 = !DILocation(line: 191, column: 6, scope: !2576)
!2662 = !DILocation(line: 192, column: 6, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 192, column: 6)
!2664 = !DILocation(line: 192, column: 6, scope: !2576)
!2665 = !DILocation(line: 193, column: 18, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 192, column: 11)
!2667 = !DILocation(line: 193, column: 10, scope: !2666)
!2668 = !DILocation(line: 193, column: 8, scope: !2666)
!2669 = !DILocation(line: 194, column: 3, scope: !2666)
!2670 = !DILocation(line: 197, column: 35, scope: !2576)
!2671 = !DILocation(line: 197, column: 41, scope: !2576)
!2672 = !DILocation(line: 197, column: 50, scope: !2576)
!2673 = !DILocation(line: 197, column: 17, scope: !2576)
!2674 = !DILocation(line: 197, column: 2, scope: !2576)
!2675 = !DILocation(line: 197, column: 8, scope: !2576)
!2676 = !DILocation(line: 197, column: 15, scope: !2576)
!2677 = !DILocation(line: 198, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 198, column: 6)
!2679 = !DILocation(line: 198, column: 13, scope: !2678)
!2680 = !DILocation(line: 198, column: 6, scope: !2576)
!2681 = !DILocation(line: 199, column: 10, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 198, column: 21)
!2683 = !DILocation(line: 199, column: 8, scope: !2682)
!2684 = !DILocation(line: 200, column: 3, scope: !2682)
!2685 = !DILabel(scope: !2576, name: "err_free_init", file: !3, line: 203)
!2686 = !DILocation(line: 203, column: 1, scope: !2576)
!2687 = !DILocation(line: 204, column: 13, scope: !2576)
!2688 = !DILocation(line: 204, column: 2, scope: !2576)
!2689 = !DILocation(line: 205, column: 9, scope: !2576)
!2690 = !DILocation(line: 205, column: 2, scope: !2576)
!2691 = !DILocation(line: 206, column: 1, scope: !2576)
!2692 = distinct !DISubprogram(name: "plt_clk_free_parent_names_loop", scope: !3, file: !3, line: 251, type: !2693, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2067, !7}
!2695 = !DILocalVariable(name: "parent_names", arg: 1, scope: !2692, file: !3, line: 251, type: !2067)
!2696 = !DILocation(line: 251, column: 57, scope: !2692)
!2697 = !DILocalVariable(name: "i", arg: 2, scope: !2692, file: !3, line: 252, type: !7)
!2698 = !DILocation(line: 252, column: 22, scope: !2692)
!2699 = !DILocation(line: 254, column: 2, scope: !2692)
!2700 = !DILocation(line: 254, column: 10, scope: !2692)
!2701 = !DILocation(line: 255, column: 15, scope: !2692)
!2702 = !DILocation(line: 255, column: 28, scope: !2692)
!2703 = !DILocation(line: 255, column: 3, scope: !2692)
!2704 = distinct !{!2704, !2699, !2705}
!2705 = !DILocation(line: 255, column: 30, scope: !2692)
!2706 = !DILocation(line: 256, column: 8, scope: !2692)
!2707 = !DILocation(line: 256, column: 2, scope: !2692)
!2708 = !DILocation(line: 257, column: 1, scope: !2692)
!2709 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !234, file: !234, line: 236, type: !2710, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !240, !63}
!2712 = !DILocalVariable(name: "pdev", arg: 1, scope: !2709, file: !234, line: 236, type: !240)
!2713 = !DILocation(line: 236, column: 65, scope: !2709)
!2714 = !DILocalVariable(name: "data", arg: 2, scope: !2709, file: !234, line: 237, type: !63)
!2715 = !DILocation(line: 237, column: 12, scope: !2709)
!2716 = !DILocation(line: 239, column: 19, scope: !2709)
!2717 = !DILocation(line: 239, column: 25, scope: !2709)
!2718 = !DILocation(line: 239, column: 30, scope: !2709)
!2719 = !DILocation(line: 239, column: 2, scope: !2709)
!2720 = !DILocation(line: 240, column: 1, scope: !2709)
!2721 = distinct !DISubprogram(name: "plt_clk_unregister_loop", scope: !3, file: !3, line: 259, type: !2722, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !2260, !7}
!2724 = !DILocalVariable(name: "data", arg: 1, scope: !2721, file: !3, line: 259, type: !2260)
!2725 = !DILocation(line: 259, column: 58, scope: !2721)
!2726 = !DILocalVariable(name: "i", arg: 2, scope: !2721, file: !3, line: 260, type: !7)
!2727 = !DILocation(line: 260, column: 22, scope: !2721)
!2728 = !DILocation(line: 262, column: 2, scope: !2721)
!2729 = !DILocation(line: 262, column: 10, scope: !2721)
!2730 = !DILocation(line: 263, column: 22, scope: !2721)
!2731 = !DILocation(line: 263, column: 28, scope: !2721)
!2732 = !DILocation(line: 263, column: 33, scope: !2721)
!2733 = !DILocation(line: 263, column: 3, scope: !2721)
!2734 = distinct !{!2734, !2728, !2735}
!2735 = !DILocation(line: 263, column: 35, scope: !2721)
!2736 = !DILocation(line: 264, column: 1, scope: !2721)
!2737 = distinct !DISubprogram(name: "plt_clk_unregister_parents", scope: !3, file: !3, line: 310, type: !2738, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !2260}
!2740 = !DILocalVariable(name: "data", arg: 1, scope: !2737, file: !3, line: 310, type: !2260)
!2741 = !DILocation(line: 310, column: 61, scope: !2737)
!2742 = !DILocation(line: 312, column: 37, scope: !2737)
!2743 = !DILocation(line: 312, column: 43, scope: !2737)
!2744 = !DILocation(line: 312, column: 49, scope: !2737)
!2745 = !DILocation(line: 312, column: 2, scope: !2737)
!2746 = !DILocation(line: 313, column: 1, scope: !2737)
!2747 = distinct !DISubprogram(name: "devm_kcalloc", scope: !30, file: !30, line: 229, type: !2748, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!63, !1708, !337, !337, !61}
!2750 = !DILocalVariable(name: "dev", arg: 1, scope: !2747, file: !30, line: 229, type: !1708)
!2751 = !DILocation(line: 229, column: 49, scope: !2747)
!2752 = !DILocalVariable(name: "n", arg: 2, scope: !2747, file: !30, line: 230, type: !337)
!2753 = !DILocation(line: 230, column: 13, scope: !2747)
!2754 = !DILocalVariable(name: "size", arg: 3, scope: !2747, file: !30, line: 230, type: !337)
!2755 = !DILocation(line: 230, column: 23, scope: !2747)
!2756 = !DILocalVariable(name: "flags", arg: 4, scope: !2747, file: !30, line: 230, type: !61)
!2757 = !DILocation(line: 230, column: 35, scope: !2747)
!2758 = !DILocation(line: 232, column: 28, scope: !2747)
!2759 = !DILocation(line: 232, column: 33, scope: !2747)
!2760 = !DILocation(line: 232, column: 36, scope: !2747)
!2761 = !DILocation(line: 232, column: 42, scope: !2747)
!2762 = !DILocation(line: 232, column: 48, scope: !2747)
!2763 = !DILocation(line: 232, column: 9, scope: !2747)
!2764 = !DILocation(line: 232, column: 2, scope: !2747)
!2765 = distinct !DISubprogram(name: "ERR_PTR", scope: !2561, file: !2561, line: 24, type: !2766, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!63, !65}
!2768 = !DILocalVariable(name: "error", arg: 1, scope: !2765, file: !2561, line: 24, type: !65)
!2769 = !DILocation(line: 24, column: 48, scope: !2765)
!2770 = !DILocation(line: 26, column: 18, scope: !2765)
!2771 = !DILocation(line: 26, column: 9, scope: !2765)
!2772 = !DILocation(line: 26, column: 2, scope: !2765)
!2773 = distinct !DISubprogram(name: "kcalloc", scope: !51, file: !51, line: 601, type: !2774, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!63, !337, !337, !61}
!2776 = !DILocalVariable(name: "n", arg: 1, scope: !2773, file: !51, line: 601, type: !337)
!2777 = !DILocation(line: 601, column: 36, scope: !2773)
!2778 = !DILocalVariable(name: "size", arg: 2, scope: !2773, file: !51, line: 601, type: !337)
!2779 = !DILocation(line: 601, column: 46, scope: !2773)
!2780 = !DILocalVariable(name: "flags", arg: 3, scope: !2773, file: !51, line: 601, type: !61)
!2781 = !DILocation(line: 601, column: 58, scope: !2773)
!2782 = !DILocation(line: 603, column: 23, scope: !2773)
!2783 = !DILocation(line: 603, column: 26, scope: !2773)
!2784 = !DILocation(line: 603, column: 32, scope: !2773)
!2785 = !DILocation(line: 603, column: 38, scope: !2773)
!2786 = !DILocation(line: 603, column: 9, scope: !2773)
!2787 = !DILocation(line: 603, column: 2, scope: !2773)
!2788 = distinct !DISubprogram(name: "plt_clk_register_fixed_rate", scope: !3, file: !3, line: 213, type: !2789, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!2265, !240, !85, !85, !64}
!2791 = !DILocalVariable(name: "pdev", arg: 1, scope: !2788, file: !3, line: 213, type: !240)
!2792 = !DILocation(line: 213, column: 82, scope: !2788)
!2793 = !DILocalVariable(name: "name", arg: 2, scope: !2788, file: !3, line: 214, type: !85)
!2794 = !DILocation(line: 214, column: 20, scope: !2788)
!2795 = !DILocalVariable(name: "parent_name", arg: 3, scope: !2788, file: !3, line: 215, type: !85)
!2796 = !DILocation(line: 215, column: 20, scope: !2788)
!2797 = !DILocalVariable(name: "fixed_rate", arg: 4, scope: !2788, file: !3, line: 216, type: !64)
!2798 = !DILocation(line: 216, column: 22, scope: !2788)
!2799 = !DILocalVariable(name: "pclk", scope: !2788, file: !3, line: 218, type: !2265)
!2800 = !DILocation(line: 218, column: 24, scope: !2788)
!2801 = !DILocation(line: 220, column: 23, scope: !2788)
!2802 = !DILocation(line: 220, column: 29, scope: !2788)
!2803 = !DILocation(line: 220, column: 9, scope: !2788)
!2804 = !DILocation(line: 220, column: 7, scope: !2788)
!2805 = !DILocation(line: 221, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 221, column: 6)
!2807 = !DILocation(line: 221, column: 6, scope: !2788)
!2808 = !DILocation(line: 222, column: 10, scope: !2806)
!2809 = !DILocation(line: 222, column: 3, scope: !2806)
!2810 = !DILocation(line: 224, column: 14, scope: !2788)
!2811 = !DILocation(line: 224, column: 2, scope: !2788)
!2812 = !DILocation(line: 224, column: 8, scope: !2788)
!2813 = !DILocation(line: 224, column: 12, scope: !2788)
!2814 = !DILocation(line: 226, column: 13, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 226, column: 6)
!2816 = !DILocation(line: 226, column: 19, scope: !2815)
!2817 = !DILocation(line: 226, column: 6, scope: !2815)
!2818 = !DILocation(line: 226, column: 6, scope: !2788)
!2819 = !DILocation(line: 227, column: 19, scope: !2815)
!2820 = !DILocation(line: 227, column: 25, scope: !2815)
!2821 = !DILocation(line: 227, column: 10, scope: !2815)
!2822 = !DILocation(line: 227, column: 3, scope: !2815)
!2823 = !DILocation(line: 229, column: 34, scope: !2788)
!2824 = !DILocation(line: 229, column: 40, scope: !2788)
!2825 = !DILocation(line: 229, column: 45, scope: !2788)
!2826 = !DILocation(line: 229, column: 17, scope: !2788)
!2827 = !DILocation(line: 229, column: 2, scope: !2788)
!2828 = !DILocation(line: 229, column: 8, scope: !2788)
!2829 = !DILocation(line: 229, column: 15, scope: !2788)
!2830 = !DILocation(line: 230, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 230, column: 6)
!2832 = !DILocation(line: 230, column: 13, scope: !2831)
!2833 = !DILocation(line: 230, column: 6, scope: !2788)
!2834 = !DILocation(line: 231, column: 32, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 230, column: 21)
!2836 = !DILocation(line: 231, column: 38, scope: !2835)
!2837 = !DILocation(line: 231, column: 3, scope: !2835)
!2838 = !DILocation(line: 232, column: 10, scope: !2835)
!2839 = !DILocation(line: 232, column: 3, scope: !2835)
!2840 = !DILocation(line: 235, column: 9, scope: !2788)
!2841 = !DILocation(line: 235, column: 2, scope: !2788)
!2842 = !DILocation(line: 236, column: 1, scope: !2788)
!2843 = distinct !DISubprogram(name: "plt_clk_unregister_fixed_rate_loop", scope: !3, file: !3, line: 244, type: !2722, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2844 = !DILocalVariable(name: "data", arg: 1, scope: !2843, file: !3, line: 244, type: !2260)
!2845 = !DILocation(line: 244, column: 69, scope: !2843)
!2846 = !DILocalVariable(name: "i", arg: 2, scope: !2843, file: !3, line: 245, type: !7)
!2847 = !DILocation(line: 245, column: 26, scope: !2843)
!2848 = !DILocation(line: 247, column: 2, scope: !2843)
!2849 = !DILocation(line: 247, column: 10, scope: !2843)
!2850 = !DILocation(line: 248, column: 33, scope: !2843)
!2851 = !DILocation(line: 248, column: 39, scope: !2843)
!2852 = !DILocation(line: 248, column: 47, scope: !2843)
!2853 = !DILocation(line: 248, column: 3, scope: !2843)
!2854 = distinct !{!2854, !2848, !2855}
!2855 = !DILocation(line: 248, column: 49, scope: !2843)
!2856 = !DILocation(line: 249, column: 1, scope: !2843)
!2857 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !30, file: !30, line: 219, type: !2748, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2858 = !DILocalVariable(name: "dev", arg: 1, scope: !2857, file: !30, line: 219, type: !1708)
!2859 = !DILocation(line: 219, column: 55, scope: !2857)
!2860 = !DILocalVariable(name: "n", arg: 2, scope: !2857, file: !30, line: 220, type: !337)
!2861 = !DILocation(line: 220, column: 19, scope: !2857)
!2862 = !DILocalVariable(name: "size", arg: 3, scope: !2857, file: !30, line: 220, type: !337)
!2863 = !DILocation(line: 220, column: 29, scope: !2857)
!2864 = !DILocalVariable(name: "flags", arg: 4, scope: !2857, file: !30, line: 220, type: !61)
!2865 = !DILocation(line: 220, column: 41, scope: !2857)
!2866 = !DILocalVariable(name: "bytes", scope: !2857, file: !30, line: 222, type: !337)
!2867 = !DILocation(line: 222, column: 9, scope: !2857)
!2868 = !DILocalVariable(name: "__a", scope: !2869, file: !30, line: 224, type: !337)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !30, line: 224, column: 6)
!2870 = distinct !DILexicalBlock(scope: !2857, file: !30, line: 224, column: 6)
!2871 = !DILocation(line: 224, column: 6, scope: !2869)
!2872 = !DILocalVariable(name: "__b", scope: !2869, file: !30, line: 224, type: !337)
!2873 = !DILocalVariable(name: "__d", scope: !2869, file: !30, line: 224, type: !2874)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!2875 = !DILocation(line: 224, column: 6, scope: !2870)
!2876 = !DILocation(line: 224, column: 6, scope: !2857)
!2877 = !DILocation(line: 225, column: 3, scope: !2870)
!2878 = !DILocation(line: 227, column: 22, scope: !2857)
!2879 = !DILocation(line: 227, column: 27, scope: !2857)
!2880 = !DILocation(line: 227, column: 34, scope: !2857)
!2881 = !DILocation(line: 227, column: 9, scope: !2857)
!2882 = !DILocation(line: 227, column: 2, scope: !2857)
!2883 = !DILocation(line: 228, column: 1, scope: !2857)
!2884 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2885, file: !2885, line: 52, type: !2886, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2885 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!246, !246}
!2888 = !DILocalVariable(name: "overflow", arg: 1, scope: !2884, file: !2885, line: 52, type: !246)
!2889 = !DILocation(line: 52, column: 60, scope: !2884)
!2890 = !DILocation(line: 54, column: 9, scope: !2884)
!2891 = !DILocation(line: 54, column: 2, scope: !2884)
!2892 = distinct !DISubprogram(name: "kmalloc_array", scope: !51, file: !51, line: 584, type: !2774, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2893 = !DILocalVariable(name: "s", arg: 1, scope: !2894, file: !51, line: 445, type: !1159)
!2894 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !51, file: !51, line: 445, type: !2895, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!63, !1159, !61, !337}
!2897 = !DILocation(line: 445, column: 72, scope: !2894, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 552, column: 10, scope: !2899, inlinedAt: !2904)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !51, line: 540, column: 34)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !51, line: 540, column: 6)
!2901 = distinct !DISubprogram(name: "kmalloc", scope: !51, file: !51, line: 538, type: !2902, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!63, !337, !61}
!2904 = distinct !DILocation(line: 591, column: 10, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2892, file: !51, line: 590, column: 6)
!2906 = !DILocalVariable(name: "flags", arg: 2, scope: !2894, file: !51, line: 446, type: !61)
!2907 = !DILocation(line: 446, column: 9, scope: !2894, inlinedAt: !2898)
!2908 = !DILocalVariable(name: "size", arg: 3, scope: !2894, file: !51, line: 446, type: !337)
!2909 = !DILocation(line: 446, column: 23, scope: !2894, inlinedAt: !2898)
!2910 = !DILocalVariable(name: "ret", scope: !2894, file: !51, line: 448, type: !63)
!2911 = !DILocation(line: 448, column: 8, scope: !2894, inlinedAt: !2898)
!2912 = !DILocalVariable(name: "flags", arg: 1, scope: !2913, file: !51, line: 318, type: !61)
!2913 = distinct !DISubprogram(name: "kmalloc_type", scope: !51, file: !51, line: 318, type: !2914, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!50, !61}
!2916 = !DILocation(line: 318, column: 67, scope: !2913, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 553, column: 20, scope: !2899, inlinedAt: !2904)
!2918 = !DILocalVariable(name: "size", arg: 1, scope: !2919, file: !51, line: 346, type: !337)
!2919 = distinct !DISubprogram(name: "kmalloc_index", scope: !51, file: !51, line: 346, type: !2920, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!7, !337}
!2922 = !DILocation(line: 346, column: 58, scope: !2919, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 547, column: 11, scope: !2899, inlinedAt: !2904)
!2924 = !DILocalVariable(name: "size", arg: 1, scope: !2925, file: !51, line: 472, type: !337)
!2925 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !51, file: !51, line: 472, type: !2926, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!63, !337, !61, !7}
!2928 = !DILocation(line: 472, column: 28, scope: !2925, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 481, column: 9, scope: !2930, inlinedAt: !2931)
!2930 = distinct !DISubprogram(name: "kmalloc_large", scope: !51, file: !51, line: 478, type: !2902, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!2931 = distinct !DILocation(line: 545, column: 11, scope: !2932, inlinedAt: !2904)
!2932 = distinct !DILexicalBlock(scope: !2899, file: !51, line: 544, column: 7)
!2933 = !DILocalVariable(name: "flags", arg: 2, scope: !2925, file: !51, line: 472, type: !61)
!2934 = !DILocation(line: 472, column: 40, scope: !2925, inlinedAt: !2929)
!2935 = !DILocalVariable(name: "order", arg: 3, scope: !2925, file: !51, line: 472, type: !7)
!2936 = !DILocation(line: 472, column: 60, scope: !2925, inlinedAt: !2929)
!2937 = !DILocalVariable(name: "size", arg: 1, scope: !2930, file: !51, line: 478, type: !337)
!2938 = !DILocation(line: 478, column: 51, scope: !2930, inlinedAt: !2931)
!2939 = !DILocalVariable(name: "flags", arg: 2, scope: !2930, file: !51, line: 478, type: !61)
!2940 = !DILocation(line: 478, column: 63, scope: !2930, inlinedAt: !2931)
!2941 = !DILocalVariable(name: "order", scope: !2930, file: !51, line: 480, type: !7)
!2942 = !DILocation(line: 480, column: 15, scope: !2930, inlinedAt: !2931)
!2943 = !DILocalVariable(name: "size", arg: 1, scope: !2901, file: !51, line: 538, type: !337)
!2944 = !DILocation(line: 538, column: 45, scope: !2901, inlinedAt: !2904)
!2945 = !DILocalVariable(name: "flags", arg: 2, scope: !2901, file: !51, line: 538, type: !61)
!2946 = !DILocation(line: 538, column: 57, scope: !2901, inlinedAt: !2904)
!2947 = !DILocalVariable(name: "index", scope: !2899, file: !51, line: 542, type: !7)
!2948 = !DILocation(line: 542, column: 16, scope: !2899, inlinedAt: !2904)
!2949 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !51, line: 584, type: !337)
!2950 = !DILocation(line: 584, column: 42, scope: !2892)
!2951 = !DILocalVariable(name: "size", arg: 2, scope: !2892, file: !51, line: 584, type: !337)
!2952 = !DILocation(line: 584, column: 52, scope: !2892)
!2953 = !DILocalVariable(name: "flags", arg: 3, scope: !2892, file: !51, line: 584, type: !61)
!2954 = !DILocation(line: 584, column: 64, scope: !2892)
!2955 = !DILocalVariable(name: "bytes", scope: !2892, file: !51, line: 586, type: !337)
!2956 = !DILocation(line: 586, column: 9, scope: !2892)
!2957 = !DILocalVariable(name: "__a", scope: !2958, file: !51, line: 588, type: !337)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !51, line: 588, column: 6)
!2959 = distinct !DILexicalBlock(scope: !2892, file: !51, line: 588, column: 6)
!2960 = !DILocation(line: 588, column: 6, scope: !2958)
!2961 = !DILocalVariable(name: "__b", scope: !2958, file: !51, line: 588, type: !337)
!2962 = !DILocalVariable(name: "__d", scope: !2958, file: !51, line: 588, type: !2874)
!2963 = !DILocation(line: 588, column: 6, scope: !2959)
!2964 = !DILocation(line: 588, column: 6, scope: !2892)
!2965 = !DILocation(line: 589, column: 3, scope: !2959)
!2966 = !DILocation(line: 590, column: 27, scope: !2905)
!2967 = !DILocation(line: 590, column: 6, scope: !2905)
!2968 = !DILocation(line: 590, column: 30, scope: !2905)
!2969 = !DILocation(line: 590, column: 54, scope: !2905)
!2970 = !DILocation(line: 590, column: 33, scope: !2905)
!2971 = !DILocation(line: 590, column: 6, scope: !2892)
!2972 = !DILocation(line: 591, column: 18, scope: !2905)
!2973 = !DILocation(line: 591, column: 25, scope: !2905)
!2974 = !DILocation(line: 540, column: 27, scope: !2900, inlinedAt: !2904)
!2975 = !DILocation(line: 540, column: 6, scope: !2900, inlinedAt: !2904)
!2976 = !DILocation(line: 540, column: 6, scope: !2901, inlinedAt: !2904)
!2977 = !DILocation(line: 544, column: 7, scope: !2932, inlinedAt: !2904)
!2978 = !DILocation(line: 544, column: 12, scope: !2932, inlinedAt: !2904)
!2979 = !DILocation(line: 544, column: 7, scope: !2899, inlinedAt: !2904)
!2980 = !DILocation(line: 545, column: 25, scope: !2932, inlinedAt: !2904)
!2981 = !DILocation(line: 545, column: 31, scope: !2932, inlinedAt: !2904)
!2982 = !DILocation(line: 480, column: 33, scope: !2930, inlinedAt: !2931)
!2983 = !DILocation(line: 480, column: 23, scope: !2930, inlinedAt: !2931)
!2984 = !DILocation(line: 481, column: 29, scope: !2930, inlinedAt: !2931)
!2985 = !DILocation(line: 481, column: 35, scope: !2930, inlinedAt: !2931)
!2986 = !DILocation(line: 481, column: 42, scope: !2930, inlinedAt: !2931)
!2987 = !DILocation(line: 474, column: 23, scope: !2925, inlinedAt: !2929)
!2988 = !DILocation(line: 474, column: 29, scope: !2925, inlinedAt: !2929)
!2989 = !DILocation(line: 474, column: 36, scope: !2925, inlinedAt: !2929)
!2990 = !DILocation(line: 474, column: 9, scope: !2925, inlinedAt: !2929)
!2991 = !DILocation(line: 545, column: 4, scope: !2932, inlinedAt: !2904)
!2992 = !DILocation(line: 547, column: 25, scope: !2899, inlinedAt: !2904)
!2993 = !DILocation(line: 348, column: 7, scope: !2994, inlinedAt: !2923)
!2994 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 348, column: 6)
!2995 = !DILocation(line: 348, column: 6, scope: !2919, inlinedAt: !2923)
!2996 = !DILocation(line: 349, column: 3, scope: !2994, inlinedAt: !2923)
!2997 = !DILocation(line: 351, column: 6, scope: !2998, inlinedAt: !2923)
!2998 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 351, column: 6)
!2999 = !DILocation(line: 351, column: 11, scope: !2998, inlinedAt: !2923)
!3000 = !DILocation(line: 351, column: 6, scope: !2919, inlinedAt: !2923)
!3001 = !DILocation(line: 352, column: 3, scope: !2998, inlinedAt: !2923)
!3002 = !DILocation(line: 354, column: 32, scope: !3003, inlinedAt: !2923)
!3003 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 354, column: 6)
!3004 = !DILocation(line: 354, column: 37, scope: !3003, inlinedAt: !2923)
!3005 = !DILocation(line: 354, column: 42, scope: !3003, inlinedAt: !2923)
!3006 = !DILocation(line: 354, column: 45, scope: !3003, inlinedAt: !2923)
!3007 = !DILocation(line: 354, column: 50, scope: !3003, inlinedAt: !2923)
!3008 = !DILocation(line: 354, column: 6, scope: !2919, inlinedAt: !2923)
!3009 = !DILocation(line: 355, column: 3, scope: !3003, inlinedAt: !2923)
!3010 = !DILocation(line: 356, column: 32, scope: !3011, inlinedAt: !2923)
!3011 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 356, column: 6)
!3012 = !DILocation(line: 356, column: 37, scope: !3011, inlinedAt: !2923)
!3013 = !DILocation(line: 356, column: 43, scope: !3011, inlinedAt: !2923)
!3014 = !DILocation(line: 356, column: 46, scope: !3011, inlinedAt: !2923)
!3015 = !DILocation(line: 356, column: 51, scope: !3011, inlinedAt: !2923)
!3016 = !DILocation(line: 356, column: 6, scope: !2919, inlinedAt: !2923)
!3017 = !DILocation(line: 357, column: 3, scope: !3011, inlinedAt: !2923)
!3018 = !DILocation(line: 358, column: 6, scope: !3019, inlinedAt: !2923)
!3019 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 358, column: 6)
!3020 = !DILocation(line: 358, column: 11, scope: !3019, inlinedAt: !2923)
!3021 = !DILocation(line: 358, column: 6, scope: !2919, inlinedAt: !2923)
!3022 = !DILocation(line: 358, column: 26, scope: !3019, inlinedAt: !2923)
!3023 = !DILocation(line: 359, column: 6, scope: !3024, inlinedAt: !2923)
!3024 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 359, column: 6)
!3025 = !DILocation(line: 359, column: 11, scope: !3024, inlinedAt: !2923)
!3026 = !DILocation(line: 359, column: 6, scope: !2919, inlinedAt: !2923)
!3027 = !DILocation(line: 359, column: 26, scope: !3024, inlinedAt: !2923)
!3028 = !DILocation(line: 360, column: 6, scope: !3029, inlinedAt: !2923)
!3029 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 360, column: 6)
!3030 = !DILocation(line: 360, column: 11, scope: !3029, inlinedAt: !2923)
!3031 = !DILocation(line: 360, column: 6, scope: !2919, inlinedAt: !2923)
!3032 = !DILocation(line: 360, column: 26, scope: !3029, inlinedAt: !2923)
!3033 = !DILocation(line: 361, column: 6, scope: !3034, inlinedAt: !2923)
!3034 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 361, column: 6)
!3035 = !DILocation(line: 361, column: 11, scope: !3034, inlinedAt: !2923)
!3036 = !DILocation(line: 361, column: 6, scope: !2919, inlinedAt: !2923)
!3037 = !DILocation(line: 361, column: 26, scope: !3034, inlinedAt: !2923)
!3038 = !DILocation(line: 362, column: 6, scope: !3039, inlinedAt: !2923)
!3039 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 362, column: 6)
!3040 = !DILocation(line: 362, column: 11, scope: !3039, inlinedAt: !2923)
!3041 = !DILocation(line: 362, column: 6, scope: !2919, inlinedAt: !2923)
!3042 = !DILocation(line: 362, column: 26, scope: !3039, inlinedAt: !2923)
!3043 = !DILocation(line: 363, column: 6, scope: !3044, inlinedAt: !2923)
!3044 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 363, column: 6)
!3045 = !DILocation(line: 363, column: 11, scope: !3044, inlinedAt: !2923)
!3046 = !DILocation(line: 363, column: 6, scope: !2919, inlinedAt: !2923)
!3047 = !DILocation(line: 363, column: 26, scope: !3044, inlinedAt: !2923)
!3048 = !DILocation(line: 364, column: 6, scope: !3049, inlinedAt: !2923)
!3049 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 364, column: 6)
!3050 = !DILocation(line: 364, column: 11, scope: !3049, inlinedAt: !2923)
!3051 = !DILocation(line: 364, column: 6, scope: !2919, inlinedAt: !2923)
!3052 = !DILocation(line: 364, column: 26, scope: !3049, inlinedAt: !2923)
!3053 = !DILocation(line: 365, column: 6, scope: !3054, inlinedAt: !2923)
!3054 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 365, column: 6)
!3055 = !DILocation(line: 365, column: 11, scope: !3054, inlinedAt: !2923)
!3056 = !DILocation(line: 365, column: 6, scope: !2919, inlinedAt: !2923)
!3057 = !DILocation(line: 365, column: 26, scope: !3054, inlinedAt: !2923)
!3058 = !DILocation(line: 366, column: 6, scope: !3059, inlinedAt: !2923)
!3059 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 366, column: 6)
!3060 = !DILocation(line: 366, column: 11, scope: !3059, inlinedAt: !2923)
!3061 = !DILocation(line: 366, column: 6, scope: !2919, inlinedAt: !2923)
!3062 = !DILocation(line: 366, column: 26, scope: !3059, inlinedAt: !2923)
!3063 = !DILocation(line: 367, column: 6, scope: !3064, inlinedAt: !2923)
!3064 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 367, column: 6)
!3065 = !DILocation(line: 367, column: 11, scope: !3064, inlinedAt: !2923)
!3066 = !DILocation(line: 367, column: 6, scope: !2919, inlinedAt: !2923)
!3067 = !DILocation(line: 367, column: 26, scope: !3064, inlinedAt: !2923)
!3068 = !DILocation(line: 368, column: 6, scope: !3069, inlinedAt: !2923)
!3069 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 368, column: 6)
!3070 = !DILocation(line: 368, column: 11, scope: !3069, inlinedAt: !2923)
!3071 = !DILocation(line: 368, column: 6, scope: !2919, inlinedAt: !2923)
!3072 = !DILocation(line: 368, column: 26, scope: !3069, inlinedAt: !2923)
!3073 = !DILocation(line: 369, column: 6, scope: !3074, inlinedAt: !2923)
!3074 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 369, column: 6)
!3075 = !DILocation(line: 369, column: 11, scope: !3074, inlinedAt: !2923)
!3076 = !DILocation(line: 369, column: 6, scope: !2919, inlinedAt: !2923)
!3077 = !DILocation(line: 369, column: 26, scope: !3074, inlinedAt: !2923)
!3078 = !DILocation(line: 370, column: 6, scope: !3079, inlinedAt: !2923)
!3079 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 370, column: 6)
!3080 = !DILocation(line: 370, column: 11, scope: !3079, inlinedAt: !2923)
!3081 = !DILocation(line: 370, column: 6, scope: !2919, inlinedAt: !2923)
!3082 = !DILocation(line: 370, column: 26, scope: !3079, inlinedAt: !2923)
!3083 = !DILocation(line: 371, column: 6, scope: !3084, inlinedAt: !2923)
!3084 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 371, column: 6)
!3085 = !DILocation(line: 371, column: 11, scope: !3084, inlinedAt: !2923)
!3086 = !DILocation(line: 371, column: 6, scope: !2919, inlinedAt: !2923)
!3087 = !DILocation(line: 371, column: 26, scope: !3084, inlinedAt: !2923)
!3088 = !DILocation(line: 372, column: 6, scope: !3089, inlinedAt: !2923)
!3089 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 372, column: 6)
!3090 = !DILocation(line: 372, column: 11, scope: !3089, inlinedAt: !2923)
!3091 = !DILocation(line: 372, column: 6, scope: !2919, inlinedAt: !2923)
!3092 = !DILocation(line: 372, column: 26, scope: !3089, inlinedAt: !2923)
!3093 = !DILocation(line: 373, column: 6, scope: !3094, inlinedAt: !2923)
!3094 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 373, column: 6)
!3095 = !DILocation(line: 373, column: 11, scope: !3094, inlinedAt: !2923)
!3096 = !DILocation(line: 373, column: 6, scope: !2919, inlinedAt: !2923)
!3097 = !DILocation(line: 373, column: 26, scope: !3094, inlinedAt: !2923)
!3098 = !DILocation(line: 374, column: 6, scope: !3099, inlinedAt: !2923)
!3099 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 374, column: 6)
!3100 = !DILocation(line: 374, column: 11, scope: !3099, inlinedAt: !2923)
!3101 = !DILocation(line: 374, column: 6, scope: !2919, inlinedAt: !2923)
!3102 = !DILocation(line: 374, column: 26, scope: !3099, inlinedAt: !2923)
!3103 = !DILocation(line: 375, column: 6, scope: !3104, inlinedAt: !2923)
!3104 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 375, column: 6)
!3105 = !DILocation(line: 375, column: 11, scope: !3104, inlinedAt: !2923)
!3106 = !DILocation(line: 375, column: 6, scope: !2919, inlinedAt: !2923)
!3107 = !DILocation(line: 375, column: 27, scope: !3104, inlinedAt: !2923)
!3108 = !DILocation(line: 376, column: 6, scope: !3109, inlinedAt: !2923)
!3109 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 376, column: 6)
!3110 = !DILocation(line: 376, column: 11, scope: !3109, inlinedAt: !2923)
!3111 = !DILocation(line: 376, column: 6, scope: !2919, inlinedAt: !2923)
!3112 = !DILocation(line: 376, column: 32, scope: !3109, inlinedAt: !2923)
!3113 = !DILocation(line: 377, column: 6, scope: !3114, inlinedAt: !2923)
!3114 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 377, column: 6)
!3115 = !DILocation(line: 377, column: 11, scope: !3114, inlinedAt: !2923)
!3116 = !DILocation(line: 377, column: 6, scope: !2919, inlinedAt: !2923)
!3117 = !DILocation(line: 377, column: 32, scope: !3114, inlinedAt: !2923)
!3118 = !DILocation(line: 378, column: 6, scope: !3119, inlinedAt: !2923)
!3119 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 378, column: 6)
!3120 = !DILocation(line: 378, column: 11, scope: !3119, inlinedAt: !2923)
!3121 = !DILocation(line: 378, column: 6, scope: !2919, inlinedAt: !2923)
!3122 = !DILocation(line: 378, column: 32, scope: !3119, inlinedAt: !2923)
!3123 = !DILocation(line: 379, column: 6, scope: !3124, inlinedAt: !2923)
!3124 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 379, column: 6)
!3125 = !DILocation(line: 379, column: 11, scope: !3124, inlinedAt: !2923)
!3126 = !DILocation(line: 379, column: 6, scope: !2919, inlinedAt: !2923)
!3127 = !DILocation(line: 379, column: 33, scope: !3124, inlinedAt: !2923)
!3128 = !DILocation(line: 380, column: 6, scope: !3129, inlinedAt: !2923)
!3129 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 380, column: 6)
!3130 = !DILocation(line: 380, column: 11, scope: !3129, inlinedAt: !2923)
!3131 = !DILocation(line: 380, column: 6, scope: !2919, inlinedAt: !2923)
!3132 = !DILocation(line: 380, column: 33, scope: !3129, inlinedAt: !2923)
!3133 = !DILocation(line: 381, column: 6, scope: !3134, inlinedAt: !2923)
!3134 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 381, column: 6)
!3135 = !DILocation(line: 381, column: 11, scope: !3134, inlinedAt: !2923)
!3136 = !DILocation(line: 381, column: 6, scope: !2919, inlinedAt: !2923)
!3137 = !DILocation(line: 381, column: 33, scope: !3134, inlinedAt: !2923)
!3138 = !DILocation(line: 382, column: 2, scope: !3139, inlinedAt: !2923)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !51, line: 382, column: 2)
!3140 = distinct !DILexicalBlock(scope: !2919, file: !51, line: 382, column: 2)
!3141 = !{i32 -2144244159, i32 -2144244130, i32 -2144244084, i32 -2144244026, i32 -2144243972, i32 -2144243918, i32 -2144243863, i32 -2144243832}
!3142 = !DILocation(line: 382, column: 2, scope: !3143, inlinedAt: !2923)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !51, line: 382, column: 2)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !51, line: 382, column: 2)
!3145 = !{i32 -2144239328, i32 -2144239321, i32 -2144239267, i32 -2144239236, i32 -2144239206}
!3146 = !DILocation(line: 382, column: 2, scope: !3144, inlinedAt: !2923)
!3147 = !DILocation(line: 386, column: 1, scope: !2919, inlinedAt: !2923)
!3148 = !DILocation(line: 547, column: 9, scope: !2899, inlinedAt: !2904)
!3149 = !DILocation(line: 549, column: 8, scope: !3150, inlinedAt: !2904)
!3150 = distinct !DILexicalBlock(scope: !2899, file: !51, line: 549, column: 7)
!3151 = !DILocation(line: 549, column: 7, scope: !2899, inlinedAt: !2904)
!3152 = !DILocation(line: 550, column: 4, scope: !3150, inlinedAt: !2904)
!3153 = !DILocation(line: 553, column: 33, scope: !2899, inlinedAt: !2904)
!3154 = !DILocation(line: 325, column: 6, scope: !3155, inlinedAt: !2917)
!3155 = distinct !DILexicalBlock(scope: !2913, file: !51, line: 325, column: 6)
!3156 = !DILocation(line: 325, column: 6, scope: !2913, inlinedAt: !2917)
!3157 = !DILocation(line: 326, column: 3, scope: !3155, inlinedAt: !2917)
!3158 = !DILocation(line: 332, column: 9, scope: !2913, inlinedAt: !2917)
!3159 = !DILocation(line: 332, column: 15, scope: !2913, inlinedAt: !2917)
!3160 = !DILocation(line: 332, column: 2, scope: !2913, inlinedAt: !2917)
!3161 = !DILocation(line: 336, column: 1, scope: !2913, inlinedAt: !2917)
!3162 = !DILocation(line: 553, column: 5, scope: !2899, inlinedAt: !2904)
!3163 = !DILocation(line: 553, column: 41, scope: !2899, inlinedAt: !2904)
!3164 = !DILocation(line: 554, column: 5, scope: !2899, inlinedAt: !2904)
!3165 = !DILocation(line: 554, column: 12, scope: !2899, inlinedAt: !2904)
!3166 = !DILocation(line: 448, column: 31, scope: !2894, inlinedAt: !2898)
!3167 = !DILocation(line: 448, column: 34, scope: !2894, inlinedAt: !2898)
!3168 = !DILocation(line: 448, column: 14, scope: !2894, inlinedAt: !2898)
!3169 = !DILocation(line: 450, column: 22, scope: !2894, inlinedAt: !2898)
!3170 = !DILocation(line: 450, column: 25, scope: !2894, inlinedAt: !2898)
!3171 = !DILocation(line: 450, column: 30, scope: !2894, inlinedAt: !2898)
!3172 = !DILocation(line: 450, column: 36, scope: !2894, inlinedAt: !2898)
!3173 = !DILocation(line: 450, column: 8, scope: !2894, inlinedAt: !2898)
!3174 = !DILocation(line: 450, column: 6, scope: !2894, inlinedAt: !2898)
!3175 = !DILocation(line: 451, column: 9, scope: !2894, inlinedAt: !2898)
!3176 = !DILocation(line: 552, column: 3, scope: !2899, inlinedAt: !2904)
!3177 = !DILocation(line: 557, column: 19, scope: !2901, inlinedAt: !2904)
!3178 = !DILocation(line: 557, column: 25, scope: !2901, inlinedAt: !2904)
!3179 = !DILocation(line: 557, column: 9, scope: !2901, inlinedAt: !2904)
!3180 = !DILocation(line: 557, column: 2, scope: !2901, inlinedAt: !2904)
!3181 = !DILocation(line: 558, column: 1, scope: !2901, inlinedAt: !2904)
!3182 = !DILocation(line: 591, column: 3, scope: !2905)
!3183 = !DILocation(line: 592, column: 19, scope: !2892)
!3184 = !DILocation(line: 592, column: 26, scope: !2892)
!3185 = !DILocation(line: 592, column: 9, scope: !2892)
!3186 = !DILocation(line: 592, column: 2, scope: !2892)
!3187 = !DILocation(line: 593, column: 1, scope: !2892)
!3188 = distinct !DISubprogram(name: "get_order", scope: !3189, file: !3189, line: 29, type: !3190, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3189 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!97, !64}
!3192 = !DILocalVariable(name: "x", arg: 1, scope: !3193, file: !3194, line: 366, type: !409)
!3193 = distinct !DISubprogram(name: "fls64", scope: !3194, file: !3194, line: 366, type: !3195, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3194 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!97, !409}
!3197 = !DILocation(line: 366, column: 40, scope: !3193, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 46, column: 9, scope: !3188)
!3199 = !DILocalVariable(name: "bitpos", scope: !3193, file: !3194, line: 368, type: !97)
!3200 = !DILocation(line: 368, column: 6, scope: !3193, inlinedAt: !3198)
!3201 = !DILocalVariable(name: "size", arg: 1, scope: !3188, file: !3189, line: 29, type: !64)
!3202 = !DILocation(line: 29, column: 63, scope: !3188)
!3203 = !DILocation(line: 31, column: 27, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3188, file: !3189, line: 31, column: 6)
!3205 = !DILocation(line: 31, column: 6, scope: !3204)
!3206 = !DILocation(line: 31, column: 6, scope: !3188)
!3207 = !DILocation(line: 32, column: 8, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !3189, line: 32, column: 7)
!3209 = distinct !DILexicalBlock(scope: !3204, file: !3189, line: 31, column: 34)
!3210 = !DILocation(line: 32, column: 7, scope: !3209)
!3211 = !DILocation(line: 33, column: 4, scope: !3208)
!3212 = !DILocation(line: 35, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3209, file: !3189, line: 35, column: 7)
!3214 = !DILocation(line: 35, column: 12, scope: !3213)
!3215 = !DILocation(line: 35, column: 7, scope: !3209)
!3216 = !DILocation(line: 36, column: 4, scope: !3213)
!3217 = !DILocation(line: 38, column: 10, scope: !3209)
!3218 = !DILocation(line: 38, column: 28, scope: !3209)
!3219 = !DILocation(line: 38, column: 41, scope: !3209)
!3220 = !DILocation(line: 38, column: 3, scope: !3209)
!3221 = !DILocation(line: 41, column: 6, scope: !3188)
!3222 = !DILocation(line: 42, column: 7, scope: !3188)
!3223 = !DILocation(line: 46, column: 15, scope: !3188)
!3224 = !DILocation(line: 374, column: 2, scope: !3193, inlinedAt: !3198)
!3225 = !DILocation(line: 376, column: 14, scope: !3193, inlinedAt: !3198)
!3226 = !{i32 291684}
!3227 = !DILocation(line: 377, column: 9, scope: !3193, inlinedAt: !3198)
!3228 = !DILocation(line: 377, column: 16, scope: !3193, inlinedAt: !3198)
!3229 = !DILocation(line: 46, column: 2, scope: !3188)
!3230 = !DILocation(line: 48, column: 1, scope: !3188)
!3231 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3232, file: !3232, line: 30, type: !3233, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3232 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!97, !408}
!3235 = !DILocation(line: 366, column: 40, scope: !3193, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 32, column: 9, scope: !3231)
!3237 = !DILocation(line: 368, column: 6, scope: !3193, inlinedAt: !3236)
!3238 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !3232, line: 30, type: !408)
!3239 = !DILocation(line: 30, column: 21, scope: !3231)
!3240 = !DILocation(line: 32, column: 15, scope: !3231)
!3241 = !DILocation(line: 374, column: 2, scope: !3193, inlinedAt: !3236)
!3242 = !DILocation(line: 376, column: 14, scope: !3193, inlinedAt: !3236)
!3243 = !DILocation(line: 377, column: 9, scope: !3193, inlinedAt: !3236)
!3244 = !DILocation(line: 377, column: 16, scope: !3193, inlinedAt: !3236)
!3245 = !DILocation(line: 32, column: 18, scope: !3231)
!3246 = !DILocation(line: 32, column: 2, scope: !3231)
!3247 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3248, file: !3248, line: 137, type: !3249, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3248 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!63, !1159, !1240, !337, !61}
!3251 = !DILocalVariable(name: "s", arg: 1, scope: !3247, file: !3248, line: 137, type: !1159)
!3252 = !DILocation(line: 137, column: 54, scope: !3247)
!3253 = !DILocalVariable(name: "object", arg: 2, scope: !3247, file: !3248, line: 137, type: !1240)
!3254 = !DILocation(line: 137, column: 69, scope: !3247)
!3255 = !DILocalVariable(name: "size", arg: 3, scope: !3247, file: !3248, line: 138, type: !337)
!3256 = !DILocation(line: 138, column: 12, scope: !3247)
!3257 = !DILocalVariable(name: "flags", arg: 4, scope: !3247, file: !3248, line: 138, type: !61)
!3258 = !DILocation(line: 138, column: 24, scope: !3247)
!3259 = !DILocation(line: 140, column: 17, scope: !3247)
!3260 = !DILocation(line: 140, column: 2, scope: !3247)
!3261 = distinct !DISubprogram(name: "ERR_CAST", scope: !2561, file: !2561, line: 51, type: !3262, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!63, !1240}
!3264 = !DILocalVariable(name: "ptr", arg: 1, scope: !3261, file: !2561, line: 51, type: !1240)
!3265 = !DILocation(line: 51, column: 64, scope: !3261)
!3266 = !DILocation(line: 54, column: 18, scope: !3261)
!3267 = !DILocation(line: 54, column: 2, scope: !3261)
!3268 = distinct !DISubprogram(name: "plt_clk_unregister_fixed_rate", scope: !3, file: !3, line: 238, type: !3269, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !2265}
!3271 = !DILocalVariable(name: "pclk", arg: 1, scope: !3268, file: !3, line: 238, type: !2265)
!3272 = !DILocation(line: 238, column: 65, scope: !3268)
!3273 = !DILocation(line: 240, column: 14, scope: !3268)
!3274 = !DILocation(line: 240, column: 20, scope: !3268)
!3275 = !DILocation(line: 240, column: 2, scope: !3268)
!3276 = !DILocation(line: 241, column: 31, scope: !3268)
!3277 = !DILocation(line: 241, column: 37, scope: !3268)
!3278 = !DILocation(line: 241, column: 2, scope: !3268)
!3279 = !DILocation(line: 242, column: 1, scope: !3268)
!3280 = distinct !DISubprogram(name: "plt_clk_is_enabled", scope: !3, file: !3, line: 141, type: !95, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3281 = !DILocalVariable(name: "hw", arg: 1, scope: !3280, file: !3, line: 141, type: !98)
!3282 = !DILocation(line: 141, column: 46, scope: !3280)
!3283 = !DILocalVariable(name: "clk", scope: !3280, file: !3, line: 143, type: !66)
!3284 = !DILocation(line: 143, column: 18, scope: !3280)
!3285 = !DILocalVariable(name: "__mptr", scope: !3286, file: !3, line: 143, type: !63)
!3286 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 143, column: 24)
!3287 = !DILocation(line: 143, column: 24, scope: !3286)
!3288 = !DILocation(line: 143, column: 24, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 143, column: 24)
!3290 = !DILocalVariable(name: "value", scope: !3280, file: !3, line: 144, type: !544)
!3291 = !DILocation(line: 144, column: 6, scope: !3280)
!3292 = !DILocation(line: 146, column: 16, scope: !3280)
!3293 = !DILocation(line: 146, column: 21, scope: !3280)
!3294 = !DILocation(line: 146, column: 10, scope: !3280)
!3295 = !DILocation(line: 146, column: 8, scope: !3280)
!3296 = !DILocation(line: 148, column: 28, scope: !3280)
!3297 = !DILocation(line: 148, column: 9, scope: !3280)
!3298 = !DILocation(line: 148, column: 2, scope: !3280)
!3299 = distinct !DISubprogram(name: "plt_clk_enable", scope: !3, file: !3, line: 125, type: !95, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3300 = !DILocalVariable(name: "hw", arg: 1, scope: !3299, file: !3, line: 125, type: !98)
!3301 = !DILocation(line: 125, column: 42, scope: !3299)
!3302 = !DILocalVariable(name: "clk", scope: !3299, file: !3, line: 127, type: !66)
!3303 = !DILocation(line: 127, column: 18, scope: !3299)
!3304 = !DILocalVariable(name: "__mptr", scope: !3305, file: !3, line: 127, type: !63)
!3305 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 127, column: 24)
!3306 = !DILocation(line: 127, column: 24, scope: !3305)
!3307 = !DILocation(line: 127, column: 24, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 127, column: 24)
!3309 = !DILocation(line: 129, column: 21, scope: !3299)
!3310 = !DILocation(line: 129, column: 2, scope: !3299)
!3311 = !DILocation(line: 131, column: 2, scope: !3299)
!3312 = distinct !DISubprogram(name: "plt_clk_disable", scope: !3, file: !3, line: 134, type: !101, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3313 = !DILocalVariable(name: "hw", arg: 1, scope: !3312, file: !3, line: 134, type: !98)
!3314 = !DILocation(line: 134, column: 44, scope: !3312)
!3315 = !DILocalVariable(name: "clk", scope: !3312, file: !3, line: 136, type: !66)
!3316 = !DILocation(line: 136, column: 18, scope: !3312)
!3317 = !DILocalVariable(name: "__mptr", scope: !3318, file: !3, line: 136, type: !63)
!3318 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 136, column: 24)
!3319 = !DILocation(line: 136, column: 24, scope: !3318)
!3320 = !DILocation(line: 136, column: 24, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 136, column: 24)
!3322 = !DILocation(line: 138, column: 21, scope: !3312)
!3323 = !DILocation(line: 138, column: 2, scope: !3312)
!3324 = !DILocation(line: 139, column: 1, scope: !3312)
!3325 = distinct !DISubprogram(name: "plt_clk_set_parent", scope: !3, file: !3, line: 106, type: !134, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3326 = !DILocalVariable(name: "hw", arg: 1, scope: !3325, file: !3, line: 106, type: !98)
!3327 = !DILocation(line: 106, column: 46, scope: !3325)
!3328 = !DILocalVariable(name: "index", arg: 2, scope: !3325, file: !3, line: 106, type: !136)
!3329 = !DILocation(line: 106, column: 53, scope: !3325)
!3330 = !DILocalVariable(name: "clk", scope: !3325, file: !3, line: 108, type: !66)
!3331 = !DILocation(line: 108, column: 18, scope: !3325)
!3332 = !DILocalVariable(name: "__mptr", scope: !3333, file: !3, line: 108, type: !63)
!3333 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 108, column: 24)
!3334 = !DILocation(line: 108, column: 24, scope: !3333)
!3335 = !DILocation(line: 108, column: 24, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 108, column: 24)
!3337 = !DILocation(line: 110, column: 21, scope: !3325)
!3338 = !DILocation(line: 110, column: 63, scope: !3325)
!3339 = !DILocation(line: 110, column: 45, scope: !3325)
!3340 = !DILocation(line: 110, column: 2, scope: !3325)
!3341 = !DILocation(line: 112, column: 2, scope: !3325)
!3342 = distinct !DISubprogram(name: "plt_clk_get_parent", scope: !3, file: !3, line: 115, type: !143, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3343 = !DILocalVariable(name: "hw", arg: 1, scope: !3342, file: !3, line: 115, type: !98)
!3344 = !DILocation(line: 115, column: 45, scope: !3342)
!3345 = !DILocalVariable(name: "clk", scope: !3342, file: !3, line: 117, type: !66)
!3346 = !DILocation(line: 117, column: 18, scope: !3342)
!3347 = !DILocalVariable(name: "__mptr", scope: !3348, file: !3, line: 117, type: !63)
!3348 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 117, column: 24)
!3349 = !DILocation(line: 117, column: 24, scope: !3348)
!3350 = !DILocation(line: 117, column: 24, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 117, column: 24)
!3352 = !DILocalVariable(name: "value", scope: !3342, file: !3, line: 118, type: !544)
!3353 = !DILocation(line: 118, column: 6, scope: !3342)
!3354 = !DILocation(line: 120, column: 16, scope: !3342)
!3355 = !DILocation(line: 120, column: 21, scope: !3342)
!3356 = !DILocation(line: 120, column: 10, scope: !3342)
!3357 = !DILocation(line: 120, column: 8, scope: !3342)
!3358 = !DILocation(line: 122, column: 27, scope: !3342)
!3359 = !DILocation(line: 122, column: 9, scope: !3342)
!3360 = !DILocation(line: 122, column: 2, scope: !3342)
!3361 = distinct !DISubprogram(name: "plt_clk_reg_update", scope: !3, file: !3, line: 92, type: !3362, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{null, !66, !544, !544}
!3364 = !DILocalVariable(name: "lock", arg: 1, scope: !3365, file: !2581, line: 407, type: !2585)
!3365 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2581, file: !2581, line: 407, type: !3366, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{null, !2585, !64}
!3368 = !DILocation(line: 407, column: 64, scope: !3365, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 103, column: 2, scope: !3361)
!3370 = !DILocalVariable(name: "flags", arg: 2, scope: !3365, file: !2581, line: 407, type: !64)
!3371 = !DILocation(line: 407, column: 84, scope: !3365, inlinedAt: !3369)
!3372 = !DILocation(line: 327, column: 67, scope: !2580, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 97, column: 2, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 97, column: 2)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 97, column: 2)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 97, column: 2)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 97, column: 2)
!3378 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 97, column: 2)
!3379 = !DILocalVariable(name: "clk", arg: 1, scope: !3361, file: !3, line: 92, type: !66)
!3380 = !DILocation(line: 92, column: 48, scope: !3361)
!3381 = !DILocalVariable(name: "mask", arg: 2, scope: !3361, file: !3, line: 92, type: !544)
!3382 = !DILocation(line: 92, column: 57, scope: !3361)
!3383 = !DILocalVariable(name: "val", arg: 3, scope: !3361, file: !3, line: 92, type: !544)
!3384 = !DILocation(line: 92, column: 67, scope: !3361)
!3385 = !DILocalVariable(name: "tmp", scope: !3361, file: !3, line: 94, type: !544)
!3386 = !DILocation(line: 94, column: 6, scope: !3361)
!3387 = !DILocalVariable(name: "flags", scope: !3361, file: !3, line: 95, type: !64)
!3388 = !DILocation(line: 95, column: 16, scope: !3361)
!3389 = !DILocation(line: 97, column: 2, scope: !3361)
!3390 = !DILocation(line: 97, column: 2, scope: !3378)
!3391 = !DILocalVariable(name: "__dummy", scope: !3392, file: !3, line: 97, type: !64)
!3392 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 97, column: 2)
!3393 = !DILocation(line: 97, column: 2, scope: !3392)
!3394 = !DILocalVariable(name: "__dummy2", scope: !3392, file: !3, line: 97, type: !64)
!3395 = !DILocation(line: 97, column: 2, scope: !3377)
!3396 = !DILocation(line: 97, column: 2, scope: !3376)
!3397 = !DILocation(line: 97, column: 2, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 97, column: 2)
!3399 = !DILocalVariable(name: "__dummy", scope: !3400, file: !3, line: 97, type: !64)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 97, column: 2)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 97, column: 2)
!3402 = !DILocation(line: 97, column: 2, scope: !3400)
!3403 = !DILocalVariable(name: "__dummy2", scope: !3400, file: !3, line: 97, type: !64)
!3404 = !DILocation(line: 97, column: 2, scope: !3401)
!3405 = !DILocation(line: 97, column: 2, scope: !3375)
!3406 = !{i32 -2143460761}
!3407 = !DILocation(line: 97, column: 2, scope: !3374)
!3408 = !DILocation(line: 329, column: 10, scope: !2580, inlinedAt: !3373)
!3409 = !DILocation(line: 329, column: 16, scope: !2580, inlinedAt: !3373)
!3410 = !DILocation(line: 99, column: 14, scope: !3361)
!3411 = !DILocation(line: 99, column: 19, scope: !3361)
!3412 = !DILocation(line: 99, column: 8, scope: !3361)
!3413 = !DILocation(line: 99, column: 6, scope: !3361)
!3414 = !DILocation(line: 100, column: 9, scope: !3361)
!3415 = !DILocation(line: 100, column: 16, scope: !3361)
!3416 = !DILocation(line: 100, column: 15, scope: !3361)
!3417 = !DILocation(line: 100, column: 13, scope: !3361)
!3418 = !DILocation(line: 100, column: 25, scope: !3361)
!3419 = !DILocation(line: 100, column: 31, scope: !3361)
!3420 = !DILocation(line: 100, column: 29, scope: !3361)
!3421 = !DILocation(line: 100, column: 22, scope: !3361)
!3422 = !DILocation(line: 100, column: 6, scope: !3361)
!3423 = !DILocation(line: 101, column: 9, scope: !3361)
!3424 = !DILocation(line: 101, column: 14, scope: !3361)
!3425 = !DILocation(line: 101, column: 19, scope: !3361)
!3426 = !DILocation(line: 101, column: 2, scope: !3361)
!3427 = !DILocation(line: 103, column: 26, scope: !3361)
!3428 = !DILocation(line: 103, column: 31, scope: !3361)
!3429 = !DILocation(line: 103, column: 37, scope: !3361)
!3430 = !DILocalVariable(name: "__dummy", scope: !3431, file: !2581, line: 409, type: !64)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !2581, line: 409, column: 2)
!3432 = distinct !DILexicalBlock(scope: !3365, file: !2581, line: 409, column: 2)
!3433 = !DILocation(line: 409, column: 2, scope: !3431, inlinedAt: !3369)
!3434 = !DILocalVariable(name: "__dummy2", scope: !3431, file: !2581, line: 409, type: !64)
!3435 = !DILocalVariable(name: "__dummy", scope: !3436, file: !2581, line: 409, type: !64)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !2581, line: 409, column: 2)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !2581, line: 409, column: 2)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !2581, line: 409, column: 2)
!3439 = distinct !DILexicalBlock(scope: !3432, file: !2581, line: 409, column: 2)
!3440 = !DILocation(line: 409, column: 2, scope: !3436, inlinedAt: !3369)
!3441 = !DILocalVariable(name: "__dummy2", scope: !3436, file: !2581, line: 409, type: !64)
!3442 = !DILocation(line: 409, column: 2, scope: !3437, inlinedAt: !3369)
!3443 = !DILocation(line: 409, column: 2, scope: !3444, inlinedAt: !3369)
!3444 = distinct !DILexicalBlock(scope: !3439, file: !2581, line: 409, column: 2)
!3445 = !{i32 -2145377550}
!3446 = !DILocation(line: 409, column: 2, scope: !3447, inlinedAt: !3369)
!3447 = distinct !DILexicalBlock(scope: !3444, file: !2581, line: 409, column: 2)
!3448 = !DILocation(line: 104, column: 1, scope: !3361)
!3449 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !3450, file: !3450, line: 666, type: !3451, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3450 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!64}
!3453 = !DILocalVariable(name: "f", scope: !3449, file: !3450, line: 668, type: !64)
!3454 = !DILocation(line: 668, column: 16, scope: !3449)
!3455 = !DILocation(line: 670, column: 6, scope: !3449)
!3456 = !DILocation(line: 670, column: 4, scope: !3449)
!3457 = !DILocation(line: 671, column: 2, scope: !3449)
!3458 = !DILocation(line: 672, column: 9, scope: !3449)
!3459 = !DILocation(line: 672, column: 2, scope: !3449)
!3460 = distinct !DISubprogram(name: "readl", scope: !3461, file: !3461, line: 59, type: !3462, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3461 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!7, !3464}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3467 = !DILocalVariable(name: "addr", arg: 1, scope: !3460, file: !3461, line: 59, type: !3464)
!3468 = !DILocation(line: 59, column: 1, scope: !3460)
!3469 = !DILocalVariable(name: "ret", scope: !3460, file: !3461, line: 59, type: !7)
!3470 = !{i32 -2144213351}
!3471 = distinct !DISubprogram(name: "writel", scope: !3461, file: !3461, line: 67, type: !3472, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !7, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3475 = !DILocalVariable(name: "val", arg: 1, scope: !3471, file: !3461, line: 67, type: !7)
!3476 = !DILocation(line: 67, column: 1, scope: !3471)
!3477 = !DILocalVariable(name: "addr", arg: 2, scope: !3471, file: !3461, line: 67, type: !3474)
!3478 = !{i32 -2144210958}
!3479 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3450, file: !3450, line: 646, type: !3451, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3480 = !DILocalVariable(name: "__ret", scope: !3481, file: !3450, line: 648, type: !64)
!3481 = distinct !DILexicalBlock(scope: !3479, file: !3450, line: 648, column: 9)
!3482 = !DILocation(line: 648, column: 9, scope: !3481)
!3483 = !DILocalVariable(name: "__edi", scope: !3481, file: !3450, line: 648, type: !64)
!3484 = !DILocalVariable(name: "__esi", scope: !3481, file: !3450, line: 648, type: !64)
!3485 = !DILocalVariable(name: "__edx", scope: !3481, file: !3450, line: 648, type: !64)
!3486 = !DILocalVariable(name: "__ecx", scope: !3481, file: !3450, line: 648, type: !64)
!3487 = !DILocalVariable(name: "__eax", scope: !3481, file: !3450, line: 648, type: !64)
!3488 = !DILocation(line: 648, column: 9, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !3450, line: 648, column: 9)
!3490 = distinct !DILexicalBlock(scope: !3481, file: !3450, line: 648, column: 9)
!3491 = !{i32 -2145664194, i32 -2145661879, i32 -2145661645, i32 -2145661594, i32 -2145661566, i32 -2145661541, i32 -2145661857, i32 -2145661844, i32 -2145661406, i32 -2145661287, i32 -2145661752, i32 -2145661725, i32 -2145661697, i32 -2145661667}
!3492 = !DILocalVariable(name: "__mask", scope: !3493, file: !3450, line: 648, type: !64)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !3450, line: 648, column: 9)
!3494 = !DILocation(line: 648, column: 9, scope: !3493)
!3495 = !DILocation(line: 648, column: 9, scope: !3490)
!3496 = !DILocation(line: 648, column: 2, scope: !3479)
!3497 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3450, file: !3450, line: 656, type: !3498, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null}
!3500 = !DILocalVariable(name: "__edi", scope: !3501, file: !3450, line: 658, type: !64)
!3501 = distinct !DILexicalBlock(scope: !3497, file: !3450, line: 658, column: 2)
!3502 = !DILocation(line: 658, column: 2, scope: !3501)
!3503 = !DILocalVariable(name: "__esi", scope: !3501, file: !3450, line: 658, type: !64)
!3504 = !DILocalVariable(name: "__edx", scope: !3501, file: !3450, line: 658, type: !64)
!3505 = !DILocalVariable(name: "__ecx", scope: !3501, file: !3450, line: 658, type: !64)
!3506 = !DILocalVariable(name: "__eax", scope: !3501, file: !3450, line: 658, type: !64)
!3507 = !{i32 -2145657100, i32 -2145656368, i32 -2145656134, i32 -2145656083, i32 -2145656055, i32 -2145656030, i32 -2145656346, i32 -2145656333, i32 -2145655895, i32 -2145655776, i32 -2145656241, i32 -2145656214, i32 -2145656186, i32 -2145656156}
!3508 = !DILocation(line: 659, column: 1, scope: !3497)
!3509 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !3450, file: !3450, line: 651, type: !3510, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !64}
!3512 = !DILocalVariable(name: "f", arg: 1, scope: !3509, file: !3450, line: 651, type: !64)
!3513 = !DILocation(line: 651, column: 65, scope: !3509)
!3514 = !DILocalVariable(name: "__edi", scope: !3515, file: !3450, line: 653, type: !64)
!3515 = distinct !DILexicalBlock(scope: !3509, file: !3450, line: 653, column: 2)
!3516 = !DILocation(line: 653, column: 2, scope: !3515)
!3517 = !DILocalVariable(name: "__esi", scope: !3515, file: !3450, line: 653, type: !64)
!3518 = !DILocalVariable(name: "__edx", scope: !3515, file: !3450, line: 653, type: !64)
!3519 = !DILocalVariable(name: "__ecx", scope: !3515, file: !3450, line: 653, type: !64)
!3520 = !DILocalVariable(name: "__eax", scope: !3515, file: !3450, line: 653, type: !64)
!3521 = !{i32 -2145659727, i32 -2145658977, i32 -2145658743, i32 -2145658692, i32 -2145658664, i32 -2145658639, i32 -2145658955, i32 -2145658942, i32 -2145658504, i32 -2145658385, i32 -2145658850, i32 -2145658823, i32 -2145658795, i32 -2145658765}
!3522 = !DILocation(line: 654, column: 1, scope: !3509)
!3523 = distinct !DISubprogram(name: "plt_parent_to_reg", scope: !3, file: !3, line: 67, type: !3524, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!97, !97}
!3526 = !DILocalVariable(name: "index", arg: 1, scope: !3523, file: !3, line: 67, type: !97)
!3527 = !DILocation(line: 67, column: 41, scope: !3523)
!3528 = !DILocation(line: 69, column: 10, scope: !3523)
!3529 = !DILocation(line: 69, column: 2, scope: !3523)
!3530 = !DILocation(line: 69, column: 17, scope: !3523)
!3531 = !DILocation(line: 72, column: 3, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 69, column: 17)
!3533 = !DILocation(line: 74, column: 3, scope: !3532)
!3534 = !DILocation(line: 76, column: 1, scope: !3523)
!3535 = distinct !DISubprogram(name: "plt_reg_to_parent", scope: !3, file: !3, line: 55, type: !3524, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3536 = !DILocalVariable(name: "reg", arg: 1, scope: !3535, file: !3, line: 55, type: !97)
!3537 = !DILocation(line: 55, column: 41, scope: !3535)
!3538 = !DILocation(line: 57, column: 10, scope: !3535)
!3539 = !DILocation(line: 57, column: 14, scope: !3535)
!3540 = !DILocation(line: 57, column: 2, scope: !3535)
!3541 = !DILocation(line: 57, column: 35, scope: !3535)
!3542 = !DILocation(line: 60, column: 3, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 57, column: 35)
!3544 = !DILocation(line: 62, column: 3, scope: !3543)
!3545 = !DILocation(line: 64, column: 1, scope: !3535)
!3546 = distinct !DISubprogram(name: "plt_reg_to_enabled", scope: !3, file: !3, line: 79, type: !3524, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3547 = !DILocalVariable(name: "reg", arg: 1, scope: !3546, file: !3, line: 79, type: !97)
!3548 = !DILocation(line: 79, column: 42, scope: !3546)
!3549 = !DILocation(line: 81, column: 10, scope: !3546)
!3550 = !DILocation(line: 81, column: 14, scope: !3546)
!3551 = !DILocation(line: 81, column: 2, scope: !3546)
!3552 = !DILocation(line: 84, column: 3, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 81, column: 34)
!3554 = !DILocation(line: 88, column: 3, scope: !3553)
!3555 = !DILocation(line: 90, column: 1, scope: !3546)
!3556 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3557, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !1708, !63}
!3559 = !DILocalVariable(name: "dev", arg: 1, scope: !3556, file: !30, line: 660, type: !1708)
!3560 = !DILocation(line: 660, column: 51, scope: !3556)
!3561 = !DILocalVariable(name: "data", arg: 2, scope: !3556, file: !30, line: 660, type: !63)
!3562 = !DILocation(line: 660, column: 62, scope: !3556)
!3563 = !DILocation(line: 662, column: 21, scope: !3556)
!3564 = !DILocation(line: 662, column: 2, scope: !3556)
!3565 = !DILocation(line: 662, column: 7, scope: !3556)
!3566 = !DILocation(line: 662, column: 19, scope: !3556)
!3567 = !DILocation(line: 663, column: 1, scope: !3556)
!3568 = distinct !DISubprogram(name: "plt_clk_unregister", scope: !3, file: !3, line: 208, type: !3569, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !66}
!3571 = !DILocalVariable(name: "pclk", arg: 1, scope: !3568, file: !3, line: 208, type: !66)
!3572 = !DILocation(line: 208, column: 48, scope: !3568)
!3573 = !DILocation(line: 210, column: 14, scope: !3568)
!3574 = !DILocation(line: 210, column: 20, scope: !3568)
!3575 = !DILocation(line: 210, column: 2, scope: !3568)
!3576 = !DILocation(line: 211, column: 1, scope: !3568)
!3577 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !234, file: !234, line: 231, type: !3578, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!63, !3580}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!3582 = !DILocalVariable(name: "pdev", arg: 1, scope: !3577, file: !234, line: 231, type: !3580)
!3583 = !DILocation(line: 231, column: 72, scope: !3577)
!3584 = !DILocation(line: 233, column: 26, scope: !3577)
!3585 = !DILocation(line: 233, column: 32, scope: !3577)
!3586 = !DILocation(line: 233, column: 9, scope: !3577)
!3587 = !DILocation(line: 233, column: 2, scope: !3577)
!3588 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2424, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !227)
!3589 = !DILocalVariable(name: "dev", arg: 1, scope: !3588, file: !30, line: 655, type: !2053)
!3590 = !DILocation(line: 655, column: 58, scope: !3588)
!3591 = !DILocation(line: 657, column: 9, scope: !3588)
!3592 = !DILocation(line: 657, column: 14, scope: !3588)
!3593 = !DILocation(line: 657, column: 2, scope: !3588)
