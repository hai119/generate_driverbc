; ModuleID = '../bcout/drivers/leds/leds-ns2.llvm.bc'
source_filename = "drivers/leds/leds-ns2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ns2_led_driver_init6:\09\09\09"
module asm ".long\09ns2_led_driver_init - .\09\09\09"
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
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
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
%struct.ns2_led = type { %struct.led_classdev, %struct.gpio_desc*, %struct.gpio_desc*, i8, i8, %struct.rwlock_t, i32, %struct.ns2_led_modval* }
%struct.led_classdev = type { i8*, i32, i32, i32, i64, void (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, %struct.led_pattern*, i32, i32)*, i32 (%struct.led_classdev*)*, %struct.device*, %struct.attribute_group**, %struct.list_head, i8*, i64, i64, %struct.timer_list, i32, i32, void (%struct.led_classdev*)*, %struct.work_struct, i32, %struct.mutex }
%struct.led_pattern = type { i32, i32 }
%struct.gpio_desc = type opaque
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.ns2_led_modval = type { i32, i32, i32 }
%struct.led_init_data = type { %struct.fwnode_handle*, i8*, i8*, i8 }

@__UNIQUE_ID___addressable_ns2_led_driver_init164 = internal global i8* bitcast (i32 ()* @ns2_led_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ns2_led_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @ns2_led_probe, i32 (%struct.platform_device*)* null, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @of_ns2_leds_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2159
@__exitcall_ns2_led_driver_exit = internal global void ()* @ns2_led_driver_exit, section ".exitcall.exit", align 8, !dbg !2130
@__UNIQUE_ID_author165 = internal constant [49 x i8] c"leds_ns2.author=Simon Guinot <sguinot@lacie.com>\00", section ".modinfo", align 1, !dbg !2137
@__UNIQUE_ID_description166 = internal constant [49 x i8] c"leds_ns2.description=Network Space v2 LED driver\00", section ".modinfo", align 1, !dbg !2142
@__UNIQUE_ID_file167 = internal constant [36 x i8] c"leds_ns2.file=drivers/leds/leds-ns2\00", section ".modinfo", align 1, !dbg !2144
@__UNIQUE_ID_license168 = internal constant [21 x i8] c"leds_ns2.license=GPL\00", section ".modinfo", align 1, !dbg !2149
@__UNIQUE_ID_alias169 = internal constant [33 x i8] c"leds_ns2.alias=platform:leds-ns2\00", section ".modinfo", align 1, !dbg !2154
@.str = private unnamed_addr constant [9 x i8] c"leds-ns2\00", align 1
@of_ns2_leds_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lacie,ns2-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2242
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"modes-map\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Missing or malformed modes-map for %pfw\0A\00", align 1
@ns2_led_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @ns2_led_group, %struct.attribute_group* null], align 16, !dbg !2220
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to register LED for node %pfw\0A\00", align 1
@ns2_led_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @ns2_led_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2223
@ns2_led_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sata, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2225
@dev_attr_sata = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @ns2_led_sata_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ns2_led_sata_store }, align 8, !dbg !2228
@.str.6 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ns2_led_driver_init164 to i8*), i8* bitcast (void ()* @ns2_led_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ns2_led_driver_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author165, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_description166, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_file167, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license168, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_alias169, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ns2_led_driver_init() #0 section ".init.text" !dbg !2251 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @ns2_led_driver, %struct.module* null) #8, !dbg !2254
  ret i32 %call, !dbg !2254
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ns2_led_driver_exit() #0 section ".exit.text" !dbg !2255 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @ns2_led_driver) #8, !dbg !2256
  ret void, !dbg !2256
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ns2_led_probe(%struct.platform_device* %pdev) #2 !dbg !2257 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.device*, align 8
  %child = alloca %struct.fwnode_handle*, align 8
  %leds = alloca %struct.ns2_led*, align 8
  %count = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2258, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2260, metadata !DIExpression()), !dbg !2261
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2262
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2263
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2261
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %child, metadata !2264, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.declare(metadata %struct.ns2_led** %leds, metadata !2266, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2268, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2270, metadata !DIExpression()), !dbg !2271
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2272
  %call = call i32 @device_get_child_node_count(%struct.device* %1) #8, !dbg !2273
  store i32 %call, i32* %count, align 4, !dbg !2274
  %2 = load i32, i32* %count, align 4, !dbg !2275
  %tobool = icmp ne i32 %2, 0, !dbg !2275
  br i1 %tobool, label %if.end, label %if.then, !dbg !2277

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2278
  br label %return, !dbg !2278

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2279
  %4 = load i32, i32* %count, align 4, !dbg !2280
  %conv = sext i32 %4 to i64, !dbg !2280
  %call2 = call i64 @array_size(i64 288, i64 %conv) #8, !dbg !2281
  %call3 = call i8* @devm_kzalloc(%struct.device* %3, i64 %call2, i32 3264) #8, !dbg !2282
  %5 = bitcast i8* %call3 to %struct.ns2_led*, !dbg !2282
  store %struct.ns2_led* %5, %struct.ns2_led** %leds, align 8, !dbg !2283
  %6 = load %struct.ns2_led*, %struct.ns2_led** %leds, align 8, !dbg !2284
  %tobool4 = icmp ne %struct.ns2_led* %6, null, !dbg !2284
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2286

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2287
  br label %return, !dbg !2287

if.end6:                                          ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2288
  %call7 = call %struct.fwnode_handle* @device_get_next_child_node(%struct.device* %7, %struct.fwnode_handle* null) #8, !dbg !2288
  store %struct.fwnode_handle* %call7, %struct.fwnode_handle** %child, align 8, !dbg !2288
  br label %for.cond, !dbg !2288

for.cond:                                         ; preds = %for.inc, %if.end6
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !2290
  %tobool8 = icmp ne %struct.fwnode_handle* %8, null, !dbg !2288
  br i1 %tobool8, label %for.body, label %for.end, !dbg !2288

for.body:                                         ; preds = %for.cond
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2292
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !2294
  %11 = load %struct.ns2_led*, %struct.ns2_led** %leds, align 8, !dbg !2295
  %incdec.ptr = getelementptr %struct.ns2_led, %struct.ns2_led* %11, i32 1, !dbg !2295
  store %struct.ns2_led* %incdec.ptr, %struct.ns2_led** %leds, align 8, !dbg !2295
  %call9 = call i32 @ns2_led_register(%struct.device* %9, %struct.fwnode_handle* %10, %struct.ns2_led* %11) #8, !dbg !2296
  store i32 %call9, i32* %ret, align 4, !dbg !2297
  %12 = load i32, i32* %ret, align 4, !dbg !2298
  %tobool10 = icmp ne i32 %12, 0, !dbg !2298
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2300

if.then11:                                        ; preds = %for.body
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !2301
  call void @fwnode_handle_put(%struct.fwnode_handle* %13) #8, !dbg !2303
  %14 = load i32, i32* %ret, align 4, !dbg !2304
  store i32 %14, i32* %retval, align 4, !dbg !2305
  br label %return, !dbg !2305

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !2306

for.inc:                                          ; preds = %if.end12
  %15 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2290
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child, align 8, !dbg !2290
  %call13 = call %struct.fwnode_handle* @device_get_next_child_node(%struct.device* %15, %struct.fwnode_handle* %16) #8, !dbg !2290
  store %struct.fwnode_handle* %call13, %struct.fwnode_handle** %child, align 8, !dbg !2290
  br label %for.cond, !dbg !2290, !llvm.loop !2307

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2309
  br label %return, !dbg !2309

return:                                           ; preds = %for.end, %if.then11, %if.then5, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !2310
  ret i32 %17, !dbg !2310
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @device_get_child_node_count(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2311 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2314, metadata !DIExpression()), !dbg !2315
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2316, metadata !DIExpression()), !dbg !2317
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2318, metadata !DIExpression()), !dbg !2319
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2320
  %1 = load i64, i64* %size.addr, align 8, !dbg !2321
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2322
  %or = or i32 %2, 256, !dbg !2323
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !2324
  ret i8* %call, !dbg !2325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @array_size(i64 %a, i64 %b) #2 !dbg !2326 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !2330, metadata !DIExpression()), !dbg !2331
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !2332, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2334, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2336, metadata !DIExpression()), !dbg !2339
  %0 = load i64, i64* %a.addr, align 8, !dbg !2339
  store i64 %0, i64* %__a, align 8, !dbg !2339
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2340, metadata !DIExpression()), !dbg !2339
  %1 = load i64, i64* %b.addr, align 8, !dbg !2339
  store i64 %1, i64* %__b, align 8, !dbg !2339
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2341, metadata !DIExpression()), !dbg !2339
  store i64* %bytes, i64** %__d, align 8, !dbg !2339
  %cmp = icmp eq i64* %__a, %__b, !dbg !2339
  %conv = zext i1 %cmp to i32, !dbg !2339
  %2 = load i64*, i64** %__d, align 8, !dbg !2339
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2339
  %conv2 = zext i1 %cmp1 to i32, !dbg !2339
  %3 = load i64, i64* %__a, align 8, !dbg !2339
  %4 = load i64, i64* %__b, align 8, !dbg !2339
  %5 = load i64*, i64** %__d, align 8, !dbg !2339
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2339
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2339
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2339
  store i64 %8, i64* %5, align 8, !dbg !2339
  %frombool = zext i1 %7 to i8, !dbg !2339
  store i8 %frombool, i8* %tmp, align 1, !dbg !2339
  %9 = load i8, i8* %tmp, align 1, !dbg !2339
  %tobool = trunc i8 %9 to i1, !dbg !2339
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !2343
  br i1 %call, label %if.then, label %if.end, !dbg !2344

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !2345
  br label %return, !dbg !2345

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %bytes, align 8, !dbg !2346
  store i64 %10, i64* %retval, align 8, !dbg !2347
  br label %return, !dbg !2347

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !2348
  ret i64 %11, !dbg !2348
}

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @device_get_next_child_node(%struct.device*, %struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ns2_led_register(%struct.device* %dev, %struct.fwnode_handle* %node, %struct.ns2_led* %led) #2 !dbg !2349 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %node.addr = alloca %struct.fwnode_handle*, align 8
  %led.addr = alloca %struct.ns2_led*, align 8
  %init_data = alloca %struct.led_init_data, align 8
  %modval = alloca %struct.ns2_led_modval*, align 8
  %mode = alloca i32, align 4
  %nmodes = alloca i32, align 4
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.rwlock_t, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2352, metadata !DIExpression()), !dbg !2353
  store %struct.fwnode_handle* %node, %struct.fwnode_handle** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %node.addr, metadata !2354, metadata !DIExpression()), !dbg !2355
  store %struct.ns2_led* %led, %struct.ns2_led** %led.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ns2_led** %led.addr, metadata !2356, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.declare(metadata %struct.led_init_data* %init_data, metadata !2358, metadata !DIExpression()), !dbg !2365
  %0 = bitcast %struct.led_init_data* %init_data to i8*, !dbg !2365
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 32, i1 false), !dbg !2365
  call void @llvm.dbg.declare(metadata %struct.ns2_led_modval** %modval, metadata !2366, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !2368, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.declare(metadata i32* %nmodes, metadata !2370, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2372, metadata !DIExpression()), !dbg !2373
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2374
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2375
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2376
  %call = call i8* @fwnode_get_name(%struct.fwnode_handle* %3) #8, !dbg !2377
  %call1 = call %struct.gpio_desc* @devm_fwnode_gpiod_get_index(%struct.device* %1, %struct.fwnode_handle* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i8* %call) #8, !dbg !2378
  %4 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2379
  %cmd = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %4, i32 0, i32 1, !dbg !2380
  store %struct.gpio_desc* %call1, %struct.gpio_desc** %cmd, align 8, !dbg !2381
  %5 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2382
  %cmd2 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %5, i32 0, i32 1, !dbg !2384
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %cmd2, align 8, !dbg !2384
  %7 = bitcast %struct.gpio_desc* %6 to i8*, !dbg !2382
  %call3 = call zeroext i1 @IS_ERR(i8* %7) #8, !dbg !2385
  br i1 %call3, label %if.then, label %if.end, !dbg !2386

if.then:                                          ; preds = %entry
  %8 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2387
  %cmd4 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %8, i32 0, i32 1, !dbg !2388
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %cmd4, align 8, !dbg !2388
  %10 = bitcast %struct.gpio_desc* %9 to i8*, !dbg !2387
  %call5 = call i64 @PTR_ERR(i8* %10) #8, !dbg !2389
  %conv = trunc i64 %call5 to i32, !dbg !2389
  store i32 %conv, i32* %retval, align 4, !dbg !2390
  br label %return, !dbg !2390

if.end:                                           ; preds = %entry
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2391
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2392
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2393
  %call6 = call i8* @fwnode_get_name(%struct.fwnode_handle* %13) #8, !dbg !2394
  %call7 = call %struct.gpio_desc* @devm_fwnode_gpiod_get_index(%struct.device* %11, %struct.fwnode_handle* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i8* %call6) #8, !dbg !2395
  %14 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2396
  %slow = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %14, i32 0, i32 2, !dbg !2397
  store %struct.gpio_desc* %call7, %struct.gpio_desc** %slow, align 8, !dbg !2398
  %15 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2399
  %slow8 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %15, i32 0, i32 2, !dbg !2401
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %slow8, align 8, !dbg !2401
  %17 = bitcast %struct.gpio_desc* %16 to i8*, !dbg !2399
  %call9 = call zeroext i1 @IS_ERR(i8* %17) #8, !dbg !2402
  br i1 %call9, label %if.then10, label %if.end14, !dbg !2403

if.then10:                                        ; preds = %if.end
  %18 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2404
  %slow11 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %18, i32 0, i32 2, !dbg !2405
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %slow11, align 8, !dbg !2405
  %20 = bitcast %struct.gpio_desc* %19 to i8*, !dbg !2404
  %call12 = call i64 @PTR_ERR(i8* %20) #8, !dbg !2406
  %conv13 = trunc i64 %call12 to i32, !dbg !2406
  store i32 %conv13, i32* %retval, align 4, !dbg !2407
  br label %return, !dbg !2407

if.end14:                                         ; preds = %if.end
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2408
  %call15 = call i32 @fwnode_property_count_u32(%struct.fwnode_handle* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2409
  store i32 %call15, i32* %ret, align 4, !dbg !2410
  %22 = load i32, i32* %ret, align 4, !dbg !2411
  %cmp = icmp slt i32 %22, 0, !dbg !2413
  br i1 %cmp, label %if.then17, label %lor.lhs.false, !dbg !2414

lor.lhs.false:                                    ; preds = %if.end14
  %23 = load i32, i32* %ret, align 4, !dbg !2415
  %rem = srem i32 %23, 3, !dbg !2416
  %tobool = icmp ne i32 %rem, 0, !dbg !2416
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !2417

if.then17:                                        ; preds = %lor.lhs.false, %if.end14
  %24 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2418
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2418
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.fwnode_handle* %25) #9, !dbg !2418
  store i32 -22, i32* %retval, align 4, !dbg !2420
  br label %return, !dbg !2420

if.end18:                                         ; preds = %lor.lhs.false
  %26 = load i32, i32* %ret, align 4, !dbg !2421
  %div = sdiv i32 %26, 3, !dbg !2422
  store i32 %div, i32* %nmodes, align 4, !dbg !2423
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2424
  %28 = load i32, i32* %nmodes, align 4, !dbg !2425
  %conv19 = sext i32 %28 to i64, !dbg !2425
  %call20 = call i8* @devm_kcalloc(%struct.device* %27, i64 %conv19, i64 12, i32 3264) #8, !dbg !2426
  %29 = bitcast i8* %call20 to %struct.ns2_led_modval*, !dbg !2426
  store %struct.ns2_led_modval* %29, %struct.ns2_led_modval** %modval, align 8, !dbg !2427
  %30 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval, align 8, !dbg !2428
  %tobool21 = icmp ne %struct.ns2_led_modval* %30, null, !dbg !2428
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !2430

if.then22:                                        ; preds = %if.end18
  store i32 -12, i32* %retval, align 4, !dbg !2431
  br label %return, !dbg !2431

if.end23:                                         ; preds = %if.end18
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2432
  %32 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval, align 8, !dbg !2433
  %33 = bitcast %struct.ns2_led_modval* %32 to i8*, !dbg !2434
  %34 = bitcast i8* %33 to i32*, !dbg !2434
  %35 = load i32, i32* %nmodes, align 4, !dbg !2435
  %mul = mul i32 %35, 3, !dbg !2436
  %conv24 = sext i32 %mul to i64, !dbg !2435
  %call25 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %34, i64 %conv24) #8, !dbg !2437
  br label %do.body, !dbg !2438

do.body:                                          ; preds = %if.end23
  %36 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2439
  %rw_lock = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %36, i32 0, i32 5, !dbg !2439
  %37 = bitcast %struct.rwlock_t* %rw_lock to i8*, !dbg !2439
  %38 = bitcast %struct.rwlock_t* %.compoundliteral to i8*, !dbg !2439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %37, i8* align 1 %38, i64 0, i1 false), !dbg !2439
  br label %do.end, !dbg !2439

do.end:                                           ; preds = %do.body
  %39 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2441
  %cdev = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %39, i32 0, i32 0, !dbg !2442
  %blink_set = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev, i32 0, i32 8, !dbg !2443
  store i32 (%struct.led_classdev*, i64*, i64*)* null, i32 (%struct.led_classdev*, i64*, i64*)** %blink_set, align 8, !dbg !2444
  %40 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2445
  %cdev26 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %40, i32 0, i32 0, !dbg !2446
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev26, i32 0, i32 3, !dbg !2447
  %41 = load i32, i32* %flags, align 8, !dbg !2448
  %conv27 = sext i32 %41 to i64, !dbg !2448
  %or = or i64 %conv27, 65536, !dbg !2448
  %conv28 = trunc i64 %or to i32, !dbg !2448
  store i32 %conv28, i32* %flags, align 8, !dbg !2448
  %42 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2449
  %cdev29 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %42, i32 0, i32 0, !dbg !2450
  %groups = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev29, i32 0, i32 12, !dbg !2451
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @ns2_led_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !2452
  %43 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2453
  %cmd30 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %43, i32 0, i32 1, !dbg !2454
  %44 = load %struct.gpio_desc*, %struct.gpio_desc** %cmd30, align 8, !dbg !2454
  %call31 = call i32 @gpiod_cansleep(%struct.gpio_desc* %44) #8, !dbg !2455
  %tobool32 = icmp ne i32 %call31, 0, !dbg !2455
  br i1 %tobool32, label %lor.end, label %lor.rhs, !dbg !2456

lor.rhs:                                          ; preds = %do.end
  %45 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2457
  %slow33 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %45, i32 0, i32 2, !dbg !2458
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %slow33, align 8, !dbg !2458
  %call34 = call i32 @gpiod_cansleep(%struct.gpio_desc* %46) #8, !dbg !2459
  %tobool35 = icmp ne i32 %call34, 0, !dbg !2456
  br label %lor.end, !dbg !2456

lor.end:                                          ; preds = %lor.rhs, %do.end
  %47 = phi i1 [ true, %do.end ], [ %tobool35, %lor.rhs ]
  %48 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2460
  %can_sleep = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %48, i32 0, i32 3, !dbg !2461
  %frombool = zext i1 %47 to i8, !dbg !2462
  store i8 %frombool, i8* %can_sleep, align 8, !dbg !2462
  %49 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2463
  %can_sleep36 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %49, i32 0, i32 3, !dbg !2465
  %50 = load i8, i8* %can_sleep36, align 8, !dbg !2465
  %tobool37 = trunc i8 %50 to i1, !dbg !2465
  br i1 %tobool37, label %if.then38, label %if.else, !dbg !2466

if.then38:                                        ; preds = %lor.end
  %51 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2467
  %cdev39 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %51, i32 0, i32 0, !dbg !2468
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev39, i32 0, i32 6, !dbg !2469
  store i32 (%struct.led_classdev*, i32)* @ns2_led_set_blocking, i32 (%struct.led_classdev*, i32)** %brightness_set_blocking, align 8, !dbg !2470
  br label %if.end41, !dbg !2467

if.else:                                          ; preds = %lor.end
  %52 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2471
  %cdev40 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %52, i32 0, i32 0, !dbg !2472
  %brightness_set = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev40, i32 0, i32 5, !dbg !2473
  store void (%struct.led_classdev*, i32)* @ns2_led_set, void (%struct.led_classdev*, i32)** %brightness_set, align 8, !dbg !2474
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then38
  %53 = load i32, i32* %nmodes, align 4, !dbg !2475
  %54 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2476
  %num_modes = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %54, i32 0, i32 6, !dbg !2477
  store i32 %53, i32* %num_modes, align 4, !dbg !2478
  %55 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval, align 8, !dbg !2479
  %56 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2480
  %modval42 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %56, i32 0, i32 7, !dbg !2481
  store %struct.ns2_led_modval* %55, %struct.ns2_led_modval** %modval42, align 8, !dbg !2482
  %57 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2483
  %call43 = call i32 @ns2_led_get_mode(%struct.ns2_led* %57, i32* %mode) #8, !dbg !2484
  store i32 %call43, i32* %ret, align 4, !dbg !2485
  %58 = load i32, i32* %ret, align 4, !dbg !2486
  %cmp44 = icmp slt i32 %58, 0, !dbg !2488
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !2489

if.then46:                                        ; preds = %if.end41
  %59 = load i32, i32* %ret, align 4, !dbg !2490
  store i32 %59, i32* %retval, align 4, !dbg !2491
  br label %return, !dbg !2491

if.end47:                                         ; preds = %if.end41
  %60 = load i32, i32* %mode, align 4, !dbg !2492
  %cmp48 = icmp eq i32 %60, 2, !dbg !2493
  %61 = zext i1 %cmp48 to i64, !dbg !2494
  %cond = select i1 %cmp48, i32 1, i32 0, !dbg !2494
  %conv50 = trunc i32 %cond to i8, !dbg !2494
  %62 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2495
  %sata = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %62, i32 0, i32 4, !dbg !2496
  store i8 %conv50, i8* %sata, align 1, !dbg !2497
  %63 = load i32, i32* %mode, align 4, !dbg !2498
  %cmp51 = icmp eq i32 %63, 0, !dbg !2499
  %64 = zext i1 %cmp51 to i64, !dbg !2500
  %cond53 = select i1 %cmp51, i32 0, i32 255, !dbg !2500
  %65 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2501
  %cdev54 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %65, i32 0, i32 0, !dbg !2502
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev54, i32 0, i32 1, !dbg !2503
  store i32 %cond53, i32* %brightness, align 8, !dbg !2504
  %66 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2505
  %fwnode = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %init_data, i32 0, i32 0, !dbg !2506
  store %struct.fwnode_handle* %66, %struct.fwnode_handle** %fwnode, align 8, !dbg !2507
  %67 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2508
  %68 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2509
  %cdev55 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %68, i32 0, i32 0, !dbg !2510
  %call56 = call i32 @devm_led_classdev_register_ext(%struct.device* %67, %struct.led_classdev* %cdev55, %struct.led_init_data* %init_data) #8, !dbg !2511
  store i32 %call56, i32* %ret, align 4, !dbg !2512
  %69 = load i32, i32* %ret, align 4, !dbg !2513
  %tobool57 = icmp ne i32 %69, 0, !dbg !2513
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !2515

if.then58:                                        ; preds = %if.end47
  %70 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2516
  %71 = load %struct.fwnode_handle*, %struct.fwnode_handle** %node.addr, align 8, !dbg !2516
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), %struct.fwnode_handle* %71) #9, !dbg !2516
  br label %if.end59, !dbg !2516

if.end59:                                         ; preds = %if.then58, %if.end47
  %72 = load i32, i32* %ret, align 4, !dbg !2517
  store i32 %72, i32* %retval, align 4, !dbg !2518
  br label %return, !dbg !2518

return:                                           ; preds = %if.end59, %if.then46, %if.then22, %if.then17, %if.then10, %if.then
  %73 = load i32, i32* %retval, align 4, !dbg !2519
  ret i32 %73, !dbg !2519
}

; Function Attrs: noredzone
declare dso_local void @fwnode_handle_put(%struct.fwnode_handle*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !2520 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !2523, metadata !DIExpression()), !dbg !2524
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !2525
  %tobool = trunc i8 %0 to i1, !dbg !2525
  %lnot = xor i1 %tobool, true, !dbg !2525
  %lnot1 = xor i1 %lnot, true, !dbg !2525
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2525
  %conv = sext i32 %lnot.ext to i64, !dbg !2525
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2525
  ret i1 %tobool2, !dbg !2526
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @devm_fwnode_gpiod_get_index(%struct.device*, %struct.fwnode_handle*, i8*, i32, i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i8* @fwnode_get_name(%struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2527 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2531, metadata !DIExpression()), !dbg !2532
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2533
  %1 = ptrtoint i8* %0 to i64, !dbg !2533
  %2 = inttoptr i64 %1 to i8*, !dbg !2533
  %3 = ptrtoint i8* %2 to i64, !dbg !2533
  %cmp = icmp uge i64 %3, -4095, !dbg !2533
  %lnot = xor i1 %cmp, true, !dbg !2533
  %lnot1 = xor i1 %lnot, true, !dbg !2533
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2533
  %conv = sext i32 %lnot.ext to i64, !dbg !2533
  %tobool = icmp ne i64 %conv, 0, !dbg !2533
  ret i1 %tobool, !dbg !2534
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2535 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2540
  %1 = ptrtoint i8* %0 to i64, !dbg !2541
  ret i64 %1, !dbg !2542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fwnode_property_count_u32(%struct.fwnode_handle* %fwnode, i8* %propname) #2 !dbg !2543 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2549, metadata !DIExpression()), !dbg !2550
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2551
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2552
  %call = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %0, i8* %1, i32* null, i64 0) #8, !dbg !2553
  ret i32 %call, !dbg !2554
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kcalloc(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !2555 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2560, metadata !DIExpression()), !dbg !2561
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2566
  %1 = load i64, i64* %n.addr, align 8, !dbg !2567
  %2 = load i64, i64* %size.addr, align 8, !dbg !2568
  %3 = load i32, i32* %flags.addr, align 4, !dbg !2569
  %or = or i32 %3, 256, !dbg !2570
  %call = call i8* @devm_kmalloc_array(%struct.device* %0, i64 %1, i64 %2, i32 %or) #8, !dbg !2571
  ret i8* %call, !dbg !2572
}

