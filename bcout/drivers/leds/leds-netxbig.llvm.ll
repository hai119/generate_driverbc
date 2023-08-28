; ModuleID = '../bcout/drivers/leds/leds-netxbig.llvm.bc'
source_filename = "drivers/leds/leds-netxbig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_netxbig_led_driver_init6:\09\09\09"
module asm ".long\09netxbig_led_driver_init - .\09\09\09"
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
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.netxbig_led_platform_data = type { %struct.netxbig_gpio_ext*, %struct.netxbig_led_timer*, i32, %struct.netxbig_led*, i32 }
%struct.netxbig_gpio_ext = type { %struct.gpio_desc**, i32, %struct.gpio_desc**, i32, %struct.gpio_desc* }
%struct.gpio_desc = type opaque
%struct.netxbig_led_timer = type { i64, i64, i32 }
%struct.netxbig_led = type { i8*, i8*, i32, i32*, i32, i32 }
%struct.netxbig_led_data = type { %struct.netxbig_gpio_ext*, %struct.led_classdev, i32, i32*, i32, %struct.netxbig_led_timer*, i32, i32, i32, %struct.spinlock }
%struct.led_classdev = type { i8*, i32, i32, i32, i64, void (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, %struct.led_pattern*, i32, i32)*, i32 (%struct.led_classdev*)*, %struct.device*, %struct.attribute_group**, %struct.list_head, i8*, i64, i64, %struct.timer_list, i32, i32, void (%struct.led_classdev*)*, %struct.work_struct, i32, %struct.mutex }
%struct.led_pattern = type { i32, i32 }
%struct.led_init_data = type { %struct.fwnode_handle*, i8*, i8*, i8 }

@__UNIQUE_ID___addressable_netxbig_led_driver_init167 = internal global i8* bitcast (i32 ()* @netxbig_led_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@netxbig_led_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @netxbig_led_probe, i32 (%struct.platform_device*)* null, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @of_netxbig_leds_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2182
@__exitcall_netxbig_led_driver_exit = internal global void ()* @netxbig_led_driver_exit, section ".exitcall.exit", align 8, !dbg !2152
@__UNIQUE_ID_author168 = internal constant [53 x i8] c"leds_netxbig.author=Simon Guinot <sguinot@lacie.com>\00", section ".modinfo", align 1, !dbg !2159
@__UNIQUE_ID_description169 = internal constant [66 x i8] c"leds_netxbig.description=LED driver for LaCie xBig Network boards\00", section ".modinfo", align 1, !dbg !2164
@__UNIQUE_ID_file170 = internal constant [44 x i8] c"leds_netxbig.file=drivers/leds/leds-netxbig\00", section ".modinfo", align 1, !dbg !2169
@__UNIQUE_ID_license171 = internal constant [25 x i8] c"leds_netxbig.license=GPL\00", section ".modinfo", align 1, !dbg !2172
@__UNIQUE_ID_alias172 = internal constant [41 x i8] c"leds_netxbig.alias=platform:leds-netxbig\00", section ".modinfo", align 1, !dbg !2177
@.str = private unnamed_addr constant [13 x i8] c"leds-netxbig\00", align 1
@of_netxbig_leds_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lacie,netxbig-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2266
@.str.1 = private unnamed_addr constant [9 x i8] c"gpio-ext\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to get DT handle gpio-ext\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to find platform device for gpio-ext\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"timers\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"No LED subnodes found in DT\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"mode-addr\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bright-addr\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"max-brightness\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"mode-val\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Failed to count GPIOs in DT property addr-gpios\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"GPIO extension addr\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"Failed to count GPIOs in DT property data-gpios\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"GPIO extension data\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Failed to get GPIO from DT property enable-gpio\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"GPIO extension enable\00", align 1
@netxbig_led_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @netxbig_led_group, %struct.attribute_group* null], align 16, !dbg !2244
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@gpio_ext_lock = internal global %struct.spinlock undef, align 1, !dbg !2242
@netxbig_led_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @netxbig_led_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2247
@netxbig_led_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sata, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2249
@dev_attr_sata = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @netxbig_led_sata_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @netxbig_led_sata_store }, align 8, !dbg !2252
@.str.21 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_netxbig_led_driver_init167 to i8*), i8* bitcast (void ()* @netxbig_led_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_netxbig_led_driver_exit to i8*), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_author168, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_description169, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_file170, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license171, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_alias172, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @netxbig_led_driver_init() #0 section ".init.text" !dbg !2275 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @netxbig_led_driver, %struct.module* null) #8, !dbg !2278
  ret i32 %call, !dbg !2278
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @netxbig_led_driver_exit() #0 section ".exit.text" !dbg !2279 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @netxbig_led_driver) #8, !dbg !2280
  ret void, !dbg !2280
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @netxbig_led_probe(%struct.platform_device* %pdev) #2 !dbg !2281 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %pdata = alloca %struct.netxbig_led_platform_data*, align 8
  %leds_data = alloca %struct.netxbig_led_data*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2282, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_platform_data** %pdata, metadata !2284, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_data** %leds_data, metadata !2303, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2305, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2307, metadata !DIExpression()), !dbg !2308
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2309
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2310
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 40, i32 3264) #8, !dbg !2311
  %1 = bitcast i8* %call to %struct.netxbig_led_platform_data*, !dbg !2311
  store %struct.netxbig_led_platform_data* %1, %struct.netxbig_led_platform_data** %pdata, align 8, !dbg !2312
  %2 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata, align 8, !dbg !2313
  %tobool = icmp ne %struct.netxbig_led_platform_data* %2, null, !dbg !2313
  br i1 %tobool, label %if.end, label %if.then, !dbg !2315

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

if.end:                                           ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2317
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 3, !dbg !2318
  %4 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata, align 8, !dbg !2319
  %call2 = call i32 @netxbig_leds_get_of_pdata(%struct.device* %dev1, %struct.netxbig_led_platform_data* %4) #8, !dbg !2320
  store i32 %call2, i32* %ret, align 4, !dbg !2321
  %5 = load i32, i32* %ret, align 4, !dbg !2322
  %tobool3 = icmp ne i32 %5, 0, !dbg !2322
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2324

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !2325
  store i32 %6, i32* %retval, align 4, !dbg !2326
  br label %return, !dbg !2326

if.end5:                                          ; preds = %if.end
  %7 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2327
  %dev6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 3, !dbg !2328
  %8 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata, align 8, !dbg !2329
  %num_leds = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %8, i32 0, i32 4, !dbg !2330
  %9 = load i32, i32* %num_leds, align 8, !dbg !2330
  %conv = sext i32 %9 to i64, !dbg !2329
  %call7 = call i8* @devm_kcalloc(%struct.device* %dev6, i64 %conv, i64 312, i32 3264) #8, !dbg !2331
  %10 = bitcast i8* %call7 to %struct.netxbig_led_data*, !dbg !2331
  store %struct.netxbig_led_data* %10, %struct.netxbig_led_data** %leds_data, align 8, !dbg !2332
  %11 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %leds_data, align 8, !dbg !2333
  %tobool8 = icmp ne %struct.netxbig_led_data* %11, null, !dbg !2333
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2335

if.then9:                                         ; preds = %if.end5
  store i32 -12, i32* %retval, align 4, !dbg !2336
  br label %return, !dbg !2336

if.end10:                                         ; preds = %if.end5
  store i32 0, i32* %i, align 4, !dbg !2337
  br label %for.cond, !dbg !2339

for.cond:                                         ; preds = %for.inc, %if.end10
  %12 = load i32, i32* %i, align 4, !dbg !2340
  %13 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata, align 8, !dbg !2342
  %num_leds11 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %13, i32 0, i32 4, !dbg !2343
  %14 = load i32, i32* %num_leds11, align 8, !dbg !2343
  %cmp = icmp slt i32 %12, %14, !dbg !2344
  br i1 %cmp, label %for.body, label %for.end, !dbg !2345

for.body:                                         ; preds = %for.cond
  %15 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2346
  %16 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata, align 8, !dbg !2348
  %17 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %leds_data, align 8, !dbg !2349
  %18 = load i32, i32* %i, align 4, !dbg !2350
  %idxprom = sext i32 %18 to i64, !dbg !2349
  %arrayidx = getelementptr %struct.netxbig_led_data, %struct.netxbig_led_data* %17, i64 %idxprom, !dbg !2349
  %19 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata, align 8, !dbg !2351
  %leds = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %19, i32 0, i32 3, !dbg !2352
  %20 = load %struct.netxbig_led*, %struct.netxbig_led** %leds, align 8, !dbg !2352
  %21 = load i32, i32* %i, align 4, !dbg !2353
  %idxprom13 = sext i32 %21 to i64, !dbg !2351
  %arrayidx14 = getelementptr %struct.netxbig_led, %struct.netxbig_led* %20, i64 %idxprom13, !dbg !2351
  %call15 = call i32 @create_netxbig_led(%struct.platform_device* %15, %struct.netxbig_led_platform_data* %16, %struct.netxbig_led_data* %arrayidx, %struct.netxbig_led* %arrayidx14) #8, !dbg !2354
  store i32 %call15, i32* %ret, align 4, !dbg !2355
  %22 = load i32, i32* %ret, align 4, !dbg !2356
  %cmp16 = icmp slt i32 %22, 0, !dbg !2358
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2359

if.then18:                                        ; preds = %for.body
  %23 = load i32, i32* %ret, align 4, !dbg !2360
  store i32 %23, i32* %retval, align 4, !dbg !2361
  br label %return, !dbg !2361

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !2362

for.inc:                                          ; preds = %if.end19
  %24 = load i32, i32* %i, align 4, !dbg !2363
  %inc = add i32 %24, 1, !dbg !2363
  store i32 %inc, i32* %i, align 4, !dbg !2363
  br label %for.cond, !dbg !2364, !llvm.loop !2365

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2367
  br label %return, !dbg !2367

return:                                           ; preds = %for.end, %if.then18, %if.then9, %if.then4, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !2368
  ret i32 %25, !dbg !2368
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2369 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2372, metadata !DIExpression()), !dbg !2373
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2374, metadata !DIExpression()), !dbg !2375
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2376, metadata !DIExpression()), !dbg !2377
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2378
  %1 = load i64, i64* %size.addr, align 8, !dbg !2379
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2380
  %or = or i32 %2, 256, !dbg !2381
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !2382
  ret i8* %call, !dbg !2383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @netxbig_leds_get_of_pdata(%struct.device* %dev, %struct.netxbig_led_platform_data* %pdata) #2 !dbg !2384 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %pdata.addr = alloca %struct.netxbig_led_platform_data*, align 8
  %np = alloca %struct.device_node*, align 8
  %gpio_ext_np = alloca %struct.device_node*, align 8
  %gpio_ext_pdev = alloca %struct.platform_device*, align 8
  %gpio_ext_dev = alloca %struct.device*, align 8
  %child = alloca %struct.device_node*, align 8
  %gpio_ext = alloca %struct.netxbig_gpio_ext*, align 8
  %timers = alloca %struct.netxbig_led_timer*, align 8
  %leds = alloca %struct.netxbig_led*, align 8
  %led = alloca %struct.netxbig_led*, align 8
  %num_timers = alloca i32, align 4
  %num_leds = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %string = alloca i8*, align 8
  %mode_val = alloca i32*, align 8
  %num_modes = alloca i32, align 4
  %mode102 = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2387, metadata !DIExpression()), !dbg !2388
  store %struct.netxbig_led_platform_data* %pdata, %struct.netxbig_led_platform_data** %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_platform_data** %pdata.addr, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2391, metadata !DIExpression()), !dbg !2392
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2393
  %call = call %struct.device_node* @dev_of_node(%struct.device* %0) #8, !dbg !2394
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !2392
  call void @llvm.dbg.declare(metadata %struct.device_node** %gpio_ext_np, metadata !2395, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata %struct.platform_device** %gpio_ext_pdev, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.declare(metadata %struct.device** %gpio_ext_dev, metadata !2399, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !2401, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.declare(metadata %struct.netxbig_gpio_ext** %gpio_ext, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_timer** %timers, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata %struct.netxbig_led** %leds, metadata !2407, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.declare(metadata %struct.netxbig_led** %led, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.declare(metadata i32* %num_timers, metadata !2411, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.declare(metadata i32* %num_leds, metadata !2413, metadata !DIExpression()), !dbg !2414
  store i32 0, i32* %num_leds, align 4, !dbg !2414
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2415, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2417, metadata !DIExpression()), !dbg !2418
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2419
  %call1 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0) #8, !dbg !2420
  store %struct.device_node* %call1, %struct.device_node** %gpio_ext_np, align 8, !dbg !2421
  %2 = load %struct.device_node*, %struct.device_node** %gpio_ext_np, align 8, !dbg !2422
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !2422
  br i1 %tobool, label %if.end, label %if.then, !dbg !2424

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2425
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2425
  store i32 -22, i32* %retval, align 4, !dbg !2427
  br label %return, !dbg !2427

if.end:                                           ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %gpio_ext_np, align 8, !dbg !2428
  %call2 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %4) #8, !dbg !2429
  store %struct.platform_device* %call2, %struct.platform_device** %gpio_ext_pdev, align 8, !dbg !2430
  %5 = load %struct.platform_device*, %struct.platform_device** %gpio_ext_pdev, align 8, !dbg !2431
  %tobool3 = icmp ne %struct.platform_device* %5, null, !dbg !2431
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2433

if.then4:                                         ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2434
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !2434
  store i32 -19, i32* %retval, align 4, !dbg !2436
  br label %return, !dbg !2436

if.end5:                                          ; preds = %if.end
  %7 = load %struct.platform_device*, %struct.platform_device** %gpio_ext_pdev, align 8, !dbg !2437
  %dev6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 3, !dbg !2438
  store %struct.device* %dev6, %struct.device** %gpio_ext_dev, align 8, !dbg !2439
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2440
  %call7 = call i8* @devm_kzalloc(%struct.device* %8, i64 40, i32 3264) #8, !dbg !2441
  %9 = bitcast i8* %call7 to %struct.netxbig_gpio_ext*, !dbg !2441
  store %struct.netxbig_gpio_ext* %9, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !2442
  %10 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !2443
  %tobool8 = icmp ne %struct.netxbig_gpio_ext* %10, null, !dbg !2443
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2445

if.then9:                                         ; preds = %if.end5
  %11 = load %struct.device_node*, %struct.device_node** %gpio_ext_np, align 8, !dbg !2446
  call void @of_node_put(%struct.device_node* %11) #8, !dbg !2448
  store i32 -12, i32* %retval, align 4, !dbg !2449
  br label %return, !dbg !2449

if.end10:                                         ; preds = %if.end5
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2450
  %13 = load %struct.device*, %struct.device** %gpio_ext_dev, align 8, !dbg !2451
  %14 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !2452
  %call11 = call i32 @netxbig_gpio_ext_get(%struct.device* %12, %struct.device* %13, %struct.netxbig_gpio_ext* %14) #8, !dbg !2453
  store i32 %call11, i32* %ret, align 4, !dbg !2454
  %15 = load %struct.device_node*, %struct.device_node** %gpio_ext_np, align 8, !dbg !2455
  call void @of_node_put(%struct.device_node* %15) #8, !dbg !2456
  %16 = load i32, i32* %ret, align 4, !dbg !2457
  %tobool12 = icmp ne i32 %16, 0, !dbg !2457
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2459

if.then13:                                        ; preds = %if.end10
  %17 = load i32, i32* %ret, align 4, !dbg !2460
  store i32 %17, i32* %retval, align 4, !dbg !2461
  br label %return, !dbg !2461

if.end14:                                         ; preds = %if.end10
  %18 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !2462
  %19 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata.addr, align 8, !dbg !2463
  %gpio_ext15 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %19, i32 0, i32 0, !dbg !2464
  store %struct.netxbig_gpio_ext* %18, %struct.netxbig_gpio_ext** %gpio_ext15, align 8, !dbg !2465
  %20 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2466
  %call16 = call i32 @of_property_count_u32_elems(%struct.device_node* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !2467
  store i32 %call16, i32* %ret, align 4, !dbg !2468
  %21 = load i32, i32* %ret, align 4, !dbg !2469
  %cmp = icmp sgt i32 %21, 0, !dbg !2471
  br i1 %cmp, label %if.then17, label %if.end46, !dbg !2472

if.then17:                                        ; preds = %if.end14
  %22 = load i32, i32* %ret, align 4, !dbg !2473
  %rem = srem i32 %22, 3, !dbg !2476
  %tobool18 = icmp ne i32 %rem, 0, !dbg !2476
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2477

if.then19:                                        ; preds = %if.then17
  store i32 -22, i32* %retval, align 4, !dbg !2478
  br label %return, !dbg !2478

if.end20:                                         ; preds = %if.then17
  %23 = load i32, i32* %ret, align 4, !dbg !2479
  %div = sdiv i32 %23, 3, !dbg !2480
  store i32 %div, i32* %num_timers, align 4, !dbg !2481
  %24 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2482
  %25 = load i32, i32* %num_timers, align 4, !dbg !2483
  %conv = sext i32 %25 to i64, !dbg !2483
  %call21 = call i8* @devm_kcalloc(%struct.device* %24, i64 %conv, i64 24, i32 3264) #8, !dbg !2484
  %26 = bitcast i8* %call21 to %struct.netxbig_led_timer*, !dbg !2484
  store %struct.netxbig_led_timer* %26, %struct.netxbig_led_timer** %timers, align 8, !dbg !2485
  %27 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timers, align 8, !dbg !2486
  %tobool22 = icmp ne %struct.netxbig_led_timer* %27, null, !dbg !2486
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2488

if.then23:                                        ; preds = %if.end20
  store i32 -12, i32* %retval, align 4, !dbg !2489
  br label %return, !dbg !2489

if.end24:                                         ; preds = %if.end20
  store i32 0, i32* %i, align 4, !dbg !2490
  br label %for.cond, !dbg !2492

for.cond:                                         ; preds = %for.inc, %if.end24
  %28 = load i32, i32* %i, align 4, !dbg !2493
  %29 = load i32, i32* %num_timers, align 4, !dbg !2495
  %cmp25 = icmp slt i32 %28, %29, !dbg !2496
  br i1 %cmp25, label %for.body, label %for.end, !dbg !2497

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !2498, metadata !DIExpression()), !dbg !2500
  %30 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2501
  %31 = load i32, i32* %i, align 4, !dbg !2502
  %mul = mul i32 3, %31, !dbg !2503
  %32 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timers, align 8, !dbg !2504
  %33 = load i32, i32* %i, align 4, !dbg !2505
  %idxprom = sext i32 %33 to i64, !dbg !2504
  %arrayidx = getelementptr %struct.netxbig_led_timer, %struct.netxbig_led_timer* %32, i64 %idxprom, !dbg !2504
  %mode = getelementptr inbounds %struct.netxbig_led_timer, %struct.netxbig_led_timer* %arrayidx, i32 0, i32 2, !dbg !2506
  %call27 = call i32 @of_property_read_u32_index(%struct.device_node* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %mul, i32* %mode) #8, !dbg !2507
  %34 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timers, align 8, !dbg !2508
  %35 = load i32, i32* %i, align 4, !dbg !2510
  %idxprom28 = sext i32 %35 to i64, !dbg !2508
  %arrayidx29 = getelementptr %struct.netxbig_led_timer, %struct.netxbig_led_timer* %34, i64 %idxprom28, !dbg !2508
  %mode30 = getelementptr inbounds %struct.netxbig_led_timer, %struct.netxbig_led_timer* %arrayidx29, i32 0, i32 2, !dbg !2511
  %36 = load i32, i32* %mode30, align 8, !dbg !2511
  %cmp31 = icmp uge i32 %36, 5, !dbg !2512
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !2513

if.then33:                                        ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !2514
  br label %return, !dbg !2514

if.end34:                                         ; preds = %for.body
  %37 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2515
  %38 = load i32, i32* %i, align 4, !dbg !2516
  %mul35 = mul i32 3, %38, !dbg !2517
  %add = add i32 %mul35, 1, !dbg !2518
  %call36 = call i32 @of_property_read_u32_index(%struct.device_node* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %add, i32* %tmp) #8, !dbg !2519
  %39 = load i32, i32* %tmp, align 4, !dbg !2520
  %conv37 = zext i32 %39 to i64, !dbg !2520
  %40 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timers, align 8, !dbg !2521
  %41 = load i32, i32* %i, align 4, !dbg !2522
  %idxprom38 = sext i32 %41 to i64, !dbg !2521
  %arrayidx39 = getelementptr %struct.netxbig_led_timer, %struct.netxbig_led_timer* %40, i64 %idxprom38, !dbg !2521
  %delay_on = getelementptr inbounds %struct.netxbig_led_timer, %struct.netxbig_led_timer* %arrayidx39, i32 0, i32 0, !dbg !2523
  store i64 %conv37, i64* %delay_on, align 8, !dbg !2524
  %42 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2525
  %43 = load i32, i32* %i, align 4, !dbg !2526
  %mul40 = mul i32 3, %43, !dbg !2527
  %add41 = add i32 %mul40, 2, !dbg !2528
  %call42 = call i32 @of_property_read_u32_index(%struct.device_node* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %add41, i32* %tmp) #8, !dbg !2529
  %44 = load i32, i32* %tmp, align 4, !dbg !2530
  %conv43 = zext i32 %44 to i64, !dbg !2530
  %45 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timers, align 8, !dbg !2531
  %46 = load i32, i32* %i, align 4, !dbg !2532
  %idxprom44 = sext i32 %46 to i64, !dbg !2531
  %arrayidx45 = getelementptr %struct.netxbig_led_timer, %struct.netxbig_led_timer* %45, i64 %idxprom44, !dbg !2531
  %delay_off = getelementptr inbounds %struct.netxbig_led_timer, %struct.netxbig_led_timer* %arrayidx45, i32 0, i32 1, !dbg !2533
  store i64 %conv43, i64* %delay_off, align 8, !dbg !2534
  br label %for.inc, !dbg !2535

for.inc:                                          ; preds = %if.end34
  %47 = load i32, i32* %i, align 4, !dbg !2536
  %inc = add i32 %47, 1, !dbg !2536
  store i32 %inc, i32* %i, align 4, !dbg !2536
  br label %for.cond, !dbg !2537, !llvm.loop !2538

for.end:                                          ; preds = %for.cond
  %48 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timers, align 8, !dbg !2540
  %49 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata.addr, align 8, !dbg !2541
  %timer = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %49, i32 0, i32 1, !dbg !2542
  store %struct.netxbig_led_timer* %48, %struct.netxbig_led_timer** %timer, align 8, !dbg !2543
  %50 = load i32, i32* %num_timers, align 4, !dbg !2544
  %51 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata.addr, align 8, !dbg !2545
  %num_timer = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %51, i32 0, i32 2, !dbg !2546
  store i32 %50, i32* %num_timer, align 8, !dbg !2547
  br label %if.end46, !dbg !2548

if.end46:                                         ; preds = %for.end, %if.end14
  %52 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2549
  %call47 = call i32 @of_get_available_child_count(%struct.device_node* %52) #8, !dbg !2550
  store i32 %call47, i32* %num_leds, align 4, !dbg !2551
  %53 = load i32, i32* %num_leds, align 4, !dbg !2552
  %tobool48 = icmp ne i32 %53, 0, !dbg !2552
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !2554

if.then49:                                        ; preds = %if.end46
  %54 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2555
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !2555
  store i32 -19, i32* %retval, align 4, !dbg !2557
  br label %return, !dbg !2557

if.end50:                                         ; preds = %if.end46
  %55 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2558
  %56 = load i32, i32* %num_leds, align 4, !dbg !2559
  %conv51 = sext i32 %56 to i64, !dbg !2559
  %call52 = call i8* @devm_kcalloc(%struct.device* %55, i64 %conv51, i64 40, i32 3264) #8, !dbg !2560
  %57 = bitcast i8* %call52 to %struct.netxbig_led*, !dbg !2560
  store %struct.netxbig_led* %57, %struct.netxbig_led** %leds, align 8, !dbg !2561
  %58 = load %struct.netxbig_led*, %struct.netxbig_led** %leds, align 8, !dbg !2562
  %tobool53 = icmp ne %struct.netxbig_led* %58, null, !dbg !2562
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !2564

if.then54:                                        ; preds = %if.end50
  store i32 -12, i32* %retval, align 4, !dbg !2565
  br label %return, !dbg !2565

if.end55:                                         ; preds = %if.end50
  %59 = load %struct.netxbig_led*, %struct.netxbig_led** %leds, align 8, !dbg !2566
  store %struct.netxbig_led* %59, %struct.netxbig_led** %led, align 8, !dbg !2567
  %60 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2568
  %call56 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %60, %struct.device_node* null) #8, !dbg !2568
  store %struct.device_node* %call56, %struct.device_node** %child, align 8, !dbg !2568
  br label %for.cond57, !dbg !2568

for.cond57:                                       ; preds = %for.inc128, %if.end55
  %61 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2570
  %cmp58 = icmp ne %struct.device_node* %61, null, !dbg !2570
  br i1 %cmp58, label %for.body60, label %for.end130, !dbg !2568

for.body60:                                       ; preds = %for.cond57
  call void @llvm.dbg.declare(metadata i8** %string, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.declare(metadata i32** %mode_val, metadata !2575, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.declare(metadata i32* %num_modes, metadata !2577, metadata !DIExpression()), !dbg !2578
  %62 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2579
  %63 = load %struct.netxbig_led*, %struct.netxbig_led** %led, align 8, !dbg !2580
  %mode_addr = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %63, i32 0, i32 2, !dbg !2581
  %call61 = call i32 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %mode_addr) #8, !dbg !2582
  store i32 %call61, i32* %ret, align 4, !dbg !2583
  %64 = load i32, i32* %ret, align 4, !dbg !2584
  %tobool62 = icmp ne i32 %64, 0, !dbg !2584
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !2586

if.then63:                                        ; preds = %for.body60
  br label %err_node_put, !dbg !2587

if.end64:                                         ; preds = %for.body60
  %65 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2588
  %66 = load %struct.netxbig_led*, %struct.netxbig_led** %led, align 8, !dbg !2589
  %bright_addr = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %66, i32 0, i32 4, !dbg !2590
  %call65 = call i32 @of_property_read_u32(%struct.device_node* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %bright_addr) #8, !dbg !2591
  store i32 %call65, i32* %ret, align 4, !dbg !2592
  %67 = load i32, i32* %ret, align 4, !dbg !2593
  %tobool66 = icmp ne i32 %67, 0, !dbg !2593
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !2595

if.then67:                                        ; preds = %if.end64
  br label %err_node_put, !dbg !2596

if.end68:                                         ; preds = %if.end64
  %68 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2597
  %69 = load %struct.netxbig_led*, %struct.netxbig_led** %led, align 8, !dbg !2598
  %bright_max = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %69, i32 0, i32 5, !dbg !2599
  %call69 = call i32 @of_property_read_u32(%struct.device_node* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %bright_max) #8, !dbg !2600
  store i32 %call69, i32* %ret, align 4, !dbg !2601
  %70 = load i32, i32* %ret, align 4, !dbg !2602
  %tobool70 = icmp ne i32 %70, 0, !dbg !2602
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !2604

if.then71:                                        ; preds = %if.end68
  br label %err_node_put, !dbg !2605

if.end72:                                         ; preds = %if.end68
  %71 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2606
  %call73 = call i8* @devm_kcalloc(%struct.device* %71, i64 5, i64 4, i32 3264) #8, !dbg !2607
  %72 = bitcast i8* %call73 to i32*, !dbg !2607
  store i32* %72, i32** %mode_val, align 8, !dbg !2608
  %73 = load i32*, i32** %mode_val, align 8, !dbg !2609
  %tobool74 = icmp ne i32* %73, null, !dbg !2609
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !2611

if.then75:                                        ; preds = %if.end72
  store i32 -12, i32* %ret, align 4, !dbg !2612
  br label %err_node_put, !dbg !2614

if.end76:                                         ; preds = %if.end72
  store i32 0, i32* %i, align 4, !dbg !2615
  br label %for.cond77, !dbg !2617

for.cond77:                                       ; preds = %for.inc83, %if.end76
  %74 = load i32, i32* %i, align 4, !dbg !2618
  %cmp78 = icmp slt i32 %74, 5, !dbg !2620
  br i1 %cmp78, label %for.body80, label %for.end85, !dbg !2621

for.body80:                                       ; preds = %for.cond77
  %75 = load i32*, i32** %mode_val, align 8, !dbg !2622
  %76 = load i32, i32* %i, align 4, !dbg !2623
  %idxprom81 = sext i32 %76 to i64, !dbg !2622
  %arrayidx82 = getelementptr i32, i32* %75, i64 %idxprom81, !dbg !2622
  store i32 5, i32* %arrayidx82, align 4, !dbg !2624
  br label %for.inc83, !dbg !2622

for.inc83:                                        ; preds = %for.body80
  %77 = load i32, i32* %i, align 4, !dbg !2625
  %inc84 = add i32 %77, 1, !dbg !2625
  store i32 %inc84, i32* %i, align 4, !dbg !2625
  br label %for.cond77, !dbg !2626, !llvm.loop !2627

for.end85:                                        ; preds = %for.cond77
  %78 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2629
  %call86 = call i32 @of_property_count_u32_elems(%struct.device_node* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !2630
  store i32 %call86, i32* %ret, align 4, !dbg !2631
  %79 = load i32, i32* %ret, align 4, !dbg !2632
  %cmp87 = icmp slt i32 %79, 0, !dbg !2634
  br i1 %cmp87, label %if.then91, label %lor.lhs.false, !dbg !2635

lor.lhs.false:                                    ; preds = %for.end85
  %80 = load i32, i32* %ret, align 4, !dbg !2636
  %rem89 = srem i32 %80, 2, !dbg !2637
  %tobool90 = icmp ne i32 %rem89, 0, !dbg !2637
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !2638

if.then91:                                        ; preds = %lor.lhs.false, %for.end85
  store i32 -22, i32* %ret, align 4, !dbg !2639
  br label %err_node_put, !dbg !2641

if.end92:                                         ; preds = %lor.lhs.false
  %81 = load i32, i32* %ret, align 4, !dbg !2642
  %div93 = sdiv i32 %81, 2, !dbg !2643
  store i32 %div93, i32* %num_modes, align 4, !dbg !2644
  %82 = load i32, i32* %num_modes, align 4, !dbg !2645
  %cmp94 = icmp sgt i32 %82, 5, !dbg !2647
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !2648

if.then96:                                        ; preds = %if.end92
  store i32 -22, i32* %ret, align 4, !dbg !2649
  br label %err_node_put, !dbg !2651

if.end97:                                         ; preds = %if.end92
  store i32 0, i32* %i, align 4, !dbg !2652
  br label %for.cond98, !dbg !2654

for.cond98:                                       ; preds = %for.inc114, %if.end97
  %83 = load i32, i32* %i, align 4, !dbg !2655
  %84 = load i32, i32* %num_modes, align 4, !dbg !2657
  %cmp99 = icmp slt i32 %83, %84, !dbg !2658
  br i1 %cmp99, label %for.body101, label %for.end116, !dbg !2659

for.body101:                                      ; preds = %for.cond98
  call void @llvm.dbg.declare(metadata i32* %mode102, metadata !2660, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2663, metadata !DIExpression()), !dbg !2664
  %85 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2665
  %86 = load i32, i32* %i, align 4, !dbg !2666
  %mul103 = mul i32 2, %86, !dbg !2667
  %call104 = call i32 @of_property_read_u32_index(%struct.device_node* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %mul103, i32* %mode102) #8, !dbg !2668
  %87 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2669
  %88 = load i32, i32* %i, align 4, !dbg !2670
  %mul105 = mul i32 2, %88, !dbg !2671
  %add106 = add i32 %mul105, 1, !dbg !2672
  %call107 = call i32 @of_property_read_u32_index(%struct.device_node* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %add106, i32* %val) #8, !dbg !2673
  %89 = load i32, i32* %mode102, align 4, !dbg !2674
  %cmp108 = icmp sge i32 %89, 5, !dbg !2676
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !2677

if.then110:                                       ; preds = %for.body101
  store i32 -22, i32* %ret, align 4, !dbg !2678
  br label %err_node_put, !dbg !2680

if.end111:                                        ; preds = %for.body101
  %90 = load i32, i32* %val, align 4, !dbg !2681
  %91 = load i32*, i32** %mode_val, align 8, !dbg !2682
  %92 = load i32, i32* %mode102, align 4, !dbg !2683
  %idxprom112 = sext i32 %92 to i64, !dbg !2682
  %arrayidx113 = getelementptr i32, i32* %91, i64 %idxprom112, !dbg !2682
  store i32 %90, i32* %arrayidx113, align 4, !dbg !2684
  br label %for.inc114, !dbg !2685

for.inc114:                                       ; preds = %if.end111
  %93 = load i32, i32* %i, align 4, !dbg !2686
  %inc115 = add i32 %93, 1, !dbg !2686
  store i32 %inc115, i32* %i, align 4, !dbg !2686
  br label %for.cond98, !dbg !2687, !llvm.loop !2688

for.end116:                                       ; preds = %for.cond98
  %94 = load i32*, i32** %mode_val, align 8, !dbg !2690
  %95 = load %struct.netxbig_led*, %struct.netxbig_led** %led, align 8, !dbg !2691
  %mode_val117 = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %95, i32 0, i32 3, !dbg !2692
  store i32* %94, i32** %mode_val117, align 8, !dbg !2693
  %96 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2694
  %call118 = call i32 @of_property_read_string(%struct.device_node* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %string) #8, !dbg !2696
  %tobool119 = icmp ne i32 %call118, 0, !dbg !2696
  br i1 %tobool119, label %if.else, label %if.then120, !dbg !2697

if.then120:                                       ; preds = %for.end116
  %97 = load i8*, i8** %string, align 8, !dbg !2698
  %98 = load %struct.netxbig_led*, %struct.netxbig_led** %led, align 8, !dbg !2699
  %name = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %98, i32 0, i32 0, !dbg !2700
  store i8* %97, i8** %name, align 8, !dbg !2701
  br label %if.end123, !dbg !2699

if.else:                                          ; preds = %for.end116
  %99 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2702
  %name121 = getelementptr inbounds %struct.device_node, %struct.device_node* %99, i32 0, i32 0, !dbg !2703
  %100 = load i8*, i8** %name121, align 8, !dbg !2703
  %101 = load %struct.netxbig_led*, %struct.netxbig_led** %led, align 8, !dbg !2704
  %name122 = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %101, i32 0, i32 0, !dbg !2705
  store i8* %100, i8** %name122, align 8, !dbg !2706
  br label %if.end123

if.end123:                                        ; preds = %if.else, %if.then120
  %102 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2707
  %call124 = call i32 @of_property_read_string(%struct.device_node* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8** %string) #8, !dbg !2709
  %tobool125 = icmp ne i32 %call124, 0, !dbg !2709
  br i1 %tobool125, label %if.end127, label %if.then126, !dbg !2710

if.then126:                                       ; preds = %if.end123
  %103 = load i8*, i8** %string, align 8, !dbg !2711
  %104 = load %struct.netxbig_led*, %struct.netxbig_led** %led, align 8, !dbg !2712
  %default_trigger = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %104, i32 0, i32 1, !dbg !2713
  store i8* %103, i8** %default_trigger, align 8, !dbg !2714
  br label %if.end127, !dbg !2712

if.end127:                                        ; preds = %if.then126, %if.end123
  %105 = load %struct.netxbig_led*, %struct.netxbig_led** %led, align 8, !dbg !2715
  %incdec.ptr = getelementptr %struct.netxbig_led, %struct.netxbig_led* %105, i32 1, !dbg !2715
  store %struct.netxbig_led* %incdec.ptr, %struct.netxbig_led** %led, align 8, !dbg !2715
  br label %for.inc128, !dbg !2716

for.inc128:                                       ; preds = %if.end127
  %106 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2570
  %107 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2570
  %call129 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %106, %struct.device_node* %107) #8, !dbg !2570
  store %struct.device_node* %call129, %struct.device_node** %child, align 8, !dbg !2570
  br label %for.cond57, !dbg !2570, !llvm.loop !2717

for.end130:                                       ; preds = %for.cond57
  %108 = load %struct.netxbig_led*, %struct.netxbig_led** %leds, align 8, !dbg !2719
  %109 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata.addr, align 8, !dbg !2720
  %leds131 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %109, i32 0, i32 3, !dbg !2721
  store %struct.netxbig_led* %108, %struct.netxbig_led** %leds131, align 8, !dbg !2722
  %110 = load i32, i32* %num_leds, align 4, !dbg !2723
  %111 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata.addr, align 8, !dbg !2724
  %num_leds132 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %111, i32 0, i32 4, !dbg !2725
  store i32 %110, i32* %num_leds132, align 8, !dbg !2726
  store i32 0, i32* %retval, align 4, !dbg !2727
  br label %return, !dbg !2727

err_node_put:                                     ; preds = %if.then110, %if.then96, %if.then91, %if.then75, %if.then71, %if.then67, %if.then63
  call void @llvm.dbg.label(metadata !2728), !dbg !2729
  %112 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !2730
  call void @of_node_put(%struct.device_node* %112) #8, !dbg !2731
  %113 = load i32, i32* %ret, align 4, !dbg !2732
  store i32 %113, i32* %retval, align 4, !dbg !2733
  br label %return, !dbg !2733

return:                                           ; preds = %err_node_put, %for.end130, %if.then54, %if.then49, %if.then33, %if.then23, %if.then19, %if.then13, %if.then9, %if.then4, %if.then
  %114 = load i32, i32* %retval, align 4, !dbg !2734
  ret i32 %114, !dbg !2734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kcalloc(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !2735 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2738, metadata !DIExpression()), !dbg !2739
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2740, metadata !DIExpression()), !dbg !2741
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2742, metadata !DIExpression()), !dbg !2743
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2744, metadata !DIExpression()), !dbg !2745
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2746
  %1 = load i64, i64* %n.addr, align 8, !dbg !2747
  %2 = load i64, i64* %size.addr, align 8, !dbg !2748
  %3 = load i32, i32* %flags.addr, align 4, !dbg !2749
  %or = or i32 %3, 256, !dbg !2750
  %call = call i8* @devm_kmalloc_array(%struct.device* %0, i64 %1, i64 %2, i32 %or) #8, !dbg !2751
  ret i8* %call, !dbg !2752
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @create_netxbig_led(%struct.platform_device* %pdev, %struct.netxbig_led_platform_data* %pdata, %struct.netxbig_led_data* %led_dat, %struct.netxbig_led* %template) #2 !dbg !2753 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2758, metadata !DIExpression()), !dbg !2765
  %pdev.addr = alloca %struct.platform_device*, align 8
  %pdata.addr = alloca %struct.netxbig_led_platform_data*, align 8
  %led_dat.addr = alloca %struct.netxbig_led_data*, align 8
  %template.addr = alloca %struct.netxbig_led*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  store %struct.netxbig_led_platform_data* %pdata, %struct.netxbig_led_platform_data** %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_platform_data** %pdata.addr, metadata !2770, metadata !DIExpression()), !dbg !2771
  store %struct.netxbig_led_data* %led_dat, %struct.netxbig_led_data** %led_dat.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_data** %led_dat.addr, metadata !2772, metadata !DIExpression()), !dbg !2773
  store %struct.netxbig_led* %template, %struct.netxbig_led** %template.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_led** %template.addr, metadata !2774, metadata !DIExpression()), !dbg !2775
  br label %do.body, !dbg !2776

do.body:                                          ; preds = %entry
  %0 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2777
  %lock = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %0, i32 0, i32 9, !dbg !2777
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2778
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2779
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !2779
  %3 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2777
  %lock1 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %3, i32 0, i32 9, !dbg !2777
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !2777
  %rlock = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !2777
  %5 = bitcast %struct.spinlock* %lock1 to i8*, !dbg !2777
  %6 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !2777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 1 %6, i64 0, i1 false), !dbg !2777
  br label %do.end, !dbg !2777

do.end:                                           ; preds = %do.body
  %7 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata.addr, align 8, !dbg !2780
  %gpio_ext = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %7, i32 0, i32 0, !dbg !2781
  %8 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !2781
  %9 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2782
  %gpio_ext2 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %9, i32 0, i32 0, !dbg !2783
  store %struct.netxbig_gpio_ext* %8, %struct.netxbig_gpio_ext** %gpio_ext2, align 8, !dbg !2784
  %10 = load %struct.netxbig_led*, %struct.netxbig_led** %template.addr, align 8, !dbg !2785
  %name = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %10, i32 0, i32 0, !dbg !2786
  %11 = load i8*, i8** %name, align 8, !dbg !2786
  %12 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2787
  %cdev = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %12, i32 0, i32 1, !dbg !2788
  %name3 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev, i32 0, i32 0, !dbg !2789
  store i8* %11, i8** %name3, align 8, !dbg !2790
  %13 = load %struct.netxbig_led*, %struct.netxbig_led** %template.addr, align 8, !dbg !2791
  %default_trigger = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %13, i32 0, i32 1, !dbg !2792
  %14 = load i8*, i8** %default_trigger, align 8, !dbg !2792
  %15 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2793
  %cdev4 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %15, i32 0, i32 1, !dbg !2794
  %default_trigger5 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev4, i32 0, i32 14, !dbg !2795
  store i8* %14, i8** %default_trigger5, align 8, !dbg !2796
  %16 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2797
  %cdev6 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %16, i32 0, i32 1, !dbg !2798
  %blink_set = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev6, i32 0, i32 8, !dbg !2799
  store i32 (%struct.led_classdev*, i64*, i64*)* @netxbig_led_blink_set, i32 (%struct.led_classdev*, i64*, i64*)** %blink_set, align 8, !dbg !2800
  %17 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2801
  %cdev7 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %17, i32 0, i32 1, !dbg !2802
  %brightness_set = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev7, i32 0, i32 5, !dbg !2803
  store void (%struct.led_classdev*, i32)* @netxbig_led_set, void (%struct.led_classdev*, i32)** %brightness_set, align 8, !dbg !2804
  %18 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2805
  %sata = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %18, i32 0, i32 8, !dbg !2806
  store i32 0, i32* %sata, align 8, !dbg !2807
  %19 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2808
  %cdev8 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %19, i32 0, i32 1, !dbg !2809
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev8, i32 0, i32 1, !dbg !2810
  store i32 0, i32* %brightness, align 8, !dbg !2811
  %20 = load %struct.netxbig_led*, %struct.netxbig_led** %template.addr, align 8, !dbg !2812
  %bright_max = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %20, i32 0, i32 5, !dbg !2813
  %21 = load i32, i32* %bright_max, align 4, !dbg !2813
  %22 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2814
  %cdev9 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %22, i32 0, i32 1, !dbg !2815
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev9, i32 0, i32 2, !dbg !2816
  store i32 %21, i32* %max_brightness, align 4, !dbg !2817
  %23 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2818
  %cdev10 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %23, i32 0, i32 1, !dbg !2819
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev10, i32 0, i32 3, !dbg !2820
  %24 = load i32, i32* %flags, align 8, !dbg !2821
  %conv = sext i32 %24 to i64, !dbg !2821
  %or = or i64 %conv, 65536, !dbg !2821
  %conv11 = trunc i64 %or to i32, !dbg !2821
  store i32 %conv11, i32* %flags, align 8, !dbg !2821
  %25 = load %struct.netxbig_led*, %struct.netxbig_led** %template.addr, align 8, !dbg !2822
  %mode_addr = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %25, i32 0, i32 2, !dbg !2823
  %26 = load i32, i32* %mode_addr, align 8, !dbg !2823
  %27 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2824
  %mode_addr12 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %27, i32 0, i32 2, !dbg !2825
  store i32 %26, i32* %mode_addr12, align 8, !dbg !2826
  %28 = load %struct.netxbig_led*, %struct.netxbig_led** %template.addr, align 8, !dbg !2827
  %mode_val = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %28, i32 0, i32 3, !dbg !2828
  %29 = load i32*, i32** %mode_val, align 8, !dbg !2828
  %30 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2829
  %mode_val13 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %30, i32 0, i32 3, !dbg !2830
  store i32* %29, i32** %mode_val13, align 8, !dbg !2831
  %31 = load %struct.netxbig_led*, %struct.netxbig_led** %template.addr, align 8, !dbg !2832
  %bright_addr = getelementptr inbounds %struct.netxbig_led, %struct.netxbig_led* %31, i32 0, i32 4, !dbg !2833
  %32 = load i32, i32* %bright_addr, align 8, !dbg !2833
  %33 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2834
  %bright_addr14 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %33, i32 0, i32 4, !dbg !2835
  store i32 %32, i32* %bright_addr14, align 8, !dbg !2836
  %34 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata.addr, align 8, !dbg !2837
  %timer = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %34, i32 0, i32 1, !dbg !2838
  %35 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timer, align 8, !dbg !2838
  %36 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2839
  %timer15 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %36, i32 0, i32 5, !dbg !2840
  store %struct.netxbig_led_timer* %35, %struct.netxbig_led_timer** %timer15, align 8, !dbg !2841
  %37 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %pdata.addr, align 8, !dbg !2842
  %num_timer = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %37, i32 0, i32 2, !dbg !2843
  %38 = load i32, i32* %num_timer, align 8, !dbg !2843
  %39 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2844
  %num_timer16 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %39, i32 0, i32 6, !dbg !2845
  store i32 %38, i32* %num_timer16, align 8, !dbg !2846
  %40 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2847
  %mode_val17 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %40, i32 0, i32 3, !dbg !2849
  %41 = load i32*, i32** %mode_val17, align 8, !dbg !2849
  %arrayidx = getelementptr i32, i32* %41, i64 2, !dbg !2847
  %42 = load i32, i32* %arrayidx, align 4, !dbg !2847
  %cmp = icmp ne i32 %42, 5, !dbg !2850
  br i1 %cmp, label %if.then, label %if.end, !dbg !2851

if.then:                                          ; preds = %do.end
  %43 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2852
  %cdev19 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %43, i32 0, i32 1, !dbg !2853
  %groups = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev19, i32 0, i32 12, !dbg !2854
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @netxbig_led_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !2855
  br label %if.end, !dbg !2852

if.end:                                           ; preds = %if.then, %do.end
  %44 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2856
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 3, !dbg !2857
  %45 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat.addr, align 8, !dbg !2858
  %cdev20 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %45, i32 0, i32 1, !dbg !2859
  %call21 = call i32 @devm_led_classdev_register(%struct.device* %dev, %struct.led_classdev* %cdev20) #8, !dbg !2860
  ret i32 %call21, !dbg !2861
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @dev_of_node(%struct.device* %dev) #2 !dbg !2862 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2865, metadata !DIExpression()), !dbg !2866
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2867
  %tobool = icmp ne %struct.device* %0, null, !dbg !2867
  br i1 %tobool, label %if.end, label %if.then, !dbg !2869

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !2870
  br label %return, !dbg !2870

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2871
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !2872
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2872
  store %struct.device_node* %2, %struct.device_node** %retval, align 8, !dbg !2873
  br label %return, !dbg !2873

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !2874
  ret %struct.device_node* %3, !dbg !2874
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #2 !dbg !2875 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2878, metadata !DIExpression()), !dbg !2879
  ret void, !dbg !2880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @netxbig_gpio_ext_get(%struct.device* %dev, %struct.device* %gpio_ext_dev, %struct.netxbig_gpio_ext* %gpio_ext) #2 !dbg !2881 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %gpio_ext_dev.addr = alloca %struct.device*, align 8
  %gpio_ext.addr = alloca %struct.netxbig_gpio_ext*, align 8
  %addr = alloca %struct.gpio_desc**, align 8
  %data = alloca %struct.gpio_desc**, align 8
  %num_addr = alloca i32, align 4
  %num_data = alloca i32, align 4
  %gpiod = alloca %struct.gpio_desc*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2884, metadata !DIExpression()), !dbg !2885
  store %struct.device* %gpio_ext_dev, %struct.device** %gpio_ext_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %gpio_ext_dev.addr, metadata !2886, metadata !DIExpression()), !dbg !2887
  store %struct.netxbig_gpio_ext* %gpio_ext, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_gpio_ext** %gpio_ext.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.declare(metadata %struct.gpio_desc*** %addr, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.declare(metadata %struct.gpio_desc*** %data, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.declare(metadata i32* %num_addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.declare(metadata i32* %num_data, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %gpiod, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2902, metadata !DIExpression()), !dbg !2903
  %0 = load %struct.device*, %struct.device** %gpio_ext_dev.addr, align 8, !dbg !2904
  %call = call i32 @gpiod_count(%struct.device* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2905
  store i32 %call, i32* %ret, align 4, !dbg !2906
  %1 = load i32, i32* %ret, align 4, !dbg !2907
  %cmp = icmp slt i32 %1, 0, !dbg !2909
  br i1 %cmp, label %if.then, label %if.end, !dbg !2910

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2911
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !2911
  %3 = load i32, i32* %ret, align 4, !dbg !2913
  store i32 %3, i32* %retval, align 4, !dbg !2914
  br label %return, !dbg !2914

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !2915
  store i32 %4, i32* %num_addr, align 4, !dbg !2916
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2917
  %6 = load i32, i32* %num_addr, align 4, !dbg !2918
  %conv = sext i32 %6 to i64, !dbg !2918
  %call1 = call i8* @devm_kcalloc(%struct.device* %5, i64 %conv, i64 8, i32 3264) #8, !dbg !2919
  %7 = bitcast i8* %call1 to %struct.gpio_desc**, !dbg !2919
  store %struct.gpio_desc** %7, %struct.gpio_desc*** %addr, align 8, !dbg !2920
  %8 = load %struct.gpio_desc**, %struct.gpio_desc*** %addr, align 8, !dbg !2921
  %tobool = icmp ne %struct.gpio_desc** %8, null, !dbg !2921
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2923

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2924
  br label %return, !dbg !2924

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !2925
  br label %for.cond, !dbg !2927

for.cond:                                         ; preds = %for.inc, %if.end3
  %9 = load i32, i32* %i, align 4, !dbg !2928
  %10 = load i32, i32* %num_addr, align 4, !dbg !2930
  %cmp4 = icmp slt i32 %9, %10, !dbg !2931
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2932

for.body:                                         ; preds = %for.cond
  %11 = load %struct.device*, %struct.device** %gpio_ext_dev.addr, align 8, !dbg !2933
  %12 = load i32, i32* %i, align 4, !dbg !2935
  %call6 = call %struct.gpio_desc* @gpiod_get_index(%struct.device* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %12, i32 3) #8, !dbg !2936
  store %struct.gpio_desc* %call6, %struct.gpio_desc** %gpiod, align 8, !dbg !2937
  %13 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2938
  %14 = bitcast %struct.gpio_desc* %13 to i8*, !dbg !2938
  %call7 = call zeroext i1 @IS_ERR(i8* %14) #8, !dbg !2940
  br i1 %call7, label %if.then8, label %if.end11, !dbg !2941

if.then8:                                         ; preds = %for.body
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2942
  %16 = bitcast %struct.gpio_desc* %15 to i8*, !dbg !2942
  %call9 = call i64 @PTR_ERR(i8* %16) #8, !dbg !2943
  %conv10 = trunc i64 %call9 to i32, !dbg !2943
  store i32 %conv10, i32* %retval, align 4, !dbg !2944
  br label %return, !dbg !2944

if.end11:                                         ; preds = %for.body
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2945
  %call12 = call i32 @gpiod_set_consumer_name(%struct.gpio_desc* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2946
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2947
  %19 = load %struct.gpio_desc**, %struct.gpio_desc*** %addr, align 8, !dbg !2948
  %20 = load i32, i32* %i, align 4, !dbg !2949
  %idxprom = sext i32 %20 to i64, !dbg !2948
  %arrayidx = getelementptr %struct.gpio_desc*, %struct.gpio_desc** %19, i64 %idxprom, !dbg !2948
  store %struct.gpio_desc* %18, %struct.gpio_desc** %arrayidx, align 8, !dbg !2950
  br label %for.inc, !dbg !2951

for.inc:                                          ; preds = %if.end11
  %21 = load i32, i32* %i, align 4, !dbg !2952
  %inc = add i32 %21, 1, !dbg !2952
  store i32 %inc, i32* %i, align 4, !dbg !2952
  br label %for.cond, !dbg !2953, !llvm.loop !2954

for.end:                                          ; preds = %for.cond
  %22 = load %struct.gpio_desc**, %struct.gpio_desc*** %addr, align 8, !dbg !2956
  %23 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !2957
  %addr13 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %23, i32 0, i32 0, !dbg !2958
  store %struct.gpio_desc** %22, %struct.gpio_desc*** %addr13, align 8, !dbg !2959
  %24 = load i32, i32* %num_addr, align 4, !dbg !2960
  %25 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !2961
  %num_addr14 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %25, i32 0, i32 1, !dbg !2962
  store i32 %24, i32* %num_addr14, align 8, !dbg !2963
  %26 = load %struct.device*, %struct.device** %gpio_ext_dev.addr, align 8, !dbg !2964
  %call15 = call i32 @gpiod_count(%struct.device* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !2965
  store i32 %call15, i32* %ret, align 4, !dbg !2966
  %27 = load i32, i32* %ret, align 4, !dbg !2967
  %cmp16 = icmp slt i32 %27, 0, !dbg !2969
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2970

if.then18:                                        ; preds = %for.end
  %28 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2971
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !2971
  %29 = load i32, i32* %ret, align 4, !dbg !2973
  store i32 %29, i32* %retval, align 4, !dbg !2974
  br label %return, !dbg !2974

if.end19:                                         ; preds = %for.end
  %30 = load i32, i32* %ret, align 4, !dbg !2975
  store i32 %30, i32* %num_data, align 4, !dbg !2976
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2977
  %32 = load i32, i32* %num_data, align 4, !dbg !2978
  %conv20 = sext i32 %32 to i64, !dbg !2978
  %call21 = call i8* @devm_kcalloc(%struct.device* %31, i64 %conv20, i64 8, i32 3264) #8, !dbg !2979
  %33 = bitcast i8* %call21 to %struct.gpio_desc**, !dbg !2979
  store %struct.gpio_desc** %33, %struct.gpio_desc*** %data, align 8, !dbg !2980
  %34 = load %struct.gpio_desc**, %struct.gpio_desc*** %data, align 8, !dbg !2981
  %tobool22 = icmp ne %struct.gpio_desc** %34, null, !dbg !2981
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2983

if.then23:                                        ; preds = %if.end19
  store i32 -12, i32* %retval, align 4, !dbg !2984
  br label %return, !dbg !2984

if.end24:                                         ; preds = %if.end19
  store i32 0, i32* %i, align 4, !dbg !2985
  br label %for.cond25, !dbg !2987

for.cond25:                                       ; preds = %for.inc38, %if.end24
  %35 = load i32, i32* %i, align 4, !dbg !2988
  %36 = load i32, i32* %num_data, align 4, !dbg !2990
  %cmp26 = icmp slt i32 %35, %36, !dbg !2991
  br i1 %cmp26, label %for.body28, label %for.end40, !dbg !2992

for.body28:                                       ; preds = %for.cond25
  %37 = load %struct.device*, %struct.device** %gpio_ext_dev.addr, align 8, !dbg !2993
  %38 = load i32, i32* %i, align 4, !dbg !2995
  %call29 = call %struct.gpio_desc* @gpiod_get_index(%struct.device* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %38, i32 3) #8, !dbg !2996
  store %struct.gpio_desc* %call29, %struct.gpio_desc** %gpiod, align 8, !dbg !2997
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !2998
  %40 = bitcast %struct.gpio_desc* %39 to i8*, !dbg !2998
  %call30 = call zeroext i1 @IS_ERR(i8* %40) #8, !dbg !3000
  br i1 %call30, label %if.then31, label %if.end34, !dbg !3001

if.then31:                                        ; preds = %for.body28
  %41 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !3002
  %42 = bitcast %struct.gpio_desc* %41 to i8*, !dbg !3002
  %call32 = call i64 @PTR_ERR(i8* %42) #8, !dbg !3003
  %conv33 = trunc i64 %call32 to i32, !dbg !3003
  store i32 %conv33, i32* %retval, align 4, !dbg !3004
  br label %return, !dbg !3004

if.end34:                                         ; preds = %for.body28
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !3005
  %call35 = call i32 @gpiod_set_consumer_name(%struct.gpio_desc* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !3006
  %44 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !3007
  %45 = load %struct.gpio_desc**, %struct.gpio_desc*** %data, align 8, !dbg !3008
  %46 = load i32, i32* %i, align 4, !dbg !3009
  %idxprom36 = sext i32 %46 to i64, !dbg !3008
  %arrayidx37 = getelementptr %struct.gpio_desc*, %struct.gpio_desc** %45, i64 %idxprom36, !dbg !3008
  store %struct.gpio_desc* %44, %struct.gpio_desc** %arrayidx37, align 8, !dbg !3010
  br label %for.inc38, !dbg !3011

for.inc38:                                        ; preds = %if.end34
  %47 = load i32, i32* %i, align 4, !dbg !3012
  %inc39 = add i32 %47, 1, !dbg !3012
  store i32 %inc39, i32* %i, align 4, !dbg !3012
  br label %for.cond25, !dbg !3013, !llvm.loop !3014

for.end40:                                        ; preds = %for.cond25
  %48 = load %struct.gpio_desc**, %struct.gpio_desc*** %data, align 8, !dbg !3016
  %49 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3017
  %data41 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %49, i32 0, i32 2, !dbg !3018
  store %struct.gpio_desc** %48, %struct.gpio_desc*** %data41, align 8, !dbg !3019
  %50 = load i32, i32* %num_data, align 4, !dbg !3020
  %51 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3021
  %num_data42 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %51, i32 0, i32 3, !dbg !3022
  store i32 %50, i32* %num_data42, align 8, !dbg !3023
  %52 = load %struct.device*, %struct.device** %gpio_ext_dev.addr, align 8, !dbg !3024
  %call43 = call %struct.gpio_desc* @gpiod_get(%struct.device* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 3) #8, !dbg !3025
  store %struct.gpio_desc* %call43, %struct.gpio_desc** %gpiod, align 8, !dbg !3026
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !3027
  %54 = bitcast %struct.gpio_desc* %53 to i8*, !dbg !3027
  %call44 = call zeroext i1 @IS_ERR(i8* %54) #8, !dbg !3029
  br i1 %call44, label %if.then45, label %if.end48, !dbg !3030

if.then45:                                        ; preds = %for.end40
  %55 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3031
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !3031
  %56 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !3033
  %57 = bitcast %struct.gpio_desc* %56 to i8*, !dbg !3033
  %call46 = call i64 @PTR_ERR(i8* %57) #8, !dbg !3034
  %conv47 = trunc i64 %call46 to i32, !dbg !3034
  store i32 %conv47, i32* %retval, align 4, !dbg !3035
  br label %return, !dbg !3035

if.end48:                                         ; preds = %for.end40
  %58 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !3036
  %call49 = call i32 @gpiod_set_consumer_name(%struct.gpio_desc* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !3037
  %59 = load %struct.gpio_desc*, %struct.gpio_desc** %gpiod, align 8, !dbg !3038
  %60 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3039
  %enable = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %60, i32 0, i32 4, !dbg !3040
  store %struct.gpio_desc* %59, %struct.gpio_desc** %enable, align 8, !dbg !3041
  %61 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3042
  %62 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3043
  %63 = bitcast %struct.netxbig_gpio_ext* %62 to i8*, !dbg !3043
  %call50 = call i32 @devm_add_action_or_reset(%struct.device* %61, void (i8*)* @netxbig_gpio_ext_remove, i8* %63) #8, !dbg !3044
  store i32 %call50, i32* %retval, align 4, !dbg !3045
  br label %return, !dbg !3045

return:                                           ; preds = %if.end48, %if.then45, %if.then31, %if.then23, %if.then18, %if.then8, %if.then2, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !3046
  ret i32 %64, !dbg !3046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_count_u32_elems(%struct.device_node* %np, i8* %propname) #2 !dbg !3047 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3052, metadata !DIExpression()), !dbg !3053
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3054, metadata !DIExpression()), !dbg !3055
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3056
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3057
  %call = call i32 @of_property_count_elems_of_size(%struct.device_node* %0, i8* %1, i32 4) #8, !dbg !3058
  ret i32 %call, !dbg !3059
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_get_available_child_count(%struct.device_node* %np) #2 !dbg !3060 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %num = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3063, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !3065, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.declare(metadata i32* %num, metadata !3067, metadata !DIExpression()), !dbg !3068
  store i32 0, i32* %num, align 4, !dbg !3068
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3069
  %call = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %0, %struct.device_node* null) #8, !dbg !3069
  store %struct.device_node* %call, %struct.device_node** %child, align 8, !dbg !3069
  br label %for.cond, !dbg !3069

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3071
  %cmp = icmp ne %struct.device_node* %1, null, !dbg !3071
  br i1 %cmp, label %for.body, label %for.end, !dbg !3069

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %num, align 4, !dbg !3073
  %inc = add i32 %2, 1, !dbg !3073
  store i32 %inc, i32* %num, align 4, !dbg !3073
  br label %for.inc, !dbg !3074

for.inc:                                          ; preds = %for.body
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3071
  %4 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3071
  %call1 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %3, %struct.device_node* %4) #8, !dbg !3071
  store %struct.device_node* %call1, %struct.device_node** %child, align 8, !dbg !3071
  br label %for.cond, !dbg !3071, !llvm.loop !3075

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %num, align 4, !dbg !3077
  ret i32 %5, !dbg !3078
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, %struct.device_node*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #2 !dbg !3079 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3082, metadata !DIExpression()), !dbg !3083
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3084, metadata !DIExpression()), !dbg !3085
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3086, metadata !DIExpression()), !dbg !3087
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3088
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3089
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3090
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #8, !dbg !3091
  ret i32 %call, !dbg !3092
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @gpiod_count(%struct.device*, i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @gpiod_get_index(%struct.device*, i8*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !3093 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3097, metadata !DIExpression()), !dbg !3098
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3099
  %1 = ptrtoint i8* %0 to i64, !dbg !3099
  %2 = inttoptr i64 %1 to i8*, !dbg !3099
  %3 = ptrtoint i8* %2 to i64, !dbg !3099
  %cmp = icmp uge i64 %3, -4095, !dbg !3099
  %lnot = xor i1 %cmp, true, !dbg !3099
  %lnot1 = xor i1 %lnot, true, !dbg !3099
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3099
  %conv = sext i32 %lnot.ext to i64, !dbg !3099
  %tobool = icmp ne i64 %conv, 0, !dbg !3099
  ret i1 %tobool, !dbg !3100
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !3101 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3104, metadata !DIExpression()), !dbg !3105
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3106
  %1 = ptrtoint i8* %0 to i64, !dbg !3107
  ret i64 %1, !dbg !3108
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_set_consumer_name(%struct.gpio_desc*, i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @gpiod_get(%struct.device*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_add_action_or_reset(%struct.device* %dev, void (i8*)* %action, i8* %data) #2 !dbg !3109 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %action.addr = alloca void (i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3112, metadata !DIExpression()), !dbg !3113
  store void (i8*)* %action, void (i8*)** %action.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %action.addr, metadata !3114, metadata !DIExpression()), !dbg !3115
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3118, metadata !DIExpression()), !dbg !3119
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3120
  %1 = load void (i8*)*, void (i8*)** %action.addr, align 8, !dbg !3121
  %2 = load i8*, i8** %data.addr, align 8, !dbg !3122
  %call = call i32 @devm_add_action(%struct.device* %0, void (i8*)* %1, i8* %2) #8, !dbg !3123
  store i32 %call, i32* %ret, align 4, !dbg !3124
  %3 = load i32, i32* %ret, align 4, !dbg !3125
  %tobool = icmp ne i32 %3, 0, !dbg !3125
  br i1 %tobool, label %if.then, label %if.end, !dbg !3127

if.then:                                          ; preds = %entry
  %4 = load void (i8*)*, void (i8*)** %action.addr, align 8, !dbg !3128
  %5 = load i8*, i8** %data.addr, align 8, !dbg !3129
  call void %4(i8* %5) #8, !dbg !3128
  br label %if.end, !dbg !3128

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %ret, align 4, !dbg !3130
  ret i32 %6, !dbg !3131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @netxbig_gpio_ext_remove(i8* %data) #2 !dbg !3132 {
entry:
  %data.addr = alloca i8*, align 8
  %gpio_ext = alloca %struct.netxbig_gpio_ext*, align 8
  %i = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.declare(metadata %struct.netxbig_gpio_ext** %gpio_ext, metadata !3135, metadata !DIExpression()), !dbg !3136
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3137
  %1 = bitcast i8* %0 to %struct.netxbig_gpio_ext*, !dbg !3137
  store %struct.netxbig_gpio_ext* %1, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3136
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3138, metadata !DIExpression()), !dbg !3139
  store i32 0, i32* %i, align 4, !dbg !3140
  br label %for.cond, !dbg !3142

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3143
  %3 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3145
  %num_addr = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %3, i32 0, i32 1, !dbg !3146
  %4 = load i32, i32* %num_addr, align 8, !dbg !3146
  %cmp = icmp slt i32 %2, %4, !dbg !3147
  br i1 %cmp, label %for.body, label %for.end, !dbg !3148

for.body:                                         ; preds = %for.cond
  %5 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3149
  %addr = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %5, i32 0, i32 0, !dbg !3150
  %6 = load %struct.gpio_desc**, %struct.gpio_desc*** %addr, align 8, !dbg !3150
  %7 = load i32, i32* %i, align 4, !dbg !3151
  %idxprom = sext i32 %7 to i64, !dbg !3149
  %arrayidx = getelementptr %struct.gpio_desc*, %struct.gpio_desc** %6, i64 %idxprom, !dbg !3149
  %8 = load %struct.gpio_desc*, %struct.gpio_desc** %arrayidx, align 8, !dbg !3149
  call void @gpiod_put(%struct.gpio_desc* %8) #8, !dbg !3152
  br label %for.inc, !dbg !3152

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !3153
  %inc = add i32 %9, 1, !dbg !3153
  store i32 %inc, i32* %i, align 4, !dbg !3153
  br label %for.cond, !dbg !3154, !llvm.loop !3155

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !3157
  br label %for.cond1, !dbg !3159

for.cond1:                                        ; preds = %for.inc7, %for.end
  %10 = load i32, i32* %i, align 4, !dbg !3160
  %11 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3162
  %num_data = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %11, i32 0, i32 3, !dbg !3163
  %12 = load i32, i32* %num_data, align 8, !dbg !3163
  %cmp2 = icmp slt i32 %10, %12, !dbg !3164
  br i1 %cmp2, label %for.body3, label %for.end9, !dbg !3165

for.body3:                                        ; preds = %for.cond1
  %13 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3166
  %data4 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %13, i32 0, i32 2, !dbg !3167
  %14 = load %struct.gpio_desc**, %struct.gpio_desc*** %data4, align 8, !dbg !3167
  %15 = load i32, i32* %i, align 4, !dbg !3168
  %idxprom5 = sext i32 %15 to i64, !dbg !3166
  %arrayidx6 = getelementptr %struct.gpio_desc*, %struct.gpio_desc** %14, i64 %idxprom5, !dbg !3166
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %arrayidx6, align 8, !dbg !3166
  call void @gpiod_put(%struct.gpio_desc* %16) #8, !dbg !3169
  br label %for.inc7, !dbg !3169

for.inc7:                                         ; preds = %for.body3
  %17 = load i32, i32* %i, align 4, !dbg !3170
  %inc8 = add i32 %17, 1, !dbg !3170
  store i32 %inc8, i32* %i, align 4, !dbg !3170
  br label %for.cond1, !dbg !3171, !llvm.loop !3172

for.end9:                                         ; preds = %for.cond1
  %18 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3174
  %enable = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %18, i32 0, i32 4, !dbg !3175
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %enable, align 8, !dbg !3175
  call void @gpiod_put(%struct.gpio_desc* %19) #8, !dbg !3176
  ret void, !dbg !3177
}

; Function Attrs: noredzone
declare dso_local i32 @devm_add_action(%struct.device*, void (i8*)*, i8*) #1

; Function Attrs: noredzone
declare dso_local void @gpiod_put(%struct.gpio_desc*) #1

; Function Attrs: noredzone
declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #2 !dbg !3178 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3181, metadata !DIExpression()), !dbg !3182
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3183, metadata !DIExpression()), !dbg !3184
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3189, metadata !DIExpression()), !dbg !3190
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3191
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3192
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3193
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3194
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #8, !dbg !3195
  store i32 %call, i32* %ret, align 4, !dbg !3190
  %4 = load i32, i32* %ret, align 4, !dbg !3196
  %cmp = icmp sge i32 %4, 0, !dbg !3198
  br i1 %cmp, label %if.then, label %if.else, !dbg !3199

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3200
  br label %return, !dbg !3200

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3201
  store i32 %5, i32* %retval, align 4, !dbg !3202
  br label %return, !dbg !3202

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3203
  ret i32 %6, !dbg !3203
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kmalloc_array(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !3204 {
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
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3209, metadata !DIExpression()), !dbg !3210
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3215, metadata !DIExpression()), !dbg !3218
  %0 = load i64, i64* %n.addr, align 8, !dbg !3218
  store i64 %0, i64* %__a, align 8, !dbg !3218
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3219, metadata !DIExpression()), !dbg !3218
  %1 = load i64, i64* %size.addr, align 8, !dbg !3218
  store i64 %1, i64* %__b, align 8, !dbg !3218
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3220, metadata !DIExpression()), !dbg !3218
  store i64* %bytes, i64** %__d, align 8, !dbg !3218
  %cmp = icmp eq i64* %__a, %__b, !dbg !3218
  %conv = zext i1 %cmp to i32, !dbg !3218
  %2 = load i64*, i64** %__d, align 8, !dbg !3218
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3218
  %conv2 = zext i1 %cmp1 to i32, !dbg !3218
  %3 = load i64, i64* %__a, align 8, !dbg !3218
  %4 = load i64, i64* %__b, align 8, !dbg !3218
  %5 = load i64*, i64** %__d, align 8, !dbg !3218
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3218
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3218
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3218
  store i64 %8, i64* %5, align 8, !dbg !3218
  %frombool = zext i1 %7 to i8, !dbg !3218
  store i8 %frombool, i8* %tmp, align 1, !dbg !3218
  %9 = load i8, i8* %tmp, align 1, !dbg !3218
  %tobool = trunc i8 %9 to i1, !dbg !3218
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !3222
  %lnot = xor i1 %call, true, !dbg !3222
  %lnot3 = xor i1 %lnot, true, !dbg !3222
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3222
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3222
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3222
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3223

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3224
  br label %return, !dbg !3224

if.end:                                           ; preds = %entry
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3225
  %11 = load i64, i64* %bytes, align 8, !dbg !3226
  %12 = load i32, i32* %flags.addr, align 4, !dbg !3227
  %call6 = call noalias i8* @devm_kmalloc(%struct.device* %10, i64 %11, i32 %12) #8, !dbg !3228
  store i8* %call6, i8** %retval, align 8, !dbg !3229
  br label %return, !dbg !3229

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !3230
  ret i8* %13, !dbg !3230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !3231 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3235, metadata !DIExpression()), !dbg !3236
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3237
  %tobool = trunc i8 %0 to i1, !dbg !3237
  %lnot = xor i1 %tobool, true, !dbg !3237
  %lnot1 = xor i1 %lnot, true, !dbg !3237
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3237
  %conv = sext i32 %lnot.ext to i64, !dbg !3237
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3237
  ret i1 %tobool2, !dbg !3238
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @netxbig_led_blink_set(%struct.led_classdev* %led_cdev, i64* %delay_on, i64* %delay_off) #2 !dbg !3239 {
entry:
  %lock.addr.i7 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i7, metadata !3240, metadata !DIExpression()), !dbg !3244
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3246, metadata !DIExpression()), !dbg !3248
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %delay_on.addr = alloca i64*, align 8
  %delay_off.addr = alloca i64*, align 8
  %led_dat = alloca %struct.netxbig_led_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.netxbig_led_data*, align 8
  %mode = alloca i32, align 4
  %mode_val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !3250, metadata !DIExpression()), !dbg !3251
  store i64* %delay_on, i64** %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %delay_on.addr, metadata !3252, metadata !DIExpression()), !dbg !3253
  store i64* %delay_off, i64** %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %delay_off.addr, metadata !3254, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_data** %led_dat, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3258, metadata !DIExpression()), !dbg !3260
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3260
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !3260
  store i8* %1, i8** %__mptr, align 8, !dbg !3260
  br label %do.body, !dbg !3260

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3261

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3260
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3260
  %3 = bitcast i8* %add.ptr to %struct.netxbig_led_data*, !dbg !3260
  store %struct.netxbig_led_data* %3, %struct.netxbig_led_data** %tmp, align 8, !dbg !3261
  %4 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %tmp, align 8, !dbg !3260
  store %struct.netxbig_led_data* %4, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3257
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.declare(metadata i32* %mode_val, metadata !3265, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3267, metadata !DIExpression()), !dbg !3268
  %5 = load i64*, i64** %delay_on.addr, align 8, !dbg !3269
  %6 = load i64, i64* %5, align 8, !dbg !3270
  %7 = load i64*, i64** %delay_off.addr, align 8, !dbg !3271
  %8 = load i64, i64* %7, align 8, !dbg !3272
  %9 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3273
  %timer = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %9, i32 0, i32 5, !dbg !3274
  %10 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timer, align 8, !dbg !3274
  %11 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3275
  %num_timer = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %11, i32 0, i32 6, !dbg !3276
  %12 = load i32, i32* %num_timer, align 8, !dbg !3276
  %call = call i32 @netxbig_led_get_timer_mode(i32* %mode, i64 %6, i64 %8, %struct.netxbig_led_timer* %10, i32 %12) #8, !dbg !3277
  store i32 %call, i32* %ret, align 4, !dbg !3278
  %13 = load i32, i32* %ret, align 4, !dbg !3279
  %cmp = icmp slt i32 %13, 0, !dbg !3281
  br i1 %cmp, label %if.then, label %if.end, !dbg !3282

if.then:                                          ; preds = %do.end
  %14 = load i32, i32* %ret, align 4, !dbg !3283
  store i32 %14, i32* %retval, align 4, !dbg !3284
  br label %return, !dbg !3284

if.end:                                           ; preds = %do.end
  %15 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3285
  %mode_val1 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %15, i32 0, i32 3, !dbg !3286
  %16 = load i32*, i32** %mode_val1, align 8, !dbg !3286
  %17 = load i32, i32* %mode, align 4, !dbg !3287
  %idxprom = zext i32 %17 to i64, !dbg !3285
  %arrayidx = getelementptr i32, i32* %16, i64 %idxprom, !dbg !3285
  %18 = load i32, i32* %arrayidx, align 4, !dbg !3285
  store i32 %18, i32* %mode_val, align 4, !dbg !3288
  %19 = load i32, i32* %mode_val, align 4, !dbg !3289
  %cmp2 = icmp eq i32 %19, 5, !dbg !3291
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3292

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3293
  br label %return, !dbg !3293

if.end4:                                          ; preds = %if.end
  %20 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3294
  %lock = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %20, i32 0, i32 9, !dbg !3295
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #10, !dbg !3296
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3299, !srcloc !3301
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3302
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !3302
  %rlock.i = bitcast %union.anon* %22 to %struct.raw_spinlock*, !dbg !3302
  %23 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3304
  %gpio_ext = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %23, i32 0, i32 0, !dbg !3305
  %24 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3305
  %25 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3306
  %mode_addr = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %25, i32 0, i32 2, !dbg !3307
  %26 = load i32, i32* %mode_addr, align 8, !dbg !3307
  %27 = load i32, i32* %mode_val, align 4, !dbg !3308
  call void @gpio_ext_set_value(%struct.netxbig_gpio_ext* %24, i32 %26, i32 %27) #8, !dbg !3309
  %28 = load i32, i32* %mode, align 4, !dbg !3310
  %29 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3311
  %mode5 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %29, i32 0, i32 7, !dbg !3312
  store i32 %28, i32* %mode5, align 4, !dbg !3313
  %30 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3314
  %lock6 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %30, i32 0, i32 9, !dbg !3315
  store %struct.spinlock* %lock6, %struct.spinlock** %lock.addr.i7, align 8
  call void @arch_local_irq_enable() #10, !dbg !3316
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3319, !srcloc !3321
  %31 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i7, align 8, !dbg !3322
  %32 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %31, i32 0, i32 0, !dbg !3322
  %rlock.i8 = bitcast %union.anon* %32 to %struct.raw_spinlock*, !dbg !3322
  store i32 0, i32* %retval, align 4, !dbg !3324
  br label %return, !dbg !3324

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !3325
  ret i32 %33, !dbg !3325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @netxbig_led_set(%struct.led_classdev* %led_cdev, i32 %value) #2 !dbg !3326 {
entry:
  %lock.addr.i41 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i41, metadata !3327, metadata !DIExpression()), !dbg !3331
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3333, metadata !DIExpression()), !dbg !3334
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2758, metadata !DIExpression()), !dbg !3335
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %value.addr = alloca i32, align 4
  %led_dat = alloca %struct.netxbig_led_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.netxbig_led_data*, align 8
  %mode = alloca i32, align 4
  %mode_val = alloca i32, align 4
  %set_brightness = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !3342, metadata !DIExpression()), !dbg !3343
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_data** %led_dat, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3348, metadata !DIExpression()), !dbg !3350
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3350
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !3350
  store i8* %1, i8** %__mptr, align 8, !dbg !3350
  br label %do.body, !dbg !3350

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3351

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3350
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3350
  %3 = bitcast i8* %add.ptr to %struct.netxbig_led_data*, !dbg !3350
  store %struct.netxbig_led_data* %3, %struct.netxbig_led_data** %tmp, align 8, !dbg !3351
  %4 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %tmp, align 8, !dbg !3350
  store %struct.netxbig_led_data* %4, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3347
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.declare(metadata i32* %mode_val, metadata !3355, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.declare(metadata i32* %set_brightness, metadata !3357, metadata !DIExpression()), !dbg !3358
  store i32 1, i32* %set_brightness, align 4, !dbg !3358
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3359, metadata !DIExpression()), !dbg !3360
  br label %do.body1, !dbg !3361

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !3362

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3363, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3366, metadata !DIExpression()), !dbg !3365
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3365
  %conv = zext i1 %cmp to i32, !dbg !3365
  store i32 1, i32* %tmp3, align 4, !dbg !3365
  %5 = load i32, i32* %tmp3, align 4, !dbg !3365
  br label %do.body4, !dbg !3367

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !3368

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !3369

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !3371, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !3375, metadata !DIExpression()), !dbg !3374
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !3374
  %conv10 = zext i1 %cmp9 to i32, !dbg !3374
  store i32 1, i32* %tmp11, align 4, !dbg !3374
  %6 = load i32, i32* %tmp11, align 4, !dbg !3374
  %call = call i64 @arch_local_irq_save() #8, !dbg !3376
  store i64 %call, i64* %flags, align 8, !dbg !3376
  br label %do.end12, !dbg !3376

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !3369

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !3368

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3377, !srcloc !3378
  br label %do.body15, !dbg !3377

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3379
  %lock = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %7, i32 0, i32 9, !dbg !3379
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3380
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !3381
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !3381
  br label %do.end17, !dbg !3379

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !3377

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !3368

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !3367

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !3362

do.end21:                                         ; preds = %do.end20
  %10 = load i32, i32* %value.addr, align 4, !dbg !3382
  %cmp22 = icmp eq i32 %10, 0, !dbg !3384
  br i1 %cmp22, label %if.then, label %if.else, !dbg !3385

if.then:                                          ; preds = %do.end21
  store i32 0, i32* %mode, align 4, !dbg !3386
  store i32 0, i32* %set_brightness, align 4, !dbg !3388
  br label %if.end33, !dbg !3389

if.else:                                          ; preds = %do.end21
  %11 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3390
  %sata = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %11, i32 0, i32 8, !dbg !3393
  %12 = load i32, i32* %sata, align 8, !dbg !3393
  %tobool = icmp ne i32 %12, 0, !dbg !3390
  br i1 %tobool, label %if.then24, label %if.else25, !dbg !3394

if.then24:                                        ; preds = %if.else
  store i32 2, i32* %mode, align 4, !dbg !3395
  br label %if.end32, !dbg !3396

if.else25:                                        ; preds = %if.else
  %13 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3397
  %mode26 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %13, i32 0, i32 7, !dbg !3399
  %14 = load i32, i32* %mode26, align 4, !dbg !3399
  %cmp27 = icmp eq i32 %14, 0, !dbg !3400
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !3401

if.then29:                                        ; preds = %if.else25
  store i32 1, i32* %mode, align 4, !dbg !3402
  br label %if.end, !dbg !3403

if.else30:                                        ; preds = %if.else25
  %15 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3404
  %mode31 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %15, i32 0, i32 7, !dbg !3405
  %16 = load i32, i32* %mode31, align 4, !dbg !3405
  store i32 %16, i32* %mode, align 4, !dbg !3406
  br label %if.end

if.end:                                           ; preds = %if.else30, %if.then29
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then24
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then
  %17 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3407
  %mode_val34 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %17, i32 0, i32 3, !dbg !3408
  %18 = load i32*, i32** %mode_val34, align 8, !dbg !3408
  %19 = load i32, i32* %mode, align 4, !dbg !3409
  %idxprom = zext i32 %19 to i64, !dbg !3407
  %arrayidx = getelementptr i32, i32* %18, i64 %idxprom, !dbg !3407
  %20 = load i32, i32* %arrayidx, align 4, !dbg !3407
  store i32 %20, i32* %mode_val, align 4, !dbg !3410
  %21 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3411
  %gpio_ext = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %21, i32 0, i32 0, !dbg !3412
  %22 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3412
  %23 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3413
  %mode_addr = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %23, i32 0, i32 2, !dbg !3414
  %24 = load i32, i32* %mode_addr, align 8, !dbg !3414
  %25 = load i32, i32* %mode_val, align 4, !dbg !3415
  call void @gpio_ext_set_value(%struct.netxbig_gpio_ext* %22, i32 %24, i32 %25) #8, !dbg !3416
  %26 = load i32, i32* %mode, align 4, !dbg !3417
  %27 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3418
  %mode35 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %27, i32 0, i32 7, !dbg !3419
  store i32 %26, i32* %mode35, align 4, !dbg !3420
  %28 = load i32, i32* %set_brightness, align 4, !dbg !3421
  %tobool36 = icmp ne i32 %28, 0, !dbg !3421
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !3423

if.then37:                                        ; preds = %if.end33
  %29 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3424
  %gpio_ext38 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %29, i32 0, i32 0, !dbg !3425
  %30 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext38, align 8, !dbg !3425
  %31 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3426
  %bright_addr = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %31, i32 0, i32 4, !dbg !3427
  %32 = load i32, i32* %bright_addr, align 8, !dbg !3427
  %33 = load i32, i32* %value.addr, align 4, !dbg !3428
  call void @gpio_ext_set_value(%struct.netxbig_gpio_ext* %30, i32 %32, i32 %33) #8, !dbg !3429
  br label %if.end39, !dbg !3429

if.end39:                                         ; preds = %if.then37, %if.end33
  %34 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3430
  %lock40 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %34, i32 0, i32 9, !dbg !3431
  %35 = load i64, i64* %flags, align 8, !dbg !3432
  store %struct.spinlock* %lock40, %struct.spinlock** %lock.addr.i41, align 8
  store i64 %35, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !182, metadata !3433, metadata !DIExpression()) #7, !dbg !3436
  call void @llvm.dbg.declare(metadata !182, metadata !3437, metadata !DIExpression()) #7, !dbg !3436
  store i32 1, i32* %tmp.i, align 4, !dbg !3436
  %36 = load i32, i32* %tmp.i, align 4, !dbg !3436
  call void @llvm.dbg.declare(metadata !182, metadata !3438, metadata !DIExpression()) #7, !dbg !3443
  call void @llvm.dbg.declare(metadata !182, metadata !3444, metadata !DIExpression()) #7, !dbg !3443
  store i32 1, i32* %tmp8.i, align 4, !dbg !3443
  %37 = load i32, i32* %tmp8.i, align 4, !dbg !3443
  %38 = load i64, i64* %flags.addr.i, align 8, !dbg !3445
  call void @arch_local_irq_restore(i64 %38) #10, !dbg !3445
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3446, !srcloc !3448
  %39 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i41, align 8, !dbg !3449
  %40 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %39, i32 0, i32 0, !dbg !3449
  %rlock.i42 = bitcast %union.anon* %40 to %struct.raw_spinlock*, !dbg !3449
  ret void, !dbg !3451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_led_classdev_register(%struct.device* %parent, %struct.led_classdev* %led_cdev) #2 !dbg !3452 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3455, metadata !DIExpression()), !dbg !3456
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3459
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !3460
  %call = call i32 @devm_led_classdev_register_ext(%struct.device* %0, %struct.led_classdev* %1, %struct.led_init_data* null) #8, !dbg !3461
  ret i32 %call, !dbg !3462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @netxbig_led_get_timer_mode(i32* %mode, i64 %delay_on, i64 %delay_off, %struct.netxbig_led_timer* %timer, i32 %num_timer) #2 !dbg !3463 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32*, align 8
  %delay_on.addr = alloca i64, align 8
  %delay_off.addr = alloca i64, align 8
  %timer.addr = alloca %struct.netxbig_led_timer*, align 8
  %num_timer.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %mode, i32** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mode.addr, metadata !3467, metadata !DIExpression()), !dbg !3468
  store i64 %delay_on, i64* %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay_on.addr, metadata !3469, metadata !DIExpression()), !dbg !3470
  store i64 %delay_off, i64* %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay_off.addr, metadata !3471, metadata !DIExpression()), !dbg !3472
  store %struct.netxbig_led_timer* %timer, %struct.netxbig_led_timer** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_timer** %timer.addr, metadata !3473, metadata !DIExpression()), !dbg !3474
  store i32 %num_timer, i32* %num_timer.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_timer.addr, metadata !3475, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3477, metadata !DIExpression()), !dbg !3478
  store i32 0, i32* %i, align 4, !dbg !3479
  br label %for.cond, !dbg !3481

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3482
  %1 = load i32, i32* %num_timer.addr, align 4, !dbg !3484
  %cmp = icmp slt i32 %0, %1, !dbg !3485
  br i1 %cmp, label %for.body, label %for.end, !dbg !3486

for.body:                                         ; preds = %for.cond
  %2 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timer.addr, align 8, !dbg !3487
  %3 = load i32, i32* %i, align 4, !dbg !3490
  %idxprom = sext i32 %3 to i64, !dbg !3487
  %arrayidx = getelementptr %struct.netxbig_led_timer, %struct.netxbig_led_timer* %2, i64 %idxprom, !dbg !3487
  %delay_on1 = getelementptr inbounds %struct.netxbig_led_timer, %struct.netxbig_led_timer* %arrayidx, i32 0, i32 0, !dbg !3491
  %4 = load i64, i64* %delay_on1, align 8, !dbg !3491
  %5 = load i64, i64* %delay_on.addr, align 8, !dbg !3492
  %cmp2 = icmp eq i64 %4, %5, !dbg !3493
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !3494

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timer.addr, align 8, !dbg !3495
  %7 = load i32, i32* %i, align 4, !dbg !3496
  %idxprom3 = sext i32 %7 to i64, !dbg !3495
  %arrayidx4 = getelementptr %struct.netxbig_led_timer, %struct.netxbig_led_timer* %6, i64 %idxprom3, !dbg !3495
  %delay_off5 = getelementptr inbounds %struct.netxbig_led_timer, %struct.netxbig_led_timer* %arrayidx4, i32 0, i32 1, !dbg !3497
  %8 = load i64, i64* %delay_off5, align 8, !dbg !3497
  %9 = load i64, i64* %delay_off.addr, align 8, !dbg !3498
  %cmp6 = icmp eq i64 %8, %9, !dbg !3499
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3500

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.netxbig_led_timer*, %struct.netxbig_led_timer** %timer.addr, align 8, !dbg !3501
  %11 = load i32, i32* %i, align 4, !dbg !3503
  %idxprom7 = sext i32 %11 to i64, !dbg !3501
  %arrayidx8 = getelementptr %struct.netxbig_led_timer, %struct.netxbig_led_timer* %10, i64 %idxprom7, !dbg !3501
  %mode9 = getelementptr inbounds %struct.netxbig_led_timer, %struct.netxbig_led_timer* %arrayidx8, i32 0, i32 2, !dbg !3504
  %12 = load i32, i32* %mode9, align 8, !dbg !3504
  %13 = load i32*, i32** %mode.addr, align 8, !dbg !3505
  store i32 %12, i32* %13, align 4, !dbg !3506
  store i32 0, i32* %retval, align 4, !dbg !3507
  br label %return, !dbg !3507

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3508

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !dbg !3509
  %inc = add i32 %14, 1, !dbg !3509
  store i32 %inc, i32* %i, align 4, !dbg !3509
  br label %for.cond, !dbg !3510, !llvm.loop !3511

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !3513
  br label %return, !dbg !3513

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !3514
  ret i32 %15, !dbg !3514
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_ext_set_value(%struct.netxbig_gpio_ext* %gpio_ext, i32 %addr, i32 %value) #2 !dbg !3515 {
entry:
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !3327, metadata !DIExpression()), !dbg !3518
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !3333, metadata !DIExpression()), !dbg !3520
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2758, metadata !DIExpression()), !dbg !3521
  %gpio_ext.addr = alloca %struct.netxbig_gpio_ext*, align 8
  %addr.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.netxbig_gpio_ext* %gpio_ext, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_gpio_ext** %gpio_ext.addr, metadata !3528, metadata !DIExpression()), !dbg !3529
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3530, metadata !DIExpression()), !dbg !3531
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3534, metadata !DIExpression()), !dbg !3535
  br label %do.body, !dbg !3536

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3537

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3538, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3541, metadata !DIExpression()), !dbg !3540
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3540
  %conv = zext i1 %cmp to i32, !dbg !3540
  store i32 1, i32* %tmp, align 4, !dbg !3540
  %0 = load i32, i32* %tmp, align 4, !dbg !3540
  br label %do.body2, !dbg !3542

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3543

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3544

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3546, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3550, metadata !DIExpression()), !dbg !3549
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3549
  %conv8 = zext i1 %cmp7 to i32, !dbg !3549
  store i32 1, i32* %tmp9, align 4, !dbg !3549
  %1 = load i32, i32* %tmp9, align 4, !dbg !3549
  %call = call i64 @arch_local_irq_save() #8, !dbg !3551
  store i64 %call, i64* %flags, align 8, !dbg !3551
  br label %do.end, !dbg !3551

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3544

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3543

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3552, !srcloc !3553
  br label %do.body12, !dbg !3552

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @gpio_ext_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3554
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !3555
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !3555
  br label %do.end14, !dbg !3556

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3552

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3543

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3542

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3537

do.end18:                                         ; preds = %do.end17
  %4 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3557
  %5 = load i32, i32* %addr.addr, align 4, !dbg !3558
  call void @gpio_ext_set_addr(%struct.netxbig_gpio_ext* %4, i32 %5) #8, !dbg !3559
  %6 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3560
  %7 = load i32, i32* %value.addr, align 4, !dbg !3561
  call void @gpio_ext_set_data(%struct.netxbig_gpio_ext* %6, i32 %7) #8, !dbg !3562
  %8 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3563
  call void @gpio_ext_enable_select(%struct.netxbig_gpio_ext* %8) #8, !dbg !3564
  %9 = load i64, i64* %flags, align 8, !dbg !3565
  store %struct.spinlock* @gpio_ext_lock, %struct.spinlock** %lock.addr.i19, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !182, metadata !3433, metadata !DIExpression()) #7, !dbg !3566
  call void @llvm.dbg.declare(metadata !182, metadata !3437, metadata !DIExpression()) #7, !dbg !3566
  store i32 1, i32* %tmp.i, align 4, !dbg !3566
  %10 = load i32, i32* %tmp.i, align 4, !dbg !3566
  call void @llvm.dbg.declare(metadata !182, metadata !3438, metadata !DIExpression()) #7, !dbg !3567
  call void @llvm.dbg.declare(metadata !182, metadata !3444, metadata !DIExpression()) #7, !dbg !3567
  store i32 1, i32* %tmp8.i, align 4, !dbg !3567
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !3567
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !3568
  call void @arch_local_irq_restore(i64 %12) #10, !dbg !3568
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3569, !srcloc !3448
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !3570
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !3570
  %rlock.i20 = bitcast %union.anon* %14 to %struct.raw_spinlock*, !dbg !3570
  ret void, !dbg !3571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !3572 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3574, metadata !DIExpression()), !dbg !3576
  %0 = load i64, i64* %__edi, align 8, !dbg !3576
  store i64 %0, i64* %__edi, align 8, !dbg !3576
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3577, metadata !DIExpression()), !dbg !3576
  %1 = load i64, i64* %__esi, align 8, !dbg !3576
  store i64 %1, i64* %__esi, align 8, !dbg !3576
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3578, metadata !DIExpression()), !dbg !3576
  %2 = load i64, i64* %__edx, align 8, !dbg !3576
  store i64 %2, i64* %__edx, align 8, !dbg !3576
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3579, metadata !DIExpression()), !dbg !3576
  %3 = load i64, i64* %__ecx, align 8, !dbg !3576
  store i64 %3, i64* %__ecx, align 8, !dbg !3576
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3580, metadata !DIExpression()), !dbg !3576
  %4 = load i64, i64* %__eax, align 8, !dbg !3576
  store i64 %4, i64* %__eax, align 8, !dbg !3576
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3576
  %6 = call i64 @llvm.read_register.i64(metadata !2269), !dbg !3576
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !3576, !srcloc !3581
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3576
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3576
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3576
  call void @llvm.write_register.i64(metadata !2269, i64 %asmresult1), !dbg !3576
  ret void, !dbg !3582
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !3583 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !3586, metadata !DIExpression()), !dbg !3587
  %call = call i64 @arch_local_save_flags() #8, !dbg !3588
  store i64 %call, i64* %f, align 8, !dbg !3589
  call void @arch_local_irq_disable() #8, !dbg !3590
  %0 = load i64, i64* %f, align 8, !dbg !3591
  ret i64 %0, !dbg !3592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_ext_set_addr(%struct.netxbig_gpio_ext* %gpio_ext, i32 %addr) #2 !dbg !3593 {
entry:
  %gpio_ext.addr = alloca %struct.netxbig_gpio_ext*, align 8
  %addr.addr = alloca i32, align 4
  %pin = alloca i32, align 4
  store %struct.netxbig_gpio_ext* %gpio_ext, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_gpio_ext** %gpio_ext.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.declare(metadata i32* %pin, metadata !3600, metadata !DIExpression()), !dbg !3601
  store i32 0, i32* %pin, align 4, !dbg !3602
  br label %for.cond, !dbg !3604

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pin, align 4, !dbg !3605
  %1 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3607
  %num_addr = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %1, i32 0, i32 1, !dbg !3608
  %2 = load i32, i32* %num_addr, align 8, !dbg !3608
  %cmp = icmp slt i32 %0, %2, !dbg !3609
  br i1 %cmp, label %for.body, label %for.end, !dbg !3610

for.body:                                         ; preds = %for.cond
  %3 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3611
  %addr1 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %3, i32 0, i32 0, !dbg !3612
  %4 = load %struct.gpio_desc**, %struct.gpio_desc*** %addr1, align 8, !dbg !3612
  %5 = load i32, i32* %pin, align 4, !dbg !3613
  %idxprom = sext i32 %5 to i64, !dbg !3611
  %arrayidx = getelementptr %struct.gpio_desc*, %struct.gpio_desc** %4, i64 %idxprom, !dbg !3611
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %arrayidx, align 8, !dbg !3611
  %7 = load i32, i32* %addr.addr, align 4, !dbg !3614
  %8 = load i32, i32* %pin, align 4, !dbg !3615
  %shr = ashr i32 %7, %8, !dbg !3616
  %and = and i32 %shr, 1, !dbg !3617
  call void @gpiod_set_value(%struct.gpio_desc* %6, i32 %and) #8, !dbg !3618
  br label %for.inc, !dbg !3618

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %pin, align 4, !dbg !3619
  %inc = add i32 %9, 1, !dbg !3619
  store i32 %inc, i32* %pin, align 4, !dbg !3619
  br label %for.cond, !dbg !3620, !llvm.loop !3621

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_ext_set_data(%struct.netxbig_gpio_ext* %gpio_ext, i32 %data) #2 !dbg !3624 {
entry:
  %gpio_ext.addr = alloca %struct.netxbig_gpio_ext*, align 8
  %data.addr = alloca i32, align 4
  %pin = alloca i32, align 4
  store %struct.netxbig_gpio_ext* %gpio_ext, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_gpio_ext** %gpio_ext.addr, metadata !3625, metadata !DIExpression()), !dbg !3626
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.declare(metadata i32* %pin, metadata !3629, metadata !DIExpression()), !dbg !3630
  store i32 0, i32* %pin, align 4, !dbg !3631
  br label %for.cond, !dbg !3633

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pin, align 4, !dbg !3634
  %1 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3636
  %num_data = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %1, i32 0, i32 3, !dbg !3637
  %2 = load i32, i32* %num_data, align 8, !dbg !3637
  %cmp = icmp slt i32 %0, %2, !dbg !3638
  br i1 %cmp, label %for.body, label %for.end, !dbg !3639

for.body:                                         ; preds = %for.cond
  %3 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3640
  %data1 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %3, i32 0, i32 2, !dbg !3641
  %4 = load %struct.gpio_desc**, %struct.gpio_desc*** %data1, align 8, !dbg !3641
  %5 = load i32, i32* %pin, align 4, !dbg !3642
  %idxprom = sext i32 %5 to i64, !dbg !3640
  %arrayidx = getelementptr %struct.gpio_desc*, %struct.gpio_desc** %4, i64 %idxprom, !dbg !3640
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %arrayidx, align 8, !dbg !3640
  %7 = load i32, i32* %data.addr, align 4, !dbg !3643
  %8 = load i32, i32* %pin, align 4, !dbg !3644
  %shr = ashr i32 %7, %8, !dbg !3645
  %and = and i32 %shr, 1, !dbg !3646
  call void @gpiod_set_value(%struct.gpio_desc* %6, i32 %and) #8, !dbg !3647
  br label %for.inc, !dbg !3647

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %pin, align 4, !dbg !3648
  %inc = add i32 %9, 1, !dbg !3648
  store i32 %inc, i32* %pin, align 4, !dbg !3648
  br label %for.cond, !dbg !3649, !llvm.loop !3650

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3652
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gpio_ext_enable_select(%struct.netxbig_gpio_ext* %gpio_ext) #2 !dbg !3653 {
entry:
  %gpio_ext.addr = alloca %struct.netxbig_gpio_ext*, align 8
  store %struct.netxbig_gpio_ext* %gpio_ext, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.netxbig_gpio_ext** %gpio_ext.addr, metadata !3656, metadata !DIExpression()), !dbg !3657
  %0 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3658
  %enable = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %0, i32 0, i32 4, !dbg !3659
  %1 = load %struct.gpio_desc*, %struct.gpio_desc** %enable, align 8, !dbg !3659
  call void @gpiod_set_value(%struct.gpio_desc* %1, i32 0) #8, !dbg !3660
  %2 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext.addr, align 8, !dbg !3661
  %enable1 = getelementptr inbounds %struct.netxbig_gpio_ext, %struct.netxbig_gpio_ext* %2, i32 0, i32 4, !dbg !3662
  %3 = load %struct.gpio_desc*, %struct.gpio_desc** %enable1, align 8, !dbg !3662
  call void @gpiod_set_value(%struct.gpio_desc* %3, i32 1) #8, !dbg !3663
  ret void, !dbg !3664
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !3665 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3666, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3669, metadata !DIExpression()), !dbg !3668
  %0 = load i64, i64* %__edi, align 8, !dbg !3668
  store i64 %0, i64* %__edi, align 8, !dbg !3668
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3670, metadata !DIExpression()), !dbg !3668
  %1 = load i64, i64* %__esi, align 8, !dbg !3668
  store i64 %1, i64* %__esi, align 8, !dbg !3668
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3671, metadata !DIExpression()), !dbg !3668
  %2 = load i64, i64* %__edx, align 8, !dbg !3668
  store i64 %2, i64* %__edx, align 8, !dbg !3668
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3672, metadata !DIExpression()), !dbg !3668
  %3 = load i64, i64* %__ecx, align 8, !dbg !3668
  store i64 %3, i64* %__ecx, align 8, !dbg !3668
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3673, metadata !DIExpression()), !dbg !3668
  %4 = load i64, i64* %__eax, align 8, !dbg !3668
  store i64 %4, i64* %__eax, align 8, !dbg !3668
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3668
  %6 = call i64 @llvm.read_register.i64(metadata !2269), !dbg !3674
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !3674, !srcloc !3677
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3674
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3674
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3674
  call void @llvm.write_register.i64(metadata !2269, i64 %asmresult1), !dbg !3674
  %8 = load i64, i64* %__eax, align 8, !dbg !3674
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3678, metadata !DIExpression()), !dbg !3680
  store i64 -1, i64* %__mask, align 8, !dbg !3680
  %9 = load i64, i64* %__mask, align 8, !dbg !3680
  store i64 %9, i64* %tmp, align 8, !dbg !3680
  %10 = load i64, i64* %tmp, align 8, !dbg !3680
  %and = and i64 %8, %10, !dbg !3674
  store i64 %and, i64* %__ret, align 8, !dbg !3674
  %11 = load i64, i64* %__ret, align 8, !dbg !3668
  store i64 %11, i64* %tmp2, align 8, !dbg !3681
  %12 = load i64, i64* %tmp2, align 8, !dbg !3668
  ret i64 %12, !dbg !3682
}

; Function Attrs: noredzone
declare dso_local void @gpiod_set_value(%struct.gpio_desc*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !3683 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3686, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3688, metadata !DIExpression()), !dbg !3690
  %0 = load i64, i64* %__edi, align 8, !dbg !3690
  store i64 %0, i64* %__edi, align 8, !dbg !3690
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3691, metadata !DIExpression()), !dbg !3690
  %1 = load i64, i64* %__esi, align 8, !dbg !3690
  store i64 %1, i64* %__esi, align 8, !dbg !3690
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3692, metadata !DIExpression()), !dbg !3690
  %2 = load i64, i64* %__edx, align 8, !dbg !3690
  store i64 %2, i64* %__edx, align 8, !dbg !3690
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3693, metadata !DIExpression()), !dbg !3690
  %3 = load i64, i64* %__ecx, align 8, !dbg !3690
  store i64 %3, i64* %__ecx, align 8, !dbg !3690
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3694, metadata !DIExpression()), !dbg !3690
  %4 = load i64, i64* %__eax, align 8, !dbg !3690
  store i64 %4, i64* %__eax, align 8, !dbg !3690
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3690
  %6 = call i64 @llvm.read_register.i64(metadata !2269), !dbg !3690
  %7 = load i64, i64* %f.addr, align 8, !dbg !3690
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !3690, !srcloc !3695
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3690
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3690
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3690
  call void @llvm.write_register.i64(metadata !2269, i64 %asmresult1), !dbg !3690
  ret void, !dbg !3696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #2 !dbg !3697 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3698, metadata !DIExpression()), !dbg !3700
  %0 = load i64, i64* %__edi, align 8, !dbg !3700
  store i64 %0, i64* %__edi, align 8, !dbg !3700
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3701, metadata !DIExpression()), !dbg !3700
  %1 = load i64, i64* %__esi, align 8, !dbg !3700
  store i64 %1, i64* %__esi, align 8, !dbg !3700
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3702, metadata !DIExpression()), !dbg !3700
  %2 = load i64, i64* %__edx, align 8, !dbg !3700
  store i64 %2, i64* %__edx, align 8, !dbg !3700
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3703, metadata !DIExpression()), !dbg !3700
  %3 = load i64, i64* %__ecx, align 8, !dbg !3700
  store i64 %3, i64* %__ecx, align 8, !dbg !3700
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3704, metadata !DIExpression()), !dbg !3700
  %4 = load i64, i64* %__eax, align 8, !dbg !3700
  store i64 %4, i64* %__eax, align 8, !dbg !3700
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !3700
  %6 = call i64 @llvm.read_register.i64(metadata !2269), !dbg !3700
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #7, !dbg !3700, !srcloc !3705
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3700
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3700
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3700
  call void @llvm.write_register.i64(metadata !2269, i64 %asmresult1), !dbg !3700
  ret void, !dbg !3706
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @netxbig_led_sata_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !3707 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %led_dat = alloca %struct.netxbig_led_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.netxbig_led_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3708, metadata !DIExpression()), !dbg !3709
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3710, metadata !DIExpression()), !dbg !3711
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3712, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !3714, metadata !DIExpression()), !dbg !3715
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3716
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !3717
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !3717
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !3715
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_data** %led_dat, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3720, metadata !DIExpression()), !dbg !3722
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3722
  %3 = bitcast %struct.led_classdev* %2 to i8*, !dbg !3722
  store i8* %3, i8** %__mptr, align 8, !dbg !3722
  br label %do.body, !dbg !3722

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3723

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3722
  %add.ptr = getelementptr i8, i8* %4, i64 -8, !dbg !3722
  %5 = bitcast i8* %add.ptr to %struct.netxbig_led_data*, !dbg !3722
  store %struct.netxbig_led_data* %5, %struct.netxbig_led_data** %tmp, align 8, !dbg !3723
  %6 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %tmp, align 8, !dbg !3722
  store %struct.netxbig_led_data* %6, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3719
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3725
  %8 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3726
  %sata = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %8, i32 0, i32 8, !dbg !3727
  %9 = load i32, i32* %sata, align 8, !dbg !3727
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %9) #8, !dbg !3728
  %conv = sext i32 %call1 to i64, !dbg !3728
  ret i64 %conv, !dbg !3729
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @netxbig_led_sata_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buff, i64 %count) #2 !dbg !3730 {
entry:
  %lock.addr.i34 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i34, metadata !3240, metadata !DIExpression()), !dbg !3731
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3246, metadata !DIExpression()), !dbg !3733
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buff.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %led_dat = alloca %struct.netxbig_led_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.netxbig_led_data*, align 8
  %enable = alloca i64, align 8
  %mode = alloca i32, align 4
  %mode_val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3735, metadata !DIExpression()), !dbg !3736
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3737, metadata !DIExpression()), !dbg !3738
  store i8* %buff, i8** %buff.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buff.addr, metadata !3739, metadata !DIExpression()), !dbg !3740
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !3743, metadata !DIExpression()), !dbg !3744
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3745
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !3746
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !3746
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !3744
  call void @llvm.dbg.declare(metadata %struct.netxbig_led_data** %led_dat, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3749, metadata !DIExpression()), !dbg !3751
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !3751
  %3 = bitcast %struct.led_classdev* %2 to i8*, !dbg !3751
  store i8* %3, i8** %__mptr, align 8, !dbg !3751
  br label %do.body, !dbg !3751

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3752

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3751
  %add.ptr = getelementptr i8, i8* %4, i64 -8, !dbg !3751
  %5 = bitcast i8* %add.ptr to %struct.netxbig_led_data*, !dbg !3751
  store %struct.netxbig_led_data* %5, %struct.netxbig_led_data** %tmp, align 8, !dbg !3752
  %6 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %tmp, align 8, !dbg !3751
  store %struct.netxbig_led_data* %6, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3748
  call void @llvm.dbg.declare(metadata i64* %enable, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !3756, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata i32* %mode_val, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3760, metadata !DIExpression()), !dbg !3761
  %7 = load i8*, i8** %buff.addr, align 8, !dbg !3762
  %call1 = call i32 @kstrtoul(i8* %7, i32 10, i64* %enable) #8, !dbg !3763
  store i32 %call1, i32* %ret, align 4, !dbg !3764
  %8 = load i32, i32* %ret, align 4, !dbg !3765
  %cmp = icmp slt i32 %8, 0, !dbg !3767
  br i1 %cmp, label %if.then, label %if.end, !dbg !3768

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %ret, align 4, !dbg !3769
  %conv = sext i32 %9 to i64, !dbg !3769
  store i64 %conv, i64* %retval, align 8, !dbg !3770
  br label %return, !dbg !3770

if.end:                                           ; preds = %do.end
  %10 = load i64, i64* %enable, align 8, !dbg !3771
  %tobool = icmp ne i64 %10, 0, !dbg !3772
  %lnot = xor i1 %tobool, true, !dbg !3772
  %lnot2 = xor i1 %lnot, true, !dbg !3773
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3773
  %conv3 = sext i32 %lnot.ext to i64, !dbg !3773
  store i64 %conv3, i64* %enable, align 8, !dbg !3774
  %11 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3775
  %lock = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %11, i32 0, i32 9, !dbg !3776
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #10, !dbg !3777
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3778, !srcloc !3301
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3779
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !3779
  %rlock.i = bitcast %union.anon* %13 to %struct.raw_spinlock*, !dbg !3779
  %14 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3780
  %sata = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %14, i32 0, i32 8, !dbg !3782
  %15 = load i32, i32* %sata, align 8, !dbg !3782
  %conv4 = sext i32 %15 to i64, !dbg !3780
  %16 = load i64, i64* %enable, align 8, !dbg !3783
  %cmp5 = icmp eq i64 %conv4, %16, !dbg !3784
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !3785

if.then7:                                         ; preds = %if.end
  %17 = load i64, i64* %count.addr, align 8, !dbg !3786
  %conv8 = trunc i64 %17 to i32, !dbg !3786
  store i32 %conv8, i32* %ret, align 4, !dbg !3788
  br label %exit_unlock, !dbg !3789

if.end9:                                          ; preds = %if.end
  %18 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3790
  %mode10 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %18, i32 0, i32 7, !dbg !3792
  %19 = load i32, i32* %mode10, align 4, !dbg !3792
  %cmp11 = icmp ne i32 %19, 1, !dbg !3793
  br i1 %cmp11, label %land.lhs.true, label %if.else, !dbg !3794

land.lhs.true:                                    ; preds = %if.end9
  %20 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3795
  %mode13 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %20, i32 0, i32 7, !dbg !3796
  %21 = load i32, i32* %mode13, align 4, !dbg !3796
  %cmp14 = icmp ne i32 %21, 2, !dbg !3797
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !3798

if.then16:                                        ; preds = %land.lhs.true
  %22 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3799
  %mode17 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %22, i32 0, i32 7, !dbg !3800
  %23 = load i32, i32* %mode17, align 4, !dbg !3800
  store i32 %23, i32* %mode, align 4, !dbg !3801
  br label %if.end22, !dbg !3802

if.else:                                          ; preds = %land.lhs.true, %if.end9
  %24 = load i64, i64* %enable, align 8, !dbg !3803
  %tobool18 = icmp ne i64 %24, 0, !dbg !3803
  br i1 %tobool18, label %if.then19, label %if.else20, !dbg !3805

if.then19:                                        ; preds = %if.else
  store i32 2, i32* %mode, align 4, !dbg !3806
  br label %if.end21, !dbg !3807

if.else20:                                        ; preds = %if.else
  store i32 1, i32* %mode, align 4, !dbg !3808
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then16
  %25 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3809
  %mode_val23 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %25, i32 0, i32 3, !dbg !3810
  %26 = load i32*, i32** %mode_val23, align 8, !dbg !3810
  %27 = load i32, i32* %mode, align 4, !dbg !3811
  %idxprom = zext i32 %27 to i64, !dbg !3809
  %arrayidx = getelementptr i32, i32* %26, i64 %idxprom, !dbg !3809
  %28 = load i32, i32* %arrayidx, align 4, !dbg !3809
  store i32 %28, i32* %mode_val, align 4, !dbg !3812
  %29 = load i32, i32* %mode_val, align 4, !dbg !3813
  %cmp24 = icmp eq i32 %29, 5, !dbg !3815
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !3816

if.then26:                                        ; preds = %if.end22
  store i32 -22, i32* %ret, align 4, !dbg !3817
  br label %exit_unlock, !dbg !3819

if.end27:                                         ; preds = %if.end22
  %30 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3820
  %gpio_ext = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %30, i32 0, i32 0, !dbg !3821
  %31 = load %struct.netxbig_gpio_ext*, %struct.netxbig_gpio_ext** %gpio_ext, align 8, !dbg !3821
  %32 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3822
  %mode_addr = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %32, i32 0, i32 2, !dbg !3823
  %33 = load i32, i32* %mode_addr, align 8, !dbg !3823
  %34 = load i32, i32* %mode_val, align 4, !dbg !3824
  call void @gpio_ext_set_value(%struct.netxbig_gpio_ext* %31, i32 %33, i32 %34) #8, !dbg !3825
  %35 = load i32, i32* %mode, align 4, !dbg !3826
  %36 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3827
  %mode28 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %36, i32 0, i32 7, !dbg !3828
  store i32 %35, i32* %mode28, align 4, !dbg !3829
  %37 = load i64, i64* %enable, align 8, !dbg !3830
  %conv29 = trunc i64 %37 to i32, !dbg !3830
  %38 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3831
  %sata30 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %38, i32 0, i32 8, !dbg !3832
  store i32 %conv29, i32* %sata30, align 8, !dbg !3833
  %39 = load i64, i64* %count.addr, align 8, !dbg !3834
  %conv31 = trunc i64 %39 to i32, !dbg !3834
  store i32 %conv31, i32* %ret, align 4, !dbg !3835
  br label %exit_unlock, !dbg !3836

exit_unlock:                                      ; preds = %if.end27, %if.then26, %if.then7
  call void @llvm.dbg.label(metadata !3837), !dbg !3838
  %40 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %led_dat, align 8, !dbg !3839
  %lock32 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %40, i32 0, i32 9, !dbg !3840
  store %struct.spinlock* %lock32, %struct.spinlock** %lock.addr.i34, align 8
  call void @arch_local_irq_enable() #10, !dbg !3841
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3842, !srcloc !3321
  %41 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i34, align 8, !dbg !3843
  %42 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %41, i32 0, i32 0, !dbg !3843
  %rlock.i35 = bitcast %union.anon* %42 to %struct.raw_spinlock*, !dbg !3843
  %43 = load i32, i32* %ret, align 4, !dbg !3844
  %conv33 = sext i32 %43 to i64, !dbg !3844
  store i64 %conv33, i64* %retval, align 8, !dbg !3845
  br label %return, !dbg !3845

return:                                           ; preds = %exit_unlock, %if.then
  %44 = load i64, i64* %retval, align 8, !dbg !3846
  ret i64 %44, !dbg !3846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3847 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3850, metadata !DIExpression()), !dbg !3851
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3852
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3853
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3853
  ret i8* %1, !dbg !3854
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #2 !dbg !3855 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3859, metadata !DIExpression()), !dbg !3860
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3861, metadata !DIExpression()), !dbg !3862
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !3863, metadata !DIExpression()), !dbg !3864
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3865
  %1 = load i32, i32* %base.addr, align 4, !dbg !3867
  %2 = load i64*, i64** %res.addr, align 8, !dbg !3868
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #8, !dbg !3869
  ret i32 %call, !dbg !3870
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local i32 @devm_led_classdev_register_ext(%struct.device*, %struct.led_classdev*, %struct.led_init_data*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2269}
!llvm.module.flags = !{!2270, !2271, !2272, !2273}
!llvm.ident = !{!2274}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_netxbig_led_driver_init167", scope: !2, file: !3, line: 624, type: !80, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !74, globals: !2151, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/leds/leds-netxbig.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !58, !65}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netxbig_led_mode", file: !3, line: 28, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "NETXBIG_LED_OFF", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "NETXBIG_LED_ON", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "NETXBIG_LED_SATA", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "NETXBIG_LED_TIMER1", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "NETXBIG_LED_TIMER2", value: 4, isUnsigned: true)
!57 = !DIEnumerator(name: "NETXBIG_LED_MODE_NUM", value: 5, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !59, line: 29, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63, !64}
!61 = !DIEnumerator(name: "LED_OFF", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "LED_ON", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "LED_HALF", value: 127, isUnsigned: true)
!64 = !DIEnumerator(name: "LED_FULL", value: 255, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpiod_flags", file: !66, line: 49, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIEnumerator(name: "GPIOD_ASIS", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "GPIOD_IN", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "GPIOD_OUT_LOW", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "GPIOD_OUT_HIGH", value: 7, isUnsigned: true)
!72 = !DIEnumerator(name: "GPIOD_OUT_LOW_OPEN_DRAIN", value: 11, isUnsigned: true)
!73 = !DIEnumerator(name: "GPIOD_OUT_HIGH_OPEN_DRAIN", value: 15, isUnsigned: true)
!74 = !{!75, !78, !80, !81, !82, !83, !2150}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !77, line: 76, flags: DIFlagFwdDecl)
!77 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !79, line: 148, baseType: !7)
!79 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netxbig_led_data", file: !3, line: 107, size: 2496, elements: !85)
!85 = !{!86, !99, !2136, !2137, !2138, !2139, !2146, !2147, !2148, !2149}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_ext", scope: !84, file: !3, line: 108, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netxbig_gpio_ext", file: !3, line: 20, size: 320, elements: !89)
!89 = !{!90, !94, !96, !97, !98}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !88, file: !3, line: 21, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !66, line: 19, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "num_addr", scope: !88, file: !3, line: 22, baseType: !95, size: 32, offset: 64)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !88, file: !3, line: 23, baseType: !91, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "num_data", scope: !88, file: !3, line: 24, baseType: !95, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !88, file: !3, line: 25, baseType: !92, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !84, file: !3, line: 109, baseType: !100, size: 2048, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !59, line: 64, size: 2048, elements: !101)
!101 = !{!102, !106, !107, !108, !109, !110, !115, !119, !123, !128, !141, !145, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2133, !2134, !2135}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !59, line: 65, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !100, file: !59, line: 66, baseType: !58, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !100, file: !59, line: 67, baseType: !58, size: 32, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !59, line: 68, baseType: !95, size: 32, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !100, file: !59, line: 84, baseType: !81, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !100, file: !59, line: 97, baseType: !111, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114, !58}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !100, file: !59, line: 103, baseType: !116, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!95, !114, !58}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !100, file: !59, line: 106, baseType: !120, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!58, !114}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !100, file: !59, line: 116, baseType: !124, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!95, !114, !127, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !100, file: !59, line: 120, baseType: !129, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!95, !114, !132, !136, !95}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !59, line: 579, size: 64, elements: !134)
!134 = !{!135, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !133, file: !59, line: 580, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !137, line: 21, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !7)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !133, file: !59, line: 581, baseType: !95, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !100, file: !59, line: 122, baseType: !142, size: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!95, !114}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !100, file: !59, line: 124, baseType: !146, size: 64, offset: 640)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !148)
!148 = !{!149, !1647, !1648, !1651, !1652, !1703, !1797, !1798, !1799, !1800, !1801, !1810, !1915, !1928, !1932, !1933, !1937, !1939, !1940, !1941, !1945, !1951, !1952, !1955, !2070, !2071, !2074, !2075, !2076, !2077, !2109, !2110, !2111, !2114, !2117, !2118, !2119, !2120}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !147, file: !30, line: 462, baseType: !150, size: 512)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !151, line: 64, size: 512, elements: !152)
!151 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!152 = !{!153, !154, !160, !162, !222, !1484, !1637, !1642, !1643, !1644, !1645, !1646}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !150, file: !151, line: 65, baseType: !103, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !150, file: !151, line: 66, baseType: !155, size: 128, offset: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !79, line: 178, size: 128, elements: !156)
!156 = !{!157, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !79, line: 179, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !79, line: 179, baseType: !158, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !150, file: !151, line: 67, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !150, file: !151, line: 68, baseType: !163, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !151, line: 192, size: 704, elements: !165)
!165 = !{!166, !167, !183, !184}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !164, file: !151, line: 193, baseType: !155, size: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !164, file: !151, line: 194, baseType: !168, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !169, line: 83, baseType: !170)
!169 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !169, line: 71, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !169, line: 72, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !169, line: 72, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !173, file: !169, line: 73, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !169, line: 20, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !176, file: !169, line: 21, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !180, line: 25, baseType: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 25, elements: !182)
!182 = !{}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !164, file: !151, line: 195, baseType: !150, size: 512, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !164, file: !151, line: 196, baseType: !185, size: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !151, line: 156, size: 192, elements: !188)
!188 = !{!189, !194, !199}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !187, file: !151, line: 157, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!95, !163, !161}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !151, line: 158, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!103, !163, !161}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !187, file: !151, line: 159, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!95, !163, !161, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !151, line: 148, size: 20736, elements: !206)
!206 = !{!207, !212, !216, !217, !221}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !205, file: !151, line: 149, baseType: !208, size: 192)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 192, elements: !210)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!210 = !{!211}
!211 = !DISubrange(count: 3)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !205, file: !151, line: 150, baseType: !213, size: 4096, offset: 192)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 4096, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !205, file: !151, line: 151, baseType: !95, size: 32, offset: 4288)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !205, file: !151, line: 152, baseType: !218, size: 16384, offset: 4320)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 16384, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 2048)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !205, file: !151, line: 153, baseType: !95, size: 32, offset: 20704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !150, file: !151, line: 69, baseType: !223, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !151, line: 138, size: 448, elements: !225)
!225 = !{!226, !230, !258, !260, !1432, !1463, !1467}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !224, file: !151, line: 139, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !161}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !224, file: !151, line: 140, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !234, line: 230, size: 128, elements: !235)
!234 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !251}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !233, file: !234, line: 231, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !161, !244, !209}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !79, line: 60, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !242, line: 73, baseType: !243)
!242 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !242, line: 15, baseType: !82)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !234, line: 30, size: 128, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !234, line: 31, baseType: !103, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !245, file: !234, line: 32, baseType: !249, size: 16, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !79, line: 19, baseType: !250)
!250 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !233, file: !234, line: 232, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!240, !161, !244, !103, !255}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 55, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !242, line: 72, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !242, line: 16, baseType: !81)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !224, file: !151, line: 141, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !224, file: !151, line: 142, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !234, line: 84, size: 320, elements: !265)
!265 = !{!266, !267, !271, !1429, !1430}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !234, line: 85, baseType: !103, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !264, file: !234, line: 86, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!249, !161, !244, !95}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !264, file: !234, line: 88, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!249, !161, !275, !95}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !234, line: 168, size: 448, elements: !277)
!277 = !{!278, !279, !280, !281, !291, !292}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !276, file: !234, line: 169, baseType: !245, size: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !276, file: !234, line: 170, baseType: !255, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !276, file: !234, line: 171, baseType: !80, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !276, file: !234, line: 172, baseType: !282, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!240, !285, !161, !275, !209, !288, !255}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !287, line: 526, flags: DIFlagFwdDecl)
!287 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !79, line: 46, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !242, line: 88, baseType: !290)
!290 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !276, file: !234, line: 174, baseType: !282, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !276, file: !234, line: 176, baseType: !293, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!95, !285, !161, !275, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !298, line: 305, size: 1472, elements: !299)
!298 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301, !302, !303, !304, !312, !313, !1403, !1409, !1410, !1415, !1416, !1419, !1423, !1424, !1425, !1426, !1427}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !297, file: !298, line: 308, baseType: !81, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !297, file: !298, line: 309, baseType: !81, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !297, file: !298, line: 313, baseType: !296, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !297, file: !298, line: 313, baseType: !296, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !297, file: !298, line: 315, baseType: !305, size: 192, align: 64, offset: 256)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !306, line: 24, size: 192, align: 64, elements: !307)
!306 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!307 = !{!308, !309, !311}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !305, file: !306, line: 25, baseType: !81, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !305, file: !306, line: 26, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !305, file: !306, line: 27, baseType: !310, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !297, file: !298, line: 323, baseType: !81, size: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !297, file: !298, line: 327, baseType: !314, size: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !298, line: 388, size: 7296, elements: !316)
!316 = !{!317, !1399}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !298, line: 389, baseType: !318, size: 7296)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !298, line: 389, size: 7296, elements: !319)
!319 = !{!320, !321, !325, !329, !333, !334, !335, !336, !337, !345, !350, !351, !352, !353, !362, !363, !364, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !399, !407, !410, !458, !459, !1369, !1370, !1373, !1377, !1378, !1381, !1382, !1383, !1386, !1398}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !318, file: !298, line: 390, baseType: !296, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !318, file: !298, line: 391, baseType: !322, size: 64, offset: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !306, line: 31, size: 64, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !322, file: !306, line: 32, baseType: !310, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !318, file: !298, line: 392, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !137, line: 23, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !328)
!328 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !318, file: !298, line: 394, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!81, !285, !81, !81, !81, !81}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !318, file: !298, line: 398, baseType: !81, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !318, file: !298, line: 399, baseType: !81, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !318, file: !298, line: 405, baseType: !81, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !318, file: !298, line: 406, baseType: !81, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !318, file: !298, line: 407, baseType: !338, size: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !287, line: 286, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 286, size: 64, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !340, file: !287, line: 286, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !344, line: 18, baseType: !81)
!344 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!345 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !318, file: !298, line: 416, baseType: !346, size: 32, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !79, line: 168, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 166, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !347, file: !79, line: 167, baseType: !95, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !318, file: !298, line: 428, baseType: !346, size: 32, offset: 608)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !318, file: !298, line: 437, baseType: !346, size: 32, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !318, file: !298, line: 447, baseType: !346, size: 32, offset: 672)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !318, file: !298, line: 450, baseType: !354, size: 64, offset: 704)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !355, line: 13, baseType: !356)
!355 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !79, line: 175, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 173, size: 64, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !357, file: !79, line: 174, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !137, line: 22, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !290)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !318, file: !298, line: 452, baseType: !95, size: 32, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !318, file: !298, line: 454, baseType: !168, offset: 800)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !318, file: !298, line: 457, baseType: !365, size: 256, offset: 832)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !366, line: 35, size: 256, elements: !367)
!366 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368, !369, !370, !372}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !365, file: !366, line: 36, baseType: !354, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !365, file: !366, line: 42, baseType: !354, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !365, file: !366, line: 46, baseType: !371, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !169, line: 29, baseType: !176)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !365, file: !366, line: 47, baseType: !155, size: 128, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !318, file: !298, line: 459, baseType: !155, size: 128, offset: 1088)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !318, file: !298, line: 466, baseType: !81, size: 64, offset: 1216)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !318, file: !298, line: 467, baseType: !81, size: 64, offset: 1280)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !318, file: !298, line: 469, baseType: !81, size: 64, offset: 1344)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !318, file: !298, line: 470, baseType: !81, size: 64, offset: 1408)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !318, file: !298, line: 471, baseType: !356, size: 64, offset: 1472)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !318, file: !298, line: 472, baseType: !81, size: 64, offset: 1536)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !318, file: !298, line: 473, baseType: !81, size: 64, offset: 1600)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !318, file: !298, line: 474, baseType: !81, size: 64, offset: 1664)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !318, file: !298, line: 475, baseType: !81, size: 64, offset: 1728)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !318, file: !298, line: 477, baseType: !168, offset: 1792)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !318, file: !298, line: 478, baseType: !81, size: 64, offset: 1792)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !318, file: !298, line: 478, baseType: !81, size: 64, offset: 1856)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !318, file: !298, line: 478, baseType: !81, size: 64, offset: 1920)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !318, file: !298, line: 478, baseType: !81, size: 64, offset: 1984)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !318, file: !298, line: 479, baseType: !81, size: 64, offset: 2048)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !318, file: !298, line: 479, baseType: !81, size: 64, offset: 2112)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !318, file: !298, line: 479, baseType: !81, size: 64, offset: 2176)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !318, file: !298, line: 480, baseType: !81, size: 64, offset: 2240)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !318, file: !298, line: 480, baseType: !81, size: 64, offset: 2304)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !318, file: !298, line: 480, baseType: !81, size: 64, offset: 2368)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !318, file: !298, line: 480, baseType: !81, size: 64, offset: 2432)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !318, file: !298, line: 482, baseType: !396, size: 2816, offset: 2496)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2816, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 44)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !318, file: !298, line: 488, baseType: !400, size: 256, offset: 5312)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !401, line: 60, size: 256, elements: !402)
!401 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !400, file: !401, line: 61, baseType: !404, size: 256)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 256, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 4)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !318, file: !298, line: 490, baseType: !408, size: 64, offset: 5568)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !298, line: 490, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !318, file: !298, line: 493, baseType: !411, size: 896, offset: 5632)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !412, line: 53, baseType: !413)
!412 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 13, size: 896, elements: !414)
!414 = !{!415, !416, !417, !418, !421, !422, !429, !430, !450, !451, !454}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !413, file: !412, line: 18, baseType: !326, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !413, file: !412, line: 28, baseType: !356, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !413, file: !412, line: 31, baseType: !365, size: 256, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !413, file: !412, line: 32, baseType: !419, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !412, line: 32, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !413, file: !412, line: 37, baseType: !250, size: 16, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !413, file: !412, line: 40, baseType: !423, size: 192, offset: 512)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !424, line: 53, size: 192, elements: !425)
!424 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!425 = !{!426, !427, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !423, file: !424, line: 54, baseType: !354, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !423, file: !424, line: 55, baseType: !168, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !423, file: !424, line: 59, baseType: !155, size: 128, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !413, file: !412, line: 41, baseType: !80, size: 64, offset: 704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !413, file: !412, line: 42, baseType: !431, size: 64, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !434, line: 13, size: 896, elements: !435)
!434 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !433, file: !434, line: 14, baseType: !80, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !433, file: !434, line: 15, baseType: !81, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !433, file: !434, line: 17, baseType: !81, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !433, file: !434, line: 17, baseType: !81, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !433, file: !434, line: 19, baseType: !82, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !433, file: !434, line: 21, baseType: !82, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !433, file: !434, line: 22, baseType: !82, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !433, file: !434, line: 23, baseType: !82, size: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !433, file: !434, line: 24, baseType: !82, size: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !433, file: !434, line: 25, baseType: !82, size: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !433, file: !434, line: 26, baseType: !82, size: 64, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !433, file: !434, line: 27, baseType: !82, size: 64, offset: 704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !433, file: !434, line: 28, baseType: !82, size: 64, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !433, file: !434, line: 29, baseType: !82, size: 64, offset: 832)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !413, file: !412, line: 44, baseType: !346, size: 32, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !413, file: !412, line: 50, baseType: !452, size: 16, offset: 864)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !137, line: 19, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !250)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !413, file: !412, line: 51, baseType: !455, size: 16, offset: 880)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !137, line: 18, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !457)
!457 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !298, line: 495, baseType: !81, size: 64, offset: 6528)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !318, file: !298, line: 497, baseType: !460, size: 64, offset: 6592)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !298, line: 381, size: 384, elements: !462)
!462 = !{!463, !464, !1368}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !461, file: !298, line: 382, baseType: !346, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !461, file: !298, line: 383, baseType: !465, size: 128, offset: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !298, line: 376, size: 128, elements: !466)
!466 = !{!467, !1366}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !465, file: !298, line: 377, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !470, line: 640, size: 48640, elements: !471)
!470 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!471 = !{!472, !478, !480, !481, !487, !488, !489, !490, !491, !492, !493, !494, !498, !516, !527, !622, !623, !624, !635, !636, !638, !639, !640, !641, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !720, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !776, !778, !779, !780, !792, !794, !795, !796, !797, !798, !804, !805, !806, !807, !808, !809, !810, !822, !827, !832, !833, !834, !837, !841, !844, !847, !850, !853, !857, !860, !863, !869, !870, !871, !877, !878, !879, !880, !881, !890, !891, !892, !893, !894, !899, !900, !901, !904, !905, !908, !911, !914, !917, !920, !923, !924, !1004, !1007, !1010, !1011, !1014, !1015, !1016, !1022, !1023, !1024, !1037, !1038, !1039, !1051, !1056, !1059, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !469, file: !470, line: 646, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !474, line: 56, size: 128, elements: !475)
!474 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !474, line: 57, baseType: !81, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !473, file: !474, line: 58, baseType: !136, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !469, file: !470, line: 649, baseType: !479, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !469, file: !470, line: 657, baseType: !80, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !469, file: !470, line: 658, baseType: !482, size: 32, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !483, line: 113, baseType: !484)
!483 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !483, line: 111, size: 32, elements: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !484, file: !483, line: 112, baseType: !346, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !470, line: 660, baseType: !7, size: 32, offset: 288)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !469, file: !470, line: 661, baseType: !7, size: 32, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !469, file: !470, line: 684, baseType: !95, size: 32, offset: 352)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !469, file: !470, line: 686, baseType: !95, size: 32, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !469, file: !470, line: 687, baseType: !95, size: 32, offset: 416)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !469, file: !470, line: 688, baseType: !95, size: 32, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !469, file: !470, line: 689, baseType: !7, size: 32, offset: 480)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !469, file: !470, line: 691, baseType: !495, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !470, line: 691, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !469, file: !470, line: 692, baseType: !499, size: 832, offset: 576)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !470, line: 451, size: 832, elements: !500)
!500 = !{!501, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !499, file: !470, line: 453, baseType: !502, size: 128)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !470, line: 325, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !502, file: !470, line: 326, baseType: !81, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !502, file: !470, line: 327, baseType: !136, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !499, file: !470, line: 454, baseType: !305, size: 192, align: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !499, file: !470, line: 455, baseType: !155, size: 128, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !499, file: !470, line: 456, baseType: !7, size: 32, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !499, file: !470, line: 458, baseType: !326, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !499, file: !470, line: 459, baseType: !326, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !499, file: !470, line: 460, baseType: !326, size: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !499, file: !470, line: 461, baseType: !326, size: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !499, file: !470, line: 463, baseType: !326, size: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !499, file: !470, line: 465, baseType: !515, offset: 832)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !470, line: 415, elements: !182)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !469, file: !470, line: 693, baseType: !517, size: 384, offset: 1408)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !470, line: 489, size: 384, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !517, file: !470, line: 490, baseType: !155, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !517, file: !470, line: 491, baseType: !81, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !517, file: !470, line: 492, baseType: !81, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !517, file: !470, line: 493, baseType: !7, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !517, file: !470, line: 494, baseType: !250, size: 16, offset: 288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !517, file: !470, line: 495, baseType: !250, size: 16, offset: 304)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !517, file: !470, line: 497, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !469, file: !470, line: 697, baseType: !528, size: 1792, offset: 1792)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !470, line: 507, size: 1792, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !619, !620}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !528, file: !470, line: 508, baseType: !305, size: 192, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !528, file: !470, line: 515, baseType: !326, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !528, file: !470, line: 516, baseType: !326, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !528, file: !470, line: 517, baseType: !326, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !528, file: !470, line: 518, baseType: !326, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !528, file: !470, line: 519, baseType: !326, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !528, file: !470, line: 526, baseType: !360, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !528, file: !470, line: 527, baseType: !326, size: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !470, line: 528, baseType: !7, size: 32, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !528, file: !470, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !528, file: !470, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !528, file: !470, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !528, file: !470, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !528, file: !470, line: 563, baseType: !544, size: 512, offset: 704)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !545)
!545 = !{!546, !554, !555, !560, !612, !616, !617, !618}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !544, file: !6, line: 119, baseType: !547, size: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !548, line: 9, size: 256, elements: !549)
!548 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !547, file: !548, line: 10, baseType: !305, size: 192, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !547, file: !548, line: 11, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !553, line: 29, baseType: !360)
!553 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !544, file: !6, line: 120, baseType: !552, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !544, file: !6, line: 121, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!5, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !544, file: !6, line: 122, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !563)
!563 = !{!564, !584, !585, !588, !598, !599, !607, !611}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !562, file: !6, line: 160, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !566, file: !6, line: 215, baseType: !371)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !566, file: !6, line: 216, baseType: !7, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !566, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !566, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !566, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !566, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !566, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !566, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !566, file: !6, line: 233, baseType: !552, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !566, file: !6, line: 234, baseType: !559, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !566, file: !6, line: 235, baseType: !552, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !566, file: !6, line: 236, baseType: !559, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !566, file: !6, line: 237, baseType: !581, size: 4096, offset: 512)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 4096, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 8)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !562, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !562, file: !6, line: 162, baseType: !586, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !79, line: 27, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !242, line: 96, baseType: !95)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !562, file: !6, line: 163, baseType: !589, size: 32, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !590, line: 276, baseType: !591)
!590 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !590, line: 276, size: 32, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !591, file: !590, line: 276, baseType: !594, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !590, line: 70, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !590, line: 65, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !595, file: !590, line: 66, baseType: !7, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !562, file: !6, line: 164, baseType: !559, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !562, file: !6, line: 165, baseType: !600, size: 128, offset: 256)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !548, line: 14, size: 128, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !600, file: !548, line: 15, baseType: !603, size: 128)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !306, line: 125, size: 128, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !603, file: !306, line: 126, baseType: !322, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !603, file: !306, line: 127, baseType: !310, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !562, file: !6, line: 166, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!552}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !562, file: !6, line: 167, baseType: !552, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !544, file: !6, line: 123, baseType: !613, size: 8, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !137, line: 17, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !615)
!615 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !544, file: !6, line: 124, baseType: !613, size: 8, offset: 456)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !544, file: !6, line: 125, baseType: !613, size: 8, offset: 464)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !544, file: !6, line: 126, baseType: !613, size: 8, offset: 472)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !528, file: !470, line: 572, baseType: !544, size: 512, offset: 1216)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !528, file: !470, line: 580, baseType: !621, size: 64, offset: 1728)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !469, file: !470, line: 721, baseType: !7, size: 32, offset: 3584)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !469, file: !470, line: 722, baseType: !95, size: 32, offset: 3616)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !469, file: !470, line: 723, baseType: !625, size: 64, offset: 3648)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !628, line: 17, baseType: !629)
!628 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !628, line: 17, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !629, file: !628, line: 17, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 1)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !469, file: !470, line: 724, baseType: !627, size: 64, offset: 3712)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !469, file: !470, line: 749, baseType: !637, offset: 3776)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !470, line: 290, elements: !182)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !469, file: !470, line: 751, baseType: !155, size: 128, offset: 3776)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !469, file: !470, line: 757, baseType: !314, size: 64, offset: 3904)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !469, file: !470, line: 758, baseType: !314, size: 64, offset: 3968)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !469, file: !470, line: 761, baseType: !642, size: 320, offset: 4032)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !401, line: 34, size: 320, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !642, file: !401, line: 35, baseType: !326, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !642, file: !401, line: 36, baseType: !646, size: 256, offset: 64)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !405)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !469, file: !470, line: 766, baseType: !95, size: 32, offset: 4352)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !469, file: !470, line: 767, baseType: !95, size: 32, offset: 4384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !469, file: !470, line: 768, baseType: !95, size: 32, offset: 4416)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !469, file: !470, line: 770, baseType: !95, size: 32, offset: 4448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !469, file: !470, line: 772, baseType: !81, size: 64, offset: 4480)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !469, file: !470, line: 775, baseType: !7, size: 32, offset: 4544)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !469, file: !470, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !469, file: !470, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !469, file: !470, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !469, file: !470, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !469, file: !470, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !469, file: !470, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !469, file: !470, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !469, file: !470, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !469, file: !470, line: 831, baseType: !81, size: 64, offset: 4672)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !469, file: !470, line: 833, baseType: !663, size: 384, offset: 4736)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !664)
!664 = !{!665, !670}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !663, file: !12, line: 26, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!82, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !12, line: 27, baseType: !671, size: 320, offset: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !12, line: 27, size: 320, elements: !672)
!672 = !{!673, !683, !710}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !671, file: !12, line: 36, baseType: !674, size: 320)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 29, size: 320, elements: !675)
!675 = !{!676, !678, !679, !680, !681, !682}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !674, file: !12, line: 30, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !12, line: 31, baseType: !136, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !12, line: 32, baseType: !136, size: 32, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !674, file: !12, line: 33, baseType: !136, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !674, file: !12, line: 34, baseType: !326, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !674, file: !12, line: 35, baseType: !677, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !671, file: !12, line: 46, baseType: !684, size: 192)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 38, size: 192, elements: !685)
!685 = !{!686, !687, !688, !709}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !684, file: !12, line: 39, baseType: !586, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !12, line: 41, baseType: !689, size: 64, offset: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !12, line: 41, size: 64, elements: !690)
!690 = !{!691, !699}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !689, file: !12, line: 42, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !694, line: 7, size: 128, elements: !695)
!694 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!695 = !{!696, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !693, file: !694, line: 8, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !242, line: 93, baseType: !290)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !693, file: !694, line: 9, baseType: !290, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !689, file: !12, line: 43, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !702, line: 7, size: 64, elements: !703)
!702 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!703 = !{!704, !708}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !701, file: !702, line: 8, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !702, line: 5, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !137, line: 20, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !95)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !701, file: !702, line: 9, baseType: !706, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !684, file: !12, line: 45, baseType: !326, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !671, file: !12, line: 54, baseType: !711, size: 256)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 48, size: 256, elements: !712)
!712 = !{!713, !716, !717, !718, !719}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !711, file: !12, line: 49, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !711, file: !12, line: 50, baseType: !95, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !711, file: !12, line: 51, baseType: !95, size: 32, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !711, file: !12, line: 52, baseType: !81, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !711, file: !12, line: 53, baseType: !81, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !469, file: !470, line: 835, baseType: !721, size: 32, offset: 5120)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !79, line: 22, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !242, line: 28, baseType: !95)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !469, file: !470, line: 836, baseType: !721, size: 32, offset: 5152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !469, file: !470, line: 840, baseType: !81, size: 64, offset: 5184)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !469, file: !470, line: 849, baseType: !468, size: 64, offset: 5248)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !469, file: !470, line: 852, baseType: !468, size: 64, offset: 5312)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !469, file: !470, line: 857, baseType: !155, size: 128, offset: 5376)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !469, file: !470, line: 858, baseType: !155, size: 128, offset: 5504)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !469, file: !470, line: 859, baseType: !468, size: 64, offset: 5632)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !469, file: !470, line: 867, baseType: !155, size: 128, offset: 5696)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !469, file: !470, line: 868, baseType: !155, size: 128, offset: 5824)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !469, file: !470, line: 871, baseType: !733, size: 64, offset: 5952)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !735, line: 59, size: 768, elements: !736)
!735 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !738, !739, !740, !751, !752, !759, !768}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !734, file: !735, line: 61, baseType: !482, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !734, file: !735, line: 62, baseType: !7, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !734, file: !735, line: 63, baseType: !168, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !734, file: !735, line: 65, baseType: !741, size: 256, offset: 64)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 256, elements: !405)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !79, line: 182, size: 64, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !742, file: !79, line: 183, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !79, line: 186, size: 128, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !746, file: !79, line: 187, baseType: !745, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !746, file: !79, line: 187, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !734, file: !735, line: 66, baseType: !742, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !734, file: !735, line: 68, baseType: !753, size: 128, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !754, line: 40, baseType: !755)
!754 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !754, line: 36, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !755, file: !754, line: 37, baseType: !168)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !755, file: !754, line: 38, baseType: !155, size: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !734, file: !735, line: 69, baseType: !760, size: 128, align: 64, offset: 512)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !79, line: 216, size: 128, align: 64, elements: !761)
!761 = !{!762, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !79, line: 217, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !760, file: !79, line: 218, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !763}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !734, file: !735, line: 70, baseType: !769, size: 128, offset: 640)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 128, elements: !633)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !735, line: 54, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !770, file: !735, line: 55, baseType: !95, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !770, file: !735, line: 56, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !735, line: 56, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !469, file: !470, line: 872, baseType: !777, size: 512, offset: 6016)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 512, elements: !405)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !469, file: !470, line: 873, baseType: !155, size: 128, offset: 6528)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !469, file: !470, line: 874, baseType: !155, size: 128, offset: 6656)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !469, file: !470, line: 876, baseType: !781, size: 64, offset: 6784)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !783, line: 26, size: 192, elements: !784)
!783 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !782, file: !783, line: 27, baseType: !7, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !782, file: !783, line: 28, baseType: !787, size: 128, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !788, line: 43, size: 128, elements: !789)
!788 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !787, file: !788, line: 44, baseType: !371)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !787, file: !788, line: 45, baseType: !155, size: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !469, file: !470, line: 879, baseType: !793, size: 64, offset: 6848)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !469, file: !470, line: 882, baseType: !793, size: 64, offset: 6912)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !469, file: !470, line: 884, baseType: !326, size: 64, offset: 6976)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !469, file: !470, line: 885, baseType: !326, size: 64, offset: 7040)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !469, file: !470, line: 890, baseType: !326, size: 64, offset: 7104)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !469, file: !470, line: 891, baseType: !799, size: 128, offset: 7168)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !470, line: 242, size: 128, elements: !800)
!800 = !{!801, !802, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !799, file: !470, line: 244, baseType: !326, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !799, file: !470, line: 245, baseType: !326, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !799, file: !470, line: 246, baseType: !371, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !469, file: !470, line: 900, baseType: !81, size: 64, offset: 7296)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !469, file: !470, line: 901, baseType: !81, size: 64, offset: 7360)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !469, file: !470, line: 904, baseType: !326, size: 64, offset: 7424)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !469, file: !470, line: 907, baseType: !326, size: 64, offset: 7488)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !469, file: !470, line: 910, baseType: !81, size: 64, offset: 7552)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !469, file: !470, line: 911, baseType: !81, size: 64, offset: 7616)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !469, file: !470, line: 914, baseType: !811, size: 640, offset: 7680)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !812, line: 123, size: 640, elements: !813)
!812 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !820, !821}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !811, file: !812, line: 124, baseType: !815, size: 576)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 576, elements: !210)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !812, line: 108, size: 192, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !816, file: !812, line: 109, baseType: !326, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !816, file: !812, line: 110, baseType: !600, size: 128, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !811, file: !812, line: 125, baseType: !7, size: 32, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !811, file: !812, line: 126, baseType: !7, size: 32, offset: 608)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !469, file: !470, line: 917, baseType: !823, size: 192, offset: 8320)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !812, line: 134, size: 192, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !823, file: !812, line: 135, baseType: !760, size: 128, align: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !823, file: !812, line: 136, baseType: !7, size: 32, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !469, file: !470, line: 923, baseType: !828, size: 64, offset: 8512)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !831, line: 11, flags: DIFlagFwdDecl)
!831 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!832 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !469, file: !470, line: 926, baseType: !828, size: 64, offset: 8576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !469, file: !470, line: 929, baseType: !828, size: 64, offset: 8640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !469, file: !470, line: 933, baseType: !835, size: 64, offset: 8704)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !470, line: 933, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !469, file: !470, line: 943, baseType: !838, size: 128, offset: 8768)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 16)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !469, file: !470, line: 945, baseType: !842, size: 64, offset: 8896)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !470, line: 49, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !469, file: !470, line: 956, baseType: !845, size: 64, offset: 8960)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !470, line: 45, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !469, file: !470, line: 959, baseType: !848, size: 64, offset: 9024)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !470, line: 959, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !469, file: !470, line: 962, baseType: !851, size: 64, offset: 9088)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !470, line: 66, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !469, file: !470, line: 966, baseType: !854, size: 64, offset: 9152)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !856, line: 35, flags: DIFlagFwdDecl)
!856 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!857 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !469, file: !470, line: 969, baseType: !858, size: 64, offset: 9216)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !812, line: 223, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !469, file: !470, line: 970, baseType: !861, size: 64, offset: 9280)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !470, line: 62, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !469, file: !470, line: 971, baseType: !864, size: 64, offset: 9344)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !865, line: 25, baseType: !866)
!865 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !865, line: 23, size: 64, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !866, file: !865, line: 24, baseType: !632, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !469, file: !470, line: 972, baseType: !864, size: 64, offset: 9408)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !469, file: !470, line: 974, baseType: !864, size: 64, offset: 9472)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !469, file: !470, line: 975, baseType: !872, size: 192, offset: 9536)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !873, line: 30, size: 192, elements: !874)
!873 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !872, file: !873, line: 31, baseType: !155, size: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !872, file: !873, line: 32, baseType: !864, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !469, file: !470, line: 976, baseType: !81, size: 64, offset: 9728)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !469, file: !470, line: 977, baseType: !255, size: 64, offset: 9792)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !469, file: !470, line: 978, baseType: !7, size: 32, offset: 9856)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !469, file: !470, line: 980, baseType: !763, size: 64, offset: 9920)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !469, file: !470, line: 989, baseType: !882, size: 128, offset: 9984)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !883, line: 35, size: 128, elements: !884)
!883 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !882, file: !883, line: 36, baseType: !95, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !882, file: !883, line: 37, baseType: !346, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !882, file: !883, line: 38, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !883, line: 23, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !469, file: !470, line: 992, baseType: !326, size: 64, offset: 10112)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !469, file: !470, line: 993, baseType: !326, size: 64, offset: 10176)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !469, file: !470, line: 996, baseType: !168, offset: 10240)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !469, file: !470, line: 999, baseType: !371, offset: 10240)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !469, file: !470, line: 1001, baseType: !895, size: 64, offset: 10240)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !470, line: 636, size: 64, elements: !896)
!896 = !{!897}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !895, file: !470, line: 637, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !469, file: !470, line: 1005, baseType: !603, size: 128, offset: 10304)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !469, file: !470, line: 1007, baseType: !468, size: 64, offset: 10432)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !469, file: !470, line: 1009, baseType: !902, size: 64, offset: 10496)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !470, line: 1009, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !469, file: !470, line: 1043, baseType: !80, size: 64, offset: 10560)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !469, file: !470, line: 1046, baseType: !906, size: 64, offset: 10624)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !470, line: 41, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !469, file: !470, line: 1050, baseType: !909, size: 64, offset: 10688)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !470, line: 42, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !469, file: !470, line: 1054, baseType: !912, size: 64, offset: 10752)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !470, line: 55, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !469, file: !470, line: 1056, baseType: !915, size: 64, offset: 10816)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !470, line: 40, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !469, file: !470, line: 1058, baseType: !918, size: 64, offset: 10880)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !470, line: 47, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !469, file: !470, line: 1061, baseType: !921, size: 64, offset: 10944)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !470, line: 43, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !469, file: !470, line: 1064, baseType: !81, size: 64, offset: 11008)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !469, file: !470, line: 1065, baseType: !925, size: 64, offset: 11072)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !873, line: 14, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !873, line: 12, size: 384, elements: !928)
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !873, line: 13, baseType: !930, size: 384)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !927, file: !873, line: 13, size: 384, elements: !931)
!931 = !{!932, !933, !934, !935}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !930, file: !873, line: 13, baseType: !95, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !930, file: !873, line: 13, baseType: !95, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !930, file: !873, line: 13, baseType: !95, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !930, file: !873, line: 13, baseType: !936, size: 256, offset: 128)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !937, line: 32, size: 256, elements: !938)
!937 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!938 = !{!939, !945, !958, !964, !973, !993, !998}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !936, file: !937, line: 37, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !937, line: 34, size: 64, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !940, file: !937, line: 35, baseType: !722, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !940, file: !937, line: 36, baseType: !944, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !242, line: 49, baseType: !7)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !936, file: !937, line: 45, baseType: !946, size: 192)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !937, line: 40, size: 192, elements: !947)
!947 = !{!948, !950, !951, !957}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !946, file: !937, line: 41, baseType: !949, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !242, line: 95, baseType: !95)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !946, file: !937, line: 42, baseType: !95, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !946, file: !937, line: 43, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !937, line: 11, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !937, line: 8, size: 64, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !953, file: !937, line: 9, baseType: !95, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !953, file: !937, line: 10, baseType: !80, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !946, file: !937, line: 44, baseType: !95, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !936, file: !937, line: 52, baseType: !959, size: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !937, line: 48, size: 128, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !959, file: !937, line: 49, baseType: !722, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !959, file: !937, line: 50, baseType: !944, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !959, file: !937, line: 51, baseType: !952, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !936, file: !937, line: 61, baseType: !965, size: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !937, line: 55, size: 256, elements: !966)
!966 = !{!967, !968, !969, !970, !972}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !965, file: !937, line: 56, baseType: !722, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !965, file: !937, line: 57, baseType: !944, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !965, file: !937, line: 58, baseType: !95, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !965, file: !937, line: 59, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !242, line: 94, baseType: !243)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !965, file: !937, line: 60, baseType: !971, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !936, file: !937, line: 95, baseType: !974, size: 256)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !937, line: 64, size: 256, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !974, file: !937, line: 65, baseType: !80, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !937, line: 77, baseType: !978, size: 192, offset: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !937, line: 77, size: 192, elements: !979)
!979 = !{!980, !981, !988}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !978, file: !937, line: 82, baseType: !457, size: 16)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !978, file: !937, line: 88, baseType: !982, size: 192)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !937, line: 84, size: 192, elements: !983)
!983 = !{!984, !986, !987}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !982, file: !937, line: 85, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !582)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !982, file: !937, line: 86, baseType: !80, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !982, file: !937, line: 87, baseType: !80, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !978, file: !937, line: 93, baseType: !989, size: 96)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !937, line: 90, size: 96, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !989, file: !937, line: 91, baseType: !985, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !989, file: !937, line: 92, baseType: !138, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !936, file: !937, line: 101, baseType: !994, size: 128)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !937, line: 98, size: 128, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !994, file: !937, line: 99, baseType: !82, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !994, file: !937, line: 100, baseType: !95, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !936, file: !937, line: 108, baseType: !999, size: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !937, line: 104, size: 128, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !999, file: !937, line: 105, baseType: !80, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !999, file: !937, line: 106, baseType: !95, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !999, file: !937, line: 107, baseType: !7, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !469, file: !470, line: 1067, baseType: !1005, offset: 11136)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1006, line: 12, elements: !182)
!1006 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !469, file: !470, line: 1099, baseType: !1008, size: 64, offset: 11136)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !470, line: 56, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !469, file: !470, line: 1103, baseType: !155, size: 128, offset: 11200)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !469, file: !470, line: 1104, baseType: !1012, size: 64, offset: 11328)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !470, line: 46, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !469, file: !470, line: 1105, baseType: !423, size: 192, offset: 11392)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !469, file: !470, line: 1106, baseType: !7, size: 32, offset: 11584)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !469, file: !470, line: 1109, baseType: !1017, size: 128, offset: 11648)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, size: 128, elements: !1020)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !470, line: 51, flags: DIFlagFwdDecl)
!1020 = !{!1021}
!1021 = !DISubrange(count: 2)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !469, file: !470, line: 1110, baseType: !423, size: 192, offset: 11776)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !469, file: !470, line: 1111, baseType: !155, size: 128, offset: 11968)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !469, file: !470, line: 1173, baseType: !1025, size: 64, offset: 12096)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1027, line: 62, size: 256, align: 256, elements: !1028)
!1027 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029, !1030, !1031, !1036}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1026, file: !1027, line: 75, baseType: !138, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1026, file: !1027, line: 90, baseType: !138, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1026, file: !1027, line: 124, baseType: !1032, size: 64, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !1027, line: 109, size: 64, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1032, file: !1027, line: 110, baseType: !327, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1032, file: !1027, line: 112, baseType: !327, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !1027, line: 144, baseType: !138, size: 32, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !469, file: !470, line: 1174, baseType: !136, size: 32, offset: 12160)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !469, file: !470, line: 1179, baseType: !81, size: 64, offset: 12224)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !469, file: !470, line: 1182, baseType: !1040, size: 128, offset: 12288)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !401, line: 76, size: 128, elements: !1041)
!1041 = !{!1042, !1047, !1050}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1040, file: !401, line: 85, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1044, line: 7, size: 64, elements: !1045)
!1044 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1043, file: !1044, line: 12, baseType: !629, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1040, file: !401, line: 88, baseType: !1048, size: 8, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !79, line: 30, baseType: !1049)
!1049 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1040, file: !401, line: 95, baseType: !1048, size: 8, offset: 72)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !470, line: 1184, baseType: !1052, size: 128, offset: 12416)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !470, line: 1184, size: 128, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1052, file: !470, line: 1185, baseType: !482, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1052, file: !470, line: 1186, baseType: !760, size: 128, align: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !469, file: !470, line: 1190, baseType: !1057, size: 64, offset: 12544)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !470, line: 53, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !469, file: !470, line: 1192, baseType: !1060, size: 128, offset: 12608)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !401, line: 64, size: 128, elements: !1061)
!1061 = !{!1062, !1155, !1156}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1060, file: !401, line: 65, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !298, line: 68, size: 512, align: 128, elements: !1065)
!1065 = !{!1066, !1067, !1147, !1154}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1064, file: !298, line: 69, baseType: !81, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !298, line: 77, baseType: !1068, size: 320, offset: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !298, line: 77, size: 320, elements: !1069)
!1069 = !{!1070, !1079, !1084, !1112, !1120, !1126, !1139, !1146}
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !298, line: 78, baseType: !1071, size: 320)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !298, line: 78, size: 320, elements: !1072)
!1072 = !{!1073, !1074, !1077, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1071, file: !298, line: 84, baseType: !155, size: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1071, file: !298, line: 86, baseType: !1075, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !298, line: 26, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1071, file: !298, line: 87, baseType: !81, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1071, file: !298, line: 94, baseType: !81, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !298, line: 96, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !298, line: 96, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1080, file: !298, line: 101, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !79, line: 143, baseType: !326)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !298, line: 103, baseType: !1085, size: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !298, line: 103, size: 320, elements: !1086)
!1086 = !{!1087, !1097, !1100, !1101}
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !298, line: 104, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !298, line: 104, size: 128, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1088, file: !298, line: 105, baseType: !155, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !298, line: 106, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !298, line: 106, size: 128, elements: !1093)
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1092, file: !298, line: 107, baseType: !1063, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1092, file: !298, line: 109, baseType: !95, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1092, file: !298, line: 110, baseType: !95, size: 32, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1085, file: !298, line: 117, baseType: !1098, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !298, line: 117, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1085, file: !298, line: 119, baseType: !80, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !298, line: 120, baseType: !1102, size: 64, offset: 256)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !298, line: 120, size: 64, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1102, file: !298, line: 121, baseType: !80, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1102, file: !298, line: 122, baseType: !81, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !298, line: 123, baseType: !1107, size: 32)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !298, line: 123, size: 32, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1107, file: !298, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1107, file: !298, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1107, file: !298, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !298, line: 130, baseType: !1113, size: 192)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !298, line: 130, size: 192, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1113, file: !298, line: 131, baseType: !81, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1113, file: !298, line: 134, baseType: !615, size: 8, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1113, file: !298, line: 135, baseType: !615, size: 8, offset: 72)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1113, file: !298, line: 136, baseType: !346, size: 32, offset: 96)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1113, file: !298, line: 137, baseType: !7, size: 32, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !298, line: 139, baseType: !1121, size: 256)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !298, line: 139, size: 256, elements: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1121, file: !298, line: 140, baseType: !81, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1121, file: !298, line: 141, baseType: !346, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1121, file: !298, line: 143, baseType: !155, size: 128, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !298, line: 145, baseType: !1127, size: 256)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !298, line: 145, size: 256, elements: !1128)
!1128 = !{!1129, !1130, !1132, !1133, !1138}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1127, file: !298, line: 146, baseType: !81, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1127, file: !298, line: 147, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !287, line: 509, baseType: !1063)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1127, file: !298, line: 148, baseType: !81, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !298, line: 149, baseType: !1134, size: 64, offset: 192)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !298, line: 149, size: 64, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1134, file: !298, line: 150, baseType: !314, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1134, file: !298, line: 151, baseType: !346, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1127, file: !298, line: 156, baseType: !168, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !298, line: 159, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !298, line: 159, size: 128, elements: !1141)
!1141 = !{!1142, !1145}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1140, file: !298, line: 161, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !298, line: 161, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1140, file: !298, line: 162, baseType: !80, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1068, file: !298, line: 176, baseType: !760, size: 128, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !298, line: 179, baseType: !1148, size: 32, offset: 384)
!1148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !298, line: 179, size: 32, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1148, file: !298, line: 184, baseType: !346, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1148, file: !298, line: 192, baseType: !7, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1148, file: !298, line: 194, baseType: !7, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1148, file: !298, line: 195, baseType: !95, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1064, file: !298, line: 199, baseType: !346, size: 32, offset: 416)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1060, file: !401, line: 67, baseType: !138, size: 32, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1060, file: !401, line: 68, baseType: !138, size: 32, offset: 96)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !469, file: !470, line: 1206, baseType: !95, size: 32, offset: 12736)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !469, file: !470, line: 1207, baseType: !95, size: 32, offset: 12768)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !469, file: !470, line: 1209, baseType: !81, size: 64, offset: 12800)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !469, file: !470, line: 1219, baseType: !326, size: 64, offset: 12864)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !469, file: !470, line: 1220, baseType: !326, size: 64, offset: 12928)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !469, file: !470, line: 1317, baseType: !95, size: 32, offset: 12992)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !469, file: !470, line: 1319, baseType: !468, size: 64, offset: 13056)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !469, file: !470, line: 1322, baseType: !1165, size: 64, offset: 13120)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1167, line: 56, size: 512, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1175, !1176, !1178}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1166, file: !1167, line: 57, baseType: !1165, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1166, file: !1167, line: 58, baseType: !80, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1166, file: !1167, line: 59, baseType: !81, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !1167, line: 60, baseType: !81, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1166, file: !1167, line: 61, baseType: !1174, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1166, file: !1167, line: 62, baseType: !7, size: 32, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1166, file: !1167, line: 63, baseType: !1177, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !79, line: 153, baseType: !326)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1166, file: !1167, line: 64, baseType: !1179, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !469, file: !470, line: 1326, baseType: !482, size: 32, offset: 13184)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !469, file: !470, line: 1342, baseType: !80, size: 64, offset: 13248)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !469, file: !470, line: 1343, baseType: !327, size: 64, offset: 13312)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !469, file: !470, line: 1344, baseType: !326, size: 64, offset: 13376)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !469, file: !470, line: 1345, baseType: !327, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !469, file: !470, line: 1346, baseType: !327, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !469, file: !470, line: 1347, baseType: !327, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !469, file: !470, line: 1348, baseType: !760, size: 128, align: 64, offset: 13504)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !469, file: !470, line: 1358, baseType: !1190, size: 34816, offset: 13824)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1191, line: 485, size: 34816, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1222, !1223, !1224, !1225, !1226, !1227, !1230, !1231, !1232}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1190, file: !1191, line: 487, baseType: !1194, size: 192)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 192, elements: !210)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1196, line: 16, size: 64, elements: !1197)
!1196 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1195, file: !1196, line: 17, baseType: !452, size: 16)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1195, file: !1196, line: 18, baseType: !452, size: 16, offset: 16)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1195, file: !1196, line: 19, baseType: !452, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1195, file: !1196, line: 19, baseType: !452, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1195, file: !1196, line: 19, baseType: !452, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1195, file: !1196, line: 19, baseType: !452, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1195, file: !1196, line: 19, baseType: !452, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1195, file: !1196, line: 20, baseType: !452, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1195, file: !1196, line: 20, baseType: !452, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1195, file: !1196, line: 20, baseType: !452, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1195, file: !1196, line: 20, baseType: !452, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1195, file: !1196, line: 20, baseType: !452, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1195, file: !1196, line: 20, baseType: !452, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1190, file: !1191, line: 491, baseType: !81, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1190, file: !1191, line: 495, baseType: !250, size: 16, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1190, file: !1191, line: 496, baseType: !250, size: 16, offset: 272)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1190, file: !1191, line: 497, baseType: !250, size: 16, offset: 288)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1190, file: !1191, line: 498, baseType: !250, size: 16, offset: 304)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1190, file: !1191, line: 502, baseType: !81, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1190, file: !1191, line: 503, baseType: !81, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1190, file: !1191, line: 514, baseType: !1219, size: 256, offset: 448)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 256, elements: !405)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1191, line: 483, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1190, file: !1191, line: 516, baseType: !81, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1190, file: !1191, line: 518, baseType: !81, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1190, file: !1191, line: 520, baseType: !81, size: 64, offset: 832)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1190, file: !1191, line: 521, baseType: !81, size: 64, offset: 896)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1190, file: !1191, line: 522, baseType: !81, size: 64, offset: 960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1190, file: !1191, line: 528, baseType: !1228, size: 64, offset: 1024)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1191, line: 10, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1190, file: !1191, line: 535, baseType: !81, size: 64, offset: 1088)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1190, file: !1191, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1190, file: !1191, line: 540, baseType: !1233, size: 33280, offset: 1536)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1234, line: 317, size: 33280, elements: !1235)
!1234 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1233, file: !1234, line: 330, baseType: !7, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1233, file: !1234, line: 337, baseType: !81, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1233, file: !1234, line: 348, baseType: !1239, size: 32768, offset: 512)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1234, line: 304, size: 32768, elements: !1240)
!1240 = !{!1241, !1256, !1295, !1345, !1362}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1239, file: !1234, line: 305, baseType: !1242, size: 896)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1234, line: 12, size: 896, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1255}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1242, file: !1234, line: 13, baseType: !136, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1242, file: !1234, line: 14, baseType: !136, size: 32, offset: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1242, file: !1234, line: 15, baseType: !136, size: 32, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1242, file: !1234, line: 16, baseType: !136, size: 32, offset: 96)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1242, file: !1234, line: 17, baseType: !136, size: 32, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1242, file: !1234, line: 18, baseType: !136, size: 32, offset: 160)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1242, file: !1234, line: 19, baseType: !136, size: 32, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1242, file: !1234, line: 22, baseType: !1252, size: 640, offset: 224)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 20)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1242, file: !1234, line: 25, baseType: !136, size: 32, offset: 864)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1239, file: !1234, line: 306, baseType: !1257, size: 4096, align: 128)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1234, line: 34, size: 4096, align: 128, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1278, !1279, !1280, !1284, !1286, !1290}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1257, file: !1234, line: 35, baseType: !452, size: 16)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1257, file: !1234, line: 36, baseType: !452, size: 16, offset: 16)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1257, file: !1234, line: 37, baseType: !452, size: 16, offset: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1257, file: !1234, line: 38, baseType: !452, size: 16, offset: 48)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1234, line: 39, baseType: !1264, size: 128, offset: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !1234, line: 39, size: 128, elements: !1265)
!1265 = !{!1266, !1271}
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !1234, line: 40, baseType: !1267, size: 128)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !1234, line: 40, size: 128, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1267, file: !1234, line: 41, baseType: !326, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1267, file: !1234, line: 42, baseType: !326, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !1234, line: 44, baseType: !1272, size: 128)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !1234, line: 44, size: 128, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1272, file: !1234, line: 45, baseType: !136, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1272, file: !1234, line: 46, baseType: !136, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1272, file: !1234, line: 47, baseType: !136, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1272, file: !1234, line: 48, baseType: !136, size: 32, offset: 96)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1257, file: !1234, line: 51, baseType: !136, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1257, file: !1234, line: 52, baseType: !136, size: 32, offset: 224)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1257, file: !1234, line: 55, baseType: !1281, size: 1024, offset: 256)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1257, file: !1234, line: 58, baseType: !1285, size: 2048, offset: 1280)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 2048, elements: !214)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1257, file: !1234, line: 60, baseType: !1287, size: 384, offset: 3328)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 12)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1234, line: 62, baseType: !1291, size: 384, offset: 3712)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !1234, line: 62, size: 384, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1291, file: !1234, line: 63, baseType: !1287, size: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1291, file: !1234, line: 64, baseType: !1287, size: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1239, file: !1234, line: 307, baseType: !1296, size: 1088)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1234, line: 79, size: 1088, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1344}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1296, file: !1234, line: 80, baseType: !136, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1296, file: !1234, line: 81, baseType: !136, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1296, file: !1234, line: 82, baseType: !136, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1296, file: !1234, line: 83, baseType: !136, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1296, file: !1234, line: 84, baseType: !136, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1296, file: !1234, line: 85, baseType: !136, size: 32, offset: 160)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1296, file: !1234, line: 86, baseType: !136, size: 32, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1296, file: !1234, line: 88, baseType: !1252, size: 640, offset: 224)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1296, file: !1234, line: 89, baseType: !613, size: 8, offset: 864)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1296, file: !1234, line: 90, baseType: !613, size: 8, offset: 872)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1296, file: !1234, line: 91, baseType: !613, size: 8, offset: 880)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1296, file: !1234, line: 92, baseType: !613, size: 8, offset: 888)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1296, file: !1234, line: 93, baseType: !613, size: 8, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1296, file: !1234, line: 94, baseType: !613, size: 8, offset: 904)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1296, file: !1234, line: 95, baseType: !1313, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1315, line: 11, size: 128, elements: !1316)
!1315 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1314, file: !1315, line: 12, baseType: !82, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1314, file: !1315, line: 13, baseType: !1319, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1321, line: 56, size: 1344, elements: !1322)
!1321 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1320, file: !1321, line: 61, baseType: !81, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1320, file: !1321, line: 62, baseType: !81, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1320, file: !1321, line: 63, baseType: !81, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1320, file: !1321, line: 64, baseType: !81, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1320, file: !1321, line: 65, baseType: !81, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1320, file: !1321, line: 66, baseType: !81, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1320, file: !1321, line: 68, baseType: !81, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1320, file: !1321, line: 69, baseType: !81, size: 64, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1320, file: !1321, line: 70, baseType: !81, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1320, file: !1321, line: 71, baseType: !81, size: 64, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1320, file: !1321, line: 72, baseType: !81, size: 64, offset: 640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1320, file: !1321, line: 73, baseType: !81, size: 64, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1320, file: !1321, line: 74, baseType: !81, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1320, file: !1321, line: 75, baseType: !81, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1320, file: !1321, line: 76, baseType: !81, size: 64, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1320, file: !1321, line: 81, baseType: !81, size: 64, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1320, file: !1321, line: 83, baseType: !81, size: 64, offset: 1024)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1320, file: !1321, line: 84, baseType: !81, size: 64, offset: 1088)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !1321, line: 85, baseType: !81, size: 64, offset: 1152)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1320, file: !1321, line: 86, baseType: !81, size: 64, offset: 1216)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1320, file: !1321, line: 87, baseType: !81, size: 64, offset: 1280)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1296, file: !1234, line: 96, baseType: !136, size: 32, offset: 1024)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1239, file: !1234, line: 308, baseType: !1346, size: 4608, align: 512)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1234, line: 289, size: 4608, align: 512, elements: !1347)
!1347 = !{!1348, !1349, !1358}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1346, file: !1234, line: 290, baseType: !1257, size: 4096, align: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1346, file: !1234, line: 291, baseType: !1350, size: 512, offset: 4096)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1234, line: 268, size: 512, elements: !1351)
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1350, file: !1234, line: 269, baseType: !326, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1350, file: !1234, line: 270, baseType: !326, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1350, file: !1234, line: 271, baseType: !1355, size: 384, offset: 128)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 384, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 6)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1346, file: !1234, line: 292, baseType: !1359, offset: 4608)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: 0)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1239, file: !1234, line: 309, baseType: !1363, size: 32768)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 32768, elements: !1364)
!1364 = !{!1365}
!1365 = !DISubrange(count: 4096)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !465, file: !298, line: 378, baseType: !1367, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !461, file: !298, line: 384, baseType: !782, size: 192, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !318, file: !298, line: 500, baseType: !168, offset: 6656)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !318, file: !298, line: 501, baseType: !1371, size: 64, offset: 6656)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !298, line: 387, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !318, file: !298, line: 516, baseType: !1374, size: 64, offset: 6720)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1376, line: 18, flags: DIFlagFwdDecl)
!1376 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !318, file: !298, line: 519, baseType: !285, size: 64, offset: 6784)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !318, file: !298, line: 521, baseType: !1379, size: 64, offset: 6848)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !298, line: 521, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !318, file: !298, line: 545, baseType: !346, size: 32, offset: 6912)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !318, file: !298, line: 548, baseType: !1048, size: 8, offset: 6944)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !318, file: !298, line: 550, baseType: !1384, offset: 6952)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1385, line: 142, elements: !182)
!1385 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !318, file: !298, line: 554, baseType: !1387, size: 256, offset: 6976)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1388, line: 102, size: 256, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1387, file: !1388, line: 103, baseType: !354, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1387, file: !1388, line: 104, baseType: !155, size: 128, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1387, file: !1388, line: 105, baseType: !1393, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1388, line: 21, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !318, file: !298, line: 557, baseType: !136, size: 32, offset: 7232)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !315, file: !298, line: 565, baseType: !1400, offset: 7296)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !1401)
!1401 = !{!1402}
!1402 = !DISubrange(count: -1)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !297, file: !298, line: 333, baseType: !1404, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !287, line: 284, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !287, line: 284, size: 64, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1405, file: !287, line: 284, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !344, line: 19, baseType: !81)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !297, file: !298, line: 334, baseType: !81, size: 64, offset: 640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !297, file: !298, line: 343, baseType: !1411, size: 256, offset: 704)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !297, file: !298, line: 340, size: 256, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1411, file: !298, line: 341, baseType: !305, size: 192, align: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1411, file: !298, line: 342, baseType: !81, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !297, file: !298, line: 351, baseType: !155, size: 128, offset: 960)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !297, file: !298, line: 353, baseType: !1417, size: 64, offset: 1088)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !298, line: 353, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !297, file: !298, line: 356, baseType: !1420, size: 64, offset: 1152)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !298, line: 356, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !297, file: !298, line: 359, baseType: !81, size: 64, offset: 1216)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !297, file: !298, line: 361, baseType: !285, size: 64, offset: 1280)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !297, file: !298, line: 362, baseType: !80, size: 64, offset: 1344)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !297, file: !298, line: 365, baseType: !354, size: 64, offset: 1408)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !297, file: !298, line: 373, baseType: !1428, offset: 1472)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !298, line: 296, elements: !182)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !264, file: !234, line: 90, baseType: !259, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !264, file: !234, line: 91, baseType: !1431, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !224, file: !151, line: 143, baseType: !1433, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!1436, !161}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1439)
!1439 = !{!1440, !1441, !1445, !1449, !1455, !1459}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1438, file: !18, line: 40, baseType: !17, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1438, file: !18, line: 41, baseType: !1442, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1048}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1438, file: !18, line: 42, baseType: !1446, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!80}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1438, file: !18, line: 43, baseType: !1450, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1179, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1438, file: !18, line: 44, baseType: !1456, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1179}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1438, file: !18, line: 45, baseType: !1460, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !80}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !224, file: !151, line: 144, baseType: !1464, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1179, !161}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !224, file: !151, line: 145, baseType: !1468, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !161, !1471, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1376, line: 23, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1376, line: 21, size: 32, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1473, file: !1376, line: 22, baseType: !1476, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !79, line: 32, baseType: !944)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1376, line: 28, baseType: !1479)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1376, line: 26, size: 32, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1479, file: !1376, line: 27, baseType: !1482, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !79, line: 33, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !242, line: 50, baseType: !7)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !150, file: !151, line: 70, baseType: !1485, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1487, line: 123, size: 1024, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1630, !1631, !1632, !1633, !1634}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1486, file: !1487, line: 124, baseType: !346, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1486, file: !1487, line: 125, baseType: !346, size: 32, offset: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1486, file: !1487, line: 135, baseType: !1485, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1486, file: !1487, line: 136, baseType: !103, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1486, file: !1487, line: 138, baseType: !305, size: 192, align: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1486, file: !1487, line: 140, baseType: !1179, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1486, file: !1487, line: 141, baseType: !7, size: 32, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 142, baseType: !1497, size: 256, offset: 512)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 142, size: 256, elements: !1498)
!1498 = !{!1499, !1553, !1557}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1497, file: !1487, line: 143, baseType: !1500, size: 192)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1487, line: 91, size: 192, elements: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1500, file: !1487, line: 92, baseType: !81, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1500, file: !1487, line: 94, baseType: !322, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1500, file: !1487, line: 100, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1487, line: 180, size: 704, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1523, !1524, !1525, !1551, !1552}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1506, file: !1487, line: 182, baseType: !1485, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !1487, line: 183, baseType: !7, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1506, file: !1487, line: 186, baseType: !1511, size: 192, offset: 128)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1512, line: 19, size: 192, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1513 = !{!1514, !1521, !1522}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1511, file: !1512, line: 20, baseType: !1515, size: 128)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1516, line: 292, size: 128, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1517 = !{!1518, !1519, !1520}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1515, file: !1516, line: 293, baseType: !168)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1515, file: !1516, line: 295, baseType: !78, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1515, file: !1516, line: 296, baseType: !80, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1511, file: !1512, line: 21, baseType: !7, size: 32, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1511, file: !1512, line: 22, baseType: !7, size: 32, offset: 160)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1506, file: !1487, line: 187, baseType: !136, size: 32, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1506, file: !1487, line: 188, baseType: !136, size: 32, offset: 352)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1506, file: !1487, line: 189, baseType: !1526, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1487, line: 168, size: 320, elements: !1528)
!1528 = !{!1529, !1535, !1539, !1543, !1547}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1527, file: !1487, line: 169, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!95, !1533, !1505}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !287, line: 539, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1527, file: !1487, line: 171, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!95, !1485, !103, !249}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1527, file: !1487, line: 173, baseType: !1540, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!95, !1485}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1527, file: !1487, line: 174, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!95, !1485, !1485, !103}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1527, file: !1487, line: 176, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!95, !1533, !1485, !1505}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1506, file: !1487, line: 192, baseType: !155, size: 128, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1506, file: !1487, line: 194, baseType: !753, size: 128, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1497, file: !1487, line: 144, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1487, line: 103, size: 64, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1554, file: !1487, line: 104, baseType: !1485, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1497, file: !1487, line: 145, baseType: !1558, size: 256)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1487, line: 107, size: 256, elements: !1559)
!1559 = !{!1560, !1625, !1628, !1629}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1558, file: !1487, line: 108, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1487, line: 217, size: 768, elements: !1564)
!1564 = !{!1565, !1585, !1589, !1593, !1598, !1602, !1606, !1610, !1611, !1612, !1613, !1621}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1563, file: !1487, line: 222, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!95, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1487, line: 197, size: 1088, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1570, file: !1487, line: 199, baseType: !1485, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1570, file: !1487, line: 200, baseType: !285, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1570, file: !1487, line: 201, baseType: !1533, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1570, file: !1487, line: 202, baseType: !80, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1570, file: !1487, line: 205, baseType: !423, size: 192, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1570, file: !1487, line: 206, baseType: !423, size: 192, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1570, file: !1487, line: 207, baseType: !95, size: 32, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1570, file: !1487, line: 208, baseType: !155, size: 128, offset: 704)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1570, file: !1487, line: 209, baseType: !209, size: 64, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1570, file: !1487, line: 211, baseType: !255, size: 64, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1570, file: !1487, line: 212, baseType: !1048, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1570, file: !1487, line: 213, baseType: !1048, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1570, file: !1487, line: 214, baseType: !1420, size: 64, offset: 1024)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1563, file: !1487, line: 223, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1569}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1563, file: !1487, line: 236, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!95, !1533, !80}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1563, file: !1487, line: 238, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!80, !1533, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1563, file: !1487, line: 239, baseType: !1599, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!80, !1533, !80, !1597}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1563, file: !1487, line: 240, baseType: !1603, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1533, !80}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1563, file: !1487, line: 242, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!240, !1569, !209, !255, !288}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1563, file: !1487, line: 252, baseType: !255, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1563, file: !1487, line: 259, baseType: !1048, size: 8, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1563, file: !1487, line: 260, baseType: !1607, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1563, file: !1487, line: 263, baseType: !1614, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !1569, !1619}
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1618, line: 52, baseType: !7)
!1618 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1487, line: 27, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1563, file: !1487, line: 266, baseType: !1622, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!95, !1569, !296}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1558, file: !1487, line: 109, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1487, line: 31, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1558, file: !1487, line: 110, baseType: !288, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1558, file: !1487, line: 111, baseType: !1485, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1486, file: !1487, line: 148, baseType: !80, size: 64, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1486, file: !1487, line: 154, baseType: !326, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1486, file: !1487, line: 156, baseType: !250, size: 16, offset: 896)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1486, file: !1487, line: 157, baseType: !249, size: 16, offset: 912)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1486, file: !1487, line: 158, baseType: !1635, size: 64, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1487, line: 32, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !150, file: !151, line: 71, baseType: !1638, size: 32, offset: 448)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1639, line: 19, size: 32, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1638, file: !1639, line: 20, baseType: !482, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !150, file: !151, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !150, file: !151, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !150, file: !151, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !150, file: !151, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !150, file: !151, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !147, file: !30, line: 463, baseType: !146, size: 64, offset: 512)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !147, file: !30, line: 465, baseType: !1649, size: 64, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !147, file: !30, line: 467, baseType: !103, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !30, line: 468, baseType: !1653, size: 64, offset: 704)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1663, !1668, !1672}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1655, file: !30, line: 88, baseType: !103, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1655, file: !30, line: 89, baseType: !261, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1655, file: !30, line: 90, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!95, !146, !204}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1655, file: !30, line: 91, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!209, !146, !1667, !1471, !1477}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1655, file: !30, line: 93, baseType: !1669, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !146}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1655, file: !30, line: 95, baseType: !1673, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1676)
!1676 = !{!1677, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1675, file: !37, line: 279, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!95, !146}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1675, file: !37, line: 280, baseType: !1669, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1675, file: !37, line: 281, baseType: !1678, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1675, file: !37, line: 282, baseType: !1678, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1675, file: !37, line: 283, baseType: !1678, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1675, file: !37, line: 284, baseType: !1678, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1675, file: !37, line: 285, baseType: !1678, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1675, file: !37, line: 286, baseType: !1678, size: 64, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1675, file: !37, line: 287, baseType: !1678, size: 64, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1675, file: !37, line: 288, baseType: !1678, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1675, file: !37, line: 289, baseType: !1678, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1675, file: !37, line: 290, baseType: !1678, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1675, file: !37, line: 291, baseType: !1678, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1675, file: !37, line: 292, baseType: !1678, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1675, file: !37, line: 293, baseType: !1678, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1675, file: !37, line: 294, baseType: !1678, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1675, file: !37, line: 295, baseType: !1678, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1675, file: !37, line: 296, baseType: !1678, size: 64, offset: 1088)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1675, file: !37, line: 297, baseType: !1678, size: 64, offset: 1152)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1675, file: !37, line: 298, baseType: !1678, size: 64, offset: 1216)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1675, file: !37, line: 299, baseType: !1678, size: 64, offset: 1280)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1675, file: !37, line: 300, baseType: !1678, size: 64, offset: 1344)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1675, file: !37, line: 301, baseType: !1678, size: 64, offset: 1408)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !147, file: !30, line: 470, baseType: !1704, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1706, line: 82, size: 1408, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1790, !1793, !1796}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1705, file: !1706, line: 83, baseType: !103, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1705, file: !1706, line: 84, baseType: !103, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1705, file: !1706, line: 85, baseType: !146, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1705, file: !1706, line: 86, baseType: !261, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1705, file: !1706, line: 87, baseType: !261, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1705, file: !1706, line: 88, baseType: !261, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1705, file: !1706, line: 90, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!95, !146, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1741, !1754, !1755, !1756, !1757, !1758, !1766, !1767, !1768, !1769, !1770, !1771}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1719, file: !24, line: 96, baseType: !103, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1719, file: !24, line: 97, baseType: !1704, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1719, file: !24, line: 99, baseType: !75, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1719, file: !24, line: 100, baseType: !103, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1719, file: !24, line: 102, baseType: !1048, size: 8, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1719, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1719, file: !24, line: 105, baseType: !1728, size: 64, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1731, line: 262, size: 1600, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !{!1733, !1735, !1736, !1740}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1730, file: !1731, line: 263, baseType: !1734, size: 256)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !1282)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1730, file: !1731, line: 264, baseType: !1734, size: 256, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1730, file: !1731, line: 265, baseType: !1737, size: 1024, offset: 512)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1024, elements: !1738)
!1738 = !{!1739}
!1739 = !DISubrange(count: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1730, file: !1731, line: 266, baseType: !1179, size: 64, offset: 1536)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1719, file: !24, line: 106, baseType: !1742, size: 64, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1731, line: 210, size: 256, elements: !1745)
!1745 = !{!1746, !1750, !1752, !1753}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1744, file: !1731, line: 211, baseType: !1747, size: 72)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 72, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 9)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1744, file: !1731, line: 212, baseType: !1751, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1731, line: 14, baseType: !81)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1744, file: !1731, line: 213, baseType: !138, size: 32, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1744, file: !1731, line: 214, baseType: !138, size: 32, offset: 224)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1719, file: !24, line: 108, baseType: !1678, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1719, file: !24, line: 109, baseType: !1669, size: 64, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1719, file: !24, line: 110, baseType: !1678, size: 64, offset: 576)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1719, file: !24, line: 111, baseType: !1669, size: 64, offset: 640)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1719, file: !24, line: 112, baseType: !1759, size: 64, offset: 704)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!95, !146, !1762}
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1763, file: !37, line: 51, baseType: !95, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1719, file: !24, line: 113, baseType: !1678, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1719, file: !24, line: 114, baseType: !261, size: 64, offset: 832)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1719, file: !24, line: 115, baseType: !261, size: 64, offset: 896)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1719, file: !24, line: 117, baseType: !1673, size: 64, offset: 960)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1719, file: !24, line: 118, baseType: !1669, size: 64, offset: 1024)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1719, file: !24, line: 120, baseType: !1772, size: 64, offset: 1088)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1705, file: !1706, line: 91, baseType: !1660, size: 64, offset: 448)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1705, file: !1706, line: 92, baseType: !1678, size: 64, offset: 512)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1705, file: !1706, line: 93, baseType: !1669, size: 64, offset: 576)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1705, file: !1706, line: 94, baseType: !1678, size: 64, offset: 640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1705, file: !1706, line: 95, baseType: !1669, size: 64, offset: 704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1705, file: !1706, line: 97, baseType: !1678, size: 64, offset: 768)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1705, file: !1706, line: 98, baseType: !1678, size: 64, offset: 832)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1705, file: !1706, line: 100, baseType: !1759, size: 64, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1705, file: !1706, line: 101, baseType: !1678, size: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1705, file: !1706, line: 103, baseType: !1678, size: 64, offset: 1024)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1705, file: !1706, line: 105, baseType: !1678, size: 64, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1705, file: !1706, line: 107, baseType: !1673, size: 64, offset: 1152)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1705, file: !1706, line: 109, baseType: !1787, size: 64, offset: 1216)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1706, line: 109, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1705, file: !1706, line: 111, baseType: !1791, size: 64, offset: 1280)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1706, line: 111, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1705, file: !1706, line: 112, baseType: !1794, offset: 1344)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1795, line: 187, elements: !182)
!1795 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1705, file: !1706, line: 114, baseType: !1048, size: 8, offset: 1344)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !147, file: !30, line: 471, baseType: !1718, size: 64, offset: 832)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !147, file: !30, line: 473, baseType: !80, size: 64, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !147, file: !30, line: 475, baseType: !80, size: 64, offset: 960)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !147, file: !30, line: 480, baseType: !423, size: 192, offset: 1024)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !147, file: !30, line: 484, baseType: !1802, size: 576, offset: 1216)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1802, file: !30, line: 362, baseType: !155, size: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1802, file: !30, line: 363, baseType: !155, size: 128, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1802, file: !30, line: 364, baseType: !155, size: 128, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1802, file: !30, line: 365, baseType: !155, size: 128, offset: 384)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1802, file: !30, line: 366, baseType: !1048, size: 8, offset: 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1802, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !147, file: !30, line: 485, baseType: !1811, size: 2304, offset: 1792)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1908, !1912}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1811, file: !37, line: 566, baseType: !1762, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1811, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1811, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1811, file: !37, line: 569, baseType: !1048, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1811, file: !37, line: 570, baseType: !1048, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1811, file: !37, line: 571, baseType: !1048, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1811, file: !37, line: 572, baseType: !1048, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1811, file: !37, line: 573, baseType: !1048, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1811, file: !37, line: 574, baseType: !1048, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1811, file: !37, line: 575, baseType: !1048, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1811, file: !37, line: 576, baseType: !1048, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1811, file: !37, line: 577, baseType: !136, size: 32, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1811, file: !37, line: 578, baseType: !168, offset: 96)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1811, file: !37, line: 580, baseType: !155, size: 128, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1811, file: !37, line: 581, baseType: !782, size: 192, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1811, file: !37, line: 582, baseType: !1829, size: 64, offset: 448)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1831, line: 43, size: 1472, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1840, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1830, file: !1831, line: 44, baseType: !103, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1830, file: !1831, line: 45, baseType: !95, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1830, file: !1831, line: 46, baseType: !155, size: 128, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1830, file: !1831, line: 47, baseType: !168, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1830, file: !1831, line: 48, baseType: !1838, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1830, file: !1831, line: 49, baseType: !1841, size: 320, offset: 320)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1842, line: 11, size: 320, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !{!1844, !1845, !1846, !1851}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1841, file: !1842, line: 16, baseType: !746, size: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1841, file: !1842, line: 17, baseType: !81, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1841, file: !1842, line: 18, baseType: !1847, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1842, line: 19, baseType: !136, size: 32, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1830, file: !1831, line: 50, baseType: !81, size: 64, offset: 640)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1830, file: !1831, line: 51, baseType: !552, size: 64, offset: 704)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1830, file: !1831, line: 52, baseType: !552, size: 64, offset: 768)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1830, file: !1831, line: 53, baseType: !552, size: 64, offset: 832)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1830, file: !1831, line: 54, baseType: !552, size: 64, offset: 896)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1830, file: !1831, line: 55, baseType: !552, size: 64, offset: 960)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1830, file: !1831, line: 56, baseType: !81, size: 64, offset: 1024)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1830, file: !1831, line: 57, baseType: !81, size: 64, offset: 1088)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1830, file: !1831, line: 58, baseType: !81, size: 64, offset: 1152)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1830, file: !1831, line: 59, baseType: !81, size: 64, offset: 1216)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1830, file: !1831, line: 60, baseType: !81, size: 64, offset: 1280)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1830, file: !1831, line: 61, baseType: !146, size: 64, offset: 1344)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1830, file: !1831, line: 62, baseType: !1048, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1830, file: !1831, line: 63, baseType: !1048, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1811, file: !37, line: 583, baseType: !1048, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1811, file: !37, line: 584, baseType: !1048, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1811, file: !37, line: 585, baseType: !1048, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1811, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1811, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1811, file: !37, line: 592, baseType: !544, size: 512, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1811, file: !37, line: 593, baseType: !326, size: 64, offset: 1088)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1811, file: !37, line: 594, baseType: !1387, size: 256, offset: 1152)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1811, file: !37, line: 595, baseType: !753, size: 128, offset: 1408)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1811, file: !37, line: 596, baseType: !1838, size: 64, offset: 1536)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1811, file: !37, line: 597, baseType: !346, size: 32, offset: 1600)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1811, file: !37, line: 598, baseType: !346, size: 32, offset: 1632)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1811, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1811, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1811, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1811, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1811, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1811, file: !37, line: 604, baseType: !1048, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1811, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1811, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1811, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1811, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1811, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1811, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1811, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1811, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1811, file: !37, line: 613, baseType: !95, size: 32, offset: 1792)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1811, file: !37, line: 614, baseType: !95, size: 32, offset: 1824)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1811, file: !37, line: 615, baseType: !326, size: 64, offset: 1856)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1811, file: !37, line: 616, baseType: !326, size: 64, offset: 1920)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1811, file: !37, line: 617, baseType: !326, size: 64, offset: 1984)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1811, file: !37, line: 618, baseType: !326, size: 64, offset: 2048)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1811, file: !37, line: 620, baseType: !1899, size: 64, offset: 2112)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1905}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1900, file: !37, line: 537, baseType: !168)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1900, file: !37, line: 538, baseType: !7, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1900, file: !37, line: 540, baseType: !155, size: 128, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1900, file: !37, line: 543, baseType: !1906, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1811, file: !37, line: 621, baseType: !1909, size: 64, offset: 2176)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !146, !706}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1811, file: !37, line: 622, baseType: !1913, size: 64, offset: 2240)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !147, file: !30, line: 486, baseType: !1916, size: 64, offset: 4096)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1925, !1926, !1927}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1917, file: !37, line: 643, baseType: !1675, size: 1472)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1917, file: !37, line: 644, baseType: !1678, size: 64, offset: 1472)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1917, file: !37, line: 645, baseType: !1922, size: 64, offset: 1536)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !146, !1048}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1917, file: !37, line: 646, baseType: !1678, size: 64, offset: 1600)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1917, file: !37, line: 647, baseType: !1669, size: 64, offset: 1664)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1917, file: !37, line: 648, baseType: !1669, size: 64, offset: 1728)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !147, file: !30, line: 493, baseType: !1929, size: 64, offset: 4160)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1931, line: 128, flags: DIFlagFwdDecl)
!1931 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !147, file: !30, line: 499, baseType: !155, size: 128, offset: 4224)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !147, file: !30, line: 502, baseType: !1934, size: 64, offset: 4352)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1936)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !147, file: !30, line: 504, baseType: !1938, size: 64, offset: 4416)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !147, file: !30, line: 505, baseType: !326, size: 64, offset: 4480)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !147, file: !30, line: 510, baseType: !326, size: 64, offset: 4544)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !147, file: !30, line: 511, baseType: !1942, size: 64, offset: 4608)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1944)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !147, file: !30, line: 513, baseType: !1946, size: 64, offset: 4672)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1947, file: !30, line: 293, baseType: !7, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1947, file: !30, line: 294, baseType: !81, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !147, file: !30, line: 515, baseType: !155, size: 128, offset: 4736)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !147, file: !30, line: 526, baseType: !1953, offset: 4864)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1954, line: 5, elements: !182)
!1954 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !147, file: !30, line: 528, baseType: !1956, size: 64, offset: 4864)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1958, line: 51, size: 1344, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1959 = !{!1960, !1961, !1963, !1964, !2054, !2063, !2064, !2065, !2066, !2067, !2068, !2069}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1957, file: !1958, line: 52, baseType: !103, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1957, file: !1958, line: 53, baseType: !1962, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1958, line: 28, baseType: !136)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1957, file: !1958, line: 54, baseType: !103, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1957, file: !1958, line: 55, baseType: !1965, size: 192, offset: 192)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1966, line: 17, size: 192, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1970, !2053}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1965, file: !1966, line: 18, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1965, file: !1966, line: 19, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1966, line: 110, size: 1152, elements: !1974)
!1974 = !{!1975, !1979, !1983, !1989, !1995, !1999, !2003, !2008, !2012, !2013, !2017, !2021, !2025, !2036, !2037, !2038, !2039, !2049}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1973, file: !1966, line: 111, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1969, !1969}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1973, file: !1966, line: 112, baseType: !1980, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1969}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1973, file: !1966, line: 113, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1048, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1973, file: !1966, line: 114, baseType: !1990, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1179, !1987, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1973, file: !1966, line: 116, baseType: !1996, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1048, !1987, !103}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1973, file: !1966, line: 118, baseType: !2000, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!95, !1987, !103, !7, !80, !255}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1973, file: !1966, line: 123, baseType: !2004, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!95, !1987, !103, !2007, !255}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1973, file: !1966, line: 126, baseType: !2009, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!103, !1987}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1973, file: !1966, line: 127, baseType: !2009, size: 64, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1973, file: !1966, line: 128, baseType: !2014, size: 64, offset: 576)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!1969, !1987}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1973, file: !1966, line: 130, baseType: !2018, size: 64, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!1969, !1987, !1969}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1973, file: !1966, line: 133, baseType: !2022, size: 64, offset: 704)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!1969, !1987, !103}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1973, file: !1966, line: 135, baseType: !2026, size: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!95, !1987, !103, !103, !7, !7, !2029}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1966, line: 43, size: 640, elements: !2031)
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2030, file: !1966, line: 44, baseType: !1969, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2030, file: !1966, line: 45, baseType: !7, size: 32, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2030, file: !1966, line: 46, baseType: !2035, size: 512, offset: 128)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 512, elements: !582)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1973, file: !1966, line: 140, baseType: !2018, size: 64, offset: 832)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1973, file: !1966, line: 143, baseType: !2014, size: 64, offset: 896)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1973, file: !1966, line: 145, baseType: !1976, size: 64, offset: 960)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1973, file: !1966, line: 146, baseType: !2040, size: 64, offset: 1024)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!95, !1987, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1966, line: 29, size: 128, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2044, file: !1966, line: 30, baseType: !7, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2044, file: !1966, line: 31, baseType: !7, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2044, file: !1966, line: 32, baseType: !1987, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1973, file: !1966, line: 148, baseType: !2050, size: 64, offset: 1088)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!95, !1987, !146}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1965, file: !1966, line: 20, baseType: !146, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1957, file: !1958, line: 57, baseType: !2055, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1958, line: 31, size: 704, elements: !2057)
!2057 = !{!2058, !2059, !2060, !2061, !2062}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2056, file: !1958, line: 32, baseType: !209, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2056, file: !1958, line: 33, baseType: !95, size: 32, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2056, file: !1958, line: 34, baseType: !80, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2056, file: !1958, line: 35, baseType: !2055, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2056, file: !1958, line: 43, baseType: !276, size: 448, offset: 256)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1957, file: !1958, line: 58, baseType: !2055, size: 64, offset: 448)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1957, file: !1958, line: 59, baseType: !1956, size: 64, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1957, file: !1958, line: 60, baseType: !1956, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1957, file: !1958, line: 61, baseType: !1956, size: 64, offset: 640)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1957, file: !1958, line: 63, baseType: !150, size: 512, offset: 704)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1957, file: !1958, line: 65, baseType: !81, size: 64, offset: 1216)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1957, file: !1958, line: 66, baseType: !80, size: 64, offset: 1280)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !147, file: !30, line: 529, baseType: !1969, size: 64, offset: 4928)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !147, file: !30, line: 534, baseType: !2072, size: 32, offset: 4992)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !79, line: 16, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !79, line: 13, baseType: !136)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !147, file: !30, line: 535, baseType: !136, size: 32, offset: 5024)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !147, file: !30, line: 537, baseType: !168, offset: 5056)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !147, file: !30, line: 538, baseType: !155, size: 128, offset: 5056)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !147, file: !30, line: 540, baseType: !2078, size: 64, offset: 5184)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2080, line: 54, size: 960, elements: !2081)
!2080 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2092, !2096, !2097, !2098, !2099, !2103, !2107, !2108}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2079, file: !2080, line: 55, baseType: !103, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2079, file: !2080, line: 56, baseType: !75, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2079, file: !2080, line: 58, baseType: !261, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2079, file: !2080, line: 59, baseType: !261, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2079, file: !2080, line: 60, baseType: !161, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2079, file: !2080, line: 62, baseType: !1660, size: 64, offset: 320)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2079, file: !2080, line: 63, baseType: !2089, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!209, !146, !1667}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2079, file: !2080, line: 65, baseType: !2093, size: 64, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !2078}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2079, file: !2080, line: 66, baseType: !1669, size: 64, offset: 512)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2079, file: !2080, line: 68, baseType: !1678, size: 64, offset: 576)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2079, file: !2080, line: 70, baseType: !1436, size: 64, offset: 640)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2079, file: !2080, line: 71, baseType: !2100, size: 64, offset: 704)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!1179, !146}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2079, file: !2080, line: 73, baseType: !2104, size: 64, offset: 768)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !146, !1471, !1477}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2079, file: !2080, line: 75, baseType: !1673, size: 64, offset: 832)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2079, file: !2080, line: 77, baseType: !1791, size: 64, offset: 896)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !147, file: !30, line: 541, baseType: !261, size: 64, offset: 5248)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !147, file: !30, line: 543, baseType: !1669, size: 64, offset: 5312)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !147, file: !30, line: 544, baseType: !2112, size: 64, offset: 5376)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !147, file: !30, line: 545, baseType: !2115, size: 64, offset: 5440)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !147, file: !30, line: 547, baseType: !1048, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !147, file: !30, line: 548, baseType: !1048, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !147, file: !30, line: 549, baseType: !1048, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !147, file: !30, line: 550, baseType: !1048, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !100, file: !59, line: 125, baseType: !261, size: 64, offset: 704)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !100, file: !59, line: 127, baseType: !155, size: 128, offset: 768)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !100, file: !59, line: 128, baseType: !103, size: 64, offset: 896)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !100, file: !59, line: 130, baseType: !81, size: 64, offset: 960)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !100, file: !59, line: 130, baseType: !81, size: 64, offset: 1024)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !100, file: !59, line: 131, baseType: !1841, size: 320, offset: 1088)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !100, file: !59, line: 132, baseType: !95, size: 32, offset: 1408)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !100, file: !59, line: 133, baseType: !95, size: 32, offset: 1440)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !100, file: !59, line: 134, baseType: !2130, size: 64, offset: 1472)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !114}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !100, file: !59, line: 136, baseType: !1387, size: 256, offset: 1536)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !100, file: !59, line: 137, baseType: !95, size: 32, offset: 1792)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !100, file: !59, line: 159, baseType: !423, size: 192, offset: 1856)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mode_addr", scope: !84, file: !3, line: 110, baseType: !95, size: 32, offset: 2112)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mode_val", scope: !84, file: !3, line: 111, baseType: !793, size: 64, offset: 2176)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bright_addr", scope: !84, file: !3, line: 112, baseType: !95, size: 32, offset: 2240)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !84, file: !3, line: 113, baseType: !2140, size: 64, offset: 2304)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netxbig_led_timer", file: !3, line: 39, size: 192, elements: !2142)
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "delay_on", scope: !2141, file: !3, line: 40, baseType: !81, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "delay_off", scope: !2141, file: !3, line: 41, baseType: !81, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2141, file: !3, line: 42, baseType: !50, size: 32, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "num_timer", scope: !84, file: !3, line: 114, baseType: !95, size: 32, offset: 2368)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !84, file: !3, line: 115, baseType: !50, size: 32, offset: 2400)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !84, file: !3, line: 116, baseType: !95, size: 32, offset: 2432)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !84, file: !3, line: 117, baseType: !168, offset: 2464)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!2151 = !{!0, !2152, !2159, !2164, !2169, !2172, !2177, !2182, !2242, !2244, !2247, !2249, !2252, !2266}
!2152 = !DIGlobalVariableExpression(var: !2153, expr: !DIExpression())
!2153 = distinct !DIGlobalVariable(name: "__exitcall_netxbig_led_driver_exit", scope: !2, file: !3, line: 624, type: !2154, isLocal: true, isDefinition: true)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2155, line: 117, baseType: !2156)
!2155 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null}
!2159 = !DIGlobalVariableExpression(var: !2160, expr: !DIExpression())
!2160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author168", scope: !2, file: !3, line: 626, type: !2161, isLocal: true, isDefinition: true, align: 8)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 424, elements: !2162)
!2162 = !{!2163}
!2163 = !DISubrange(count: 53)
!2164 = !DIGlobalVariableExpression(var: !2165, expr: !DIExpression())
!2165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description169", scope: !2, file: !3, line: 627, type: !2166, isLocal: true, isDefinition: true, align: 8)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 528, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 66)
!2169 = !DIGlobalVariableExpression(var: !2170, expr: !DIExpression())
!2170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file170", scope: !2, file: !3, line: 628, type: !2171, isLocal: true, isDefinition: true, align: 8)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 352, elements: !397)
!2172 = !DIGlobalVariableExpression(var: !2173, expr: !DIExpression())
!2173 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license171", scope: !2, file: !3, line: 628, type: !2174, isLocal: true, isDefinition: true, align: 8)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 200, elements: !2175)
!2175 = !{!2176}
!2176 = !DISubrange(count: 25)
!2177 = !DIGlobalVariableExpression(var: !2178, expr: !DIExpression())
!2178 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias172", scope: !2, file: !3, line: 629, type: !2179, isLocal: true, isDefinition: true, align: 8)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 328, elements: !2180)
!2180 = !{!2181}
!2181 = !DISubrange(count: 41)
!2182 = !DIGlobalVariableExpression(var: !2183, expr: !DIExpression())
!2183 = distinct !DIGlobalVariable(name: "netxbig_led_driver", scope: !2, file: !3, line: 616, type: !2184, isLocal: true, isDefinition: true)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2185, line: 200, size: 1600, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !{!2187, !2229, !2230, !2234, !2238, !2239, !2240, !2241}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2184, file: !2185, line: 201, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!95, !2191}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2185, line: 22, size: 6208, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2215, !2223, !2224, !2227}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2192, file: !2185, line: 23, baseType: !103, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2192, file: !2185, line: 24, baseType: !95, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2192, file: !2185, line: 25, baseType: !1048, size: 8, offset: 96)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2192, file: !2185, line: 26, baseType: !147, size: 5568, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2192, file: !2185, line: 27, baseType: !326, size: 64, offset: 5696)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2192, file: !2185, line: 28, baseType: !1947, size: 128, offset: 5760)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2192, file: !2185, line: 29, baseType: !136, size: 32, offset: 5888)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2192, file: !2185, line: 30, baseType: !2202, size: 64, offset: 5952)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2204, line: 20, size: 512, elements: !2205)
!2204 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2205 = !{!2206, !2208, !2209, !2210, !2211, !2212, !2213, !2214}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2203, file: !2204, line: 21, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !79, line: 158, baseType: !1177)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2203, file: !2204, line: 22, baseType: !2207, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2203, file: !2204, line: 23, baseType: !103, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2203, file: !2204, line: 24, baseType: !81, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2203, file: !2204, line: 25, baseType: !81, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2203, file: !2204, line: 26, baseType: !2202, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2203, file: !2204, line: 26, baseType: !2202, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2203, file: !2204, line: 26, baseType: !2202, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2192, file: !2185, line: 32, baseType: !2216, size: 64, offset: 6016)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1731, line: 586, size: 256, elements: !2219)
!2219 = !{!2220, !2222}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2218, file: !1731, line: 587, baseType: !2221, size: 160)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 160, elements: !1253)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2218, file: !1731, line: 588, baseType: !1751, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2192, file: !2185, line: 33, baseType: !209, size: 64, offset: 6080)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2192, file: !2185, line: 36, baseType: !2225, size: 64, offset: 6144)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2185, line: 18, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2192, file: !2185, line: 39, baseType: !2228, offset: 6208)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1954, line: 8, elements: !182)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2184, file: !2185, line: 202, baseType: !2188, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2184, file: !2185, line: 203, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !2191}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2184, file: !2185, line: 204, baseType: !2235, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!95, !2191, !1762}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2184, file: !2185, line: 205, baseType: !2188, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2184, file: !2185, line: 206, baseType: !1719, size: 1152, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2184, file: !2185, line: 207, baseType: !2216, size: 64, offset: 1472)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2184, file: !2185, line: 208, baseType: !1048, size: 8, offset: 1536)
!2242 = !DIGlobalVariableExpression(var: !2243, expr: !DIExpression())
!2243 = distinct !DIGlobalVariable(name: "gpio_ext_lock", scope: !2, file: !3, line: 66, type: !168, isLocal: true, isDefinition: true)
!2244 = !DIGlobalVariableExpression(var: !2245, expr: !DIExpression())
!2245 = distinct !DIGlobalVariable(name: "netxbig_led_groups", scope: !2, file: !3, line: 274, type: !2246, isLocal: true, isDefinition: true)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !1020)
!2247 = !DIGlobalVariableExpression(var: !2248, expr: !DIExpression())
!2248 = distinct !DIGlobalVariable(name: "netxbig_led_group", scope: !2, file: !3, line: 274, type: !263, isLocal: true, isDefinition: true)
!2249 = !DIGlobalVariableExpression(var: !2250, expr: !DIExpression())
!2250 = distinct !DIGlobalVariable(name: "netxbig_led_attrs", scope: !2, file: !3, line: 270, type: !2251, isLocal: true, isDefinition: true)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !1020)
!2252 = !DIGlobalVariableExpression(var: !2253, expr: !DIExpression())
!2253 = distinct !DIGlobalVariable(name: "dev_attr_sata", scope: !2, file: !3, line: 268, type: !2254, isLocal: true, isDefinition: true)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2255)
!2255 = !{!2256, !2257, !2262}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2254, file: !30, line: 100, baseType: !245, size: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2254, file: !30, line: 101, baseType: !2258, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!240, !146, !2261, !209}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2254, file: !30, line: 103, baseType: !2263, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!240, !146, !2261, !103, !255}
!2266 = !DIGlobalVariableExpression(var: !2267, expr: !DIExpression())
!2267 = distinct !DIGlobalVariable(name: "of_netxbig_leds_match", scope: !2, file: !3, line: 580, type: !2268, isLocal: true, isDefinition: true)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1729, size: 3200, elements: !1020)
!2269 = !{!"rsp"}
!2270 = !{i32 7, !"Dwarf Version", i32 4}
!2271 = !{i32 2, !"Debug Info Version", i32 3}
!2272 = !{i32 1, !"wchar_size", i32 2}
!2273 = !{i32 1, !"Code Model", i32 2}
!2274 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2275 = distinct !DISubprogram(name: "netxbig_led_driver_init", scope: !3, file: !3, line: 624, type: !2276, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!95}
!2278 = !DILocation(line: 624, column: 1, scope: !2275)
!2279 = distinct !DISubprogram(name: "netxbig_led_driver_exit", scope: !3, file: !3, line: 624, type: !2157, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2280 = !DILocation(line: 624, column: 1, scope: !2279)
!2281 = distinct !DISubprogram(name: "netxbig_led_probe", scope: !3, file: !3, line: 586, type: !2189, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2282 = !DILocalVariable(name: "pdev", arg: 1, scope: !2281, file: !3, line: 586, type: !2191)
!2283 = !DILocation(line: 586, column: 54, scope: !2281)
!2284 = !DILocalVariable(name: "pdata", scope: !2281, file: !3, line: 588, type: !2285)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netxbig_led_platform_data", file: !3, line: 54, size: 320, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2301}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_ext", scope: !2286, file: !3, line: 55, baseType: !87, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2286, file: !3, line: 56, baseType: !2140, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "num_timer", scope: !2286, file: !3, line: 57, baseType: !95, size: 32, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "leds", scope: !2286, file: !3, line: 58, baseType: !2292, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netxbig_led", file: !3, line: 45, size: 320, elements: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2293, file: !3, line: 46, baseType: !103, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !2293, file: !3, line: 47, baseType: !103, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mode_addr", scope: !2293, file: !3, line: 48, baseType: !95, size: 32, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mode_val", scope: !2293, file: !3, line: 49, baseType: !793, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "bright_addr", scope: !2293, file: !3, line: 50, baseType: !95, size: 32, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "bright_max", scope: !2293, file: !3, line: 51, baseType: !95, size: 32, offset: 288)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "num_leds", scope: !2286, file: !3, line: 59, baseType: !95, size: 32, offset: 256)
!2302 = !DILocation(line: 588, column: 36, scope: !2281)
!2303 = !DILocalVariable(name: "leds_data", scope: !2281, file: !3, line: 589, type: !83)
!2304 = !DILocation(line: 589, column: 27, scope: !2281)
!2305 = !DILocalVariable(name: "i", scope: !2281, file: !3, line: 590, type: !95)
!2306 = !DILocation(line: 590, column: 6, scope: !2281)
!2307 = !DILocalVariable(name: "ret", scope: !2281, file: !3, line: 591, type: !95)
!2308 = !DILocation(line: 591, column: 6, scope: !2281)
!2309 = !DILocation(line: 593, column: 24, scope: !2281)
!2310 = !DILocation(line: 593, column: 30, scope: !2281)
!2311 = !DILocation(line: 593, column: 10, scope: !2281)
!2312 = !DILocation(line: 593, column: 8, scope: !2281)
!2313 = !DILocation(line: 594, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 594, column: 6)
!2315 = !DILocation(line: 594, column: 6, scope: !2281)
!2316 = !DILocation(line: 595, column: 3, scope: !2314)
!2317 = !DILocation(line: 596, column: 35, scope: !2281)
!2318 = !DILocation(line: 596, column: 41, scope: !2281)
!2319 = !DILocation(line: 596, column: 46, scope: !2281)
!2320 = !DILocation(line: 596, column: 8, scope: !2281)
!2321 = !DILocation(line: 596, column: 6, scope: !2281)
!2322 = !DILocation(line: 597, column: 6, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 597, column: 6)
!2324 = !DILocation(line: 597, column: 6, scope: !2281)
!2325 = !DILocation(line: 598, column: 10, scope: !2323)
!2326 = !DILocation(line: 598, column: 3, scope: !2323)
!2327 = !DILocation(line: 600, column: 28, scope: !2281)
!2328 = !DILocation(line: 600, column: 34, scope: !2281)
!2329 = !DILocation(line: 601, column: 6, scope: !2281)
!2330 = !DILocation(line: 601, column: 13, scope: !2281)
!2331 = !DILocation(line: 600, column: 14, scope: !2281)
!2332 = !DILocation(line: 600, column: 12, scope: !2281)
!2333 = !DILocation(line: 603, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 603, column: 6)
!2335 = !DILocation(line: 603, column: 6, scope: !2281)
!2336 = !DILocation(line: 604, column: 3, scope: !2334)
!2337 = !DILocation(line: 606, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 606, column: 2)
!2339 = !DILocation(line: 606, column: 7, scope: !2338)
!2340 = !DILocation(line: 606, column: 14, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 606, column: 2)
!2342 = !DILocation(line: 606, column: 18, scope: !2341)
!2343 = !DILocation(line: 606, column: 25, scope: !2341)
!2344 = !DILocation(line: 606, column: 16, scope: !2341)
!2345 = !DILocation(line: 606, column: 2, scope: !2338)
!2346 = !DILocation(line: 607, column: 28, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 606, column: 40)
!2348 = !DILocation(line: 607, column: 34, scope: !2347)
!2349 = !DILocation(line: 608, column: 8, scope: !2347)
!2350 = !DILocation(line: 608, column: 18, scope: !2347)
!2351 = !DILocation(line: 608, column: 23, scope: !2347)
!2352 = !DILocation(line: 608, column: 30, scope: !2347)
!2353 = !DILocation(line: 608, column: 35, scope: !2347)
!2354 = !DILocation(line: 607, column: 9, scope: !2347)
!2355 = !DILocation(line: 607, column: 7, scope: !2347)
!2356 = !DILocation(line: 609, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 609, column: 7)
!2358 = !DILocation(line: 609, column: 11, scope: !2357)
!2359 = !DILocation(line: 609, column: 7, scope: !2347)
!2360 = !DILocation(line: 610, column: 11, scope: !2357)
!2361 = !DILocation(line: 610, column: 4, scope: !2357)
!2362 = !DILocation(line: 611, column: 2, scope: !2347)
!2363 = !DILocation(line: 606, column: 36, scope: !2341)
!2364 = !DILocation(line: 606, column: 2, scope: !2341)
!2365 = distinct !{!2365, !2345, !2366}
!2366 = !DILocation(line: 611, column: 2, scope: !2338)
!2367 = !DILocation(line: 613, column: 2, scope: !2281)
!2368 = !DILocation(line: 614, column: 1, scope: !2281)
!2369 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2370, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!80, !146, !255, !78}
!2372 = !DILocalVariable(name: "dev", arg: 1, scope: !2369, file: !30, line: 215, type: !146)
!2373 = !DILocation(line: 215, column: 49, scope: !2369)
!2374 = !DILocalVariable(name: "size", arg: 2, scope: !2369, file: !30, line: 215, type: !255)
!2375 = !DILocation(line: 215, column: 61, scope: !2369)
!2376 = !DILocalVariable(name: "gfp", arg: 3, scope: !2369, file: !30, line: 215, type: !78)
!2377 = !DILocation(line: 215, column: 73, scope: !2369)
!2378 = !DILocation(line: 217, column: 22, scope: !2369)
!2379 = !DILocation(line: 217, column: 27, scope: !2369)
!2380 = !DILocation(line: 217, column: 33, scope: !2369)
!2381 = !DILocation(line: 217, column: 37, scope: !2369)
!2382 = !DILocation(line: 217, column: 9, scope: !2369)
!2383 = !DILocation(line: 217, column: 2, scope: !2369)
!2384 = distinct !DISubprogram(name: "netxbig_leds_get_of_pdata", scope: !3, file: !3, line: 419, type: !2385, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!95, !146, !2285}
!2387 = !DILocalVariable(name: "dev", arg: 1, scope: !2384, file: !3, line: 419, type: !146)
!2388 = !DILocation(line: 419, column: 53, scope: !2384)
!2389 = !DILocalVariable(name: "pdata", arg: 2, scope: !2384, file: !3, line: 420, type: !2285)
!2390 = !DILocation(line: 420, column: 44, scope: !2384)
!2391 = !DILocalVariable(name: "np", scope: !2384, file: !3, line: 422, type: !1956)
!2392 = !DILocation(line: 422, column: 22, scope: !2384)
!2393 = !DILocation(line: 422, column: 39, scope: !2384)
!2394 = !DILocation(line: 422, column: 27, scope: !2384)
!2395 = !DILocalVariable(name: "gpio_ext_np", scope: !2384, file: !3, line: 423, type: !1956)
!2396 = !DILocation(line: 423, column: 22, scope: !2384)
!2397 = !DILocalVariable(name: "gpio_ext_pdev", scope: !2384, file: !3, line: 424, type: !2191)
!2398 = !DILocation(line: 424, column: 26, scope: !2384)
!2399 = !DILocalVariable(name: "gpio_ext_dev", scope: !2384, file: !3, line: 425, type: !146)
!2400 = !DILocation(line: 425, column: 17, scope: !2384)
!2401 = !DILocalVariable(name: "child", scope: !2384, file: !3, line: 426, type: !1956)
!2402 = !DILocation(line: 426, column: 22, scope: !2384)
!2403 = !DILocalVariable(name: "gpio_ext", scope: !2384, file: !3, line: 427, type: !87)
!2404 = !DILocation(line: 427, column: 27, scope: !2384)
!2405 = !DILocalVariable(name: "timers", scope: !2384, file: !3, line: 428, type: !2140)
!2406 = !DILocation(line: 428, column: 28, scope: !2384)
!2407 = !DILocalVariable(name: "leds", scope: !2384, file: !3, line: 429, type: !2292)
!2408 = !DILocation(line: 429, column: 22, scope: !2384)
!2409 = !DILocalVariable(name: "led", scope: !2384, file: !3, line: 429, type: !2292)
!2410 = !DILocation(line: 429, column: 29, scope: !2384)
!2411 = !DILocalVariable(name: "num_timers", scope: !2384, file: !3, line: 430, type: !95)
!2412 = !DILocation(line: 430, column: 6, scope: !2384)
!2413 = !DILocalVariable(name: "num_leds", scope: !2384, file: !3, line: 431, type: !95)
!2414 = !DILocation(line: 431, column: 6, scope: !2384)
!2415 = !DILocalVariable(name: "ret", scope: !2384, file: !3, line: 432, type: !95)
!2416 = !DILocation(line: 432, column: 6, scope: !2384)
!2417 = !DILocalVariable(name: "i", scope: !2384, file: !3, line: 433, type: !95)
!2418 = !DILocation(line: 433, column: 6, scope: !2384)
!2419 = !DILocation(line: 436, column: 33, scope: !2384)
!2420 = !DILocation(line: 436, column: 16, scope: !2384)
!2421 = !DILocation(line: 436, column: 14, scope: !2384)
!2422 = !DILocation(line: 437, column: 7, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 437, column: 6)
!2424 = !DILocation(line: 437, column: 6, scope: !2384)
!2425 = !DILocation(line: 438, column: 3, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 437, column: 20)
!2427 = !DILocation(line: 439, column: 3, scope: !2426)
!2428 = !DILocation(line: 441, column: 41, scope: !2384)
!2429 = !DILocation(line: 441, column: 18, scope: !2384)
!2430 = !DILocation(line: 441, column: 16, scope: !2384)
!2431 = !DILocation(line: 442, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 442, column: 6)
!2433 = !DILocation(line: 442, column: 6, scope: !2384)
!2434 = !DILocation(line: 443, column: 3, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 442, column: 22)
!2436 = !DILocation(line: 444, column: 3, scope: !2435)
!2437 = !DILocation(line: 446, column: 18, scope: !2384)
!2438 = !DILocation(line: 446, column: 33, scope: !2384)
!2439 = !DILocation(line: 446, column: 15, scope: !2384)
!2440 = !DILocation(line: 448, column: 26, scope: !2384)
!2441 = !DILocation(line: 448, column: 13, scope: !2384)
!2442 = !DILocation(line: 448, column: 11, scope: !2384)
!2443 = !DILocation(line: 449, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 449, column: 6)
!2445 = !DILocation(line: 449, column: 6, scope: !2384)
!2446 = !DILocation(line: 450, column: 15, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 449, column: 17)
!2448 = !DILocation(line: 450, column: 3, scope: !2447)
!2449 = !DILocation(line: 451, column: 3, scope: !2447)
!2450 = !DILocation(line: 453, column: 29, scope: !2384)
!2451 = !DILocation(line: 453, column: 34, scope: !2384)
!2452 = !DILocation(line: 453, column: 48, scope: !2384)
!2453 = !DILocation(line: 453, column: 8, scope: !2384)
!2454 = !DILocation(line: 453, column: 6, scope: !2384)
!2455 = !DILocation(line: 454, column: 14, scope: !2384)
!2456 = !DILocation(line: 454, column: 2, scope: !2384)
!2457 = !DILocation(line: 455, column: 6, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 455, column: 6)
!2459 = !DILocation(line: 455, column: 6, scope: !2384)
!2460 = !DILocation(line: 456, column: 10, scope: !2458)
!2461 = !DILocation(line: 456, column: 3, scope: !2458)
!2462 = !DILocation(line: 457, column: 20, scope: !2384)
!2463 = !DILocation(line: 457, column: 2, scope: !2384)
!2464 = !DILocation(line: 457, column: 9, scope: !2384)
!2465 = !DILocation(line: 457, column: 18, scope: !2384)
!2466 = !DILocation(line: 460, column: 36, scope: !2384)
!2467 = !DILocation(line: 460, column: 8, scope: !2384)
!2468 = !DILocation(line: 460, column: 6, scope: !2384)
!2469 = !DILocation(line: 461, column: 6, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 461, column: 6)
!2471 = !DILocation(line: 461, column: 10, scope: !2470)
!2472 = !DILocation(line: 461, column: 6, scope: !2384)
!2473 = !DILocation(line: 462, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 462, column: 7)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 461, column: 15)
!2476 = !DILocation(line: 462, column: 11, scope: !2474)
!2477 = !DILocation(line: 462, column: 7, scope: !2475)
!2478 = !DILocation(line: 463, column: 4, scope: !2474)
!2479 = !DILocation(line: 464, column: 16, scope: !2475)
!2480 = !DILocation(line: 464, column: 20, scope: !2475)
!2481 = !DILocation(line: 464, column: 14, scope: !2475)
!2482 = !DILocation(line: 465, column: 25, scope: !2475)
!2483 = !DILocation(line: 465, column: 30, scope: !2475)
!2484 = !DILocation(line: 465, column: 12, scope: !2475)
!2485 = !DILocation(line: 465, column: 10, scope: !2475)
!2486 = !DILocation(line: 467, column: 8, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 467, column: 7)
!2488 = !DILocation(line: 467, column: 7, scope: !2475)
!2489 = !DILocation(line: 468, column: 4, scope: !2487)
!2490 = !DILocation(line: 469, column: 10, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 469, column: 3)
!2492 = !DILocation(line: 469, column: 8, scope: !2491)
!2493 = !DILocation(line: 469, column: 15, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 469, column: 3)
!2495 = !DILocation(line: 469, column: 19, scope: !2494)
!2496 = !DILocation(line: 469, column: 17, scope: !2494)
!2497 = !DILocation(line: 469, column: 3, scope: !2491)
!2498 = !DILocalVariable(name: "tmp", scope: !2499, file: !3, line: 470, type: !136)
!2499 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 469, column: 36)
!2500 = !DILocation(line: 470, column: 8, scope: !2499)
!2501 = !DILocation(line: 472, column: 31, scope: !2499)
!2502 = !DILocation(line: 472, column: 49, scope: !2499)
!2503 = !DILocation(line: 472, column: 47, scope: !2499)
!2504 = !DILocation(line: 473, column: 11, scope: !2499)
!2505 = !DILocation(line: 473, column: 18, scope: !2499)
!2506 = !DILocation(line: 473, column: 21, scope: !2499)
!2507 = !DILocation(line: 472, column: 4, scope: !2499)
!2508 = !DILocation(line: 474, column: 8, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 474, column: 8)
!2510 = !DILocation(line: 474, column: 15, scope: !2509)
!2511 = !DILocation(line: 474, column: 18, scope: !2509)
!2512 = !DILocation(line: 474, column: 23, scope: !2509)
!2513 = !DILocation(line: 474, column: 8, scope: !2499)
!2514 = !DILocation(line: 475, column: 5, scope: !2509)
!2515 = !DILocation(line: 476, column: 31, scope: !2499)
!2516 = !DILocation(line: 477, column: 14, scope: !2499)
!2517 = !DILocation(line: 477, column: 12, scope: !2499)
!2518 = !DILocation(line: 477, column: 16, scope: !2499)
!2519 = !DILocation(line: 476, column: 4, scope: !2499)
!2520 = !DILocation(line: 478, column: 25, scope: !2499)
!2521 = !DILocation(line: 478, column: 4, scope: !2499)
!2522 = !DILocation(line: 478, column: 11, scope: !2499)
!2523 = !DILocation(line: 478, column: 14, scope: !2499)
!2524 = !DILocation(line: 478, column: 23, scope: !2499)
!2525 = !DILocation(line: 479, column: 31, scope: !2499)
!2526 = !DILocation(line: 480, column: 14, scope: !2499)
!2527 = !DILocation(line: 480, column: 12, scope: !2499)
!2528 = !DILocation(line: 480, column: 16, scope: !2499)
!2529 = !DILocation(line: 479, column: 4, scope: !2499)
!2530 = !DILocation(line: 481, column: 26, scope: !2499)
!2531 = !DILocation(line: 481, column: 4, scope: !2499)
!2532 = !DILocation(line: 481, column: 11, scope: !2499)
!2533 = !DILocation(line: 481, column: 14, scope: !2499)
!2534 = !DILocation(line: 481, column: 24, scope: !2499)
!2535 = !DILocation(line: 482, column: 3, scope: !2499)
!2536 = !DILocation(line: 469, column: 32, scope: !2494)
!2537 = !DILocation(line: 469, column: 3, scope: !2494)
!2538 = distinct !{!2538, !2497, !2539}
!2539 = !DILocation(line: 482, column: 3, scope: !2491)
!2540 = !DILocation(line: 483, column: 18, scope: !2475)
!2541 = !DILocation(line: 483, column: 3, scope: !2475)
!2542 = !DILocation(line: 483, column: 10, scope: !2475)
!2543 = !DILocation(line: 483, column: 16, scope: !2475)
!2544 = !DILocation(line: 484, column: 22, scope: !2475)
!2545 = !DILocation(line: 484, column: 3, scope: !2475)
!2546 = !DILocation(line: 484, column: 10, scope: !2475)
!2547 = !DILocation(line: 484, column: 20, scope: !2475)
!2548 = !DILocation(line: 485, column: 2, scope: !2475)
!2549 = !DILocation(line: 488, column: 42, scope: !2384)
!2550 = !DILocation(line: 488, column: 13, scope: !2384)
!2551 = !DILocation(line: 488, column: 11, scope: !2384)
!2552 = !DILocation(line: 489, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 489, column: 6)
!2554 = !DILocation(line: 489, column: 6, scope: !2384)
!2555 = !DILocation(line: 490, column: 3, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 489, column: 17)
!2557 = !DILocation(line: 491, column: 3, scope: !2556)
!2558 = !DILocation(line: 494, column: 22, scope: !2384)
!2559 = !DILocation(line: 494, column: 27, scope: !2384)
!2560 = !DILocation(line: 494, column: 9, scope: !2384)
!2561 = !DILocation(line: 494, column: 7, scope: !2384)
!2562 = !DILocation(line: 495, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 495, column: 6)
!2564 = !DILocation(line: 495, column: 6, scope: !2384)
!2565 = !DILocation(line: 496, column: 3, scope: !2563)
!2566 = !DILocation(line: 498, column: 8, scope: !2384)
!2567 = !DILocation(line: 498, column: 6, scope: !2384)
!2568 = !DILocation(line: 499, column: 2, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 499, column: 2)
!2570 = !DILocation(line: 499, column: 2, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 499, column: 2)
!2572 = !DILocalVariable(name: "string", scope: !2573, file: !3, line: 500, type: !103)
!2573 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 499, column: 46)
!2574 = !DILocation(line: 500, column: 15, scope: !2573)
!2575 = !DILocalVariable(name: "mode_val", scope: !2573, file: !3, line: 501, type: !793)
!2576 = !DILocation(line: 501, column: 8, scope: !2573)
!2577 = !DILocalVariable(name: "num_modes", scope: !2573, file: !3, line: 502, type: !95)
!2578 = !DILocation(line: 502, column: 7, scope: !2573)
!2579 = !DILocation(line: 504, column: 30, scope: !2573)
!2580 = !DILocation(line: 505, column: 10, scope: !2573)
!2581 = !DILocation(line: 505, column: 15, scope: !2573)
!2582 = !DILocation(line: 504, column: 9, scope: !2573)
!2583 = !DILocation(line: 504, column: 7, scope: !2573)
!2584 = !DILocation(line: 506, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 506, column: 7)
!2586 = !DILocation(line: 506, column: 7, scope: !2573)
!2587 = !DILocation(line: 507, column: 4, scope: !2585)
!2588 = !DILocation(line: 509, column: 30, scope: !2573)
!2589 = !DILocation(line: 510, column: 10, scope: !2573)
!2590 = !DILocation(line: 510, column: 15, scope: !2573)
!2591 = !DILocation(line: 509, column: 9, scope: !2573)
!2592 = !DILocation(line: 509, column: 7, scope: !2573)
!2593 = !DILocation(line: 511, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 511, column: 7)
!2595 = !DILocation(line: 511, column: 7, scope: !2573)
!2596 = !DILocation(line: 512, column: 4, scope: !2594)
!2597 = !DILocation(line: 514, column: 30, scope: !2573)
!2598 = !DILocation(line: 515, column: 10, scope: !2573)
!2599 = !DILocation(line: 515, column: 15, scope: !2573)
!2600 = !DILocation(line: 514, column: 9, scope: !2573)
!2601 = !DILocation(line: 514, column: 7, scope: !2573)
!2602 = !DILocation(line: 516, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 516, column: 7)
!2604 = !DILocation(line: 516, column: 7, scope: !2573)
!2605 = !DILocation(line: 517, column: 4, scope: !2603)
!2606 = !DILocation(line: 520, column: 17, scope: !2573)
!2607 = !DILocation(line: 520, column: 4, scope: !2573)
!2608 = !DILocation(line: 519, column: 12, scope: !2573)
!2609 = !DILocation(line: 523, column: 8, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 523, column: 7)
!2611 = !DILocation(line: 523, column: 7, scope: !2573)
!2612 = !DILocation(line: 524, column: 8, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 523, column: 18)
!2614 = !DILocation(line: 525, column: 4, scope: !2613)
!2615 = !DILocation(line: 528, column: 10, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 528, column: 3)
!2617 = !DILocation(line: 528, column: 8, scope: !2616)
!2618 = !DILocation(line: 528, column: 15, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 528, column: 3)
!2620 = !DILocation(line: 528, column: 17, scope: !2619)
!2621 = !DILocation(line: 528, column: 3, scope: !2616)
!2622 = !DILocation(line: 529, column: 4, scope: !2619)
!2623 = !DILocation(line: 529, column: 13, scope: !2619)
!2624 = !DILocation(line: 529, column: 16, scope: !2619)
!2625 = !DILocation(line: 528, column: 42, scope: !2619)
!2626 = !DILocation(line: 528, column: 3, scope: !2619)
!2627 = distinct !{!2627, !2621, !2628}
!2628 = !DILocation(line: 529, column: 18, scope: !2616)
!2629 = !DILocation(line: 531, column: 37, scope: !2573)
!2630 = !DILocation(line: 531, column: 9, scope: !2573)
!2631 = !DILocation(line: 531, column: 7, scope: !2573)
!2632 = !DILocation(line: 532, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 532, column: 7)
!2634 = !DILocation(line: 532, column: 11, scope: !2633)
!2635 = !DILocation(line: 532, column: 15, scope: !2633)
!2636 = !DILocation(line: 532, column: 18, scope: !2633)
!2637 = !DILocation(line: 532, column: 22, scope: !2633)
!2638 = !DILocation(line: 532, column: 7, scope: !2573)
!2639 = !DILocation(line: 533, column: 8, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 532, column: 27)
!2641 = !DILocation(line: 534, column: 4, scope: !2640)
!2642 = !DILocation(line: 536, column: 15, scope: !2573)
!2643 = !DILocation(line: 536, column: 19, scope: !2573)
!2644 = !DILocation(line: 536, column: 13, scope: !2573)
!2645 = !DILocation(line: 537, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 537, column: 7)
!2647 = !DILocation(line: 537, column: 17, scope: !2646)
!2648 = !DILocation(line: 537, column: 7, scope: !2573)
!2649 = !DILocation(line: 538, column: 8, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 537, column: 41)
!2651 = !DILocation(line: 539, column: 4, scope: !2650)
!2652 = !DILocation(line: 542, column: 10, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 542, column: 3)
!2654 = !DILocation(line: 542, column: 8, scope: !2653)
!2655 = !DILocation(line: 542, column: 15, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 542, column: 3)
!2657 = !DILocation(line: 542, column: 19, scope: !2656)
!2658 = !DILocation(line: 542, column: 17, scope: !2656)
!2659 = !DILocation(line: 542, column: 3, scope: !2653)
!2660 = !DILocalVariable(name: "mode", scope: !2661, file: !3, line: 543, type: !95)
!2661 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 542, column: 35)
!2662 = !DILocation(line: 543, column: 8, scope: !2661)
!2663 = !DILocalVariable(name: "val", scope: !2661, file: !3, line: 544, type: !95)
!2664 = !DILocation(line: 544, column: 8, scope: !2661)
!2665 = !DILocation(line: 546, column: 31, scope: !2661)
!2666 = !DILocation(line: 547, column: 26, scope: !2661)
!2667 = !DILocation(line: 547, column: 24, scope: !2661)
!2668 = !DILocation(line: 546, column: 4, scope: !2661)
!2669 = !DILocation(line: 548, column: 31, scope: !2661)
!2670 = !DILocation(line: 549, column: 26, scope: !2661)
!2671 = !DILocation(line: 549, column: 24, scope: !2661)
!2672 = !DILocation(line: 549, column: 28, scope: !2661)
!2673 = !DILocation(line: 548, column: 4, scope: !2661)
!2674 = !DILocation(line: 550, column: 8, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 550, column: 8)
!2676 = !DILocation(line: 550, column: 13, scope: !2675)
!2677 = !DILocation(line: 550, column: 8, scope: !2661)
!2678 = !DILocation(line: 551, column: 9, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 550, column: 38)
!2680 = !DILocation(line: 552, column: 5, scope: !2679)
!2681 = !DILocation(line: 554, column: 21, scope: !2661)
!2682 = !DILocation(line: 554, column: 4, scope: !2661)
!2683 = !DILocation(line: 554, column: 13, scope: !2661)
!2684 = !DILocation(line: 554, column: 19, scope: !2661)
!2685 = !DILocation(line: 555, column: 3, scope: !2661)
!2686 = !DILocation(line: 542, column: 31, scope: !2656)
!2687 = !DILocation(line: 542, column: 3, scope: !2656)
!2688 = distinct !{!2688, !2659, !2689}
!2689 = !DILocation(line: 555, column: 3, scope: !2653)
!2690 = !DILocation(line: 556, column: 19, scope: !2573)
!2691 = !DILocation(line: 556, column: 3, scope: !2573)
!2692 = !DILocation(line: 556, column: 8, scope: !2573)
!2693 = !DILocation(line: 556, column: 17, scope: !2573)
!2694 = !DILocation(line: 558, column: 32, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 558, column: 7)
!2696 = !DILocation(line: 558, column: 8, scope: !2695)
!2697 = !DILocation(line: 558, column: 7, scope: !2573)
!2698 = !DILocation(line: 559, column: 16, scope: !2695)
!2699 = !DILocation(line: 559, column: 4, scope: !2695)
!2700 = !DILocation(line: 559, column: 9, scope: !2695)
!2701 = !DILocation(line: 559, column: 14, scope: !2695)
!2702 = !DILocation(line: 561, column: 16, scope: !2695)
!2703 = !DILocation(line: 561, column: 23, scope: !2695)
!2704 = !DILocation(line: 561, column: 4, scope: !2695)
!2705 = !DILocation(line: 561, column: 9, scope: !2695)
!2706 = !DILocation(line: 561, column: 14, scope: !2695)
!2707 = !DILocation(line: 563, column: 32, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 563, column: 7)
!2709 = !DILocation(line: 563, column: 8, scope: !2708)
!2710 = !DILocation(line: 563, column: 7, scope: !2573)
!2711 = !DILocation(line: 565, column: 27, scope: !2708)
!2712 = !DILocation(line: 565, column: 4, scope: !2708)
!2713 = !DILocation(line: 565, column: 9, scope: !2708)
!2714 = !DILocation(line: 565, column: 25, scope: !2708)
!2715 = !DILocation(line: 567, column: 6, scope: !2573)
!2716 = !DILocation(line: 568, column: 2, scope: !2573)
!2717 = distinct !{!2717, !2568, !2718}
!2718 = !DILocation(line: 568, column: 2, scope: !2569)
!2719 = !DILocation(line: 570, column: 16, scope: !2384)
!2720 = !DILocation(line: 570, column: 2, scope: !2384)
!2721 = !DILocation(line: 570, column: 9, scope: !2384)
!2722 = !DILocation(line: 570, column: 14, scope: !2384)
!2723 = !DILocation(line: 571, column: 20, scope: !2384)
!2724 = !DILocation(line: 571, column: 2, scope: !2384)
!2725 = !DILocation(line: 571, column: 9, scope: !2384)
!2726 = !DILocation(line: 571, column: 18, scope: !2384)
!2727 = !DILocation(line: 573, column: 2, scope: !2384)
!2728 = !DILabel(scope: !2384, name: "err_node_put", file: !3, line: 575)
!2729 = !DILocation(line: 575, column: 1, scope: !2384)
!2730 = !DILocation(line: 576, column: 14, scope: !2384)
!2731 = !DILocation(line: 576, column: 2, scope: !2384)
!2732 = !DILocation(line: 577, column: 9, scope: !2384)
!2733 = !DILocation(line: 577, column: 2, scope: !2384)
!2734 = !DILocation(line: 578, column: 1, scope: !2384)
!2735 = distinct !DISubprogram(name: "devm_kcalloc", scope: !30, file: !30, line: 229, type: !2736, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!80, !146, !255, !255, !78}
!2738 = !DILocalVariable(name: "dev", arg: 1, scope: !2735, file: !30, line: 229, type: !146)
!2739 = !DILocation(line: 229, column: 49, scope: !2735)
!2740 = !DILocalVariable(name: "n", arg: 2, scope: !2735, file: !30, line: 230, type: !255)
!2741 = !DILocation(line: 230, column: 13, scope: !2735)
!2742 = !DILocalVariable(name: "size", arg: 3, scope: !2735, file: !30, line: 230, type: !255)
!2743 = !DILocation(line: 230, column: 23, scope: !2735)
!2744 = !DILocalVariable(name: "flags", arg: 4, scope: !2735, file: !30, line: 230, type: !78)
!2745 = !DILocation(line: 230, column: 35, scope: !2735)
!2746 = !DILocation(line: 232, column: 28, scope: !2735)
!2747 = !DILocation(line: 232, column: 33, scope: !2735)
!2748 = !DILocation(line: 232, column: 36, scope: !2735)
!2749 = !DILocation(line: 232, column: 42, scope: !2735)
!2750 = !DILocation(line: 232, column: 48, scope: !2735)
!2751 = !DILocation(line: 232, column: 9, scope: !2735)
!2752 = !DILocation(line: 232, column: 2, scope: !2735)
!2753 = distinct !DISubprogram(name: "create_netxbig_led", scope: !3, file: !3, line: 276, type: !2754, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!95, !2191, !2285, !83, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2293)
!2758 = !DILocalVariable(name: "lock", arg: 1, scope: !2759, file: !2760, line: 327, type: !2764)
!2759 = distinct !DISubprogram(name: "spinlock_check", scope: !2760, file: !2760, line: 327, type: !2761, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2760 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!2765 = !DILocation(line: 327, column: 67, scope: !2759, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 281, column: 2, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 281, column: 2)
!2768 = !DILocalVariable(name: "pdev", arg: 1, scope: !2753, file: !3, line: 276, type: !2191)
!2769 = !DILocation(line: 276, column: 55, scope: !2753)
!2770 = !DILocalVariable(name: "pdata", arg: 2, scope: !2753, file: !3, line: 277, type: !2285)
!2771 = !DILocation(line: 277, column: 44, scope: !2753)
!2772 = !DILocalVariable(name: "led_dat", arg: 3, scope: !2753, file: !3, line: 278, type: !83)
!2773 = !DILocation(line: 278, column: 35, scope: !2753)
!2774 = !DILocalVariable(name: "template", arg: 4, scope: !2753, file: !3, line: 279, type: !2756)
!2775 = !DILocation(line: 279, column: 36, scope: !2753)
!2776 = !DILocation(line: 281, column: 2, scope: !2753)
!2777 = !DILocation(line: 281, column: 2, scope: !2767)
!2778 = !DILocation(line: 329, column: 10, scope: !2759, inlinedAt: !2766)
!2779 = !DILocation(line: 329, column: 16, scope: !2759, inlinedAt: !2766)
!2780 = !DILocation(line: 282, column: 22, scope: !2753)
!2781 = !DILocation(line: 282, column: 29, scope: !2753)
!2782 = !DILocation(line: 282, column: 2, scope: !2753)
!2783 = !DILocation(line: 282, column: 11, scope: !2753)
!2784 = !DILocation(line: 282, column: 20, scope: !2753)
!2785 = !DILocation(line: 283, column: 23, scope: !2753)
!2786 = !DILocation(line: 283, column: 33, scope: !2753)
!2787 = !DILocation(line: 283, column: 2, scope: !2753)
!2788 = !DILocation(line: 283, column: 11, scope: !2753)
!2789 = !DILocation(line: 283, column: 16, scope: !2753)
!2790 = !DILocation(line: 283, column: 21, scope: !2753)
!2791 = !DILocation(line: 284, column: 34, scope: !2753)
!2792 = !DILocation(line: 284, column: 44, scope: !2753)
!2793 = !DILocation(line: 284, column: 2, scope: !2753)
!2794 = !DILocation(line: 284, column: 11, scope: !2753)
!2795 = !DILocation(line: 284, column: 16, scope: !2753)
!2796 = !DILocation(line: 284, column: 32, scope: !2753)
!2797 = !DILocation(line: 285, column: 2, scope: !2753)
!2798 = !DILocation(line: 285, column: 11, scope: !2753)
!2799 = !DILocation(line: 285, column: 16, scope: !2753)
!2800 = !DILocation(line: 285, column: 26, scope: !2753)
!2801 = !DILocation(line: 286, column: 2, scope: !2753)
!2802 = !DILocation(line: 286, column: 11, scope: !2753)
!2803 = !DILocation(line: 286, column: 16, scope: !2753)
!2804 = !DILocation(line: 286, column: 31, scope: !2753)
!2805 = !DILocation(line: 297, column: 2, scope: !2753)
!2806 = !DILocation(line: 297, column: 11, scope: !2753)
!2807 = !DILocation(line: 297, column: 16, scope: !2753)
!2808 = !DILocation(line: 298, column: 2, scope: !2753)
!2809 = !DILocation(line: 298, column: 11, scope: !2753)
!2810 = !DILocation(line: 298, column: 16, scope: !2753)
!2811 = !DILocation(line: 298, column: 27, scope: !2753)
!2812 = !DILocation(line: 299, column: 33, scope: !2753)
!2813 = !DILocation(line: 299, column: 43, scope: !2753)
!2814 = !DILocation(line: 299, column: 2, scope: !2753)
!2815 = !DILocation(line: 299, column: 11, scope: !2753)
!2816 = !DILocation(line: 299, column: 16, scope: !2753)
!2817 = !DILocation(line: 299, column: 31, scope: !2753)
!2818 = !DILocation(line: 300, column: 2, scope: !2753)
!2819 = !DILocation(line: 300, column: 11, scope: !2753)
!2820 = !DILocation(line: 300, column: 16, scope: !2753)
!2821 = !DILocation(line: 300, column: 22, scope: !2753)
!2822 = !DILocation(line: 301, column: 23, scope: !2753)
!2823 = !DILocation(line: 301, column: 33, scope: !2753)
!2824 = !DILocation(line: 301, column: 2, scope: !2753)
!2825 = !DILocation(line: 301, column: 11, scope: !2753)
!2826 = !DILocation(line: 301, column: 21, scope: !2753)
!2827 = !DILocation(line: 302, column: 22, scope: !2753)
!2828 = !DILocation(line: 302, column: 32, scope: !2753)
!2829 = !DILocation(line: 302, column: 2, scope: !2753)
!2830 = !DILocation(line: 302, column: 11, scope: !2753)
!2831 = !DILocation(line: 302, column: 20, scope: !2753)
!2832 = !DILocation(line: 303, column: 25, scope: !2753)
!2833 = !DILocation(line: 303, column: 35, scope: !2753)
!2834 = !DILocation(line: 303, column: 2, scope: !2753)
!2835 = !DILocation(line: 303, column: 11, scope: !2753)
!2836 = !DILocation(line: 303, column: 23, scope: !2753)
!2837 = !DILocation(line: 304, column: 19, scope: !2753)
!2838 = !DILocation(line: 304, column: 26, scope: !2753)
!2839 = !DILocation(line: 304, column: 2, scope: !2753)
!2840 = !DILocation(line: 304, column: 11, scope: !2753)
!2841 = !DILocation(line: 304, column: 17, scope: !2753)
!2842 = !DILocation(line: 305, column: 23, scope: !2753)
!2843 = !DILocation(line: 305, column: 30, scope: !2753)
!2844 = !DILocation(line: 305, column: 2, scope: !2753)
!2845 = !DILocation(line: 305, column: 11, scope: !2753)
!2846 = !DILocation(line: 305, column: 21, scope: !2753)
!2847 = !DILocation(line: 310, column: 6, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 310, column: 6)
!2849 = !DILocation(line: 310, column: 15, scope: !2848)
!2850 = !DILocation(line: 310, column: 42, scope: !2848)
!2851 = !DILocation(line: 310, column: 6, scope: !2753)
!2852 = !DILocation(line: 311, column: 3, scope: !2848)
!2853 = !DILocation(line: 311, column: 12, scope: !2848)
!2854 = !DILocation(line: 311, column: 17, scope: !2848)
!2855 = !DILocation(line: 311, column: 24, scope: !2848)
!2856 = !DILocation(line: 313, column: 37, scope: !2753)
!2857 = !DILocation(line: 313, column: 43, scope: !2753)
!2858 = !DILocation(line: 313, column: 49, scope: !2753)
!2859 = !DILocation(line: 313, column: 58, scope: !2753)
!2860 = !DILocation(line: 313, column: 9, scope: !2753)
!2861 = !DILocation(line: 313, column: 2, scope: !2753)
!2862 = distinct !DISubprogram(name: "dev_of_node", scope: !30, file: !30, line: 754, type: !2863, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!1956, !146}
!2865 = !DILocalVariable(name: "dev", arg: 1, scope: !2862, file: !30, line: 754, type: !146)
!2866 = !DILocation(line: 754, column: 62, scope: !2862)
!2867 = !DILocation(line: 756, column: 33, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2862, file: !30, line: 756, column: 6)
!2869 = !DILocation(line: 756, column: 6, scope: !2862)
!2870 = !DILocation(line: 757, column: 3, scope: !2868)
!2871 = !DILocation(line: 758, column: 9, scope: !2862)
!2872 = !DILocation(line: 758, column: 14, scope: !2862)
!2873 = !DILocation(line: 758, column: 2, scope: !2862)
!2874 = !DILocation(line: 759, column: 1, scope: !2862)
!2875 = distinct !DISubprogram(name: "of_node_put", scope: !1958, file: !1958, line: 129, type: !2876, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !1956}
!2878 = !DILocalVariable(name: "node", arg: 1, scope: !2875, file: !1958, line: 129, type: !1956)
!2879 = !DILocation(line: 129, column: 52, scope: !2875)
!2880 = !DILocation(line: 129, column: 60, scope: !2875)
!2881 = distinct !DISubprogram(name: "netxbig_gpio_ext_get", scope: !3, file: !3, line: 346, type: !2882, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!95, !146, !146, !87}
!2884 = !DILocalVariable(name: "dev", arg: 1, scope: !2881, file: !3, line: 346, type: !146)
!2885 = !DILocation(line: 346, column: 48, scope: !2881)
!2886 = !DILocalVariable(name: "gpio_ext_dev", arg: 2, scope: !2881, file: !3, line: 347, type: !146)
!2887 = !DILocation(line: 347, column: 20, scope: !2881)
!2888 = !DILocalVariable(name: "gpio_ext", arg: 3, scope: !2881, file: !3, line: 348, type: !87)
!2889 = !DILocation(line: 348, column: 30, scope: !2881)
!2890 = !DILocalVariable(name: "addr", scope: !2881, file: !3, line: 350, type: !91)
!2891 = !DILocation(line: 350, column: 21, scope: !2881)
!2892 = !DILocalVariable(name: "data", scope: !2881, file: !3, line: 350, type: !91)
!2893 = !DILocation(line: 350, column: 29, scope: !2881)
!2894 = !DILocalVariable(name: "num_addr", scope: !2881, file: !3, line: 351, type: !95)
!2895 = !DILocation(line: 351, column: 6, scope: !2881)
!2896 = !DILocalVariable(name: "num_data", scope: !2881, file: !3, line: 351, type: !95)
!2897 = !DILocation(line: 351, column: 16, scope: !2881)
!2898 = !DILocalVariable(name: "gpiod", scope: !2881, file: !3, line: 352, type: !92)
!2899 = !DILocation(line: 352, column: 20, scope: !2881)
!2900 = !DILocalVariable(name: "ret", scope: !2881, file: !3, line: 353, type: !95)
!2901 = !DILocation(line: 353, column: 6, scope: !2881)
!2902 = !DILocalVariable(name: "i", scope: !2881, file: !3, line: 354, type: !95)
!2903 = !DILocation(line: 354, column: 6, scope: !2881)
!2904 = !DILocation(line: 356, column: 20, scope: !2881)
!2905 = !DILocation(line: 356, column: 8, scope: !2881)
!2906 = !DILocation(line: 356, column: 6, scope: !2881)
!2907 = !DILocation(line: 357, column: 6, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 357, column: 6)
!2909 = !DILocation(line: 357, column: 10, scope: !2908)
!2910 = !DILocation(line: 357, column: 6, scope: !2881)
!2911 = !DILocation(line: 358, column: 3, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 357, column: 15)
!2913 = !DILocation(line: 360, column: 10, scope: !2912)
!2914 = !DILocation(line: 360, column: 3, scope: !2912)
!2915 = !DILocation(line: 362, column: 13, scope: !2881)
!2916 = !DILocation(line: 362, column: 11, scope: !2881)
!2917 = !DILocation(line: 363, column: 22, scope: !2881)
!2918 = !DILocation(line: 363, column: 27, scope: !2881)
!2919 = !DILocation(line: 363, column: 9, scope: !2881)
!2920 = !DILocation(line: 363, column: 7, scope: !2881)
!2921 = !DILocation(line: 364, column: 7, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 364, column: 6)
!2923 = !DILocation(line: 364, column: 6, scope: !2881)
!2924 = !DILocation(line: 365, column: 3, scope: !2922)
!2925 = !DILocation(line: 374, column: 9, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 374, column: 2)
!2927 = !DILocation(line: 374, column: 7, scope: !2926)
!2928 = !DILocation(line: 374, column: 14, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 374, column: 2)
!2930 = !DILocation(line: 374, column: 18, scope: !2929)
!2931 = !DILocation(line: 374, column: 16, scope: !2929)
!2932 = !DILocation(line: 374, column: 2, scope: !2926)
!2933 = !DILocation(line: 375, column: 27, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 374, column: 33)
!2935 = !DILocation(line: 375, column: 49, scope: !2934)
!2936 = !DILocation(line: 375, column: 11, scope: !2934)
!2937 = !DILocation(line: 375, column: 9, scope: !2934)
!2938 = !DILocation(line: 377, column: 14, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 377, column: 7)
!2940 = !DILocation(line: 377, column: 7, scope: !2939)
!2941 = !DILocation(line: 377, column: 7, scope: !2934)
!2942 = !DILocation(line: 378, column: 19, scope: !2939)
!2943 = !DILocation(line: 378, column: 11, scope: !2939)
!2944 = !DILocation(line: 378, column: 4, scope: !2939)
!2945 = !DILocation(line: 379, column: 27, scope: !2934)
!2946 = !DILocation(line: 379, column: 3, scope: !2934)
!2947 = !DILocation(line: 380, column: 13, scope: !2934)
!2948 = !DILocation(line: 380, column: 3, scope: !2934)
!2949 = !DILocation(line: 380, column: 8, scope: !2934)
!2950 = !DILocation(line: 380, column: 11, scope: !2934)
!2951 = !DILocation(line: 381, column: 2, scope: !2934)
!2952 = !DILocation(line: 374, column: 29, scope: !2929)
!2953 = !DILocation(line: 374, column: 2, scope: !2929)
!2954 = distinct !{!2954, !2932, !2955}
!2955 = !DILocation(line: 381, column: 2, scope: !2926)
!2956 = !DILocation(line: 382, column: 19, scope: !2881)
!2957 = !DILocation(line: 382, column: 2, scope: !2881)
!2958 = !DILocation(line: 382, column: 12, scope: !2881)
!2959 = !DILocation(line: 382, column: 17, scope: !2881)
!2960 = !DILocation(line: 383, column: 23, scope: !2881)
!2961 = !DILocation(line: 383, column: 2, scope: !2881)
!2962 = !DILocation(line: 383, column: 12, scope: !2881)
!2963 = !DILocation(line: 383, column: 21, scope: !2881)
!2964 = !DILocation(line: 385, column: 20, scope: !2881)
!2965 = !DILocation(line: 385, column: 8, scope: !2881)
!2966 = !DILocation(line: 385, column: 6, scope: !2881)
!2967 = !DILocation(line: 386, column: 6, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 386, column: 6)
!2969 = !DILocation(line: 386, column: 10, scope: !2968)
!2970 = !DILocation(line: 386, column: 6, scope: !2881)
!2971 = !DILocation(line: 387, column: 3, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 386, column: 15)
!2973 = !DILocation(line: 389, column: 10, scope: !2972)
!2974 = !DILocation(line: 389, column: 3, scope: !2972)
!2975 = !DILocation(line: 391, column: 13, scope: !2881)
!2976 = !DILocation(line: 391, column: 11, scope: !2881)
!2977 = !DILocation(line: 392, column: 22, scope: !2881)
!2978 = !DILocation(line: 392, column: 27, scope: !2881)
!2979 = !DILocation(line: 392, column: 9, scope: !2881)
!2980 = !DILocation(line: 392, column: 7, scope: !2881)
!2981 = !DILocation(line: 393, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 393, column: 6)
!2983 = !DILocation(line: 393, column: 6, scope: !2881)
!2984 = !DILocation(line: 394, column: 3, scope: !2982)
!2985 = !DILocation(line: 396, column: 9, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 396, column: 2)
!2987 = !DILocation(line: 396, column: 7, scope: !2986)
!2988 = !DILocation(line: 396, column: 14, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 396, column: 2)
!2990 = !DILocation(line: 396, column: 18, scope: !2989)
!2991 = !DILocation(line: 396, column: 16, scope: !2989)
!2992 = !DILocation(line: 396, column: 2, scope: !2986)
!2993 = !DILocation(line: 397, column: 27, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 396, column: 33)
!2995 = !DILocation(line: 397, column: 49, scope: !2994)
!2996 = !DILocation(line: 397, column: 11, scope: !2994)
!2997 = !DILocation(line: 397, column: 9, scope: !2994)
!2998 = !DILocation(line: 399, column: 14, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 399, column: 7)
!3000 = !DILocation(line: 399, column: 7, scope: !2999)
!3001 = !DILocation(line: 399, column: 7, scope: !2994)
!3002 = !DILocation(line: 400, column: 19, scope: !2999)
!3003 = !DILocation(line: 400, column: 11, scope: !2999)
!3004 = !DILocation(line: 400, column: 4, scope: !2999)
!3005 = !DILocation(line: 401, column: 27, scope: !2994)
!3006 = !DILocation(line: 401, column: 3, scope: !2994)
!3007 = !DILocation(line: 402, column: 13, scope: !2994)
!3008 = !DILocation(line: 402, column: 3, scope: !2994)
!3009 = !DILocation(line: 402, column: 8, scope: !2994)
!3010 = !DILocation(line: 402, column: 11, scope: !2994)
!3011 = !DILocation(line: 403, column: 2, scope: !2994)
!3012 = !DILocation(line: 396, column: 29, scope: !2989)
!3013 = !DILocation(line: 396, column: 2, scope: !2989)
!3014 = distinct !{!3014, !2992, !3015}
!3015 = !DILocation(line: 403, column: 2, scope: !2986)
!3016 = !DILocation(line: 404, column: 19, scope: !2881)
!3017 = !DILocation(line: 404, column: 2, scope: !2881)
!3018 = !DILocation(line: 404, column: 12, scope: !2881)
!3019 = !DILocation(line: 404, column: 17, scope: !2881)
!3020 = !DILocation(line: 405, column: 23, scope: !2881)
!3021 = !DILocation(line: 405, column: 2, scope: !2881)
!3022 = !DILocation(line: 405, column: 12, scope: !2881)
!3023 = !DILocation(line: 405, column: 21, scope: !2881)
!3024 = !DILocation(line: 407, column: 20, scope: !2881)
!3025 = !DILocation(line: 407, column: 10, scope: !2881)
!3026 = !DILocation(line: 407, column: 8, scope: !2881)
!3027 = !DILocation(line: 408, column: 13, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 408, column: 6)
!3029 = !DILocation(line: 408, column: 6, scope: !3028)
!3030 = !DILocation(line: 408, column: 6, scope: !2881)
!3031 = !DILocation(line: 409, column: 3, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 408, column: 21)
!3033 = !DILocation(line: 411, column: 18, scope: !3032)
!3034 = !DILocation(line: 411, column: 10, scope: !3032)
!3035 = !DILocation(line: 411, column: 3, scope: !3032)
!3036 = !DILocation(line: 413, column: 26, scope: !2881)
!3037 = !DILocation(line: 413, column: 2, scope: !2881)
!3038 = !DILocation(line: 414, column: 21, scope: !2881)
!3039 = !DILocation(line: 414, column: 2, scope: !2881)
!3040 = !DILocation(line: 414, column: 12, scope: !2881)
!3041 = !DILocation(line: 414, column: 19, scope: !2881)
!3042 = !DILocation(line: 416, column: 34, scope: !2881)
!3043 = !DILocation(line: 416, column: 64, scope: !2881)
!3044 = !DILocation(line: 416, column: 9, scope: !2881)
!3045 = !DILocation(line: 416, column: 2, scope: !2881)
!3046 = !DILocation(line: 417, column: 1, scope: !2881)
!3047 = distinct !DISubprogram(name: "of_property_count_u32_elems", scope: !1958, file: !1958, line: 1097, type: !3048, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!95, !3050, !103}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1957)
!3052 = !DILocalVariable(name: "np", arg: 1, scope: !3047, file: !1958, line: 1097, type: !3050)
!3053 = !DILocation(line: 1097, column: 73, scope: !3047)
!3054 = !DILocalVariable(name: "propname", arg: 2, scope: !3047, file: !1958, line: 1098, type: !103)
!3055 = !DILocation(line: 1098, column: 17, scope: !3047)
!3056 = !DILocation(line: 1100, column: 41, scope: !3047)
!3057 = !DILocation(line: 1100, column: 45, scope: !3047)
!3058 = !DILocation(line: 1100, column: 9, scope: !3047)
!3059 = !DILocation(line: 1100, column: 2, scope: !3047)
!3060 = distinct !DISubprogram(name: "of_get_available_child_count", scope: !1958, file: !1958, line: 1288, type: !3061, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!95, !3050}
!3063 = !DILocalVariable(name: "np", arg: 1, scope: !3060, file: !1958, line: 1288, type: !3050)
!3064 = !DILocation(line: 1288, column: 74, scope: !3060)
!3065 = !DILocalVariable(name: "child", scope: !3060, file: !1958, line: 1290, type: !1956)
!3066 = !DILocation(line: 1290, column: 22, scope: !3060)
!3067 = !DILocalVariable(name: "num", scope: !3060, file: !1958, line: 1291, type: !95)
!3068 = !DILocation(line: 1291, column: 6, scope: !3060)
!3069 = !DILocation(line: 1293, column: 2, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3060, file: !1958, line: 1293, column: 2)
!3071 = !DILocation(line: 1293, column: 2, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3070, file: !1958, line: 1293, column: 2)
!3073 = !DILocation(line: 1294, column: 6, scope: !3072)
!3074 = !DILocation(line: 1294, column: 3, scope: !3072)
!3075 = distinct !{!3075, !3069, !3076}
!3076 = !DILocation(line: 1294, column: 6, scope: !3070)
!3077 = !DILocation(line: 1296, column: 9, scope: !3060)
!3078 = !DILocation(line: 1296, column: 2, scope: !3060)
!3079 = distinct !DISubprogram(name: "of_property_read_u32", scope: !1958, file: !1958, line: 1214, type: !3080, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!95, !3050, !103, !677}
!3082 = !DILocalVariable(name: "np", arg: 1, scope: !3079, file: !1958, line: 1214, type: !3050)
!3083 = !DILocation(line: 1214, column: 66, scope: !3079)
!3084 = !DILocalVariable(name: "propname", arg: 2, scope: !3079, file: !1958, line: 1215, type: !103)
!3085 = !DILocation(line: 1215, column: 24, scope: !3079)
!3086 = !DILocalVariable(name: "out_value", arg: 3, scope: !3079, file: !1958, line: 1216, type: !677)
!3087 = !DILocation(line: 1216, column: 17, scope: !3079)
!3088 = !DILocation(line: 1218, column: 36, scope: !3079)
!3089 = !DILocation(line: 1218, column: 40, scope: !3079)
!3090 = !DILocation(line: 1218, column: 50, scope: !3079)
!3091 = !DILocation(line: 1218, column: 9, scope: !3079)
!3092 = !DILocation(line: 1218, column: 2, scope: !3079)
!3093 = distinct !DISubprogram(name: "IS_ERR", scope: !3094, file: !3094, line: 34, type: !3095, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3094 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!1048, !1179}
!3097 = !DILocalVariable(name: "ptr", arg: 1, scope: !3093, file: !3094, line: 34, type: !1179)
!3098 = !DILocation(line: 34, column: 60, scope: !3093)
!3099 = !DILocation(line: 36, column: 9, scope: !3093)
!3100 = !DILocation(line: 36, column: 2, scope: !3093)
!3101 = distinct !DISubprogram(name: "PTR_ERR", scope: !3094, file: !3094, line: 29, type: !3102, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!82, !1179}
!3104 = !DILocalVariable(name: "ptr", arg: 1, scope: !3101, file: !3094, line: 29, type: !1179)
!3105 = !DILocation(line: 29, column: 61, scope: !3101)
!3106 = !DILocation(line: 31, column: 16, scope: !3101)
!3107 = !DILocation(line: 31, column: 9, scope: !3101)
!3108 = !DILocation(line: 31, column: 2, scope: !3101)
!3109 = distinct !DISubprogram(name: "devm_add_action_or_reset", scope: !30, file: !30, line: 257, type: !3110, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!95, !146, !1460, !80}
!3112 = !DILocalVariable(name: "dev", arg: 1, scope: !3109, file: !30, line: 257, type: !146)
!3113 = !DILocation(line: 257, column: 59, scope: !3109)
!3114 = !DILocalVariable(name: "action", arg: 2, scope: !3109, file: !30, line: 258, type: !1460)
!3115 = !DILocation(line: 258, column: 16, scope: !3109)
!3116 = !DILocalVariable(name: "data", arg: 3, scope: !3109, file: !30, line: 258, type: !80)
!3117 = !DILocation(line: 258, column: 39, scope: !3109)
!3118 = !DILocalVariable(name: "ret", scope: !3109, file: !30, line: 260, type: !95)
!3119 = !DILocation(line: 260, column: 6, scope: !3109)
!3120 = !DILocation(line: 262, column: 24, scope: !3109)
!3121 = !DILocation(line: 262, column: 29, scope: !3109)
!3122 = !DILocation(line: 262, column: 37, scope: !3109)
!3123 = !DILocation(line: 262, column: 8, scope: !3109)
!3124 = !DILocation(line: 262, column: 6, scope: !3109)
!3125 = !DILocation(line: 263, column: 6, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3109, file: !30, line: 263, column: 6)
!3127 = !DILocation(line: 263, column: 6, scope: !3109)
!3128 = !DILocation(line: 264, column: 3, scope: !3126)
!3129 = !DILocation(line: 264, column: 10, scope: !3126)
!3130 = !DILocation(line: 266, column: 9, scope: !3109)
!3131 = !DILocation(line: 266, column: 2, scope: !3109)
!3132 = distinct !DISubprogram(name: "netxbig_gpio_ext_remove", scope: !3, file: !3, line: 324, type: !1461, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3133 = !DILocalVariable(name: "data", arg: 1, scope: !3132, file: !3, line: 324, type: !80)
!3134 = !DILocation(line: 324, column: 43, scope: !3132)
!3135 = !DILocalVariable(name: "gpio_ext", scope: !3132, file: !3, line: 326, type: !87)
!3136 = !DILocation(line: 326, column: 27, scope: !3132)
!3137 = !DILocation(line: 326, column: 38, scope: !3132)
!3138 = !DILocalVariable(name: "i", scope: !3132, file: !3, line: 327, type: !95)
!3139 = !DILocation(line: 327, column: 6, scope: !3132)
!3140 = !DILocation(line: 329, column: 9, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 329, column: 2)
!3142 = !DILocation(line: 329, column: 7, scope: !3141)
!3143 = !DILocation(line: 329, column: 14, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 329, column: 2)
!3145 = !DILocation(line: 329, column: 18, scope: !3144)
!3146 = !DILocation(line: 329, column: 28, scope: !3144)
!3147 = !DILocation(line: 329, column: 16, scope: !3144)
!3148 = !DILocation(line: 329, column: 2, scope: !3141)
!3149 = !DILocation(line: 330, column: 13, scope: !3144)
!3150 = !DILocation(line: 330, column: 23, scope: !3144)
!3151 = !DILocation(line: 330, column: 28, scope: !3144)
!3152 = !DILocation(line: 330, column: 3, scope: !3144)
!3153 = !DILocation(line: 329, column: 39, scope: !3144)
!3154 = !DILocation(line: 329, column: 2, scope: !3144)
!3155 = distinct !{!3155, !3148, !3156}
!3156 = !DILocation(line: 330, column: 30, scope: !3141)
!3157 = !DILocation(line: 331, column: 9, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 331, column: 2)
!3159 = !DILocation(line: 331, column: 7, scope: !3158)
!3160 = !DILocation(line: 331, column: 14, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 331, column: 2)
!3162 = !DILocation(line: 331, column: 18, scope: !3161)
!3163 = !DILocation(line: 331, column: 28, scope: !3161)
!3164 = !DILocation(line: 331, column: 16, scope: !3161)
!3165 = !DILocation(line: 331, column: 2, scope: !3158)
!3166 = !DILocation(line: 332, column: 13, scope: !3161)
!3167 = !DILocation(line: 332, column: 23, scope: !3161)
!3168 = !DILocation(line: 332, column: 28, scope: !3161)
!3169 = !DILocation(line: 332, column: 3, scope: !3161)
!3170 = !DILocation(line: 331, column: 39, scope: !3161)
!3171 = !DILocation(line: 331, column: 2, scope: !3161)
!3172 = distinct !{!3172, !3165, !3173}
!3173 = !DILocation(line: 332, column: 30, scope: !3158)
!3174 = !DILocation(line: 333, column: 12, scope: !3132)
!3175 = !DILocation(line: 333, column: 22, scope: !3132)
!3176 = !DILocation(line: 333, column: 2, scope: !3132)
!3177 = !DILocation(line: 334, column: 1, scope: !3132)
!3178 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !1958, file: !1958, line: 494, type: !3179, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!95, !3050, !103, !677, !255}
!3181 = !DILocalVariable(name: "np", arg: 1, scope: !3178, file: !1958, line: 494, type: !3050)
!3182 = !DILocation(line: 494, column: 72, scope: !3178)
!3183 = !DILocalVariable(name: "propname", arg: 2, scope: !3178, file: !1958, line: 495, type: !103)
!3184 = !DILocation(line: 495, column: 23, scope: !3178)
!3185 = !DILocalVariable(name: "out_values", arg: 3, scope: !3178, file: !1958, line: 496, type: !677)
!3186 = !DILocation(line: 496, column: 16, scope: !3178)
!3187 = !DILocalVariable(name: "sz", arg: 4, scope: !3178, file: !1958, line: 496, type: !255)
!3188 = !DILocation(line: 496, column: 35, scope: !3178)
!3189 = !DILocalVariable(name: "ret", scope: !3178, file: !1958, line: 498, type: !95)
!3190 = !DILocation(line: 498, column: 6, scope: !3178)
!3191 = !DILocation(line: 498, column: 48, scope: !3178)
!3192 = !DILocation(line: 498, column: 52, scope: !3178)
!3193 = !DILocation(line: 498, column: 62, scope: !3178)
!3194 = !DILocation(line: 499, column: 13, scope: !3178)
!3195 = !DILocation(line: 498, column: 12, scope: !3178)
!3196 = !DILocation(line: 500, column: 6, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3178, file: !1958, line: 500, column: 6)
!3198 = !DILocation(line: 500, column: 10, scope: !3197)
!3199 = !DILocation(line: 500, column: 6, scope: !3178)
!3200 = !DILocation(line: 501, column: 3, scope: !3197)
!3201 = !DILocation(line: 503, column: 10, scope: !3197)
!3202 = !DILocation(line: 503, column: 3, scope: !3197)
!3203 = !DILocation(line: 504, column: 1, scope: !3178)
!3204 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !30, file: !30, line: 219, type: !2736, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3205 = !DILocalVariable(name: "dev", arg: 1, scope: !3204, file: !30, line: 219, type: !146)
!3206 = !DILocation(line: 219, column: 55, scope: !3204)
!3207 = !DILocalVariable(name: "n", arg: 2, scope: !3204, file: !30, line: 220, type: !255)
!3208 = !DILocation(line: 220, column: 19, scope: !3204)
!3209 = !DILocalVariable(name: "size", arg: 3, scope: !3204, file: !30, line: 220, type: !255)
!3210 = !DILocation(line: 220, column: 29, scope: !3204)
!3211 = !DILocalVariable(name: "flags", arg: 4, scope: !3204, file: !30, line: 220, type: !78)
!3212 = !DILocation(line: 220, column: 41, scope: !3204)
!3213 = !DILocalVariable(name: "bytes", scope: !3204, file: !30, line: 222, type: !255)
!3214 = !DILocation(line: 222, column: 9, scope: !3204)
!3215 = !DILocalVariable(name: "__a", scope: !3216, file: !30, line: 224, type: !255)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !30, line: 224, column: 6)
!3217 = distinct !DILexicalBlock(scope: !3204, file: !30, line: 224, column: 6)
!3218 = !DILocation(line: 224, column: 6, scope: !3216)
!3219 = !DILocalVariable(name: "__b", scope: !3216, file: !30, line: 224, type: !255)
!3220 = !DILocalVariable(name: "__d", scope: !3216, file: !30, line: 224, type: !3221)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3222 = !DILocation(line: 224, column: 6, scope: !3217)
!3223 = !DILocation(line: 224, column: 6, scope: !3204)
!3224 = !DILocation(line: 225, column: 3, scope: !3217)
!3225 = !DILocation(line: 227, column: 22, scope: !3204)
!3226 = !DILocation(line: 227, column: 27, scope: !3204)
!3227 = !DILocation(line: 227, column: 34, scope: !3204)
!3228 = !DILocation(line: 227, column: 9, scope: !3204)
!3229 = !DILocation(line: 227, column: 2, scope: !3204)
!3230 = !DILocation(line: 228, column: 1, scope: !3204)
!3231 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3232, file: !3232, line: 52, type: !3233, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3232 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!1048, !1048}
!3235 = !DILocalVariable(name: "overflow", arg: 1, scope: !3231, file: !3232, line: 52, type: !1048)
!3236 = !DILocation(line: 52, column: 60, scope: !3231)
!3237 = !DILocation(line: 54, column: 9, scope: !3231)
!3238 = !DILocation(line: 54, column: 2, scope: !3231)
!3239 = distinct !DISubprogram(name: "netxbig_led_blink_set", scope: !3, file: !3, line: 138, type: !125, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3240 = !DILocalVariable(name: "lock", arg: 1, scope: !3241, file: !2760, line: 402, type: !2764)
!3241 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !2760, file: !2760, line: 402, type: !3242, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !2764}
!3244 = !DILocation(line: 402, column: 57, scope: !3241, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 163, column: 2, scope: !3239)
!3246 = !DILocalVariable(name: "lock", arg: 1, scope: !3247, file: !2760, line: 377, type: !2764)
!3247 = distinct !DISubprogram(name: "spin_lock_irq", scope: !2760, file: !2760, line: 377, type: !3242, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3248 = !DILocation(line: 377, column: 55, scope: !3247, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 158, column: 2, scope: !3239)
!3250 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3239, file: !3, line: 138, type: !114)
!3251 = !DILocation(line: 138, column: 55, scope: !3239)
!3252 = !DILocalVariable(name: "delay_on", arg: 2, scope: !3239, file: !3, line: 139, type: !127)
!3253 = !DILocation(line: 139, column: 21, scope: !3239)
!3254 = !DILocalVariable(name: "delay_off", arg: 3, scope: !3239, file: !3, line: 140, type: !127)
!3255 = !DILocation(line: 140, column: 21, scope: !3239)
!3256 = !DILocalVariable(name: "led_dat", scope: !3239, file: !3, line: 142, type: !83)
!3257 = !DILocation(line: 142, column: 27, scope: !3239)
!3258 = !DILocalVariable(name: "__mptr", scope: !3259, file: !3, line: 143, type: !80)
!3259 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 143, column: 3)
!3260 = !DILocation(line: 143, column: 3, scope: !3259)
!3261 = !DILocation(line: 143, column: 3, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 143, column: 3)
!3263 = !DILocalVariable(name: "mode", scope: !3239, file: !3, line: 144, type: !50)
!3264 = !DILocation(line: 144, column: 24, scope: !3239)
!3265 = !DILocalVariable(name: "mode_val", scope: !3239, file: !3, line: 145, type: !95)
!3266 = !DILocation(line: 145, column: 6, scope: !3239)
!3267 = !DILocalVariable(name: "ret", scope: !3239, file: !3, line: 146, type: !95)
!3268 = !DILocation(line: 146, column: 6, scope: !3239)
!3269 = !DILocation(line: 149, column: 43, scope: !3239)
!3270 = !DILocation(line: 149, column: 42, scope: !3239)
!3271 = !DILocation(line: 149, column: 54, scope: !3239)
!3272 = !DILocation(line: 149, column: 53, scope: !3239)
!3273 = !DILocation(line: 150, column: 7, scope: !3239)
!3274 = !DILocation(line: 150, column: 16, scope: !3239)
!3275 = !DILocation(line: 150, column: 23, scope: !3239)
!3276 = !DILocation(line: 150, column: 32, scope: !3239)
!3277 = !DILocation(line: 149, column: 8, scope: !3239)
!3278 = !DILocation(line: 149, column: 6, scope: !3239)
!3279 = !DILocation(line: 151, column: 6, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 151, column: 6)
!3281 = !DILocation(line: 151, column: 10, scope: !3280)
!3282 = !DILocation(line: 151, column: 6, scope: !3239)
!3283 = !DILocation(line: 152, column: 10, scope: !3280)
!3284 = !DILocation(line: 152, column: 3, scope: !3280)
!3285 = !DILocation(line: 154, column: 13, scope: !3239)
!3286 = !DILocation(line: 154, column: 22, scope: !3239)
!3287 = !DILocation(line: 154, column: 31, scope: !3239)
!3288 = !DILocation(line: 154, column: 11, scope: !3239)
!3289 = !DILocation(line: 155, column: 6, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 155, column: 6)
!3291 = !DILocation(line: 155, column: 15, scope: !3290)
!3292 = !DILocation(line: 155, column: 6, scope: !3239)
!3293 = !DILocation(line: 156, column: 3, scope: !3290)
!3294 = !DILocation(line: 158, column: 17, scope: !3239)
!3295 = !DILocation(line: 158, column: 26, scope: !3239)
!3296 = !DILocation(line: 379, column: 2, scope: !3297, inlinedAt: !3249)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !2760, line: 379, column: 2)
!3298 = distinct !DILexicalBlock(scope: !3247, file: !2760, line: 379, column: 2)
!3299 = !DILocation(line: 379, column: 2, scope: !3300, inlinedAt: !3249)
!3300 = distinct !DILexicalBlock(scope: !3298, file: !2760, line: 379, column: 2)
!3301 = !{i32 -2145464944}
!3302 = !DILocation(line: 379, column: 2, scope: !3303, inlinedAt: !3249)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !2760, line: 379, column: 2)
!3304 = !DILocation(line: 160, column: 21, scope: !3239)
!3305 = !DILocation(line: 160, column: 30, scope: !3239)
!3306 = !DILocation(line: 160, column: 40, scope: !3239)
!3307 = !DILocation(line: 160, column: 49, scope: !3239)
!3308 = !DILocation(line: 160, column: 60, scope: !3239)
!3309 = !DILocation(line: 160, column: 2, scope: !3239)
!3310 = !DILocation(line: 161, column: 18, scope: !3239)
!3311 = !DILocation(line: 161, column: 2, scope: !3239)
!3312 = !DILocation(line: 161, column: 11, scope: !3239)
!3313 = !DILocation(line: 161, column: 16, scope: !3239)
!3314 = !DILocation(line: 163, column: 19, scope: !3239)
!3315 = !DILocation(line: 163, column: 28, scope: !3239)
!3316 = !DILocation(line: 404, column: 2, scope: !3317, inlinedAt: !3245)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !2760, line: 404, column: 2)
!3318 = distinct !DILexicalBlock(scope: !3241, file: !2760, line: 404, column: 2)
!3319 = !DILocation(line: 404, column: 2, scope: !3320, inlinedAt: !3245)
!3320 = distinct !DILexicalBlock(scope: !3318, file: !2760, line: 404, column: 2)
!3321 = !{i32 -2145463196}
!3322 = !DILocation(line: 404, column: 2, scope: !3323, inlinedAt: !3245)
!3323 = distinct !DILexicalBlock(scope: !3320, file: !2760, line: 404, column: 2)
!3324 = !DILocation(line: 165, column: 2, scope: !3239)
!3325 = !DILocation(line: 166, column: 1, scope: !3239)
!3326 = distinct !DISubprogram(name: "netxbig_led_set", scope: !3, file: !3, line: 168, type: !112, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3327 = !DILocalVariable(name: "lock", arg: 1, scope: !3328, file: !2760, line: 407, type: !2764)
!3328 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2760, file: !2760, line: 407, type: !3329, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !2764, !81}
!3331 = !DILocation(line: 407, column: 64, scope: !3328, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 204, column: 2, scope: !3326)
!3333 = !DILocalVariable(name: "flags", arg: 2, scope: !3328, file: !2760, line: 407, type: !81)
!3334 = !DILocation(line: 407, column: 84, scope: !3328, inlinedAt: !3332)
!3335 = !DILocation(line: 327, column: 67, scope: !2759, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 178, column: 2, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 178, column: 2)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 178, column: 2)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 178, column: 2)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 178, column: 2)
!3341 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 178, column: 2)
!3342 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3326, file: !3, line: 168, type: !114)
!3343 = !DILocation(line: 168, column: 50, scope: !3326)
!3344 = !DILocalVariable(name: "value", arg: 2, scope: !3326, file: !3, line: 169, type: !58)
!3345 = !DILocation(line: 169, column: 28, scope: !3326)
!3346 = !DILocalVariable(name: "led_dat", scope: !3326, file: !3, line: 171, type: !83)
!3347 = !DILocation(line: 171, column: 27, scope: !3326)
!3348 = !DILocalVariable(name: "__mptr", scope: !3349, file: !3, line: 172, type: !80)
!3349 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 172, column: 3)
!3350 = !DILocation(line: 172, column: 3, scope: !3349)
!3351 = !DILocation(line: 172, column: 3, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 172, column: 3)
!3353 = !DILocalVariable(name: "mode", scope: !3326, file: !3, line: 173, type: !50)
!3354 = !DILocation(line: 173, column: 24, scope: !3326)
!3355 = !DILocalVariable(name: "mode_val", scope: !3326, file: !3, line: 174, type: !95)
!3356 = !DILocation(line: 174, column: 6, scope: !3326)
!3357 = !DILocalVariable(name: "set_brightness", scope: !3326, file: !3, line: 175, type: !95)
!3358 = !DILocation(line: 175, column: 6, scope: !3326)
!3359 = !DILocalVariable(name: "flags", scope: !3326, file: !3, line: 176, type: !81)
!3360 = !DILocation(line: 176, column: 16, scope: !3326)
!3361 = !DILocation(line: 178, column: 2, scope: !3326)
!3362 = !DILocation(line: 178, column: 2, scope: !3341)
!3363 = !DILocalVariable(name: "__dummy", scope: !3364, file: !3, line: 178, type: !81)
!3364 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 178, column: 2)
!3365 = !DILocation(line: 178, column: 2, scope: !3364)
!3366 = !DILocalVariable(name: "__dummy2", scope: !3364, file: !3, line: 178, type: !81)
!3367 = !DILocation(line: 178, column: 2, scope: !3340)
!3368 = !DILocation(line: 178, column: 2, scope: !3339)
!3369 = !DILocation(line: 178, column: 2, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 178, column: 2)
!3371 = !DILocalVariable(name: "__dummy", scope: !3372, file: !3, line: 178, type: !81)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 178, column: 2)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 178, column: 2)
!3374 = !DILocation(line: 178, column: 2, scope: !3372)
!3375 = !DILocalVariable(name: "__dummy2", scope: !3372, file: !3, line: 178, type: !81)
!3376 = !DILocation(line: 178, column: 2, scope: !3373)
!3377 = !DILocation(line: 178, column: 2, scope: !3338)
!3378 = !{i32 -2143117169}
!3379 = !DILocation(line: 178, column: 2, scope: !3337)
!3380 = !DILocation(line: 329, column: 10, scope: !2759, inlinedAt: !3336)
!3381 = !DILocation(line: 329, column: 16, scope: !2759, inlinedAt: !3336)
!3382 = !DILocation(line: 180, column: 6, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 180, column: 6)
!3384 = !DILocation(line: 180, column: 12, scope: !3383)
!3385 = !DILocation(line: 180, column: 6, scope: !3326)
!3386 = !DILocation(line: 181, column: 8, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 180, column: 24)
!3388 = !DILocation(line: 182, column: 18, scope: !3387)
!3389 = !DILocation(line: 183, column: 2, scope: !3387)
!3390 = !DILocation(line: 184, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 184, column: 7)
!3392 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 183, column: 9)
!3393 = !DILocation(line: 184, column: 16, scope: !3391)
!3394 = !DILocation(line: 184, column: 7, scope: !3392)
!3395 = !DILocation(line: 185, column: 9, scope: !3391)
!3396 = !DILocation(line: 185, column: 4, scope: !3391)
!3397 = !DILocation(line: 186, column: 12, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 186, column: 12)
!3399 = !DILocation(line: 186, column: 21, scope: !3398)
!3400 = !DILocation(line: 186, column: 26, scope: !3398)
!3401 = !DILocation(line: 186, column: 12, scope: !3391)
!3402 = !DILocation(line: 187, column: 9, scope: !3398)
!3403 = !DILocation(line: 187, column: 4, scope: !3398)
!3404 = !DILocation(line: 189, column: 11, scope: !3398)
!3405 = !DILocation(line: 189, column: 20, scope: !3398)
!3406 = !DILocation(line: 189, column: 9, scope: !3398)
!3407 = !DILocation(line: 191, column: 13, scope: !3326)
!3408 = !DILocation(line: 191, column: 22, scope: !3326)
!3409 = !DILocation(line: 191, column: 31, scope: !3326)
!3410 = !DILocation(line: 191, column: 11, scope: !3326)
!3411 = !DILocation(line: 193, column: 21, scope: !3326)
!3412 = !DILocation(line: 193, column: 30, scope: !3326)
!3413 = !DILocation(line: 193, column: 40, scope: !3326)
!3414 = !DILocation(line: 193, column: 49, scope: !3326)
!3415 = !DILocation(line: 193, column: 60, scope: !3326)
!3416 = !DILocation(line: 193, column: 2, scope: !3326)
!3417 = !DILocation(line: 194, column: 18, scope: !3326)
!3418 = !DILocation(line: 194, column: 2, scope: !3326)
!3419 = !DILocation(line: 194, column: 11, scope: !3326)
!3420 = !DILocation(line: 194, column: 16, scope: !3326)
!3421 = !DILocation(line: 200, column: 6, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 200, column: 6)
!3423 = !DILocation(line: 200, column: 6, scope: !3326)
!3424 = !DILocation(line: 201, column: 22, scope: !3422)
!3425 = !DILocation(line: 201, column: 31, scope: !3422)
!3426 = !DILocation(line: 202, column: 8, scope: !3422)
!3427 = !DILocation(line: 202, column: 17, scope: !3422)
!3428 = !DILocation(line: 202, column: 30, scope: !3422)
!3429 = !DILocation(line: 201, column: 3, scope: !3422)
!3430 = !DILocation(line: 204, column: 26, scope: !3326)
!3431 = !DILocation(line: 204, column: 35, scope: !3326)
!3432 = !DILocation(line: 204, column: 41, scope: !3326)
!3433 = !DILocalVariable(name: "__dummy", scope: !3434, file: !2760, line: 409, type: !81)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !2760, line: 409, column: 2)
!3435 = distinct !DILexicalBlock(scope: !3328, file: !2760, line: 409, column: 2)
!3436 = !DILocation(line: 409, column: 2, scope: !3434, inlinedAt: !3332)
!3437 = !DILocalVariable(name: "__dummy2", scope: !3434, file: !2760, line: 409, type: !81)
!3438 = !DILocalVariable(name: "__dummy", scope: !3439, file: !2760, line: 409, type: !81)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !2760, line: 409, column: 2)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !2760, line: 409, column: 2)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !2760, line: 409, column: 2)
!3442 = distinct !DILexicalBlock(scope: !3435, file: !2760, line: 409, column: 2)
!3443 = !DILocation(line: 409, column: 2, scope: !3439, inlinedAt: !3332)
!3444 = !DILocalVariable(name: "__dummy2", scope: !3439, file: !2760, line: 409, type: !81)
!3445 = !DILocation(line: 409, column: 2, scope: !3440, inlinedAt: !3332)
!3446 = !DILocation(line: 409, column: 2, scope: !3447, inlinedAt: !3332)
!3447 = distinct !DILexicalBlock(scope: !3442, file: !2760, line: 409, column: 2)
!3448 = !{i32 -2145462152}
!3449 = !DILocation(line: 409, column: 2, scope: !3450, inlinedAt: !3332)
!3450 = distinct !DILexicalBlock(scope: !3447, file: !2760, line: 409, column: 2)
!3451 = !DILocation(line: 205, column: 1, scope: !3326)
!3452 = distinct !DISubprogram(name: "devm_led_classdev_register", scope: !59, file: !59, line: 197, type: !3453, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!95, !146, !114}
!3455 = !DILocalVariable(name: "parent", arg: 1, scope: !3452, file: !59, line: 197, type: !146)
!3456 = !DILocation(line: 197, column: 61, scope: !3452)
!3457 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !3452, file: !59, line: 198, type: !114)
!3458 = !DILocation(line: 198, column: 32, scope: !3452)
!3459 = !DILocation(line: 200, column: 40, scope: !3452)
!3460 = !DILocation(line: 200, column: 48, scope: !3452)
!3461 = !DILocation(line: 200, column: 9, scope: !3452)
!3462 = !DILocation(line: 200, column: 2, scope: !3452)
!3463 = distinct !DISubprogram(name: "netxbig_led_get_timer_mode", scope: !3, file: !3, line: 120, type: !3464, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!95, !3466, !81, !81, !2140, !95}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!3467 = !DILocalVariable(name: "mode", arg: 1, scope: !3463, file: !3, line: 120, type: !3466)
!3468 = !DILocation(line: 120, column: 62, scope: !3463)
!3469 = !DILocalVariable(name: "delay_on", arg: 2, scope: !3463, file: !3, line: 121, type: !81)
!3470 = !DILocation(line: 121, column: 25, scope: !3463)
!3471 = !DILocalVariable(name: "delay_off", arg: 3, scope: !3463, file: !3, line: 122, type: !81)
!3472 = !DILocation(line: 122, column: 25, scope: !3463)
!3473 = !DILocalVariable(name: "timer", arg: 4, scope: !3463, file: !3, line: 123, type: !2140)
!3474 = !DILocation(line: 123, column: 37, scope: !3463)
!3475 = !DILocalVariable(name: "num_timer", arg: 5, scope: !3463, file: !3, line: 124, type: !95)
!3476 = !DILocation(line: 124, column: 15, scope: !3463)
!3477 = !DILocalVariable(name: "i", scope: !3463, file: !3, line: 126, type: !95)
!3478 = !DILocation(line: 126, column: 6, scope: !3463)
!3479 = !DILocation(line: 128, column: 9, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 128, column: 2)
!3481 = !DILocation(line: 128, column: 7, scope: !3480)
!3482 = !DILocation(line: 128, column: 14, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 128, column: 2)
!3484 = !DILocation(line: 128, column: 18, scope: !3483)
!3485 = !DILocation(line: 128, column: 16, scope: !3483)
!3486 = !DILocation(line: 128, column: 2, scope: !3480)
!3487 = !DILocation(line: 129, column: 7, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 129, column: 7)
!3489 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 128, column: 34)
!3490 = !DILocation(line: 129, column: 13, scope: !3488)
!3491 = !DILocation(line: 129, column: 16, scope: !3488)
!3492 = !DILocation(line: 129, column: 28, scope: !3488)
!3493 = !DILocation(line: 129, column: 25, scope: !3488)
!3494 = !DILocation(line: 129, column: 37, scope: !3488)
!3495 = !DILocation(line: 130, column: 7, scope: !3488)
!3496 = !DILocation(line: 130, column: 13, scope: !3488)
!3497 = !DILocation(line: 130, column: 16, scope: !3488)
!3498 = !DILocation(line: 130, column: 29, scope: !3488)
!3499 = !DILocation(line: 130, column: 26, scope: !3488)
!3500 = !DILocation(line: 129, column: 7, scope: !3489)
!3501 = !DILocation(line: 131, column: 12, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 130, column: 40)
!3503 = !DILocation(line: 131, column: 18, scope: !3502)
!3504 = !DILocation(line: 131, column: 21, scope: !3502)
!3505 = !DILocation(line: 131, column: 5, scope: !3502)
!3506 = !DILocation(line: 131, column: 10, scope: !3502)
!3507 = !DILocation(line: 132, column: 4, scope: !3502)
!3508 = !DILocation(line: 134, column: 2, scope: !3489)
!3509 = !DILocation(line: 128, column: 30, scope: !3483)
!3510 = !DILocation(line: 128, column: 2, scope: !3483)
!3511 = distinct !{!3511, !3486, !3512}
!3512 = !DILocation(line: 134, column: 2, scope: !3480)
!3513 = !DILocation(line: 135, column: 2, scope: !3463)
!3514 = !DILocation(line: 136, column: 1, scope: !3463)
!3515 = distinct !DISubprogram(name: "gpio_ext_set_value", scope: !3, file: !3, line: 91, type: !3516, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !87, !95, !95}
!3518 = !DILocation(line: 407, column: 64, scope: !3328, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 100, column: 2, scope: !3515)
!3520 = !DILocation(line: 407, column: 84, scope: !3328, inlinedAt: !3519)
!3521 = !DILocation(line: 327, column: 67, scope: !2759, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 96, column: 2, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 96, column: 2)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 96, column: 2)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 96, column: 2)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 96, column: 2)
!3527 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 96, column: 2)
!3528 = !DILocalVariable(name: "gpio_ext", arg: 1, scope: !3515, file: !3, line: 91, type: !87)
!3529 = !DILocation(line: 91, column: 57, scope: !3515)
!3530 = !DILocalVariable(name: "addr", arg: 2, scope: !3515, file: !3, line: 92, type: !95)
!3531 = !DILocation(line: 92, column: 15, scope: !3515)
!3532 = !DILocalVariable(name: "value", arg: 3, scope: !3515, file: !3, line: 92, type: !95)
!3533 = !DILocation(line: 92, column: 25, scope: !3515)
!3534 = !DILocalVariable(name: "flags", scope: !3515, file: !3, line: 94, type: !81)
!3535 = !DILocation(line: 94, column: 16, scope: !3515)
!3536 = !DILocation(line: 96, column: 2, scope: !3515)
!3537 = !DILocation(line: 96, column: 2, scope: !3527)
!3538 = !DILocalVariable(name: "__dummy", scope: !3539, file: !3, line: 96, type: !81)
!3539 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 96, column: 2)
!3540 = !DILocation(line: 96, column: 2, scope: !3539)
!3541 = !DILocalVariable(name: "__dummy2", scope: !3539, file: !3, line: 96, type: !81)
!3542 = !DILocation(line: 96, column: 2, scope: !3526)
!3543 = !DILocation(line: 96, column: 2, scope: !3525)
!3544 = !DILocation(line: 96, column: 2, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 96, column: 2)
!3546 = !DILocalVariable(name: "__dummy", scope: !3547, file: !3, line: 96, type: !81)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 96, column: 2)
!3548 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 96, column: 2)
!3549 = !DILocation(line: 96, column: 2, scope: !3547)
!3550 = !DILocalVariable(name: "__dummy2", scope: !3547, file: !3, line: 96, type: !81)
!3551 = !DILocation(line: 96, column: 2, scope: !3548)
!3552 = !DILocation(line: 96, column: 2, scope: !3524)
!3553 = !{i32 -2143121330}
!3554 = !DILocation(line: 329, column: 10, scope: !2759, inlinedAt: !3522)
!3555 = !DILocation(line: 329, column: 16, scope: !2759, inlinedAt: !3522)
!3556 = !DILocation(line: 96, column: 2, scope: !3523)
!3557 = !DILocation(line: 97, column: 20, scope: !3515)
!3558 = !DILocation(line: 97, column: 30, scope: !3515)
!3559 = !DILocation(line: 97, column: 2, scope: !3515)
!3560 = !DILocation(line: 98, column: 20, scope: !3515)
!3561 = !DILocation(line: 98, column: 30, scope: !3515)
!3562 = !DILocation(line: 98, column: 2, scope: !3515)
!3563 = !DILocation(line: 99, column: 25, scope: !3515)
!3564 = !DILocation(line: 99, column: 2, scope: !3515)
!3565 = !DILocation(line: 100, column: 41, scope: !3515)
!3566 = !DILocation(line: 409, column: 2, scope: !3434, inlinedAt: !3519)
!3567 = !DILocation(line: 409, column: 2, scope: !3439, inlinedAt: !3519)
!3568 = !DILocation(line: 409, column: 2, scope: !3440, inlinedAt: !3519)
!3569 = !DILocation(line: 409, column: 2, scope: !3447, inlinedAt: !3519)
!3570 = !DILocation(line: 409, column: 2, scope: !3450, inlinedAt: !3519)
!3571 = !DILocation(line: 101, column: 1, scope: !3515)
!3572 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3573, file: !3573, line: 656, type: !2157, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3573 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3574 = !DILocalVariable(name: "__edi", scope: !3575, file: !3573, line: 658, type: !81)
!3575 = distinct !DILexicalBlock(scope: !3572, file: !3573, line: 658, column: 2)
!3576 = !DILocation(line: 658, column: 2, scope: !3575)
!3577 = !DILocalVariable(name: "__esi", scope: !3575, file: !3573, line: 658, type: !81)
!3578 = !DILocalVariable(name: "__edx", scope: !3575, file: !3573, line: 658, type: !81)
!3579 = !DILocalVariable(name: "__ecx", scope: !3575, file: !3573, line: 658, type: !81)
!3580 = !DILocalVariable(name: "__eax", scope: !3575, file: !3573, line: 658, type: !81)
!3581 = !{i32 -2145768627, i32 -2145767895, i32 -2145767661, i32 -2145767610, i32 -2145767582, i32 -2145767557, i32 -2145767873, i32 -2145767860, i32 -2145767422, i32 -2145767303, i32 -2145767768, i32 -2145767741, i32 -2145767713, i32 -2145767683}
!3582 = !DILocation(line: 659, column: 1, scope: !3572)
!3583 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !3573, file: !3573, line: 666, type: !3584, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!81}
!3586 = !DILocalVariable(name: "f", scope: !3583, file: !3573, line: 668, type: !81)
!3587 = !DILocation(line: 668, column: 16, scope: !3583)
!3588 = !DILocation(line: 670, column: 6, scope: !3583)
!3589 = !DILocation(line: 670, column: 4, scope: !3583)
!3590 = !DILocation(line: 671, column: 2, scope: !3583)
!3591 = !DILocation(line: 672, column: 9, scope: !3583)
!3592 = !DILocation(line: 672, column: 2, scope: !3583)
!3593 = distinct !DISubprogram(name: "gpio_ext_set_addr", scope: !3, file: !3, line: 68, type: !3594, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !87, !95}
!3596 = !DILocalVariable(name: "gpio_ext", arg: 1, scope: !3593, file: !3, line: 68, type: !87)
!3597 = !DILocation(line: 68, column: 56, scope: !3593)
!3598 = !DILocalVariable(name: "addr", arg: 2, scope: !3593, file: !3, line: 68, type: !95)
!3599 = !DILocation(line: 68, column: 70, scope: !3593)
!3600 = !DILocalVariable(name: "pin", scope: !3593, file: !3, line: 70, type: !95)
!3601 = !DILocation(line: 70, column: 6, scope: !3593)
!3602 = !DILocation(line: 72, column: 11, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 72, column: 2)
!3604 = !DILocation(line: 72, column: 7, scope: !3603)
!3605 = !DILocation(line: 72, column: 16, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 72, column: 2)
!3607 = !DILocation(line: 72, column: 22, scope: !3606)
!3608 = !DILocation(line: 72, column: 32, scope: !3606)
!3609 = !DILocation(line: 72, column: 20, scope: !3606)
!3610 = !DILocation(line: 72, column: 2, scope: !3603)
!3611 = !DILocation(line: 73, column: 19, scope: !3606)
!3612 = !DILocation(line: 73, column: 29, scope: !3606)
!3613 = !DILocation(line: 73, column: 34, scope: !3606)
!3614 = !DILocation(line: 73, column: 41, scope: !3606)
!3615 = !DILocation(line: 73, column: 49, scope: !3606)
!3616 = !DILocation(line: 73, column: 46, scope: !3606)
!3617 = !DILocation(line: 73, column: 54, scope: !3606)
!3618 = !DILocation(line: 73, column: 3, scope: !3606)
!3619 = !DILocation(line: 72, column: 45, scope: !3606)
!3620 = !DILocation(line: 72, column: 2, scope: !3606)
!3621 = distinct !{!3621, !3610, !3622}
!3622 = !DILocation(line: 73, column: 57, scope: !3603)
!3623 = !DILocation(line: 74, column: 1, scope: !3593)
!3624 = distinct !DISubprogram(name: "gpio_ext_set_data", scope: !3, file: !3, line: 76, type: !3594, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3625 = !DILocalVariable(name: "gpio_ext", arg: 1, scope: !3624, file: !3, line: 76, type: !87)
!3626 = !DILocation(line: 76, column: 56, scope: !3624)
!3627 = !DILocalVariable(name: "data", arg: 2, scope: !3624, file: !3, line: 76, type: !95)
!3628 = !DILocation(line: 76, column: 70, scope: !3624)
!3629 = !DILocalVariable(name: "pin", scope: !3624, file: !3, line: 78, type: !95)
!3630 = !DILocation(line: 78, column: 6, scope: !3624)
!3631 = !DILocation(line: 80, column: 11, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 80, column: 2)
!3633 = !DILocation(line: 80, column: 7, scope: !3632)
!3634 = !DILocation(line: 80, column: 16, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 80, column: 2)
!3636 = !DILocation(line: 80, column: 22, scope: !3635)
!3637 = !DILocation(line: 80, column: 32, scope: !3635)
!3638 = !DILocation(line: 80, column: 20, scope: !3635)
!3639 = !DILocation(line: 80, column: 2, scope: !3632)
!3640 = !DILocation(line: 81, column: 19, scope: !3635)
!3641 = !DILocation(line: 81, column: 29, scope: !3635)
!3642 = !DILocation(line: 81, column: 34, scope: !3635)
!3643 = !DILocation(line: 81, column: 41, scope: !3635)
!3644 = !DILocation(line: 81, column: 49, scope: !3635)
!3645 = !DILocation(line: 81, column: 46, scope: !3635)
!3646 = !DILocation(line: 81, column: 54, scope: !3635)
!3647 = !DILocation(line: 81, column: 3, scope: !3635)
!3648 = !DILocation(line: 80, column: 45, scope: !3635)
!3649 = !DILocation(line: 80, column: 2, scope: !3635)
!3650 = distinct !{!3650, !3639, !3651}
!3651 = !DILocation(line: 81, column: 57, scope: !3632)
!3652 = !DILocation(line: 82, column: 1, scope: !3624)
!3653 = distinct !DISubprogram(name: "gpio_ext_enable_select", scope: !3, file: !3, line: 84, type: !3654, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !87}
!3656 = !DILocalVariable(name: "gpio_ext", arg: 1, scope: !3653, file: !3, line: 84, type: !87)
!3657 = !DILocation(line: 84, column: 61, scope: !3653)
!3658 = !DILocation(line: 87, column: 18, scope: !3653)
!3659 = !DILocation(line: 87, column: 28, scope: !3653)
!3660 = !DILocation(line: 87, column: 2, scope: !3653)
!3661 = !DILocation(line: 88, column: 18, scope: !3653)
!3662 = !DILocation(line: 88, column: 28, scope: !3653)
!3663 = !DILocation(line: 88, column: 2, scope: !3653)
!3664 = !DILocation(line: 89, column: 1, scope: !3653)
!3665 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3573, file: !3573, line: 646, type: !3584, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3666 = !DILocalVariable(name: "__ret", scope: !3667, file: !3573, line: 648, type: !81)
!3667 = distinct !DILexicalBlock(scope: !3665, file: !3573, line: 648, column: 9)
!3668 = !DILocation(line: 648, column: 9, scope: !3667)
!3669 = !DILocalVariable(name: "__edi", scope: !3667, file: !3573, line: 648, type: !81)
!3670 = !DILocalVariable(name: "__esi", scope: !3667, file: !3573, line: 648, type: !81)
!3671 = !DILocalVariable(name: "__edx", scope: !3667, file: !3573, line: 648, type: !81)
!3672 = !DILocalVariable(name: "__ecx", scope: !3667, file: !3573, line: 648, type: !81)
!3673 = !DILocalVariable(name: "__eax", scope: !3667, file: !3573, line: 648, type: !81)
!3674 = !DILocation(line: 648, column: 9, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3573, line: 648, column: 9)
!3676 = distinct !DILexicalBlock(scope: !3667, file: !3573, line: 648, column: 9)
!3677 = !{i32 -2145775721, i32 -2145773406, i32 -2145773172, i32 -2145773121, i32 -2145773093, i32 -2145773068, i32 -2145773384, i32 -2145773371, i32 -2145772933, i32 -2145772814, i32 -2145773279, i32 -2145773252, i32 -2145773224, i32 -2145773194}
!3678 = !DILocalVariable(name: "__mask", scope: !3679, file: !3573, line: 648, type: !81)
!3679 = distinct !DILexicalBlock(scope: !3675, file: !3573, line: 648, column: 9)
!3680 = !DILocation(line: 648, column: 9, scope: !3679)
!3681 = !DILocation(line: 648, column: 9, scope: !3676)
!3682 = !DILocation(line: 648, column: 2, scope: !3665)
!3683 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !3573, file: !3573, line: 651, type: !3684, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !81}
!3686 = !DILocalVariable(name: "f", arg: 1, scope: !3683, file: !3573, line: 651, type: !81)
!3687 = !DILocation(line: 651, column: 65, scope: !3683)
!3688 = !DILocalVariable(name: "__edi", scope: !3689, file: !3573, line: 653, type: !81)
!3689 = distinct !DILexicalBlock(scope: !3683, file: !3573, line: 653, column: 2)
!3690 = !DILocation(line: 653, column: 2, scope: !3689)
!3691 = !DILocalVariable(name: "__esi", scope: !3689, file: !3573, line: 653, type: !81)
!3692 = !DILocalVariable(name: "__edx", scope: !3689, file: !3573, line: 653, type: !81)
!3693 = !DILocalVariable(name: "__ecx", scope: !3689, file: !3573, line: 653, type: !81)
!3694 = !DILocalVariable(name: "__eax", scope: !3689, file: !3573, line: 653, type: !81)
!3695 = !{i32 -2145771254, i32 -2145770504, i32 -2145770270, i32 -2145770219, i32 -2145770191, i32 -2145770166, i32 -2145770482, i32 -2145770469, i32 -2145770031, i32 -2145769912, i32 -2145770377, i32 -2145770350, i32 -2145770322, i32 -2145770292}
!3696 = !DILocation(line: 654, column: 1, scope: !3683)
!3697 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !3573, file: !3573, line: 661, type: !2157, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3698 = !DILocalVariable(name: "__edi", scope: !3699, file: !3573, line: 663, type: !81)
!3699 = distinct !DILexicalBlock(scope: !3697, file: !3573, line: 663, column: 2)
!3700 = !DILocation(line: 663, column: 2, scope: !3699)
!3701 = !DILocalVariable(name: "__esi", scope: !3699, file: !3573, line: 663, type: !81)
!3702 = !DILocalVariable(name: "__edx", scope: !3699, file: !3573, line: 663, type: !81)
!3703 = !DILocalVariable(name: "__ecx", scope: !3699, file: !3573, line: 663, type: !81)
!3704 = !DILocalVariable(name: "__eax", scope: !3699, file: !3573, line: 663, type: !81)
!3705 = !{i32 -2145766043, i32 -2145765313, i32 -2145765079, i32 -2145765028, i32 -2145765000, i32 -2145764975, i32 -2145765291, i32 -2145765278, i32 -2145764840, i32 -2145764721, i32 -2145765186, i32 -2145765159, i32 -2145765131, i32 -2145765101}
!3706 = !DILocation(line: 664, column: 1, scope: !3697)
!3707 = distinct !DISubprogram(name: "netxbig_led_sata_show", scope: !3, file: !3, line: 258, type: !2259, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3708 = !DILocalVariable(name: "dev", arg: 1, scope: !3707, file: !3, line: 258, type: !146)
!3709 = !DILocation(line: 258, column: 53, scope: !3707)
!3710 = !DILocalVariable(name: "attr", arg: 2, scope: !3707, file: !3, line: 259, type: !2261)
!3711 = !DILocation(line: 259, column: 35, scope: !3707)
!3712 = !DILocalVariable(name: "buf", arg: 3, scope: !3707, file: !3, line: 259, type: !209)
!3713 = !DILocation(line: 259, column: 47, scope: !3707)
!3714 = !DILocalVariable(name: "led_cdev", scope: !3707, file: !3, line: 261, type: !114)
!3715 = !DILocation(line: 261, column: 23, scope: !3707)
!3716 = !DILocation(line: 261, column: 50, scope: !3707)
!3717 = !DILocation(line: 261, column: 34, scope: !3707)
!3718 = !DILocalVariable(name: "led_dat", scope: !3707, file: !3, line: 262, type: !83)
!3719 = !DILocation(line: 262, column: 27, scope: !3707)
!3720 = !DILocalVariable(name: "__mptr", scope: !3721, file: !3, line: 263, type: !80)
!3721 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 263, column: 3)
!3722 = !DILocation(line: 263, column: 3, scope: !3721)
!3723 = !DILocation(line: 263, column: 3, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 263, column: 3)
!3725 = !DILocation(line: 265, column: 17, scope: !3707)
!3726 = !DILocation(line: 265, column: 30, scope: !3707)
!3727 = !DILocation(line: 265, column: 39, scope: !3707)
!3728 = !DILocation(line: 265, column: 9, scope: !3707)
!3729 = !DILocation(line: 265, column: 2, scope: !3707)
!3730 = distinct !DISubprogram(name: "netxbig_led_sata_store", scope: !3, file: !3, line: 207, type: !2264, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3731 = !DILocation(line: 402, column: 57, scope: !3241, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 253, column: 2, scope: !3730)
!3733 = !DILocation(line: 377, column: 55, scope: !3247, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 225, column: 2, scope: !3730)
!3735 = !DILocalVariable(name: "dev", arg: 1, scope: !3730, file: !3, line: 207, type: !146)
!3736 = !DILocation(line: 207, column: 54, scope: !3730)
!3737 = !DILocalVariable(name: "attr", arg: 2, scope: !3730, file: !3, line: 208, type: !2261)
!3738 = !DILocation(line: 208, column: 36, scope: !3730)
!3739 = !DILocalVariable(name: "buff", arg: 3, scope: !3730, file: !3, line: 209, type: !103)
!3740 = !DILocation(line: 209, column: 23, scope: !3730)
!3741 = !DILocalVariable(name: "count", arg: 4, scope: !3730, file: !3, line: 209, type: !255)
!3742 = !DILocation(line: 209, column: 36, scope: !3730)
!3743 = !DILocalVariable(name: "led_cdev", scope: !3730, file: !3, line: 211, type: !114)
!3744 = !DILocation(line: 211, column: 23, scope: !3730)
!3745 = !DILocation(line: 211, column: 50, scope: !3730)
!3746 = !DILocation(line: 211, column: 34, scope: !3730)
!3747 = !DILocalVariable(name: "led_dat", scope: !3730, file: !3, line: 212, type: !83)
!3748 = !DILocation(line: 212, column: 27, scope: !3730)
!3749 = !DILocalVariable(name: "__mptr", scope: !3750, file: !3, line: 213, type: !80)
!3750 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 213, column: 3)
!3751 = !DILocation(line: 213, column: 3, scope: !3750)
!3752 = !DILocation(line: 213, column: 3, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 213, column: 3)
!3754 = !DILocalVariable(name: "enable", scope: !3730, file: !3, line: 214, type: !81)
!3755 = !DILocation(line: 214, column: 16, scope: !3730)
!3756 = !DILocalVariable(name: "mode", scope: !3730, file: !3, line: 215, type: !50)
!3757 = !DILocation(line: 215, column: 24, scope: !3730)
!3758 = !DILocalVariable(name: "mode_val", scope: !3730, file: !3, line: 216, type: !95)
!3759 = !DILocation(line: 216, column: 6, scope: !3730)
!3760 = !DILocalVariable(name: "ret", scope: !3730, file: !3, line: 217, type: !95)
!3761 = !DILocation(line: 217, column: 6, scope: !3730)
!3762 = !DILocation(line: 219, column: 17, scope: !3730)
!3763 = !DILocation(line: 219, column: 8, scope: !3730)
!3764 = !DILocation(line: 219, column: 6, scope: !3730)
!3765 = !DILocation(line: 220, column: 6, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 220, column: 6)
!3767 = !DILocation(line: 220, column: 10, scope: !3766)
!3768 = !DILocation(line: 220, column: 6, scope: !3730)
!3769 = !DILocation(line: 221, column: 10, scope: !3766)
!3770 = !DILocation(line: 221, column: 3, scope: !3766)
!3771 = !DILocation(line: 223, column: 13, scope: !3730)
!3772 = !DILocation(line: 223, column: 12, scope: !3730)
!3773 = !DILocation(line: 223, column: 11, scope: !3730)
!3774 = !DILocation(line: 223, column: 9, scope: !3730)
!3775 = !DILocation(line: 225, column: 17, scope: !3730)
!3776 = !DILocation(line: 225, column: 26, scope: !3730)
!3777 = !DILocation(line: 379, column: 2, scope: !3297, inlinedAt: !3734)
!3778 = !DILocation(line: 379, column: 2, scope: !3300, inlinedAt: !3734)
!3779 = !DILocation(line: 379, column: 2, scope: !3303, inlinedAt: !3734)
!3780 = !DILocation(line: 227, column: 6, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 227, column: 6)
!3782 = !DILocation(line: 227, column: 15, scope: !3781)
!3783 = !DILocation(line: 227, column: 23, scope: !3781)
!3784 = !DILocation(line: 227, column: 20, scope: !3781)
!3785 = !DILocation(line: 227, column: 6, scope: !3730)
!3786 = !DILocation(line: 228, column: 9, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 227, column: 31)
!3788 = !DILocation(line: 228, column: 7, scope: !3787)
!3789 = !DILocation(line: 229, column: 3, scope: !3787)
!3790 = !DILocation(line: 232, column: 6, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 232, column: 6)
!3792 = !DILocation(line: 232, column: 15, scope: !3791)
!3793 = !DILocation(line: 232, column: 20, scope: !3791)
!3794 = !DILocation(line: 232, column: 38, scope: !3791)
!3795 = !DILocation(line: 233, column: 6, scope: !3791)
!3796 = !DILocation(line: 233, column: 15, scope: !3791)
!3797 = !DILocation(line: 233, column: 20, scope: !3791)
!3798 = !DILocation(line: 232, column: 6, scope: !3730)
!3799 = !DILocation(line: 234, column: 10, scope: !3791)
!3800 = !DILocation(line: 234, column: 19, scope: !3791)
!3801 = !DILocation(line: 234, column: 8, scope: !3791)
!3802 = !DILocation(line: 234, column: 3, scope: !3791)
!3803 = !DILocation(line: 235, column: 11, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 235, column: 11)
!3805 = !DILocation(line: 235, column: 11, scope: !3791)
!3806 = !DILocation(line: 236, column: 8, scope: !3804)
!3807 = !DILocation(line: 236, column: 3, scope: !3804)
!3808 = !DILocation(line: 238, column: 8, scope: !3804)
!3809 = !DILocation(line: 240, column: 13, scope: !3730)
!3810 = !DILocation(line: 240, column: 22, scope: !3730)
!3811 = !DILocation(line: 240, column: 31, scope: !3730)
!3812 = !DILocation(line: 240, column: 11, scope: !3730)
!3813 = !DILocation(line: 241, column: 6, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 241, column: 6)
!3815 = !DILocation(line: 241, column: 15, scope: !3814)
!3816 = !DILocation(line: 241, column: 6, scope: !3730)
!3817 = !DILocation(line: 242, column: 7, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 241, column: 44)
!3819 = !DILocation(line: 243, column: 3, scope: !3818)
!3820 = !DILocation(line: 246, column: 21, scope: !3730)
!3821 = !DILocation(line: 246, column: 30, scope: !3730)
!3822 = !DILocation(line: 246, column: 40, scope: !3730)
!3823 = !DILocation(line: 246, column: 49, scope: !3730)
!3824 = !DILocation(line: 246, column: 60, scope: !3730)
!3825 = !DILocation(line: 246, column: 2, scope: !3730)
!3826 = !DILocation(line: 247, column: 18, scope: !3730)
!3827 = !DILocation(line: 247, column: 2, scope: !3730)
!3828 = !DILocation(line: 247, column: 11, scope: !3730)
!3829 = !DILocation(line: 247, column: 16, scope: !3730)
!3830 = !DILocation(line: 248, column: 18, scope: !3730)
!3831 = !DILocation(line: 248, column: 2, scope: !3730)
!3832 = !DILocation(line: 248, column: 11, scope: !3730)
!3833 = !DILocation(line: 248, column: 16, scope: !3730)
!3834 = !DILocation(line: 250, column: 8, scope: !3730)
!3835 = !DILocation(line: 250, column: 6, scope: !3730)
!3836 = !DILocation(line: 250, column: 2, scope: !3730)
!3837 = !DILabel(scope: !3730, name: "exit_unlock", file: !3, line: 252)
!3838 = !DILocation(line: 252, column: 1, scope: !3730)
!3839 = !DILocation(line: 253, column: 19, scope: !3730)
!3840 = !DILocation(line: 253, column: 28, scope: !3730)
!3841 = !DILocation(line: 404, column: 2, scope: !3317, inlinedAt: !3732)
!3842 = !DILocation(line: 404, column: 2, scope: !3320, inlinedAt: !3732)
!3843 = !DILocation(line: 404, column: 2, scope: !3323, inlinedAt: !3732)
!3844 = !DILocation(line: 255, column: 9, scope: !3730)
!3845 = !DILocation(line: 255, column: 2, scope: !3730)
!3846 = !DILocation(line: 256, column: 1, scope: !3730)
!3847 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3848, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!80, !1993}
!3850 = !DILocalVariable(name: "dev", arg: 1, scope: !3847, file: !30, line: 655, type: !1993)
!3851 = !DILocation(line: 655, column: 58, scope: !3847)
!3852 = !DILocation(line: 657, column: 9, scope: !3847)
!3853 = !DILocation(line: 657, column: 14, scope: !3847)
!3854 = !DILocation(line: 657, column: 2, scope: !3847)
!3855 = distinct !DISubprogram(name: "kstrtoul", scope: !3856, file: !3856, line: 351, type: !3857, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!3856 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!95, !103, !7, !127}
!3859 = !DILocalVariable(name: "s", arg: 1, scope: !3855, file: !3856, line: 351, type: !103)
!3860 = !DILocation(line: 351, column: 53, scope: !3855)
!3861 = !DILocalVariable(name: "base", arg: 2, scope: !3855, file: !3856, line: 351, type: !7)
!3862 = !DILocation(line: 351, column: 69, scope: !3855)
!3863 = !DILocalVariable(name: "res", arg: 3, scope: !3855, file: !3856, line: 351, type: !127)
!3864 = !DILocation(line: 351, column: 90, scope: !3855)
!3865 = !DILocation(line: 359, column: 20, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3855, file: !3856, line: 357, column: 6)
!3867 = !DILocation(line: 359, column: 23, scope: !3866)
!3868 = !DILocation(line: 359, column: 51, scope: !3866)
!3869 = !DILocation(line: 359, column: 10, scope: !3866)
!3870 = !DILocation(line: 359, column: 3, scope: !3866)