; Function Attrs: noredzone
declare dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @gpiod_cansleep(%struct.gpio_desc*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ns2_led_set_blocking(%struct.led_classdev* %led_cdev, i32 %value) #2 !dbg !2573 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %value.addr = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2578
  %1 = load i32, i32* %value.addr, align 4, !dbg !2579
  call void @ns2_led_set(%struct.led_classdev* %0, i32 %1) #8, !dbg !2580
  ret i32 0, !dbg !2581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ns2_led_set(%struct.led_classdev* %led_cdev, i32 %value) #2 !dbg !2582 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %value.addr = alloca i32, align 4
  %led = alloca %struct.ns2_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ns2_led*, align 8
  %mode = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !2585, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.declare(metadata %struct.ns2_led** %led, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2589, metadata !DIExpression()), !dbg !2591
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2591
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !2591
  store i8* %1, i8** %__mptr, align 8, !dbg !2591
  br label %do.body, !dbg !2591

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2592

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2591
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2591
  %3 = bitcast i8* %add.ptr to %struct.ns2_led*, !dbg !2591
  store %struct.ns2_led* %3, %struct.ns2_led** %tmp, align 8, !dbg !2592
  %4 = load %struct.ns2_led*, %struct.ns2_led** %tmp, align 8, !dbg !2591
  store %struct.ns2_led* %4, %struct.ns2_led** %led, align 8, !dbg !2588
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !2594, metadata !DIExpression()), !dbg !2595
  %5 = load i32, i32* %value.addr, align 4, !dbg !2596
  %cmp = icmp eq i32 %5, 0, !dbg !2598
  br i1 %cmp, label %if.then, label %if.else, !dbg !2599

if.then:                                          ; preds = %do.end
  store i32 0, i32* %mode, align 4, !dbg !2600
  br label %if.end3, !dbg !2601

if.else:                                          ; preds = %do.end
  %6 = load %struct.ns2_led*, %struct.ns2_led** %led, align 8, !dbg !2602
  %sata = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %6, i32 0, i32 4, !dbg !2604
  %7 = load i8, i8* %sata, align 1, !dbg !2604
  %tobool = icmp ne i8 %7, 0, !dbg !2602
  br i1 %tobool, label %if.then1, label %if.else2, !dbg !2605

if.then1:                                         ; preds = %if.else
  store i32 2, i32* %mode, align 4, !dbg !2606
  br label %if.end, !dbg !2607

if.else2:                                         ; preds = %if.else
  store i32 1, i32* %mode, align 4, !dbg !2608
  br label %if.end

if.end:                                           ; preds = %if.else2, %if.then1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %8 = load %struct.ns2_led*, %struct.ns2_led** %led, align 8, !dbg !2609
  %9 = load i32, i32* %mode, align 4, !dbg !2610
  call void @ns2_led_set_mode(%struct.ns2_led* %8, i32 %9) #8, !dbg !2611
  ret void, !dbg !2612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ns2_led_get_mode(%struct.ns2_led* %led, i32* %mode) #2 !dbg !2613 {
entry:
  %retval = alloca i32, align 4
  %led.addr = alloca %struct.ns2_led*, align 8
  %mode.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %cmd_level = alloca i32, align 4
  %slow_level = alloca i32, align 4
  store %struct.ns2_led* %led, %struct.ns2_led** %led.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ns2_led** %led.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  store i32* %mode, i32** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mode.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2621, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.declare(metadata i32* %cmd_level, metadata !2623, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.declare(metadata i32* %slow_level, metadata !2625, metadata !DIExpression()), !dbg !2626
  %0 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2627
  %cmd = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %0, i32 0, i32 1, !dbg !2628
  %1 = load %struct.gpio_desc*, %struct.gpio_desc** %cmd, align 8, !dbg !2628
  %call = call i32 @gpiod_get_value_cansleep(%struct.gpio_desc* %1) #8, !dbg !2629
  store i32 %call, i32* %cmd_level, align 4, !dbg !2630
  %2 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2631
  %slow = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %2, i32 0, i32 2, !dbg !2632
  %3 = load %struct.gpio_desc*, %struct.gpio_desc** %slow, align 8, !dbg !2632
  %call1 = call i32 @gpiod_get_value_cansleep(%struct.gpio_desc* %3) #8, !dbg !2633
  store i32 %call1, i32* %slow_level, align 4, !dbg !2634
  store i32 0, i32* %i, align 4, !dbg !2635
  br label %for.cond, !dbg !2637

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !2638
  %5 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2640
  %num_modes = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %5, i32 0, i32 6, !dbg !2641
  %6 = load i32, i32* %num_modes, align 4, !dbg !2641
  %cmp = icmp slt i32 %4, %6, !dbg !2642
  br i1 %cmp, label %for.body, label %for.end, !dbg !2643

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %cmd_level, align 4, !dbg !2644
  %8 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2647
  %modval = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %8, i32 0, i32 7, !dbg !2648
  %9 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval, align 8, !dbg !2648
  %10 = load i32, i32* %i, align 4, !dbg !2649
  %idxprom = sext i32 %10 to i64, !dbg !2647
  %arrayidx = getelementptr %struct.ns2_led_modval, %struct.ns2_led_modval* %9, i64 %idxprom, !dbg !2647
  %cmd_level2 = getelementptr inbounds %struct.ns2_led_modval, %struct.ns2_led_modval* %arrayidx, i32 0, i32 1, !dbg !2650
  %11 = load i32, i32* %cmd_level2, align 1, !dbg !2650
  %cmp3 = icmp eq i32 %7, %11, !dbg !2651
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !2652

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %slow_level, align 4, !dbg !2653
  %13 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2654
  %modval4 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %13, i32 0, i32 7, !dbg !2655
  %14 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval4, align 8, !dbg !2655
  %15 = load i32, i32* %i, align 4, !dbg !2656
  %idxprom5 = sext i32 %15 to i64, !dbg !2654
  %arrayidx6 = getelementptr %struct.ns2_led_modval, %struct.ns2_led_modval* %14, i64 %idxprom5, !dbg !2654
  %slow_level7 = getelementptr inbounds %struct.ns2_led_modval, %struct.ns2_led_modval* %arrayidx6, i32 0, i32 2, !dbg !2657
  %16 = load i32, i32* %slow_level7, align 1, !dbg !2657
  %cmp8 = icmp eq i32 %12, %16, !dbg !2658
  br i1 %cmp8, label %if.then, label %if.end, !dbg !2659

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2660
  %modval9 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %17, i32 0, i32 7, !dbg !2662
  %18 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval9, align 8, !dbg !2662
  %19 = load i32, i32* %i, align 4, !dbg !2663
  %idxprom10 = sext i32 %19 to i64, !dbg !2660
  %arrayidx11 = getelementptr %struct.ns2_led_modval, %struct.ns2_led_modval* %18, i64 %idxprom10, !dbg !2660
  %mode12 = getelementptr inbounds %struct.ns2_led_modval, %struct.ns2_led_modval* %arrayidx11, i32 0, i32 0, !dbg !2664
  %20 = load i32, i32* %mode12, align 1, !dbg !2664
  %21 = load i32*, i32** %mode.addr, align 8, !dbg !2665
  store i32 %20, i32* %21, align 4, !dbg !2666
  store i32 0, i32* %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2668

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4, !dbg !2669
  %inc = add i32 %22, 1, !dbg !2669
  store i32 %inc, i32* %i, align 4, !dbg !2669
  br label %for.cond, !dbg !2670, !llvm.loop !2671

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !2673
  br label %return, !dbg !2673

return:                                           ; preds = %for.end, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !2674
  ret i32 %23, !dbg !2674
}

; Function Attrs: noredzone
declare dso_local i32 @devm_led_classdev_register_ext(%struct.device*, %struct.led_classdev*, %struct.led_init_data*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kmalloc_array(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !2675 {
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
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2676, metadata !DIExpression()), !dbg !2677
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2684, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2686, metadata !DIExpression()), !dbg !2689
  %0 = load i64, i64* %n.addr, align 8, !dbg !2689
  store i64 %0, i64* %__a, align 8, !dbg !2689
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2690, metadata !DIExpression()), !dbg !2689
  %1 = load i64, i64* %size.addr, align 8, !dbg !2689
  store i64 %1, i64* %__b, align 8, !dbg !2689
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2691, metadata !DIExpression()), !dbg !2689
  store i64* %bytes, i64** %__d, align 8, !dbg !2689
  %cmp = icmp eq i64* %__a, %__b, !dbg !2689
  %conv = zext i1 %cmp to i32, !dbg !2689
  %2 = load i64*, i64** %__d, align 8, !dbg !2689
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2689
  %conv2 = zext i1 %cmp1 to i32, !dbg !2689
  %3 = load i64, i64* %__a, align 8, !dbg !2689
  %4 = load i64, i64* %__b, align 8, !dbg !2689
  %5 = load i64*, i64** %__d, align 8, !dbg !2689
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2689
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2689
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2689
  store i64 %8, i64* %5, align 8, !dbg !2689
  %frombool = zext i1 %7 to i8, !dbg !2689
  store i8 %frombool, i8* %tmp, align 1, !dbg !2689
  %9 = load i8, i8* %tmp, align 1, !dbg !2689
  %tobool = trunc i8 %9 to i1, !dbg !2689
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !2692
  %lnot = xor i1 %call, true, !dbg !2692
  %lnot3 = xor i1 %lnot, true, !dbg !2692
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2692
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2692
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2692
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2693

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2694
  br label %return, !dbg !2694

if.end:                                           ; preds = %entry
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2695
  %11 = load i64, i64* %bytes, align 8, !dbg !2696
  %12 = load i32, i32* %flags.addr, align 4, !dbg !2697
  %call6 = call noalias i8* @devm_kmalloc(%struct.device* %10, i64 %11, i32 %12) #8, !dbg !2698
  store i8* %call6, i8** %retval, align 8, !dbg !2699
  br label %return, !dbg !2699

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !2700
  ret i8* %13, !dbg !2700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ns2_led_sata_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !2701 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %led = alloca %struct.ns2_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ns2_led*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2702, metadata !DIExpression()), !dbg !2703
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2704, metadata !DIExpression()), !dbg !2705
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !2708, metadata !DIExpression()), !dbg !2709
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2710
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !2711
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !2711
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !2709
  call void @llvm.dbg.declare(metadata %struct.ns2_led** %led, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2714, metadata !DIExpression()), !dbg !2716
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2716
  %3 = bitcast %struct.led_classdev* %2 to i8*, !dbg !2716
  store i8* %3, i8** %__mptr, align 8, !dbg !2716
  br label %do.body, !dbg !2716

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2717

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2716
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !2716
  %5 = bitcast i8* %add.ptr to %struct.ns2_led*, !dbg !2716
  store %struct.ns2_led* %5, %struct.ns2_led** %tmp, align 8, !dbg !2717
  %6 = load %struct.ns2_led*, %struct.ns2_led** %tmp, align 8, !dbg !2716
  store %struct.ns2_led* %6, %struct.ns2_led** %led, align 8, !dbg !2713
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !2719
  %8 = load %struct.ns2_led*, %struct.ns2_led** %led, align 8, !dbg !2720
  %sata = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %8, i32 0, i32 4, !dbg !2721
  %9 = load i8, i8* %sata, align 1, !dbg !2721
  %conv = zext i8 %9 to i32, !dbg !2720
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #8, !dbg !2722
  %conv2 = sext i32 %call1 to i64, !dbg !2722
  ret i64 %conv2, !dbg !2723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ns2_led_sata_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buff, i64 %count) #2 !dbg !2724 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buff.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %led = alloca %struct.ns2_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ns2_led*, align 8
  %ret = alloca i32, align 4
  %enable = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2727, metadata !DIExpression()), !dbg !2728
  store i8* %buff, i8** %buff.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buff.addr, metadata !2729, metadata !DIExpression()), !dbg !2730
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !2731, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !2733, metadata !DIExpression()), !dbg !2734
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2735
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !2736
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !2736
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !2734
  call void @llvm.dbg.declare(metadata %struct.ns2_led** %led, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2739, metadata !DIExpression()), !dbg !2741
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2741
  %3 = bitcast %struct.led_classdev* %2 to i8*, !dbg !2741
  store i8* %3, i8** %__mptr, align 8, !dbg !2741
  br label %do.body, !dbg !2741

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2742

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2741
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !2741
  %5 = bitcast i8* %add.ptr to %struct.ns2_led*, !dbg !2741
  store %struct.ns2_led* %5, %struct.ns2_led** %tmp, align 8, !dbg !2742
  %6 = load %struct.ns2_led*, %struct.ns2_led** %tmp, align 8, !dbg !2741
  store %struct.ns2_led* %6, %struct.ns2_led** %led, align 8, !dbg !2738
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.declare(metadata i64* %enable, metadata !2746, metadata !DIExpression()), !dbg !2747
  %7 = load i8*, i8** %buff.addr, align 8, !dbg !2748
  %call1 = call i32 @kstrtoul(i8* %7, i32 10, i64* %enable) #8, !dbg !2749
  store i32 %call1, i32* %ret, align 4, !dbg !2750
  %8 = load i32, i32* %ret, align 4, !dbg !2751
  %cmp = icmp slt i32 %8, 0, !dbg !2753
  br i1 %cmp, label %if.then, label %if.end, !dbg !2754

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %ret, align 4, !dbg !2755
  %conv = sext i32 %9 to i64, !dbg !2755
  store i64 %conv, i64* %retval, align 8, !dbg !2756
  br label %return, !dbg !2756

if.end:                                           ; preds = %do.end
  %10 = load i64, i64* %enable, align 8, !dbg !2757
  %tobool = icmp ne i64 %10, 0, !dbg !2758
  %lnot = xor i1 %tobool, true, !dbg !2758
  %lnot2 = xor i1 %lnot, true, !dbg !2759
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2759
  %conv3 = sext i32 %lnot.ext to i64, !dbg !2759
  store i64 %conv3, i64* %enable, align 8, !dbg !2760
  %11 = load %struct.ns2_led*, %struct.ns2_led** %led, align 8, !dbg !2761
  %sata = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %11, i32 0, i32 4, !dbg !2763
  %12 = load i8, i8* %sata, align 1, !dbg !2763
  %conv4 = zext i8 %12 to i64, !dbg !2761
  %13 = load i64, i64* %enable, align 8, !dbg !2764
  %cmp5 = icmp eq i64 %conv4, %13, !dbg !2765
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !2766

if.then7:                                         ; preds = %if.end
  br label %exit, !dbg !2767

if.end8:                                          ; preds = %if.end
  %14 = load i64, i64* %enable, align 8, !dbg !2768
  %conv9 = trunc i64 %14 to i8, !dbg !2768
  %15 = load %struct.ns2_led*, %struct.ns2_led** %led, align 8, !dbg !2769
  %sata10 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %15, i32 0, i32 4, !dbg !2770
  store i8 %conv9, i8* %sata10, align 1, !dbg !2771
  %16 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !2772
  %call11 = call i32 @led_get_brightness(%struct.led_classdev* %16) #8, !dbg !2774
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2774
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2775

if.then13:                                        ; preds = %if.end8
  br label %exit, !dbg !2776

if.end14:                                         ; preds = %if.end8
  %17 = load i64, i64* %enable, align 8, !dbg !2777
  %tobool15 = icmp ne i64 %17, 0, !dbg !2777
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !2779

if.then16:                                        ; preds = %if.end14
  %18 = load %struct.ns2_led*, %struct.ns2_led** %led, align 8, !dbg !2780
  call void @ns2_led_set_mode(%struct.ns2_led* %18, i32 2) #8, !dbg !2781
  br label %if.end17, !dbg !2781

if.else:                                          ; preds = %if.end14
  %19 = load %struct.ns2_led*, %struct.ns2_led** %led, align 8, !dbg !2782
  call void @ns2_led_set_mode(%struct.ns2_led* %19, i32 1) #8, !dbg !2783
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  br label %exit, !dbg !2777

exit:                                             ; preds = %if.end17, %if.then13, %if.then7
  call void @llvm.dbg.label(metadata !2784), !dbg !2785
  %20 = load i64, i64* %count.addr, align 8, !dbg !2786
  store i64 %20, i64* %retval, align 8, !dbg !2787
  br label %return, !dbg !2787

return:                                           ; preds = %exit, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !2788
  ret i64 %21, !dbg !2788
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2789 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2792, metadata !DIExpression()), !dbg !2793
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2794
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2795
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2795
  ret i8* %1, !dbg !2796
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #2 !dbg !2797 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !2801, metadata !DIExpression()), !dbg !2802
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2803, metadata !DIExpression()), !dbg !2804
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !2805, metadata !DIExpression()), !dbg !2806
  %0 = load i8*, i8** %s.addr, align 8, !dbg !2807
  %1 = load i32, i32* %base.addr, align 4, !dbg !2809
  %2 = load i64*, i64** %res.addr, align 8, !dbg !2810
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #8, !dbg !2811
  ret i32 %call, !dbg !2812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @led_get_brightness(%struct.led_classdev* %led_cdev) #2 !dbg !2813 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !2815, metadata !DIExpression()), !dbg !2816
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !2817
  %brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %0, i32 0, i32 1, !dbg !2818
  %1 = load i32, i32* %brightness, align 8, !dbg !2818
  ret i32 %1, !dbg !2819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ns2_led_set_mode(%struct.ns2_led* %led, i32 %mode) #2 !dbg !2820 {
entry:
  %led.addr = alloca %struct.ns2_led*, align 8
  %mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  %__dummy42 = alloca i64, align 8
  %__dummy243 = alloca i64, align 8
  %tmp46 = alloca i32, align 4
  %__dummy50 = alloca i64, align 8
  %__dummy251 = alloca i64, align 8
  %tmp54 = alloca i32, align 4
  store %struct.ns2_led* %led, %struct.ns2_led** %led.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ns2_led** %led.addr, metadata !2823, metadata !DIExpression()), !dbg !2824
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !2825, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2827, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2829, metadata !DIExpression()), !dbg !2830
  store i32 0, i32* %i, align 4, !dbg !2831
  br label %for.cond, !dbg !2833

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2834
  %1 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2836
  %num_modes = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %1, i32 0, i32 6, !dbg !2837
  %2 = load i32, i32* %num_modes, align 4, !dbg !2837
  %cmp = icmp slt i32 %0, %2, !dbg !2838
  br i1 %cmp, label %for.body, label %for.end, !dbg !2839

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %mode.addr, align 4, !dbg !2840
  %4 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2842
  %modval = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %4, i32 0, i32 7, !dbg !2843
  %5 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval, align 8, !dbg !2843
  %6 = load i32, i32* %i, align 4, !dbg !2844
  %idxprom = sext i32 %6 to i64, !dbg !2842
  %arrayidx = getelementptr %struct.ns2_led_modval, %struct.ns2_led_modval* %5, i64 %idxprom, !dbg !2842
  %mode1 = getelementptr inbounds %struct.ns2_led_modval, %struct.ns2_led_modval* %arrayidx, i32 0, i32 0, !dbg !2845
  %7 = load i32, i32* %mode1, align 1, !dbg !2845
  %cmp2 = icmp eq i32 %3, %7, !dbg !2846
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2847

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !2848

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2845

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !2849
  %inc = add i32 %8, 1, !dbg !2849
  store i32 %inc, i32* %i, align 4, !dbg !2849
  br label %for.cond, !dbg !2850, !llvm.loop !2851

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !2853
  %10 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2855
  %num_modes3 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %10, i32 0, i32 6, !dbg !2856
  %11 = load i32, i32* %num_modes3, align 4, !dbg !2856
  %cmp4 = icmp eq i32 %9, %11, !dbg !2857
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2858

if.then5:                                         ; preds = %for.end
  br label %do.end63, !dbg !2859

if.end6:                                          ; preds = %for.end
  br label %do.body, !dbg !2860

do.body:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2865, metadata !DIExpression()), !dbg !2864
  %cmp7 = icmp eq i64* %__dummy, %__dummy2, !dbg !2864
  %conv = zext i1 %cmp7 to i32, !dbg !2864
  store i32 1, i32* %tmp, align 4, !dbg !2864
  %12 = load i32, i32* %tmp, align 4, !dbg !2864
  br label %do.body8, !dbg !2866

do.body8:                                         ; preds = %do.body
  br label %do.body9, !dbg !2867

do.body9:                                         ; preds = %do.body8
  br label %do.body10, !dbg !2869

do.body10:                                        ; preds = %do.body9
  call void @llvm.dbg.declare(metadata i64* %__dummy11, metadata !2871, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.declare(metadata i64* %__dummy212, metadata !2875, metadata !DIExpression()), !dbg !2874
  %cmp13 = icmp eq i64* %__dummy11, %__dummy212, !dbg !2874
  %conv14 = zext i1 %cmp13 to i32, !dbg !2874
  store i32 1, i32* %tmp15, align 4, !dbg !2874
  %13 = load i32, i32* %tmp15, align 4, !dbg !2874
  %call = call i64 @arch_local_irq_save() #8, !dbg !2876
  store i64 %call, i64* %flags, align 8, !dbg !2876
  br label %do.end, !dbg !2876

do.end:                                           ; preds = %do.body10
  br label %do.end16, !dbg !2869

do.end16:                                         ; preds = %do.end
  br label %do.body17, !dbg !2867

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2877, !srcloc !2879
  br label %do.body18, !dbg !2877

do.body18:                                        ; preds = %do.body17
  %14 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2880
  %rw_lock = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %14, i32 0, i32 5, !dbg !2880
  br label %do.end19, !dbg !2880

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !2877

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2867

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !2866

do.end22:                                         ; preds = %do.end21
  %15 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2882
  %can_sleep = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %15, i32 0, i32 3, !dbg !2884
  %16 = load i8, i8* %can_sleep, align 8, !dbg !2884
  %tobool = trunc i8 %16 to i1, !dbg !2884
  br i1 %tobool, label %if.end30, label %if.then23, !dbg !2885

if.then23:                                        ; preds = %do.end22
  %17 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2886
  %cmd = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %17, i32 0, i32 1, !dbg !2888
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %cmd, align 8, !dbg !2888
  %19 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2889
  %modval24 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %19, i32 0, i32 7, !dbg !2890
  %20 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval24, align 8, !dbg !2890
  %21 = load i32, i32* %i, align 4, !dbg !2891
  %idxprom25 = sext i32 %21 to i64, !dbg !2889
  %arrayidx26 = getelementptr %struct.ns2_led_modval, %struct.ns2_led_modval* %20, i64 %idxprom25, !dbg !2889
  %cmd_level = getelementptr inbounds %struct.ns2_led_modval, %struct.ns2_led_modval* %arrayidx26, i32 0, i32 1, !dbg !2892
  %22 = load i32, i32* %cmd_level, align 1, !dbg !2892
  call void @gpiod_set_value(%struct.gpio_desc* %18, i32 %22) #8, !dbg !2893
  %23 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2894
  %slow = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %23, i32 0, i32 2, !dbg !2895
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %slow, align 8, !dbg !2895
  %25 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2896
  %modval27 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %25, i32 0, i32 7, !dbg !2897
  %26 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval27, align 8, !dbg !2897
  %27 = load i32, i32* %i, align 4, !dbg !2898
  %idxprom28 = sext i32 %27 to i64, !dbg !2896
  %arrayidx29 = getelementptr %struct.ns2_led_modval, %struct.ns2_led_modval* %26, i64 %idxprom28, !dbg !2896
  %slow_level = getelementptr inbounds %struct.ns2_led_modval, %struct.ns2_led_modval* %arrayidx29, i32 0, i32 2, !dbg !2899
  %28 = load i32, i32* %slow_level, align 1, !dbg !2899
  call void @gpiod_set_value(%struct.gpio_desc* %24, i32 %28) #8, !dbg !2900
  br label %exit_unlock, !dbg !2901

if.end30:                                         ; preds = %do.end22
  %29 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2902
  %cmd31 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %29, i32 0, i32 1, !dbg !2903
  %30 = load %struct.gpio_desc*, %struct.gpio_desc** %cmd31, align 8, !dbg !2903
  %31 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2904
  %modval32 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %31, i32 0, i32 7, !dbg !2905
  %32 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval32, align 8, !dbg !2905
  %33 = load i32, i32* %i, align 4, !dbg !2906
  %idxprom33 = sext i32 %33 to i64, !dbg !2904
  %arrayidx34 = getelementptr %struct.ns2_led_modval, %struct.ns2_led_modval* %32, i64 %idxprom33, !dbg !2904
  %cmd_level35 = getelementptr inbounds %struct.ns2_led_modval, %struct.ns2_led_modval* %arrayidx34, i32 0, i32 1, !dbg !2907
  %34 = load i32, i32* %cmd_level35, align 1, !dbg !2907
  call void @gpiod_set_value_cansleep(%struct.gpio_desc* %30, i32 %34) #8, !dbg !2908
  %35 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2909
  %slow36 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %35, i32 0, i32 2, !dbg !2910
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %slow36, align 8, !dbg !2910
  %37 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2911
  %modval37 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %37, i32 0, i32 7, !dbg !2912
  %38 = load %struct.ns2_led_modval*, %struct.ns2_led_modval** %modval37, align 8, !dbg !2912
  %39 = load i32, i32* %i, align 4, !dbg !2913
  %idxprom38 = sext i32 %39 to i64, !dbg !2911
  %arrayidx39 = getelementptr %struct.ns2_led_modval, %struct.ns2_led_modval* %38, i64 %idxprom38, !dbg !2911
  %slow_level40 = getelementptr inbounds %struct.ns2_led_modval, %struct.ns2_led_modval* %arrayidx39, i32 0, i32 2, !dbg !2914
  %40 = load i32, i32* %slow_level40, align 1, !dbg !2914
  call void @gpiod_set_value_cansleep(%struct.gpio_desc* %36, i32 %40) #8, !dbg !2915
  br label %exit_unlock, !dbg !2915

exit_unlock:                                      ; preds = %if.end30, %if.then23
  call void @llvm.dbg.label(metadata !2916), !dbg !2917
  br label %do.body41, !dbg !2918

do.body41:                                        ; preds = %exit_unlock
  call void @llvm.dbg.declare(metadata i64* %__dummy42, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.declare(metadata i64* %__dummy243, metadata !2923, metadata !DIExpression()), !dbg !2922
  %cmp44 = icmp eq i64* %__dummy42, %__dummy243, !dbg !2922
  %conv45 = zext i1 %cmp44 to i32, !dbg !2922
  store i32 1, i32* %tmp46, align 4, !dbg !2922
  %41 = load i32, i32* %tmp46, align 4, !dbg !2922
  br label %do.body47, !dbg !2924

do.body47:                                        ; preds = %do.body41
  br label %do.body48, !dbg !2925

do.body48:                                        ; preds = %do.body47
  br label %do.body49, !dbg !2927

do.body49:                                        ; preds = %do.body48
  call void @llvm.dbg.declare(metadata i64* %__dummy50, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.declare(metadata i64* %__dummy251, metadata !2933, metadata !DIExpression()), !dbg !2932
  %cmp52 = icmp eq i64* %__dummy50, %__dummy251, !dbg !2932
  %conv53 = zext i1 %cmp52 to i32, !dbg !2932
  store i32 1, i32* %tmp54, align 4, !dbg !2932
  %42 = load i32, i32* %tmp54, align 4, !dbg !2932
  %43 = load i64, i64* %flags, align 8, !dbg !2934
  call void @arch_local_irq_restore(i64 %43) #8, !dbg !2934
  br label %do.end55, !dbg !2934

do.end55:                                         ; preds = %do.body49
  br label %do.end56, !dbg !2927

do.end56:                                         ; preds = %do.end55
  br label %do.body57, !dbg !2925

do.body57:                                        ; preds = %do.end56
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2935, !srcloc !2937
  br label %do.body58, !dbg !2935

do.body58:                                        ; preds = %do.body57
  %44 = load %struct.ns2_led*, %struct.ns2_led** %led.addr, align 8, !dbg !2938
  %rw_lock59 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %44, i32 0, i32 5, !dbg !2938
  br label %do.end60, !dbg !2938

do.end60:                                         ; preds = %do.body58
  br label %do.end61, !dbg !2935

do.end61:                                         ; preds = %do.end60
  br label %do.end62, !dbg !2925

do.end62:                                         ; preds = %do.end61
  br label %do.end63, !dbg !2924

do.end63:                                         ; preds = %if.then5, %do.end62
  ret void, !dbg !2940
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !2941 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2945, metadata !DIExpression()), !dbg !2946
  %call = call i64 @arch_local_save_flags() #8, !dbg !2947
  store i64 %call, i64* %f, align 8, !dbg !2948
  call void @arch_local_irq_disable() #8, !dbg !2949
  %0 = load i64, i64* %f, align 8, !dbg !2950
  ret i64 %0, !dbg !2951
}

; Function Attrs: noredzone
declare dso_local void @gpiod_set_value(%struct.gpio_desc*, i32) #1

; Function Attrs: noredzone
declare dso_local void @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !2952 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2957, metadata !DIExpression()), !dbg !2959
  %0 = load i64, i64* %__edi, align 8, !dbg !2959
  store i64 %0, i64* %__edi, align 8, !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2960, metadata !DIExpression()), !dbg !2959
  %1 = load i64, i64* %__esi, align 8, !dbg !2959
  store i64 %1, i64* %__esi, align 8, !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2961, metadata !DIExpression()), !dbg !2959
  %2 = load i64, i64* %__edx, align 8, !dbg !2959
  store i64 %2, i64* %__edx, align 8, !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2962, metadata !DIExpression()), !dbg !2959
  %3 = load i64, i64* %__ecx, align 8, !dbg !2959
  store i64 %3, i64* %__ecx, align 8, !dbg !2959
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2963, metadata !DIExpression()), !dbg !2959
  %4 = load i64, i64* %__eax, align 8, !dbg !2959
  store i64 %4, i64* %__eax, align 8, !dbg !2959
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !2959
  %6 = call i64 @llvm.read_register.i64(metadata !2245), !dbg !2959
  %7 = load i64, i64* %f.addr, align 8, !dbg !2959
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !2959, !srcloc !2964
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !2959
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !2959
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2959
  call void @llvm.write_register.i64(metadata !2245, i64 %asmresult1), !dbg !2959
  ret void, !dbg !2965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !2966 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2967, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2970, metadata !DIExpression()), !dbg !2969
  %0 = load i64, i64* %__edi, align 8, !dbg !2969
  store i64 %0, i64* %__edi, align 8, !dbg !2969
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2971, metadata !DIExpression()), !dbg !2969
  %1 = load i64, i64* %__esi, align 8, !dbg !2969
  store i64 %1, i64* %__esi, align 8, !dbg !2969
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2972, metadata !DIExpression()), !dbg !2969
  %2 = load i64, i64* %__edx, align 8, !dbg !2969
  store i64 %2, i64* %__edx, align 8, !dbg !2969
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2973, metadata !DIExpression()), !dbg !2969
  %3 = load i64, i64* %__ecx, align 8, !dbg !2969
  store i64 %3, i64* %__ecx, align 8, !dbg !2969
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2974, metadata !DIExpression()), !dbg !2969
  %4 = load i64, i64* %__eax, align 8, !dbg !2969
  store i64 %4, i64* %__eax, align 8, !dbg !2969
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2969
  %6 = call i64 @llvm.read_register.i64(metadata !2245), !dbg !2975
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !2975, !srcloc !2978
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2975
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2975
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2975
  call void @llvm.write_register.i64(metadata !2245, i64 %asmresult1), !dbg !2975
  %8 = load i64, i64* %__eax, align 8, !dbg !2975
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2979, metadata !DIExpression()), !dbg !2981
  store i64 -1, i64* %__mask, align 8, !dbg !2981
  %9 = load i64, i64* %__mask, align 8, !dbg !2981
  store i64 %9, i64* %tmp, align 8, !dbg !2981
  %10 = load i64, i64* %tmp, align 8, !dbg !2981
  %and = and i64 %8, %10, !dbg !2975
  store i64 %and, i64* %__ret, align 8, !dbg !2975
  %11 = load i64, i64* %__ret, align 8, !dbg !2969
  store i64 %11, i64* %tmp2, align 8, !dbg !2982
  %12 = load i64, i64* %tmp2, align 8, !dbg !2969
  ret i64 %12, !dbg !2983
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !2984 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2985, metadata !DIExpression()), !dbg !2987
  %0 = load i64, i64* %__edi, align 8, !dbg !2987
  store i64 %0, i64* %__edi, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2988, metadata !DIExpression()), !dbg !2987
  %1 = load i64, i64* %__esi, align 8, !dbg !2987
  store i64 %1, i64* %__esi, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2989, metadata !DIExpression()), !dbg !2987
  %2 = load i64, i64* %__edx, align 8, !dbg !2987
  store i64 %2, i64* %__edx, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2990, metadata !DIExpression()), !dbg !2987
  %3 = load i64, i64* %__ecx, align 8, !dbg !2987
  store i64 %3, i64* %__ecx, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2991, metadata !DIExpression()), !dbg !2987
  %4 = load i64, i64* %__eax, align 8, !dbg !2987
  store i64 %4, i64* %__eax, align 8, !dbg !2987
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !2987
  %6 = call i64 @llvm.read_register.i64(metadata !2245), !dbg !2987
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !2987, !srcloc !2992
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2987
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2987
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2987
  call void @llvm.write_register.i64(metadata !2245, i64 %asmresult1), !dbg !2987
  ret void, !dbg !2993
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local i32 @gpiod_get_value_cansleep(%struct.gpio_desc*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2245}
!llvm.module.flags = !{!2246, !2247, !2248, !2249}
!llvm.ident = !{!2250}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ns2_led_driver_init164", scope: !2, file: !3, line: 279, type: !82, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !71, globals: !2129, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/leds/leds-ns2.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !57, !62}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !51, line: 29, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "LED_OFF", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "LED_ON", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "LED_HALF", value: 127, isUnsigned: true)
!56 = !DIEnumerator(name: "LED_FULL", value: 255, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ns2_led_modes", file: !3, line: 21, baseType: !7, size: 32, elements: !58)
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "NS_V2_LED_OFF", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "NS_V2_LED_ON", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "NS_V2_LED_SATA", value: 2, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpiod_flags", file: !63, line: 49, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DIEnumerator(name: "GPIOD_ASIS", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "GPIOD_IN", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "GPIOD_OUT_LOW", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "GPIOD_OUT_HIGH", value: 7, isUnsigned: true)
!69 = !DIEnumerator(name: "GPIOD_OUT_LOW_OPEN_DRAIN", value: 11, isUnsigned: true)
!70 = !DIEnumerator(name: "GPIOD_OUT_HIGH_OPEN_DRAIN", value: 15, isUnsigned: true)
!71 = !{!72, !75, !77, !82, !81, !83, !84, !2128}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !74, line: 76, flags: DIFlagFwdDecl)
!74 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !76, line: 148, baseType: !7)
!76 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 55, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !79, line: 72, baseType: !80)
!79 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !79, line: 16, baseType: !81)
!81 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns2_led", file: !3, line: 45, size: 2304, elements: !86)
!86 = !{!87, !2106, !2109, !2110, !2111, !2112, !2120, !2121}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !85, file: !3, line: 46, baseType: !88, size: 2048)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !51, line: 64, size: 2048, elements: !89)
!89 = !{!90, !94, !95, !96, !98, !99, !104, !108, !112, !117, !130, !134, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2103, !2104, !2105}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !51, line: 65, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !88, file: !51, line: 66, baseType: !50, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !88, file: !51, line: 67, baseType: !50, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !51, line: 68, baseType: !97, size: 32, offset: 128)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !88, file: !51, line: 84, baseType: !81, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !88, file: !51, line: 97, baseType: !100, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !50}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !88, file: !51, line: 103, baseType: !105, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!97, !103, !50}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !88, file: !51, line: 106, baseType: !109, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!50, !103}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !88, file: !51, line: 116, baseType: !113, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!97, !103, !116, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !88, file: !51, line: 120, baseType: !118, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!97, !103, !121, !125, !97}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !51, line: 579, size: 64, elements: !123)
!123 = !{!124, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !122, file: !51, line: 580, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !126, line: 21, baseType: !127)
!126 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !128, line: 27, baseType: !7)
!128 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !122, file: !51, line: 581, baseType: !97, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !88, file: !51, line: 122, baseType: !131, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!97, !103}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !88, file: !51, line: 124, baseType: !135, size: 64, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !137)
!137 = !{!138, !1618, !1619, !1622, !1623, !1674, !1768, !1769, !1770, !1771, !1772, !1781, !1886, !1899, !1902, !1903, !1907, !1909, !1910, !1911, !1915, !1921, !1922, !1925, !2040, !2041, !2044, !2045, !2046, !2047, !2079, !2080, !2081, !2084, !2087, !2088, !2089, !2090}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !136, file: !30, line: 462, baseType: !139, size: 512)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !140, line: 64, size: 512, elements: !141)
!140 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !143, !149, !151, !211, !1455, !1608, !1613, !1614, !1615, !1616, !1617}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !140, line: 65, baseType: !91, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !139, file: !140, line: 66, baseType: !144, size: 128, offset: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !76, line: 178, size: 128, elements: !145)
!145 = !{!146, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !144, file: !76, line: 179, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !144, file: !76, line: 179, baseType: !147, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !140, line: 67, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !139, file: !140, line: 68, baseType: !152, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !140, line: 192, size: 704, elements: !154)
!154 = !{!155, !156, !172, !173}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !153, file: !140, line: 193, baseType: !144, size: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !153, file: !140, line: 194, baseType: !157, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !158, line: 83, baseType: !159)
!158 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !158, line: 71, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !158, line: 72, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !158, line: 72, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !162, file: !158, line: 73, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !158, line: 20, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !165, file: !158, line: 21, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !169, line: 25, baseType: !170)
!169 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 25, elements: !171)
!171 = !{}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !153, file: !140, line: 195, baseType: !139, size: 512, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !153, file: !140, line: 196, baseType: !174, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !140, line: 156, size: 192, elements: !177)
!177 = !{!178, !183, !188}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !176, file: !140, line: 157, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!97, !152, !150}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !140, line: 158, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!91, !152, !150}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !176, file: !140, line: 159, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!97, !152, !150, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !140, line: 148, size: 20736, elements: !195)
!195 = !{!196, !201, !205, !206, !210}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !194, file: !140, line: 149, baseType: !197, size: 192)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 192, elements: !199)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!199 = !{!200}
!200 = !DISubrange(count: 3)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !194, file: !140, line: 150, baseType: !202, size: 4096, offset: 192)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 4096, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !194, file: !140, line: 151, baseType: !97, size: 32, offset: 4288)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !194, file: !140, line: 152, baseType: !207, size: 16384, offset: 4320)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 16384, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 2048)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !194, file: !140, line: 153, baseType: !97, size: 32, offset: 20704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !139, file: !140, line: 69, baseType: !212, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !140, line: 138, size: 448, elements: !214)
!214 = !{!215, !219, !243, !245, !1401, !1434, !1438}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !213, file: !140, line: 139, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !150}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !213, file: !140, line: 140, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !223, line: 230, size: 128, elements: !224)
!223 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !239}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !222, file: !223, line: 231, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !150, !232, !198}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !76, line: 60, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !79, line: 73, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !79, line: 15, baseType: !83)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !223, line: 30, size: 128, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !223, line: 31, baseType: !91, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !233, file: !223, line: 32, baseType: !237, size: 16, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !76, line: 19, baseType: !238)
!238 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !222, file: !223, line: 232, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!229, !150, !232, !91, !77}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !213, file: !140, line: 141, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !213, file: !140, line: 142, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !223, line: 84, size: 320, elements: !250)
!250 = !{!251, !252, !256, !1398, !1399}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !223, line: 85, baseType: !91, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !249, file: !223, line: 86, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!237, !150, !232, !97}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !249, file: !223, line: 88, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!237, !150, !260, !97}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !223, line: 168, size: 448, elements: !262)
!262 = !{!263, !264, !265, !266, !276, !277}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !261, file: !223, line: 169, baseType: !233, size: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !261, file: !223, line: 170, baseType: !77, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !261, file: !223, line: 171, baseType: !82, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !261, file: !223, line: 172, baseType: !267, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!229, !270, !150, !260, !198, !273, !77}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !272, line: 526, flags: DIFlagFwdDecl)
!272 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !76, line: 46, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !79, line: 88, baseType: !275)
!275 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !261, file: !223, line: 174, baseType: !267, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !261, file: !223, line: 176, baseType: !278, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!97, !270, !150, !260, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !283, line: 305, size: 1472, elements: !284)
!283 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285, !286, !287, !288, !289, !297, !298, !1372, !1378, !1379, !1384, !1385, !1388, !1392, !1393, !1394, !1395, !1396}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !282, file: !283, line: 308, baseType: !81, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !282, file: !283, line: 309, baseType: !81, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !282, file: !283, line: 313, baseType: !281, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !282, file: !283, line: 313, baseType: !281, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !282, file: !283, line: 315, baseType: !290, size: 192, align: 64, offset: 256)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !291, line: 24, size: 192, align: 64, elements: !292)
!291 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294, !296}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !290, file: !291, line: 25, baseType: !81, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !290, file: !291, line: 26, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !290, file: !291, line: 27, baseType: !295, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !282, file: !283, line: 323, baseType: !81, size: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !282, file: !283, line: 327, baseType: !299, size: 64, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !283, line: 388, size: 7296, elements: !301)
!301 = !{!302, !1368}
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !283, line: 389, baseType: !303, size: 7296)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !283, line: 389, size: 7296, elements: !304)
!304 = !{!305, !306, !310, !314, !318, !319, !320, !321, !322, !330, !335, !336, !337, !338, !347, !348, !349, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !384, !392, !395, !443, !444, !1338, !1339, !1342, !1346, !1347, !1350, !1351, !1352, !1355, !1367}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !303, file: !283, line: 390, baseType: !281, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !303, file: !283, line: 391, baseType: !307, size: 64, offset: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !291, line: 31, size: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !307, file: !291, line: 32, baseType: !295, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !303, file: !283, line: 392, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !126, line: 23, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !128, line: 31, baseType: !313)
!313 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !303, file: !283, line: 394, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!81, !270, !81, !81, !81, !81}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !303, file: !283, line: 398, baseType: !81, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !303, file: !283, line: 399, baseType: !81, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !303, file: !283, line: 405, baseType: !81, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !303, file: !283, line: 406, baseType: !81, size: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !303, file: !283, line: 407, baseType: !323, size: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !272, line: 286, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 286, size: 64, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !325, file: !272, line: 286, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !329, line: 18, baseType: !81)
!329 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!330 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !303, file: !283, line: 416, baseType: !331, size: 32, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !76, line: 168, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 166, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !332, file: !76, line: 167, baseType: !97, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !303, file: !283, line: 428, baseType: !331, size: 32, offset: 608)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !303, file: !283, line: 437, baseType: !331, size: 32, offset: 640)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !303, file: !283, line: 447, baseType: !331, size: 32, offset: 672)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !303, file: !283, line: 450, baseType: !339, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !340, line: 13, baseType: !341)
!340 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !76, line: 175, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 173, size: 64, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !342, file: !76, line: 174, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !126, line: 22, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !128, line: 30, baseType: !275)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !303, file: !283, line: 452, baseType: !97, size: 32, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !303, file: !283, line: 454, baseType: !157, offset: 800)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !303, file: !283, line: 457, baseType: !350, size: 256, offset: 832)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !351, line: 35, size: 256, elements: !352)
!351 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!352 = !{!353, !354, !355, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !350, file: !351, line: 36, baseType: !339, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !350, file: !351, line: 42, baseType: !339, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !350, file: !351, line: 46, baseType: !356, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !158, line: 29, baseType: !165)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !350, file: !351, line: 47, baseType: !144, size: 128, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !303, file: !283, line: 459, baseType: !144, size: 128, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !303, file: !283, line: 466, baseType: !81, size: 64, offset: 1216)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !303, file: !283, line: 467, baseType: !81, size: 64, offset: 1280)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !303, file: !283, line: 469, baseType: !81, size: 64, offset: 1344)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !303, file: !283, line: 470, baseType: !81, size: 64, offset: 1408)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !303, file: !283, line: 471, baseType: !341, size: 64, offset: 1472)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !303, file: !283, line: 472, baseType: !81, size: 64, offset: 1536)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !303, file: !283, line: 473, baseType: !81, size: 64, offset: 1600)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !303, file: !283, line: 474, baseType: !81, size: 64, offset: 1664)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !303, file: !283, line: 475, baseType: !81, size: 64, offset: 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !303, file: !283, line: 477, baseType: !157, offset: 1792)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !303, file: !283, line: 478, baseType: !81, size: 64, offset: 1792)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !303, file: !283, line: 478, baseType: !81, size: 64, offset: 1856)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !303, file: !283, line: 478, baseType: !81, size: 64, offset: 1920)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !303, file: !283, line: 478, baseType: !81, size: 64, offset: 1984)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !303, file: !283, line: 479, baseType: !81, size: 64, offset: 2048)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !303, file: !283, line: 479, baseType: !81, size: 64, offset: 2112)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !303, file: !283, line: 479, baseType: !81, size: 64, offset: 2176)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !303, file: !283, line: 480, baseType: !81, size: 64, offset: 2240)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !303, file: !283, line: 480, baseType: !81, size: 64, offset: 2304)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !303, file: !283, line: 480, baseType: !81, size: 64, offset: 2368)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !303, file: !283, line: 480, baseType: !81, size: 64, offset: 2432)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !303, file: !283, line: 482, baseType: !381, size: 2816, offset: 2496)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2816, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 44)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !303, file: !283, line: 488, baseType: !385, size: 256, offset: 5312)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !386, line: 60, size: 256, elements: !387)
!386 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !385, file: !386, line: 61, baseType: !389, size: 256)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 4)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !303, file: !283, line: 490, baseType: !393, size: 64, offset: 5568)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !283, line: 490, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !303, file: !283, line: 493, baseType: !396, size: 896, offset: 5632)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !397, line: 53, baseType: !398)
!397 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 13, size: 896, elements: !399)
!399 = !{!400, !401, !402, !403, !406, !407, !414, !415, !435, !436, !439}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !398, file: !397, line: 18, baseType: !311, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !398, file: !397, line: 28, baseType: !341, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !398, file: !397, line: 31, baseType: !350, size: 256, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !398, file: !397, line: 32, baseType: !404, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !397, line: 32, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !398, file: !397, line: 37, baseType: !238, size: 16, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !398, file: !397, line: 40, baseType: !408, size: 192, offset: 512)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !409, line: 53, size: 192, elements: !410)
!409 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!410 = !{!411, !412, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !408, file: !409, line: 54, baseType: !339, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !408, file: !409, line: 55, baseType: !157, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !408, file: !409, line: 59, baseType: !144, size: 128, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !398, file: !397, line: 41, baseType: !82, size: 64, offset: 704)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !398, file: !397, line: 42, baseType: !416, size: 64, offset: 768)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !419, line: 13, size: 896, elements: !420)
!419 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !418, file: !419, line: 14, baseType: !82, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !418, file: !419, line: 15, baseType: !81, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !418, file: !419, line: 17, baseType: !81, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !418, file: !419, line: 17, baseType: !81, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !418, file: !419, line: 19, baseType: !83, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !418, file: !419, line: 21, baseType: !83, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !418, file: !419, line: 22, baseType: !83, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !418, file: !419, line: 23, baseType: !83, size: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !418, file: !419, line: 24, baseType: !83, size: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !418, file: !419, line: 25, baseType: !83, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !418, file: !419, line: 26, baseType: !83, size: 64, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !418, file: !419, line: 27, baseType: !83, size: 64, offset: 704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !418, file: !419, line: 28, baseType: !83, size: 64, offset: 768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !418, file: !419, line: 29, baseType: !83, size: 64, offset: 832)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !398, file: !397, line: 44, baseType: !331, size: 32, offset: 832)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !398, file: !397, line: 50, baseType: !437, size: 16, offset: 864)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !126, line: 19, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !128, line: 24, baseType: !238)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !398, file: !397, line: 51, baseType: !440, size: 16, offset: 880)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !126, line: 18, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !128, line: 23, baseType: !442)
!442 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !283, line: 495, baseType: !81, size: 64, offset: 6528)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !303, file: !283, line: 497, baseType: !445, size: 64, offset: 6592)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !283, line: 381, size: 384, elements: !447)
!447 = !{!448, !449, !1337}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !446, file: !283, line: 382, baseType: !331, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !446, file: !283, line: 383, baseType: !450, size: 128, offset: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !283, line: 376, size: 128, elements: !451)
!451 = !{!452, !1335}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !450, file: !283, line: 377, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !455, line: 640, size: 48640, elements: !456)
!455 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !463, !465, !466, !472, !473, !474, !475, !476, !477, !478, !479, !483, !501, !512, !607, !608, !609, !620, !621, !623, !624, !625, !626, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !705, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !761, !763, !764, !765, !777, !779, !780, !781, !782, !783, !789, !790, !791, !792, !793, !794, !795, !807, !812, !816, !817, !818, !821, !825, !828, !831, !834, !837, !840, !843, !846, !852, !853, !854, !860, !861, !862, !863, !864, !873, !874, !875, !876, !877, !882, !883, !884, !887, !888, !891, !894, !897, !900, !903, !906, !907, !987, !990, !993, !994, !997, !998, !999, !1005, !1006, !1007, !1020, !1021, !1022, !1034, !1039, !1042, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !454, file: !455, line: 646, baseType: !458, size: 128)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !459, line: 56, size: 128, elements: !460)
!459 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !459, line: 57, baseType: !81, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !458, file: !459, line: 58, baseType: !125, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !454, file: !455, line: 649, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !454, file: !455, line: 657, baseType: !82, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !454, file: !455, line: 658, baseType: !467, size: 32, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !468, line: 113, baseType: !469)
!468 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !468, line: 111, size: 32, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !469, file: !468, line: 112, baseType: !331, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !455, line: 660, baseType: !7, size: 32, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !454, file: !455, line: 661, baseType: !7, size: 32, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !454, file: !455, line: 684, baseType: !97, size: 32, offset: 352)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !454, file: !455, line: 686, baseType: !97, size: 32, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !454, file: !455, line: 687, baseType: !97, size: 32, offset: 416)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !454, file: !455, line: 688, baseType: !97, size: 32, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !454, file: !455, line: 689, baseType: !7, size: 32, offset: 480)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !454, file: !455, line: 691, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !455, line: 691, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !454, file: !455, line: 692, baseType: !484, size: 832, offset: 576)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !455, line: 451, size: 832, elements: !485)
!485 = !{!486, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !484, file: !455, line: 453, baseType: !487, size: 128)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !455, line: 325, size: 128, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !487, file: !455, line: 326, baseType: !81, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !487, file: !455, line: 327, baseType: !125, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !484, file: !455, line: 454, baseType: !290, size: 192, align: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !484, file: !455, line: 455, baseType: !144, size: 128, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !484, file: !455, line: 456, baseType: !7, size: 32, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !484, file: !455, line: 458, baseType: !311, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !484, file: !455, line: 459, baseType: !311, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !484, file: !455, line: 460, baseType: !311, size: 64, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !484, file: !455, line: 461, baseType: !311, size: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !484, file: !455, line: 463, baseType: !311, size: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !484, file: !455, line: 465, baseType: !500, offset: 832)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !455, line: 415, elements: !171)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !454, file: !455, line: 693, baseType: !502, size: 384, offset: 1408)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !455, line: 489, size: 384, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !502, file: !455, line: 490, baseType: !144, size: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !502, file: !455, line: 491, baseType: !81, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !502, file: !455, line: 492, baseType: !81, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !502, file: !455, line: 493, baseType: !7, size: 32, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !502, file: !455, line: 494, baseType: !238, size: 16, offset: 288)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !502, file: !455, line: 495, baseType: !238, size: 16, offset: 304)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !502, file: !455, line: 497, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !454, file: !455, line: 697, baseType: !513, size: 1792, offset: 1792)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !455, line: 507, size: 1792, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !604, !605}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !513, file: !455, line: 508, baseType: !290, size: 192, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !513, file: !455, line: 515, baseType: !311, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !513, file: !455, line: 516, baseType: !311, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !513, file: !455, line: 517, baseType: !311, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !513, file: !455, line: 518, baseType: !311, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !513, file: !455, line: 519, baseType: !311, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !513, file: !455, line: 526, baseType: !345, size: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !513, file: !455, line: 527, baseType: !311, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !455, line: 528, baseType: !7, size: 32, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !513, file: !455, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !513, file: !455, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !513, file: !455, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !513, file: !455, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !513, file: !455, line: 563, baseType: !529, size: 512, offset: 704)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !530)
!530 = !{!531, !539, !540, !545, !597, !601, !602, !603}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !529, file: !6, line: 119, baseType: !532, size: 256)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !533, line: 9, size: 256, elements: !534)
!533 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !533, line: 10, baseType: !290, size: 192, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !532, file: !533, line: 11, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !538, line: 29, baseType: !345)
!538 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !529, file: !6, line: 120, baseType: !537, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !529, file: !6, line: 121, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!5, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !529, file: !6, line: 122, baseType: !546, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !548)
!548 = !{!549, !569, !570, !573, !583, !584, !592, !596}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !547, file: !6, line: 160, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !551, file: !6, line: 215, baseType: !356)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !551, file: !6, line: 216, baseType: !7, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !551, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !551, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !551, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !551, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !551, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !551, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !551, file: !6, line: 233, baseType: !537, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !551, file: !6, line: 234, baseType: !544, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !551, file: !6, line: 235, baseType: !537, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !551, file: !6, line: 236, baseType: !544, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !551, file: !6, line: 237, baseType: !566, size: 4096, offset: 512)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 4096, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 8)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !547, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !547, file: !6, line: 162, baseType: !571, size: 32, offset: 96)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !76, line: 27, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !79, line: 96, baseType: !97)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !547, file: !6, line: 163, baseType: !574, size: 32, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !575, line: 276, baseType: !576)
!575 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !575, line: 276, size: 32, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !576, file: !575, line: 276, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !575, line: 70, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !575, line: 65, size: 32, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !580, file: !575, line: 66, baseType: !7, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !547, file: !6, line: 164, baseType: !544, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !547, file: !6, line: 165, baseType: !585, size: 128, offset: 256)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !533, line: 14, size: 128, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !585, file: !533, line: 15, baseType: !588, size: 128)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !291, line: 125, size: 128, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !588, file: !291, line: 126, baseType: !307, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !588, file: !291, line: 127, baseType: !295, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !547, file: !6, line: 166, baseType: !593, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!537}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !547, file: !6, line: 167, baseType: !537, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !529, file: !6, line: 123, baseType: !598, size: 8, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !126, line: 17, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !128, line: 21, baseType: !600)
!600 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !529, file: !6, line: 124, baseType: !598, size: 8, offset: 456)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !529, file: !6, line: 125, baseType: !598, size: 8, offset: 464)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !529, file: !6, line: 126, baseType: !598, size: 8, offset: 472)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !513, file: !455, line: 572, baseType: !529, size: 512, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !513, file: !455, line: 580, baseType: !606, size: 64, offset: 1728)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !454, file: !455, line: 721, baseType: !7, size: 32, offset: 3584)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !454, file: !455, line: 722, baseType: !97, size: 32, offset: 3616)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !454, file: !455, line: 723, baseType: !610, size: 64, offset: 3648)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !613, line: 17, baseType: !614)
!613 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !613, line: 17, size: 64, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !614, file: !613, line: 17, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 1)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !454, file: !455, line: 724, baseType: !612, size: 64, offset: 3712)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !454, file: !455, line: 749, baseType: !622, offset: 3776)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !455, line: 290, elements: !171)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !454, file: !455, line: 751, baseType: !144, size: 128, offset: 3776)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !454, file: !455, line: 757, baseType: !299, size: 64, offset: 3904)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !454, file: !455, line: 758, baseType: !299, size: 64, offset: 3968)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !454, file: !455, line: 761, baseType: !627, size: 320, offset: 4032)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !386, line: 34, size: 320, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !627, file: !386, line: 35, baseType: !311, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !627, file: !386, line: 36, baseType: !631, size: 256, offset: 64)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !390)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !454, file: !455, line: 766, baseType: !97, size: 32, offset: 4352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !454, file: !455, line: 767, baseType: !97, size: 32, offset: 4384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !454, file: !455, line: 768, baseType: !97, size: 32, offset: 4416)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !454, file: !455, line: 770, baseType: !97, size: 32, offset: 4448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !454, file: !455, line: 772, baseType: !81, size: 64, offset: 4480)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !454, file: !455, line: 775, baseType: !7, size: 32, offset: 4544)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !454, file: !455, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !454, file: !455, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !454, file: !455, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !454, file: !455, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !454, file: !455, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !454, file: !455, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !454, file: !455, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !454, file: !455, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !454, file: !455, line: 831, baseType: !81, size: 64, offset: 4672)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !454, file: !455, line: 833, baseType: !648, size: 384, offset: 4736)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !649)
!649 = !{!650, !655}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !648, file: !12, line: 26, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!83, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !12, line: 27, baseType: !656, size: 320, offset: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !12, line: 27, size: 320, elements: !657)
!657 = !{!658, !668, !695}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !656, file: !12, line: 36, baseType: !659, size: 320)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !12, line: 29, size: 320, elements: !660)
!660 = !{!661, !663, !664, !665, !666, !667}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !659, file: !12, line: 30, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !659, file: !12, line: 31, baseType: !125, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !12, line: 32, baseType: !125, size: 32, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !659, file: !12, line: 33, baseType: !125, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !659, file: !12, line: 34, baseType: !311, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !659, file: !12, line: 35, baseType: !662, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !656, file: !12, line: 46, baseType: !669, size: 192)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !12, line: 38, size: 192, elements: !670)
!670 = !{!671, !672, !673, !694}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !669, file: !12, line: 39, baseType: !571, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !12, line: 41, baseType: !674, size: 64, offset: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !12, line: 41, size: 64, elements: !675)
!675 = !{!676, !684}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !674, file: !12, line: 42, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !679, line: 7, size: 128, elements: !680)
!679 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!680 = !{!681, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !678, file: !679, line: 8, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !79, line: 93, baseType: !275)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !678, file: !679, line: 9, baseType: !275, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !674, file: !12, line: 43, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !687, line: 7, size: 64, elements: !688)
!687 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !693}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !686, file: !687, line: 8, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !687, line: 5, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !126, line: 20, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !128, line: 26, baseType: !97)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !686, file: !687, line: 9, baseType: !691, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !669, file: !12, line: 45, baseType: !311, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !656, file: !12, line: 54, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !12, line: 48, size: 256, elements: !697)
!697 = !{!698, !701, !702, !703, !704}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !696, file: !12, line: 49, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !696, file: !12, line: 50, baseType: !97, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !696, file: !12, line: 51, baseType: !97, size: 32, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !696, file: !12, line: 52, baseType: !81, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !696, file: !12, line: 53, baseType: !81, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !454, file: !455, line: 835, baseType: !706, size: 32, offset: 5120)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !76, line: 22, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !79, line: 28, baseType: !97)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !454, file: !455, line: 836, baseType: !706, size: 32, offset: 5152)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !454, file: !455, line: 840, baseType: !81, size: 64, offset: 5184)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !454, file: !455, line: 849, baseType: !453, size: 64, offset: 5248)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !454, file: !455, line: 852, baseType: !453, size: 64, offset: 5312)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !454, file: !455, line: 857, baseType: !144, size: 128, offset: 5376)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !454, file: !455, line: 858, baseType: !144, size: 128, offset: 5504)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !454, file: !455, line: 859, baseType: !453, size: 64, offset: 5632)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !454, file: !455, line: 867, baseType: !144, size: 128, offset: 5696)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !454, file: !455, line: 868, baseType: !144, size: 128, offset: 5824)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !454, file: !455, line: 871, baseType: !718, size: 64, offset: 5952)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !720, line: 59, size: 768, elements: !721)
!720 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !723, !724, !725, !736, !737, !744, !753}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 61, baseType: !467, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !719, file: !720, line: 62, baseType: !7, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !719, file: !720, line: 63, baseType: !157, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !719, file: !720, line: 65, baseType: !726, size: 256, offset: 64)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 256, elements: !390)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !76, line: 182, size: 64, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !727, file: !76, line: 183, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !76, line: 186, size: 128, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !76, line: 187, baseType: !730, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !731, file: !76, line: 187, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !719, file: !720, line: 66, baseType: !727, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !719, file: !720, line: 68, baseType: !738, size: 128, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !739, line: 40, baseType: !740)
!739 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !739, line: 36, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !739, line: 37, baseType: !157)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !740, file: !739, line: 38, baseType: !144, size: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !719, file: !720, line: 69, baseType: !745, size: 128, align: 64, offset: 512)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !76, line: 216, size: 128, align: 64, elements: !746)
!746 = !{!747, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !76, line: 217, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !745, file: !76, line: 218, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !748}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !719, file: !720, line: 70, baseType: !754, size: 128, offset: 640)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 128, elements: !618)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !720, line: 54, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !755, file: !720, line: 55, baseType: !97, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !755, file: !720, line: 56, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !720, line: 56, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !454, file: !455, line: 872, baseType: !762, size: 512, offset: 6016)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 512, elements: !390)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !454, file: !455, line: 873, baseType: !144, size: 128, offset: 6528)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !454, file: !455, line: 874, baseType: !144, size: 128, offset: 6656)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !454, file: !455, line: 876, baseType: !766, size: 64, offset: 6784)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !768, line: 26, size: 192, elements: !769)
!768 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !767, file: !768, line: 27, baseType: !7, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !767, file: !768, line: 28, baseType: !772, size: 128, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !773, line: 43, size: 128, elements: !774)
!773 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !772, file: !773, line: 44, baseType: !356)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !772, file: !773, line: 45, baseType: !144, size: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !454, file: !455, line: 879, baseType: !778, size: 64, offset: 6848)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !454, file: !455, line: 882, baseType: !778, size: 64, offset: 6912)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !454, file: !455, line: 884, baseType: !311, size: 64, offset: 6976)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !454, file: !455, line: 885, baseType: !311, size: 64, offset: 7040)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !454, file: !455, line: 890, baseType: !311, size: 64, offset: 7104)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !454, file: !455, line: 891, baseType: !784, size: 128, offset: 7168)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !455, line: 242, size: 128, elements: !785)
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !784, file: !455, line: 244, baseType: !311, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !784, file: !455, line: 245, baseType: !311, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !784, file: !455, line: 246, baseType: !356, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !454, file: !455, line: 900, baseType: !81, size: 64, offset: 7296)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !454, file: !455, line: 901, baseType: !81, size: 64, offset: 7360)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !454, file: !455, line: 904, baseType: !311, size: 64, offset: 7424)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !454, file: !455, line: 907, baseType: !311, size: 64, offset: 7488)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !454, file: !455, line: 910, baseType: !81, size: 64, offset: 7552)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !454, file: !455, line: 911, baseType: !81, size: 64, offset: 7616)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !454, file: !455, line: 914, baseType: !796, size: 640, offset: 7680)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !797, line: 123, size: 640, elements: !798)
!797 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !805, !806}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !796, file: !797, line: 124, baseType: !800, size: 576)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 576, elements: !199)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !797, line: 108, size: 192, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !801, file: !797, line: 109, baseType: !311, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !801, file: !797, line: 110, baseType: !585, size: 128, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !796, file: !797, line: 125, baseType: !7, size: 32, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !796, file: !797, line: 126, baseType: !7, size: 32, offset: 608)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !454, file: !455, line: 917, baseType: !808, size: 192, offset: 8320)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !797, line: 134, size: 192, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !808, file: !797, line: 135, baseType: !745, size: 128, align: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !808, file: !797, line: 136, baseType: !7, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !454, file: !455, line: 923, baseType: !813, size: 64, offset: 8512)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !455, line: 923, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !454, file: !455, line: 926, baseType: !813, size: 64, offset: 8576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !454, file: !455, line: 929, baseType: !813, size: 64, offset: 8640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !454, file: !455, line: 933, baseType: !819, size: 64, offset: 8704)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !455, line: 933, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !454, file: !455, line: 943, baseType: !822, size: 128, offset: 8768)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 16)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !454, file: !455, line: 945, baseType: !826, size: 64, offset: 8896)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !455, line: 49, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !454, file: !455, line: 956, baseType: !829, size: 64, offset: 8960)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !455, line: 45, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !454, file: !455, line: 959, baseType: !832, size: 64, offset: 9024)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !455, line: 959, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !454, file: !455, line: 962, baseType: !835, size: 64, offset: 9088)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !455, line: 66, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !454, file: !455, line: 966, baseType: !838, size: 64, offset: 9152)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !455, line: 50, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !454, file: !455, line: 969, baseType: !841, size: 64, offset: 9216)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !797, line: 223, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !454, file: !455, line: 970, baseType: !844, size: 64, offset: 9280)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !455, line: 62, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !454, file: !455, line: 971, baseType: !847, size: 64, offset: 9344)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !848, line: 25, baseType: !849)
!848 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 23, size: 64, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !849, file: !848, line: 24, baseType: !617, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !454, file: !455, line: 972, baseType: !847, size: 64, offset: 9408)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !454, file: !455, line: 974, baseType: !847, size: 64, offset: 9472)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !454, file: !455, line: 975, baseType: !855, size: 192, offset: 9536)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !856, line: 30, size: 192, elements: !857)
!856 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !855, file: !856, line: 31, baseType: !144, size: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !855, file: !856, line: 32, baseType: !847, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !454, file: !455, line: 976, baseType: !81, size: 64, offset: 9728)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !454, file: !455, line: 977, baseType: !77, size: 64, offset: 9792)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !454, file: !455, line: 978, baseType: !7, size: 32, offset: 9856)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !454, file: !455, line: 980, baseType: !748, size: 64, offset: 9920)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !454, file: !455, line: 989, baseType: !865, size: 128, offset: 9984)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !866, line: 35, size: 128, elements: !867)
!866 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!867 = !{!868, !869, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !865, file: !866, line: 36, baseType: !97, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !865, file: !866, line: 37, baseType: !331, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !865, file: !866, line: 38, baseType: !871, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !866, line: 23, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !454, file: !455, line: 992, baseType: !311, size: 64, offset: 10112)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !454, file: !455, line: 993, baseType: !311, size: 64, offset: 10176)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !454, file: !455, line: 996, baseType: !157, offset: 10240)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !454, file: !455, line: 999, baseType: !356, offset: 10240)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !454, file: !455, line: 1001, baseType: !878, size: 64, offset: 10240)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !455, line: 636, size: 64, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !455, line: 637, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !454, file: !455, line: 1005, baseType: !588, size: 128, offset: 10304)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !454, file: !455, line: 1007, baseType: !453, size: 64, offset: 10432)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !454, file: !455, line: 1009, baseType: !885, size: 64, offset: 10496)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !455, line: 1009, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !454, file: !455, line: 1043, baseType: !82, size: 64, offset: 10560)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !454, file: !455, line: 1046, baseType: !889, size: 64, offset: 10624)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !455, line: 41, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !454, file: !455, line: 1050, baseType: !892, size: 64, offset: 10688)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !455, line: 42, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !454, file: !455, line: 1054, baseType: !895, size: 64, offset: 10752)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !455, line: 55, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !454, file: !455, line: 1056, baseType: !898, size: 64, offset: 10816)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !455, line: 40, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !454, file: !455, line: 1058, baseType: !901, size: 64, offset: 10880)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !455, line: 47, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !454, file: !455, line: 1061, baseType: !904, size: 64, offset: 10944)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !455, line: 43, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !454, file: !455, line: 1064, baseType: !81, size: 64, offset: 11008)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !454, file: !455, line: 1065, baseType: !908, size: 64, offset: 11072)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !856, line: 14, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !856, line: 12, size: 384, elements: !911)
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !856, line: 13, baseType: !913, size: 384)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !856, line: 13, size: 384, elements: !914)
!914 = !{!915, !916, !917, !918}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !913, file: !856, line: 13, baseType: !97, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !913, file: !856, line: 13, baseType: !97, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !913, file: !856, line: 13, baseType: !97, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !913, file: !856, line: 13, baseType: !919, size: 256, offset: 128)
!919 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !920, line: 32, size: 256, elements: !921)
!920 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!921 = !{!922, !928, !941, !947, !956, !976, !981}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !919, file: !920, line: 37, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 34, size: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !923, file: !920, line: 35, baseType: !707, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !923, file: !920, line: 36, baseType: !927, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !79, line: 49, baseType: !7)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !919, file: !920, line: 45, baseType: !929, size: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 40, size: 192, elements: !930)
!930 = !{!931, !933, !934, !940}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !929, file: !920, line: 41, baseType: !932, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !79, line: 95, baseType: !97)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !929, file: !920, line: 42, baseType: !97, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !929, file: !920, line: 43, baseType: !935, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !920, line: 11, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !920, line: 8, size: 64, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !936, file: !920, line: 9, baseType: !97, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !936, file: !920, line: 10, baseType: !82, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !929, file: !920, line: 44, baseType: !97, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !919, file: !920, line: 52, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 48, size: 128, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !942, file: !920, line: 49, baseType: !707, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !942, file: !920, line: 50, baseType: !927, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !942, file: !920, line: 51, baseType: !935, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !919, file: !920, line: 61, baseType: !948, size: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 55, size: 256, elements: !949)
!949 = !{!950, !951, !952, !953, !955}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !948, file: !920, line: 56, baseType: !707, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !948, file: !920, line: 57, baseType: !927, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !948, file: !920, line: 58, baseType: !97, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !948, file: !920, line: 59, baseType: !954, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !79, line: 94, baseType: !231)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !948, file: !920, line: 60, baseType: !954, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !919, file: !920, line: 95, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 64, size: 256, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !957, file: !920, line: 65, baseType: !82, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !920, line: 77, baseType: !961, size: 192, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !920, line: 77, size: 192, elements: !962)
!962 = !{!963, !964, !971}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !961, file: !920, line: 82, baseType: !442, size: 16)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !961, file: !920, line: 88, baseType: !965, size: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !920, line: 84, size: 192, elements: !966)
!966 = !{!967, !969, !970}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !965, file: !920, line: 85, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !567)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !965, file: !920, line: 86, baseType: !82, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !965, file: !920, line: 87, baseType: !82, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !961, file: !920, line: 93, baseType: !972, size: 96)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !920, line: 90, size: 96, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !972, file: !920, line: 91, baseType: !968, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !972, file: !920, line: 92, baseType: !127, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !919, file: !920, line: 101, baseType: !977, size: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 98, size: 128, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !977, file: !920, line: 99, baseType: !83, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !977, file: !920, line: 100, baseType: !97, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !919, file: !920, line: 108, baseType: !982, size: 128)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !920, line: 104, size: 128, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !982, file: !920, line: 105, baseType: !82, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !982, file: !920, line: 106, baseType: !97, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !982, file: !920, line: 107, baseType: !7, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !454, file: !455, line: 1067, baseType: !988, offset: 11136)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !989, line: 12, elements: !171)
!989 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!990 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !454, file: !455, line: 1099, baseType: !991, size: 64, offset: 11136)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !455, line: 56, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !454, file: !455, line: 1103, baseType: !144, size: 128, offset: 11200)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !454, file: !455, line: 1104, baseType: !995, size: 64, offset: 11328)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !455, line: 46, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !454, file: !455, line: 1105, baseType: !408, size: 192, offset: 11392)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !454, file: !455, line: 1106, baseType: !7, size: 32, offset: 11584)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !454, file: !455, line: 1109, baseType: !1000, size: 128, offset: 11648)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, size: 128, elements: !1003)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !455, line: 51, flags: DIFlagFwdDecl)
!1003 = !{!1004}
!1004 = !DISubrange(count: 2)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !454, file: !455, line: 1110, baseType: !408, size: 192, offset: 11776)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !454, file: !455, line: 1111, baseType: !144, size: 128, offset: 11968)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !454, file: !455, line: 1173, baseType: !1008, size: 64, offset: 12096)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1010, line: 62, size: 256, align: 256, elements: !1011)
!1010 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1011 = !{!1012, !1013, !1014, !1019}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1009, file: !1010, line: 75, baseType: !127, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1009, file: !1010, line: 90, baseType: !127, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1009, file: !1010, line: 124, baseType: !1015, size: 64, offset: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 109, size: 64, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1015, file: !1010, line: 110, baseType: !312, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1015, file: !1010, line: 112, baseType: !312, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !1010, line: 144, baseType: !127, size: 32, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !454, file: !455, line: 1174, baseType: !125, size: 32, offset: 12160)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !454, file: !455, line: 1179, baseType: !81, size: 64, offset: 12224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !454, file: !455, line: 1182, baseType: !1023, size: 128, offset: 12288)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !386, line: 76, size: 128, elements: !1024)
!1024 = !{!1025, !1030, !1033}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1023, file: !386, line: 85, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1027, line: 7, size: 64, elements: !1028)
!1027 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1026, file: !1027, line: 12, baseType: !614, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1023, file: !386, line: 88, baseType: !1031, size: 8, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !76, line: 30, baseType: !1032)
!1032 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1023, file: !386, line: 95, baseType: !1031, size: 8, offset: 72)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !455, line: 1184, baseType: !1035, size: 128, offset: 12416)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !455, line: 1184, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1035, file: !455, line: 1185, baseType: !467, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1035, file: !455, line: 1186, baseType: !745, size: 128, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !454, file: !455, line: 1190, baseType: !1040, size: 64, offset: 12544)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !455, line: 53, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !454, file: !455, line: 1192, baseType: !1043, size: 128, offset: 12608)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !386, line: 64, size: 128, elements: !1044)
!1044 = !{!1045, !1138, !1139}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1043, file: !386, line: 65, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !283, line: 68, size: 512, align: 128, elements: !1048)
!1048 = !{!1049, !1050, !1130, !1137}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !283, line: 69, baseType: !81, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !283, line: 77, baseType: !1051, size: 320, offset: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !283, line: 77, size: 320, elements: !1052)
!1052 = !{!1053, !1062, !1067, !1095, !1103, !1109, !1122, !1129}
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !283, line: 78, baseType: !1054, size: 320)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !283, line: 78, size: 320, elements: !1055)
!1055 = !{!1056, !1057, !1060, !1061}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1054, file: !283, line: 84, baseType: !144, size: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1054, file: !283, line: 86, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !283, line: 26, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1054, file: !283, line: 87, baseType: !81, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1054, file: !283, line: 94, baseType: !81, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !283, line: 96, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !283, line: 96, size: 64, elements: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1063, file: !283, line: 101, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !76, line: 143, baseType: !311)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !283, line: 103, baseType: !1068, size: 320)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !283, line: 103, size: 320, elements: !1069)
!1069 = !{!1070, !1080, !1083, !1084}
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !283, line: 104, baseType: !1071, size: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !283, line: 104, size: 128, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1071, file: !283, line: 105, baseType: !144, size: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !283, line: 106, baseType: !1075, size: 128)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !283, line: 106, size: 128, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1075, file: !283, line: 107, baseType: !1046, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1075, file: !283, line: 109, baseType: !97, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1075, file: !283, line: 110, baseType: !97, size: 32, offset: 96)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1068, file: !283, line: 117, baseType: !1081, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !283, line: 117, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1068, file: !283, line: 119, baseType: !82, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !283, line: 120, baseType: !1085, size: 64, offset: 256)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !283, line: 120, size: 64, elements: !1086)
!1086 = !{!1087, !1088, !1089}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1085, file: !283, line: 121, baseType: !82, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1085, file: !283, line: 122, baseType: !81, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !283, line: 123, baseType: !1090, size: 32)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !283, line: 123, size: 32, elements: !1091)
!1091 = !{!1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1090, file: !283, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1090, file: !283, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1090, file: !283, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !283, line: 130, baseType: !1096, size: 192)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !283, line: 130, size: 192, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1096, file: !283, line: 131, baseType: !81, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1096, file: !283, line: 134, baseType: !600, size: 8, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1096, file: !283, line: 135, baseType: !600, size: 8, offset: 72)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1096, file: !283, line: 136, baseType: !331, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1096, file: !283, line: 137, baseType: !7, size: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !283, line: 139, baseType: !1104, size: 256)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !283, line: 139, size: 256, elements: !1105)
!1105 = !{!1106, !1107, !1108}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1104, file: !283, line: 140, baseType: !81, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1104, file: !283, line: 141, baseType: !331, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1104, file: !283, line: 143, baseType: !144, size: 128, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !283, line: 145, baseType: !1110, size: 256)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !283, line: 145, size: 256, elements: !1111)
!1111 = !{!1112, !1113, !1115, !1116, !1121}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1110, file: !283, line: 146, baseType: !81, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1110, file: !283, line: 147, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !272, line: 509, baseType: !1046)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1110, file: !283, line: 148, baseType: !81, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !283, line: 149, baseType: !1117, size: 64, offset: 192)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1110, file: !283, line: 149, size: 64, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1117, file: !283, line: 150, baseType: !299, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1117, file: !283, line: 151, baseType: !331, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1110, file: !283, line: 156, baseType: !157, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !283, line: 159, baseType: !1123, size: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !283, line: 159, size: 128, elements: !1124)
!1124 = !{!1125, !1128}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1123, file: !283, line: 161, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !283, line: 161, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1123, file: !283, line: 162, baseType: !82, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1051, file: !283, line: 176, baseType: !745, size: 128, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !283, line: 179, baseType: !1131, size: 32, offset: 384)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !283, line: 179, size: 32, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1131, file: !283, line: 184, baseType: !331, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1131, file: !283, line: 192, baseType: !7, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1131, file: !283, line: 194, baseType: !7, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1131, file: !283, line: 195, baseType: !97, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1047, file: !283, line: 199, baseType: !331, size: 32, offset: 416)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1043, file: !386, line: 67, baseType: !127, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1043, file: !386, line: 68, baseType: !127, size: 32, offset: 96)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !454, file: !455, line: 1206, baseType: !97, size: 32, offset: 12736)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !454, file: !455, line: 1207, baseType: !97, size: 32, offset: 12768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !454, file: !455, line: 1209, baseType: !81, size: 64, offset: 12800)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !454, file: !455, line: 1219, baseType: !311, size: 64, offset: 12864)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !454, file: !455, line: 1220, baseType: !311, size: 64, offset: 12928)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !454, file: !455, line: 1317, baseType: !97, size: 32, offset: 12992)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !454, file: !455, line: 1319, baseType: !453, size: 64, offset: 13056)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !454, file: !455, line: 1322, baseType: !1148, size: 64, offset: 13120)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !455, line: 1322, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !454, file: !455, line: 1326, baseType: !467, size: 32, offset: 13184)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !454, file: !455, line: 1342, baseType: !82, size: 64, offset: 13248)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !454, file: !455, line: 1343, baseType: !312, size: 64, offset: 13312)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !454, file: !455, line: 1344, baseType: !311, size: 64, offset: 13376)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !454, file: !455, line: 1345, baseType: !312, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !454, file: !455, line: 1346, baseType: !312, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !454, file: !455, line: 1347, baseType: !312, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !454, file: !455, line: 1348, baseType: !745, size: 128, align: 64, offset: 13504)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !454, file: !455, line: 1358, baseType: !1159, size: 34816, offset: 13824)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1160, line: 485, size: 34816, elements: !1161)
!1160 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !{!1162, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1191, !1192, !1193, !1194, !1195, !1196, !1199, !1200, !1201}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1159, file: !1160, line: 487, baseType: !1163, size: 192)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 192, elements: !199)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1165, line: 16, size: 64, elements: !1166)
!1165 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1164, file: !1165, line: 17, baseType: !437, size: 16)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1164, file: !1165, line: 18, baseType: !437, size: 16, offset: 16)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1164, file: !1165, line: 19, baseType: !437, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1164, file: !1165, line: 19, baseType: !437, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1164, file: !1165, line: 19, baseType: !437, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1164, file: !1165, line: 19, baseType: !437, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1164, file: !1165, line: 19, baseType: !437, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1164, file: !1165, line: 20, baseType: !437, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1164, file: !1165, line: 20, baseType: !437, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1164, file: !1165, line: 20, baseType: !437, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1164, file: !1165, line: 20, baseType: !437, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1164, file: !1165, line: 20, baseType: !437, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1164, file: !1165, line: 20, baseType: !437, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1159, file: !1160, line: 491, baseType: !81, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1159, file: !1160, line: 495, baseType: !238, size: 16, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1159, file: !1160, line: 496, baseType: !238, size: 16, offset: 272)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1159, file: !1160, line: 497, baseType: !238, size: 16, offset: 288)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1159, file: !1160, line: 498, baseType: !238, size: 16, offset: 304)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1159, file: !1160, line: 502, baseType: !81, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1159, file: !1160, line: 503, baseType: !81, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1159, file: !1160, line: 514, baseType: !1188, size: 256, offset: 448)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 256, elements: !390)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1160, line: 483, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1159, file: !1160, line: 516, baseType: !81, size: 64, offset: 704)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1159, file: !1160, line: 518, baseType: !81, size: 64, offset: 768)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1159, file: !1160, line: 520, baseType: !81, size: 64, offset: 832)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1159, file: !1160, line: 521, baseType: !81, size: 64, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1159, file: !1160, line: 522, baseType: !81, size: 64, offset: 960)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1159, file: !1160, line: 528, baseType: !1197, size: 64, offset: 1024)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1160, line: 10, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1159, file: !1160, line: 535, baseType: !81, size: 64, offset: 1088)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1159, file: !1160, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1159, file: !1160, line: 540, baseType: !1202, size: 33280, offset: 1536)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1203, line: 317, size: 33280, elements: !1204)
!1203 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1202, file: !1203, line: 330, baseType: !7, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1202, file: !1203, line: 337, baseType: !81, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1202, file: !1203, line: 348, baseType: !1208, size: 32768, offset: 512)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1203, line: 304, size: 32768, elements: !1209)
!1209 = !{!1210, !1225, !1264, !1314, !1331}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1208, file: !1203, line: 305, baseType: !1211, size: 896)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1203, line: 12, size: 896, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1224}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1211, file: !1203, line: 13, baseType: !125, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1211, file: !1203, line: 14, baseType: !125, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1211, file: !1203, line: 15, baseType: !125, size: 32, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1211, file: !1203, line: 16, baseType: !125, size: 32, offset: 96)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1211, file: !1203, line: 17, baseType: !125, size: 32, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1211, file: !1203, line: 18, baseType: !125, size: 32, offset: 160)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1211, file: !1203, line: 19, baseType: !125, size: 32, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1211, file: !1203, line: 22, baseType: !1221, size: 640, offset: 224)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 640, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 20)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1211, file: !1203, line: 25, baseType: !125, size: 32, offset: 864)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1208, file: !1203, line: 306, baseType: !1226, size: 4096, align: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1203, line: 34, size: 4096, align: 128, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1247, !1248, !1249, !1253, !1255, !1259}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1226, file: !1203, line: 35, baseType: !437, size: 16)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1226, file: !1203, line: 36, baseType: !437, size: 16, offset: 16)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1226, file: !1203, line: 37, baseType: !437, size: 16, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1226, file: !1203, line: 38, baseType: !437, size: 16, offset: 48)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !1203, line: 39, baseType: !1233, size: 128, offset: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !1203, line: 39, size: 128, elements: !1234)
!1234 = !{!1235, !1240}
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1203, line: 40, baseType: !1236, size: 128)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !1203, line: 40, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1236, file: !1203, line: 41, baseType: !311, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1236, file: !1203, line: 42, baseType: !311, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1203, line: 44, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !1203, line: 44, size: 128, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1241, file: !1203, line: 45, baseType: !125, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1241, file: !1203, line: 46, baseType: !125, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1241, file: !1203, line: 47, baseType: !125, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1241, file: !1203, line: 48, baseType: !125, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1226, file: !1203, line: 51, baseType: !125, size: 32, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1226, file: !1203, line: 52, baseType: !125, size: 32, offset: 224)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1226, file: !1203, line: 55, baseType: !1250, size: 1024, offset: 256)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1024, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1226, file: !1203, line: 58, baseType: !1254, size: 2048, offset: 1280)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 2048, elements: !203)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1226, file: !1203, line: 60, baseType: !1256, size: 384, offset: 3328)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 384, elements: !1257)
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
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1265, file: !1203, line: 80, baseType: !125, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1265, file: !1203, line: 81, baseType: !125, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1265, file: !1203, line: 82, baseType: !125, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1265, file: !1203, line: 83, baseType: !125, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1265, file: !1203, line: 84, baseType: !125, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1265, file: !1203, line: 85, baseType: !125, size: 32, offset: 160)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1265, file: !1203, line: 86, baseType: !125, size: 32, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1265, file: !1203, line: 88, baseType: !1221, size: 640, offset: 224)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1265, file: !1203, line: 89, baseType: !598, size: 8, offset: 864)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1265, file: !1203, line: 90, baseType: !598, size: 8, offset: 872)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1265, file: !1203, line: 91, baseType: !598, size: 8, offset: 880)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1265, file: !1203, line: 92, baseType: !598, size: 8, offset: 888)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1265, file: !1203, line: 93, baseType: !598, size: 8, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1265, file: !1203, line: 94, baseType: !598, size: 8, offset: 904)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1265, file: !1203, line: 95, baseType: !1282, size: 64, offset: 960)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1284, line: 11, size: 128, elements: !1285)
!1284 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1283, file: !1284, line: 12, baseType: !83, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1283, file: !1284, line: 13, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1290, line: 56, size: 1344, elements: !1291)
!1290 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1289, file: !1290, line: 61, baseType: !81, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1289, file: !1290, line: 62, baseType: !81, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1289, file: !1290, line: 63, baseType: !81, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1289, file: !1290, line: 64, baseType: !81, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1289, file: !1290, line: 65, baseType: !81, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1289, file: !1290, line: 66, baseType: !81, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1289, file: !1290, line: 68, baseType: !81, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1289, file: !1290, line: 69, baseType: !81, size: 64, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1289, file: !1290, line: 70, baseType: !81, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1289, file: !1290, line: 71, baseType: !81, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1289, file: !1290, line: 72, baseType: !81, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1289, file: !1290, line: 73, baseType: !81, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1289, file: !1290, line: 74, baseType: !81, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1289, file: !1290, line: 75, baseType: !81, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1289, file: !1290, line: 76, baseType: !81, size: 64, offset: 896)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1289, file: !1290, line: 81, baseType: !81, size: 64, offset: 960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1289, file: !1290, line: 83, baseType: !81, size: 64, offset: 1024)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1289, file: !1290, line: 84, baseType: !81, size: 64, offset: 1088)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !1290, line: 85, baseType: !81, size: 64, offset: 1152)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1289, file: !1290, line: 86, baseType: !81, size: 64, offset: 1216)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1289, file: !1290, line: 87, baseType: !81, size: 64, offset: 1280)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1265, file: !1203, line: 96, baseType: !125, size: 32, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1208, file: !1203, line: 308, baseType: !1315, size: 4608, align: 512)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1203, line: 289, size: 4608, align: 512, elements: !1316)
!1316 = !{!1317, !1318, !1327}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1315, file: !1203, line: 290, baseType: !1226, size: 4096, align: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1315, file: !1203, line: 291, baseType: !1319, size: 512, offset: 4096)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1203, line: 268, size: 512, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1319, file: !1203, line: 269, baseType: !311, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1319, file: !1203, line: 270, baseType: !311, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1319, file: !1203, line: 271, baseType: !1324, size: 384, offset: 128)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 384, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 6)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1315, file: !1203, line: 292, baseType: !1328, offset: 4608)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 0)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1208, file: !1203, line: 309, baseType: !1332, size: 32768)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 32768, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 4096)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !283, line: 378, baseType: !1336, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !446, file: !283, line: 384, baseType: !767, size: 192, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !303, file: !283, line: 500, baseType: !157, offset: 6656)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !303, file: !283, line: 501, baseType: !1340, size: 64, offset: 6656)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !283, line: 387, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !303, file: !283, line: 516, baseType: !1343, size: 64, offset: 6720)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1345, line: 18, flags: DIFlagFwdDecl)
!1345 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !303, file: !283, line: 519, baseType: !270, size: 64, offset: 6784)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !303, file: !283, line: 521, baseType: !1348, size: 64, offset: 6848)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !283, line: 521, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !303, file: !283, line: 545, baseType: !331, size: 32, offset: 6912)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !303, file: !283, line: 548, baseType: !1031, size: 8, offset: 6944)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !303, file: !283, line: 550, baseType: !1353, offset: 6952)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1354, line: 142, elements: !171)
!1354 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !303, file: !283, line: 554, baseType: !1356, size: 256, offset: 6976)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1357, line: 102, size: 256, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1358 = !{!1359, !1360, !1361}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1356, file: !1357, line: 103, baseType: !339, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1356, file: !1357, line: 104, baseType: !144, size: 128, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1356, file: !1357, line: 105, baseType: !1362, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1357, line: 21, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !303, file: !283, line: 557, baseType: !125, size: 32, offset: 7232)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !300, file: !283, line: 565, baseType: !1369, offset: 7296)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: -1)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !282, file: !283, line: 333, baseType: !1373, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !272, line: 284, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !272, line: 284, size: 64, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1374, file: !272, line: 284, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !329, line: 19, baseType: !81)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !282, file: !283, line: 334, baseType: !81, size: 64, offset: 640)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !282, file: !283, line: 343, baseType: !1380, size: 256, offset: 704)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !282, file: !283, line: 340, size: 256, elements: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1380, file: !283, line: 341, baseType: !290, size: 192, align: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1380, file: !283, line: 342, baseType: !81, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !282, file: !283, line: 351, baseType: !144, size: 128, offset: 960)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !282, file: !283, line: 353, baseType: !1386, size: 64, offset: 1088)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !283, line: 353, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !282, file: !283, line: 356, baseType: !1389, size: 64, offset: 1152)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !283, line: 356, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !282, file: !283, line: 359, baseType: !81, size: 64, offset: 1216)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !282, file: !283, line: 361, baseType: !270, size: 64, offset: 1280)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !282, file: !283, line: 362, baseType: !82, size: 64, offset: 1344)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !282, file: !283, line: 365, baseType: !339, size: 64, offset: 1408)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !282, file: !283, line: 373, baseType: !1397, offset: 1472)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !283, line: 296, elements: !171)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !249, file: !223, line: 90, baseType: !244, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !249, file: !223, line: 91, baseType: !1400, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !213, file: !140, line: 143, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1405, !150}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1408)
!1408 = !{!1409, !1410, !1414, !1418, !1426, !1430}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1407, file: !18, line: 40, baseType: !17, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1407, file: !18, line: 41, baseType: !1411, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1031}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1407, file: !18, line: 42, baseType: !1415, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!82}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1407, file: !18, line: 43, baseType: !1419, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1422, !1424}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1407, file: !18, line: 44, baseType: !1427, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!1422}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1407, file: !18, line: 45, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !82}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !213, file: !140, line: 144, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1422, !150}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !213, file: !140, line: 145, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !150, !1442, !1448}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1345, line: 23, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1345, line: 21, size: 32, elements: !1445)
!1445 = !{!1446}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1444, file: !1345, line: 22, baseType: !1447, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !76, line: 32, baseType: !927)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1345, line: 28, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1345, line: 26, size: 32, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1450, file: !1345, line: 27, baseType: !1453, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !76, line: 33, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !79, line: 50, baseType: !7)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !139, file: !140, line: 70, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1458, line: 123, size: 1024, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1601, !1602, !1603, !1604, !1605}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1457, file: !1458, line: 124, baseType: !331, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1457, file: !1458, line: 125, baseType: !331, size: 32, offset: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1457, file: !1458, line: 135, baseType: !1456, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1457, file: !1458, line: 136, baseType: !91, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1457, file: !1458, line: 138, baseType: !290, size: 192, align: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1457, file: !1458, line: 140, baseType: !1422, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1457, file: !1458, line: 141, baseType: !7, size: 32, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 142, baseType: !1468, size: 256, offset: 512)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 142, size: 256, elements: !1469)
!1469 = !{!1470, !1524, !1528}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1468, file: !1458, line: 143, baseType: !1471, size: 192)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1458, line: 91, size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1471, file: !1458, line: 92, baseType: !81, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1471, file: !1458, line: 94, baseType: !307, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1471, file: !1458, line: 100, baseType: !1476, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1458, line: 180, size: 704, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1494, !1495, !1496, !1522, !1523}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1477, file: !1458, line: 182, baseType: !1456, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !1458, line: 183, baseType: !7, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1477, file: !1458, line: 186, baseType: !1482, size: 192, offset: 128)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1483, line: 19, size: 192, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1484 = !{!1485, !1492, !1493}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1482, file: !1483, line: 20, baseType: !1486, size: 128)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1487, line: 292, size: 128, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1486, file: !1487, line: 293, baseType: !157)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1486, file: !1487, line: 295, baseType: !75, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1486, file: !1487, line: 296, baseType: !82, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1482, file: !1483, line: 21, baseType: !7, size: 32, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1482, file: !1483, line: 22, baseType: !7, size: 32, offset: 160)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1477, file: !1458, line: 187, baseType: !125, size: 32, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1477, file: !1458, line: 188, baseType: !125, size: 32, offset: 352)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1477, file: !1458, line: 189, baseType: !1497, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1458, line: 168, size: 320, elements: !1499)
!1499 = !{!1500, !1506, !1510, !1514, !1518}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1498, file: !1458, line: 169, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!97, !1504, !1476}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !272, line: 539, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1498, file: !1458, line: 171, baseType: !1507, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!97, !1456, !91, !237}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1498, file: !1458, line: 173, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!97, !1456}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1498, file: !1458, line: 174, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!97, !1456, !1456, !91}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1498, file: !1458, line: 176, baseType: !1519, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!97, !1504, !1456, !1476}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1477, file: !1458, line: 192, baseType: !144, size: 128, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1477, file: !1458, line: 194, baseType: !738, size: 128, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1468, file: !1458, line: 144, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1458, line: 103, size: 64, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1525, file: !1458, line: 104, baseType: !1456, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1468, file: !1458, line: 145, baseType: !1529, size: 256)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1458, line: 107, size: 256, elements: !1530)
!1530 = !{!1531, !1596, !1599, !1600}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1529, file: !1458, line: 108, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1458, line: 217, size: 768, elements: !1535)
!1535 = !{!1536, !1556, !1560, !1564, !1569, !1573, !1577, !1581, !1582, !1583, !1584, !1592}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1534, file: !1458, line: 222, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!97, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1458, line: 197, size: 1088, elements: !1542)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1541, file: !1458, line: 199, baseType: !1456, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1541, file: !1458, line: 200, baseType: !270, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1541, file: !1458, line: 201, baseType: !1504, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1541, file: !1458, line: 202, baseType: !82, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1541, file: !1458, line: 205, baseType: !408, size: 192, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1541, file: !1458, line: 206, baseType: !408, size: 192, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1541, file: !1458, line: 207, baseType: !97, size: 32, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1541, file: !1458, line: 208, baseType: !144, size: 128, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1541, file: !1458, line: 209, baseType: !198, size: 64, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1541, file: !1458, line: 211, baseType: !77, size: 64, offset: 896)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1541, file: !1458, line: 212, baseType: !1031, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1541, file: !1458, line: 213, baseType: !1031, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1541, file: !1458, line: 214, baseType: !1389, size: 64, offset: 1024)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1534, file: !1458, line: 223, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !1540}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1534, file: !1458, line: 236, baseType: !1561, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!97, !1504, !82}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1534, file: !1458, line: 238, baseType: !1565, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!82, !1504, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1534, file: !1458, line: 239, baseType: !1570, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!82, !1504, !82, !1568}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1534, file: !1458, line: 240, baseType: !1574, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !1504, !82}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1534, file: !1458, line: 242, baseType: !1578, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!229, !1540, !198, !77, !273}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1534, file: !1458, line: 252, baseType: !77, size: 64, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1534, file: !1458, line: 259, baseType: !1031, size: 8, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1534, file: !1458, line: 260, baseType: !1578, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1534, file: !1458, line: 263, baseType: !1585, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1588, !1540, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1589, line: 52, baseType: !7)
!1589 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1458, line: 27, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1534, file: !1458, line: 266, baseType: !1593, size: 64, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!97, !1540, !281}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1529, file: !1458, line: 109, baseType: !1597, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1458, line: 31, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1529, file: !1458, line: 110, baseType: !273, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1529, file: !1458, line: 111, baseType: !1456, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1457, file: !1458, line: 148, baseType: !82, size: 64, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1457, file: !1458, line: 154, baseType: !311, size: 64, offset: 832)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1457, file: !1458, line: 156, baseType: !238, size: 16, offset: 896)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1457, file: !1458, line: 157, baseType: !237, size: 16, offset: 912)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1457, file: !1458, line: 158, baseType: !1606, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1458, line: 32, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !139, file: !140, line: 71, baseType: !1609, size: 32, offset: 448)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1610, line: 19, size: 32, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1611 = !{!1612}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1609, file: !1610, line: 20, baseType: !467, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !139, file: !140, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !139, file: !140, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !139, file: !140, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !139, file: !140, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !139, file: !140, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !30, line: 463, baseType: !135, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !136, file: !30, line: 465, baseType: !1620, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !136, file: !30, line: 467, baseType: !91, size: 64, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !30, line: 468, baseType: !1624, size: 64, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1626)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1634, !1639, !1643}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1626, file: !30, line: 88, baseType: !91, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1626, file: !30, line: 89, baseType: !246, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1626, file: !30, line: 90, baseType: !1631, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!97, !135, !193}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1626, file: !30, line: 91, baseType: !1635, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!198, !135, !1638, !1442, !1448}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1626, file: !30, line: 93, baseType: !1640, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !135}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1626, file: !30, line: 95, baseType: !1644, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1647)
!1647 = !{!1648, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1646, file: !37, line: 279, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!97, !135}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1646, file: !37, line: 280, baseType: !1640, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1646, file: !37, line: 281, baseType: !1649, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1646, file: !37, line: 282, baseType: !1649, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1646, file: !37, line: 283, baseType: !1649, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1646, file: !37, line: 284, baseType: !1649, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1646, file: !37, line: 285, baseType: !1649, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1646, file: !37, line: 286, baseType: !1649, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1646, file: !37, line: 287, baseType: !1649, size: 64, offset: 512)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1646, file: !37, line: 288, baseType: !1649, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1646, file: !37, line: 289, baseType: !1649, size: 64, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1646, file: !37, line: 290, baseType: !1649, size: 64, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1646, file: !37, line: 291, baseType: !1649, size: 64, offset: 768)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1646, file: !37, line: 292, baseType: !1649, size: 64, offset: 832)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1646, file: !37, line: 293, baseType: !1649, size: 64, offset: 896)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1646, file: !37, line: 294, baseType: !1649, size: 64, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1646, file: !37, line: 295, baseType: !1649, size: 64, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1646, file: !37, line: 296, baseType: !1649, size: 64, offset: 1088)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1646, file: !37, line: 297, baseType: !1649, size: 64, offset: 1152)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1646, file: !37, line: 298, baseType: !1649, size: 64, offset: 1216)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1646, file: !37, line: 299, baseType: !1649, size: 64, offset: 1280)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1646, file: !37, line: 300, baseType: !1649, size: 64, offset: 1344)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1646, file: !37, line: 301, baseType: !1649, size: 64, offset: 1408)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !136, file: !30, line: 470, baseType: !1675, size: 64, offset: 768)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1677, line: 82, size: 1408, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1761, !1764, !1767}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1676, file: !1677, line: 83, baseType: !91, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1676, file: !1677, line: 84, baseType: !91, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1676, file: !1677, line: 85, baseType: !135, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1676, file: !1677, line: 86, baseType: !246, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1676, file: !1677, line: 87, baseType: !246, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1676, file: !1677, line: 88, baseType: !246, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1676, file: !1677, line: 90, baseType: !1686, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!97, !135, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697, !1698, !1712, !1725, !1726, !1727, !1728, !1729, !1737, !1738, !1739, !1740, !1741, !1742}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1690, file: !24, line: 96, baseType: !91, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1690, file: !24, line: 97, baseType: !1675, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1690, file: !24, line: 99, baseType: !72, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1690, file: !24, line: 100, baseType: !91, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1690, file: !24, line: 102, baseType: !1031, size: 8, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1690, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1690, file: !24, line: 105, baseType: !1699, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1702, line: 262, size: 1600, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !{!1704, !1706, !1707, !1711}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1701, file: !1702, line: 263, baseType: !1705, size: 256)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !1251)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1701, file: !1702, line: 264, baseType: !1705, size: 256, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1701, file: !1702, line: 265, baseType: !1708, size: 1024, offset: 512)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1024, elements: !1709)
!1709 = !{!1710}
!1710 = !DISubrange(count: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1701, file: !1702, line: 266, baseType: !1422, size: 64, offset: 1536)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1690, file: !24, line: 106, baseType: !1713, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1702, line: 210, size: 256, elements: !1716)
!1716 = !{!1717, !1721, !1723, !1724}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1715, file: !1702, line: 211, baseType: !1718, size: 72)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 72, elements: !1719)
!1719 = !{!1720}
!1720 = !DISubrange(count: 9)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1715, file: !1702, line: 212, baseType: !1722, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1702, line: 14, baseType: !81)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1715, file: !1702, line: 213, baseType: !127, size: 32, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1715, file: !1702, line: 214, baseType: !127, size: 32, offset: 224)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1690, file: !24, line: 108, baseType: !1649, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1690, file: !24, line: 109, baseType: !1640, size: 64, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1690, file: !24, line: 110, baseType: !1649, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1690, file: !24, line: 111, baseType: !1640, size: 64, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1690, file: !24, line: 112, baseType: !1730, size: 64, offset: 704)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!97, !135, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1734, file: !37, line: 51, baseType: !97, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1690, file: !24, line: 113, baseType: !1649, size: 64, offset: 768)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1690, file: !24, line: 114, baseType: !246, size: 64, offset: 832)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1690, file: !24, line: 115, baseType: !246, size: 64, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1690, file: !24, line: 117, baseType: !1644, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1690, file: !24, line: 118, baseType: !1640, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1690, file: !24, line: 120, baseType: !1743, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1676, file: !1677, line: 91, baseType: !1631, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1676, file: !1677, line: 92, baseType: !1649, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1676, file: !1677, line: 93, baseType: !1640, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1676, file: !1677, line: 94, baseType: !1649, size: 64, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1676, file: !1677, line: 95, baseType: !1640, size: 64, offset: 704)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1676, file: !1677, line: 97, baseType: !1649, size: 64, offset: 768)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1676, file: !1677, line: 98, baseType: !1649, size: 64, offset: 832)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1676, file: !1677, line: 100, baseType: !1730, size: 64, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1676, file: !1677, line: 101, baseType: !1649, size: 64, offset: 960)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1676, file: !1677, line: 103, baseType: !1649, size: 64, offset: 1024)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1676, file: !1677, line: 105, baseType: !1649, size: 64, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1676, file: !1677, line: 107, baseType: !1644, size: 64, offset: 1152)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1676, file: !1677, line: 109, baseType: !1758, size: 64, offset: 1216)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1760)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1677, line: 109, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1676, file: !1677, line: 111, baseType: !1762, size: 64, offset: 1280)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1677, line: 111, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1676, file: !1677, line: 112, baseType: !1765, offset: 1344)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1766, line: 187, elements: !171)
!1766 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1676, file: !1677, line: 114, baseType: !1031, size: 8, offset: 1344)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !136, file: !30, line: 471, baseType: !1689, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !136, file: !30, line: 473, baseType: !82, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !136, file: !30, line: 475, baseType: !82, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !136, file: !30, line: 480, baseType: !408, size: 192, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !136, file: !30, line: 484, baseType: !1773, size: 576, offset: 1216)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1773, file: !30, line: 362, baseType: !144, size: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1773, file: !30, line: 363, baseType: !144, size: 128, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1773, file: !30, line: 364, baseType: !144, size: 128, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1773, file: !30, line: 365, baseType: !144, size: 128, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1773, file: !30, line: 366, baseType: !1031, size: 8, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1773, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !136, file: !30, line: 485, baseType: !1782, size: 2304, offset: 1792)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1783)
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1879, !1883}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1782, file: !37, line: 566, baseType: !1733, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1782, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1782, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1782, file: !37, line: 569, baseType: !1031, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1782, file: !37, line: 570, baseType: !1031, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1782, file: !37, line: 571, baseType: !1031, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1782, file: !37, line: 572, baseType: !1031, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1782, file: !37, line: 573, baseType: !1031, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1782, file: !37, line: 574, baseType: !1031, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1782, file: !37, line: 575, baseType: !1031, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1782, file: !37, line: 576, baseType: !1031, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1782, file: !37, line: 577, baseType: !125, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !37, line: 578, baseType: !157, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1782, file: !37, line: 580, baseType: !144, size: 128, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1782, file: !37, line: 581, baseType: !767, size: 192, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1782, file: !37, line: 582, baseType: !1800, size: 64, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1802, line: 43, size: 1472, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1811, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1801, file: !1802, line: 44, baseType: !91, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1801, file: !1802, line: 45, baseType: !97, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1801, file: !1802, line: 46, baseType: !144, size: 128, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1801, file: !1802, line: 47, baseType: !157, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1801, file: !1802, line: 48, baseType: !1809, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1801, file: !1802, line: 49, baseType: !1812, size: 320, offset: 320)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1813, line: 11, size: 320, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1816, !1817, !1822}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1812, file: !1813, line: 16, baseType: !731, size: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1812, file: !1813, line: 17, baseType: !81, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1812, file: !1813, line: 18, baseType: !1818, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !1813, line: 19, baseType: !125, size: 32, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1801, file: !1802, line: 50, baseType: !81, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1801, file: !1802, line: 51, baseType: !537, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1801, file: !1802, line: 52, baseType: !537, size: 64, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1801, file: !1802, line: 53, baseType: !537, size: 64, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1801, file: !1802, line: 54, baseType: !537, size: 64, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1801, file: !1802, line: 55, baseType: !537, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1801, file: !1802, line: 56, baseType: !81, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1801, file: !1802, line: 57, baseType: !81, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1801, file: !1802, line: 58, baseType: !81, size: 64, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1801, file: !1802, line: 59, baseType: !81, size: 64, offset: 1216)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1801, file: !1802, line: 60, baseType: !81, size: 64, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1801, file: !1802, line: 61, baseType: !135, size: 64, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1801, file: !1802, line: 62, baseType: !1031, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1801, file: !1802, line: 63, baseType: !1031, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1782, file: !37, line: 583, baseType: !1031, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1782, file: !37, line: 584, baseType: !1031, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1782, file: !37, line: 585, baseType: !1031, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1782, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1782, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1782, file: !37, line: 592, baseType: !529, size: 512, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1782, file: !37, line: 593, baseType: !311, size: 64, offset: 1088)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1782, file: !37, line: 594, baseType: !1356, size: 256, offset: 1152)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1782, file: !37, line: 595, baseType: !738, size: 128, offset: 1408)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1782, file: !37, line: 596, baseType: !1809, size: 64, offset: 1536)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1782, file: !37, line: 597, baseType: !331, size: 32, offset: 1600)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1782, file: !37, line: 598, baseType: !331, size: 32, offset: 1632)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1782, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1782, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1782, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1782, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1782, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1782, file: !37, line: 604, baseType: !1031, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1782, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1782, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1782, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1782, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1782, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1782, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1782, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1782, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1782, file: !37, line: 613, baseType: !97, size: 32, offset: 1792)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1782, file: !37, line: 614, baseType: !97, size: 32, offset: 1824)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1782, file: !37, line: 615, baseType: !311, size: 64, offset: 1856)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1782, file: !37, line: 616, baseType: !311, size: 64, offset: 1920)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1782, file: !37, line: 617, baseType: !311, size: 64, offset: 1984)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1782, file: !37, line: 618, baseType: !311, size: 64, offset: 2048)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1782, file: !37, line: 620, baseType: !1870, size: 64, offset: 2112)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1876}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1871, file: !37, line: 537, baseType: !157)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1871, file: !37, line: 538, baseType: !7, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1871, file: !37, line: 540, baseType: !144, size: 128, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1871, file: !37, line: 543, baseType: !1877, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1782, file: !37, line: 621, baseType: !1880, size: 64, offset: 2176)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !135, !691}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1782, file: !37, line: 622, baseType: !1884, size: 64, offset: 2240)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !136, file: !30, line: 486, baseType: !1887, size: 64, offset: 4096)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1896, !1897, !1898}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1888, file: !37, line: 643, baseType: !1646, size: 1472)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1888, file: !37, line: 644, baseType: !1649, size: 64, offset: 1472)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1888, file: !37, line: 645, baseType: !1893, size: 64, offset: 1536)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !135, !1031}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1888, file: !37, line: 646, baseType: !1649, size: 64, offset: 1600)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1888, file: !37, line: 647, baseType: !1640, size: 64, offset: 1664)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1888, file: !37, line: 648, baseType: !1640, size: 64, offset: 1728)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !136, file: !30, line: 493, baseType: !1900, size: 64, offset: 4160)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !136, file: !30, line: 499, baseType: !144, size: 128, offset: 4224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !136, file: !30, line: 502, baseType: !1904, size: 64, offset: 4352)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !136, file: !30, line: 504, baseType: !1908, size: 64, offset: 4416)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !136, file: !30, line: 505, baseType: !311, size: 64, offset: 4480)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !136, file: !30, line: 510, baseType: !311, size: 64, offset: 4544)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !136, file: !30, line: 511, baseType: !1912, size: 64, offset: 4608)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !136, file: !30, line: 513, baseType: !1916, size: 64, offset: 4672)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1917, file: !30, line: 293, baseType: !7, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1917, file: !30, line: 294, baseType: !81, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !136, file: !30, line: 515, baseType: !144, size: 128, offset: 4736)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !136, file: !30, line: 526, baseType: !1923, offset: 4864)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1924, line: 5, elements: !171)
!1924 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !136, file: !30, line: 528, baseType: !1926, size: 64, offset: 4864)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1928, line: 51, size: 1344, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1933, !1934, !2024, !2033, !2034, !2035, !2036, !2037, !2038, !2039}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1927, file: !1928, line: 52, baseType: !91, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1927, file: !1928, line: 53, baseType: !1932, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1928, line: 28, baseType: !125)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1927, file: !1928, line: 54, baseType: !91, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1927, file: !1928, line: 55, baseType: !1935, size: 192, offset: 192)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1936, line: 17, size: 192, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1940, !2023}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1935, file: !1936, line: 18, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1935, file: !1936, line: 19, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1936, line: 110, size: 1152, elements: !1944)
!1944 = !{!1945, !1949, !1953, !1959, !1965, !1969, !1973, !1978, !1982, !1983, !1987, !1991, !1995, !2006, !2007, !2008, !2009, !2019}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1943, file: !1936, line: 111, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1939, !1939}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1943, file: !1936, line: 112, baseType: !1950, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1939}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1943, file: !1936, line: 113, baseType: !1954, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1031, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1943, file: !1936, line: 114, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1422, !1957, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1943, file: !1936, line: 116, baseType: !1966, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1031, !1957, !91}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1943, file: !1936, line: 118, baseType: !1970, size: 64, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!97, !1957, !91, !7, !82, !77}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1943, file: !1936, line: 123, baseType: !1974, size: 64, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!97, !1957, !91, !1977, !77}
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1943, file: !1936, line: 126, baseType: !1979, size: 64, offset: 448)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!91, !1957}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1943, file: !1936, line: 127, baseType: !1979, size: 64, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1943, file: !1936, line: 128, baseType: !1984, size: 64, offset: 576)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1939, !1957}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1943, file: !1936, line: 130, baseType: !1988, size: 64, offset: 640)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1939, !1957, !1939}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1943, file: !1936, line: 133, baseType: !1992, size: 64, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1939, !1957, !91}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1943, file: !1936, line: 135, baseType: !1996, size: 64, offset: 768)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!97, !1957, !91, !91, !7, !7, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1936, line: 43, size: 640, elements: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2000, file: !1936, line: 44, baseType: !1939, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2000, file: !1936, line: 45, baseType: !7, size: 32, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2000, file: !1936, line: 46, baseType: !2005, size: 512, offset: 128)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 512, elements: !567)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1943, file: !1936, line: 140, baseType: !1988, size: 64, offset: 832)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1943, file: !1936, line: 143, baseType: !1984, size: 64, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1943, file: !1936, line: 145, baseType: !1946, size: 64, offset: 960)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1943, file: !1936, line: 146, baseType: !2010, size: 64, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!97, !1957, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1936, line: 29, size: 128, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2014, file: !1936, line: 30, baseType: !7, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2014, file: !1936, line: 31, baseType: !7, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2014, file: !1936, line: 32, baseType: !1957, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1943, file: !1936, line: 148, baseType: !2020, size: 64, offset: 1088)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!97, !1957, !135}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1935, file: !1936, line: 20, baseType: !135, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1927, file: !1928, line: 57, baseType: !2025, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1928, line: 31, size: 704, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2032}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2026, file: !1928, line: 32, baseType: !198, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2026, file: !1928, line: 33, baseType: !97, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2026, file: !1928, line: 34, baseType: !82, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2026, file: !1928, line: 35, baseType: !2025, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2026, file: !1928, line: 43, baseType: !261, size: 448, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1927, file: !1928, line: 58, baseType: !2025, size: 64, offset: 448)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1927, file: !1928, line: 59, baseType: !1926, size: 64, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1927, file: !1928, line: 60, baseType: !1926, size: 64, offset: 576)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1927, file: !1928, line: 61, baseType: !1926, size: 64, offset: 640)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1927, file: !1928, line: 63, baseType: !139, size: 512, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1927, file: !1928, line: 65, baseType: !81, size: 64, offset: 1216)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1928, line: 66, baseType: !82, size: 64, offset: 1280)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !136, file: !30, line: 529, baseType: !1939, size: 64, offset: 4928)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !136, file: !30, line: 534, baseType: !2042, size: 32, offset: 4992)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !76, line: 16, baseType: !2043)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !76, line: 13, baseType: !125)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !136, file: !30, line: 535, baseType: !125, size: 32, offset: 5024)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !136, file: !30, line: 537, baseType: !157, offset: 5056)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !136, file: !30, line: 538, baseType: !144, size: 128, offset: 5056)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !136, file: !30, line: 540, baseType: !2048, size: 64, offset: 5184)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2050, line: 54, size: 960, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058, !2062, !2066, !2067, !2068, !2069, !2073, !2077, !2078}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2049, file: !2050, line: 55, baseType: !91, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2049, file: !2050, line: 56, baseType: !72, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2049, file: !2050, line: 58, baseType: !246, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2049, file: !2050, line: 59, baseType: !246, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2049, file: !2050, line: 60, baseType: !150, size: 64, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2049, file: !2050, line: 62, baseType: !1631, size: 64, offset: 320)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2049, file: !2050, line: 63, baseType: !2059, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!198, !135, !1638}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2049, file: !2050, line: 65, baseType: !2063, size: 64, offset: 448)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !2048}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2049, file: !2050, line: 66, baseType: !1640, size: 64, offset: 512)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2049, file: !2050, line: 68, baseType: !1649, size: 64, offset: 576)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2049, file: !2050, line: 70, baseType: !1405, size: 64, offset: 640)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2049, file: !2050, line: 71, baseType: !2070, size: 64, offset: 704)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!1422, !135}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2049, file: !2050, line: 73, baseType: !2074, size: 64, offset: 768)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !135, !1442, !1448}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2049, file: !2050, line: 75, baseType: !1644, size: 64, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2049, file: !2050, line: 77, baseType: !1762, size: 64, offset: 896)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !136, file: !30, line: 541, baseType: !246, size: 64, offset: 5248)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !136, file: !30, line: 543, baseType: !1640, size: 64, offset: 5312)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !136, file: !30, line: 544, baseType: !2082, size: 64, offset: 5376)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !136, file: !30, line: 545, baseType: !2085, size: 64, offset: 5440)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !136, file: !30, line: 547, baseType: !1031, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !136, file: !30, line: 548, baseType: !1031, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !136, file: !30, line: 549, baseType: !1031, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !136, file: !30, line: 550, baseType: !1031, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !88, file: !51, line: 125, baseType: !246, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !51, line: 127, baseType: !144, size: 128, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !88, file: !51, line: 128, baseType: !91, size: 64, offset: 896)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !88, file: !51, line: 130, baseType: !81, size: 64, offset: 960)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !88, file: !51, line: 130, baseType: !81, size: 64, offset: 1024)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !88, file: !51, line: 131, baseType: !1812, size: 320, offset: 1088)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !88, file: !51, line: 132, baseType: !97, size: 32, offset: 1408)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !88, file: !51, line: 133, baseType: !97, size: 32, offset: 1440)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !88, file: !51, line: 134, baseType: !2100, size: 64, offset: 1472)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !103}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !88, file: !51, line: 136, baseType: !1356, size: 256, offset: 1536)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !88, file: !51, line: 137, baseType: !97, size: 32, offset: 1792)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !88, file: !51, line: 159, baseType: !408, size: 192, offset: 1856)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !85, file: !3, line: 47, baseType: !2107, size: 64, offset: 2048)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !63, line: 19, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "slow", scope: !85, file: !3, line: 48, baseType: !2107, size: 64, offset: 2112)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !85, file: !3, line: 49, baseType: !1031, size: 8, offset: 2176)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !85, file: !3, line: 50, baseType: !600, size: 8, offset: 2184)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rw_lock", scope: !85, file: !3, line: 51, baseType: !2113, offset: 2192)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2114, line: 20, baseType: !2115)
!2114 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2114, line: 11, elements: !2116)
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2115, file: !2114, line: 12, baseType: !2118)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !169, line: 33, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 31, elements: !171)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "num_modes", scope: !85, file: !3, line: 52, baseType: !97, size: 32, offset: 2208)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "modval", scope: !85, file: !3, line: 53, baseType: !2122, size: 64, offset: 2240)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns2_led_modval", file: !3, line: 32, size: 96, elements: !2124)
!2124 = !{!2125, !2126, !2127}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2123, file: !3, line: 33, baseType: !125, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_level", scope: !2123, file: !3, line: 34, baseType: !125, size: 32, offset: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "slow_level", scope: !2123, file: !3, line: 35, baseType: !125, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2129 = !{!0, !2130, !2137, !2142, !2144, !2149, !2154, !2159, !2220, !2223, !2225, !2228, !2242}
!2130 = !DIGlobalVariableExpression(var: !2131, expr: !DIExpression())
!2131 = distinct !DIGlobalVariable(name: "__exitcall_ns2_led_driver_exit", scope: !2, file: !3, line: 279, type: !2132, isLocal: true, isDefinition: true)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2133, line: 117, baseType: !2134)
!2133 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null}
!2137 = !DIGlobalVariableExpression(var: !2138, expr: !DIExpression())
!2138 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author165", scope: !2, file: !3, line: 281, type: !2139, isLocal: true, isDefinition: true, align: 8)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 392, elements: !2140)
!2140 = !{!2141}
!2141 = !DISubrange(count: 49)
!2142 = !DIGlobalVariableExpression(var: !2143, expr: !DIExpression())
!2143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description166", scope: !2, file: !3, line: 282, type: !2139, isLocal: true, isDefinition: true, align: 8)
!2144 = !DIGlobalVariableExpression(var: !2145, expr: !DIExpression())
!2145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file167", scope: !2, file: !3, line: 283, type: !2146, isLocal: true, isDefinition: true, align: 8)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 288, elements: !2147)
!2147 = !{!2148}
!2148 = !DISubrange(count: 36)
!2149 = !DIGlobalVariableExpression(var: !2150, expr: !DIExpression())
!2150 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license168", scope: !2, file: !3, line: 283, type: !2151, isLocal: true, isDefinition: true, align: 8)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 168, elements: !2152)
!2152 = !{!2153}
!2153 = !DISubrange(count: 21)
!2154 = !DIGlobalVariableExpression(var: !2155, expr: !DIExpression())
!2155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias169", scope: !2, file: !3, line: 284, type: !2156, isLocal: true, isDefinition: true, align: 8)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 264, elements: !2157)
!2157 = !{!2158}
!2158 = !DISubrange(count: 33)
!2159 = !DIGlobalVariableExpression(var: !2160, expr: !DIExpression())
!2160 = distinct !DIGlobalVariable(name: "ns2_led_driver", scope: !2, file: !3, line: 271, type: !2161, isLocal: true, isDefinition: true)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2162, line: 200, size: 1600, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2207, !2208, !2212, !2216, !2217, !2218, !2219}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2161, file: !2162, line: 201, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!97, !2168}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2162, line: 22, size: 6208, elements: !2170)
!2170 = !{!2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2193, !2201, !2202, !2205}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2169, file: !2162, line: 23, baseType: !91, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2169, file: !2162, line: 24, baseType: !97, size: 32, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2169, file: !2162, line: 25, baseType: !1031, size: 8, offset: 96)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2169, file: !2162, line: 26, baseType: !136, size: 5568, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2169, file: !2162, line: 27, baseType: !311, size: 64, offset: 5696)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2169, file: !2162, line: 28, baseType: !1917, size: 128, offset: 5760)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2169, file: !2162, line: 29, baseType: !125, size: 32, offset: 5888)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2169, file: !2162, line: 30, baseType: !2179, size: 64, offset: 5952)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2181, line: 20, size: 512, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2182 = !{!2183, !2186, !2187, !2188, !2189, !2190, !2191, !2192}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2180, file: !2181, line: 21, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !76, line: 158, baseType: !2185)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !76, line: 153, baseType: !311)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2180, file: !2181, line: 22, baseType: !2184, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2180, file: !2181, line: 23, baseType: !91, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2180, file: !2181, line: 24, baseType: !81, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2180, file: !2181, line: 25, baseType: !81, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2180, file: !2181, line: 26, baseType: !2179, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2180, file: !2181, line: 26, baseType: !2179, size: 64, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2180, file: !2181, line: 26, baseType: !2179, size: 64, offset: 448)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2169, file: !2162, line: 32, baseType: !2194, size: 64, offset: 6016)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1702, line: 586, size: 256, elements: !2197)
!2197 = !{!2198, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2196, file: !1702, line: 587, baseType: !2199, size: 160)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 160, elements: !1222)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2196, file: !1702, line: 588, baseType: !1722, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2169, file: !2162, line: 33, baseType: !198, size: 64, offset: 6080)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2169, file: !2162, line: 36, baseType: !2203, size: 64, offset: 6144)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2162, line: 18, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2169, file: !2162, line: 39, baseType: !2206, offset: 6208)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1924, line: 8, elements: !171)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2161, file: !2162, line: 202, baseType: !2165, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2161, file: !2162, line: 203, baseType: !2209, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2168}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2161, file: !2162, line: 204, baseType: !2213, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!97, !2168, !1733}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2161, file: !2162, line: 205, baseType: !2165, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2161, file: !2162, line: 206, baseType: !1690, size: 1152, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2161, file: !2162, line: 207, baseType: !2194, size: 64, offset: 1472)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2161, file: !2162, line: 208, baseType: !1031, size: 8, offset: 1536)
!2220 = !DIGlobalVariableExpression(var: !2221, expr: !DIExpression())
!2221 = distinct !DIGlobalVariable(name: "ns2_led_groups", scope: !2, file: !3, line: 173, type: !2222, isLocal: true, isDefinition: true)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 128, elements: !1003)
!2223 = !DIGlobalVariableExpression(var: !2224, expr: !DIExpression())
!2224 = distinct !DIGlobalVariable(name: "ns2_led_group", scope: !2, file: !3, line: 173, type: !248, isLocal: true, isDefinition: true)
!2225 = !DIGlobalVariableExpression(var: !2226, expr: !DIExpression())
!2226 = distinct !DIGlobalVariable(name: "ns2_led_attrs", scope: !2, file: !3, line: 169, type: !2227, isLocal: true, isDefinition: true)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !1003)
!2228 = !DIGlobalVariableExpression(var: !2229, expr: !DIExpression())
!2229 = distinct !DIGlobalVariable(name: "dev_attr_sata", scope: !2, file: !3, line: 167, type: !2230, isLocal: true, isDefinition: true)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2231)
!2231 = !{!2232, !2233, !2238}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2230, file: !30, line: 100, baseType: !233, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2230, file: !30, line: 101, baseType: !2234, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!229, !135, !2237, !198}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2230, file: !30, line: 103, baseType: !2239, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!229, !135, !2237, !91, !77}
!2242 = !DIGlobalVariableExpression(var: !2243, expr: !DIExpression())
!2243 = distinct !DIGlobalVariable(name: "of_ns2_leds_match", scope: !2, file: !3, line: 265, type: !2244, isLocal: true, isDefinition: true)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1700, size: 3200, elements: !1003)
!2245 = !{!"rsp"}
!2246 = !{i32 7, !"Dwarf Version", i32 4}
!2247 = !{i32 2, !"Debug Info Version", i32 3}
!2248 = !{i32 1, !"wchar_size", i32 2}
!2249 = !{i32 1, !"Code Model", i32 2}
!2250 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2251 = distinct !DISubprogram(name: "ns2_led_driver_init", scope: !3, file: !3, line: 279, type: !2252, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!97}
!2254 = !DILocation(line: 279, column: 1, scope: !2251)
!2255 = distinct !DISubprogram(name: "ns2_led_driver_exit", scope: !3, file: !3, line: 279, type: !2135, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2256 = !DILocation(line: 279, column: 1, scope: !2255)
!2257 = distinct !DISubprogram(name: "ns2_led_probe", scope: !3, file: !3, line: 238, type: !2166, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2258 = !DILocalVariable(name: "pdev", arg: 1, scope: !2257, file: !3, line: 238, type: !2168)
!2259 = !DILocation(line: 238, column: 50, scope: !2257)
!2260 = !DILocalVariable(name: "dev", scope: !2257, file: !3, line: 240, type: !135)
!2261 = !DILocation(line: 240, column: 17, scope: !2257)
!2262 = !DILocation(line: 240, column: 24, scope: !2257)
!2263 = !DILocation(line: 240, column: 30, scope: !2257)
!2264 = !DILocalVariable(name: "child", scope: !2257, file: !3, line: 241, type: !1939)
!2265 = !DILocation(line: 241, column: 24, scope: !2257)
!2266 = !DILocalVariable(name: "leds", scope: !2257, file: !3, line: 242, type: !84)
!2267 = !DILocation(line: 242, column: 18, scope: !2257)
!2268 = !DILocalVariable(name: "count", scope: !2257, file: !3, line: 243, type: !97)
!2269 = !DILocation(line: 243, column: 6, scope: !2257)
!2270 = !DILocalVariable(name: "ret", scope: !2257, file: !3, line: 244, type: !97)
!2271 = !DILocation(line: 244, column: 6, scope: !2257)
!2272 = !DILocation(line: 246, column: 38, scope: !2257)
!2273 = !DILocation(line: 246, column: 10, scope: !2257)
!2274 = !DILocation(line: 246, column: 8, scope: !2257)
!2275 = !DILocation(line: 247, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 247, column: 6)
!2277 = !DILocation(line: 247, column: 6, scope: !2257)
!2278 = !DILocation(line: 248, column: 3, scope: !2276)
!2279 = !DILocation(line: 250, column: 22, scope: !2257)
!2280 = !DILocation(line: 250, column: 53, scope: !2257)
!2281 = !DILocation(line: 250, column: 27, scope: !2257)
!2282 = !DILocation(line: 250, column: 9, scope: !2257)
!2283 = !DILocation(line: 250, column: 7, scope: !2257)
!2284 = !DILocation(line: 251, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 251, column: 6)
!2286 = !DILocation(line: 251, column: 6, scope: !2257)
!2287 = !DILocation(line: 252, column: 3, scope: !2285)
!2288 = !DILocation(line: 254, column: 2, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 254, column: 2)
!2290 = !DILocation(line: 254, column: 2, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 254, column: 2)
!2292 = !DILocation(line: 255, column: 26, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 254, column: 41)
!2294 = !DILocation(line: 255, column: 31, scope: !2293)
!2295 = !DILocation(line: 255, column: 42, scope: !2293)
!2296 = !DILocation(line: 255, column: 9, scope: !2293)
!2297 = !DILocation(line: 255, column: 7, scope: !2293)
!2298 = !DILocation(line: 256, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 256, column: 7)
!2300 = !DILocation(line: 256, column: 7, scope: !2293)
!2301 = !DILocation(line: 257, column: 22, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 256, column: 12)
!2303 = !DILocation(line: 257, column: 4, scope: !2302)
!2304 = !DILocation(line: 258, column: 11, scope: !2302)
!2305 = !DILocation(line: 258, column: 4, scope: !2302)
!2306 = !DILocation(line: 260, column: 2, scope: !2293)
!2307 = distinct !{!2307, !2288, !2308}
!2308 = !DILocation(line: 260, column: 2, scope: !2289)
!2309 = !DILocation(line: 262, column: 2, scope: !2257)
!2310 = !DILocation(line: 263, column: 1, scope: !2257)
!2311 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2312, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!82, !135, !77, !75}
!2314 = !DILocalVariable(name: "dev", arg: 1, scope: !2311, file: !30, line: 215, type: !135)
!2315 = !DILocation(line: 215, column: 49, scope: !2311)
!2316 = !DILocalVariable(name: "size", arg: 2, scope: !2311, file: !30, line: 215, type: !77)
!2317 = !DILocation(line: 215, column: 61, scope: !2311)
!2318 = !DILocalVariable(name: "gfp", arg: 3, scope: !2311, file: !30, line: 215, type: !75)
!2319 = !DILocation(line: 215, column: 73, scope: !2311)
!2320 = !DILocation(line: 217, column: 22, scope: !2311)
!2321 = !DILocation(line: 217, column: 27, scope: !2311)
!2322 = !DILocation(line: 217, column: 33, scope: !2311)
!2323 = !DILocation(line: 217, column: 37, scope: !2311)
!2324 = !DILocation(line: 217, column: 9, scope: !2311)
!2325 = !DILocation(line: 217, column: 2, scope: !2311)
!2326 = distinct !DISubprogram(name: "array_size", scope: !2327, file: !2327, line: 263, type: !2328, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2327 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!77, !77, !77}
!2330 = !DILocalVariable(name: "a", arg: 1, scope: !2326, file: !2327, line: 263, type: !77)
!2331 = !DILocation(line: 263, column: 53, scope: !2326)
!2332 = !DILocalVariable(name: "b", arg: 2, scope: !2326, file: !2327, line: 263, type: !77)
!2333 = !DILocation(line: 263, column: 63, scope: !2326)
!2334 = !DILocalVariable(name: "bytes", scope: !2326, file: !2327, line: 265, type: !77)
!2335 = !DILocation(line: 265, column: 9, scope: !2326)
!2336 = !DILocalVariable(name: "__a", scope: !2337, file: !2327, line: 267, type: !77)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !2327, line: 267, column: 6)
!2338 = distinct !DILexicalBlock(scope: !2326, file: !2327, line: 267, column: 6)
!2339 = !DILocation(line: 267, column: 6, scope: !2337)
!2340 = !DILocalVariable(name: "__b", scope: !2337, file: !2327, line: 267, type: !77)
!2341 = !DILocalVariable(name: "__d", scope: !2337, file: !2327, line: 267, type: !2342)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2343 = !DILocation(line: 267, column: 6, scope: !2338)
!2344 = !DILocation(line: 267, column: 6, scope: !2326)
!2345 = !DILocation(line: 268, column: 3, scope: !2338)
!2346 = !DILocation(line: 270, column: 9, scope: !2326)
!2347 = !DILocation(line: 270, column: 2, scope: !2326)
!2348 = !DILocation(line: 271, column: 1, scope: !2326)
!2349 = distinct !DISubprogram(name: "ns2_led_register", scope: !3, file: !3, line: 175, type: !2350, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!97, !135, !1939, !84}
!2352 = !DILocalVariable(name: "dev", arg: 1, scope: !2349, file: !3, line: 175, type: !135)
!2353 = !DILocation(line: 175, column: 44, scope: !2349)
!2354 = !DILocalVariable(name: "node", arg: 2, scope: !2349, file: !3, line: 175, type: !1939)
!2355 = !DILocation(line: 175, column: 71, scope: !2349)
!2356 = !DILocalVariable(name: "led", arg: 3, scope: !2349, file: !3, line: 176, type: !84)
!2357 = !DILocation(line: 176, column: 24, scope: !2349)
!2358 = !DILocalVariable(name: "init_data", scope: !2349, file: !3, line: 178, type: !2359)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_init_data", file: !51, line: 36, size: 256, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2359, file: !51, line: 38, baseType: !1939, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "default_label", scope: !2359, file: !51, line: 45, baseType: !91, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "devicename", scope: !2359, file: !51, line: 51, baseType: !91, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "devname_mandatory", scope: !2359, file: !51, line: 57, baseType: !1031, size: 8, offset: 192)
!2365 = !DILocation(line: 178, column: 23, scope: !2349)
!2366 = !DILocalVariable(name: "modval", scope: !2349, file: !3, line: 179, type: !2122)
!2367 = !DILocation(line: 179, column: 25, scope: !2349)
!2368 = !DILocalVariable(name: "mode", scope: !2349, file: !3, line: 180, type: !57)
!2369 = !DILocation(line: 180, column: 21, scope: !2349)
!2370 = !DILocalVariable(name: "nmodes", scope: !2349, file: !3, line: 181, type: !97)
!2371 = !DILocation(line: 181, column: 6, scope: !2349)
!2372 = !DILocalVariable(name: "ret", scope: !2349, file: !3, line: 181, type: !97)
!2373 = !DILocation(line: 181, column: 14, scope: !2349)
!2374 = !DILocation(line: 183, column: 41, scope: !2349)
!2375 = !DILocation(line: 183, column: 46, scope: !2349)
!2376 = !DILocation(line: 184, column: 29, scope: !2349)
!2377 = !DILocation(line: 184, column: 13, scope: !2349)
!2378 = !DILocation(line: 183, column: 13, scope: !2349)
!2379 = !DILocation(line: 183, column: 2, scope: !2349)
!2380 = !DILocation(line: 183, column: 7, scope: !2349)
!2381 = !DILocation(line: 183, column: 11, scope: !2349)
!2382 = !DILocation(line: 185, column: 13, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 185, column: 6)
!2384 = !DILocation(line: 185, column: 18, scope: !2383)
!2385 = !DILocation(line: 185, column: 6, scope: !2383)
!2386 = !DILocation(line: 185, column: 6, scope: !2349)
!2387 = !DILocation(line: 186, column: 18, scope: !2383)
!2388 = !DILocation(line: 186, column: 23, scope: !2383)
!2389 = !DILocation(line: 186, column: 10, scope: !2383)
!2390 = !DILocation(line: 186, column: 3, scope: !2383)
!2391 = !DILocation(line: 188, column: 42, scope: !2349)
!2392 = !DILocation(line: 188, column: 47, scope: !2349)
!2393 = !DILocation(line: 190, column: 23, scope: !2349)
!2394 = !DILocation(line: 190, column: 7, scope: !2349)
!2395 = !DILocation(line: 188, column: 14, scope: !2349)
!2396 = !DILocation(line: 188, column: 2, scope: !2349)
!2397 = !DILocation(line: 188, column: 7, scope: !2349)
!2398 = !DILocation(line: 188, column: 12, scope: !2349)
!2399 = !DILocation(line: 191, column: 13, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 191, column: 6)
!2401 = !DILocation(line: 191, column: 18, scope: !2400)
!2402 = !DILocation(line: 191, column: 6, scope: !2400)
!2403 = !DILocation(line: 191, column: 6, scope: !2349)
!2404 = !DILocation(line: 192, column: 18, scope: !2400)
!2405 = !DILocation(line: 192, column: 23, scope: !2400)
!2406 = !DILocation(line: 192, column: 10, scope: !2400)
!2407 = !DILocation(line: 192, column: 3, scope: !2400)
!2408 = !DILocation(line: 194, column: 34, scope: !2349)
!2409 = !DILocation(line: 194, column: 8, scope: !2349)
!2410 = !DILocation(line: 194, column: 6, scope: !2349)
!2411 = !DILocation(line: 195, column: 6, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 195, column: 6)
!2413 = !DILocation(line: 195, column: 10, scope: !2412)
!2414 = !DILocation(line: 195, column: 14, scope: !2412)
!2415 = !DILocation(line: 195, column: 17, scope: !2412)
!2416 = !DILocation(line: 195, column: 21, scope: !2412)
!2417 = !DILocation(line: 195, column: 6, scope: !2349)
!2418 = !DILocation(line: 196, column: 3, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 195, column: 26)
!2420 = !DILocation(line: 197, column: 3, scope: !2419)
!2421 = !DILocation(line: 200, column: 11, scope: !2349)
!2422 = !DILocation(line: 200, column: 15, scope: !2349)
!2423 = !DILocation(line: 200, column: 9, scope: !2349)
!2424 = !DILocation(line: 201, column: 24, scope: !2349)
!2425 = !DILocation(line: 201, column: 29, scope: !2349)
!2426 = !DILocation(line: 201, column: 11, scope: !2349)
!2427 = !DILocation(line: 201, column: 9, scope: !2349)
!2428 = !DILocation(line: 202, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 202, column: 6)
!2430 = !DILocation(line: 202, column: 6, scope: !2349)
!2431 = !DILocation(line: 203, column: 3, scope: !2429)
!2432 = !DILocation(line: 205, column: 33, scope: !2349)
!2433 = !DILocation(line: 205, column: 60, scope: !2349)
!2434 = !DILocation(line: 205, column: 52, scope: !2349)
!2435 = !DILocation(line: 206, column: 12, scope: !2349)
!2436 = !DILocation(line: 206, column: 19, scope: !2349)
!2437 = !DILocation(line: 205, column: 2, scope: !2349)
!2438 = !DILocation(line: 208, column: 2, scope: !2349)
!2439 = !DILocation(line: 208, column: 2, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 208, column: 2)
!2441 = !DILocation(line: 210, column: 2, scope: !2349)
!2442 = !DILocation(line: 210, column: 7, scope: !2349)
!2443 = !DILocation(line: 210, column: 12, scope: !2349)
!2444 = !DILocation(line: 210, column: 22, scope: !2349)
!2445 = !DILocation(line: 211, column: 2, scope: !2349)
!2446 = !DILocation(line: 211, column: 7, scope: !2349)
!2447 = !DILocation(line: 211, column: 12, scope: !2349)
!2448 = !DILocation(line: 211, column: 18, scope: !2349)
!2449 = !DILocation(line: 212, column: 2, scope: !2349)
!2450 = !DILocation(line: 212, column: 7, scope: !2349)
!2451 = !DILocation(line: 212, column: 12, scope: !2349)
!2452 = !DILocation(line: 212, column: 19, scope: !2349)
!2453 = !DILocation(line: 213, column: 34, scope: !2349)
!2454 = !DILocation(line: 213, column: 39, scope: !2349)
!2455 = !DILocation(line: 213, column: 19, scope: !2349)
!2456 = !DILocation(line: 213, column: 44, scope: !2349)
!2457 = !DILocation(line: 213, column: 62, scope: !2349)
!2458 = !DILocation(line: 213, column: 67, scope: !2349)
!2459 = !DILocation(line: 213, column: 47, scope: !2349)
!2460 = !DILocation(line: 213, column: 2, scope: !2349)
!2461 = !DILocation(line: 213, column: 7, scope: !2349)
!2462 = !DILocation(line: 213, column: 17, scope: !2349)
!2463 = !DILocation(line: 214, column: 6, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 214, column: 6)
!2465 = !DILocation(line: 214, column: 11, scope: !2464)
!2466 = !DILocation(line: 214, column: 6, scope: !2349)
!2467 = !DILocation(line: 215, column: 3, scope: !2464)
!2468 = !DILocation(line: 215, column: 8, scope: !2464)
!2469 = !DILocation(line: 215, column: 13, scope: !2464)
!2470 = !DILocation(line: 215, column: 37, scope: !2464)
!2471 = !DILocation(line: 217, column: 3, scope: !2464)
!2472 = !DILocation(line: 217, column: 8, scope: !2464)
!2473 = !DILocation(line: 217, column: 13, scope: !2464)
!2474 = !DILocation(line: 217, column: 28, scope: !2464)
!2475 = !DILocation(line: 218, column: 19, scope: !2349)
!2476 = !DILocation(line: 218, column: 2, scope: !2349)
!2477 = !DILocation(line: 218, column: 7, scope: !2349)
!2478 = !DILocation(line: 218, column: 17, scope: !2349)
!2479 = !DILocation(line: 219, column: 16, scope: !2349)
!2480 = !DILocation(line: 219, column: 2, scope: !2349)
!2481 = !DILocation(line: 219, column: 7, scope: !2349)
!2482 = !DILocation(line: 219, column: 14, scope: !2349)
!2483 = !DILocation(line: 221, column: 25, scope: !2349)
!2484 = !DILocation(line: 221, column: 8, scope: !2349)
!2485 = !DILocation(line: 221, column: 6, scope: !2349)
!2486 = !DILocation(line: 222, column: 6, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 222, column: 6)
!2488 = !DILocation(line: 222, column: 10, scope: !2487)
!2489 = !DILocation(line: 222, column: 6, scope: !2349)
!2490 = !DILocation(line: 223, column: 10, scope: !2487)
!2491 = !DILocation(line: 223, column: 3, scope: !2487)
!2492 = !DILocation(line: 226, column: 15, scope: !2349)
!2493 = !DILocation(line: 226, column: 20, scope: !2349)
!2494 = !DILocation(line: 226, column: 14, scope: !2349)
!2495 = !DILocation(line: 226, column: 2, scope: !2349)
!2496 = !DILocation(line: 226, column: 7, scope: !2349)
!2497 = !DILocation(line: 226, column: 12, scope: !2349)
!2498 = !DILocation(line: 227, column: 26, scope: !2349)
!2499 = !DILocation(line: 227, column: 31, scope: !2349)
!2500 = !DILocation(line: 227, column: 25, scope: !2349)
!2501 = !DILocation(line: 227, column: 2, scope: !2349)
!2502 = !DILocation(line: 227, column: 7, scope: !2349)
!2503 = !DILocation(line: 227, column: 12, scope: !2349)
!2504 = !DILocation(line: 227, column: 23, scope: !2349)
!2505 = !DILocation(line: 229, column: 21, scope: !2349)
!2506 = !DILocation(line: 229, column: 12, scope: !2349)
!2507 = !DILocation(line: 229, column: 19, scope: !2349)
!2508 = !DILocation(line: 231, column: 39, scope: !2349)
!2509 = !DILocation(line: 231, column: 45, scope: !2349)
!2510 = !DILocation(line: 231, column: 50, scope: !2349)
!2511 = !DILocation(line: 231, column: 8, scope: !2349)
!2512 = !DILocation(line: 231, column: 6, scope: !2349)
!2513 = !DILocation(line: 232, column: 6, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 232, column: 6)
!2515 = !DILocation(line: 232, column: 6, scope: !2349)
!2516 = !DILocation(line: 233, column: 3, scope: !2514)
!2517 = !DILocation(line: 235, column: 9, scope: !2349)
!2518 = !DILocation(line: 235, column: 2, scope: !2349)
!2519 = !DILocation(line: 236, column: 1, scope: !2349)
!2520 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2327, file: !2327, line: 52, type: !2521, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!1031, !1031}
!2523 = !DILocalVariable(name: "overflow", arg: 1, scope: !2520, file: !2327, line: 52, type: !1031)
!2524 = !DILocation(line: 52, column: 60, scope: !2520)
!2525 = !DILocation(line: 54, column: 9, scope: !2520)
!2526 = !DILocation(line: 54, column: 2, scope: !2520)
!2527 = distinct !DISubprogram(name: "IS_ERR", scope: !2528, file: !2528, line: 34, type: !2529, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2528 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!1031, !1422}
!2531 = !DILocalVariable(name: "ptr", arg: 1, scope: !2527, file: !2528, line: 34, type: !1422)
!2532 = !DILocation(line: 34, column: 60, scope: !2527)
!2533 = !DILocation(line: 36, column: 9, scope: !2527)
!2534 = !DILocation(line: 36, column: 2, scope: !2527)
!2535 = distinct !DISubprogram(name: "PTR_ERR", scope: !2528, file: !2528, line: 29, type: !2536, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!83, !1422}
!2538 = !DILocalVariable(name: "ptr", arg: 1, scope: !2535, file: !2528, line: 29, type: !1422)
!2539 = !DILocation(line: 29, column: 61, scope: !2535)
!2540 = !DILocation(line: 31, column: 16, scope: !2535)
!2541 = !DILocation(line: 31, column: 9, scope: !2535)
!2542 = !DILocation(line: 31, column: 2, scope: !2535)
!2543 = distinct !DISubprogram(name: "fwnode_property_count_u32", scope: !2544, file: !2544, line: 221, type: !2545, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2544 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!97, !1957, !91}
!2547 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2543, file: !2544, line: 221, type: !1957)
!2548 = !DILocation(line: 221, column: 73, scope: !2543)
!2549 = !DILocalVariable(name: "propname", arg: 2, scope: !2543, file: !2544, line: 222, type: !91)
!2550 = !DILocation(line: 222, column: 22, scope: !2543)
!2551 = !DILocation(line: 224, column: 40, scope: !2543)
!2552 = !DILocation(line: 224, column: 48, scope: !2543)
!2553 = !DILocation(line: 224, column: 9, scope: !2543)
!2554 = !DILocation(line: 224, column: 2, scope: !2543)
!2555 = distinct !DISubprogram(name: "devm_kcalloc", scope: !30, file: !30, line: 229, type: !2556, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!82, !135, !77, !77, !75}
!2558 = !DILocalVariable(name: "dev", arg: 1, scope: !2555, file: !30, line: 229, type: !135)
!2559 = !DILocation(line: 229, column: 49, scope: !2555)
!2560 = !DILocalVariable(name: "n", arg: 2, scope: !2555, file: !30, line: 230, type: !77)
!2561 = !DILocation(line: 230, column: 13, scope: !2555)
!2562 = !DILocalVariable(name: "size", arg: 3, scope: !2555, file: !30, line: 230, type: !77)
!2563 = !DILocation(line: 230, column: 23, scope: !2555)
!2564 = !DILocalVariable(name: "flags", arg: 4, scope: !2555, file: !30, line: 230, type: !75)
!2565 = !DILocation(line: 230, column: 35, scope: !2555)
!2566 = !DILocation(line: 232, column: 28, scope: !2555)
!2567 = !DILocation(line: 232, column: 33, scope: !2555)
!2568 = !DILocation(line: 232, column: 36, scope: !2555)
!2569 = !DILocation(line: 232, column: 42, scope: !2555)
!2570 = !DILocation(line: 232, column: 48, scope: !2555)
!2571 = !DILocation(line: 232, column: 9, scope: !2555)
!2572 = !DILocation(line: 232, column: 2, scope: !2555)
!2573 = distinct !DISubprogram(name: "ns2_led_set_blocking", scope: !3, file: !3, line: 119, type: !106, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2574 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2573, file: !3, line: 119, type: !103)
!2575 = !DILocation(line: 119, column: 54, scope: !2573)
!2576 = !DILocalVariable(name: "value", arg: 2, scope: !2573, file: !3, line: 120, type: !50)
!2577 = !DILocation(line: 120, column: 24, scope: !2573)
!2578 = !DILocation(line: 122, column: 14, scope: !2573)
!2579 = !DILocation(line: 122, column: 24, scope: !2573)
!2580 = !DILocation(line: 122, column: 2, scope: !2573)
!2581 = !DILocation(line: 123, column: 2, scope: !2573)
!2582 = distinct !DISubprogram(name: "ns2_led_set", scope: !3, file: !3, line: 103, type: !101, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2583 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2582, file: !3, line: 103, type: !103)
!2584 = !DILocation(line: 103, column: 46, scope: !2582)
!2585 = !DILocalVariable(name: "value", arg: 2, scope: !2582, file: !3, line: 104, type: !50)
!2586 = !DILocation(line: 104, column: 24, scope: !2582)
!2587 = !DILocalVariable(name: "led", scope: !2582, file: !3, line: 106, type: !84)
!2588 = !DILocation(line: 106, column: 18, scope: !2582)
!2589 = !DILocalVariable(name: "__mptr", scope: !2590, file: !3, line: 106, type: !82)
!2590 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 106, column: 24)
!2591 = !DILocation(line: 106, column: 24, scope: !2590)
!2592 = !DILocation(line: 106, column: 24, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 106, column: 24)
!2594 = !DILocalVariable(name: "mode", scope: !2582, file: !3, line: 107, type: !57)
!2595 = !DILocation(line: 107, column: 21, scope: !2582)
!2596 = !DILocation(line: 109, column: 6, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 109, column: 6)
!2598 = !DILocation(line: 109, column: 12, scope: !2597)
!2599 = !DILocation(line: 109, column: 6, scope: !2582)
!2600 = !DILocation(line: 110, column: 8, scope: !2597)
!2601 = !DILocation(line: 110, column: 3, scope: !2597)
!2602 = !DILocation(line: 111, column: 11, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 111, column: 11)
!2604 = !DILocation(line: 111, column: 16, scope: !2603)
!2605 = !DILocation(line: 111, column: 11, scope: !2597)
!2606 = !DILocation(line: 112, column: 8, scope: !2603)
!2607 = !DILocation(line: 112, column: 3, scope: !2603)
!2608 = !DILocation(line: 114, column: 8, scope: !2603)
!2609 = !DILocation(line: 116, column: 19, scope: !2582)
!2610 = !DILocation(line: 116, column: 24, scope: !2582)
!2611 = !DILocation(line: 116, column: 2, scope: !2582)
!2612 = !DILocation(line: 117, column: 1, scope: !2582)
!2613 = distinct !DISubprogram(name: "ns2_led_get_mode", scope: !3, file: !3, line: 56, type: !2614, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!97, !84, !2616}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!2617 = !DILocalVariable(name: "led", arg: 1, scope: !2613, file: !3, line: 56, type: !84)
!2618 = !DILocation(line: 56, column: 45, scope: !2613)
!2619 = !DILocalVariable(name: "mode", arg: 2, scope: !2613, file: !3, line: 56, type: !2616)
!2620 = !DILocation(line: 56, column: 70, scope: !2613)
!2621 = !DILocalVariable(name: "i", scope: !2613, file: !3, line: 58, type: !97)
!2622 = !DILocation(line: 58, column: 6, scope: !2613)
!2623 = !DILocalVariable(name: "cmd_level", scope: !2613, file: !3, line: 59, type: !97)
!2624 = !DILocation(line: 59, column: 6, scope: !2613)
!2625 = !DILocalVariable(name: "slow_level", scope: !2613, file: !3, line: 60, type: !97)
!2626 = !DILocation(line: 60, column: 6, scope: !2613)
!2627 = !DILocation(line: 62, column: 39, scope: !2613)
!2628 = !DILocation(line: 62, column: 44, scope: !2613)
!2629 = !DILocation(line: 62, column: 14, scope: !2613)
!2630 = !DILocation(line: 62, column: 12, scope: !2613)
!2631 = !DILocation(line: 63, column: 40, scope: !2613)
!2632 = !DILocation(line: 63, column: 45, scope: !2613)
!2633 = !DILocation(line: 63, column: 15, scope: !2613)
!2634 = !DILocation(line: 63, column: 13, scope: !2613)
!2635 = !DILocation(line: 65, column: 9, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 65, column: 2)
!2637 = !DILocation(line: 65, column: 7, scope: !2636)
!2638 = !DILocation(line: 65, column: 14, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 65, column: 2)
!2640 = !DILocation(line: 65, column: 18, scope: !2639)
!2641 = !DILocation(line: 65, column: 23, scope: !2639)
!2642 = !DILocation(line: 65, column: 16, scope: !2639)
!2643 = !DILocation(line: 65, column: 2, scope: !2636)
!2644 = !DILocation(line: 66, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 66, column: 7)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 65, column: 39)
!2647 = !DILocation(line: 66, column: 20, scope: !2645)
!2648 = !DILocation(line: 66, column: 25, scope: !2645)
!2649 = !DILocation(line: 66, column: 32, scope: !2645)
!2650 = !DILocation(line: 66, column: 35, scope: !2645)
!2651 = !DILocation(line: 66, column: 17, scope: !2645)
!2652 = !DILocation(line: 66, column: 45, scope: !2645)
!2653 = !DILocation(line: 67, column: 7, scope: !2645)
!2654 = !DILocation(line: 67, column: 21, scope: !2645)
!2655 = !DILocation(line: 67, column: 26, scope: !2645)
!2656 = !DILocation(line: 67, column: 33, scope: !2645)
!2657 = !DILocation(line: 67, column: 36, scope: !2645)
!2658 = !DILocation(line: 67, column: 18, scope: !2645)
!2659 = !DILocation(line: 66, column: 7, scope: !2646)
!2660 = !DILocation(line: 68, column: 12, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 67, column: 48)
!2662 = !DILocation(line: 68, column: 17, scope: !2661)
!2663 = !DILocation(line: 68, column: 24, scope: !2661)
!2664 = !DILocation(line: 68, column: 27, scope: !2661)
!2665 = !DILocation(line: 68, column: 5, scope: !2661)
!2666 = !DILocation(line: 68, column: 10, scope: !2661)
!2667 = !DILocation(line: 69, column: 4, scope: !2661)
!2668 = !DILocation(line: 71, column: 2, scope: !2646)
!2669 = !DILocation(line: 65, column: 35, scope: !2639)
!2670 = !DILocation(line: 65, column: 2, scope: !2639)
!2671 = distinct !{!2671, !2643, !2672}
!2672 = !DILocation(line: 71, column: 2, scope: !2636)
!2673 = !DILocation(line: 73, column: 2, scope: !2613)
!2674 = !DILocation(line: 74, column: 1, scope: !2613)
!2675 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !30, file: !30, line: 219, type: !2556, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2676 = !DILocalVariable(name: "dev", arg: 1, scope: !2675, file: !30, line: 219, type: !135)
!2677 = !DILocation(line: 219, column: 55, scope: !2675)
!2678 = !DILocalVariable(name: "n", arg: 2, scope: !2675, file: !30, line: 220, type: !77)
!2679 = !DILocation(line: 220, column: 19, scope: !2675)
!2680 = !DILocalVariable(name: "size", arg: 3, scope: !2675, file: !30, line: 220, type: !77)
!2681 = !DILocation(line: 220, column: 29, scope: !2675)
!2682 = !DILocalVariable(name: "flags", arg: 4, scope: !2675, file: !30, line: 220, type: !75)
!2683 = !DILocation(line: 220, column: 41, scope: !2675)
!2684 = !DILocalVariable(name: "bytes", scope: !2675, file: !30, line: 222, type: !77)
!2685 = !DILocation(line: 222, column: 9, scope: !2675)
!2686 = !DILocalVariable(name: "__a", scope: !2687, file: !30, line: 224, type: !77)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !30, line: 224, column: 6)
!2688 = distinct !DILexicalBlock(scope: !2675, file: !30, line: 224, column: 6)
!2689 = !DILocation(line: 224, column: 6, scope: !2687)
!2690 = !DILocalVariable(name: "__b", scope: !2687, file: !30, line: 224, type: !77)
!2691 = !DILocalVariable(name: "__d", scope: !2687, file: !30, line: 224, type: !2342)
!2692 = !DILocation(line: 224, column: 6, scope: !2688)
!2693 = !DILocation(line: 224, column: 6, scope: !2675)
!2694 = !DILocation(line: 225, column: 3, scope: !2688)
!2695 = !DILocation(line: 227, column: 22, scope: !2675)
!2696 = !DILocation(line: 227, column: 27, scope: !2675)
!2697 = !DILocation(line: 227, column: 34, scope: !2675)
!2698 = !DILocation(line: 227, column: 9, scope: !2675)
!2699 = !DILocation(line: 227, column: 2, scope: !2675)
!2700 = !DILocation(line: 228, column: 1, scope: !2675)
!2701 = distinct !DISubprogram(name: "ns2_led_sata_show", scope: !3, file: !3, line: 158, type: !2235, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2702 = !DILocalVariable(name: "dev", arg: 1, scope: !2701, file: !3, line: 158, type: !135)
!2703 = !DILocation(line: 158, column: 49, scope: !2701)
!2704 = !DILocalVariable(name: "attr", arg: 2, scope: !2701, file: !3, line: 159, type: !2237)
!2705 = !DILocation(line: 159, column: 31, scope: !2701)
!2706 = !DILocalVariable(name: "buf", arg: 3, scope: !2701, file: !3, line: 159, type: !198)
!2707 = !DILocation(line: 159, column: 43, scope: !2701)
!2708 = !DILocalVariable(name: "led_cdev", scope: !2701, file: !3, line: 161, type: !103)
!2709 = !DILocation(line: 161, column: 23, scope: !2701)
!2710 = !DILocation(line: 161, column: 50, scope: !2701)
!2711 = !DILocation(line: 161, column: 34, scope: !2701)
!2712 = !DILocalVariable(name: "led", scope: !2701, file: !3, line: 162, type: !84)
!2713 = !DILocation(line: 162, column: 18, scope: !2701)
!2714 = !DILocalVariable(name: "__mptr", scope: !2715, file: !3, line: 162, type: !82)
!2715 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 162, column: 24)
!2716 = !DILocation(line: 162, column: 24, scope: !2715)
!2717 = !DILocation(line: 162, column: 24, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 162, column: 24)
!2719 = !DILocation(line: 164, column: 17, scope: !2701)
!2720 = !DILocation(line: 164, column: 30, scope: !2701)
!2721 = !DILocation(line: 164, column: 35, scope: !2701)
!2722 = !DILocation(line: 164, column: 9, scope: !2701)
!2723 = !DILocation(line: 164, column: 2, scope: !2701)
!2724 = distinct !DISubprogram(name: "ns2_led_sata_store", scope: !3, file: !3, line: 126, type: !2240, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2725 = !DILocalVariable(name: "dev", arg: 1, scope: !2724, file: !3, line: 126, type: !135)
!2726 = !DILocation(line: 126, column: 50, scope: !2724)
!2727 = !DILocalVariable(name: "attr", arg: 2, scope: !2724, file: !3, line: 127, type: !2237)
!2728 = !DILocation(line: 127, column: 32, scope: !2724)
!2729 = !DILocalVariable(name: "buff", arg: 3, scope: !2724, file: !3, line: 128, type: !91)
!2730 = !DILocation(line: 128, column: 19, scope: !2724)
!2731 = !DILocalVariable(name: "count", arg: 4, scope: !2724, file: !3, line: 128, type: !77)
!2732 = !DILocation(line: 128, column: 32, scope: !2724)
!2733 = !DILocalVariable(name: "led_cdev", scope: !2724, file: !3, line: 130, type: !103)
!2734 = !DILocation(line: 130, column: 23, scope: !2724)
!2735 = !DILocation(line: 130, column: 50, scope: !2724)
!2736 = !DILocation(line: 130, column: 34, scope: !2724)
!2737 = !DILocalVariable(name: "led", scope: !2724, file: !3, line: 131, type: !84)
!2738 = !DILocation(line: 131, column: 18, scope: !2724)
!2739 = !DILocalVariable(name: "__mptr", scope: !2740, file: !3, line: 131, type: !82)
!2740 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 131, column: 24)
!2741 = !DILocation(line: 131, column: 24, scope: !2740)
!2742 = !DILocation(line: 131, column: 24, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 131, column: 24)
!2744 = !DILocalVariable(name: "ret", scope: !2724, file: !3, line: 132, type: !97)
!2745 = !DILocation(line: 132, column: 6, scope: !2724)
!2746 = !DILocalVariable(name: "enable", scope: !2724, file: !3, line: 133, type: !81)
!2747 = !DILocation(line: 133, column: 16, scope: !2724)
!2748 = !DILocation(line: 135, column: 17, scope: !2724)
!2749 = !DILocation(line: 135, column: 8, scope: !2724)
!2750 = !DILocation(line: 135, column: 6, scope: !2724)
!2751 = !DILocation(line: 136, column: 6, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 136, column: 6)
!2753 = !DILocation(line: 136, column: 10, scope: !2752)
!2754 = !DILocation(line: 136, column: 6, scope: !2724)
!2755 = !DILocation(line: 137, column: 10, scope: !2752)
!2756 = !DILocation(line: 137, column: 3, scope: !2752)
!2757 = !DILocation(line: 139, column: 13, scope: !2724)
!2758 = !DILocation(line: 139, column: 12, scope: !2724)
!2759 = !DILocation(line: 139, column: 11, scope: !2724)
!2760 = !DILocation(line: 139, column: 9, scope: !2724)
!2761 = !DILocation(line: 141, column: 6, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 141, column: 6)
!2763 = !DILocation(line: 141, column: 11, scope: !2762)
!2764 = !DILocation(line: 141, column: 19, scope: !2762)
!2765 = !DILocation(line: 141, column: 16, scope: !2762)
!2766 = !DILocation(line: 141, column: 6, scope: !2724)
!2767 = !DILocation(line: 142, column: 3, scope: !2762)
!2768 = !DILocation(line: 144, column: 14, scope: !2724)
!2769 = !DILocation(line: 144, column: 2, scope: !2724)
!2770 = !DILocation(line: 144, column: 7, scope: !2724)
!2771 = !DILocation(line: 144, column: 12, scope: !2724)
!2772 = !DILocation(line: 146, column: 26, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 146, column: 6)
!2774 = !DILocation(line: 146, column: 7, scope: !2773)
!2775 = !DILocation(line: 146, column: 6, scope: !2724)
!2776 = !DILocation(line: 147, column: 3, scope: !2773)
!2777 = !DILocation(line: 149, column: 6, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 149, column: 6)
!2779 = !DILocation(line: 149, column: 6, scope: !2724)
!2780 = !DILocation(line: 150, column: 20, scope: !2778)
!2781 = !DILocation(line: 150, column: 3, scope: !2778)
!2782 = !DILocation(line: 152, column: 20, scope: !2778)
!2783 = !DILocation(line: 152, column: 3, scope: !2778)
!2784 = !DILabel(scope: !2724, name: "exit", file: !3, line: 154)
!2785 = !DILocation(line: 154, column: 1, scope: !2724)
!2786 = !DILocation(line: 155, column: 9, scope: !2724)
!2787 = !DILocation(line: 155, column: 2, scope: !2724)
!2788 = !DILocation(line: 156, column: 1, scope: !2724)
!2789 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2790, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!82, !1963}
!2792 = !DILocalVariable(name: "dev", arg: 1, scope: !2789, file: !30, line: 655, type: !1963)
!2793 = !DILocation(line: 655, column: 58, scope: !2789)
!2794 = !DILocation(line: 657, column: 9, scope: !2789)
!2795 = !DILocation(line: 657, column: 14, scope: !2789)
!2796 = !DILocation(line: 657, column: 2, scope: !2789)
!2797 = distinct !DISubprogram(name: "kstrtoul", scope: !2798, file: !2798, line: 351, type: !2799, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2798 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!97, !91, !7, !116}
!2801 = !DILocalVariable(name: "s", arg: 1, scope: !2797, file: !2798, line: 351, type: !91)
!2802 = !DILocation(line: 351, column: 53, scope: !2797)
!2803 = !DILocalVariable(name: "base", arg: 2, scope: !2797, file: !2798, line: 351, type: !7)
!2804 = !DILocation(line: 351, column: 69, scope: !2797)
!2805 = !DILocalVariable(name: "res", arg: 3, scope: !2797, file: !2798, line: 351, type: !116)
!2806 = !DILocation(line: 351, column: 90, scope: !2797)
!2807 = !DILocation(line: 359, column: 20, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2797, file: !2798, line: 357, column: 6)
!2809 = !DILocation(line: 359, column: 23, scope: !2808)
!2810 = !DILocation(line: 359, column: 51, scope: !2808)
!2811 = !DILocation(line: 359, column: 10, scope: !2808)
!2812 = !DILocation(line: 359, column: 3, scope: !2808)
!2813 = distinct !DISubprogram(name: "led_get_brightness", scope: !2814, file: !2814, line: 15, type: !132, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2814 = !DIFile(filename: "drivers/leds/leds.h", directory: "/home/lizy2001/genbc/linux")
!2815 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2813, file: !2814, line: 15, type: !103)
!2816 = !DILocation(line: 15, column: 59, scope: !2813)
!2817 = !DILocation(line: 17, column: 9, scope: !2813)
!2818 = !DILocation(line: 17, column: 19, scope: !2813)
!2819 = !DILocation(line: 17, column: 2, scope: !2813)
!2820 = distinct !DISubprogram(name: "ns2_led_set_mode", scope: !3, file: !3, line: 76, type: !2821, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !84, !57}
!2823 = !DILocalVariable(name: "led", arg: 1, scope: !2820, file: !3, line: 76, type: !84)
!2824 = !DILocation(line: 76, column: 46, scope: !2820)
!2825 = !DILocalVariable(name: "mode", arg: 2, scope: !2820, file: !3, line: 76, type: !57)
!2826 = !DILocation(line: 76, column: 70, scope: !2820)
!2827 = !DILocalVariable(name: "i", scope: !2820, file: !3, line: 78, type: !97)
!2828 = !DILocation(line: 78, column: 6, scope: !2820)
!2829 = !DILocalVariable(name: "flags", scope: !2820, file: !3, line: 79, type: !81)
!2830 = !DILocation(line: 79, column: 16, scope: !2820)
!2831 = !DILocation(line: 81, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 81, column: 2)
!2833 = !DILocation(line: 81, column: 7, scope: !2832)
!2834 = !DILocation(line: 81, column: 14, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 81, column: 2)
!2836 = !DILocation(line: 81, column: 18, scope: !2835)
!2837 = !DILocation(line: 81, column: 23, scope: !2835)
!2838 = !DILocation(line: 81, column: 16, scope: !2835)
!2839 = !DILocation(line: 81, column: 2, scope: !2832)
!2840 = !DILocation(line: 82, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 82, column: 7)
!2842 = !DILocation(line: 82, column: 15, scope: !2841)
!2843 = !DILocation(line: 82, column: 20, scope: !2841)
!2844 = !DILocation(line: 82, column: 27, scope: !2841)
!2845 = !DILocation(line: 82, column: 30, scope: !2841)
!2846 = !DILocation(line: 82, column: 12, scope: !2841)
!2847 = !DILocation(line: 82, column: 7, scope: !2835)
!2848 = !DILocation(line: 83, column: 4, scope: !2841)
!2849 = !DILocation(line: 81, column: 35, scope: !2835)
!2850 = !DILocation(line: 81, column: 2, scope: !2835)
!2851 = distinct !{!2851, !2839, !2852}
!2852 = !DILocation(line: 83, column: 4, scope: !2832)
!2853 = !DILocation(line: 85, column: 6, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 85, column: 6)
!2855 = !DILocation(line: 85, column: 11, scope: !2854)
!2856 = !DILocation(line: 85, column: 16, scope: !2854)
!2857 = !DILocation(line: 85, column: 8, scope: !2854)
!2858 = !DILocation(line: 85, column: 6, scope: !2820)
!2859 = !DILocation(line: 86, column: 3, scope: !2854)
!2860 = !DILocation(line: 88, column: 2, scope: !2820)
!2861 = !DILocalVariable(name: "__dummy", scope: !2862, file: !3, line: 88, type: !81)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 88, column: 2)
!2863 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 88, column: 2)
!2864 = !DILocation(line: 88, column: 2, scope: !2862)
!2865 = !DILocalVariable(name: "__dummy2", scope: !2862, file: !3, line: 88, type: !81)
!2866 = !DILocation(line: 88, column: 2, scope: !2863)
!2867 = !DILocation(line: 88, column: 2, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 88, column: 2)
!2869 = !DILocation(line: 88, column: 2, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 88, column: 2)
!2871 = !DILocalVariable(name: "__dummy", scope: !2872, file: !3, line: 88, type: !81)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 88, column: 2)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 88, column: 2)
!2874 = !DILocation(line: 88, column: 2, scope: !2872)
!2875 = !DILocalVariable(name: "__dummy2", scope: !2872, file: !3, line: 88, type: !81)
!2876 = !DILocation(line: 88, column: 2, scope: !2873)
!2877 = !DILocation(line: 88, column: 2, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 88, column: 2)
!2879 = !{i32 -2143381840}
!2880 = !DILocation(line: 88, column: 2, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 88, column: 2)
!2882 = !DILocation(line: 90, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 90, column: 6)
!2884 = !DILocation(line: 90, column: 12, scope: !2883)
!2885 = !DILocation(line: 90, column: 6, scope: !2820)
!2886 = !DILocation(line: 91, column: 19, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 90, column: 23)
!2888 = !DILocation(line: 91, column: 24, scope: !2887)
!2889 = !DILocation(line: 91, column: 29, scope: !2887)
!2890 = !DILocation(line: 91, column: 34, scope: !2887)
!2891 = !DILocation(line: 91, column: 41, scope: !2887)
!2892 = !DILocation(line: 91, column: 44, scope: !2887)
!2893 = !DILocation(line: 91, column: 3, scope: !2887)
!2894 = !DILocation(line: 92, column: 19, scope: !2887)
!2895 = !DILocation(line: 92, column: 24, scope: !2887)
!2896 = !DILocation(line: 92, column: 30, scope: !2887)
!2897 = !DILocation(line: 92, column: 35, scope: !2887)
!2898 = !DILocation(line: 92, column: 42, scope: !2887)
!2899 = !DILocation(line: 92, column: 45, scope: !2887)
!2900 = !DILocation(line: 92, column: 3, scope: !2887)
!2901 = !DILocation(line: 93, column: 3, scope: !2887)
!2902 = !DILocation(line: 96, column: 27, scope: !2820)
!2903 = !DILocation(line: 96, column: 32, scope: !2820)
!2904 = !DILocation(line: 96, column: 37, scope: !2820)
!2905 = !DILocation(line: 96, column: 42, scope: !2820)
!2906 = !DILocation(line: 96, column: 49, scope: !2820)
!2907 = !DILocation(line: 96, column: 52, scope: !2820)
!2908 = !DILocation(line: 96, column: 2, scope: !2820)
!2909 = !DILocation(line: 97, column: 27, scope: !2820)
!2910 = !DILocation(line: 97, column: 32, scope: !2820)
!2911 = !DILocation(line: 97, column: 38, scope: !2820)
!2912 = !DILocation(line: 97, column: 43, scope: !2820)
!2913 = !DILocation(line: 97, column: 50, scope: !2820)
!2914 = !DILocation(line: 97, column: 53, scope: !2820)
!2915 = !DILocation(line: 97, column: 2, scope: !2820)
!2916 = !DILabel(scope: !2820, name: "exit_unlock", file: !3, line: 99)
!2917 = !DILocation(line: 99, column: 1, scope: !2820)
!2918 = !DILocation(line: 100, column: 2, scope: !2820)
!2919 = !DILocalVariable(name: "__dummy", scope: !2920, file: !3, line: 100, type: !81)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 100, column: 2)
!2921 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 100, column: 2)
!2922 = !DILocation(line: 100, column: 2, scope: !2920)
!2923 = !DILocalVariable(name: "__dummy2", scope: !2920, file: !3, line: 100, type: !81)
!2924 = !DILocation(line: 100, column: 2, scope: !2921)
!2925 = !DILocation(line: 100, column: 2, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 100, column: 2)
!2927 = !DILocation(line: 100, column: 2, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 100, column: 2)
!2929 = !DILocalVariable(name: "__dummy", scope: !2930, file: !3, line: 100, type: !81)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 100, column: 2)
!2931 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 100, column: 2)
!2932 = !DILocation(line: 100, column: 2, scope: !2930)
!2933 = !DILocalVariable(name: "__dummy2", scope: !2930, file: !3, line: 100, type: !81)
!2934 = !DILocation(line: 100, column: 2, scope: !2931)
!2935 = !DILocation(line: 100, column: 2, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 100, column: 2)
!2937 = !{i32 -2143380998}
!2938 = !DILocation(line: 100, column: 2, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 100, column: 2)
!2940 = !DILocation(line: 101, column: 1, scope: !2820)
!2941 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2942, file: !2942, line: 666, type: !2943, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2942 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!81}
!2945 = !DILocalVariable(name: "f", scope: !2941, file: !2942, line: 668, type: !81)
!2946 = !DILocation(line: 668, column: 16, scope: !2941)
!2947 = !DILocation(line: 670, column: 6, scope: !2941)
!2948 = !DILocation(line: 670, column: 4, scope: !2941)
!2949 = !DILocation(line: 671, column: 2, scope: !2941)
!2950 = !DILocation(line: 672, column: 9, scope: !2941)
!2951 = !DILocation(line: 672, column: 2, scope: !2941)
!2952 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2942, file: !2942, line: 651, type: !2953, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !81}
!2955 = !DILocalVariable(name: "f", arg: 1, scope: !2952, file: !2942, line: 651, type: !81)
!2956 = !DILocation(line: 651, column: 65, scope: !2952)
!2957 = !DILocalVariable(name: "__edi", scope: !2958, file: !2942, line: 653, type: !81)
!2958 = distinct !DILexicalBlock(scope: !2952, file: !2942, line: 653, column: 2)
!2959 = !DILocation(line: 653, column: 2, scope: !2958)
!2960 = !DILocalVariable(name: "__esi", scope: !2958, file: !2942, line: 653, type: !81)
!2961 = !DILocalVariable(name: "__edx", scope: !2958, file: !2942, line: 653, type: !81)
!2962 = !DILocalVariable(name: "__ecx", scope: !2958, file: !2942, line: 653, type: !81)
!2963 = !DILocalVariable(name: "__eax", scope: !2958, file: !2942, line: 653, type: !81)
!2964 = !{i32 -2145751683, i32 -2145750933, i32 -2145750699, i32 -2145750648, i32 -2145750620, i32 -2145750595, i32 -2145750911, i32 -2145750898, i32 -2145750460, i32 -2145750341, i32 -2145750806, i32 -2145750779, i32 -2145750751, i32 -2145750721}
!2965 = !DILocation(line: 654, column: 1, scope: !2952)
!2966 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2942, file: !2942, line: 646, type: !2943, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2967 = !DILocalVariable(name: "__ret", scope: !2968, file: !2942, line: 648, type: !81)
!2968 = distinct !DILexicalBlock(scope: !2966, file: !2942, line: 648, column: 9)
!2969 = !DILocation(line: 648, column: 9, scope: !2968)
!2970 = !DILocalVariable(name: "__edi", scope: !2968, file: !2942, line: 648, type: !81)
!2971 = !DILocalVariable(name: "__esi", scope: !2968, file: !2942, line: 648, type: !81)
!2972 = !DILocalVariable(name: "__edx", scope: !2968, file: !2942, line: 648, type: !81)
!2973 = !DILocalVariable(name: "__ecx", scope: !2968, file: !2942, line: 648, type: !81)
!2974 = !DILocalVariable(name: "__eax", scope: !2968, file: !2942, line: 648, type: !81)
!2975 = !DILocation(line: 648, column: 9, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !2942, line: 648, column: 9)
!2977 = distinct !DILexicalBlock(scope: !2968, file: !2942, line: 648, column: 9)
!2978 = !{i32 -2145756150, i32 -2145753835, i32 -2145753601, i32 -2145753550, i32 -2145753522, i32 -2145753497, i32 -2145753813, i32 -2145753800, i32 -2145753362, i32 -2145753243, i32 -2145753708, i32 -2145753681, i32 -2145753653, i32 -2145753623}
!2979 = !DILocalVariable(name: "__mask", scope: !2980, file: !2942, line: 648, type: !81)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !2942, line: 648, column: 9)
!2981 = !DILocation(line: 648, column: 9, scope: !2980)
!2982 = !DILocation(line: 648, column: 9, scope: !2977)
!2983 = !DILocation(line: 648, column: 2, scope: !2966)
!2984 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2942, file: !2942, line: 656, type: !2135, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !171)
!2985 = !DILocalVariable(name: "__edi", scope: !2986, file: !2942, line: 658, type: !81)
!2986 = distinct !DILexicalBlock(scope: !2984, file: !2942, line: 658, column: 2)
!2987 = !DILocation(line: 658, column: 2, scope: !2986)
!2988 = !DILocalVariable(name: "__esi", scope: !2986, file: !2942, line: 658, type: !81)
!2989 = !DILocalVariable(name: "__edx", scope: !2986, file: !2942, line: 658, type: !81)
!2990 = !DILocalVariable(name: "__ecx", scope: !2986, file: !2942, line: 658, type: !81)
!2991 = !DILocalVariable(name: "__eax", scope: !2986, file: !2942, line: 658, type: !81)
!2992 = !{i32 -2145749056, i32 -2145748324, i32 -2145748090, i32 -2145748039, i32 -2145748011, i32 -2145747986, i32 -2145748302, i32 -2145748289, i32 -2145747851, i32 -2145747732, i32 -2145748197, i32 -2145748170, i32 -2145748142, i32 -2145748112}
!2993 = !DILocation(line: 659, column: 1, scope: !2984)
