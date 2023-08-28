; ModuleID = '../bcout/drivers/mtd/devices/spear_smi.llvm.bc'
source_filename = "drivers/mtd/devices/spear_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_spear_smi_driver_init6:\09\09\09"
module asm ".long\09spear_smi_driver_init - .\09\09\09"
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
%struct.flash_device = type { i8*, i8, i32, i32, i64, i64 }
%struct.spear_smi_plat_data = type { i64, i32, %struct.spear_smi_flash_info*, [4 x %struct.device_node*] }
%struct.spear_smi_flash_info = type { i8*, i64, i64, %struct.mtd_partition*, i32, i8 }
%struct.mtd_partition = type { i8*, i8**, i64, i64, i32, i32, %struct.device_node* }
%struct.spear_smi = type { %struct.clk*, i32, i64, %struct.mutex, i8*, %struct.platform_device*, %struct.wait_queue_head, i32, [4 x %struct.spear_snor_flash*] }
%struct.clk = type opaque
%struct.spear_snor_flash = type { i32, i32, %struct.mutex, %struct.mtd_info, i32, %struct.mtd_partition*, i32, i8*, i8, i8 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.mtd_ooblayout_ops*, %struct.mtd_pairing_scheme*, i32, i32, i32, %struct.mtd_erase_region_info*, i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, i8*, %struct.module*, %struct.device, i32, %struct.mtd_debug_info, %struct.nvmem_device*, %struct.mtd_info*, %struct.list_head, %union.anon.38 }
%struct.mtd_ooblayout_ops = type { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* }
%struct.mtd_oob_region = type { i32, i32 }
%struct.mtd_pairing_scheme = type { i32, i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)*, i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)* }
%struct.mtd_pairing_info = type { i32, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, i64* }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_ops = type { i32, i64, i64, i64, i64, i32, i8*, i8* }
%struct.otp_info = type { i32, i32, i32 }
%struct.kvec = type { i8*, i64 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { %struct.dentry*, i8*, i8* }
%struct.dentry = type opaque
%struct.nvmem_device = type opaque
%union.anon.38 = type { %struct.mtd_part }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_part_parser_data = type { i64 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__UNIQUE_ID___addressable_spear_smi_driver_init165 = internal global i8* bitcast (i32 ()* @spear_smi_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@spear_smi_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @spear_smi_probe, i32 (%struct.platform_device*)* @spear_smi_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.bus_type* @platform_bus_type, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @spear_smi_id_table, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @spear_smi_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2332
@__exitcall_spear_smi_driver_exit = internal global void ()* @spear_smi_driver_exit, section ".exitcall.exit", align 8, !dbg !2307
@__UNIQUE_ID_file166 = internal constant [45 x i8] c"spear_smi.file=drivers/mtd/devices/spear_smi\00", section ".modinfo", align 1, !dbg !2314
@__UNIQUE_ID_license167 = internal constant [22 x i8] c"spear_smi.license=GPL\00", section ".modinfo", align 1, !dbg !2319
@__UNIQUE_ID_author168 = internal constant [83 x i8] c"spear_smi.author=Ashish Priyadarshi, Shiraz Hashim <shiraz.linux.kernel@gmail.com>\00", section ".modinfo", align 1, !dbg !2324
@__UNIQUE_ID_description169 = internal constant [64 x i8] c"spear_smi.description=MTD SMI driver for serial nor flash chips\00", section ".modinfo", align 1, !dbg !2329
@.str = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 8
@spear_smi_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear600-smi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2414
@spear_smi_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @spear_smi_suspend, i32 (%struct.device*)* @spear_smi_resume, i32 (%struct.device*)* @spear_smi_suspend, i32 (%struct.device*)* @spear_smi_resume, i32 (%struct.device*)* @spear_smi_suspend, i32 (%struct.device*)* @spear_smi_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2417
@.str.1 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"exceeding max number of flashes\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SMI IRQ allocation failed\0A\00", align 1
@spear_smi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2391
@.str.4 = private unnamed_addr constant [11 x i8] c"&dev->lock\00", align 1
@spear_smi_probe.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2394
@.str.6 = private unnamed_addr constant [19 x i8] c"&dev->cmd_complete\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"bank setup failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"clock-rate\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"st,smi-fast-mode\00", align 1
@spear_smi_setup_banks.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2396
@.str.11 = private unnamed_addr constant [13 x i8] c"&flash->lock\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"smi-nor%d not found\0A\00", align 1
@flash_devices = internal global [34 x %struct.flash_device] [%struct.flash_device { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8 -40, i32 1384480, i32 256, i64 65536, i64 2097152 }, %struct.flash_device { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8 -40, i32 1450016, i32 256, i64 65536, i64 4194304 }, %struct.flash_device { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8 -40, i32 1515552, i32 256, i64 65536, i64 8388608 }, %struct.flash_device { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8 -40, i32 1581088, i32 256, i64 262144, i64 16777216 }, %struct.flash_device { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8 -40, i32 1056800, i32 128, i64 32768, i64 65536 }, %struct.flash_device { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8 -40, i32 1122336, i32 128, i64 32768, i64 131072 }, %struct.flash_device { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8 -40, i32 1187872, i32 256, i64 65536, i64 262144 }, %struct.flash_device { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8 -40, i32 1253408, i32 256, i64 65536, i64 524288 }, %struct.flash_device { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8 -40, i32 1318944, i32 256, i64 65536, i64 1048576 }, %struct.flash_device { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8 -40, i32 1130528, i32 256, i64 65536, i64 131072 }, %struct.flash_device { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8 -40, i32 1196064, i32 256, i64 65536, i64 262144 }, %struct.flash_device { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8 -40, i32 1261600, i32 256, i64 65536, i64 524288 }, %struct.flash_device { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8 -40, i32 1327136, i32 256, i64 65536, i64 1048576 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8 -40, i32 1180161, i32 256, i64 65536, i64 524288 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8 -40, i32 1245697, i32 256, i64 65536, i64 1048576 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8 -40, i32 1311233, i32 256, i64 65536, i64 2097152 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8 -40, i32 1376769, i32 256, i64 65536, i64 4194304 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8 -40, i32 1442305, i32 256, i64 65536, i64 8388608 }, %struct.flash_device { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8 82, i32 6619167, i32 128, i64 32768, i64 65536 }, %struct.flash_device { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8 82, i32 6291487, i32 256, i64 32768, i64 131072 }, %struct.flash_device { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8 82, i32 6488095, i32 256, i64 65536, i64 262144 }, %struct.flash_device { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8 82, i32 6553631, i32 256, i64 65536, i64 524288 }, %struct.flash_device { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8 -41, i32 288287, i32 256, i64 65536, i64 524288 }, %struct.flash_device { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8 -40, i32 1056962, i32 16, i64 65536, i64 65536 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8 -40, i32 1122498, i32 16, i64 65536, i64 131072 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8 -40, i32 1188034, i32 16, i64 65536, i64 262144 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8 -40, i32 1253570, i32 16, i64 65536, i64 524288 }, %struct.flash_device { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8 -40, i32 1253570, i32 16, i64 65536, i64 524288 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8 -40, i32 1319106, i32 16, i64 65536, i64 1048576 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8 -40, i32 1384642, i32 256, i64 65536, i64 2097152 }, %struct.flash_device { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i8 -40, i32 1384642, i32 16, i64 65536, i64 2097152 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8 -40, i32 1450178, i32 256, i64 65536, i64 4194304 }, %struct.flash_device { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i8 -40, i32 1450178, i32 256, i64 65536, i64 4194304 }, %struct.flash_device { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8 -40, i32 1515714, i32 256, i64 65536, i64 8388608 }], align 16, !dbg !2401
@.str.13 = private unnamed_addr constant [32 x i8] c"mtd .name=%s .size=%llx(%lluM)\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c".erasesize = 0x%x(%uK)\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Err MTD partition=%d\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.16 = private unnamed_addr constant [32 x i8] c"drivers/mtd/devices/spear_smi.c\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"smi controller is busy, timeout\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"st m25p16\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"st m25p32\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"st m25p64\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"st m25p128\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"st m25p05\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"st m25p10\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"st m25p20\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"st m25p40\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"st m25p80\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"st m45pe10\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"st m45pe20\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"st m45pe40\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"st m45pe80\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"sp s25fl004\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"sp s25fl008\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"sp s25fl016\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"sp s25fl032\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"sp s25fl064\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"atmel 25f512\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"atmel 25f1024\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"atmel 25f2048\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"atmel 25f4096\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"atmel 25fs040\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"mac 25l512\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"mac 25l1005\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"mac 25l2005\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"mac 25l4005\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"mac 25l4005a\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"mac 25l8005\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"mac 25l1605\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"mac 25l1605a\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"mac 25l3205\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"mac 25l3205a\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"mac 25l6405\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Invalid Bank Num\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"sector erase failed\0A\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"smi controller failed on write enable\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"couldn't enable write\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"dev is null\0A\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"error removing mtd\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_spear_smi_driver_init165 to i8*), i8* bitcast (void ()* @spear_smi_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_spear_smi_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file166, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license167, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__UNIQUE_ID_author168, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_description169, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_driver_init() #0 section ".init.text" !dbg !2424 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @spear_smi_driver, %struct.module* null) #7, !dbg !2427
  ret i32 %call, !dbg !2427
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @spear_smi_driver_exit() #0 section ".exit.text" !dbg !2428 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @spear_smi_driver) #7, !dbg !2429
  ret void, !dbg !2429
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_probe(%struct.platform_device* %pdev) #2 !dbg !2393 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %np = alloca %struct.device_node*, align 8
  %pdata = alloca %struct.spear_smi_plat_data*, align 8
  %dev1 = alloca %struct.spear_smi*, align 8
  %smi_base = alloca %struct.resource*, align 8
  %irq = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2430, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2432, metadata !DIExpression()), !dbg !2433
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2434
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2435
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !2436
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2436
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !2433
  call void @llvm.dbg.declare(metadata %struct.spear_smi_plat_data** %pdata, metadata !2437, metadata !DIExpression()), !dbg !2456
  store %struct.spear_smi_plat_data* null, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2456
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev1, metadata !2457, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.declare(metadata %struct.resource** %smi_base, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2479, metadata !DIExpression()), !dbg !2480
  store i32 0, i32* %ret, align 4, !dbg !2480
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2481, metadata !DIExpression()), !dbg !2482
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2483
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !2483
  br i1 %tobool, label %if.then, label %if.else, !dbg !2485

if.then:                                          ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2486
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 3, !dbg !2488
  %call = call i8* @devm_kzalloc(%struct.device* %dev2, i64 56, i32 3264) #7, !dbg !2489
  %4 = bitcast i8* %call to %struct.spear_smi_plat_data*, !dbg !2489
  store %struct.spear_smi_plat_data* %4, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2490
  %5 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2491
  %tobool3 = icmp ne %struct.spear_smi_plat_data* %5, null, !dbg !2491
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2493

if.then4:                                         ; preds = %if.then
  store i32 -12, i32* %ret, align 4, !dbg !2494
  br label %err, !dbg !2496

if.end:                                           ; preds = %if.then
  %6 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2497
  %7 = bitcast %struct.spear_smi_plat_data* %6 to i8*, !dbg !2497
  %8 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2498
  %dev5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 3, !dbg !2499
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 7, !dbg !2500
  store i8* %7, i8** %platform_data, align 8, !dbg !2501
  %9 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2502
  %10 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2503
  %call6 = call i32 @spear_smi_probe_config_dt(%struct.platform_device* %9, %struct.device_node* %10) #7, !dbg !2504
  store i32 %call6, i32* %ret, align 4, !dbg !2505
  %11 = load i32, i32* %ret, align 4, !dbg !2506
  %tobool7 = icmp ne i32 %11, 0, !dbg !2506
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !2508

if.then8:                                         ; preds = %if.end
  store i32 -19, i32* %ret, align 4, !dbg !2509
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2511
  %dev9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3, !dbg !2511
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2511
  br label %err, !dbg !2512

if.end10:                                         ; preds = %if.end
  br label %if.end17, !dbg !2513

if.else:                                          ; preds = %entry
  %13 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2514
  %dev11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 3, !dbg !2516
  %call12 = call i8* @dev_get_platdata(%struct.device* %dev11) #7, !dbg !2517
  %14 = bitcast i8* %call12 to %struct.spear_smi_plat_data*, !dbg !2517
  store %struct.spear_smi_plat_data* %14, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2518
  %15 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2519
  %tobool13 = icmp ne %struct.spear_smi_plat_data* %15, null, !dbg !2519
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !2521

if.then14:                                        ; preds = %if.else
  store i32 -19, i32* %ret, align 4, !dbg !2522
  %16 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2524
  %dev15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 3, !dbg !2524
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2524
  br label %err, !dbg !2525

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end10
  %17 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2526
  %call18 = call i32 @platform_get_irq(%struct.platform_device* %17, i32 0) #7, !dbg !2527
  store i32 %call18, i32* %irq, align 4, !dbg !2528
  %18 = load i32, i32* %irq, align 4, !dbg !2529
  %cmp = icmp slt i32 %18, 0, !dbg !2531
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !2532

if.then19:                                        ; preds = %if.end17
  store i32 -19, i32* %ret, align 4, !dbg !2533
  br label %err, !dbg !2535

if.end20:                                         ; preds = %if.end17
  %19 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2536
  %dev21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 3, !dbg !2537
  %call22 = call i8* @devm_kzalloc(%struct.device* %dev21, i64 120, i32 2592) #7, !dbg !2538
  %20 = bitcast i8* %call22 to %struct.spear_smi*, !dbg !2538
  store %struct.spear_smi* %20, %struct.spear_smi** %dev1, align 8, !dbg !2539
  %21 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2540
  %tobool23 = icmp ne %struct.spear_smi* %21, null, !dbg !2540
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !2542

if.then24:                                        ; preds = %if.end20
  store i32 -12, i32* %ret, align 4, !dbg !2543
  br label %err, !dbg !2545

if.end25:                                         ; preds = %if.end20
  %22 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2546
  %call26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 512, i32 0) #7, !dbg !2547
  store %struct.resource* %call26, %struct.resource** %smi_base, align 8, !dbg !2548
  %23 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2549
  %dev27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 3, !dbg !2550
  %24 = load %struct.resource*, %struct.resource** %smi_base, align 8, !dbg !2551
  %call28 = call i8* @devm_ioremap_resource(%struct.device* %dev27, %struct.resource* %24) #7, !dbg !2552
  %25 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2553
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %25, i32 0, i32 4, !dbg !2554
  store i8* %call28, i8** %io_base, align 8, !dbg !2555
  %26 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2556
  %io_base29 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %26, i32 0, i32 4, !dbg !2558
  %27 = load i8*, i8** %io_base29, align 8, !dbg !2558
  %call30 = call zeroext i1 @IS_ERR(i8* %27) #7, !dbg !2559
  br i1 %call30, label %if.then31, label %if.end34, !dbg !2560

if.then31:                                        ; preds = %if.end25
  %28 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2561
  %io_base32 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %28, i32 0, i32 4, !dbg !2563
  %29 = load i8*, i8** %io_base32, align 8, !dbg !2563
  %call33 = call i64 @PTR_ERR(i8* %29) #7, !dbg !2564
  %conv = trunc i64 %call33 to i32, !dbg !2564
  store i32 %conv, i32* %ret, align 4, !dbg !2565
  br label %err, !dbg !2566

if.end34:                                         ; preds = %if.end25
  %30 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2567
  %31 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2568
  %pdev35 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %31, i32 0, i32 5, !dbg !2569
  store %struct.platform_device* %30, %struct.platform_device** %pdev35, align 8, !dbg !2570
  %32 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2571
  %clk_rate = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %32, i32 0, i32 0, !dbg !2572
  %33 = load i64, i64* %clk_rate, align 8, !dbg !2572
  %34 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2573
  %clk_rate36 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %34, i32 0, i32 2, !dbg !2574
  store i64 %33, i64* %clk_rate36, align 8, !dbg !2575
  %35 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2576
  %clk_rate37 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %35, i32 0, i32 2, !dbg !2578
  %36 = load i64, i64* %clk_rate37, align 8, !dbg !2578
  %cmp38 = icmp ugt i64 %36, 50000000, !dbg !2579
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !2580

if.then40:                                        ; preds = %if.end34
  %37 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2581
  %clk_rate41 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %37, i32 0, i32 2, !dbg !2582
  store i64 50000000, i64* %clk_rate41, align 8, !dbg !2583
  br label %if.end42, !dbg !2581

if.end42:                                         ; preds = %if.then40, %if.end34
  %38 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2584
  %num_flashes = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %38, i32 0, i32 1, !dbg !2585
  %39 = load i32, i32* %num_flashes, align 8, !dbg !2585
  %40 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2586
  %num_flashes43 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %40, i32 0, i32 7, !dbg !2587
  store i32 %39, i32* %num_flashes43, align 8, !dbg !2588
  %41 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2589
  %num_flashes44 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %41, i32 0, i32 7, !dbg !2591
  %42 = load i32, i32* %num_flashes44, align 8, !dbg !2591
  %cmp45 = icmp ugt i32 %42, 4, !dbg !2592
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !2593

if.then47:                                        ; preds = %if.end42
  %43 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2594
  %dev48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 3, !dbg !2594
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2594
  %44 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2596
  %num_flashes49 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %44, i32 0, i32 7, !dbg !2597
  store i32 4, i32* %num_flashes49, align 8, !dbg !2598
  br label %if.end50, !dbg !2599

if.end50:                                         ; preds = %if.then47, %if.end42
  %45 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2600
  %dev51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 3, !dbg !2601
  %call52 = call %struct.clk* @devm_clk_get(%struct.device* %dev51, i8* null) #7, !dbg !2602
  %46 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2603
  %clk = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %46, i32 0, i32 0, !dbg !2604
  store %struct.clk* %call52, %struct.clk** %clk, align 8, !dbg !2605
  %47 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2606
  %clk53 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %47, i32 0, i32 0, !dbg !2608
  %48 = load %struct.clk*, %struct.clk** %clk53, align 8, !dbg !2608
  %49 = bitcast %struct.clk* %48 to i8*, !dbg !2606
  %call54 = call zeroext i1 @IS_ERR(i8* %49) #7, !dbg !2609
  br i1 %call54, label %if.then55, label %if.end59, !dbg !2610

if.then55:                                        ; preds = %if.end50
  %50 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2611
  %clk56 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %50, i32 0, i32 0, !dbg !2613
  %51 = load %struct.clk*, %struct.clk** %clk56, align 8, !dbg !2613
  %52 = bitcast %struct.clk* %51 to i8*, !dbg !2611
  %call57 = call i64 @PTR_ERR(i8* %52) #7, !dbg !2614
  %conv58 = trunc i64 %call57 to i32, !dbg !2614
  store i32 %conv58, i32* %ret, align 4, !dbg !2615
  br label %err, !dbg !2616

if.end59:                                         ; preds = %if.end50
  %53 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2617
  %clk60 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %53, i32 0, i32 0, !dbg !2618
  %54 = load %struct.clk*, %struct.clk** %clk60, align 8, !dbg !2618
  %call61 = call i32 @clk_prepare_enable(%struct.clk* %54) #7, !dbg !2619
  store i32 %call61, i32* %ret, align 4, !dbg !2620
  %55 = load i32, i32* %ret, align 4, !dbg !2621
  %tobool62 = icmp ne i32 %55, 0, !dbg !2621
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !2623

if.then63:                                        ; preds = %if.end59
  br label %err, !dbg !2624

if.end64:                                         ; preds = %if.end59
  %56 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2625
  %dev65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 3, !dbg !2626
  %57 = load i32, i32* %irq, align 4, !dbg !2627
  %58 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2628
  %name = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0, !dbg !2629
  %59 = load i8*, i8** %name, align 8, !dbg !2629
  %60 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2630
  %61 = bitcast %struct.spear_smi* %60 to i8*, !dbg !2630
  %call66 = call i32 @devm_request_irq(%struct.device* %dev65, i32 %57, i32 (i32, i8*)* @spear_smi_int_handler, i64 0, i8* %59, i8* %61) #7, !dbg !2631
  store i32 %call66, i32* %ret, align 4, !dbg !2632
  %62 = load i32, i32* %ret, align 4, !dbg !2633
  %tobool67 = icmp ne i32 %62, 0, !dbg !2633
  br i1 %tobool67, label %if.then68, label %if.end71, !dbg !2635

if.then68:                                        ; preds = %if.end64
  %63 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2636
  %pdev69 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %63, i32 0, i32 5, !dbg !2636
  %64 = load %struct.platform_device*, %struct.platform_device** %pdev69, align 8, !dbg !2636
  %dev70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 3, !dbg !2636
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2636
  br label %err_irq, !dbg !2638

if.end71:                                         ; preds = %if.end64
  br label %do.body, !dbg !2639

do.body:                                          ; preds = %if.end71
  %65 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2640
  %lock = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %65, i32 0, i32 3, !dbg !2640
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @spear_smi_probe.__key) #7, !dbg !2640
  br label %do.end, !dbg !2640

do.end:                                           ; preds = %do.body
  br label %do.body72, !dbg !2642

do.body72:                                        ; preds = %do.end
  %66 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2643
  %cmd_complete = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %66, i32 0, i32 6, !dbg !2643
  call void @__init_waitqueue_head(%struct.wait_queue_head* %cmd_complete, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @spear_smi_probe.__key.5) #7, !dbg !2643
  br label %do.end73, !dbg !2643

do.end73:                                         ; preds = %do.body72
  %67 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2645
  call void @spear_smi_hw_init(%struct.spear_smi* %67) #7, !dbg !2646
  %68 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2647
  %69 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2648
  %70 = bitcast %struct.spear_smi* %69 to i8*, !dbg !2648
  call void @platform_set_drvdata(%struct.platform_device* %68, i8* %70) #7, !dbg !2649
  store i32 0, i32* %i, align 4, !dbg !2650
  br label %for.cond, !dbg !2652

for.cond:                                         ; preds = %for.inc, %do.end73
  %71 = load i32, i32* %i, align 4, !dbg !2653
  %72 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2655
  %num_flashes74 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %72, i32 0, i32 7, !dbg !2656
  %73 = load i32, i32* %num_flashes74, align 8, !dbg !2656
  %cmp75 = icmp ult i32 %71, %73, !dbg !2657
  br i1 %cmp75, label %for.body, label %for.end, !dbg !2658

for.body:                                         ; preds = %for.cond
  %74 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2659
  %75 = load i32, i32* %i, align 4, !dbg !2661
  %76 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2662
  %np77 = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %76, i32 0, i32 3, !dbg !2663
  %77 = load i32, i32* %i, align 4, !dbg !2664
  %idxprom = sext i32 %77 to i64, !dbg !2662
  %arrayidx = getelementptr [4 x %struct.device_node*], [4 x %struct.device_node*]* %np77, i64 0, i64 %idxprom, !dbg !2662
  %78 = load %struct.device_node*, %struct.device_node** %arrayidx, align 8, !dbg !2662
  %call78 = call i32 @spear_smi_setup_banks(%struct.platform_device* %74, i32 %75, %struct.device_node* %78) #7, !dbg !2665
  store i32 %call78, i32* %ret, align 4, !dbg !2666
  %79 = load i32, i32* %ret, align 4, !dbg !2667
  %tobool79 = icmp ne i32 %79, 0, !dbg !2667
  br i1 %tobool79, label %if.then80, label %if.end83, !dbg !2669

if.then80:                                        ; preds = %for.body
  %80 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2670
  %pdev81 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %80, i32 0, i32 5, !dbg !2670
  %81 = load %struct.platform_device*, %struct.platform_device** %pdev81, align 8, !dbg !2670
  %dev82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 3, !dbg !2670
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !2670
  br label %err_irq, !dbg !2672

if.end83:                                         ; preds = %for.body
  br label %for.inc, !dbg !2673

for.inc:                                          ; preds = %if.end83
  %82 = load i32, i32* %i, align 4, !dbg !2674
  %inc = add i32 %82, 1, !dbg !2674
  store i32 %inc, i32* %i, align 4, !dbg !2674
  br label %for.cond, !dbg !2675, !llvm.loop !2676

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2678
  br label %return, !dbg !2678

err_irq:                                          ; preds = %if.then80, %if.then68
  call void @llvm.dbg.label(metadata !2679), !dbg !2680
  %83 = load %struct.spear_smi*, %struct.spear_smi** %dev1, align 8, !dbg !2681
  %clk84 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %83, i32 0, i32 0, !dbg !2682
  %84 = load %struct.clk*, %struct.clk** %clk84, align 8, !dbg !2682
  call void @clk_disable_unprepare(%struct.clk* %84) #7, !dbg !2683
  br label %err, !dbg !2683

err:                                              ; preds = %err_irq, %if.then63, %if.then55, %if.then31, %if.then24, %if.then19, %if.then14, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !2684), !dbg !2685
  %85 = load i32, i32* %ret, align 4, !dbg !2686
  store i32 %85, i32* %retval, align 4, !dbg !2687
  br label %return, !dbg !2687

return:                                           ; preds = %err, %for.end
  %86 = load i32, i32* %retval, align 4, !dbg !2688
  ret i32 %86, !dbg !2688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_remove(%struct.platform_device* %pdev) #2 !dbg !2689 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.spear_smi*, align 8
  %flash = alloca %struct.spear_snor_flash*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev, metadata !2692, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.declare(metadata %struct.spear_snor_flash** %flash, metadata !2694, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2698, metadata !DIExpression()), !dbg !2699
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2700
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #7, !dbg !2701
  %1 = bitcast i8* %call to %struct.spear_smi*, !dbg !2701
  store %struct.spear_smi* %1, %struct.spear_smi** %dev, align 8, !dbg !2702
  %2 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !2703
  %tobool = icmp ne %struct.spear_smi* %2, null, !dbg !2703
  br i1 %tobool, label %if.end, label %if.then, !dbg !2705

if.then:                                          ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2706
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 3, !dbg !2706
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #8, !dbg !2706
  store i32 -19, i32* %retval, align 4, !dbg !2708
  br label %return, !dbg !2708

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2709
  br label %for.cond, !dbg !2711

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !2712
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !2714
  %num_flashes = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %5, i32 0, i32 7, !dbg !2715
  %6 = load i32, i32* %num_flashes, align 8, !dbg !2715
  %cmp = icmp ult i32 %4, %6, !dbg !2716
  br i1 %cmp, label %for.body, label %for.end, !dbg !2717

for.body:                                         ; preds = %for.cond
  %7 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !2718
  %flash2 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %7, i32 0, i32 8, !dbg !2720
  %8 = load i32, i32* %i, align 4, !dbg !2721
  %idxprom = sext i32 %8 to i64, !dbg !2718
  %arrayidx = getelementptr [4 x %struct.spear_snor_flash*], [4 x %struct.spear_snor_flash*]* %flash2, i64 0, i64 %idxprom, !dbg !2718
  %9 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %arrayidx, align 8, !dbg !2718
  store %struct.spear_snor_flash* %9, %struct.spear_snor_flash** %flash, align 8, !dbg !2722
  %10 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !2723
  %tobool3 = icmp ne %struct.spear_snor_flash* %10, null, !dbg !2723
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2725

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !2726

if.end5:                                          ; preds = %for.body
  %11 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !2727
  %mtd = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %11, i32 0, i32 3, !dbg !2728
  %call6 = call i32 @mtd_device_unregister(%struct.mtd_info* %mtd) #7, !dbg !2729
  store i32 %call6, i32* %ret, align 4, !dbg !2730
  %12 = load i32, i32* %ret, align 4, !dbg !2731
  %tobool7 = icmp ne i32 %12, 0, !dbg !2731
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !2733

if.then8:                                         ; preds = %if.end5
  %13 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2734
  %dev9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 3, !dbg !2734
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i64 0, i64 0)) #8, !dbg !2734
  br label %if.end10, !dbg !2734

if.end10:                                         ; preds = %if.then8, %if.end5
  br label %for.inc, !dbg !2735

for.inc:                                          ; preds = %if.end10, %if.then4
  %14 = load i32, i32* %i, align 4, !dbg !2736
  %inc = add i32 %14, 1, !dbg !2736
  store i32 %inc, i32* %i, align 4, !dbg !2736
  br label %for.cond, !dbg !2737, !llvm.loop !2738

for.end:                                          ; preds = %for.cond
  %15 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !2740
  %clk = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %15, i32 0, i32 0, !dbg !2741
  %16 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2741
  call void @clk_disable_unprepare(%struct.clk* %16) #7, !dbg !2742
  store i32 0, i32* %retval, align 4, !dbg !2743
  br label %return, !dbg !2743

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !2744
  ret i32 %17, !dbg !2744
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2745 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2748, metadata !DIExpression()), !dbg !2749
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2752, metadata !DIExpression()), !dbg !2753
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2754
  %1 = load i64, i64* %size.addr, align 8, !dbg !2755
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2756
  %or = or i32 %2, 256, !dbg !2757
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #7, !dbg !2758
  ret i8* %call, !dbg !2759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_probe_config_dt(%struct.platform_device* %pdev, %struct.device_node* %np) #2 !dbg !2760 {
entry:
  %p.addr.i.i26 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i26, metadata !2763, metadata !DIExpression()), !dbg !2770
  %p.addr.i27 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i27, metadata !2783, metadata !DIExpression()), !dbg !2784
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !2763, metadata !DIExpression()), !dbg !2785
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !2783, metadata !DIExpression()), !dbg !2788
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %pdata = alloca %struct.spear_smi_plat_data*, align 8
  %pp = alloca %struct.device_node*, align 8
  %addr = alloca i32*, align 8
  %val = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2789, metadata !DIExpression()), !dbg !2790
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2791, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.declare(metadata %struct.spear_smi_plat_data** %pdata, metadata !2793, metadata !DIExpression()), !dbg !2794
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2795
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2796
  %call = call i8* @dev_get_platdata(%struct.device* %dev) #7, !dbg !2797
  %1 = bitcast i8* %call to %struct.spear_smi_plat_data*, !dbg !2797
  store %struct.spear_smi_plat_data* %1, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2794
  call void @llvm.dbg.declare(metadata %struct.device_node** %pp, metadata !2798, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.declare(metadata i32** %addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2802, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2806, metadata !DIExpression()), !dbg !2807
  store i32 0, i32* %i, align 4, !dbg !2807
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2808
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !2808
  br i1 %tobool, label %if.end, label %if.then, !dbg !2810

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2811
  br label %return, !dbg !2811

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2812
  %call1 = call i32 @of_property_read_u32(%struct.device_node* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %val) #7, !dbg !2813
  %4 = load i32, i32* %val, align 4, !dbg !2814
  %conv = zext i32 %4 to i64, !dbg !2814
  %5 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2815
  %clk_rate = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %5, i32 0, i32 0, !dbg !2816
  store i64 %conv, i64* %clk_rate, align 8, !dbg !2817
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2818
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 3, !dbg !2819
  %call3 = call i8* @devm_kzalloc(%struct.device* %dev2, i64 40, i32 3264) #7, !dbg !2820
  %7 = bitcast i8* %call3 to %struct.spear_smi_flash_info*, !dbg !2820
  %8 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2821
  %board_flash_info = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %8, i32 0, i32 2, !dbg !2822
  store %struct.spear_smi_flash_info* %7, %struct.spear_smi_flash_info** %board_flash_info, align 8, !dbg !2823
  %9 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2824
  %board_flash_info4 = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %9, i32 0, i32 2, !dbg !2826
  %10 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %board_flash_info4, align 8, !dbg !2826
  %tobool5 = icmp ne %struct.spear_smi_flash_info* %10, null, !dbg !2824
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2827

if.then6:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2828
  br label %return, !dbg !2828

if.end7:                                          ; preds = %if.end
  %11 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2829
  %call8 = call %struct.device_node* @of_get_next_child(%struct.device_node* %11, %struct.device_node* null) #7, !dbg !2829
  store %struct.device_node* %call8, %struct.device_node** %pp, align 8, !dbg !2829
  br label %for.cond, !dbg !2829

for.cond:                                         ; preds = %for.inc, %if.end7
  %12 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2830
  %cmp = icmp ne %struct.device_node* %12, null, !dbg !2830
  br i1 %cmp, label %for.body, label %for.end, !dbg !2829

for.body:                                         ; preds = %for.cond
  %13 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2831
  %14 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2832
  %np10 = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %14, i32 0, i32 3, !dbg !2833
  %15 = load i32, i32* %i, align 4, !dbg !2834
  %idxprom = sext i32 %15 to i64, !dbg !2832
  %arrayidx = getelementptr [4 x %struct.device_node*], [4 x %struct.device_node*]* %np10, i64 0, i64 %idxprom, !dbg !2832
  store %struct.device_node* %13, %struct.device_node** %arrayidx, align 8, !dbg !2835
  %16 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2836
  %call11 = call i8* @of_get_property(%struct.device_node* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %len) #7, !dbg !2837
  %17 = bitcast i8* %call11 to i32*, !dbg !2837
  store i32* %17, i32** %addr, align 8, !dbg !2838
  %18 = load i32*, i32** %addr, align 8, !dbg !2839
  %arrayidx12 = getelementptr i32, i32* %18, i64 0, !dbg !2839
  store i32* %arrayidx12, i32** %p.addr.i, align 8
  %19 = load i32*, i32** %p.addr.i, align 8, !dbg !2840
  store i32* %19, i32** %p.addr.i.i, align 8
  %20 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2841
  %21 = load i32, i32* %20, align 4, !dbg !2841
  %22 = call i1 @llvm.is.constant.i32(i32 %21) #9, !dbg !2841
  br i1 %22, label %cond.true.i.i, label %cond.false.i.i, !dbg !2841

cond.true.i.i:                                    ; preds = %for.body
  %23 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2841
  %24 = load i32, i32* %23, align 4, !dbg !2841
  %and.i.i = and i32 %24, 255, !dbg !2841
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !2841
  %25 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2841
  %26 = load i32, i32* %25, align 4, !dbg !2841
  %and1.i.i = and i32 %26, 65280, !dbg !2841
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !2841
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !2841
  %27 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2841
  %28 = load i32, i32* %27, align 4, !dbg !2841
  %and3.i.i = and i32 %28, 16711680, !dbg !2841
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !2841
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !2841
  %29 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2841
  %30 = load i32, i32* %29, align 4, !dbg !2841
  %and5.i.i = and i32 %30, -16777216, !dbg !2841
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !2841
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !2841
  br label %__be32_to_cpup.exit, !dbg !2841

cond.false.i.i:                                   ; preds = %for.body
  %31 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2841
  %32 = load i32, i32* %31, align 4, !dbg !2841
  %call.i.i = call i32 @__fswab32(i32 %32) #10, !dbg !2841
  br label %__be32_to_cpup.exit, !dbg !2841

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !2841
  %conv14 = zext i32 %cond.i.i to i64, !dbg !2842
  %33 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2843
  %board_flash_info15 = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %33, i32 0, i32 2, !dbg !2844
  %34 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %board_flash_info15, align 8, !dbg !2844
  %mem_base = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %34, i32 0, i32 1, !dbg !2845
  store i64 %conv14, i64* %mem_base, align 8, !dbg !2846
  %35 = load i32*, i32** %addr, align 8, !dbg !2847
  %arrayidx16 = getelementptr i32, i32* %35, i64 1, !dbg !2847
  store i32* %arrayidx16, i32** %p.addr.i27, align 8
  %36 = load i32*, i32** %p.addr.i27, align 8, !dbg !2848
  store i32* %36, i32** %p.addr.i.i26, align 8
  %37 = load i32*, i32** %p.addr.i.i26, align 8, !dbg !2849
  %38 = load i32, i32* %37, align 4, !dbg !2849
  %39 = call i1 @llvm.is.constant.i32(i32 %38) #9, !dbg !2849
  br i1 %39, label %cond.true.i.i39, label %cond.false.i.i41, !dbg !2849

cond.true.i.i39:                                  ; preds = %__be32_to_cpup.exit
  %40 = load i32*, i32** %p.addr.i.i26, align 8, !dbg !2849
  %41 = load i32, i32* %40, align 4, !dbg !2849
  %and.i.i28 = and i32 %41, 255, !dbg !2849
  %shl.i.i29 = shl i32 %and.i.i28, 24, !dbg !2849
  %42 = load i32*, i32** %p.addr.i.i26, align 8, !dbg !2849
  %43 = load i32, i32* %42, align 4, !dbg !2849
  %and1.i.i30 = and i32 %43, 65280, !dbg !2849
  %shl2.i.i31 = shl i32 %and1.i.i30, 8, !dbg !2849
  %or.i.i32 = or i32 %shl.i.i29, %shl2.i.i31, !dbg !2849
  %44 = load i32*, i32** %p.addr.i.i26, align 8, !dbg !2849
  %45 = load i32, i32* %44, align 4, !dbg !2849
  %and3.i.i33 = and i32 %45, 16711680, !dbg !2849
  %shr.i.i34 = lshr i32 %and3.i.i33, 8, !dbg !2849
  %or4.i.i35 = or i32 %or.i.i32, %shr.i.i34, !dbg !2849
  %46 = load i32*, i32** %p.addr.i.i26, align 8, !dbg !2849
  %47 = load i32, i32* %46, align 4, !dbg !2849
  %and5.i.i36 = and i32 %47, -16777216, !dbg !2849
  %shr6.i.i37 = lshr i32 %and5.i.i36, 24, !dbg !2849
  %or7.i.i38 = or i32 %or4.i.i35, %shr6.i.i37, !dbg !2849
  br label %__be32_to_cpup.exit43, !dbg !2849

cond.false.i.i41:                                 ; preds = %__be32_to_cpup.exit
  %48 = load i32*, i32** %p.addr.i.i26, align 8, !dbg !2849
  %49 = load i32, i32* %48, align 4, !dbg !2849
  %call.i.i40 = call i32 @__fswab32(i32 %49) #10, !dbg !2849
  br label %__be32_to_cpup.exit43, !dbg !2849

__be32_to_cpup.exit43:                            ; preds = %cond.true.i.i39, %cond.false.i.i41
  %cond.i.i42 = phi i32 [ %or7.i.i38, %cond.true.i.i39 ], [ %call.i.i40, %cond.false.i.i41 ], !dbg !2849
  %conv18 = zext i32 %cond.i.i42 to i64, !dbg !2850
  %50 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2851
  %board_flash_info19 = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %50, i32 0, i32 2, !dbg !2852
  %51 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %board_flash_info19, align 8, !dbg !2852
  %size = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %51, i32 0, i32 2, !dbg !2853
  store i64 %conv18, i64* %size, align 8, !dbg !2854
  %52 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2855
  %call20 = call i8* @of_get_property(%struct.device_node* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* null) #7, !dbg !2857
  %tobool21 = icmp ne i8* %call20, null, !dbg !2857
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !2858

if.then22:                                        ; preds = %__be32_to_cpup.exit43
  %53 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2859
  %board_flash_info23 = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %53, i32 0, i32 2, !dbg !2860
  %54 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %board_flash_info23, align 8, !dbg !2860
  %fast_mode = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %54, i32 0, i32 5, !dbg !2861
  store i8 1, i8* %fast_mode, align 4, !dbg !2862
  br label %if.end24, !dbg !2859

if.end24:                                         ; preds = %if.then22, %__be32_to_cpup.exit43
  %55 = load i32, i32* %i, align 4, !dbg !2863
  %inc = add i32 %55, 1, !dbg !2863
  store i32 %inc, i32* %i, align 4, !dbg !2863
  br label %for.inc, !dbg !2864

for.inc:                                          ; preds = %if.end24
  %56 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2830
  %57 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2830
  %call25 = call %struct.device_node* @of_get_next_child(%struct.device_node* %56, %struct.device_node* %57) #7, !dbg !2830
  store %struct.device_node* %call25, %struct.device_node** %pp, align 8, !dbg !2830
  br label %for.cond, !dbg !2830, !llvm.loop !2865

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %i, align 4, !dbg !2867
  %59 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !2868
  %num_flashes = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %59, i32 0, i32 1, !dbg !2869
  store i32 %58, i32* %num_flashes, align 8, !dbg !2870
  store i32 0, i32* %retval, align 4, !dbg !2871
  br label %return, !dbg !2871

return:                                           ; preds = %for.end, %if.then6, %if.then
  %60 = load i32, i32* %retval, align 4, !dbg !2872
  ret i32 %60, !dbg !2872
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_platdata(%struct.device* %dev) #2 !dbg !2873 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2876, metadata !DIExpression()), !dbg !2877
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2878
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 7, !dbg !2879
  %1 = load i8*, i8** %platform_data, align 8, !dbg !2879
  ret i8* %1, !dbg !2880
}

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2881 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2887
  %1 = ptrtoint i8* %0 to i64, !dbg !2887
  %2 = inttoptr i64 %1 to i8*, !dbg !2887
  %3 = ptrtoint i8* %2 to i64, !dbg !2887
  %cmp = icmp uge i64 %3, -4095, !dbg !2887
  %lnot = xor i1 %cmp, true, !dbg !2887
  %lnot1 = xor i1 %lnot, true, !dbg !2887
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2887
  %conv = sext i32 %lnot.ext to i64, !dbg !2887
  %tobool = icmp ne i64 %conv, 0, !dbg !2887
  ret i1 %tobool, !dbg !2888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2889 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2892, metadata !DIExpression()), !dbg !2893
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2894
  %1 = ptrtoint i8* %0 to i64, !dbg !2895
  ret i64 %1, !dbg !2896
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !2897 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2902, metadata !DIExpression()), !dbg !2903
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2904
  %call = call i32 @clk_prepare(%struct.clk* %0) #7, !dbg !2905
  store i32 %call, i32* %ret, align 4, !dbg !2906
  %1 = load i32, i32* %ret, align 4, !dbg !2907
  %tobool = icmp ne i32 %1, 0, !dbg !2907
  br i1 %tobool, label %if.then, label %if.end, !dbg !2909

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2910
  store i32 %2, i32* %retval, align 4, !dbg !2911
  br label %return, !dbg !2911

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2912
  %call1 = call i32 @clk_enable(%struct.clk* %3) #7, !dbg !2913
  store i32 %call1, i32* %ret, align 4, !dbg !2914
  %4 = load i32, i32* %ret, align 4, !dbg !2915
  %tobool2 = icmp ne i32 %4, 0, !dbg !2915
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2917

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2918
  call void @clk_unprepare(%struct.clk* %5) #7, !dbg !2919
  br label %if.end4, !dbg !2919

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !2920
  store i32 %6, i32* %retval, align 4, !dbg !2921
  br label %return, !dbg !2921

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2922
  ret i32 %7, !dbg !2922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_request_irq(%struct.device* %dev, i32 %irq, i32 (i32, i8*)* %handler, i64 %irqflags, i8* %devname, i8* %dev_id) #2 !dbg !2923 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2932, metadata !DIExpression()), !dbg !2933
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2934, metadata !DIExpression()), !dbg !2935
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !2936, metadata !DIExpression()), !dbg !2937
  store i64 %irqflags, i64* %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %irqflags.addr, metadata !2938, metadata !DIExpression()), !dbg !2939
  store i8* %devname, i8** %devname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devname.addr, metadata !2940, metadata !DIExpression()), !dbg !2941
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2942, metadata !DIExpression()), !dbg !2943
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2944
  %1 = load i32, i32* %irq.addr, align 4, !dbg !2945
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !2946
  %3 = load i64, i64* %irqflags.addr, align 8, !dbg !2947
  %4 = load i8*, i8** %devname.addr, align 8, !dbg !2948
  %5 = load i8*, i8** %dev_id.addr, align 8, !dbg !2949
  %call = call i32 @devm_request_threaded_irq(%struct.device* %0, i32 %1, i32 (i32, i8*)* %2, i32 (i32, i8*)* null, i64 %3, i8* %4, i8* %5) #7, !dbg !2950
  ret i32 %call, !dbg !2951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_int_handler(i32 %irq, i8* %dev_id) #2 !dbg !2952 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %dev = alloca %struct.spear_smi*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2957, metadata !DIExpression()), !dbg !2958
  store i32 0, i32* %status, align 4, !dbg !2958
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev, metadata !2959, metadata !DIExpression()), !dbg !2960
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !2961
  %1 = bitcast i8* %0 to %struct.spear_smi*, !dbg !2961
  store %struct.spear_smi* %1, %struct.spear_smi** %dev, align 8, !dbg !2960
  %2 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !2962
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %2, i32 0, i32 4, !dbg !2963
  %3 = load i8*, i8** %io_base, align 8, !dbg !2963
  %add.ptr = getelementptr i8, i8* %3, i64 8, !dbg !2964
  %call = call i32 @readl(i8* %add.ptr) #7, !dbg !2965
  store i32 %call, i32* %status, align 4, !dbg !2966
  %4 = load i32, i32* %status, align 4, !dbg !2967
  %tobool = icmp ne i32 %4, 0, !dbg !2967
  %lnot = xor i1 %tobool, true, !dbg !2967
  %lnot1 = xor i1 %lnot, true, !dbg !2967
  %lnot2 = xor i1 %lnot1, true, !dbg !2967
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2967
  %conv = sext i32 %lnot.ext to i64, !dbg !2967
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2967
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2969

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2970
  br label %return, !dbg !2970

if.end:                                           ; preds = %entry
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !2971
  %io_base4 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %5, i32 0, i32 4, !dbg !2972
  %6 = load i8*, i8** %io_base4, align 8, !dbg !2972
  %add.ptr5 = getelementptr i8, i8* %6, i64 8, !dbg !2973
  call void @writel(i32 0, i8* %add.ptr5) #7, !dbg !2974
  %7 = load i32, i32* %status, align 4, !dbg !2975
  %8 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !2976
  %status6 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %8, i32 0, i32 1, !dbg !2977
  %9 = load i32, i32* %status6, align 8, !dbg !2978
  %or = or i32 %9, %7, !dbg !2978
  store i32 %or, i32* %status6, align 8, !dbg !2978
  %10 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !2979
  %cmd_complete = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %10, i32 0, i32 6, !dbg !2979
  call void @__wake_up(%struct.wait_queue_head* %cmd_complete, i32 1, i32 1, i8* null) #7, !dbg !2979
  store i32 1, i32* %retval, align 4, !dbg !2980
  br label %return, !dbg !2980

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !2981
  ret i32 %11, !dbg !2981
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spear_smi_hw_init(%struct.spear_smi* %dev) #2 !dbg !2982 {
entry:
  %dev.addr = alloca %struct.spear_smi*, align 8
  %rate = alloca i64, align 8
  %prescale = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.spear_smi* %dev, %struct.spear_smi** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev.addr, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.declare(metadata i64* %rate, metadata !2987, metadata !DIExpression()), !dbg !2988
  store i64 0, i64* %rate, align 8, !dbg !2988
  call void @llvm.dbg.declare(metadata i32* %prescale, metadata !2989, metadata !DIExpression()), !dbg !2990
  store i32 0, i32* %prescale, align 4, !dbg !2990
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2991, metadata !DIExpression()), !dbg !2992
  %0 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !2993
  %clk = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %0, i32 0, i32 0, !dbg !2994
  %1 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2994
  %call = call i64 @clk_get_rate(%struct.clk* %1) #7, !dbg !2995
  store i64 %call, i64* %rate, align 8, !dbg !2996
  %2 = load i64, i64* %rate, align 8, !dbg !2997
  %3 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !2997
  %clk_rate = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %3, i32 0, i32 2, !dbg !2997
  %4 = load i64, i64* %clk_rate, align 8, !dbg !2997
  %add = add i64 %2, %4, !dbg !2997
  %sub = sub i64 %add, 1, !dbg !2997
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !2997
  %clk_rate1 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %5, i32 0, i32 2, !dbg !2997
  %6 = load i64, i64* %clk_rate1, align 8, !dbg !2997
  %div = udiv i64 %sub, %6, !dbg !2997
  %conv = trunc i64 %div to i32, !dbg !2997
  store i32 %conv, i32* %prescale, align 4, !dbg !2998
  %7 = load i32, i32* %prescale, align 4, !dbg !2999
  %shl = shl i32 %7, 8, !dbg !3000
  %or = or i32 65647, %shl, !dbg !3001
  store i32 %or, i32* %val, align 4, !dbg !3002
  %8 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3003
  %lock = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %8, i32 0, i32 3, !dbg !3004
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !3005
  %9 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3006
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %9, i32 0, i32 4, !dbg !3007
  %10 = load i8*, i8** %io_base, align 8, !dbg !3007
  %add.ptr = getelementptr i8, i8* %10, i64 8, !dbg !3008
  call void @writel(i32 0, i8* %add.ptr) #7, !dbg !3009
  %11 = load i32, i32* %val, align 4, !dbg !3010
  %12 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3011
  %io_base2 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %12, i32 0, i32 4, !dbg !3012
  %13 = load i8*, i8** %io_base2, align 8, !dbg !3012
  %add.ptr3 = getelementptr i8, i8* %13, i64 0, !dbg !3013
  call void @writel(i32 %11, i8* %add.ptr3) #7, !dbg !3014
  %14 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3015
  %lock4 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %14, i32 0, i32 3, !dbg !3016
  call void @mutex_unlock(%struct.mutex* %lock4) #7, !dbg !3017
  ret void, !dbg !3018
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !3019 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3024, metadata !DIExpression()), !dbg !3025
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3026
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3027
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3028
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #7, !dbg !3029
  ret void, !dbg !3030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_setup_banks(%struct.platform_device* %pdev, i32 %bank, %struct.device_node* %np) #2 !dbg !2398 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %bank.addr = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %dev = alloca %struct.spear_smi*, align 8
  %flash_info = alloca %struct.spear_smi_flash_info*, align 8
  %pdata = alloca %struct.spear_smi_plat_data*, align 8
  %flash = alloca %struct.spear_snor_flash*, align 8
  %parts = alloca %struct.mtd_partition*, align 8
  %count = alloca i32, align 4
  %flash_index = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3031, metadata !DIExpression()), !dbg !3032
  store i32 %bank, i32* %bank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bank.addr, metadata !3033, metadata !DIExpression()), !dbg !3034
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3035, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev, metadata !3037, metadata !DIExpression()), !dbg !3038
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3039
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #7, !dbg !3040
  %1 = bitcast i8* %call to %struct.spear_smi*, !dbg !3040
  store %struct.spear_smi* %1, %struct.spear_smi** %dev, align 8, !dbg !3038
  call void @llvm.dbg.declare(metadata %struct.spear_smi_flash_info** %flash_info, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.declare(metadata %struct.spear_smi_plat_data** %pdata, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.declare(metadata %struct.spear_snor_flash** %flash, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.declare(metadata %struct.mtd_partition** %parts, metadata !3047, metadata !DIExpression()), !dbg !3048
  store %struct.mtd_partition* null, %struct.mtd_partition** %parts, align 8, !dbg !3048
  call void @llvm.dbg.declare(metadata i32* %count, metadata !3049, metadata !DIExpression()), !dbg !3050
  store i32 0, i32* %count, align 4, !dbg !3050
  call void @llvm.dbg.declare(metadata i32* %flash_index, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3053, metadata !DIExpression()), !dbg !3054
  store i32 0, i32* %ret, align 4, !dbg !3054
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3055
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !3056
  %call2 = call i8* @dev_get_platdata(%struct.device* %dev1) #7, !dbg !3057
  %3 = bitcast i8* %call2 to %struct.spear_smi_plat_data*, !dbg !3057
  store %struct.spear_smi_plat_data* %3, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !3058
  %4 = load i32, i32* %bank.addr, align 4, !dbg !3059
  %5 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !3061
  %num_flashes = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %5, i32 0, i32 1, !dbg !3062
  %6 = load i32, i32* %num_flashes, align 8, !dbg !3062
  %sub = sub i32 %6, 1, !dbg !3063
  %cmp = icmp ugt i32 %4, %sub, !dbg !3064
  br i1 %cmp, label %if.then, label %if.end, !dbg !3065

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3066
  br label %return, !dbg !3066

if.end:                                           ; preds = %entry
  %7 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %pdata, align 8, !dbg !3067
  %board_flash_info = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %7, i32 0, i32 2, !dbg !3068
  %8 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %board_flash_info, align 8, !dbg !3068
  %9 = load i32, i32* %bank.addr, align 4, !dbg !3069
  %idxprom = zext i32 %9 to i64, !dbg !3067
  %arrayidx = getelementptr %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %8, i64 %idxprom, !dbg !3067
  store %struct.spear_smi_flash_info* %arrayidx, %struct.spear_smi_flash_info** %flash_info, align 8, !dbg !3070
  %10 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %flash_info, align 8, !dbg !3071
  %tobool = icmp ne %struct.spear_smi_flash_info* %10, null, !dbg !3071
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !3073

if.then3:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3074
  br label %return, !dbg !3074

if.end4:                                          ; preds = %if.end
  %11 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3075
  %dev5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 3, !dbg !3076
  %call6 = call i8* @devm_kzalloc(%struct.device* %dev5, i64 1280, i32 2592) #7, !dbg !3077
  %12 = bitcast i8* %call6 to %struct.spear_snor_flash*, !dbg !3077
  store %struct.spear_snor_flash* %12, %struct.spear_snor_flash** %flash, align 8, !dbg !3078
  %13 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3079
  %tobool7 = icmp ne %struct.spear_snor_flash* %13, null, !dbg !3079
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3081

if.then8:                                         ; preds = %if.end4
  store i32 -12, i32* %retval, align 4, !dbg !3082
  br label %return, !dbg !3082

if.end9:                                          ; preds = %if.end4
  %14 = load i32, i32* %bank.addr, align 4, !dbg !3083
  %15 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3084
  %bank10 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %15, i32 0, i32 0, !dbg !3085
  store i32 %14, i32* %bank10, align 8, !dbg !3086
  %16 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %flash_info, align 8, !dbg !3087
  %fast_mode = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %16, i32 0, i32 5, !dbg !3088
  %17 = load i8, i8* %fast_mode, align 4, !dbg !3088
  %conv = zext i8 %17 to i32, !dbg !3087
  %tobool11 = icmp ne i32 %conv, 0, !dbg !3087
  %18 = zext i1 %tobool11 to i64, !dbg !3087
  %cond = select i1 %tobool11, i32 1, i32 0, !dbg !3087
  %conv12 = trunc i32 %cond to i8, !dbg !3087
  %19 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3089
  %fast_mode13 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %19, i32 0, i32 9, !dbg !3090
  store i8 %conv12, i8* %fast_mode13, align 1, !dbg !3091
  br label %do.body, !dbg !3092

do.body:                                          ; preds = %if.end9
  %20 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3093
  %lock = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %20, i32 0, i32 2, !dbg !3093
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* @spear_smi_setup_banks.__key) #7, !dbg !3093
  br label %do.end, !dbg !3093

do.end:                                           ; preds = %do.body
  %21 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3095
  %22 = load i32, i32* %bank.addr, align 4, !dbg !3096
  %call14 = call i32 @spear_smi_probe_flash(%struct.spear_smi* %21, i32 %22) #7, !dbg !3097
  store i32 %call14, i32* %flash_index, align 4, !dbg !3098
  %23 = load i32, i32* %flash_index, align 4, !dbg !3099
  %cmp15 = icmp slt i32 %23, 0, !dbg !3101
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !3102

if.then17:                                        ; preds = %do.end
  %24 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3103
  %pdev18 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %24, i32 0, i32 5, !dbg !3103
  %25 = load %struct.platform_device*, %struct.platform_device** %pdev18, align 8, !dbg !3103
  %dev19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 3, !dbg !3103
  %26 = load i32, i32* %bank.addr, align 4, !dbg !3103
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %26) #8, !dbg !3103
  %27 = load i32, i32* %flash_index, align 4, !dbg !3105
  store i32 %27, i32* %retval, align 4, !dbg !3106
  br label %return, !dbg !3106

if.end20:                                         ; preds = %do.end
  %28 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3107
  %dev21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 3, !dbg !3108
  %29 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %flash_info, align 8, !dbg !3109
  %mem_base = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %29, i32 0, i32 1, !dbg !3110
  %30 = load i64, i64* %mem_base, align 8, !dbg !3110
  %31 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %flash_info, align 8, !dbg !3111
  %size = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %31, i32 0, i32 2, !dbg !3112
  %32 = load i64, i64* %size, align 8, !dbg !3112
  %call22 = call i8* @devm_ioremap(%struct.device* %dev21, i64 %30, i64 %32) #7, !dbg !3113
  %33 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3114
  %base_addr = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %33, i32 0, i32 7, !dbg !3115
  store i8* %call22, i8** %base_addr, align 8, !dbg !3116
  %34 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3117
  %base_addr23 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %34, i32 0, i32 7, !dbg !3119
  %35 = load i8*, i8** %base_addr23, align 8, !dbg !3119
  %tobool24 = icmp ne i8* %35, null, !dbg !3117
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !3120

if.then25:                                        ; preds = %if.end20
  store i32 -5, i32* %retval, align 4, !dbg !3121
  br label %return, !dbg !3121

if.end26:                                         ; preds = %if.end20
  %36 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3122
  %37 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3123
  %flash27 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %37, i32 0, i32 8, !dbg !3124
  %38 = load i32, i32* %bank.addr, align 4, !dbg !3125
  %idxprom28 = zext i32 %38 to i64, !dbg !3123
  %arrayidx29 = getelementptr [4 x %struct.spear_snor_flash*], [4 x %struct.spear_snor_flash*]* %flash27, i64 0, i64 %idxprom28, !dbg !3123
  store %struct.spear_snor_flash* %36, %struct.spear_snor_flash** %arrayidx29, align 8, !dbg !3126
  %39 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3127
  %40 = bitcast %struct.spear_smi* %39 to i8*, !dbg !3127
  %41 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3128
  %mtd = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %41, i32 0, i32 3, !dbg !3129
  %priv = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd, i32 0, i32 53, !dbg !3130
  store i8* %40, i8** %priv, align 8, !dbg !3131
  %42 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %flash_info, align 8, !dbg !3132
  %name = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %42, i32 0, i32 0, !dbg !3134
  %43 = load i8*, i8** %name, align 8, !dbg !3134
  %tobool30 = icmp ne i8* %43, null, !dbg !3132
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !3135

if.then31:                                        ; preds = %if.end26
  %44 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %flash_info, align 8, !dbg !3136
  %name32 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %44, i32 0, i32 0, !dbg !3137
  %45 = load i8*, i8** %name32, align 8, !dbg !3137
  %46 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3138
  %mtd33 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %46, i32 0, i32 3, !dbg !3139
  %name34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd33, i32 0, i32 13, !dbg !3140
  store i8* %45, i8** %name34, align 8, !dbg !3141
  br label %if.end40, !dbg !3138

if.else:                                          ; preds = %if.end26
  %47 = load i32, i32* %flash_index, align 4, !dbg !3142
  %idxprom35 = sext i32 %47 to i64, !dbg !3143
  %arrayidx36 = getelementptr [34 x %struct.flash_device], [34 x %struct.flash_device]* @flash_devices, i64 0, i64 %idxprom35, !dbg !3143
  %name37 = getelementptr inbounds %struct.flash_device, %struct.flash_device* %arrayidx36, i32 0, i32 0, !dbg !3144
  %48 = load i8*, i8** %name37, align 8, !dbg !3144
  %49 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3145
  %mtd38 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %49, i32 0, i32 3, !dbg !3146
  %name39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd38, i32 0, i32 13, !dbg !3147
  store i8* %48, i8** %name39, align 8, !dbg !3148
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then31
  %50 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3149
  %dev41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 3, !dbg !3150
  %51 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3151
  %mtd42 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %51, i32 0, i32 3, !dbg !3152
  %dev43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd42, i32 0, i32 55, !dbg !3153
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev43, i32 0, i32 1, !dbg !3154
  store %struct.device* %dev41, %struct.device** %parent, align 8, !dbg !3155
  %52 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3156
  %mtd44 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %52, i32 0, i32 3, !dbg !3157
  %53 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3158
  call void @mtd_set_of_node(%struct.mtd_info* %mtd44, %struct.device_node* %53) #7, !dbg !3159
  %54 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3160
  %mtd45 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %54, i32 0, i32 3, !dbg !3161
  %type = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd45, i32 0, i32 0, !dbg !3162
  store i8 3, i8* %type, align 8, !dbg !3163
  %55 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3164
  %mtd46 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %55, i32 0, i32 3, !dbg !3165
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd46, i32 0, i32 4, !dbg !3166
  store i32 1, i32* %writesize, align 4, !dbg !3167
  %56 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3168
  %mtd47 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %56, i32 0, i32 3, !dbg !3169
  %flags = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd47, i32 0, i32 1, !dbg !3170
  store i32 3072, i32* %flags, align 4, !dbg !3171
  %57 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %flash_info, align 8, !dbg !3172
  %size48 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %57, i32 0, i32 2, !dbg !3173
  %58 = load i64, i64* %size48, align 8, !dbg !3173
  %59 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3174
  %mtd49 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %59, i32 0, i32 3, !dbg !3175
  %size50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd49, i32 0, i32 2, !dbg !3176
  store i64 %58, i64* %size50, align 8, !dbg !3177
  %60 = load i32, i32* %flash_index, align 4, !dbg !3178
  %idxprom51 = sext i32 %60 to i64, !dbg !3179
  %arrayidx52 = getelementptr [34 x %struct.flash_device], [34 x %struct.flash_device]* @flash_devices, i64 0, i64 %idxprom51, !dbg !3179
  %sectorsize = getelementptr inbounds %struct.flash_device, %struct.flash_device* %arrayidx52, i32 0, i32 4, !dbg !3180
  %61 = load i64, i64* %sectorsize, align 8, !dbg !3180
  %conv53 = trunc i64 %61 to i32, !dbg !3179
  %62 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3181
  %mtd54 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %62, i32 0, i32 3, !dbg !3182
  %erasesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd54, i32 0, i32 3, !dbg !3183
  store i32 %conv53, i32* %erasesize, align 8, !dbg !3184
  %63 = load i32, i32* %flash_index, align 4, !dbg !3185
  %idxprom55 = sext i32 %63 to i64, !dbg !3186
  %arrayidx56 = getelementptr [34 x %struct.flash_device], [34 x %struct.flash_device]* @flash_devices, i64 0, i64 %idxprom55, !dbg !3186
  %pagesize = getelementptr inbounds %struct.flash_device, %struct.flash_device* %arrayidx56, i32 0, i32 3, !dbg !3187
  %64 = load i32, i32* %pagesize, align 8, !dbg !3187
  %65 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3188
  %page_size = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %65, i32 0, i32 6, !dbg !3189
  store i32 %64, i32* %page_size, align 8, !dbg !3190
  %66 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3191
  %page_size57 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %66, i32 0, i32 6, !dbg !3192
  %67 = load i32, i32* %page_size57, align 8, !dbg !3192
  %68 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3193
  %mtd58 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %68, i32 0, i32 3, !dbg !3194
  %writebufsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd58, i32 0, i32 5, !dbg !3195
  store i32 %67, i32* %writebufsize, align 8, !dbg !3196
  %69 = load i32, i32* %flash_index, align 4, !dbg !3197
  %idxprom59 = sext i32 %69 to i64, !dbg !3198
  %arrayidx60 = getelementptr [34 x %struct.flash_device], [34 x %struct.flash_device]* @flash_devices, i64 0, i64 %idxprom59, !dbg !3198
  %erase_cmd = getelementptr inbounds %struct.flash_device, %struct.flash_device* %arrayidx60, i32 0, i32 1, !dbg !3199
  %70 = load i8, i8* %erase_cmd, align 8, !dbg !3199
  %71 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3200
  %erase_cmd61 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %71, i32 0, i32 8, !dbg !3201
  store i8 %70, i8* %erase_cmd61, align 8, !dbg !3202
  %72 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3203
  %mtd62 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %72, i32 0, i32 3, !dbg !3204
  %_erase = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd62, i32 0, i32 21, !dbg !3205
  store i32 (%struct.mtd_info*, %struct.erase_info*)* @spear_mtd_erase, i32 (%struct.mtd_info*, %struct.erase_info*)** %_erase, align 8, !dbg !3206
  %73 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3207
  %mtd63 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %73, i32 0, i32 3, !dbg !3208
  %_read = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd63, i32 0, i32 24, !dbg !3209
  store i32 (%struct.mtd_info*, i64, i64, i64*, i8*)* @spear_mtd_read, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)** %_read, align 8, !dbg !3210
  %74 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3211
  %mtd64 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %74, i32 0, i32 3, !dbg !3212
  %_write = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd64, i32 0, i32 25, !dbg !3213
  store i32 (%struct.mtd_info*, i64, i64, i64*, i8*)* @spear_mtd_write, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)** %_write, align 8, !dbg !3214
  %75 = load i32, i32* %flash_index, align 4, !dbg !3215
  %idxprom65 = sext i32 %75 to i64, !dbg !3216
  %arrayidx66 = getelementptr [34 x %struct.flash_device], [34 x %struct.flash_device]* @flash_devices, i64 0, i64 %idxprom65, !dbg !3216
  %device_id = getelementptr inbounds %struct.flash_device, %struct.flash_device* %arrayidx66, i32 0, i32 2, !dbg !3217
  %76 = load i32, i32* %device_id, align 4, !dbg !3217
  %77 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3218
  %dev_id = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %77, i32 0, i32 1, !dbg !3219
  store i32 %76, i32* %dev_id, align 4, !dbg !3220
  %78 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3221
  %pdev67 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %78, i32 0, i32 5, !dbg !3221
  %79 = load %struct.platform_device*, %struct.platform_device** %pdev67, align 8, !dbg !3221
  %dev68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 3, !dbg !3221
  %80 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3221
  %mtd69 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %80, i32 0, i32 3, !dbg !3221
  %name70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd69, i32 0, i32 13, !dbg !3221
  %81 = load i8*, i8** %name70, align 8, !dbg !3221
  %82 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3221
  %mtd71 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %82, i32 0, i32 3, !dbg !3221
  %size72 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd71, i32 0, i32 2, !dbg !3221
  %83 = load i64, i64* %size72, align 8, !dbg !3221
  %84 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3221
  %mtd73 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %84, i32 0, i32 3, !dbg !3221
  %size74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd73, i32 0, i32 2, !dbg !3221
  %85 = load i64, i64* %size74, align 8, !dbg !3221
  %div = udiv i64 %85, 1048576, !dbg !3221
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %81, i64 %83, i64 %div) #8, !dbg !3221
  %86 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3222
  %pdev75 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %86, i32 0, i32 5, !dbg !3222
  %87 = load %struct.platform_device*, %struct.platform_device** %pdev75, align 8, !dbg !3222
  %dev76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 3, !dbg !3222
  %88 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3222
  %mtd77 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %88, i32 0, i32 3, !dbg !3222
  %erasesize78 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd77, i32 0, i32 3, !dbg !3222
  %89 = load i32, i32* %erasesize78, align 8, !dbg !3222
  %90 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3222
  %mtd79 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %90, i32 0, i32 3, !dbg !3222
  %erasesize80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %mtd79, i32 0, i32 3, !dbg !3222
  %91 = load i32, i32* %erasesize80, align 8, !dbg !3222
  %div81 = udiv i32 %91, 1024, !dbg !3222
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %89, i32 %div81) #8, !dbg !3222
  %92 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3223
  %mtd82 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %92, i32 0, i32 3, !dbg !3223
  %93 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3223
  %94 = load i32, i32* %count, align 4, !dbg !3223
  %call83 = call i32 @mtd_device_parse_register(%struct.mtd_info* %mtd82, i8** null, %struct.mtd_part_parser_data* null, %struct.mtd_partition* %93, i32 %94) #7, !dbg !3223
  store i32 %call83, i32* %ret, align 4, !dbg !3224
  %95 = load i32, i32* %ret, align 4, !dbg !3225
  %tobool84 = icmp ne i32 %95, 0, !dbg !3225
  br i1 %tobool84, label %if.then85, label %if.end88, !dbg !3227

if.then85:                                        ; preds = %if.end40
  %96 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3228
  %pdev86 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %96, i32 0, i32 5, !dbg !3228
  %97 = load %struct.platform_device*, %struct.platform_device** %pdev86, align 8, !dbg !3228
  %dev87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 3, !dbg !3228
  %98 = load i32, i32* %ret, align 4, !dbg !3228
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %98) #8, !dbg !3228
  %99 = load i32, i32* %ret, align 4, !dbg !3230
  store i32 %99, i32* %retval, align 4, !dbg !3231
  br label %return, !dbg !3231

if.end88:                                         ; preds = %if.end40
  store i32 0, i32* %retval, align 4, !dbg !3232
  br label %return, !dbg !3232

return:                                           ; preds = %if.end88, %if.then85, %if.then25, %if.then17, %if.then8, %if.then3, %if.then
  %100 = load i32, i32* %retval, align 4, !dbg !3233
  ret i32 %100, !dbg !3233
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !3234 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !3237, metadata !DIExpression()), !dbg !3238
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3239
  call void @clk_disable(%struct.clk* %0) #7, !dbg !3240
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3241
  call void @clk_unprepare(%struct.clk* %1) #7, !dbg !3242
  ret void, !dbg !3243
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #2 !dbg !3244 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3249, metadata !DIExpression()), !dbg !3250
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3255
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3256
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3257
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #7, !dbg !3258
  ret i32 %call, !dbg !3259
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

; Function Attrs: noredzone
declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #2 !dbg !3260 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3263, metadata !DIExpression()), !dbg !3264
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3265, metadata !DIExpression()), !dbg !3266
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3267, metadata !DIExpression()), !dbg !3268
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3271, metadata !DIExpression()), !dbg !3272
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3273
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3274
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3275
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3276
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #7, !dbg !3277
  store i32 %call, i32* %ret, align 4, !dbg !3272
  %4 = load i32, i32* %ret, align 4, !dbg !3278
  %cmp = icmp sge i32 %4, 0, !dbg !3280
  br i1 %cmp, label %if.then, label %if.else, !dbg !3281

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3282
  br label %return, !dbg !3282

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3283
  store i32 %5, i32* %retval, align 4, !dbg !3284
  br label %return, !dbg !3284

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3285
  ret i32 %6, !dbg !3285
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #6 !dbg !3286 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3289, metadata !DIExpression()), !dbg !3290
  %0 = load i32, i32* %val.addr, align 4, !dbg !3291
  %call = call i32 @__arch_swab32(i32 %0) #10, !dbg !3292
  ret i32 %call, !dbg !3293
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #6 !dbg !3294 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3296, metadata !DIExpression()), !dbg !3297
  %0 = load i32, i32* %val.addr, align 4, !dbg !3298
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !3299, !srcloc !3300
  store i32 %1, i32* %val.addr, align 4, !dbg !3299
  %2 = load i32, i32* %val.addr, align 4, !dbg !3301
  ret i32 %2, !dbg !3302
}

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !3303 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3312, metadata !DIExpression()), !dbg !3311
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3311
  %1 = bitcast i8* %0 to i32*, !dbg !3311
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #9, !dbg !3311, !srcloc !3313
  store i32 %2, i32* %ret, align 4, !dbg !3311
  %3 = load i32, i32* %ret, align 4, !dbg !3311
  ret i32 %3, !dbg !3311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !3314 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3320, metadata !DIExpression()), !dbg !3319
  %0 = load i32, i32* %val.addr, align 4, !dbg !3319
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3319
  %2 = bitcast i8* %1 to i32*, !dbg !3319
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #9, !dbg !3319, !srcloc !3321
  ret void, !dbg !3319
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i64 @clk_get_rate(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3322 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3325, metadata !DIExpression()), !dbg !3326
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3327, metadata !DIExpression()), !dbg !3328
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3329
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3330
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3331
  store i8* %0, i8** %driver_data, align 8, !dbg !3332
  ret void, !dbg !3333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3334 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3339, metadata !DIExpression()), !dbg !3340
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3341
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3342
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #7, !dbg !3343
  ret i8* %call, !dbg !3344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_probe_flash(%struct.spear_smi* %dev, i32 %bank) #2 !dbg !3345 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.spear_smi*, align 8
  %bank.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret24 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond26 = alloca i8, align 1
  %tmp36 = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  %tmp53 = alloca i64, align 8
  store %struct.spear_smi* %dev, %struct.spear_smi** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev.addr, metadata !3348, metadata !DIExpression()), !dbg !3349
  store i32 %bank, i32* %bank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bank.addr, metadata !3350, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.declare(metadata i32* %val, metadata !3354, metadata !DIExpression()), !dbg !3355
  store i32 0, i32* %val, align 4, !dbg !3355
  %0 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3356
  %1 = load i32, i32* %bank.addr, align 4, !dbg !3357
  %call = call i32 @spear_smi_wait_till_ready(%struct.spear_smi* %0, i32 %1, i64 25) #7, !dbg !3358
  store i32 %call, i32* %ret, align 4, !dbg !3359
  %2 = load i32, i32* %ret, align 4, !dbg !3360
  %tobool = icmp ne i32 %2, 0, !dbg !3360
  br i1 %tobool, label %if.then, label %if.end, !dbg !3362

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !3363
  store i32 %3, i32* %retval, align 4, !dbg !3364
  br label %return, !dbg !3364

if.end:                                           ; preds = %entry
  %4 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3365
  %lock = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %4, i32 0, i32 3, !dbg !3366
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !3367
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3368
  %status = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %5, i32 0, i32 1, !dbg !3369
  store i32 0, i32* %status, align 8, !dbg !3370
  %6 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3371
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %6, i32 0, i32 4, !dbg !3372
  %7 = load i8*, i8** %io_base, align 8, !dbg !3372
  %add.ptr = getelementptr i8, i8* %7, i64 0, !dbg !3373
  %call1 = call i32 @readl(i8* %add.ptr) #7, !dbg !3374
  store i32 %call1, i32* %val, align 4, !dbg !3375
  %8 = load i32, i32* %val, align 4, !dbg !3376
  %or = or i32 %8, 268435456, !dbg !3377
  %9 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3378
  %io_base2 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %9, i32 0, i32 4, !dbg !3379
  %10 = load i8*, i8** %io_base2, align 8, !dbg !3379
  %add.ptr3 = getelementptr i8, i8* %10, i64 0, !dbg !3380
  call void @writel(i32 %or, i8* %add.ptr3) #7, !dbg !3381
  %11 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3382
  %io_base4 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %11, i32 0, i32 4, !dbg !3383
  %12 = load i8*, i8** %io_base4, align 8, !dbg !3383
  %add.ptr5 = getelementptr i8, i8* %12, i64 12, !dbg !3384
  call void @writel(i32 159, i8* %add.ptr5) #7, !dbg !3385
  %13 = load i32, i32* %bank.addr, align 4, !dbg !3386
  %shl = shl i32 %13, 12, !dbg !3387
  %or6 = or i32 %shl, 128, !dbg !3388
  %or7 = or i32 %or6, 1, !dbg !3389
  %or8 = or i32 %or7, 48, !dbg !3390
  %or9 = or i32 %or8, 256, !dbg !3391
  store i32 %or9, i32* %val, align 4, !dbg !3392
  %14 = load i32, i32* %val, align 4, !dbg !3393
  %15 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3394
  %io_base10 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %15, i32 0, i32 4, !dbg !3395
  %16 = load i8*, i8** %io_base10, align 8, !dbg !3395
  %add.ptr11 = getelementptr i8, i8* %16, i64 4, !dbg !3396
  call void @writel(i32 %14, i8* %add.ptr11) #7, !dbg !3397
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3398, metadata !DIExpression()), !dbg !3400
  store i64 25, i64* %__ret, align 8, !dbg !3400
  br label %do.body, !dbg !3400

do.body:                                          ; preds = %if.end
  br label %do.body12, !dbg !3401

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !3403

do.end:                                           ; preds = %do.body12
  br label %do.end13, !dbg !3401

do.end13:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !3405, metadata !DIExpression()), !dbg !3408
  %17 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3408
  %status14 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %17, i32 0, i32 1, !dbg !3408
  %18 = load i32, i32* %status14, align 8, !dbg !3408
  %and = and i32 %18, 256, !dbg !3408
  %tobool15 = icmp ne i32 %and, 0, !dbg !3408
  %frombool = zext i1 %tobool15 to i8, !dbg !3408
  store i8 %frombool, i8* %__cond, align 1, !dbg !3408
  %19 = load i8, i8* %__cond, align 1, !dbg !3409
  %tobool16 = trunc i8 %19 to i1, !dbg !3409
  br i1 %tobool16, label %land.lhs.true, label %if.end19, !dbg !3409

land.lhs.true:                                    ; preds = %do.end13
  %20 = load i64, i64* %__ret, align 8, !dbg !3409
  %tobool17 = icmp ne i64 %20, 0, !dbg !3409
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3408

if.then18:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !3409
  br label %if.end19, !dbg !3409

if.end19:                                         ; preds = %if.then18, %land.lhs.true, %do.end13
  %21 = load i8, i8* %__cond, align 1, !dbg !3408
  %tobool20 = trunc i8 %21 to i1, !dbg !3408
  br i1 %tobool20, label %lor.end, label %lor.rhs, !dbg !3408

lor.rhs:                                          ; preds = %if.end19
  %22 = load i64, i64* %__ret, align 8, !dbg !3408
  %tobool21 = icmp ne i64 %22, 0, !dbg !3408
  %lnot = xor i1 %tobool21, true, !dbg !3408
  br label %lor.end, !dbg !3408

lor.end:                                          ; preds = %lor.rhs, %if.end19
  %23 = phi i1 [ true, %if.end19 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32, !dbg !3408
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !3409
  %24 = load i32, i32* %tmp, align 4, !dbg !3408
  %tobool22 = icmp ne i32 %24, 0, !dbg !3411
  br i1 %tobool22, label %if.end52, label %if.then23, !dbg !3400

if.then23:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !3412, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.declare(metadata i64* %__ret24, metadata !3426, metadata !DIExpression()), !dbg !3425
  store i64 25, i64* %__ret24, align 8, !dbg !3425
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #7, !dbg !3425
  br label %for.cond, !dbg !3425

for.cond:                                         ; preds = %if.end48, %if.then23
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !3427, metadata !DIExpression()), !dbg !3431
  %25 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3431
  %cmd_complete = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %25, i32 0, i32 6, !dbg !3431
  %call25 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %cmd_complete, %struct.wait_queue_entry* %__wq_entry, i32 1) #7, !dbg !3431
  store i64 %call25, i64* %__int, align 8, !dbg !3431
  call void @llvm.dbg.declare(metadata i8* %__cond26, metadata !3432, metadata !DIExpression()), !dbg !3435
  %26 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3435
  %status27 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %26, i32 0, i32 1, !dbg !3435
  %27 = load i32, i32* %status27, align 8, !dbg !3435
  %and28 = and i32 %27, 256, !dbg !3435
  %tobool29 = icmp ne i32 %and28, 0, !dbg !3435
  %frombool30 = zext i1 %tobool29 to i8, !dbg !3435
  store i8 %frombool30, i8* %__cond26, align 1, !dbg !3435
  %28 = load i8, i8* %__cond26, align 1, !dbg !3436
  %tobool31 = trunc i8 %28 to i1, !dbg !3436
  br i1 %tobool31, label %land.lhs.true32, label %if.end35, !dbg !3436

land.lhs.true32:                                  ; preds = %for.cond
  %29 = load i64, i64* %__ret24, align 8, !dbg !3436
  %tobool33 = icmp ne i64 %29, 0, !dbg !3436
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !3435

if.then34:                                        ; preds = %land.lhs.true32
  store i64 1, i64* %__ret24, align 8, !dbg !3436
  br label %if.end35, !dbg !3436

if.end35:                                         ; preds = %if.then34, %land.lhs.true32, %for.cond
  %30 = load i8, i8* %__cond26, align 1, !dbg !3435
  %tobool37 = trunc i8 %30 to i1, !dbg !3435
  br i1 %tobool37, label %lor.end41, label %lor.rhs38, !dbg !3435

lor.rhs38:                                        ; preds = %if.end35
  %31 = load i64, i64* %__ret24, align 8, !dbg !3435
  %tobool39 = icmp ne i64 %31, 0, !dbg !3435
  %lnot40 = xor i1 %tobool39, true, !dbg !3435
  br label %lor.end41, !dbg !3435

lor.end41:                                        ; preds = %lor.rhs38, %if.end35
  %32 = phi i1 [ true, %if.end35 ], [ %lnot40, %lor.rhs38 ]
  %lor.ext42 = zext i1 %32 to i32, !dbg !3435
  store i32 %lor.ext42, i32* %tmp36, align 4, !dbg !3436
  %33 = load i32, i32* %tmp36, align 4, !dbg !3435
  %tobool43 = icmp ne i32 %33, 0, !dbg !3438
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3431

if.then44:                                        ; preds = %lor.end41
  br label %for.end, !dbg !3438

if.end45:                                         ; preds = %lor.end41
  %34 = load i64, i64* %__int, align 8, !dbg !3439
  %tobool46 = icmp ne i64 %34, 0, !dbg !3439
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !3431

if.then47:                                        ; preds = %if.end45
  %35 = load i64, i64* %__int, align 8, !dbg !3441
  store i64 %35, i64* %__ret24, align 8, !dbg !3441
  br label %__out, !dbg !3441

if.end48:                                         ; preds = %if.end45
  %36 = load i64, i64* %__ret24, align 8, !dbg !3431
  %call49 = call i64 @schedule_timeout(i64 %36) #7, !dbg !3431
  store i64 %call49, i64* %__ret24, align 8, !dbg !3431
  br label %for.cond, !dbg !3443, !llvm.loop !3444

for.end:                                          ; preds = %if.then44
  %37 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3425
  %cmd_complete50 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %37, i32 0, i32 6, !dbg !3425
  call void @finish_wait(%struct.wait_queue_head* %cmd_complete50, %struct.wait_queue_entry* %__wq_entry) #7, !dbg !3425
  br label %__out, !dbg !3425

__out:                                            ; preds = %for.end, %if.then47
  call void @llvm.dbg.label(metadata !3446), !dbg !3425
  %38 = load i64, i64* %__ret24, align 8, !dbg !3425
  store i64 %38, i64* %tmp51, align 8, !dbg !3425
  %39 = load i64, i64* %tmp51, align 8, !dbg !3425
  store i64 %39, i64* %__ret, align 8, !dbg !3411
  br label %if.end52, !dbg !3411

if.end52:                                         ; preds = %__out, %lor.end
  %40 = load i64, i64* %__ret, align 8, !dbg !3400
  store i64 %40, i64* %tmp53, align 8, !dbg !3411
  %41 = load i64, i64* %tmp53, align 8, !dbg !3400
  %conv = trunc i64 %41 to i32, !dbg !3447
  store i32 %conv, i32* %ret, align 4, !dbg !3448
  %42 = load i32, i32* %ret, align 4, !dbg !3449
  %cmp = icmp sle i32 %42, 0, !dbg !3451
  br i1 %cmp, label %if.then55, label %if.end56, !dbg !3452

if.then55:                                        ; preds = %if.end52
  store i32 -19, i32* %ret, align 4, !dbg !3453
  br label %err_probe, !dbg !3455

if.end56:                                         ; preds = %if.end52
  %43 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3456
  %io_base57 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %43, i32 0, i32 4, !dbg !3457
  %44 = load i8*, i8** %io_base57, align 8, !dbg !3457
  %add.ptr58 = getelementptr i8, i8* %44, i64 16, !dbg !3458
  %call59 = call i32 @readl(i8* %add.ptr58) #7, !dbg !3459
  store i32 %call59, i32* %val, align 4, !dbg !3460
  %45 = load i32, i32* %val, align 4, !dbg !3461
  %and60 = and i32 %45, 16777215, !dbg !3461
  store i32 %and60, i32* %val, align 4, !dbg !3461
  %46 = load i32, i32* %val, align 4, !dbg !3462
  %call61 = call i32 @get_flash_index(i32 %46) #7, !dbg !3463
  store i32 %call61, i32* %ret, align 4, !dbg !3464
  br label %err_probe, !dbg !3465

err_probe:                                        ; preds = %if.end56, %if.then55
  call void @llvm.dbg.label(metadata !3466), !dbg !3467
  %47 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3468
  %io_base62 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %47, i32 0, i32 4, !dbg !3469
  %48 = load i8*, i8** %io_base62, align 8, !dbg !3469
  %add.ptr63 = getelementptr i8, i8* %48, i64 0, !dbg !3470
  %call64 = call i32 @readl(i8* %add.ptr63) #7, !dbg !3471
  store i32 %call64, i32* %val, align 4, !dbg !3472
  %49 = load i32, i32* %val, align 4, !dbg !3473
  %and65 = and i32 %49, -268435457, !dbg !3474
  %50 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3475
  %io_base66 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %50, i32 0, i32 4, !dbg !3476
  %51 = load i8*, i8** %io_base66, align 8, !dbg !3476
  %add.ptr67 = getelementptr i8, i8* %51, i64 0, !dbg !3477
  call void @writel(i32 %and65, i8* %add.ptr67) #7, !dbg !3478
  %52 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3479
  %lock68 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %52, i32 0, i32 3, !dbg !3480
  call void @mutex_unlock(%struct.mutex* %lock68) #7, !dbg !3481
  %53 = load i32, i32* %ret, align 4, !dbg !3482
  store i32 %53, i32* %retval, align 4, !dbg !3483
  br label %return, !dbg !3483

return:                                           ; preds = %err_probe, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !3484
  ret i32 %54, !dbg !3484
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap(%struct.device*, i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtd_set_of_node(%struct.mtd_info* %mtd, %struct.device_node* %np) #2 !dbg !3485 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3488, metadata !DIExpression()), !dbg !3489
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3490, metadata !DIExpression()), !dbg !3491
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3492
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3493
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 55, !dbg !3494
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !3495
  store %struct.device_node* %0, %struct.device_node** %of_node, align 8, !dbg !3496
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3497
  %name = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 13, !dbg !3499
  %3 = load i8*, i8** %name, align 8, !dbg !3499
  %tobool = icmp ne i8* %3, null, !dbg !3497
  br i1 %tobool, label %if.end, label %if.then, !dbg !3500

if.then:                                          ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3501
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3502
  %name1 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 13, !dbg !3503
  %call = call i32 @of_property_read_string(%struct.device_node* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8** %name1) #7, !dbg !3504
  br label %if.end, !dbg !3504

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_mtd_erase(%struct.mtd_info* %mtd, %struct.erase_info* %e_info) #2 !dbg !3506 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %e_info.addr = alloca %struct.erase_info*, align 8
  %flash = alloca %struct.spear_snor_flash*, align 8
  %dev = alloca %struct.spear_smi*, align 8
  %addr = alloca i32, align 4
  %command = alloca i32, align 4
  %bank = alloca i32, align 4
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3507, metadata !DIExpression()), !dbg !3508
  store %struct.erase_info* %e_info, %struct.erase_info** %e_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.erase_info** %e_info.addr, metadata !3509, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.declare(metadata %struct.spear_snor_flash** %flash, metadata !3511, metadata !DIExpression()), !dbg !3512
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3513
  %call = call %struct.spear_snor_flash* @get_flash_data(%struct.mtd_info* %0) #7, !dbg !3514
  store %struct.spear_snor_flash* %call, %struct.spear_snor_flash** %flash, align 8, !dbg !3512
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev, metadata !3515, metadata !DIExpression()), !dbg !3516
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3517
  %priv = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 53, !dbg !3518
  %2 = load i8*, i8** %priv, align 8, !dbg !3518
  %3 = bitcast i8* %2 to %struct.spear_smi*, !dbg !3517
  store %struct.spear_smi* %3, %struct.spear_smi** %dev, align 8, !dbg !3516
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !3519, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.declare(metadata i32* %command, metadata !3521, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.declare(metadata i32* %bank, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3525, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3527, metadata !DIExpression()), !dbg !3528
  %4 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3529
  %tobool = icmp ne %struct.spear_snor_flash* %4, null, !dbg !3529
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3531

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3532
  %tobool1 = icmp ne %struct.spear_smi* %5, null, !dbg !3532
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3533

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !3534
  br label %return, !dbg !3534

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3535
  %bank2 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %6, i32 0, i32 0, !dbg !3536
  %7 = load i32, i32* %bank2, align 8, !dbg !3536
  store i32 %7, i32* %bank, align 4, !dbg !3537
  %8 = load i32, i32* %bank, align 4, !dbg !3538
  %9 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3540
  %num_flashes = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %9, i32 0, i32 7, !dbg !3541
  %10 = load i32, i32* %num_flashes, align 8, !dbg !3541
  %sub = sub i32 %10, 1, !dbg !3542
  %cmp = icmp ugt i32 %8, %sub, !dbg !3543
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3544

if.then3:                                         ; preds = %if.end
  %11 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3545
  %pdev = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %11, i32 0, i32 5, !dbg !3545
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !3545
  %dev4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3, !dbg !3545
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0)) #8, !dbg !3545
  store i32 -22, i32* %retval, align 4, !dbg !3547
  br label %return, !dbg !3547

if.end5:                                          ; preds = %if.end
  %13 = load %struct.erase_info*, %struct.erase_info** %e_info.addr, align 8, !dbg !3548
  %addr6 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %13, i32 0, i32 0, !dbg !3549
  %14 = load i64, i64* %addr6, align 8, !dbg !3549
  %conv = trunc i64 %14 to i32, !dbg !3548
  store i32 %conv, i32* %addr, align 4, !dbg !3550
  %15 = load %struct.erase_info*, %struct.erase_info** %e_info.addr, align 8, !dbg !3551
  %len7 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %15, i32 0, i32 1, !dbg !3552
  %16 = load i64, i64* %len7, align 8, !dbg !3552
  %conv8 = trunc i64 %16 to i32, !dbg !3551
  store i32 %conv8, i32* %len, align 4, !dbg !3553
  %17 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3554
  %lock = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %17, i32 0, i32 2, !dbg !3555
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !3556
  br label %while.cond, !dbg !3557

while.cond:                                       ; preds = %if.end15, %if.end5
  %18 = load i32, i32* %len, align 4, !dbg !3558
  %tobool9 = icmp ne i32 %18, 0, !dbg !3557
  br i1 %tobool9, label %while.body, label %while.end, !dbg !3557

while.body:                                       ; preds = %while.cond
  %19 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3559
  %20 = load i32, i32* %addr, align 4, !dbg !3561
  %call10 = call i32 @get_sector_erase_cmd(%struct.spear_snor_flash* %19, i32 %20) #7, !dbg !3562
  store i32 %call10, i32* %command, align 4, !dbg !3563
  %21 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3564
  %22 = load i32, i32* %bank, align 4, !dbg !3565
  %23 = load i32, i32* %command, align 4, !dbg !3566
  %call11 = call i32 @spear_smi_erase_sector(%struct.spear_smi* %21, i32 %22, i32 %23, i32 4) #7, !dbg !3567
  store i32 %call11, i32* %ret, align 4, !dbg !3568
  %24 = load i32, i32* %ret, align 4, !dbg !3569
  %tobool12 = icmp ne i32 %24, 0, !dbg !3569
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !3571

if.then13:                                        ; preds = %while.body
  %25 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3572
  %lock14 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %25, i32 0, i32 2, !dbg !3574
  call void @mutex_unlock(%struct.mutex* %lock14) #7, !dbg !3575
  %26 = load i32, i32* %ret, align 4, !dbg !3576
  store i32 %26, i32* %retval, align 4, !dbg !3577
  br label %return, !dbg !3577

if.end15:                                         ; preds = %while.body
  %27 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3578
  %erasesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 3, !dbg !3579
  %28 = load i32, i32* %erasesize, align 8, !dbg !3579
  %29 = load i32, i32* %addr, align 4, !dbg !3580
  %add = add i32 %29, %28, !dbg !3580
  store i32 %add, i32* %addr, align 4, !dbg !3580
  %30 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3581
  %erasesize16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 3, !dbg !3582
  %31 = load i32, i32* %erasesize16, align 8, !dbg !3582
  %32 = load i32, i32* %len, align 4, !dbg !3583
  %sub17 = sub i32 %32, %31, !dbg !3583
  store i32 %sub17, i32* %len, align 4, !dbg !3583
  br label %while.cond, !dbg !3557, !llvm.loop !3584

while.end:                                        ; preds = %while.cond
  %33 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3586
  %lock18 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %33, i32 0, i32 2, !dbg !3587
  call void @mutex_unlock(%struct.mutex* %lock18) #7, !dbg !3588
  store i32 0, i32* %retval, align 4, !dbg !3589
  br label %return, !dbg !3589

return:                                           ; preds = %while.end, %if.then13, %if.then3, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !3590
  ret i32 %34, !dbg !3590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_mtd_read(%struct.mtd_info* %mtd, i64 %from, i64 %len, i64* %retlen, i8* %buf) #2 !dbg !3591 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %from.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %retlen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %flash = alloca %struct.spear_snor_flash*, align 8
  %dev = alloca %struct.spear_smi*, align 8
  %src = alloca i8*, align 8
  %ctrlreg1 = alloca i32, align 4
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3594, metadata !DIExpression()), !dbg !3595
  store i64 %from, i64* %from.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %from.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  store i64* %retlen, i64** %retlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %retlen.addr, metadata !3600, metadata !DIExpression()), !dbg !3601
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3602, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.declare(metadata %struct.spear_snor_flash** %flash, metadata !3604, metadata !DIExpression()), !dbg !3605
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3606
  %call = call %struct.spear_snor_flash* @get_flash_data(%struct.mtd_info* %0) #7, !dbg !3607
  store %struct.spear_snor_flash* %call, %struct.spear_snor_flash** %flash, align 8, !dbg !3605
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev, metadata !3608, metadata !DIExpression()), !dbg !3609
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3610
  %priv = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 53, !dbg !3611
  %2 = load i8*, i8** %priv, align 8, !dbg !3611
  %3 = bitcast i8* %2 to %struct.spear_smi*, !dbg !3610
  store %struct.spear_smi* %3, %struct.spear_smi** %dev, align 8, !dbg !3609
  call void @llvm.dbg.declare(metadata i8** %src, metadata !3612, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.declare(metadata i32* %ctrlreg1, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.declare(metadata i32* %val, metadata !3616, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3618, metadata !DIExpression()), !dbg !3619
  %4 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3620
  %tobool = icmp ne %struct.spear_snor_flash* %4, null, !dbg !3620
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3622

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3623
  %tobool1 = icmp ne %struct.spear_smi* %5, null, !dbg !3623
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3624

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !3625
  br label %return, !dbg !3625

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3626
  %bank = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %6, i32 0, i32 0, !dbg !3628
  %7 = load i32, i32* %bank, align 8, !dbg !3628
  %8 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3629
  %num_flashes = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %8, i32 0, i32 7, !dbg !3630
  %9 = load i32, i32* %num_flashes, align 8, !dbg !3630
  %sub = sub i32 %9, 1, !dbg !3631
  %cmp = icmp ugt i32 %7, %sub, !dbg !3632
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !3633

if.then2:                                         ; preds = %if.end
  %10 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3634
  %pdev = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %10, i32 0, i32 5, !dbg !3634
  %11 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !3634
  %dev3 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 3, !dbg !3634
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0)) #8, !dbg !3634
  store i32 -22, i32* %retval, align 4, !dbg !3636
  br label %return, !dbg !3636

if.end4:                                          ; preds = %if.end
  %12 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3637
  %base_addr = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %12, i32 0, i32 7, !dbg !3638
  %13 = load i8*, i8** %base_addr, align 8, !dbg !3638
  %14 = load i64, i64* %from.addr, align 8, !dbg !3639
  %add.ptr = getelementptr i8, i8* %13, i64 %14, !dbg !3640
  store i8* %add.ptr, i8** %src, align 8, !dbg !3641
  %15 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3642
  %lock = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %15, i32 0, i32 2, !dbg !3643
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !3644
  %16 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3645
  %17 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3646
  %bank5 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %17, i32 0, i32 0, !dbg !3647
  %18 = load i32, i32* %bank5, align 8, !dbg !3647
  %call6 = call i32 @spear_smi_wait_till_ready(%struct.spear_smi* %16, i32 %18, i64 750) #7, !dbg !3648
  store i32 %call6, i32* %ret, align 4, !dbg !3649
  %19 = load i32, i32* %ret, align 4, !dbg !3650
  %tobool7 = icmp ne i32 %19, 0, !dbg !3650
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !3652

if.then8:                                         ; preds = %if.end4
  %20 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3653
  %lock9 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %20, i32 0, i32 2, !dbg !3655
  call void @mutex_unlock(%struct.mutex* %lock9) #7, !dbg !3656
  %21 = load i32, i32* %ret, align 4, !dbg !3657
  store i32 %21, i32* %retval, align 4, !dbg !3658
  br label %return, !dbg !3658

if.end10:                                         ; preds = %if.end4
  %22 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3659
  %lock11 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %22, i32 0, i32 3, !dbg !3660
  call void @mutex_lock(%struct.mutex* %lock11) #7, !dbg !3661
  %23 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3662
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %23, i32 0, i32 4, !dbg !3663
  %24 = load i8*, i8** %io_base, align 8, !dbg !3663
  %add.ptr12 = getelementptr i8, i8* %24, i64 0, !dbg !3664
  %call13 = call i32 @readl(i8* %add.ptr12) #7, !dbg !3665
  store i32 %call13, i32* %val, align 4, !dbg !3666
  store i32 %call13, i32* %ctrlreg1, align 4, !dbg !3667
  %25 = load i32, i32* %val, align 4, !dbg !3668
  %and = and i32 %25, -805306369, !dbg !3668
  store i32 %and, i32* %val, align 4, !dbg !3668
  %26 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3669
  %fast_mode = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %26, i32 0, i32 9, !dbg !3671
  %27 = load i8, i8* %fast_mode, align 1, !dbg !3671
  %tobool14 = icmp ne i8 %27, 0, !dbg !3669
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3672

if.then15:                                        ; preds = %if.end10
  %28 = load i32, i32* %val, align 4, !dbg !3673
  %or = or i32 %28, 32768, !dbg !3673
  store i32 %or, i32* %val, align 4, !dbg !3673
  br label %if.end16, !dbg !3674

if.end16:                                         ; preds = %if.then15, %if.end10
  %29 = load i32, i32* %val, align 4, !dbg !3675
  %30 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3676
  %io_base17 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %30, i32 0, i32 4, !dbg !3677
  %31 = load i8*, i8** %io_base17, align 8, !dbg !3677
  %add.ptr18 = getelementptr i8, i8* %31, i64 0, !dbg !3678
  call void @writel(i32 %29, i8* %add.ptr18) #7, !dbg !3679
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !3680
  %33 = load i8*, i8** %src, align 8, !dbg !3681
  %34 = load i64, i64* %len.addr, align 8, !dbg !3682
  call void @memcpy_fromio(i8* %32, i8* %33, i64 %34) #7, !dbg !3683
  %35 = load i32, i32* %ctrlreg1, align 4, !dbg !3684
  %36 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3685
  %io_base19 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %36, i32 0, i32 4, !dbg !3686
  %37 = load i8*, i8** %io_base19, align 8, !dbg !3686
  %add.ptr20 = getelementptr i8, i8* %37, i64 0, !dbg !3687
  call void @writel(i32 %35, i8* %add.ptr20) #7, !dbg !3688
  %38 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3689
  %lock21 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %38, i32 0, i32 3, !dbg !3690
  call void @mutex_unlock(%struct.mutex* %lock21) #7, !dbg !3691
  %39 = load i64, i64* %len.addr, align 8, !dbg !3692
  %40 = load i64*, i64** %retlen.addr, align 8, !dbg !3693
  store i64 %39, i64* %40, align 8, !dbg !3694
  %41 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3695
  %lock22 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %41, i32 0, i32 2, !dbg !3696
  call void @mutex_unlock(%struct.mutex* %lock22) #7, !dbg !3697
  store i32 0, i32* %retval, align 4, !dbg !3698
  br label %return, !dbg !3698

return:                                           ; preds = %if.end16, %if.then8, %if.then2, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !3699
  ret i32 %42, !dbg !3699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_mtd_write(%struct.mtd_info* %mtd, i64 %to, i64 %len, i64* %retlen, i8* %buf) #2 !dbg !3700 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %to.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %retlen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %flash = alloca %struct.spear_snor_flash*, align 8
  %dev = alloca %struct.spear_smi*, align 8
  %dest = alloca i8*, align 8
  %page_offset = alloca i32, align 4
  %page_size = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3705, metadata !DIExpression()), !dbg !3706
  store i64 %to, i64* %to.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %to.addr, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  store i64* %retlen, i64** %retlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %retlen.addr, metadata !3711, metadata !DIExpression()), !dbg !3712
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3713, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.declare(metadata %struct.spear_snor_flash** %flash, metadata !3715, metadata !DIExpression()), !dbg !3716
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3717
  %call = call %struct.spear_snor_flash* @get_flash_data(%struct.mtd_info* %0) #7, !dbg !3718
  store %struct.spear_snor_flash* %call, %struct.spear_snor_flash** %flash, align 8, !dbg !3716
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev, metadata !3719, metadata !DIExpression()), !dbg !3720
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3721
  %priv = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 53, !dbg !3722
  %2 = load i8*, i8** %priv, align 8, !dbg !3722
  %3 = bitcast i8* %2 to %struct.spear_smi*, !dbg !3721
  store %struct.spear_smi* %3, %struct.spear_smi** %dev, align 8, !dbg !3720
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !3723, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.declare(metadata i32* %page_offset, metadata !3725, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.declare(metadata i32* %page_size, metadata !3727, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3729, metadata !DIExpression()), !dbg !3730
  %4 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3731
  %tobool = icmp ne %struct.spear_snor_flash* %4, null, !dbg !3731
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3733

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3734
  %tobool1 = icmp ne %struct.spear_smi* %5, null, !dbg !3734
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3735

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !3736
  br label %return, !dbg !3736

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3737
  %bank = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %6, i32 0, i32 0, !dbg !3739
  %7 = load i32, i32* %bank, align 8, !dbg !3739
  %8 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3740
  %num_flashes = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %8, i32 0, i32 7, !dbg !3741
  %9 = load i32, i32* %num_flashes, align 8, !dbg !3741
  %sub = sub i32 %9, 1, !dbg !3742
  %cmp = icmp ugt i32 %7, %sub, !dbg !3743
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !3744

if.then2:                                         ; preds = %if.end
  %10 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3745
  %pdev = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %10, i32 0, i32 5, !dbg !3745
  %11 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !3745
  %dev3 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 3, !dbg !3745
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0)) #8, !dbg !3745
  store i32 -22, i32* %retval, align 4, !dbg !3747
  br label %return, !dbg !3747

if.end4:                                          ; preds = %if.end
  %12 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3748
  %base_addr = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %12, i32 0, i32 7, !dbg !3749
  %13 = load i8*, i8** %base_addr, align 8, !dbg !3749
  %14 = load i64, i64* %to.addr, align 8, !dbg !3750
  %add.ptr = getelementptr i8, i8* %13, i64 %14, !dbg !3751
  store i8* %add.ptr, i8** %dest, align 8, !dbg !3752
  %15 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3753
  %lock = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %15, i32 0, i32 2, !dbg !3754
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !3755
  %16 = load i64, i64* %to.addr, align 8, !dbg !3756
  %conv = trunc i64 %16 to i32, !dbg !3757
  %17 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3758
  %page_size5 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %17, i32 0, i32 6, !dbg !3759
  %18 = load i32, i32* %page_size5, align 8, !dbg !3759
  %rem = urem i32 %conv, %18, !dbg !3760
  store i32 %rem, i32* %page_offset, align 4, !dbg !3761
  %19 = load i32, i32* %page_offset, align 4, !dbg !3762
  %conv6 = zext i32 %19 to i64, !dbg !3762
  %20 = load i64, i64* %len.addr, align 8, !dbg !3764
  %add = add i64 %conv6, %20, !dbg !3765
  %21 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3766
  %page_size7 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %21, i32 0, i32 6, !dbg !3767
  %22 = load i32, i32* %page_size7, align 8, !dbg !3767
  %conv8 = zext i32 %22 to i64, !dbg !3766
  %cmp9 = icmp ule i64 %add, %conv8, !dbg !3768
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !3769

if.then11:                                        ; preds = %if.end4
  %23 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3770
  %24 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3772
  %bank12 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %24, i32 0, i32 0, !dbg !3773
  %25 = load i32, i32* %bank12, align 8, !dbg !3773
  %26 = load i8*, i8** %dest, align 8, !dbg !3774
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !3775
  %28 = load i64, i64* %len.addr, align 8, !dbg !3776
  %call13 = call i32 @spear_smi_cpy_toio(%struct.spear_smi* %23, i32 %25, i8* %26, i8* %27, i64 %28) #7, !dbg !3777
  store i32 %call13, i32* %ret, align 4, !dbg !3778
  %29 = load i32, i32* %ret, align 4, !dbg !3779
  %tobool14 = icmp ne i32 %29, 0, !dbg !3779
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !3781

if.then15:                                        ; preds = %if.then11
  %30 = load i64, i64* %len.addr, align 8, !dbg !3782
  %31 = load i64*, i64** %retlen.addr, align 8, !dbg !3783
  %32 = load i64, i64* %31, align 8, !dbg !3784
  %add16 = add i64 %32, %30, !dbg !3784
  store i64 %add16, i64* %31, align 8, !dbg !3784
  br label %if.end17, !dbg !3785

if.end17:                                         ; preds = %if.then15, %if.then11
  br label %if.end54, !dbg !3786

if.else:                                          ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3787, metadata !DIExpression()), !dbg !3789
  %33 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3790
  %page_size18 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %33, i32 0, i32 6, !dbg !3791
  %34 = load i32, i32* %page_size18, align 8, !dbg !3791
  %35 = load i32, i32* %page_offset, align 4, !dbg !3792
  %sub19 = sub i32 %34, %35, !dbg !3793
  store i32 %sub19, i32* %page_size, align 4, !dbg !3794
  %36 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3795
  %37 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3796
  %bank20 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %37, i32 0, i32 0, !dbg !3797
  %38 = load i32, i32* %bank20, align 8, !dbg !3797
  %39 = load i8*, i8** %dest, align 8, !dbg !3798
  %40 = load i8*, i8** %buf.addr, align 8, !dbg !3799
  %41 = load i32, i32* %page_size, align 4, !dbg !3800
  %conv21 = zext i32 %41 to i64, !dbg !3800
  %call22 = call i32 @spear_smi_cpy_toio(%struct.spear_smi* %36, i32 %38, i8* %39, i8* %40, i64 %conv21) #7, !dbg !3801
  store i32 %call22, i32* %ret, align 4, !dbg !3802
  %42 = load i32, i32* %ret, align 4, !dbg !3803
  %tobool23 = icmp ne i32 %42, 0, !dbg !3803
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !3805

if.then24:                                        ; preds = %if.else
  br label %err_write, !dbg !3806

if.else25:                                        ; preds = %if.else
  %43 = load i32, i32* %page_size, align 4, !dbg !3807
  %conv26 = zext i32 %43 to i64, !dbg !3807
  %44 = load i64*, i64** %retlen.addr, align 8, !dbg !3808
  %45 = load i64, i64* %44, align 8, !dbg !3809
  %add27 = add i64 %45, %conv26, !dbg !3809
  store i64 %add27, i64* %44, align 8, !dbg !3809
  br label %if.end28

if.end28:                                         ; preds = %if.else25
  %46 = load i32, i32* %page_size, align 4, !dbg !3810
  store i32 %46, i32* %i, align 4, !dbg !3812
  br label %for.cond, !dbg !3813

for.cond:                                         ; preds = %for.inc, %if.end28
  %47 = load i32, i32* %i, align 4, !dbg !3814
  %conv29 = zext i32 %47 to i64, !dbg !3814
  %48 = load i64, i64* %len.addr, align 8, !dbg !3816
  %cmp30 = icmp ult i64 %conv29, %48, !dbg !3817
  br i1 %cmp30, label %for.body, label %for.end, !dbg !3818

for.body:                                         ; preds = %for.cond
  %49 = load i64, i64* %len.addr, align 8, !dbg !3819
  %50 = load i32, i32* %i, align 4, !dbg !3821
  %conv32 = zext i32 %50 to i64, !dbg !3821
  %sub33 = sub i64 %49, %conv32, !dbg !3822
  %conv34 = trunc i64 %sub33 to i32, !dbg !3819
  store i32 %conv34, i32* %page_size, align 4, !dbg !3823
  %51 = load i32, i32* %page_size, align 4, !dbg !3824
  %52 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3826
  %page_size35 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %52, i32 0, i32 6, !dbg !3827
  %53 = load i32, i32* %page_size35, align 8, !dbg !3827
  %cmp36 = icmp ugt i32 %51, %53, !dbg !3828
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !3829

if.then38:                                        ; preds = %for.body
  %54 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3830
  %page_size39 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %54, i32 0, i32 6, !dbg !3831
  %55 = load i32, i32* %page_size39, align 8, !dbg !3831
  store i32 %55, i32* %page_size, align 4, !dbg !3832
  br label %if.end40, !dbg !3833

if.end40:                                         ; preds = %if.then38, %for.body
  %56 = load %struct.spear_smi*, %struct.spear_smi** %dev, align 8, !dbg !3834
  %57 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3835
  %bank41 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %57, i32 0, i32 0, !dbg !3836
  %58 = load i32, i32* %bank41, align 8, !dbg !3836
  %59 = load i8*, i8** %dest, align 8, !dbg !3837
  %60 = load i32, i32* %i, align 4, !dbg !3838
  %idx.ext = zext i32 %60 to i64, !dbg !3839
  %add.ptr42 = getelementptr i8, i8* %59, i64 %idx.ext, !dbg !3839
  %61 = load i8*, i8** %buf.addr, align 8, !dbg !3840
  %62 = load i32, i32* %i, align 4, !dbg !3841
  %idx.ext43 = zext i32 %62 to i64, !dbg !3842
  %add.ptr44 = getelementptr i8, i8* %61, i64 %idx.ext43, !dbg !3842
  %63 = load i32, i32* %page_size, align 4, !dbg !3843
  %conv45 = zext i32 %63 to i64, !dbg !3843
  %call46 = call i32 @spear_smi_cpy_toio(%struct.spear_smi* %56, i32 %58, i8* %add.ptr42, i8* %add.ptr44, i64 %conv45) #7, !dbg !3844
  store i32 %call46, i32* %ret, align 4, !dbg !3845
  %64 = load i32, i32* %ret, align 4, !dbg !3846
  %tobool47 = icmp ne i32 %64, 0, !dbg !3846
  br i1 %tobool47, label %if.then48, label %if.else49, !dbg !3848

if.then48:                                        ; preds = %if.end40
  br label %for.end, !dbg !3849

if.else49:                                        ; preds = %if.end40
  %65 = load i32, i32* %page_size, align 4, !dbg !3850
  %conv50 = zext i32 %65 to i64, !dbg !3850
  %66 = load i64*, i64** %retlen.addr, align 8, !dbg !3851
  %67 = load i64, i64* %66, align 8, !dbg !3852
  %add51 = add i64 %67, %conv50, !dbg !3852
  store i64 %add51, i64* %66, align 8, !dbg !3852
  br label %if.end52

if.end52:                                         ; preds = %if.else49
  br label %for.inc, !dbg !3853

for.inc:                                          ; preds = %if.end52
  %68 = load i32, i32* %page_size, align 4, !dbg !3854
  %69 = load i32, i32* %i, align 4, !dbg !3855
  %add53 = add i32 %69, %68, !dbg !3855
  store i32 %add53, i32* %i, align 4, !dbg !3855
  br label %for.cond, !dbg !3856, !llvm.loop !3857

for.end:                                          ; preds = %if.then48, %for.cond
  br label %if.end54

if.end54:                                         ; preds = %for.end, %if.end17
  br label %err_write, !dbg !3767

err_write:                                        ; preds = %if.end54, %if.then24
  call void @llvm.dbg.label(metadata !3859), !dbg !3860
  %70 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash, align 8, !dbg !3861
  %lock55 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %70, i32 0, i32 2, !dbg !3862
  call void @mutex_unlock(%struct.mutex* %lock55) #7, !dbg !3863
  %71 = load i32, i32* %ret, align 4, !dbg !3864
  store i32 %71, i32* %retval, align 4, !dbg !3865
  br label %return, !dbg !3865

return:                                           ; preds = %err_write, %if.then2, %if.then
  %72 = load i32, i32* %retval, align 4, !dbg !3866
  ret i32 %72, !dbg !3866
}

; Function Attrs: noredzone
declare dso_local i32 @mtd_device_parse_register(%struct.mtd_info*, i8**, %struct.mtd_part_parser_data*, %struct.mtd_partition*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3867 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3868, metadata !DIExpression()), !dbg !3869
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3870
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3871
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3871
  ret i8* %1, !dbg !3872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_wait_till_ready(%struct.spear_smi* %dev, i32 %bank, i64 %timeout) #2 !dbg !3873 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.spear_smi*, align 8
  %bank.addr = alloca i32, align 4
  %timeout.addr = alloca i64, align 8
  %finish = alloca i64, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.spear_smi* %dev, %struct.spear_smi** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev.addr, metadata !3876, metadata !DIExpression()), !dbg !3877
  store i32 %bank, i32* %bank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bank.addr, metadata !3878, metadata !DIExpression()), !dbg !3879
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !3880, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.declare(metadata i64* %finish, metadata !3882, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3884, metadata !DIExpression()), !dbg !3885
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !3886
  %1 = load i64, i64* %timeout.addr, align 8, !dbg !3887
  %add = add i64 %0, %1, !dbg !3888
  store i64 %add, i64* %finish, align 8, !dbg !3889
  br label %do.body, !dbg !3890

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3891
  %3 = load i32, i32* %bank.addr, align 4, !dbg !3893
  %call = call i32 @spear_smi_read_sr(%struct.spear_smi* %2, i32 %3) #7, !dbg !3894
  store i32 %call, i32* %status, align 4, !dbg !3895
  %4 = load i32, i32* %status, align 4, !dbg !3896
  %cmp = icmp slt i32 %4, 0, !dbg !3898
  br i1 %cmp, label %if.then, label %if.else, !dbg !3899

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %status, align 4, !dbg !3900
  %cmp1 = icmp eq i32 %5, -110, !dbg !3903
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3904

if.then2:                                         ; preds = %if.then
  br label %do.cond, !dbg !3905

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* %status, align 4, !dbg !3906
  store i32 %6, i32* %retval, align 4, !dbg !3907
  br label %return, !dbg !3907

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %status, align 4, !dbg !3908
  %and = and i32 %7, 1, !dbg !3910
  %tobool = icmp ne i32 %and, 0, !dbg !3910
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !3911

if.then3:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !3912
  br label %return, !dbg !3912

if.end4:                                          ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end4
  call void @___might_sleep(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 281, i32 0) #7, !dbg !3914
  %call6 = call i32 @_cond_resched() #7, !dbg !3914
  store i32 %call6, i32* %tmp, align 4, !dbg !3914
  %8 = load i32, i32* %tmp, align 4, !dbg !3914
  br label %do.cond, !dbg !3916

do.cond:                                          ; preds = %if.end5, %if.then2
  %9 = load volatile i64, i64* @jiffies, align 8, !dbg !3917
  %10 = load i64, i64* %finish, align 8, !dbg !3917
  %sub = sub i64 %9, %10, !dbg !3917
  %cmp7 = icmp sge i64 %sub, 0, !dbg !3917
  %lnot = xor i1 %cmp7, true, !dbg !3918
  br i1 %lnot, label %do.body, label %do.end, !dbg !3916, !llvm.loop !3919

do.end:                                           ; preds = %do.cond
  %11 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3921
  %pdev = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %11, i32 0, i32 5, !dbg !3921
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !3921
  %dev8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3, !dbg !3921
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !3921
  store i32 -16, i32* %retval, align 4, !dbg !3922
  br label %return, !dbg !3922

return:                                           ; preds = %do.end, %if.then3, %if.end
  %13 = load i32, i32* %retval, align 4, !dbg !3923
  ret i32 %13, !dbg !3923
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #1

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_flash_index(i32 %flash_id) #2 !dbg !3924 {
entry:
  %retval = alloca i32, align 4
  %flash_id.addr = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %flash_id, i32* %flash_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flash_id.addr, metadata !3927, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.declare(metadata i32* %index, metadata !3929, metadata !DIExpression()), !dbg !3930
  store i32 0, i32* %index, align 4, !dbg !3931
  br label %for.cond, !dbg !3933

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %index, align 4, !dbg !3934
  %conv = sext i32 %0 to i64, !dbg !3934
  %cmp = icmp ult i64 %conv, 34, !dbg !3936
  br i1 %cmp, label %for.body, label %for.end, !dbg !3937

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %index, align 4, !dbg !3938
  %idxprom = sext i32 %1 to i64, !dbg !3941
  %arrayidx = getelementptr [34 x %struct.flash_device], [34 x %struct.flash_device]* @flash_devices, i64 0, i64 %idxprom, !dbg !3941
  %device_id = getelementptr inbounds %struct.flash_device, %struct.flash_device* %arrayidx, i32 0, i32 2, !dbg !3942
  %2 = load i32, i32* %device_id, align 4, !dbg !3942
  %3 = load i32, i32* %flash_id.addr, align 4, !dbg !3943
  %cmp2 = icmp eq i32 %2, %3, !dbg !3944
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3945

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %index, align 4, !dbg !3946
  store i32 %4, i32* %retval, align 4, !dbg !3947
  br label %return, !dbg !3947

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3948

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %index, align 4, !dbg !3949
  %inc = add i32 %5, 1, !dbg !3949
  store i32 %inc, i32* %index, align 4, !dbg !3949
  br label %for.cond, !dbg !3950, !llvm.loop !3951

for.end:                                          ; preds = %for.cond
  store i32 -19, i32* %retval, align 4, !dbg !3953
  br label %return, !dbg !3953

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3954
  ret i32 %6, !dbg !3954
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_read_sr(%struct.spear_smi* %dev, i32 %bank) #2 !dbg !3955 {
entry:
  %dev.addr = alloca %struct.spear_smi*, align 8
  %bank.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctrlreg1 = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret16 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond18 = alloca i8, align 1
  %tmp28 = alloca i32, align 4
  %tmp43 = alloca i64, align 8
  %tmp45 = alloca i64, align 8
  store %struct.spear_smi* %dev, %struct.spear_smi** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev.addr, metadata !3956, metadata !DIExpression()), !dbg !3957
  store i32 %bank, i32* %bank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bank.addr, metadata !3958, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.declare(metadata i32* %ctrlreg1, metadata !3962, metadata !DIExpression()), !dbg !3963
  %0 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3964
  %lock = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %0, i32 0, i32 3, !dbg !3965
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !3966
  %1 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3967
  %status = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %1, i32 0, i32 1, !dbg !3968
  store i32 0, i32* %status, align 8, !dbg !3969
  %2 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3970
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %2, i32 0, i32 4, !dbg !3971
  %3 = load i8*, i8** %io_base, align 8, !dbg !3971
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3972
  %call = call i32 @readl(i8* %add.ptr) #7, !dbg !3973
  store i32 %call, i32* %ctrlreg1, align 4, !dbg !3974
  %4 = load i32, i32* %ctrlreg1, align 4, !dbg !3975
  %and = and i32 %4, -805306369, !dbg !3976
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3977
  %io_base1 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %5, i32 0, i32 4, !dbg !3978
  %6 = load i8*, i8** %io_base1, align 8, !dbg !3978
  %add.ptr2 = getelementptr i8, i8* %6, i64 0, !dbg !3979
  call void @writel(i32 %and, i8* %add.ptr2) #7, !dbg !3980
  %7 = load i32, i32* %bank.addr, align 4, !dbg !3981
  %shl = shl i32 %7, 12, !dbg !3982
  %or = or i32 %shl, 1024, !dbg !3983
  %or3 = or i32 %or, 256, !dbg !3984
  %8 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3985
  %io_base4 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %8, i32 0, i32 4, !dbg !3986
  %9 = load i8*, i8** %io_base4, align 8, !dbg !3986
  %add.ptr5 = getelementptr i8, i8* %9, i64 4, !dbg !3987
  call void @writel(i32 %or3, i8* %add.ptr5) #7, !dbg !3988
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3989, metadata !DIExpression()), !dbg !3991
  store i64 25, i64* %__ret, align 8, !dbg !3991
  br label %do.body, !dbg !3991

do.body:                                          ; preds = %entry
  br label %do.body6, !dbg !3992

do.body6:                                         ; preds = %do.body
  br label %do.end, !dbg !3994

do.end:                                           ; preds = %do.body6
  br label %do.end7, !dbg !3992

do.end7:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !3996, metadata !DIExpression()), !dbg !3999
  %10 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !3999
  %status8 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %10, i32 0, i32 1, !dbg !3999
  %11 = load i32, i32* %status8, align 8, !dbg !3999
  %and9 = and i32 %11, 256, !dbg !3999
  %tobool = icmp ne i32 %and9, 0, !dbg !3999
  %frombool = zext i1 %tobool to i8, !dbg !3999
  store i8 %frombool, i8* %__cond, align 1, !dbg !3999
  %12 = load i8, i8* %__cond, align 1, !dbg !4000
  %tobool10 = trunc i8 %12 to i1, !dbg !4000
  br i1 %tobool10, label %land.lhs.true, label %if.end, !dbg !4000

land.lhs.true:                                    ; preds = %do.end7
  %13 = load i64, i64* %__ret, align 8, !dbg !4000
  %tobool11 = icmp ne i64 %13, 0, !dbg !4000
  br i1 %tobool11, label %if.end, label %if.then, !dbg !3999

if.then:                                          ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !4000
  br label %if.end, !dbg !4000

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end7
  %14 = load i8, i8* %__cond, align 1, !dbg !3999
  %tobool12 = trunc i8 %14 to i1, !dbg !3999
  br i1 %tobool12, label %lor.end, label %lor.rhs, !dbg !3999

lor.rhs:                                          ; preds = %if.end
  %15 = load i64, i64* %__ret, align 8, !dbg !3999
  %tobool13 = icmp ne i64 %15, 0, !dbg !3999
  %lnot = xor i1 %tobool13, true, !dbg !3999
  br label %lor.end, !dbg !3999

lor.end:                                          ; preds = %lor.rhs, %if.end
  %16 = phi i1 [ true, %if.end ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32, !dbg !3999
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !4000
  %17 = load i32, i32* %tmp, align 4, !dbg !3999
  %tobool14 = icmp ne i32 %17, 0, !dbg !4002
  br i1 %tobool14, label %if.end44, label %if.then15, !dbg !3991

if.then15:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.declare(metadata i64* %__ret16, metadata !4006, metadata !DIExpression()), !dbg !4005
  store i64 25, i64* %__ret16, align 8, !dbg !4005
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #7, !dbg !4005
  br label %for.cond, !dbg !4005

for.cond:                                         ; preds = %if.end40, %if.then15
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4007, metadata !DIExpression()), !dbg !4011
  %18 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4011
  %cmd_complete = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %18, i32 0, i32 6, !dbg !4011
  %call17 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %cmd_complete, %struct.wait_queue_entry* %__wq_entry, i32 1) #7, !dbg !4011
  store i64 %call17, i64* %__int, align 8, !dbg !4011
  call void @llvm.dbg.declare(metadata i8* %__cond18, metadata !4012, metadata !DIExpression()), !dbg !4015
  %19 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4015
  %status19 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %19, i32 0, i32 1, !dbg !4015
  %20 = load i32, i32* %status19, align 8, !dbg !4015
  %and20 = and i32 %20, 256, !dbg !4015
  %tobool21 = icmp ne i32 %and20, 0, !dbg !4015
  %frombool22 = zext i1 %tobool21 to i8, !dbg !4015
  store i8 %frombool22, i8* %__cond18, align 1, !dbg !4015
  %21 = load i8, i8* %__cond18, align 1, !dbg !4016
  %tobool23 = trunc i8 %21 to i1, !dbg !4016
  br i1 %tobool23, label %land.lhs.true24, label %if.end27, !dbg !4016

land.lhs.true24:                                  ; preds = %for.cond
  %22 = load i64, i64* %__ret16, align 8, !dbg !4016
  %tobool25 = icmp ne i64 %22, 0, !dbg !4016
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4015

if.then26:                                        ; preds = %land.lhs.true24
  store i64 1, i64* %__ret16, align 8, !dbg !4016
  br label %if.end27, !dbg !4016

if.end27:                                         ; preds = %if.then26, %land.lhs.true24, %for.cond
  %23 = load i8, i8* %__cond18, align 1, !dbg !4015
  %tobool29 = trunc i8 %23 to i1, !dbg !4015
  br i1 %tobool29, label %lor.end33, label %lor.rhs30, !dbg !4015

lor.rhs30:                                        ; preds = %if.end27
  %24 = load i64, i64* %__ret16, align 8, !dbg !4015
  %tobool31 = icmp ne i64 %24, 0, !dbg !4015
  %lnot32 = xor i1 %tobool31, true, !dbg !4015
  br label %lor.end33, !dbg !4015

lor.end33:                                        ; preds = %lor.rhs30, %if.end27
  %25 = phi i1 [ true, %if.end27 ], [ %lnot32, %lor.rhs30 ]
  %lor.ext34 = zext i1 %25 to i32, !dbg !4015
  store i32 %lor.ext34, i32* %tmp28, align 4, !dbg !4016
  %26 = load i32, i32* %tmp28, align 4, !dbg !4015
  %tobool35 = icmp ne i32 %26, 0, !dbg !4018
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4011

if.then36:                                        ; preds = %lor.end33
  br label %for.end, !dbg !4018

if.end37:                                         ; preds = %lor.end33
  %27 = load i64, i64* %__int, align 8, !dbg !4019
  %tobool38 = icmp ne i64 %27, 0, !dbg !4019
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !4011

if.then39:                                        ; preds = %if.end37
  %28 = load i64, i64* %__int, align 8, !dbg !4021
  store i64 %28, i64* %__ret16, align 8, !dbg !4021
  br label %__out, !dbg !4021

if.end40:                                         ; preds = %if.end37
  %29 = load i64, i64* %__ret16, align 8, !dbg !4011
  %call41 = call i64 @schedule_timeout(i64 %29) #7, !dbg !4011
  store i64 %call41, i64* %__ret16, align 8, !dbg !4011
  br label %for.cond, !dbg !4023, !llvm.loop !4024

for.end:                                          ; preds = %if.then36
  %30 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4005
  %cmd_complete42 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %30, i32 0, i32 6, !dbg !4005
  call void @finish_wait(%struct.wait_queue_head* %cmd_complete42, %struct.wait_queue_entry* %__wq_entry) #7, !dbg !4005
  br label %__out, !dbg !4005

__out:                                            ; preds = %for.end, %if.then39
  call void @llvm.dbg.label(metadata !4026), !dbg !4005
  %31 = load i64, i64* %__ret16, align 8, !dbg !4005
  store i64 %31, i64* %tmp43, align 8, !dbg !4005
  %32 = load i64, i64* %tmp43, align 8, !dbg !4005
  store i64 %32, i64* %__ret, align 8, !dbg !4002
  br label %if.end44, !dbg !4002

if.end44:                                         ; preds = %__out, %lor.end
  %33 = load i64, i64* %__ret, align 8, !dbg !3991
  store i64 %33, i64* %tmp45, align 8, !dbg !4002
  %34 = load i64, i64* %tmp45, align 8, !dbg !3991
  %conv = trunc i64 %34 to i32, !dbg !4027
  store i32 %conv, i32* %ret, align 4, !dbg !4028
  %35 = load i32, i32* %ret, align 4, !dbg !4029
  %cmp = icmp sgt i32 %35, 0, !dbg !4031
  br i1 %cmp, label %if.then47, label %if.else, !dbg !4032

if.then47:                                        ; preds = %if.end44
  %36 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4033
  %status48 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %36, i32 0, i32 1, !dbg !4034
  %37 = load i32, i32* %status48, align 8, !dbg !4034
  %and49 = and i32 %37, 65535, !dbg !4035
  store i32 %and49, i32* %ret, align 4, !dbg !4036
  br label %if.end54, !dbg !4037

if.else:                                          ; preds = %if.end44
  %38 = load i32, i32* %ret, align 4, !dbg !4038
  %cmp50 = icmp eq i32 %38, 0, !dbg !4040
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !4041

if.then52:                                        ; preds = %if.else
  store i32 -110, i32* %ret, align 4, !dbg !4042
  br label %if.end53, !dbg !4043

if.end53:                                         ; preds = %if.then52, %if.else
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then47
  %39 = load i32, i32* %ctrlreg1, align 4, !dbg !4044
  %40 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4045
  %io_base55 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %40, i32 0, i32 4, !dbg !4046
  %41 = load i8*, i8** %io_base55, align 8, !dbg !4046
  %add.ptr56 = getelementptr i8, i8* %41, i64 0, !dbg !4047
  call void @writel(i32 %39, i8* %add.ptr56) #7, !dbg !4048
  %42 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4049
  %io_base57 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %42, i32 0, i32 4, !dbg !4050
  %43 = load i8*, i8** %io_base57, align 8, !dbg !4050
  %add.ptr58 = getelementptr i8, i8* %43, i64 4, !dbg !4051
  call void @writel(i32 0, i8* %add.ptr58) #7, !dbg !4052
  %44 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4053
  %lock59 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %44, i32 0, i32 3, !dbg !4054
  call void @mutex_unlock(%struct.mutex* %lock59) #7, !dbg !4055
  %45 = load i32, i32* %ret, align 4, !dbg !4056
  ret i32 %45, !dbg !4057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @___might_sleep(i8* %file, i32 %line, i32 %preempt_offset) #2 !dbg !4058 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %preempt_offset.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %file.addr, metadata !4062, metadata !DIExpression()), !dbg !4063
  store i32 %line, i32* %line.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line.addr, metadata !4064, metadata !DIExpression()), !dbg !4065
  store i32 %preempt_offset, i32* %preempt_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preempt_offset.addr, metadata !4066, metadata !DIExpression()), !dbg !4067
  ret void, !dbg !4068
}

; Function Attrs: noredzone
declare dso_local i32 @_cond_resched() #1

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.spear_snor_flash* @get_flash_data(%struct.mtd_info* %mtd) #2 !dbg !4069 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.spear_snor_flash*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4074, metadata !DIExpression()), !dbg !4076
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4076
  %1 = bitcast %struct.mtd_info* %0 to i8*, !dbg !4076
  store i8* %1, i8** %__mptr, align 8, !dbg !4076
  br label %do.body, !dbg !4076

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4077

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4076
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !4076
  %3 = bitcast i8* %add.ptr to %struct.spear_snor_flash*, !dbg !4076
  store %struct.spear_snor_flash* %3, %struct.spear_snor_flash** %tmp, align 8, !dbg !4077
  %4 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %tmp, align 8, !dbg !4076
  ret %struct.spear_snor_flash* %4, !dbg !4079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_sector_erase_cmd(%struct.spear_snor_flash* %flash, i32 %offset) #2 !dbg !4080 {
entry:
  %flash.addr = alloca %struct.spear_snor_flash*, align 8
  %offset.addr = alloca i32, align 4
  %cmd = alloca i32, align 4
  %x = alloca i8*, align 8
  store %struct.spear_snor_flash* %flash, %struct.spear_snor_flash** %flash.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spear_snor_flash** %flash.addr, metadata !4083, metadata !DIExpression()), !dbg !4084
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !4085, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.declare(metadata i8** %x, metadata !4089, metadata !DIExpression()), !dbg !4090
  %0 = bitcast i32* %cmd to i8*, !dbg !4091
  store i8* %0, i8** %x, align 8, !dbg !4090
  %1 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %flash.addr, align 8, !dbg !4092
  %erase_cmd = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %1, i32 0, i32 8, !dbg !4093
  %2 = load i8, i8* %erase_cmd, align 8, !dbg !4093
  %3 = load i8*, i8** %x, align 8, !dbg !4094
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !4094
  store i8 %2, i8* %arrayidx, align 1, !dbg !4095
  %4 = load i32, i32* %offset.addr, align 4, !dbg !4096
  %shr = lshr i32 %4, 16, !dbg !4097
  %conv = trunc i32 %shr to i8, !dbg !4096
  %5 = load i8*, i8** %x, align 8, !dbg !4098
  %arrayidx1 = getelementptr i8, i8* %5, i64 1, !dbg !4098
  store i8 %conv, i8* %arrayidx1, align 1, !dbg !4099
  %6 = load i32, i32* %offset.addr, align 4, !dbg !4100
  %shr2 = lshr i32 %6, 8, !dbg !4101
  %conv3 = trunc i32 %shr2 to i8, !dbg !4100
  %7 = load i8*, i8** %x, align 8, !dbg !4102
  %arrayidx4 = getelementptr i8, i8* %7, i64 2, !dbg !4102
  store i8 %conv3, i8* %arrayidx4, align 1, !dbg !4103
  %8 = load i32, i32* %offset.addr, align 4, !dbg !4104
  %conv5 = trunc i32 %8 to i8, !dbg !4104
  %9 = load i8*, i8** %x, align 8, !dbg !4105
  %arrayidx6 = getelementptr i8, i8* %9, i64 3, !dbg !4105
  store i8 %conv5, i8* %arrayidx6, align 1, !dbg !4106
  %10 = load i32, i32* %cmd, align 4, !dbg !4107
  ret i32 %10, !dbg !4108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_erase_sector(%struct.spear_smi* %dev, i32 %bank, i32 %command, i32 %bytes) #2 !dbg !4109 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.spear_smi*, align 8
  %bank.addr = alloca i32, align 4
  %command.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %ctrlreg1 = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret28 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond30 = alloca i8, align 1
  %tmp40 = alloca i32, align 4
  %tmp55 = alloca i64, align 8
  %tmp57 = alloca i64, align 8
  store %struct.spear_smi* %dev, %struct.spear_smi** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev.addr, metadata !4112, metadata !DIExpression()), !dbg !4113
  store i32 %bank, i32* %bank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bank.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !4116, metadata !DIExpression()), !dbg !4117
  store i32 %bytes, i32* %bytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bytes.addr, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata i32* %ctrlreg1, metadata !4120, metadata !DIExpression()), !dbg !4121
  store i32 0, i32* %ctrlreg1, align 4, !dbg !4121
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4122, metadata !DIExpression()), !dbg !4123
  %0 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4124
  %1 = load i32, i32* %bank.addr, align 4, !dbg !4125
  %call = call i32 @spear_smi_wait_till_ready(%struct.spear_smi* %0, i32 %1, i64 750) #7, !dbg !4126
  store i32 %call, i32* %ret, align 4, !dbg !4127
  %2 = load i32, i32* %ret, align 4, !dbg !4128
  %tobool = icmp ne i32 %2, 0, !dbg !4128
  br i1 %tobool, label %if.then, label %if.end, !dbg !4130

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !4131
  store i32 %3, i32* %retval, align 4, !dbg !4132
  br label %return, !dbg !4132

if.end:                                           ; preds = %entry
  %4 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4133
  %5 = load i32, i32* %bank.addr, align 4, !dbg !4134
  %call1 = call i32 @spear_smi_write_enable(%struct.spear_smi* %4, i32 %5) #7, !dbg !4135
  store i32 %call1, i32* %ret, align 4, !dbg !4136
  %6 = load i32, i32* %ret, align 4, !dbg !4137
  %tobool2 = icmp ne i32 %6, 0, !dbg !4137
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4139

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !4140
  store i32 %7, i32* %retval, align 4, !dbg !4141
  br label %return, !dbg !4141

if.end4:                                          ; preds = %if.end
  %8 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4142
  %lock = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %8, i32 0, i32 3, !dbg !4143
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !4144
  %9 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4145
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %9, i32 0, i32 4, !dbg !4146
  %10 = load i8*, i8** %io_base, align 8, !dbg !4146
  %add.ptr = getelementptr i8, i8* %10, i64 0, !dbg !4147
  %call5 = call i32 @readl(i8* %add.ptr) #7, !dbg !4148
  store i32 %call5, i32* %ctrlreg1, align 4, !dbg !4149
  %11 = load i32, i32* %ctrlreg1, align 4, !dbg !4150
  %or = or i32 %11, 268435456, !dbg !4151
  %and = and i32 %or, -536870913, !dbg !4152
  %12 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4153
  %io_base6 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %12, i32 0, i32 4, !dbg !4154
  %13 = load i8*, i8** %io_base6, align 8, !dbg !4154
  %add.ptr7 = getelementptr i8, i8* %13, i64 0, !dbg !4155
  call void @writel(i32 %and, i8* %add.ptr7) #7, !dbg !4156
  %14 = load i32, i32* %command.addr, align 4, !dbg !4157
  %15 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4158
  %io_base8 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %15, i32 0, i32 4, !dbg !4159
  %16 = load i8*, i8** %io_base8, align 8, !dbg !4159
  %add.ptr9 = getelementptr i8, i8* %16, i64 12, !dbg !4160
  call void @writel(i32 %14, i8* %add.ptr9) #7, !dbg !4161
  %17 = load i32, i32* %bank.addr, align 4, !dbg !4162
  %shl = shl i32 %17, 12, !dbg !4163
  %or10 = or i32 %shl, 128, !dbg !4164
  %or11 = or i32 %or10, 256, !dbg !4165
  %18 = load i32, i32* %bytes.addr, align 4, !dbg !4166
  %shl12 = shl i32 %18, 0, !dbg !4167
  %or13 = or i32 %or11, %shl12, !dbg !4168
  %19 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4169
  %io_base14 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %19, i32 0, i32 4, !dbg !4170
  %20 = load i8*, i8** %io_base14, align 8, !dbg !4170
  %add.ptr15 = getelementptr i8, i8* %20, i64 4, !dbg !4171
  call void @writel(i32 %or13, i8* %add.ptr15) #7, !dbg !4172
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4173, metadata !DIExpression()), !dbg !4175
  store i64 25, i64* %__ret, align 8, !dbg !4175
  br label %do.body, !dbg !4175

do.body:                                          ; preds = %if.end4
  br label %do.body16, !dbg !4176

do.body16:                                        ; preds = %do.body
  br label %do.end, !dbg !4178

do.end:                                           ; preds = %do.body16
  br label %do.end17, !dbg !4176

do.end17:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !4180, metadata !DIExpression()), !dbg !4183
  %21 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4183
  %status = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %21, i32 0, i32 1, !dbg !4183
  %22 = load i32, i32* %status, align 8, !dbg !4183
  %and18 = and i32 %22, 256, !dbg !4183
  %tobool19 = icmp ne i32 %and18, 0, !dbg !4183
  %frombool = zext i1 %tobool19 to i8, !dbg !4183
  store i8 %frombool, i8* %__cond, align 1, !dbg !4183
  %23 = load i8, i8* %__cond, align 1, !dbg !4184
  %tobool20 = trunc i8 %23 to i1, !dbg !4184
  br i1 %tobool20, label %land.lhs.true, label %if.end23, !dbg !4184

land.lhs.true:                                    ; preds = %do.end17
  %24 = load i64, i64* %__ret, align 8, !dbg !4184
  %tobool21 = icmp ne i64 %24, 0, !dbg !4184
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4183

if.then22:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !4184
  br label %if.end23, !dbg !4184

if.end23:                                         ; preds = %if.then22, %land.lhs.true, %do.end17
  %25 = load i8, i8* %__cond, align 1, !dbg !4183
  %tobool24 = trunc i8 %25 to i1, !dbg !4183
  br i1 %tobool24, label %lor.end, label %lor.rhs, !dbg !4183

lor.rhs:                                          ; preds = %if.end23
  %26 = load i64, i64* %__ret, align 8, !dbg !4183
  %tobool25 = icmp ne i64 %26, 0, !dbg !4183
  %lnot = xor i1 %tobool25, true, !dbg !4183
  br label %lor.end, !dbg !4183

lor.end:                                          ; preds = %lor.rhs, %if.end23
  %27 = phi i1 [ true, %if.end23 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %27 to i32, !dbg !4183
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !4184
  %28 = load i32, i32* %tmp, align 4, !dbg !4183
  %tobool26 = icmp ne i32 %28, 0, !dbg !4186
  br i1 %tobool26, label %if.end56, label %if.then27, !dbg !4175

if.then27:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4187, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.declare(metadata i64* %__ret28, metadata !4190, metadata !DIExpression()), !dbg !4189
  store i64 25, i64* %__ret28, align 8, !dbg !4189
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #7, !dbg !4189
  br label %for.cond, !dbg !4189

for.cond:                                         ; preds = %if.end52, %if.then27
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4191, metadata !DIExpression()), !dbg !4195
  %29 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4195
  %cmd_complete = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %29, i32 0, i32 6, !dbg !4195
  %call29 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %cmd_complete, %struct.wait_queue_entry* %__wq_entry, i32 1) #7, !dbg !4195
  store i64 %call29, i64* %__int, align 8, !dbg !4195
  call void @llvm.dbg.declare(metadata i8* %__cond30, metadata !4196, metadata !DIExpression()), !dbg !4199
  %30 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4199
  %status31 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %30, i32 0, i32 1, !dbg !4199
  %31 = load i32, i32* %status31, align 8, !dbg !4199
  %and32 = and i32 %31, 256, !dbg !4199
  %tobool33 = icmp ne i32 %and32, 0, !dbg !4199
  %frombool34 = zext i1 %tobool33 to i8, !dbg !4199
  store i8 %frombool34, i8* %__cond30, align 1, !dbg !4199
  %32 = load i8, i8* %__cond30, align 1, !dbg !4200
  %tobool35 = trunc i8 %32 to i1, !dbg !4200
  br i1 %tobool35, label %land.lhs.true36, label %if.end39, !dbg !4200

land.lhs.true36:                                  ; preds = %for.cond
  %33 = load i64, i64* %__ret28, align 8, !dbg !4200
  %tobool37 = icmp ne i64 %33, 0, !dbg !4200
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !4199

if.then38:                                        ; preds = %land.lhs.true36
  store i64 1, i64* %__ret28, align 8, !dbg !4200
  br label %if.end39, !dbg !4200

if.end39:                                         ; preds = %if.then38, %land.lhs.true36, %for.cond
  %34 = load i8, i8* %__cond30, align 1, !dbg !4199
  %tobool41 = trunc i8 %34 to i1, !dbg !4199
  br i1 %tobool41, label %lor.end45, label %lor.rhs42, !dbg !4199

lor.rhs42:                                        ; preds = %if.end39
  %35 = load i64, i64* %__ret28, align 8, !dbg !4199
  %tobool43 = icmp ne i64 %35, 0, !dbg !4199
  %lnot44 = xor i1 %tobool43, true, !dbg !4199
  br label %lor.end45, !dbg !4199

lor.end45:                                        ; preds = %lor.rhs42, %if.end39
  %36 = phi i1 [ true, %if.end39 ], [ %lnot44, %lor.rhs42 ]
  %lor.ext46 = zext i1 %36 to i32, !dbg !4199
  store i32 %lor.ext46, i32* %tmp40, align 4, !dbg !4200
  %37 = load i32, i32* %tmp40, align 4, !dbg !4199
  %tobool47 = icmp ne i32 %37, 0, !dbg !4202
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !4195

if.then48:                                        ; preds = %lor.end45
  br label %for.end, !dbg !4202

if.end49:                                         ; preds = %lor.end45
  %38 = load i64, i64* %__int, align 8, !dbg !4203
  %tobool50 = icmp ne i64 %38, 0, !dbg !4203
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !4195

if.then51:                                        ; preds = %if.end49
  %39 = load i64, i64* %__int, align 8, !dbg !4205
  store i64 %39, i64* %__ret28, align 8, !dbg !4205
  br label %__out, !dbg !4205

if.end52:                                         ; preds = %if.end49
  %40 = load i64, i64* %__ret28, align 8, !dbg !4195
  %call53 = call i64 @schedule_timeout(i64 %40) #7, !dbg !4195
  store i64 %call53, i64* %__ret28, align 8, !dbg !4195
  br label %for.cond, !dbg !4207, !llvm.loop !4208

for.end:                                          ; preds = %if.then48
  %41 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4189
  %cmd_complete54 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %41, i32 0, i32 6, !dbg !4189
  call void @finish_wait(%struct.wait_queue_head* %cmd_complete54, %struct.wait_queue_entry* %__wq_entry) #7, !dbg !4189
  br label %__out, !dbg !4189

__out:                                            ; preds = %for.end, %if.then51
  call void @llvm.dbg.label(metadata !4210), !dbg !4189
  %42 = load i64, i64* %__ret28, align 8, !dbg !4189
  store i64 %42, i64* %tmp55, align 8, !dbg !4189
  %43 = load i64, i64* %tmp55, align 8, !dbg !4189
  store i64 %43, i64* %__ret, align 8, !dbg !4186
  br label %if.end56, !dbg !4186

if.end56:                                         ; preds = %__out, %lor.end
  %44 = load i64, i64* %__ret, align 8, !dbg !4175
  store i64 %44, i64* %tmp57, align 8, !dbg !4186
  %45 = load i64, i64* %tmp57, align 8, !dbg !4175
  %conv = trunc i64 %45 to i32, !dbg !4211
  store i32 %conv, i32* %ret, align 4, !dbg !4212
  %46 = load i32, i32* %ret, align 4, !dbg !4213
  %cmp = icmp eq i32 %46, 0, !dbg !4215
  br i1 %cmp, label %if.then59, label %if.else, !dbg !4216

if.then59:                                        ; preds = %if.end56
  store i32 -5, i32* %ret, align 4, !dbg !4217
  %47 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4219
  %pdev = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %47, i32 0, i32 5, !dbg !4219
  %48 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !4219
  %dev60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 3, !dbg !4219
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !4219
  br label %if.end65, !dbg !4220

if.else:                                          ; preds = %if.end56
  %49 = load i32, i32* %ret, align 4, !dbg !4221
  %cmp61 = icmp sgt i32 %49, 0, !dbg !4223
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !4224

if.then63:                                        ; preds = %if.else
  store i32 0, i32* %ret, align 4, !dbg !4225
  br label %if.end64, !dbg !4226

if.end64:                                         ; preds = %if.then63, %if.else
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then59
  %50 = load i32, i32* %ctrlreg1, align 4, !dbg !4227
  %51 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4228
  %io_base66 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %51, i32 0, i32 4, !dbg !4229
  %52 = load i8*, i8** %io_base66, align 8, !dbg !4229
  %add.ptr67 = getelementptr i8, i8* %52, i64 0, !dbg !4230
  call void @writel(i32 %50, i8* %add.ptr67) #7, !dbg !4231
  %53 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4232
  %io_base68 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %53, i32 0, i32 4, !dbg !4233
  %54 = load i8*, i8** %io_base68, align 8, !dbg !4233
  %add.ptr69 = getelementptr i8, i8* %54, i64 4, !dbg !4234
  call void @writel(i32 0, i8* %add.ptr69) #7, !dbg !4235
  %55 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4236
  %lock70 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %55, i32 0, i32 3, !dbg !4237
  call void @mutex_unlock(%struct.mutex* %lock70) #7, !dbg !4238
  %56 = load i32, i32* %ret, align 4, !dbg !4239
  store i32 %56, i32* %retval, align 4, !dbg !4240
  br label %return, !dbg !4240

return:                                           ; preds = %if.end65, %if.then3, %if.then
  %57 = load i32, i32* %retval, align 4, !dbg !4241
  ret i32 %57, !dbg !4241
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_write_enable(%struct.spear_smi* %dev, i32 %bank) #2 !dbg !4242 {
entry:
  %dev.addr = alloca %struct.spear_smi*, align 8
  %bank.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctrlreg1 = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret16 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond18 = alloca i8, align 1
  %tmp28 = alloca i32, align 4
  %tmp43 = alloca i64, align 8
  %tmp45 = alloca i64, align 8
  store %struct.spear_smi* %dev, %struct.spear_smi** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev.addr, metadata !4243, metadata !DIExpression()), !dbg !4244
  store i32 %bank, i32* %bank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bank.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4247, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.declare(metadata i32* %ctrlreg1, metadata !4249, metadata !DIExpression()), !dbg !4250
  %0 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4251
  %lock = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %0, i32 0, i32 3, !dbg !4252
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !4253
  %1 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4254
  %status = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %1, i32 0, i32 1, !dbg !4255
  store i32 0, i32* %status, align 8, !dbg !4256
  %2 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4257
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %2, i32 0, i32 4, !dbg !4258
  %3 = load i8*, i8** %io_base, align 8, !dbg !4258
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4259
  %call = call i32 @readl(i8* %add.ptr) #7, !dbg !4260
  store i32 %call, i32* %ctrlreg1, align 4, !dbg !4261
  %4 = load i32, i32* %ctrlreg1, align 4, !dbg !4262
  %and = and i32 %4, -268435457, !dbg !4263
  %5 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4264
  %io_base1 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %5, i32 0, i32 4, !dbg !4265
  %6 = load i8*, i8** %io_base1, align 8, !dbg !4265
  %add.ptr2 = getelementptr i8, i8* %6, i64 0, !dbg !4266
  call void @writel(i32 %and, i8* %add.ptr2) #7, !dbg !4267
  %7 = load i32, i32* %bank.addr, align 4, !dbg !4268
  %shl = shl i32 %7, 12, !dbg !4269
  %or = or i32 %shl, 2048, !dbg !4270
  %or3 = or i32 %or, 256, !dbg !4271
  %8 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4272
  %io_base4 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %8, i32 0, i32 4, !dbg !4273
  %9 = load i8*, i8** %io_base4, align 8, !dbg !4273
  %add.ptr5 = getelementptr i8, i8* %9, i64 4, !dbg !4274
  call void @writel(i32 %or3, i8* %add.ptr5) #7, !dbg !4275
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4276, metadata !DIExpression()), !dbg !4278
  store i64 25, i64* %__ret, align 8, !dbg !4278
  br label %do.body, !dbg !4278

do.body:                                          ; preds = %entry
  br label %do.body6, !dbg !4279

do.body6:                                         ; preds = %do.body
  br label %do.end, !dbg !4281

do.end:                                           ; preds = %do.body6
  br label %do.end7, !dbg !4279

do.end7:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !4283, metadata !DIExpression()), !dbg !4286
  %10 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4286
  %status8 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %10, i32 0, i32 1, !dbg !4286
  %11 = load i32, i32* %status8, align 8, !dbg !4286
  %and9 = and i32 %11, 256, !dbg !4286
  %tobool = icmp ne i32 %and9, 0, !dbg !4286
  %frombool = zext i1 %tobool to i8, !dbg !4286
  store i8 %frombool, i8* %__cond, align 1, !dbg !4286
  %12 = load i8, i8* %__cond, align 1, !dbg !4287
  %tobool10 = trunc i8 %12 to i1, !dbg !4287
  br i1 %tobool10, label %land.lhs.true, label %if.end, !dbg !4287

land.lhs.true:                                    ; preds = %do.end7
  %13 = load i64, i64* %__ret, align 8, !dbg !4287
  %tobool11 = icmp ne i64 %13, 0, !dbg !4287
  br i1 %tobool11, label %if.end, label %if.then, !dbg !4286

if.then:                                          ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !4287
  br label %if.end, !dbg !4287

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end7
  %14 = load i8, i8* %__cond, align 1, !dbg !4286
  %tobool12 = trunc i8 %14 to i1, !dbg !4286
  br i1 %tobool12, label %lor.end, label %lor.rhs, !dbg !4286

lor.rhs:                                          ; preds = %if.end
  %15 = load i64, i64* %__ret, align 8, !dbg !4286
  %tobool13 = icmp ne i64 %15, 0, !dbg !4286
  %lnot = xor i1 %tobool13, true, !dbg !4286
  br label %lor.end, !dbg !4286

lor.end:                                          ; preds = %lor.rhs, %if.end
  %16 = phi i1 [ true, %if.end ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32, !dbg !4286
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !4287
  %17 = load i32, i32* %tmp, align 4, !dbg !4286
  %tobool14 = icmp ne i32 %17, 0, !dbg !4289
  br i1 %tobool14, label %if.end44, label %if.then15, !dbg !4278

if.then15:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4290, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.declare(metadata i64* %__ret16, metadata !4293, metadata !DIExpression()), !dbg !4292
  store i64 25, i64* %__ret16, align 8, !dbg !4292
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #7, !dbg !4292
  br label %for.cond, !dbg !4292

for.cond:                                         ; preds = %if.end40, %if.then15
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4294, metadata !DIExpression()), !dbg !4298
  %18 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4298
  %cmd_complete = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %18, i32 0, i32 6, !dbg !4298
  %call17 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %cmd_complete, %struct.wait_queue_entry* %__wq_entry, i32 1) #7, !dbg !4298
  store i64 %call17, i64* %__int, align 8, !dbg !4298
  call void @llvm.dbg.declare(metadata i8* %__cond18, metadata !4299, metadata !DIExpression()), !dbg !4302
  %19 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4302
  %status19 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %19, i32 0, i32 1, !dbg !4302
  %20 = load i32, i32* %status19, align 8, !dbg !4302
  %and20 = and i32 %20, 256, !dbg !4302
  %tobool21 = icmp ne i32 %and20, 0, !dbg !4302
  %frombool22 = zext i1 %tobool21 to i8, !dbg !4302
  store i8 %frombool22, i8* %__cond18, align 1, !dbg !4302
  %21 = load i8, i8* %__cond18, align 1, !dbg !4303
  %tobool23 = trunc i8 %21 to i1, !dbg !4303
  br i1 %tobool23, label %land.lhs.true24, label %if.end27, !dbg !4303

land.lhs.true24:                                  ; preds = %for.cond
  %22 = load i64, i64* %__ret16, align 8, !dbg !4303
  %tobool25 = icmp ne i64 %22, 0, !dbg !4303
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4302

if.then26:                                        ; preds = %land.lhs.true24
  store i64 1, i64* %__ret16, align 8, !dbg !4303
  br label %if.end27, !dbg !4303

if.end27:                                         ; preds = %if.then26, %land.lhs.true24, %for.cond
  %23 = load i8, i8* %__cond18, align 1, !dbg !4302
  %tobool29 = trunc i8 %23 to i1, !dbg !4302
  br i1 %tobool29, label %lor.end33, label %lor.rhs30, !dbg !4302

lor.rhs30:                                        ; preds = %if.end27
  %24 = load i64, i64* %__ret16, align 8, !dbg !4302
  %tobool31 = icmp ne i64 %24, 0, !dbg !4302
  %lnot32 = xor i1 %tobool31, true, !dbg !4302
  br label %lor.end33, !dbg !4302

lor.end33:                                        ; preds = %lor.rhs30, %if.end27
  %25 = phi i1 [ true, %if.end27 ], [ %lnot32, %lor.rhs30 ]
  %lor.ext34 = zext i1 %25 to i32, !dbg !4302
  store i32 %lor.ext34, i32* %tmp28, align 4, !dbg !4303
  %26 = load i32, i32* %tmp28, align 4, !dbg !4302
  %tobool35 = icmp ne i32 %26, 0, !dbg !4305
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4298

if.then36:                                        ; preds = %lor.end33
  br label %for.end, !dbg !4305

if.end37:                                         ; preds = %lor.end33
  %27 = load i64, i64* %__int, align 8, !dbg !4306
  %tobool38 = icmp ne i64 %27, 0, !dbg !4306
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !4298

if.then39:                                        ; preds = %if.end37
  %28 = load i64, i64* %__int, align 8, !dbg !4308
  store i64 %28, i64* %__ret16, align 8, !dbg !4308
  br label %__out, !dbg !4308

if.end40:                                         ; preds = %if.end37
  %29 = load i64, i64* %__ret16, align 8, !dbg !4298
  %call41 = call i64 @schedule_timeout(i64 %29) #7, !dbg !4298
  store i64 %call41, i64* %__ret16, align 8, !dbg !4298
  br label %for.cond, !dbg !4310, !llvm.loop !4311

for.end:                                          ; preds = %if.then36
  %30 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4292
  %cmd_complete42 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %30, i32 0, i32 6, !dbg !4292
  call void @finish_wait(%struct.wait_queue_head* %cmd_complete42, %struct.wait_queue_entry* %__wq_entry) #7, !dbg !4292
  br label %__out, !dbg !4292

__out:                                            ; preds = %for.end, %if.then39
  call void @llvm.dbg.label(metadata !4313), !dbg !4292
  %31 = load i64, i64* %__ret16, align 8, !dbg !4292
  store i64 %31, i64* %tmp43, align 8, !dbg !4292
  %32 = load i64, i64* %tmp43, align 8, !dbg !4292
  store i64 %32, i64* %__ret, align 8, !dbg !4289
  br label %if.end44, !dbg !4289

if.end44:                                         ; preds = %__out, %lor.end
  %33 = load i64, i64* %__ret, align 8, !dbg !4278
  store i64 %33, i64* %tmp45, align 8, !dbg !4289
  %34 = load i64, i64* %tmp45, align 8, !dbg !4278
  %conv = trunc i64 %34 to i32, !dbg !4314
  store i32 %conv, i32* %ret, align 4, !dbg !4315
  %35 = load i32, i32* %ctrlreg1, align 4, !dbg !4316
  %36 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4317
  %io_base46 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %36, i32 0, i32 4, !dbg !4318
  %37 = load i8*, i8** %io_base46, align 8, !dbg !4318
  %add.ptr47 = getelementptr i8, i8* %37, i64 0, !dbg !4319
  call void @writel(i32 %35, i8* %add.ptr47) #7, !dbg !4320
  %38 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4321
  %io_base48 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %38, i32 0, i32 4, !dbg !4322
  %39 = load i8*, i8** %io_base48, align 8, !dbg !4322
  %add.ptr49 = getelementptr i8, i8* %39, i64 4, !dbg !4323
  call void @writel(i32 0, i8* %add.ptr49) #7, !dbg !4324
  %40 = load i32, i32* %ret, align 4, !dbg !4325
  %cmp = icmp eq i32 %40, 0, !dbg !4327
  br i1 %cmp, label %if.then51, label %if.else, !dbg !4328

if.then51:                                        ; preds = %if.end44
  store i32 -5, i32* %ret, align 4, !dbg !4329
  %41 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4331
  %pdev = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %41, i32 0, i32 5, !dbg !4331
  %42 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !4331
  %dev52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 3, !dbg !4331
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !4331
  br label %if.end66, !dbg !4332

if.else:                                          ; preds = %if.end44
  %43 = load i32, i32* %ret, align 4, !dbg !4333
  %cmp53 = icmp sgt i32 %43, 0, !dbg !4335
  br i1 %cmp53, label %if.then55, label %if.end65, !dbg !4336

if.then55:                                        ; preds = %if.else
  %44 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4337
  %status56 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %44, i32 0, i32 1, !dbg !4340
  %45 = load i32, i32* %status56, align 8, !dbg !4340
  %46 = load i32, i32* %bank.addr, align 4, !dbg !4341
  %add = add i32 %46, 12, !dbg !4342
  %shl57 = shl i32 1, %add, !dbg !4343
  %and58 = and i32 %45, %shl57, !dbg !4344
  %tobool59 = icmp ne i32 %and58, 0, !dbg !4344
  br i1 %tobool59, label %if.then60, label %if.else61, !dbg !4345

if.then60:                                        ; preds = %if.then55
  store i32 0, i32* %ret, align 4, !dbg !4346
  br label %if.end64, !dbg !4347

if.else61:                                        ; preds = %if.then55
  %47 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4348
  %pdev62 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %47, i32 0, i32 5, !dbg !4348
  %48 = load %struct.platform_device*, %struct.platform_device** %pdev62, align 8, !dbg !4348
  %dev63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 3, !dbg !4348
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0)) #8, !dbg !4348
  store i32 -5, i32* %ret, align 4, !dbg !4350
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then60
  br label %if.end65, !dbg !4351

if.end65:                                         ; preds = %if.end64, %if.else
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then51
  %49 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4352
  %lock67 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %49, i32 0, i32 3, !dbg !4353
  call void @mutex_unlock(%struct.mutex* %lock67) #7, !dbg !4354
  %50 = load i32, i32* %ret, align 4, !dbg !4355
  ret i32 %50, !dbg !4356
}

; Function Attrs: noredzone
declare dso_local void @memcpy_fromio(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_cpy_toio(%struct.spear_smi* %dev, i32 %bank, i8* %dest, i8* %src, i64 %len) #2 !dbg !4357 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.spear_smi*, align 8
  %bank.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctrlreg1 = alloca i32, align 4
  store %struct.spear_smi* %dev, %struct.spear_smi** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %dev.addr, metadata !4360, metadata !DIExpression()), !dbg !4361
  store i32 %bank, i32* %bank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bank.addr, metadata !4362, metadata !DIExpression()), !dbg !4363
  store i8* %dest, i8** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dest.addr, metadata !4364, metadata !DIExpression()), !dbg !4365
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !4366, metadata !DIExpression()), !dbg !4367
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4368, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4370, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.declare(metadata i32* %ctrlreg1, metadata !4372, metadata !DIExpression()), !dbg !4373
  %0 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4374
  %1 = load i32, i32* %bank.addr, align 4, !dbg !4375
  %call = call i32 @spear_smi_wait_till_ready(%struct.spear_smi* %0, i32 %1, i64 750) #7, !dbg !4376
  store i32 %call, i32* %ret, align 4, !dbg !4377
  %2 = load i32, i32* %ret, align 4, !dbg !4378
  %tobool = icmp ne i32 %2, 0, !dbg !4378
  br i1 %tobool, label %if.then, label %if.end, !dbg !4380

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !4381
  store i32 %3, i32* %retval, align 4, !dbg !4382
  br label %return, !dbg !4382

if.end:                                           ; preds = %entry
  %4 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4383
  %5 = load i32, i32* %bank.addr, align 4, !dbg !4384
  %call1 = call i32 @spear_smi_write_enable(%struct.spear_smi* %4, i32 %5) #7, !dbg !4385
  store i32 %call1, i32* %ret, align 4, !dbg !4386
  %6 = load i32, i32* %ret, align 4, !dbg !4387
  %tobool2 = icmp ne i32 %6, 0, !dbg !4387
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4389

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !4390
  store i32 %7, i32* %retval, align 4, !dbg !4391
  br label %return, !dbg !4391

if.end4:                                          ; preds = %if.end
  %8 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4392
  %lock = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %8, i32 0, i32 3, !dbg !4393
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !4394
  %9 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4395
  %io_base = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %9, i32 0, i32 4, !dbg !4396
  %10 = load i8*, i8** %io_base, align 8, !dbg !4396
  %add.ptr = getelementptr i8, i8* %10, i64 0, !dbg !4397
  %call5 = call i32 @readl(i8* %add.ptr) #7, !dbg !4398
  store i32 %call5, i32* %ctrlreg1, align 4, !dbg !4399
  %11 = load i32, i32* %ctrlreg1, align 4, !dbg !4400
  %or = or i32 %11, 536870912, !dbg !4401
  %and = and i32 %or, -268435457, !dbg !4402
  %12 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4403
  %io_base6 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %12, i32 0, i32 4, !dbg !4404
  %13 = load i8*, i8** %io_base6, align 8, !dbg !4404
  %add.ptr7 = getelementptr i8, i8* %13, i64 0, !dbg !4405
  call void @writel(i32 %and, i8* %add.ptr7) #7, !dbg !4406
  %14 = load i64, i64* %len.addr, align 8, !dbg !4407
  %and8 = and i64 %14, 3, !dbg !4407
  %cmp = icmp eq i64 %and8, 0, !dbg !4407
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4409

land.lhs.true:                                    ; preds = %if.end4
  %15 = load i8*, i8** %dest.addr, align 8, !dbg !4410
  %16 = ptrtoint i8* %15 to i64, !dbg !4410
  %and9 = and i64 %16, 3, !dbg !4410
  %cmp10 = icmp eq i64 %and9, 0, !dbg !4410
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !4411

if.then11:                                        ; preds = %land.lhs.true
  %17 = load i8*, i8** %dest.addr, align 8, !dbg !4412
  %18 = load i8*, i8** %src.addr, align 8, !dbg !4413
  %19 = load i64, i64* %len.addr, align 8, !dbg !4414
  call void @memcpy_toio(i8* %17, i8* %18, i64 %19) #7, !dbg !4415
  br label %if.end12, !dbg !4415

if.else:                                          ; preds = %land.lhs.true, %if.end4
  %20 = load i8*, i8** %dest.addr, align 8, !dbg !4416
  %21 = load i8*, i8** %src.addr, align 8, !dbg !4417
  %22 = load i64, i64* %len.addr, align 8, !dbg !4418
  call void @spear_smi_memcpy_toio_b(i8* %20, i8* %21, i64 %22) #7, !dbg !4419
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %23 = load i32, i32* %ctrlreg1, align 4, !dbg !4420
  %24 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4421
  %io_base13 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %24, i32 0, i32 4, !dbg !4422
  %25 = load i8*, i8** %io_base13, align 8, !dbg !4422
  %add.ptr14 = getelementptr i8, i8* %25, i64 0, !dbg !4423
  call void @writel(i32 %23, i8* %add.ptr14) #7, !dbg !4424
  %26 = load %struct.spear_smi*, %struct.spear_smi** %dev.addr, align 8, !dbg !4425
  %lock15 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %26, i32 0, i32 3, !dbg !4426
  call void @mutex_unlock(%struct.mutex* %lock15) #7, !dbg !4427
  store i32 0, i32* %retval, align 4, !dbg !4428
  br label %return, !dbg !4428

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !4429
  ret i32 %27, !dbg !4429
}

; Function Attrs: noredzone
declare dso_local void @memcpy_toio(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @spear_smi_memcpy_toio_b(i8* %dest, i8* %src, i64 %len) #2 !dbg !4430 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %from = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dest.addr, metadata !4433, metadata !DIExpression()), !dbg !4434
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !4435, metadata !DIExpression()), !dbg !4436
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.declare(metadata i8** %from, metadata !4439, metadata !DIExpression()), !dbg !4442
  %0 = load i8*, i8** %src.addr, align 8, !dbg !4443
  store i8* %0, i8** %from, align 8, !dbg !4442
  br label %while.cond, !dbg !4444

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %len.addr, align 8, !dbg !4445
  %tobool = icmp ne i64 %1, 0, !dbg !4444
  br i1 %tobool, label %while.body, label %while.end, !dbg !4444

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %len.addr, align 8, !dbg !4446
  %dec = add i64 %2, -1, !dbg !4446
  store i64 %dec, i64* %len.addr, align 8, !dbg !4446
  %3 = load i8*, i8** %from, align 8, !dbg !4448
  %4 = load i8, i8* %3, align 1, !dbg !4449
  %5 = load i8*, i8** %dest.addr, align 8, !dbg !4450
  call void @writeb(i8 zeroext %4, i8* %5) #7, !dbg !4451
  %6 = load i8*, i8** %from, align 8, !dbg !4452
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !4452
  store i8* %incdec.ptr, i8** %from, align 8, !dbg !4452
  %7 = load i8*, i8** %dest.addr, align 8, !dbg !4453
  %incdec.ptr1 = getelementptr i8, i8* %7, i32 1, !dbg !4453
  store i8* %incdec.ptr1, i8** %dest.addr, align 8, !dbg !4453
  br label %while.cond, !dbg !4444, !llvm.loop !4454

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #2 !dbg !4457 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4462, metadata !DIExpression()), !dbg !4461
  %0 = load i8, i8* %val.addr, align 1, !dbg !4461
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4461
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #9, !dbg !4461, !srcloc !4463
  ret void, !dbg !4461
}

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @mtd_device_unregister(%struct.mtd_info*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_suspend(%struct.device* %dev) #2 !dbg !4464 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sdev = alloca %struct.spear_smi*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %sdev, metadata !4467, metadata !DIExpression()), !dbg !4468
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4469
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !4470
  %1 = bitcast i8* %call to %struct.spear_smi*, !dbg !4470
  store %struct.spear_smi* %1, %struct.spear_smi** %sdev, align 8, !dbg !4468
  %2 = load %struct.spear_smi*, %struct.spear_smi** %sdev, align 8, !dbg !4471
  %tobool = icmp ne %struct.spear_smi* %2, null, !dbg !4471
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4473

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.spear_smi*, %struct.spear_smi** %sdev, align 8, !dbg !4474
  %clk = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %3, i32 0, i32 0, !dbg !4475
  %4 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !4475
  %tobool1 = icmp ne %struct.clk* %4, null, !dbg !4474
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4476

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.spear_smi*, %struct.spear_smi** %sdev, align 8, !dbg !4477
  %clk2 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %5, i32 0, i32 0, !dbg !4478
  %6 = load %struct.clk*, %struct.clk** %clk2, align 8, !dbg !4478
  call void @clk_disable_unprepare(%struct.clk* %6) #7, !dbg !4479
  br label %if.end, !dbg !4479

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0, !dbg !4480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @spear_smi_resume(%struct.device* %dev) #2 !dbg !4481 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sdev = alloca %struct.spear_smi*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.declare(metadata %struct.spear_smi** %sdev, metadata !4484, metadata !DIExpression()), !dbg !4485
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4486
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !4487
  %1 = bitcast i8* %call to %struct.spear_smi*, !dbg !4487
  store %struct.spear_smi* %1, %struct.spear_smi** %sdev, align 8, !dbg !4485
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4488, metadata !DIExpression()), !dbg !4489
  store i32 -1, i32* %ret, align 4, !dbg !4489
  %2 = load %struct.spear_smi*, %struct.spear_smi** %sdev, align 8, !dbg !4490
  %tobool = icmp ne %struct.spear_smi* %2, null, !dbg !4490
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4492

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.spear_smi*, %struct.spear_smi** %sdev, align 8, !dbg !4493
  %clk = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %3, i32 0, i32 0, !dbg !4494
  %4 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !4494
  %tobool1 = icmp ne %struct.clk* %4, null, !dbg !4493
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4495

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.spear_smi*, %struct.spear_smi** %sdev, align 8, !dbg !4496
  %clk2 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %5, i32 0, i32 0, !dbg !4497
  %6 = load %struct.clk*, %struct.clk** %clk2, align 8, !dbg !4497
  %call3 = call i32 @clk_prepare_enable(%struct.clk* %6) #7, !dbg !4498
  store i32 %call3, i32* %ret, align 4, !dbg !4499
  br label %if.end, !dbg !4500

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %ret, align 4, !dbg !4501
  %tobool4 = icmp ne i32 %7, 0, !dbg !4501
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4503

if.then5:                                         ; preds = %if.end
  %8 = load %struct.spear_smi*, %struct.spear_smi** %sdev, align 8, !dbg !4504
  call void @spear_smi_hw_init(%struct.spear_smi* %8) #7, !dbg !4505
  br label %if.end6, !dbg !4505

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !4506
  ret i32 %9, !dbg !4507
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2419, !2420, !2421, !2422}
!llvm.ident = !{!2423}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_spear_smi_driver_init165", scope: !2, file: !3, line: 1118, type: !62, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !56, globals: !2306, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/devices/spear_smi.c", directory: "/home/lizy2001/genbc/linux")
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !51, line: 11, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!56 = !{!57, !60, !62, !63, !64, !66, !67, !68, !70, !71, !2302, !75, !209, !2303, !2304}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !59, line: 76, flags: DIFlagFwdDecl)
!59 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !61, line: 148, baseType: !7)
!61 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !65, line: 27, baseType: !7)
!65 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!66 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spear_snor_flash", file: !3, line: 195, size: 10240, elements: !73)
!73 = !{!74, !77, !78, !114, !2283, !2284, !2298, !2299, !2300, !2301}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "bank", scope: !72, file: !3, line: 196, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !76, line: 21, baseType: !64)
!76 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !72, file: !3, line: 197, baseType: !75, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !72, file: !3, line: 198, baseType: !79, size: 192, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !80, line: 53, size: 192, elements: !81)
!80 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !92, !108}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !79, file: !80, line: 54, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !84, line: 13, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !61, line: 175, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 173, size: 64, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !86, file: !61, line: 174, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !76, line: 22, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !65, line: 30, baseType: !91)
!91 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !79, file: !80, line: 55, baseType: !93, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !94, line: 83, baseType: !95)
!94 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !94, line: 71, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !94, line: 72, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !94, line: 72, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !98, file: !94, line: 73, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !94, line: 20, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !101, file: !94, line: 21, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !105, line: 25, baseType: !106)
!105 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 25, elements: !107)
!107 = !{}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !79, file: !80, line: 59, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !61, line: 178, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !61, line: 179, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !61, line: 179, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !72, file: !3, line: 199, baseType: !115, size: 9664, offset: 256)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !116, line: 235, size: 9664, elements: !117)
!116 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !121, !123, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !142, !143, !159, !180, !181, !182, !183, !192, !202, !217, !221, !226, !232, !233, !252, !253, !264, !265, !266, !267, !268, !269, !280, !284, !288, !289, !290, !294, !295, !296, !297, !301, !302, !303, !304, !305, !308, !320, !327, !328, !329, !330, !2253, !2254, !2262, !2266, !2267, !2268}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !116, line: 236, baseType: !119, size: 8)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !61, line: 79, baseType: !120)
!120 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !116, line: 237, baseType: !122, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !61, line: 104, baseType: !75)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !115, file: !116, line: 238, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !61, line: 107, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !76, line: 23, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !65, line: 31, baseType: !127)
!127 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !115, file: !116, line: 244, baseType: !122, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !115, file: !116, line: 252, baseType: !122, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !115, file: !116, line: 263, baseType: !122, size: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !115, file: !116, line: 265, baseType: !122, size: 32, offset: 224)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !115, file: !116, line: 266, baseType: !122, size: 32, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !115, file: !116, line: 272, baseType: !7, size: 32, offset: 288)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !115, file: !116, line: 273, baseType: !7, size: 32, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !115, file: !116, line: 275, baseType: !7, size: 32, offset: 352)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !115, file: !116, line: 276, baseType: !7, size: 32, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !115, file: !116, line: 285, baseType: !7, size: 32, offset: 416)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !116, line: 288, baseType: !139, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !115, file: !116, line: 289, baseType: !70, size: 32, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !115, file: !116, line: 292, baseType: !144, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !116, line: 101, size: 128, elements: !147)
!147 = !{!148, !158}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !146, file: !116, line: 102, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!70, !152, !70, !153}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !116, line: 87, size: 64, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !154, file: !116, line: 88, baseType: !75, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !154, file: !116, line: 89, baseType: !75, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !146, file: !116, line: 104, baseType: !149, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !115, file: !116, line: 295, baseType: !160, size: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !116, line: 176, size: 192, elements: !163)
!163 = !{!164, !165, !174}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !162, file: !116, line: 177, baseType: !70, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !162, file: !116, line: 178, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!70, !152, !70, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !116, line: 138, size: 64, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !170, file: !116, line: 139, baseType: !70, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !170, file: !116, line: 140, baseType: !70, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !162, file: !116, line: 180, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!70, !152, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !115, file: !116, line: 298, baseType: !7, size: 32, offset: 704)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !115, file: !116, line: 301, baseType: !7, size: 32, offset: 736)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !115, file: !116, line: 306, baseType: !70, size: 32, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !115, file: !116, line: 307, baseType: !184, size: 64, offset: 832)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !116, line: 36, size: 192, elements: !186)
!186 = !{!187, !188, !189, !190}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !185, file: !116, line: 37, baseType: !124, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !185, file: !116, line: 38, baseType: !122, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !185, file: !116, line: 39, baseType: !122, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !185, file: !116, line: 40, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !115, file: !116, line: 313, baseType: !193, size: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!70, !152, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !116, line: 30, size: 192, elements: !198)
!198 = !{!199, !200, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !197, file: !116, line: 31, baseType: !124, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !197, file: !116, line: 32, baseType: !124, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !197, file: !116, line: 33, baseType: !124, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !115, file: !116, line: 314, baseType: !203, size: 64, offset: 960)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!70, !152, !206, !209, !212, !213, !214}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !61, line: 46, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !208, line: 88, baseType: !91)
!208 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 55, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !208, line: 72, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !208, line: 16, baseType: !66)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !61, line: 158, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !61, line: 153, baseType: !125)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !115, file: !116, line: 316, baseType: !218, size: 64, offset: 1024)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!70, !152, !206, !209}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !115, file: !116, line: 317, baseType: !222, size: 64, offset: 1088)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!70, !152, !206, !209, !212, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !115, file: !116, line: 319, baseType: !227, size: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!70, !152, !206, !209, !212, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !115, file: !116, line: 321, baseType: !227, size: 64, offset: 1216)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !115, file: !116, line: 323, baseType: !234, size: 64, offset: 1280)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!70, !152, !206, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !116, line: 64, size: 512, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !251}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !238, file: !116, line: 65, baseType: !7, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !238, file: !116, line: 66, baseType: !209, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !238, file: !116, line: 67, baseType: !209, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !238, file: !116, line: 68, baseType: !209, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !238, file: !116, line: 69, baseType: !209, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !238, file: !116, line: 70, baseType: !122, size: 32, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !238, file: !116, line: 71, baseType: !247, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !61, line: 102, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !76, line: 17, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !65, line: 21, baseType: !120)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !238, file: !116, line: 72, baseType: !247, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !115, file: !116, line: 325, baseType: !234, size: 64, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !115, file: !116, line: 327, baseType: !254, size: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!70, !152, !209, !212, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !259, line: 146, size: 96, elements: !260)
!259 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !262, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !258, file: !259, line: 147, baseType: !64, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !258, file: !259, line: 148, baseType: !64, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !258, file: !259, line: 149, baseType: !64, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !115, file: !116, line: 329, baseType: !222, size: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !115, file: !116, line: 331, baseType: !254, size: 64, offset: 1536)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !115, file: !116, line: 333, baseType: !222, size: 64, offset: 1600)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !115, file: !116, line: 335, baseType: !222, size: 64, offset: 1664)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !115, file: !116, line: 337, baseType: !218, size: 64, offset: 1728)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !115, file: !116, line: 339, baseType: !270, size: 64, offset: 1792)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!70, !152, !273, !66, !206, !212}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !276, line: 15, size: 128, elements: !277)
!276 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !275, file: !276, line: 16, baseType: !62, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !275, file: !276, line: 17, baseType: !209, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !115, file: !116, line: 341, baseType: !281, size: 64, offset: 1856)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !152}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !115, file: !116, line: 342, baseType: !285, size: 64, offset: 1920)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!70, !152, !206, !124}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !115, file: !116, line: 343, baseType: !285, size: 64, offset: 1984)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !115, file: !116, line: 344, baseType: !285, size: 64, offset: 2048)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !115, file: !116, line: 345, baseType: !291, size: 64, offset: 2112)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!70, !152, !206}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !115, file: !116, line: 346, baseType: !291, size: 64, offset: 2176)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !115, file: !116, line: 347, baseType: !291, size: 64, offset: 2240)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !115, file: !116, line: 348, baseType: !218, size: 64, offset: 2304)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !115, file: !116, line: 349, baseType: !298, size: 64, offset: 2368)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!70, !152}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !115, file: !116, line: 350, baseType: !281, size: 64, offset: 2432)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !115, file: !116, line: 351, baseType: !281, size: 64, offset: 2496)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !115, file: !116, line: 356, baseType: !298, size: 64, offset: 2560)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !115, file: !116, line: 357, baseType: !281, size: 64, offset: 2624)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !115, file: !116, line: 363, baseType: !306, size: 8, offset: 2688)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !61, line: 30, baseType: !307)
!307 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !115, file: !116, line: 365, baseType: !309, size: 192, offset: 2752)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !310, line: 54, size: 192, elements: !311)
!310 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !318, !319}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !309, file: !310, line: 55, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !310, line: 51, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!70, !317, !66, !62}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !310, line: 56, baseType: !317, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !309, file: !310, line: 57, baseType: !70, size: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !115, file: !116, line: 368, baseType: !321, size: 128, offset: 2944)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !259, line: 250, size: 128, elements: !322)
!322 = !{!323, !324, !325, !326}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !321, file: !259, line: 251, baseType: !64, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !321, file: !259, line: 252, baseType: !64, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !321, file: !259, line: 253, baseType: !64, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !321, file: !259, line: 254, baseType: !64, size: 32, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !115, file: !116, line: 370, baseType: !70, size: 32, offset: 3072)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !115, file: !116, line: 372, baseType: !62, size: 64, offset: 3136)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !115, file: !116, line: 374, baseType: !57, size: 64, offset: 3200)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !115, file: !116, line: 375, baseType: !331, size: 5568, offset: 3264)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !332)
!332 = !{!333, !1779, !1781, !1784, !1785, !1836, !1930, !1931, !1932, !1933, !1934, !1943, !2048, !2061, !2064, !2065, !2069, !2071, !2072, !2073, !2077, !2083, !2084, !2087, !2202, !2203, !2206, !2207, !2208, !2209, !2241, !2242, !2243, !2246, !2249, !2250, !2251, !2252}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !331, file: !30, line: 462, baseType: !334, size: 512)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !335, line: 64, size: 512, elements: !336)
!335 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!336 = !{!337, !338, !339, !341, !386, !1616, !1769, !1774, !1775, !1776, !1777, !1778}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !334, file: !335, line: 65, baseType: !139, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !334, file: !335, line: 66, baseType: !109, size: 128, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !334, file: !335, line: 67, baseType: !340, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !334, file: !335, line: 68, baseType: !342, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !335, line: 192, size: 704, elements: !344)
!344 = !{!345, !346, !347, !348}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !343, file: !335, line: 193, baseType: !109, size: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !343, file: !335, line: 194, baseType: !93, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !343, file: !335, line: 195, baseType: !334, size: 512, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !343, file: !335, line: 196, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !335, line: 156, size: 192, elements: !352)
!352 = !{!353, !358, !363}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !351, file: !335, line: 157, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!70, !342, !340}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !335, line: 158, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!139, !342, !340}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !351, file: !335, line: 159, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!70, !342, !340, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !335, line: 148, size: 20736, elements: !370)
!370 = !{!371, !376, !380, !381, !385}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !369, file: !335, line: 149, baseType: !372, size: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 192, elements: !374)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!374 = !{!375}
!375 = !DISubrange(count: 3)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !369, file: !335, line: 150, baseType: !377, size: 4096, offset: 192)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 4096, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !369, file: !335, line: 151, baseType: !70, size: 32, offset: 4288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !369, file: !335, line: 152, baseType: !382, size: 16384, offset: 4320)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 16384, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 2048)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !369, file: !335, line: 153, baseType: !70, size: 32, offset: 20704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !334, file: !335, line: 69, baseType: !387, size: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !335, line: 138, size: 448, elements: !389)
!389 = !{!390, !394, !418, !420, !1564, !1595, !1599}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !388, file: !335, line: 139, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !340}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !388, file: !335, line: 140, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !398, line: 230, size: 128, elements: !399)
!398 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !414}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !397, file: !398, line: 231, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!404, !340, !407, !373}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !61, line: 60, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !208, line: 73, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !208, line: 15, baseType: !67)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !398, line: 30, size: 128, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !398, line: 31, baseType: !139, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !408, file: !398, line: 32, baseType: !412, size: 16, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !61, line: 19, baseType: !413)
!413 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !397, file: !398, line: 232, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!404, !340, !407, !139, !209}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !388, file: !335, line: 141, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !388, file: !335, line: 142, baseType: !421, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !398, line: 84, size: 320, elements: !425)
!425 = !{!426, !427, !431, !1561, !1562}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !398, line: 85, baseType: !139, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !424, file: !398, line: 86, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!412, !340, !407, !70}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !424, file: !398, line: 88, baseType: !432, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!412, !340, !435, !70}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !398, line: 168, size: 448, elements: !437)
!437 = !{!438, !439, !440, !441, !448, !449}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !436, file: !398, line: 169, baseType: !408, size: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !436, file: !398, line: 170, baseType: !209, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !436, file: !398, line: 171, baseType: !62, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !436, file: !398, line: 172, baseType: !442, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!404, !445, !340, !435, !373, !206, !209}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !447, line: 526, flags: DIFlagFwdDecl)
!447 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !436, file: !398, line: 174, baseType: !442, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !436, file: !398, line: 176, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!70, !445, !340, !435, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !455, line: 305, size: 1472, elements: !456)
!455 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !458, !459, !460, !461, !469, !470, !1535, !1541, !1542, !1547, !1548, !1551, !1555, !1556, !1557, !1558, !1559}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !454, file: !455, line: 308, baseType: !66, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !454, file: !455, line: 309, baseType: !66, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !454, file: !455, line: 313, baseType: !453, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !454, file: !455, line: 313, baseType: !453, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !454, file: !455, line: 315, baseType: !462, size: 192, align: 64, offset: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !463, line: 24, size: 192, align: 64, elements: !464)
!463 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!464 = !{!465, !466, !468}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !462, file: !463, line: 25, baseType: !66, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !462, file: !463, line: 26, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !462, file: !463, line: 27, baseType: !467, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !454, file: !455, line: 323, baseType: !66, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !454, file: !455, line: 327, baseType: !471, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !455, line: 388, size: 7296, elements: !473)
!473 = !{!474, !1531}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !455, line: 389, baseType: !475, size: 7296)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !455, line: 389, size: 7296, elements: !476)
!476 = !{!477, !478, !482, !483, !487, !488, !489, !490, !491, !499, !504, !505, !506, !507, !508, !509, !510, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !545, !553, !556, !598, !599, !1501, !1502, !1505, !1509, !1510, !1513, !1514, !1515, !1518, !1530}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !475, file: !455, line: 390, baseType: !453, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !475, file: !455, line: 391, baseType: !479, size: 64, offset: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !463, line: 31, size: 64, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !479, file: !463, line: 32, baseType: !467, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !475, file: !455, line: 392, baseType: !125, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !475, file: !455, line: 394, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!66, !445, !66, !66, !66, !66}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !475, file: !455, line: 398, baseType: !66, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !475, file: !455, line: 399, baseType: !66, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !475, file: !455, line: 405, baseType: !66, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !475, file: !455, line: 406, baseType: !66, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !475, file: !455, line: 407, baseType: !492, size: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !447, line: 286, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 286, size: 64, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !494, file: !447, line: 286, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !498, line: 18, baseType: !66)
!498 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!499 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !475, file: !455, line: 416, baseType: !500, size: 32, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !61, line: 168, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 166, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !501, file: !61, line: 167, baseType: !70, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !475, file: !455, line: 428, baseType: !500, size: 32, offset: 608)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !475, file: !455, line: 437, baseType: !500, size: 32, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !475, file: !455, line: 447, baseType: !500, size: 32, offset: 672)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !475, file: !455, line: 450, baseType: !83, size: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !475, file: !455, line: 452, baseType: !70, size: 32, offset: 768)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !475, file: !455, line: 454, baseType: !93, offset: 800)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !475, file: !455, line: 457, baseType: !511, size: 256, offset: 832)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !512, line: 35, size: 256, elements: !513)
!512 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514, !515, !516, !518}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !512, line: 36, baseType: !83, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !511, file: !512, line: 42, baseType: !83, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !511, file: !512, line: 46, baseType: !517, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !94, line: 29, baseType: !101)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !511, file: !512, line: 47, baseType: !109, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !475, file: !455, line: 459, baseType: !109, size: 128, offset: 1088)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !475, file: !455, line: 466, baseType: !66, size: 64, offset: 1216)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !475, file: !455, line: 467, baseType: !66, size: 64, offset: 1280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !475, file: !455, line: 469, baseType: !66, size: 64, offset: 1344)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !475, file: !455, line: 470, baseType: !66, size: 64, offset: 1408)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !475, file: !455, line: 471, baseType: !85, size: 64, offset: 1472)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !475, file: !455, line: 472, baseType: !66, size: 64, offset: 1536)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !475, file: !455, line: 473, baseType: !66, size: 64, offset: 1600)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !475, file: !455, line: 474, baseType: !66, size: 64, offset: 1664)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !475, file: !455, line: 475, baseType: !66, size: 64, offset: 1728)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !475, file: !455, line: 477, baseType: !93, offset: 1792)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !475, file: !455, line: 478, baseType: !66, size: 64, offset: 1792)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !475, file: !455, line: 478, baseType: !66, size: 64, offset: 1856)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !475, file: !455, line: 478, baseType: !66, size: 64, offset: 1920)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !475, file: !455, line: 478, baseType: !66, size: 64, offset: 1984)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !475, file: !455, line: 479, baseType: !66, size: 64, offset: 2048)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !475, file: !455, line: 479, baseType: !66, size: 64, offset: 2112)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !475, file: !455, line: 479, baseType: !66, size: 64, offset: 2176)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !475, file: !455, line: 480, baseType: !66, size: 64, offset: 2240)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !475, file: !455, line: 480, baseType: !66, size: 64, offset: 2304)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !475, file: !455, line: 480, baseType: !66, size: 64, offset: 2368)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !475, file: !455, line: 480, baseType: !66, size: 64, offset: 2432)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !475, file: !455, line: 482, baseType: !542, size: 2816, offset: 2496)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2816, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 44)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !475, file: !455, line: 488, baseType: !546, size: 256, offset: 5312)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !547, line: 60, size: 256, elements: !548)
!547 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !546, file: !547, line: 61, baseType: !550, size: 256)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 4)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !475, file: !455, line: 490, baseType: !554, size: 64, offset: 5568)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !455, line: 490, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !475, file: !455, line: 493, baseType: !557, size: 896, offset: 5632)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !558, line: 53, baseType: !559)
!558 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !558, line: 13, size: 896, elements: !560)
!560 = !{!561, !562, !563, !564, !567, !568, !569, !570, !590, !591, !594}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !559, file: !558, line: 18, baseType: !125, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !559, file: !558, line: 28, baseType: !85, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !559, file: !558, line: 31, baseType: !511, size: 256, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !559, file: !558, line: 32, baseType: !565, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !558, line: 32, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !559, file: !558, line: 37, baseType: !413, size: 16, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !559, file: !558, line: 40, baseType: !79, size: 192, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !559, file: !558, line: 41, baseType: !62, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !559, file: !558, line: 42, baseType: !571, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !574, line: 13, size: 896, elements: !575)
!574 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !573, file: !574, line: 14, baseType: !62, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !573, file: !574, line: 15, baseType: !66, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !573, file: !574, line: 17, baseType: !66, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !573, file: !574, line: 17, baseType: !66, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !573, file: !574, line: 19, baseType: !67, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !573, file: !574, line: 21, baseType: !67, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !573, file: !574, line: 22, baseType: !67, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !573, file: !574, line: 23, baseType: !67, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !573, file: !574, line: 24, baseType: !67, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !573, file: !574, line: 25, baseType: !67, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !573, file: !574, line: 26, baseType: !67, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !573, file: !574, line: 27, baseType: !67, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !573, file: !574, line: 28, baseType: !67, size: 64, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !573, file: !574, line: 29, baseType: !67, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !559, file: !558, line: 44, baseType: !500, size: 32, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !559, file: !558, line: 50, baseType: !592, size: 16, offset: 864)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !76, line: 19, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !65, line: 24, baseType: !413)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !559, file: !558, line: 51, baseType: !595, size: 16, offset: 880)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !76, line: 18, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !65, line: 23, baseType: !597)
!597 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !455, line: 495, baseType: !66, size: 64, offset: 6528)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !475, file: !455, line: 497, baseType: !600, size: 64, offset: 6592)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !455, line: 381, size: 384, elements: !602)
!602 = !{!603, !604, !1500}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !601, file: !455, line: 382, baseType: !500, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !601, file: !455, line: 383, baseType: !605, size: 128, offset: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !455, line: 376, size: 128, elements: !606)
!606 = !{!607, !1498}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !605, file: !455, line: 377, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !610, line: 640, size: 48640, elements: !611)
!610 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!611 = !{!612, !618, !620, !621, !627, !628, !629, !630, !631, !632, !633, !634, !638, !656, !667, !759, !760, !761, !772, !773, !775, !776, !777, !778, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !857, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !913, !915, !916, !917, !929, !931, !932, !933, !934, !935, !941, !942, !943, !944, !945, !946, !947, !959, !964, !968, !969, !970, !973, !977, !980, !983, !986, !989, !992, !995, !998, !1004, !1005, !1006, !1012, !1013, !1014, !1015, !1016, !1025, !1026, !1027, !1028, !1029, !1034, !1035, !1036, !1039, !1040, !1043, !1046, !1049, !1052, !1055, !1058, !1059, !1139, !1142, !1145, !1146, !1149, !1150, !1151, !1157, !1158, !1159, !1172, !1173, !1174, !1184, !1189, !1192, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !609, file: !610, line: 646, baseType: !613, size: 128)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !614, line: 56, size: 128, elements: !615)
!614 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !614, line: 57, baseType: !66, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !613, file: !614, line: 58, baseType: !75, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !609, file: !610, line: 649, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !609, file: !610, line: 657, baseType: !62, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !609, file: !610, line: 658, baseType: !622, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !623, line: 113, baseType: !624)
!623 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !623, line: 111, size: 32, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !624, file: !623, line: 112, baseType: !500, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !610, line: 660, baseType: !7, size: 32, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !609, file: !610, line: 661, baseType: !7, size: 32, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !609, file: !610, line: 684, baseType: !70, size: 32, offset: 352)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !609, file: !610, line: 686, baseType: !70, size: 32, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !609, file: !610, line: 687, baseType: !70, size: 32, offset: 416)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !609, file: !610, line: 688, baseType: !70, size: 32, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !609, file: !610, line: 689, baseType: !7, size: 32, offset: 480)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !609, file: !610, line: 691, baseType: !635, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !610, line: 691, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !609, file: !610, line: 692, baseType: !639, size: 832, offset: 576)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !610, line: 451, size: 832, elements: !640)
!640 = !{!641, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !639, file: !610, line: 453, baseType: !642, size: 128)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !610, line: 325, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !642, file: !610, line: 326, baseType: !66, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !642, file: !610, line: 327, baseType: !75, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !639, file: !610, line: 454, baseType: !462, size: 192, align: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !639, file: !610, line: 455, baseType: !109, size: 128, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !639, file: !610, line: 456, baseType: !7, size: 32, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !639, file: !610, line: 458, baseType: !125, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !639, file: !610, line: 459, baseType: !125, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !639, file: !610, line: 460, baseType: !125, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !639, file: !610, line: 461, baseType: !125, size: 64, offset: 704)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !639, file: !610, line: 463, baseType: !125, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !639, file: !610, line: 465, baseType: !655, offset: 832)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !610, line: 415, elements: !107)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !609, file: !610, line: 693, baseType: !657, size: 384, offset: 1408)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !610, line: 489, size: 384, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !657, file: !610, line: 490, baseType: !109, size: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !657, file: !610, line: 491, baseType: !66, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !657, file: !610, line: 492, baseType: !66, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !657, file: !610, line: 493, baseType: !7, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !657, file: !610, line: 494, baseType: !413, size: 16, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !657, file: !610, line: 495, baseType: !413, size: 16, offset: 304)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !657, file: !610, line: 497, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !609, file: !610, line: 697, baseType: !668, size: 1792, offset: 1792)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !610, line: 507, size: 1792, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !756, !757}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !668, file: !610, line: 508, baseType: !462, size: 192, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !668, file: !610, line: 515, baseType: !125, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !668, file: !610, line: 516, baseType: !125, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !668, file: !610, line: 517, baseType: !125, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !668, file: !610, line: 518, baseType: !125, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !668, file: !610, line: 519, baseType: !125, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !668, file: !610, line: 526, baseType: !89, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !668, file: !610, line: 527, baseType: !125, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !610, line: 528, baseType: !7, size: 32, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !668, file: !610, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !668, file: !610, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !668, file: !610, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !668, file: !610, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !668, file: !610, line: 563, baseType: !684, size: 512, offset: 704)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !685)
!685 = !{!686, !694, !695, !700, !752, !753, !754, !755}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !684, file: !6, line: 119, baseType: !687, size: 256)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !688, line: 9, size: 256, elements: !689)
!688 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !688, line: 10, baseType: !462, size: 192, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !687, file: !688, line: 11, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !693, line: 29, baseType: !89)
!693 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !684, file: !6, line: 120, baseType: !692, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !684, file: !6, line: 121, baseType: !696, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!5, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !684, file: !6, line: 122, baseType: !701, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !703)
!703 = !{!704, !724, !725, !728, !738, !739, !747, !751}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !702, file: !6, line: 160, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !706, file: !6, line: 215, baseType: !517)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !706, file: !6, line: 216, baseType: !7, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !706, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !706, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !706, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !706, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !706, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !706, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !706, file: !6, line: 233, baseType: !692, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !706, file: !6, line: 234, baseType: !699, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !706, file: !6, line: 235, baseType: !692, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !706, file: !6, line: 236, baseType: !699, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !706, file: !6, line: 237, baseType: !721, size: 4096, offset: 512)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 4096, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 8)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !702, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !702, file: !6, line: 162, baseType: !726, size: 32, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !61, line: 27, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !208, line: 96, baseType: !70)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !702, file: !6, line: 163, baseType: !729, size: 32, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !730, line: 276, baseType: !731)
!730 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !730, line: 276, size: 32, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !731, file: !730, line: 276, baseType: !734, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !730, line: 70, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !730, line: 65, size: 32, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !735, file: !730, line: 66, baseType: !7, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !702, file: !6, line: 164, baseType: !699, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !702, file: !6, line: 165, baseType: !740, size: 128, offset: 256)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !688, line: 14, size: 128, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !740, file: !688, line: 15, baseType: !743, size: 128)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !463, line: 125, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !743, file: !463, line: 126, baseType: !479, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !743, file: !463, line: 127, baseType: !467, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !702, file: !6, line: 166, baseType: !748, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!692}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !702, file: !6, line: 167, baseType: !692, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !684, file: !6, line: 123, baseType: !249, size: 8, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !684, file: !6, line: 124, baseType: !249, size: 8, offset: 456)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !684, file: !6, line: 125, baseType: !249, size: 8, offset: 464)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !684, file: !6, line: 126, baseType: !249, size: 8, offset: 472)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !668, file: !610, line: 572, baseType: !684, size: 512, offset: 1216)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !668, file: !610, line: 580, baseType: !758, size: 64, offset: 1728)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !609, file: !610, line: 721, baseType: !7, size: 32, offset: 3584)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !609, file: !610, line: 722, baseType: !70, size: 32, offset: 3616)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !609, file: !610, line: 723, baseType: !762, size: 64, offset: 3648)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !765, line: 17, baseType: !766)
!765 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !765, line: 17, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !766, file: !765, line: 17, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 1)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !609, file: !610, line: 724, baseType: !764, size: 64, offset: 3712)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !609, file: !610, line: 749, baseType: !774, offset: 3776)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !610, line: 290, elements: !107)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !609, file: !610, line: 751, baseType: !109, size: 128, offset: 3776)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !609, file: !610, line: 757, baseType: !471, size: 64, offset: 3904)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !609, file: !610, line: 758, baseType: !471, size: 64, offset: 3968)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !609, file: !610, line: 761, baseType: !779, size: 320, offset: 4032)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !547, line: 34, size: 320, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !779, file: !547, line: 35, baseType: !125, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !779, file: !547, line: 36, baseType: !783, size: 256, offset: 64)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 256, elements: !551)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !609, file: !610, line: 766, baseType: !70, size: 32, offset: 4352)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !609, file: !610, line: 767, baseType: !70, size: 32, offset: 4384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !609, file: !610, line: 768, baseType: !70, size: 32, offset: 4416)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !609, file: !610, line: 770, baseType: !70, size: 32, offset: 4448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !609, file: !610, line: 772, baseType: !66, size: 64, offset: 4480)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !609, file: !610, line: 775, baseType: !7, size: 32, offset: 4544)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !609, file: !610, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !609, file: !610, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !609, file: !610, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !609, file: !610, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !609, file: !610, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !609, file: !610, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !609, file: !610, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !609, file: !610, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !609, file: !610, line: 831, baseType: !66, size: 64, offset: 4672)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !609, file: !610, line: 833, baseType: !800, size: 384, offset: 4736)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !801)
!801 = !{!802, !807}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !800, file: !12, line: 26, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!67, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !12, line: 27, baseType: !808, size: 320, offset: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !12, line: 27, size: 320, elements: !809)
!809 = !{!810, !820, !847}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !808, file: !12, line: 36, baseType: !811, size: 320)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !12, line: 29, size: 320, elements: !812)
!812 = !{!813, !815, !816, !817, !818, !819}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !811, file: !12, line: 30, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !811, file: !12, line: 31, baseType: !75, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !12, line: 32, baseType: !75, size: 32, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !811, file: !12, line: 33, baseType: !75, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !811, file: !12, line: 34, baseType: !125, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !811, file: !12, line: 35, baseType: !814, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !808, file: !12, line: 46, baseType: !821, size: 192)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !12, line: 38, size: 192, elements: !822)
!822 = !{!823, !824, !825, !846}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !821, file: !12, line: 39, baseType: !726, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !821, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !12, line: 41, baseType: !826, size: 64, offset: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !12, line: 41, size: 64, elements: !827)
!827 = !{!828, !836}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !826, file: !12, line: 42, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !831, line: 7, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !830, file: !831, line: 8, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !208, line: 93, baseType: !91)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !830, file: !831, line: 9, baseType: !91, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !826, file: !12, line: 43, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !839, line: 7, size: 64, elements: !840)
!839 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!840 = !{!841, !845}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !838, file: !839, line: 8, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !839, line: 5, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !76, line: 20, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !65, line: 26, baseType: !70)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !838, file: !839, line: 9, baseType: !843, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !821, file: !12, line: 45, baseType: !125, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !808, file: !12, line: 54, baseType: !848, size: 256)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !12, line: 48, size: 256, elements: !849)
!849 = !{!850, !853, !854, !855, !856}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !848, file: !12, line: 49, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !848, file: !12, line: 50, baseType: !70, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !848, file: !12, line: 51, baseType: !70, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !848, file: !12, line: 52, baseType: !66, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !848, file: !12, line: 53, baseType: !66, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !609, file: !610, line: 835, baseType: !858, size: 32, offset: 5120)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !61, line: 22, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !208, line: 28, baseType: !70)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !609, file: !610, line: 836, baseType: !858, size: 32, offset: 5152)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !609, file: !610, line: 840, baseType: !66, size: 64, offset: 5184)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !609, file: !610, line: 849, baseType: !608, size: 64, offset: 5248)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !609, file: !610, line: 852, baseType: !608, size: 64, offset: 5312)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !609, file: !610, line: 857, baseType: !109, size: 128, offset: 5376)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !609, file: !610, line: 858, baseType: !109, size: 128, offset: 5504)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !609, file: !610, line: 859, baseType: !608, size: 64, offset: 5632)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !609, file: !610, line: 867, baseType: !109, size: 128, offset: 5696)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !609, file: !610, line: 868, baseType: !109, size: 128, offset: 5824)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !609, file: !610, line: 871, baseType: !870, size: 64, offset: 5952)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !872, line: 59, size: 768, elements: !873)
!872 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !875, !876, !877, !888, !889, !896, !905}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !872, line: 61, baseType: !622, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !871, file: !872, line: 62, baseType: !7, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !871, file: !872, line: 63, baseType: !93, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !871, file: !872, line: 65, baseType: !878, size: 256, offset: 64)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 256, elements: !551)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !61, line: 182, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !879, file: !61, line: 183, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !61, line: 186, size: 128, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !61, line: 187, baseType: !882, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !883, file: !61, line: 187, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !871, file: !872, line: 66, baseType: !879, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !871, file: !872, line: 68, baseType: !890, size: 128, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !891, line: 40, baseType: !892)
!891 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !891, line: 36, size: 128, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !892, file: !891, line: 37, baseType: !93)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !892, file: !891, line: 38, baseType: !109, size: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !871, file: !872, line: 69, baseType: !897, size: 128, align: 64, offset: 512)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !61, line: 216, size: 128, align: 64, elements: !898)
!898 = !{!899, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !897, file: !61, line: 217, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !897, file: !61, line: 218, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !900}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !871, file: !872, line: 70, baseType: !906, size: 128, offset: 640)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 128, elements: !770)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !872, line: 54, size: 128, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !907, file: !872, line: 55, baseType: !70, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !907, file: !872, line: 56, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !872, line: 56, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !609, file: !610, line: 872, baseType: !914, size: 512, offset: 6016)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 512, elements: !551)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !609, file: !610, line: 873, baseType: !109, size: 128, offset: 6528)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !609, file: !610, line: 874, baseType: !109, size: 128, offset: 6656)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !609, file: !610, line: 876, baseType: !918, size: 64, offset: 6784)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !920, line: 26, size: 192, elements: !921)
!920 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !919, file: !920, line: 27, baseType: !7, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !919, file: !920, line: 28, baseType: !924, size: 128, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !925, line: 43, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !925, line: 44, baseType: !517)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !924, file: !925, line: 45, baseType: !109, size: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !609, file: !610, line: 879, baseType: !930, size: 64, offset: 6848)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !609, file: !610, line: 882, baseType: !930, size: 64, offset: 6912)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !609, file: !610, line: 884, baseType: !125, size: 64, offset: 6976)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !609, file: !610, line: 885, baseType: !125, size: 64, offset: 7040)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !609, file: !610, line: 890, baseType: !125, size: 64, offset: 7104)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !609, file: !610, line: 891, baseType: !936, size: 128, offset: 7168)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !610, line: 242, size: 128, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !936, file: !610, line: 244, baseType: !125, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !936, file: !610, line: 245, baseType: !125, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !610, line: 246, baseType: !517, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !609, file: !610, line: 900, baseType: !66, size: 64, offset: 7296)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !609, file: !610, line: 901, baseType: !66, size: 64, offset: 7360)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !609, file: !610, line: 904, baseType: !125, size: 64, offset: 7424)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !609, file: !610, line: 907, baseType: !125, size: 64, offset: 7488)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !609, file: !610, line: 910, baseType: !66, size: 64, offset: 7552)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !609, file: !610, line: 911, baseType: !66, size: 64, offset: 7616)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !609, file: !610, line: 914, baseType: !948, size: 640, offset: 7680)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !949, line: 123, size: 640, elements: !950)
!949 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!950 = !{!951, !957, !958}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !948, file: !949, line: 124, baseType: !952, size: 576)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 576, elements: !374)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !949, line: 108, size: 192, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !953, file: !949, line: 109, baseType: !125, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !953, file: !949, line: 110, baseType: !740, size: 128, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !948, file: !949, line: 125, baseType: !7, size: 32, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !948, file: !949, line: 126, baseType: !7, size: 32, offset: 608)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !609, file: !610, line: 917, baseType: !960, size: 192, offset: 8320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !949, line: 134, size: 192, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !960, file: !949, line: 135, baseType: !897, size: 128, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !960, file: !949, line: 136, baseType: !7, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !609, file: !610, line: 923, baseType: !965, size: 64, offset: 8512)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !610, line: 923, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !609, file: !610, line: 926, baseType: !965, size: 64, offset: 8576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !609, file: !610, line: 929, baseType: !965, size: 64, offset: 8640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !609, file: !610, line: 933, baseType: !971, size: 64, offset: 8704)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !610, line: 933, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !609, file: !610, line: 943, baseType: !974, size: 128, offset: 8768)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, elements: !975)
!975 = !{!976}
!976 = !DISubrange(count: 16)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !609, file: !610, line: 945, baseType: !978, size: 64, offset: 8896)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !610, line: 49, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !609, file: !610, line: 956, baseType: !981, size: 64, offset: 8960)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !610, line: 45, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !609, file: !610, line: 959, baseType: !984, size: 64, offset: 9024)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !610, line: 959, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !609, file: !610, line: 962, baseType: !987, size: 64, offset: 9088)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !610, line: 66, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !609, file: !610, line: 966, baseType: !990, size: 64, offset: 9152)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !610, line: 50, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !609, file: !610, line: 969, baseType: !993, size: 64, offset: 9216)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !949, line: 223, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !609, file: !610, line: 970, baseType: !996, size: 64, offset: 9280)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !610, line: 62, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !609, file: !610, line: 971, baseType: !999, size: 64, offset: 9344)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1000, line: 25, baseType: !1001)
!1000 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 23, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1001, file: !1000, line: 24, baseType: !769, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !609, file: !610, line: 972, baseType: !999, size: 64, offset: 9408)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !609, file: !610, line: 974, baseType: !999, size: 64, offset: 9472)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !609, file: !610, line: 975, baseType: !1007, size: 192, offset: 9536)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1008, line: 30, size: 192, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1007, file: !1008, line: 31, baseType: !109, size: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1007, file: !1008, line: 32, baseType: !999, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !609, file: !610, line: 976, baseType: !66, size: 64, offset: 9728)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !609, file: !610, line: 977, baseType: !209, size: 64, offset: 9792)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !609, file: !610, line: 978, baseType: !7, size: 32, offset: 9856)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !609, file: !610, line: 980, baseType: !900, size: 64, offset: 9920)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !609, file: !610, line: 989, baseType: !1017, size: 128, offset: 9984)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1018, line: 35, size: 128, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1017, file: !1018, line: 36, baseType: !70, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1017, file: !1018, line: 37, baseType: !500, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1017, file: !1018, line: 38, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1018, line: 23, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !609, file: !610, line: 992, baseType: !125, size: 64, offset: 10112)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !609, file: !610, line: 993, baseType: !125, size: 64, offset: 10176)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !609, file: !610, line: 996, baseType: !93, offset: 10240)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !609, file: !610, line: 999, baseType: !517, offset: 10240)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !609, file: !610, line: 1001, baseType: !1030, size: 64, offset: 10240)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !610, line: 636, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1030, file: !610, line: 637, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !609, file: !610, line: 1005, baseType: !743, size: 128, offset: 10304)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !609, file: !610, line: 1007, baseType: !608, size: 64, offset: 10432)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !609, file: !610, line: 1009, baseType: !1037, size: 64, offset: 10496)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !610, line: 1009, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !609, file: !610, line: 1043, baseType: !62, size: 64, offset: 10560)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !609, file: !610, line: 1046, baseType: !1041, size: 64, offset: 10624)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !610, line: 41, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !609, file: !610, line: 1050, baseType: !1044, size: 64, offset: 10688)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !610, line: 42, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !609, file: !610, line: 1054, baseType: !1047, size: 64, offset: 10752)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !610, line: 55, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !609, file: !610, line: 1056, baseType: !1050, size: 64, offset: 10816)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !610, line: 40, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !609, file: !610, line: 1058, baseType: !1053, size: 64, offset: 10880)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !610, line: 47, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !609, file: !610, line: 1061, baseType: !1056, size: 64, offset: 10944)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !610, line: 43, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !609, file: !610, line: 1064, baseType: !66, size: 64, offset: 11008)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !609, file: !610, line: 1065, baseType: !1060, size: 64, offset: 11072)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1008, line: 14, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1008, line: 12, size: 384, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !1008, line: 13, baseType: !1065, size: 384)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !1008, line: 13, size: 384, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1065, file: !1008, line: 13, baseType: !70, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1065, file: !1008, line: 13, baseType: !70, size: 32, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1065, file: !1008, line: 13, baseType: !70, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1065, file: !1008, line: 13, baseType: !1071, size: 256, offset: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1072, line: 32, size: 256, elements: !1073)
!1072 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1073 = !{!1074, !1080, !1093, !1099, !1108, !1128, !1133}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1071, file: !1072, line: 37, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 34, size: 64, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1075, file: !1072, line: 35, baseType: !859, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1075, file: !1072, line: 36, baseType: !1079, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !208, line: 49, baseType: !7)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1071, file: !1072, line: 45, baseType: !1081, size: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 40, size: 192, elements: !1082)
!1082 = !{!1083, !1085, !1086, !1092}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1081, file: !1072, line: 41, baseType: !1084, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !208, line: 95, baseType: !70)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1081, file: !1072, line: 42, baseType: !70, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1081, file: !1072, line: 43, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1072, line: 11, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1072, line: 8, size: 64, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1088, file: !1072, line: 9, baseType: !70, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1088, file: !1072, line: 10, baseType: !62, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1081, file: !1072, line: 44, baseType: !70, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1071, file: !1072, line: 52, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 48, size: 128, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1094, file: !1072, line: 49, baseType: !859, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1094, file: !1072, line: 50, baseType: !1079, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1094, file: !1072, line: 51, baseType: !1087, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1071, file: !1072, line: 61, baseType: !1100, size: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 55, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1107}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1100, file: !1072, line: 56, baseType: !859, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1100, file: !1072, line: 57, baseType: !1079, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1100, file: !1072, line: 58, baseType: !70, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1100, file: !1072, line: 59, baseType: !1106, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !208, line: 94, baseType: !406)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1100, file: !1072, line: 60, baseType: !1106, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1071, file: !1072, line: 95, baseType: !1109, size: 256)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 64, size: 256, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1109, file: !1072, line: 65, baseType: !62, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !1072, line: 77, baseType: !1113, size: 192, offset: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !1072, line: 77, size: 192, elements: !1114)
!1114 = !{!1115, !1116, !1123}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1113, file: !1072, line: 82, baseType: !597, size: 16)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1113, file: !1072, line: 88, baseType: !1117, size: 192)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !1072, line: 84, size: 192, elements: !1118)
!1118 = !{!1119, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1117, file: !1072, line: 85, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, elements: !722)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1117, file: !1072, line: 86, baseType: !62, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1117, file: !1072, line: 87, baseType: !62, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1113, file: !1072, line: 93, baseType: !1124, size: 96)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !1072, line: 90, size: 96, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1124, file: !1072, line: 91, baseType: !1120, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1124, file: !1072, line: 92, baseType: !64, size: 32, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1071, file: !1072, line: 101, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 98, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1129, file: !1072, line: 99, baseType: !67, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1129, file: !1072, line: 100, baseType: !70, size: 32, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1071, file: !1072, line: 108, baseType: !1134, size: 128)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1072, line: 104, size: 128, elements: !1135)
!1135 = !{!1136, !1137, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1134, file: !1072, line: 105, baseType: !62, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1134, file: !1072, line: 106, baseType: !70, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1134, file: !1072, line: 107, baseType: !7, size: 32, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !609, file: !610, line: 1067, baseType: !1140, offset: 11136)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1141, line: 12, elements: !107)
!1141 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !609, file: !610, line: 1099, baseType: !1143, size: 64, offset: 11136)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !610, line: 56, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !609, file: !610, line: 1103, baseType: !109, size: 128, offset: 11200)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !609, file: !610, line: 1104, baseType: !1147, size: 64, offset: 11328)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !610, line: 46, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !609, file: !610, line: 1105, baseType: !79, size: 192, offset: 11392)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !609, file: !610, line: 1106, baseType: !7, size: 32, offset: 11584)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !609, file: !610, line: 1109, baseType: !1152, size: 128, offset: 11648)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 128, elements: !1155)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !610, line: 51, flags: DIFlagFwdDecl)
!1155 = !{!1156}
!1156 = !DISubrange(count: 2)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !609, file: !610, line: 1110, baseType: !79, size: 192, offset: 11776)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !609, file: !610, line: 1111, baseType: !109, size: 128, offset: 11968)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !609, file: !610, line: 1173, baseType: !1160, size: 64, offset: 12096)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1162, line: 62, size: 256, align: 256, elements: !1163)
!1162 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1163 = !{!1164, !1165, !1166, !1171}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1161, file: !1162, line: 75, baseType: !64, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1161, file: !1162, line: 90, baseType: !64, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1161, file: !1162, line: 124, baseType: !1167, size: 64, offset: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 109, size: 64, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1167, file: !1162, line: 110, baseType: !126, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1167, file: !1162, line: 112, baseType: !126, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !1162, line: 144, baseType: !64, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !609, file: !610, line: 1174, baseType: !75, size: 32, offset: 12160)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !609, file: !610, line: 1179, baseType: !66, size: 64, offset: 12224)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !609, file: !610, line: 1182, baseType: !1175, size: 128, offset: 12288)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !547, line: 76, size: 128, elements: !1176)
!1176 = !{!1177, !1182, !1183}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1175, file: !547, line: 85, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1179, line: 7, size: 64, elements: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1178, file: !1179, line: 12, baseType: !766, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1175, file: !547, line: 88, baseType: !306, size: 8, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1175, file: !547, line: 95, baseType: !306, size: 8, offset: 72)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !610, line: 1184, baseType: !1185, size: 128, offset: 12416)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !609, file: !610, line: 1184, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1185, file: !610, line: 1185, baseType: !622, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1185, file: !610, line: 1186, baseType: !897, size: 128, align: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !609, file: !610, line: 1190, baseType: !1190, size: 64, offset: 12544)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !610, line: 53, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !609, file: !610, line: 1192, baseType: !1193, size: 128, offset: 12608)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !547, line: 64, size: 128, elements: !1194)
!1194 = !{!1195, !1288, !1289}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1193, file: !547, line: 65, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !455, line: 68, size: 512, align: 128, elements: !1198)
!1198 = !{!1199, !1200, !1280, !1287}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !455, line: 69, baseType: !66, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !455, line: 77, baseType: !1201, size: 320, offset: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !455, line: 77, size: 320, elements: !1202)
!1202 = !{!1203, !1212, !1217, !1245, !1253, !1259, !1272, !1279}
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !455, line: 78, baseType: !1204, size: 320)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !455, line: 78, size: 320, elements: !1205)
!1205 = !{!1206, !1207, !1210, !1211}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1204, file: !455, line: 84, baseType: !109, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1204, file: !455, line: 86, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !455, line: 26, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1204, file: !455, line: 87, baseType: !66, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1204, file: !455, line: 94, baseType: !66, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !455, line: 96, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !455, line: 96, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1213, file: !455, line: 101, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !61, line: 143, baseType: !125)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !455, line: 103, baseType: !1218, size: 320)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !455, line: 103, size: 320, elements: !1219)
!1219 = !{!1220, !1230, !1233, !1234}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !455, line: 104, baseType: !1221, size: 128)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !455, line: 104, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1221, file: !455, line: 105, baseType: !109, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !455, line: 106, baseType: !1225, size: 128)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !455, line: 106, size: 128, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1225, file: !455, line: 107, baseType: !1196, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1225, file: !455, line: 109, baseType: !70, size: 32, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1225, file: !455, line: 110, baseType: !70, size: 32, offset: 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1218, file: !455, line: 117, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !455, line: 117, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1218, file: !455, line: 119, baseType: !62, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !455, line: 120, baseType: !1235, size: 64, offset: 256)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !455, line: 120, size: 64, elements: !1236)
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1235, file: !455, line: 121, baseType: !62, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1235, file: !455, line: 122, baseType: !66, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !455, line: 123, baseType: !1240, size: 32)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1235, file: !455, line: 123, size: 32, elements: !1241)
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1240, file: !455, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1240, file: !455, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1240, file: !455, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !455, line: 130, baseType: !1246, size: 192)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !455, line: 130, size: 192, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1246, file: !455, line: 131, baseType: !66, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1246, file: !455, line: 134, baseType: !120, size: 8, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1246, file: !455, line: 135, baseType: !120, size: 8, offset: 72)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1246, file: !455, line: 136, baseType: !500, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1246, file: !455, line: 137, baseType: !7, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !455, line: 139, baseType: !1254, size: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !455, line: 139, size: 256, elements: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1254, file: !455, line: 140, baseType: !66, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1254, file: !455, line: 141, baseType: !500, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1254, file: !455, line: 143, baseType: !109, size: 128, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !455, line: 145, baseType: !1260, size: 256)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !455, line: 145, size: 256, elements: !1261)
!1261 = !{!1262, !1263, !1265, !1266, !1271}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1260, file: !455, line: 146, baseType: !66, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1260, file: !455, line: 147, baseType: !1264, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !447, line: 509, baseType: !1196)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1260, file: !455, line: 148, baseType: !66, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !455, line: 149, baseType: !1267, size: 64, offset: 192)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !455, line: 149, size: 64, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1267, file: !455, line: 150, baseType: !471, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1267, file: !455, line: 151, baseType: !500, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1260, file: !455, line: 156, baseType: !93, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !455, line: 159, baseType: !1273, size: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !455, line: 159, size: 128, elements: !1274)
!1274 = !{!1275, !1278}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1273, file: !455, line: 161, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !455, line: 161, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1273, file: !455, line: 162, baseType: !62, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1201, file: !455, line: 176, baseType: !897, size: 128, align: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !455, line: 179, baseType: !1281, size: 32, offset: 384)
!1281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !455, line: 179, size: 32, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1281, file: !455, line: 184, baseType: !500, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1281, file: !455, line: 192, baseType: !7, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1281, file: !455, line: 194, baseType: !7, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1281, file: !455, line: 195, baseType: !70, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1197, file: !455, line: 199, baseType: !500, size: 32, offset: 416)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1193, file: !547, line: 67, baseType: !64, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1193, file: !547, line: 68, baseType: !64, size: 32, offset: 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !609, file: !610, line: 1206, baseType: !70, size: 32, offset: 12736)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !609, file: !610, line: 1207, baseType: !70, size: 32, offset: 12768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !609, file: !610, line: 1209, baseType: !66, size: 64, offset: 12800)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !609, file: !610, line: 1219, baseType: !125, size: 64, offset: 12864)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !609, file: !610, line: 1220, baseType: !125, size: 64, offset: 12928)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !609, file: !610, line: 1317, baseType: !70, size: 32, offset: 12992)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !609, file: !610, line: 1319, baseType: !608, size: 64, offset: 13056)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !609, file: !610, line: 1322, baseType: !1298, size: 64, offset: 13120)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1300, line: 56, size: 512, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1308, !1309, !1310}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1299, file: !1300, line: 57, baseType: !1298, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1299, file: !1300, line: 58, baseType: !62, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1299, file: !1300, line: 59, baseType: !66, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1300, line: 60, baseType: !66, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1299, file: !1300, line: 61, baseType: !1307, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1299, file: !1300, line: 62, baseType: !7, size: 32, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1299, file: !1300, line: 63, baseType: !216, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1299, file: !1300, line: 64, baseType: !1311, size: 64, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !609, file: !610, line: 1326, baseType: !622, size: 32, offset: 13184)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !609, file: !610, line: 1342, baseType: !62, size: 64, offset: 13248)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !609, file: !610, line: 1343, baseType: !126, size: 64, offset: 13312)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !609, file: !610, line: 1344, baseType: !125, size: 64, offset: 13376)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !609, file: !610, line: 1345, baseType: !126, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !609, file: !610, line: 1346, baseType: !126, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !609, file: !610, line: 1347, baseType: !126, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !609, file: !610, line: 1348, baseType: !897, size: 128, align: 64, offset: 13504)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !609, file: !610, line: 1358, baseType: !1322, size: 34816, offset: 13824)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1323, line: 485, size: 34816, elements: !1324)
!1323 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1324 = !{!1325, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1354, !1355, !1356, !1357, !1358, !1359, !1362, !1363, !1364}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1322, file: !1323, line: 487, baseType: !1326, size: 192)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 192, elements: !374)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1328, line: 16, size: 64, elements: !1329)
!1328 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1327, file: !1328, line: 17, baseType: !592, size: 16)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1327, file: !1328, line: 18, baseType: !592, size: 16, offset: 16)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1327, file: !1328, line: 19, baseType: !592, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1327, file: !1328, line: 19, baseType: !592, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1327, file: !1328, line: 19, baseType: !592, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1327, file: !1328, line: 19, baseType: !592, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1327, file: !1328, line: 19, baseType: !592, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1327, file: !1328, line: 20, baseType: !592, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1327, file: !1328, line: 20, baseType: !592, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1327, file: !1328, line: 20, baseType: !592, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1327, file: !1328, line: 20, baseType: !592, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1327, file: !1328, line: 20, baseType: !592, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1327, file: !1328, line: 20, baseType: !592, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1322, file: !1323, line: 491, baseType: !66, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1322, file: !1323, line: 495, baseType: !413, size: 16, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1322, file: !1323, line: 496, baseType: !413, size: 16, offset: 272)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1322, file: !1323, line: 497, baseType: !413, size: 16, offset: 288)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1322, file: !1323, line: 498, baseType: !413, size: 16, offset: 304)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1322, file: !1323, line: 502, baseType: !66, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1322, file: !1323, line: 503, baseType: !66, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1322, file: !1323, line: 514, baseType: !1351, size: 256, offset: 448)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 256, elements: !551)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1323, line: 483, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1322, file: !1323, line: 516, baseType: !66, size: 64, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1322, file: !1323, line: 518, baseType: !66, size: 64, offset: 768)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1322, file: !1323, line: 520, baseType: !66, size: 64, offset: 832)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1322, file: !1323, line: 521, baseType: !66, size: 64, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1322, file: !1323, line: 522, baseType: !66, size: 64, offset: 960)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1322, file: !1323, line: 528, baseType: !1360, size: 64, offset: 1024)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1323, line: 10, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1322, file: !1323, line: 535, baseType: !66, size: 64, offset: 1088)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1322, file: !1323, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1322, file: !1323, line: 540, baseType: !1365, size: 33280, offset: 1536)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1366, line: 317, size: 33280, elements: !1367)
!1366 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1365, file: !1366, line: 330, baseType: !7, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1365, file: !1366, line: 337, baseType: !66, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1365, file: !1366, line: 348, baseType: !1371, size: 32768, offset: 512)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1366, line: 304, size: 32768, elements: !1372)
!1372 = !{!1373, !1388, !1427, !1477, !1494}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1371, file: !1366, line: 305, baseType: !1374, size: 896)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1366, line: 12, size: 896, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1387}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1374, file: !1366, line: 13, baseType: !75, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1374, file: !1366, line: 14, baseType: !75, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1374, file: !1366, line: 15, baseType: !75, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1374, file: !1366, line: 16, baseType: !75, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1374, file: !1366, line: 17, baseType: !75, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1374, file: !1366, line: 18, baseType: !75, size: 32, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1374, file: !1366, line: 19, baseType: !75, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1374, file: !1366, line: 22, baseType: !1384, size: 640, offset: 224)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 20)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1374, file: !1366, line: 25, baseType: !75, size: 32, offset: 864)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1371, file: !1366, line: 306, baseType: !1389, size: 4096, align: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1366, line: 34, size: 4096, align: 128, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1410, !1411, !1412, !1416, !1418, !1422}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1389, file: !1366, line: 35, baseType: !592, size: 16)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1389, file: !1366, line: 36, baseType: !592, size: 16, offset: 16)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1389, file: !1366, line: 37, baseType: !592, size: 16, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1389, file: !1366, line: 38, baseType: !592, size: 16, offset: 48)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1366, line: 39, baseType: !1396, size: 128, offset: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1366, line: 39, size: 128, elements: !1397)
!1397 = !{!1398, !1403}
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1366, line: 40, baseType: !1399, size: 128)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !1366, line: 40, size: 128, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1399, file: !1366, line: 41, baseType: !125, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1399, file: !1366, line: 42, baseType: !125, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1366, line: 44, baseType: !1404, size: 128)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !1366, line: 44, size: 128, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1404, file: !1366, line: 45, baseType: !75, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1404, file: !1366, line: 46, baseType: !75, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1404, file: !1366, line: 47, baseType: !75, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1404, file: !1366, line: 48, baseType: !75, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1389, file: !1366, line: 51, baseType: !75, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1389, file: !1366, line: 52, baseType: !75, size: 32, offset: 224)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1389, file: !1366, line: 55, baseType: !1413, size: 1024, offset: 256)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 1024, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1389, file: !1366, line: 58, baseType: !1417, size: 2048, offset: 1280)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 2048, elements: !378)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1389, file: !1366, line: 60, baseType: !1419, size: 384, offset: 3328)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 384, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 12)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1366, line: 62, baseType: !1423, size: 384, offset: 3712)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1366, line: 62, size: 384, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1423, file: !1366, line: 63, baseType: !1419, size: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1423, file: !1366, line: 64, baseType: !1419, size: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1371, file: !1366, line: 307, baseType: !1428, size: 1088)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1366, line: 79, size: 1088, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1476}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1428, file: !1366, line: 80, baseType: !75, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1428, file: !1366, line: 81, baseType: !75, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1428, file: !1366, line: 82, baseType: !75, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1428, file: !1366, line: 83, baseType: !75, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1428, file: !1366, line: 84, baseType: !75, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1428, file: !1366, line: 85, baseType: !75, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1428, file: !1366, line: 86, baseType: !75, size: 32, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1428, file: !1366, line: 88, baseType: !1384, size: 640, offset: 224)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1428, file: !1366, line: 89, baseType: !249, size: 8, offset: 864)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1428, file: !1366, line: 90, baseType: !249, size: 8, offset: 872)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1428, file: !1366, line: 91, baseType: !249, size: 8, offset: 880)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1428, file: !1366, line: 92, baseType: !249, size: 8, offset: 888)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1428, file: !1366, line: 93, baseType: !249, size: 8, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1428, file: !1366, line: 94, baseType: !249, size: 8, offset: 904)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1428, file: !1366, line: 95, baseType: !1445, size: 64, offset: 960)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1447, line: 11, size: 128, elements: !1448)
!1447 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1446, file: !1447, line: 12, baseType: !67, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1446, file: !1447, line: 13, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1453, line: 56, size: 1344, elements: !1454)
!1453 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1452, file: !1453, line: 61, baseType: !66, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1452, file: !1453, line: 62, baseType: !66, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1452, file: !1453, line: 63, baseType: !66, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1452, file: !1453, line: 64, baseType: !66, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1452, file: !1453, line: 65, baseType: !66, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1452, file: !1453, line: 66, baseType: !66, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1452, file: !1453, line: 68, baseType: !66, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1452, file: !1453, line: 69, baseType: !66, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1452, file: !1453, line: 70, baseType: !66, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1452, file: !1453, line: 71, baseType: !66, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1452, file: !1453, line: 72, baseType: !66, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1452, file: !1453, line: 73, baseType: !66, size: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1452, file: !1453, line: 74, baseType: !66, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1452, file: !1453, line: 75, baseType: !66, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1452, file: !1453, line: 76, baseType: !66, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1452, file: !1453, line: 81, baseType: !66, size: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1452, file: !1453, line: 83, baseType: !66, size: 64, offset: 1024)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1452, file: !1453, line: 84, baseType: !66, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1452, file: !1453, line: 85, baseType: !66, size: 64, offset: 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1452, file: !1453, line: 86, baseType: !66, size: 64, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1452, file: !1453, line: 87, baseType: !66, size: 64, offset: 1280)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1428, file: !1366, line: 96, baseType: !75, size: 32, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1371, file: !1366, line: 308, baseType: !1478, size: 4608, align: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1366, line: 289, size: 4608, align: 512, elements: !1479)
!1479 = !{!1480, !1481, !1490}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1478, file: !1366, line: 290, baseType: !1389, size: 4096, align: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1478, file: !1366, line: 291, baseType: !1482, size: 512, offset: 4096)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1366, line: 268, size: 512, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1482, file: !1366, line: 269, baseType: !125, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1482, file: !1366, line: 270, baseType: !125, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1482, file: !1366, line: 271, baseType: !1487, size: 384, offset: 128)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 384, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 6)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1478, file: !1366, line: 292, baseType: !1491, offset: 4608)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 0)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1371, file: !1366, line: 309, baseType: !1495, size: 32768)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32768, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 4096)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !455, line: 378, baseType: !1499, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !601, file: !455, line: 384, baseType: !919, size: 192, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !475, file: !455, line: 500, baseType: !93, offset: 6656)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !475, file: !455, line: 501, baseType: !1503, size: 64, offset: 6656)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !455, line: 387, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !475, file: !455, line: 516, baseType: !1506, size: 64, offset: 6720)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1508, line: 18, flags: DIFlagFwdDecl)
!1508 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !475, file: !455, line: 519, baseType: !445, size: 64, offset: 6784)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !475, file: !455, line: 521, baseType: !1511, size: 64, offset: 6848)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !455, line: 521, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !475, file: !455, line: 545, baseType: !500, size: 32, offset: 6912)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !475, file: !455, line: 548, baseType: !306, size: 8, offset: 6944)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !475, file: !455, line: 550, baseType: !1516, offset: 6952)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1517, line: 142, elements: !107)
!1517 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !475, file: !455, line: 554, baseType: !1519, size: 256, offset: 6976)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1520, line: 102, size: 256, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !{!1522, !1523, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1519, file: !1520, line: 103, baseType: !83, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1519, file: !1520, line: 104, baseType: !109, size: 128, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1519, file: !1520, line: 105, baseType: !1525, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1520, line: 21, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1529}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !475, file: !455, line: 557, baseType: !75, size: 32, offset: 7232)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !472, file: !455, line: 565, baseType: !1532, offset: 7296)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: -1)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !454, file: !455, line: 333, baseType: !1536, size: 64, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !447, line: 284, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !447, line: 284, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1537, file: !447, line: 284, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !498, line: 19, baseType: !66)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !454, file: !455, line: 334, baseType: !66, size: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !454, file: !455, line: 343, baseType: !1543, size: 256, offset: 704)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !455, line: 340, size: 256, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1543, file: !455, line: 341, baseType: !462, size: 192, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1543, file: !455, line: 342, baseType: !66, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !454, file: !455, line: 351, baseType: !109, size: 128, offset: 960)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !454, file: !455, line: 353, baseType: !1549, size: 64, offset: 1088)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !455, line: 353, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !454, file: !455, line: 356, baseType: !1552, size: 64, offset: 1152)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !455, line: 356, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !454, file: !455, line: 359, baseType: !66, size: 64, offset: 1216)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !454, file: !455, line: 361, baseType: !445, size: 64, offset: 1280)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !454, file: !455, line: 362, baseType: !62, size: 64, offset: 1344)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !454, file: !455, line: 365, baseType: !83, size: 64, offset: 1408)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !454, file: !455, line: 373, baseType: !1560, offset: 1472)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !455, line: 296, elements: !107)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !424, file: !398, line: 90, baseType: !419, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !424, file: !398, line: 91, baseType: !1563, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !388, file: !335, line: 143, baseType: !1565, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1568, !340}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1571)
!1571 = !{!1572, !1573, !1577, !1581, !1587, !1591}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1570, file: !18, line: 40, baseType: !17, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1570, file: !18, line: 41, baseType: !1574, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!306}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1570, file: !18, line: 42, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!62}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1570, file: !18, line: 43, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1311, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1570, file: !18, line: 44, baseType: !1588, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1311}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1570, file: !18, line: 45, baseType: !1592, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !62}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !388, file: !335, line: 144, baseType: !1596, size: 64, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1311, !340}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !388, file: !335, line: 145, baseType: !1600, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !340, !1603, !1609}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1508, line: 23, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1508, line: 21, size: 32, elements: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1605, file: !1508, line: 22, baseType: !1608, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !61, line: 32, baseType: !1079)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1508, line: 28, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1508, line: 26, size: 32, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1611, file: !1508, line: 27, baseType: !1614, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !61, line: 33, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !208, line: 50, baseType: !7)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !334, file: !335, line: 70, baseType: !1617, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1619, line: 123, size: 1024, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1762, !1763, !1764, !1765, !1766}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1618, file: !1619, line: 124, baseType: !500, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1618, file: !1619, line: 125, baseType: !500, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1618, file: !1619, line: 135, baseType: !1617, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1618, file: !1619, line: 136, baseType: !139, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1618, file: !1619, line: 138, baseType: !462, size: 192, align: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1618, file: !1619, line: 140, baseType: !1311, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1618, file: !1619, line: 141, baseType: !7, size: 32, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !1619, line: 142, baseType: !1629, size: 256, offset: 512)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1618, file: !1619, line: 142, size: 256, elements: !1630)
!1630 = !{!1631, !1685, !1689}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1629, file: !1619, line: 143, baseType: !1632, size: 192)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1619, line: 91, size: 192, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1632, file: !1619, line: 92, baseType: !66, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1632, file: !1619, line: 94, baseType: !479, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1632, file: !1619, line: 100, baseType: !1637, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1619, line: 180, size: 704, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1655, !1656, !1657, !1683, !1684}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1638, file: !1619, line: 182, baseType: !1617, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1638, file: !1619, line: 183, baseType: !7, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1638, file: !1619, line: 186, baseType: !1643, size: 192, offset: 128)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1644, line: 19, size: 192, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !{!1646, !1653, !1654}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1643, file: !1644, line: 20, baseType: !1647, size: 128)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1648, line: 292, size: 128, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1647, file: !1648, line: 293, baseType: !93)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1647, file: !1648, line: 295, baseType: !60, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1647, file: !1648, line: 296, baseType: !62, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1643, file: !1644, line: 21, baseType: !7, size: 32, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1643, file: !1644, line: 22, baseType: !7, size: 32, offset: 160)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1638, file: !1619, line: 187, baseType: !75, size: 32, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1638, file: !1619, line: 188, baseType: !75, size: 32, offset: 352)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1638, file: !1619, line: 189, baseType: !1658, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1619, line: 168, size: 320, elements: !1660)
!1660 = !{!1661, !1667, !1671, !1675, !1679}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1659, file: !1619, line: 169, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!70, !1665, !1637}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !447, line: 539, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1659, file: !1619, line: 171, baseType: !1668, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!70, !1617, !139, !412}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1659, file: !1619, line: 173, baseType: !1672, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!70, !1617}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1659, file: !1619, line: 174, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!70, !1617, !1617, !139}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1659, file: !1619, line: 176, baseType: !1680, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!70, !1665, !1617, !1637}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1638, file: !1619, line: 192, baseType: !109, size: 128, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1638, file: !1619, line: 194, baseType: !890, size: 128, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1629, file: !1619, line: 144, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1619, line: 103, size: 64, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1686, file: !1619, line: 104, baseType: !1617, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1629, file: !1619, line: 145, baseType: !1690, size: 256)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1619, line: 107, size: 256, elements: !1691)
!1691 = !{!1692, !1757, !1760, !1761}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1690, file: !1619, line: 108, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1619, line: 217, size: 768, elements: !1696)
!1696 = !{!1697, !1717, !1721, !1725, !1730, !1734, !1738, !1742, !1743, !1744, !1745, !1753}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1695, file: !1619, line: 222, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!70, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1619, line: 197, size: 1088, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1702, file: !1619, line: 199, baseType: !1617, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1702, file: !1619, line: 200, baseType: !445, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1702, file: !1619, line: 201, baseType: !1665, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1702, file: !1619, line: 202, baseType: !62, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1702, file: !1619, line: 205, baseType: !79, size: 192, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1702, file: !1619, line: 206, baseType: !79, size: 192, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1702, file: !1619, line: 207, baseType: !70, size: 32, offset: 640)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1702, file: !1619, line: 208, baseType: !109, size: 128, offset: 704)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1702, file: !1619, line: 209, baseType: !373, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1702, file: !1619, line: 211, baseType: !209, size: 64, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1702, file: !1619, line: 212, baseType: !306, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1702, file: !1619, line: 213, baseType: !306, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1702, file: !1619, line: 214, baseType: !1552, size: 64, offset: 1024)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1695, file: !1619, line: 223, baseType: !1718, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1701}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1695, file: !1619, line: 236, baseType: !1722, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!70, !1665, !62}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1695, file: !1619, line: 238, baseType: !1726, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!62, !1665, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1695, file: !1619, line: 239, baseType: !1731, size: 64, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!62, !1665, !62, !1729}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1695, file: !1619, line: 240, baseType: !1735, size: 64, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1665, !62}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1695, file: !1619, line: 242, baseType: !1739, size: 64, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!404, !1701, !373, !209, !206}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1695, file: !1619, line: 252, baseType: !209, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1695, file: !1619, line: 259, baseType: !306, size: 8, offset: 512)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1695, file: !1619, line: 260, baseType: !1739, size: 64, offset: 576)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1695, file: !1619, line: 263, baseType: !1746, size: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1749, !1701, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1750, line: 52, baseType: !7)
!1750 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1619, line: 27, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1695, file: !1619, line: 266, baseType: !1754, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!70, !1701, !453}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1690, file: !1619, line: 109, baseType: !1758, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1619, line: 31, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1690, file: !1619, line: 110, baseType: !206, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1690, file: !1619, line: 111, baseType: !1617, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1618, file: !1619, line: 148, baseType: !62, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1618, file: !1619, line: 154, baseType: !125, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1618, file: !1619, line: 156, baseType: !413, size: 16, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1618, file: !1619, line: 157, baseType: !412, size: 16, offset: 912)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1618, file: !1619, line: 158, baseType: !1767, size: 64, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1619, line: 32, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !334, file: !335, line: 71, baseType: !1770, size: 32, offset: 448)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1771, line: 19, size: 32, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1770, file: !1771, line: 20, baseType: !622, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !334, file: !335, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !334, file: !335, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !334, file: !335, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !334, file: !335, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !334, file: !335, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !331, file: !30, line: 463, baseType: !1780, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !331, file: !30, line: 465, baseType: !1782, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !331, file: !30, line: 467, baseType: !139, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !331, file: !30, line: 468, baseType: !1786, size: 64, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1796, !1801, !1805}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1788, file: !30, line: 88, baseType: !139, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1788, file: !30, line: 89, baseType: !421, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1788, file: !30, line: 90, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!70, !1780, !368}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1788, file: !30, line: 91, baseType: !1797, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!373, !1780, !1800, !1603, !1609}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1788, file: !30, line: 93, baseType: !1802, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1780}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1788, file: !30, line: 95, baseType: !1806, size: 64, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1809)
!1809 = !{!1810, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1808, file: !37, line: 279, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!70, !1780}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1808, file: !37, line: 280, baseType: !1802, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1808, file: !37, line: 281, baseType: !1811, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1808, file: !37, line: 282, baseType: !1811, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1808, file: !37, line: 283, baseType: !1811, size: 64, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1808, file: !37, line: 284, baseType: !1811, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1808, file: !37, line: 285, baseType: !1811, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1808, file: !37, line: 286, baseType: !1811, size: 64, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1808, file: !37, line: 287, baseType: !1811, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1808, file: !37, line: 288, baseType: !1811, size: 64, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1808, file: !37, line: 289, baseType: !1811, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1808, file: !37, line: 290, baseType: !1811, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1808, file: !37, line: 291, baseType: !1811, size: 64, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1808, file: !37, line: 292, baseType: !1811, size: 64, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1808, file: !37, line: 293, baseType: !1811, size: 64, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1808, file: !37, line: 294, baseType: !1811, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1808, file: !37, line: 295, baseType: !1811, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1808, file: !37, line: 296, baseType: !1811, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1808, file: !37, line: 297, baseType: !1811, size: 64, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1808, file: !37, line: 298, baseType: !1811, size: 64, offset: 1216)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1808, file: !37, line: 299, baseType: !1811, size: 64, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1808, file: !37, line: 300, baseType: !1811, size: 64, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1808, file: !37, line: 301, baseType: !1811, size: 64, offset: 1408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !331, file: !30, line: 470, baseType: !1837, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1839, line: 82, size: 1408, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1923, !1926, !1929}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1838, file: !1839, line: 83, baseType: !139, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1838, file: !1839, line: 84, baseType: !139, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1838, file: !1839, line: 85, baseType: !1780, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1838, file: !1839, line: 86, baseType: !421, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1838, file: !1839, line: 87, baseType: !421, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1838, file: !1839, line: 88, baseType: !421, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1838, file: !1839, line: 90, baseType: !1848, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!70, !1780, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1874, !1887, !1888, !1889, !1890, !1891, !1899, !1900, !1901, !1902, !1903, !1904}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1852, file: !24, line: 96, baseType: !139, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1852, file: !24, line: 97, baseType: !1837, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1852, file: !24, line: 99, baseType: !57, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1852, file: !24, line: 100, baseType: !139, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1852, file: !24, line: 102, baseType: !306, size: 8, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1852, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1852, file: !24, line: 105, baseType: !1861, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1863)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1864, line: 262, size: 1600, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !{!1866, !1868, !1869, !1873}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1863, file: !1864, line: 263, baseType: !1867, size: 256)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !1414)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1863, file: !1864, line: 264, baseType: !1867, size: 256, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1863, file: !1864, line: 265, baseType: !1870, size: 1024, offset: 512)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1024, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1863, file: !1864, line: 266, baseType: !1311, size: 64, offset: 1536)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1852, file: !24, line: 106, baseType: !1875, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1864, line: 210, size: 256, elements: !1878)
!1878 = !{!1879, !1883, !1885, !1886}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1877, file: !1864, line: 211, baseType: !1880, size: 72)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 72, elements: !1881)
!1881 = !{!1882}
!1882 = !DISubrange(count: 9)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1877, file: !1864, line: 212, baseType: !1884, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1864, line: 14, baseType: !66)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1877, file: !1864, line: 213, baseType: !64, size: 32, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1877, file: !1864, line: 214, baseType: !64, size: 32, offset: 224)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1852, file: !24, line: 108, baseType: !1811, size: 64, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1852, file: !24, line: 109, baseType: !1802, size: 64, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1852, file: !24, line: 110, baseType: !1811, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1852, file: !24, line: 111, baseType: !1802, size: 64, offset: 640)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1852, file: !24, line: 112, baseType: !1892, size: 64, offset: 704)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!70, !1780, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1896, file: !37, line: 51, baseType: !70, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1852, file: !24, line: 113, baseType: !1811, size: 64, offset: 768)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1852, file: !24, line: 114, baseType: !421, size: 64, offset: 832)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1852, file: !24, line: 115, baseType: !421, size: 64, offset: 896)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1852, file: !24, line: 117, baseType: !1806, size: 64, offset: 960)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1852, file: !24, line: 118, baseType: !1802, size: 64, offset: 1024)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1852, file: !24, line: 120, baseType: !1905, size: 64, offset: 1088)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1838, file: !1839, line: 91, baseType: !1793, size: 64, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1838, file: !1839, line: 92, baseType: !1811, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1838, file: !1839, line: 93, baseType: !1802, size: 64, offset: 576)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1838, file: !1839, line: 94, baseType: !1811, size: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1838, file: !1839, line: 95, baseType: !1802, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1838, file: !1839, line: 97, baseType: !1811, size: 64, offset: 768)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1838, file: !1839, line: 98, baseType: !1811, size: 64, offset: 832)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1838, file: !1839, line: 100, baseType: !1892, size: 64, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1838, file: !1839, line: 101, baseType: !1811, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1838, file: !1839, line: 103, baseType: !1811, size: 64, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1838, file: !1839, line: 105, baseType: !1811, size: 64, offset: 1088)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1838, file: !1839, line: 107, baseType: !1806, size: 64, offset: 1152)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1838, file: !1839, line: 109, baseType: !1920, size: 64, offset: 1216)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1839, line: 109, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1838, file: !1839, line: 111, baseType: !1924, size: 64, offset: 1280)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1839, line: 111, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1838, file: !1839, line: 112, baseType: !1927, offset: 1344)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1928, line: 187, elements: !107)
!1928 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1838, file: !1839, line: 114, baseType: !306, size: 8, offset: 1344)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !331, file: !30, line: 471, baseType: !1851, size: 64, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !331, file: !30, line: 473, baseType: !62, size: 64, offset: 896)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !331, file: !30, line: 475, baseType: !62, size: 64, offset: 960)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !331, file: !30, line: 480, baseType: !79, size: 192, offset: 1024)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !331, file: !30, line: 484, baseType: !1935, size: 576, offset: 1216)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1936)
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1935, file: !30, line: 362, baseType: !109, size: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1935, file: !30, line: 363, baseType: !109, size: 128, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1935, file: !30, line: 364, baseType: !109, size: 128, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1935, file: !30, line: 365, baseType: !109, size: 128, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1935, file: !30, line: 366, baseType: !306, size: 8, offset: 512)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1935, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !331, file: !30, line: 485, baseType: !1944, size: 2304, offset: 1792)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2041, !2045}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1944, file: !37, line: 566, baseType: !1895, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1944, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1944, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1944, file: !37, line: 569, baseType: !306, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1944, file: !37, line: 570, baseType: !306, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1944, file: !37, line: 571, baseType: !306, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1944, file: !37, line: 572, baseType: !306, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1944, file: !37, line: 573, baseType: !306, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1944, file: !37, line: 574, baseType: !306, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1944, file: !37, line: 575, baseType: !306, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1944, file: !37, line: 576, baseType: !306, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1944, file: !37, line: 577, baseType: !75, size: 32, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1944, file: !37, line: 578, baseType: !93, offset: 96)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1944, file: !37, line: 580, baseType: !109, size: 128, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1944, file: !37, line: 581, baseType: !919, size: 192, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1944, file: !37, line: 582, baseType: !1962, size: 64, offset: 448)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1964, line: 43, size: 1472, elements: !1965)
!1964 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1973, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1963, file: !1964, line: 44, baseType: !139, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1963, file: !1964, line: 45, baseType: !70, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1963, file: !1964, line: 46, baseType: !109, size: 128, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !1964, line: 47, baseType: !93, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1963, file: !1964, line: 48, baseType: !1971, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1963, file: !1964, line: 49, baseType: !1974, size: 320, offset: 320)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1975, line: 11, size: 320, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1976 = !{!1977, !1978, !1979, !1984}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1974, file: !1975, line: 16, baseType: !883, size: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1974, file: !1975, line: 17, baseType: !66, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1974, file: !1975, line: 18, baseType: !1980, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1974, file: !1975, line: 19, baseType: !75, size: 32, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1963, file: !1964, line: 50, baseType: !66, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1963, file: !1964, line: 51, baseType: !692, size: 64, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1963, file: !1964, line: 52, baseType: !692, size: 64, offset: 768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1963, file: !1964, line: 53, baseType: !692, size: 64, offset: 832)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1963, file: !1964, line: 54, baseType: !692, size: 64, offset: 896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1963, file: !1964, line: 55, baseType: !692, size: 64, offset: 960)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1963, file: !1964, line: 56, baseType: !66, size: 64, offset: 1024)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1963, file: !1964, line: 57, baseType: !66, size: 64, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1963, file: !1964, line: 58, baseType: !66, size: 64, offset: 1152)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1963, file: !1964, line: 59, baseType: !66, size: 64, offset: 1216)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1963, file: !1964, line: 60, baseType: !66, size: 64, offset: 1280)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1963, file: !1964, line: 61, baseType: !1780, size: 64, offset: 1344)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1963, file: !1964, line: 62, baseType: !306, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1963, file: !1964, line: 63, baseType: !306, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1944, file: !37, line: 583, baseType: !306, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1944, file: !37, line: 584, baseType: !306, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1944, file: !37, line: 585, baseType: !306, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1944, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1944, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1944, file: !37, line: 592, baseType: !684, size: 512, offset: 576)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1944, file: !37, line: 593, baseType: !125, size: 64, offset: 1088)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1944, file: !37, line: 594, baseType: !1519, size: 256, offset: 1152)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1944, file: !37, line: 595, baseType: !890, size: 128, offset: 1408)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1944, file: !37, line: 596, baseType: !1971, size: 64, offset: 1536)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1944, file: !37, line: 597, baseType: !500, size: 32, offset: 1600)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1944, file: !37, line: 598, baseType: !500, size: 32, offset: 1632)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1944, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1944, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1944, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1944, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1944, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1944, file: !37, line: 604, baseType: !306, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1944, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1944, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1944, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1944, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1944, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1944, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1944, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1944, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1944, file: !37, line: 613, baseType: !70, size: 32, offset: 1792)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1944, file: !37, line: 614, baseType: !70, size: 32, offset: 1824)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1944, file: !37, line: 615, baseType: !125, size: 64, offset: 1856)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1944, file: !37, line: 616, baseType: !125, size: 64, offset: 1920)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1944, file: !37, line: 617, baseType: !125, size: 64, offset: 1984)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1944, file: !37, line: 618, baseType: !125, size: 64, offset: 2048)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1944, file: !37, line: 620, baseType: !2032, size: 64, offset: 2112)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2033, file: !37, line: 537, baseType: !93)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2033, file: !37, line: 538, baseType: !7, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2033, file: !37, line: 540, baseType: !109, size: 128, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2033, file: !37, line: 543, baseType: !2039, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1944, file: !37, line: 621, baseType: !2042, size: 64, offset: 2176)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !1780, !843}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1944, file: !37, line: 622, baseType: !2046, size: 64, offset: 2240)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !331, file: !30, line: 486, baseType: !2049, size: 64, offset: 4096)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2058, !2059, !2060}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2050, file: !37, line: 643, baseType: !1808, size: 1472)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2050, file: !37, line: 644, baseType: !1811, size: 64, offset: 1472)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2050, file: !37, line: 645, baseType: !2055, size: 64, offset: 1536)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !1780, !306}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2050, file: !37, line: 646, baseType: !1811, size: 64, offset: 1600)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2050, file: !37, line: 647, baseType: !1802, size: 64, offset: 1664)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2050, file: !37, line: 648, baseType: !1802, size: 64, offset: 1728)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !331, file: !30, line: 493, baseType: !2062, size: 64, offset: 4160)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !331, file: !30, line: 499, baseType: !109, size: 128, offset: 4224)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !331, file: !30, line: 502, baseType: !2066, size: 64, offset: 4352)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !331, file: !30, line: 504, baseType: !2070, size: 64, offset: 4416)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !331, file: !30, line: 505, baseType: !125, size: 64, offset: 4480)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !331, file: !30, line: 510, baseType: !125, size: 64, offset: 4544)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !331, file: !30, line: 511, baseType: !2074, size: 64, offset: 4608)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2076)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !331, file: !30, line: 513, baseType: !2078, size: 64, offset: 4672)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2079, file: !30, line: 293, baseType: !7, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2079, file: !30, line: 294, baseType: !66, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !331, file: !30, line: 515, baseType: !109, size: 128, offset: 4736)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !331, file: !30, line: 526, baseType: !2085, offset: 4864)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2086, line: 5, elements: !107)
!2086 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !331, file: !30, line: 528, baseType: !2088, size: 64, offset: 4864)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2090, line: 51, size: 1344, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2091 = !{!2092, !2093, !2095, !2096, !2186, !2195, !2196, !2197, !2198, !2199, !2200, !2201}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2089, file: !2090, line: 52, baseType: !139, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2089, file: !2090, line: 53, baseType: !2094, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2090, line: 28, baseType: !75)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2089, file: !2090, line: 54, baseType: !139, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2089, file: !2090, line: 55, baseType: !2097, size: 192, offset: 192)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2098, line: 17, size: 192, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100, !2102, !2185}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2097, file: !2098, line: 18, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2097, file: !2098, line: 19, baseType: !2103, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2098, line: 110, size: 1152, elements: !2106)
!2106 = !{!2107, !2111, !2115, !2121, !2127, !2131, !2135, !2140, !2144, !2145, !2149, !2153, !2157, !2168, !2169, !2170, !2171, !2181}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2105, file: !2098, line: 111, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2101, !2101}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2105, file: !2098, line: 112, baseType: !2112, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !2101}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2105, file: !2098, line: 113, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!306, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2097)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2105, file: !2098, line: 114, baseType: !2122, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!1311, !2119, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2105, file: !2098, line: 116, baseType: !2128, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!306, !2119, !139}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2105, file: !2098, line: 118, baseType: !2132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!70, !2119, !139, !7, !62, !209}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2105, file: !2098, line: 123, baseType: !2136, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!70, !2119, !139, !2139, !209}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2105, file: !2098, line: 126, baseType: !2141, size: 64, offset: 448)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!139, !2119}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2105, file: !2098, line: 127, baseType: !2141, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2105, file: !2098, line: 128, baseType: !2146, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!2101, !2119}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2105, file: !2098, line: 130, baseType: !2150, size: 64, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2101, !2119, !2101}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2105, file: !2098, line: 133, baseType: !2154, size: 64, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!2101, !2119, !139}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2105, file: !2098, line: 135, baseType: !2158, size: 64, offset: 768)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!70, !2119, !139, !139, !7, !7, !2161}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2098, line: 43, size: 640, elements: !2163)
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2162, file: !2098, line: 44, baseType: !2101, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2162, file: !2098, line: 45, baseType: !7, size: 32, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2162, file: !2098, line: 46, baseType: !2167, size: 512, offset: 128)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 512, elements: !722)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2105, file: !2098, line: 140, baseType: !2150, size: 64, offset: 832)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2105, file: !2098, line: 143, baseType: !2146, size: 64, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2105, file: !2098, line: 145, baseType: !2108, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2105, file: !2098, line: 146, baseType: !2172, size: 64, offset: 1024)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!70, !2119, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2098, line: 29, size: 128, elements: !2177)
!2177 = !{!2178, !2179, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2176, file: !2098, line: 30, baseType: !7, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2176, file: !2098, line: 31, baseType: !7, size: 32, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2176, file: !2098, line: 32, baseType: !2119, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2105, file: !2098, line: 148, baseType: !2182, size: 64, offset: 1088)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!70, !2119, !1780}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2097, file: !2098, line: 20, baseType: !1780, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2089, file: !2090, line: 57, baseType: !2187, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2090, line: 31, size: 704, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2188, file: !2090, line: 32, baseType: !373, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2188, file: !2090, line: 33, baseType: !70, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2188, file: !2090, line: 34, baseType: !62, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2188, file: !2090, line: 35, baseType: !2187, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2188, file: !2090, line: 43, baseType: !436, size: 448, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2089, file: !2090, line: 58, baseType: !2187, size: 64, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2089, file: !2090, line: 59, baseType: !2088, size: 64, offset: 512)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2089, file: !2090, line: 60, baseType: !2088, size: 64, offset: 576)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2089, file: !2090, line: 61, baseType: !2088, size: 64, offset: 640)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2089, file: !2090, line: 63, baseType: !334, size: 512, offset: 704)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2089, file: !2090, line: 65, baseType: !66, size: 64, offset: 1216)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2089, file: !2090, line: 66, baseType: !62, size: 64, offset: 1280)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !331, file: !30, line: 529, baseType: !2101, size: 64, offset: 4928)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !331, file: !30, line: 534, baseType: !2204, size: 32, offset: 4992)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !61, line: 16, baseType: !2205)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !61, line: 13, baseType: !75)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !331, file: !30, line: 535, baseType: !75, size: 32, offset: 5024)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !331, file: !30, line: 537, baseType: !93, offset: 5056)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !331, file: !30, line: 538, baseType: !109, size: 128, offset: 5056)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !331, file: !30, line: 540, baseType: !2210, size: 64, offset: 5184)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2212, line: 54, size: 960, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2220, !2224, !2228, !2229, !2230, !2231, !2235, !2239, !2240}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2211, file: !2212, line: 55, baseType: !139, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2211, file: !2212, line: 56, baseType: !57, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2211, file: !2212, line: 58, baseType: !421, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2211, file: !2212, line: 59, baseType: !421, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2211, file: !2212, line: 60, baseType: !340, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2211, file: !2212, line: 62, baseType: !1793, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2211, file: !2212, line: 63, baseType: !2221, size: 64, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!373, !1780, !1800}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2211, file: !2212, line: 65, baseType: !2225, size: 64, offset: 448)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !2210}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2211, file: !2212, line: 66, baseType: !1802, size: 64, offset: 512)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2211, file: !2212, line: 68, baseType: !1811, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2211, file: !2212, line: 70, baseType: !1568, size: 64, offset: 640)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2211, file: !2212, line: 71, baseType: !2232, size: 64, offset: 704)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!1311, !1780}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2211, file: !2212, line: 73, baseType: !2236, size: 64, offset: 768)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !1780, !1603, !1609}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2211, file: !2212, line: 75, baseType: !1806, size: 64, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2211, file: !2212, line: 77, baseType: !1924, size: 64, offset: 896)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !331, file: !30, line: 541, baseType: !421, size: 64, offset: 5248)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !331, file: !30, line: 543, baseType: !1802, size: 64, offset: 5312)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !331, file: !30, line: 544, baseType: !2244, size: 64, offset: 5376)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !331, file: !30, line: 545, baseType: !2247, size: 64, offset: 5440)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !331, file: !30, line: 547, baseType: !306, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !331, file: !30, line: 548, baseType: !306, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !331, file: !30, line: 549, baseType: !306, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !331, file: !30, line: 550, baseType: !306, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !115, file: !116, line: 376, baseType: !70, size: 32, offset: 8832)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !115, file: !116, line: 377, baseType: !2255, size: 192, offset: 8896)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !116, line: 191, size: 192, elements: !2256)
!2256 = !{!2257, !2260, !2261}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2255, file: !116, line: 192, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1619, line: 21, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2255, file: !116, line: 194, baseType: !139, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2255, file: !116, line: 195, baseType: !139, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !115, file: !116, line: 378, baseType: !2263, size: 64, offset: 9088)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2265, line: 16, flags: DIFlagFwdDecl)
!2265 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !116, line: 386, baseType: !152, size: 64, offset: 9152)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !115, file: !116, line: 389, baseType: !109, size: 128, offset: 9216)
!2268 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !116, line: 391, baseType: !2269, size: 320, offset: 9344)
!2269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !116, line: 391, size: 320, elements: !2270)
!2270 = !{!2271, !2278}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2269, file: !116, line: 392, baseType: !2272, size: 320)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !116, line: 211, size: 320, elements: !2273)
!2273 = !{!2274, !2275, !2276, !2277}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2272, file: !116, line: 212, baseType: !109, size: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2272, file: !116, line: 213, baseType: !125, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2272, file: !116, line: 214, baseType: !125, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2272, file: !116, line: 215, baseType: !75, size: 32, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2269, file: !116, line: 393, baseType: !2279, size: 256)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !116, line: 230, size: 256, elements: !2280)
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2279, file: !116, line: 231, baseType: !79, size: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2279, file: !116, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "num_parts", scope: !72, file: !3, line: 200, baseType: !75, size: 32, offset: 9920)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !72, file: !3, line: 201, baseType: !2285, size: 64, offset: 9984)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_partition", file: !2287, line: 46, size: 384, elements: !2288)
!2287 = !DIFile(filename: "./include/linux/mtd/partitions.h", directory: "/home/lizy2001/genbc/linux")
!2288 = !{!2289, !2290, !2293, !2294, !2295, !2296, !2297}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2286, file: !2287, line: 47, baseType: !139, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2286, file: !2287, line: 48, baseType: !2291, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2286, file: !2287, line: 49, baseType: !124, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2286, file: !2287, line: 50, baseType: !124, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "mask_flags", scope: !2286, file: !2287, line: 51, baseType: !122, size: 32, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "add_flags", scope: !2286, file: !2287, line: 52, baseType: !122, size: 32, offset: 288)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2286, file: !2287, line: 53, baseType: !2088, size: 64, offset: 320)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !72, file: !3, line: 202, baseType: !75, size: 32, offset: 10048)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !72, file: !3, line: 203, baseType: !62, size: 64, offset: 10112)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "erase_cmd", scope: !72, file: !3, line: 204, baseType: !249, size: 8, offset: 10176)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "fast_mode", scope: !72, file: !3, line: 205, baseType: !249, size: 8, offset: 10184)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !61, line: 37, baseType: !66)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!2306 = !{!0, !2307, !2314, !2319, !2324, !2329, !2332, !2391, !2394, !2396, !2401, !2414, !2417}
!2307 = !DIGlobalVariableExpression(var: !2308, expr: !DIExpression())
!2308 = distinct !DIGlobalVariable(name: "__exitcall_spear_smi_driver_exit", scope: !2, file: !3, line: 1118, type: !2309, isLocal: true, isDefinition: true)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2310, line: 117, baseType: !2311)
!2310 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null}
!2314 = !DIGlobalVariableExpression(var: !2315, expr: !DIExpression())
!2315 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file166", scope: !2, file: !3, line: 1120, type: !2316, isLocal: true, isDefinition: true, align: 8)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 360, elements: !2317)
!2317 = !{!2318}
!2318 = !DISubrange(count: 45)
!2319 = !DIGlobalVariableExpression(var: !2320, expr: !DIExpression())
!2320 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license167", scope: !2, file: !3, line: 1120, type: !2321, isLocal: true, isDefinition: true, align: 8)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 176, elements: !2322)
!2322 = !{!2323}
!2323 = !DISubrange(count: 22)
!2324 = !DIGlobalVariableExpression(var: !2325, expr: !DIExpression())
!2325 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author168", scope: !2, file: !3, line: 1121, type: !2326, isLocal: true, isDefinition: true, align: 8)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 664, elements: !2327)
!2327 = !{!2328}
!2328 = !DISubrange(count: 83)
!2329 = !DIGlobalVariableExpression(var: !2330, expr: !DIExpression())
!2330 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description169", scope: !2, file: !3, line: 1122, type: !2331, isLocal: true, isDefinition: true, align: 8)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 512, elements: !378)
!2332 = !DIGlobalVariableExpression(var: !2333, expr: !DIExpression())
!2333 = distinct !DIGlobalVariable(name: "spear_smi_driver", scope: !2, file: !3, line: 1108, type: !2334, isLocal: true, isDefinition: true)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2335, line: 200, size: 1600, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2378, !2379, !2383, !2387, !2388, !2389, !2390}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2334, file: !2335, line: 201, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!70, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2335, line: 22, size: 6208, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2364, !2372, !2373, !2376}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2342, file: !2335, line: 23, baseType: !139, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2342, file: !2335, line: 24, baseType: !70, size: 32, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2342, file: !2335, line: 25, baseType: !306, size: 8, offset: 96)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2342, file: !2335, line: 26, baseType: !331, size: 5568, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2342, file: !2335, line: 27, baseType: !125, size: 64, offset: 5696)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2342, file: !2335, line: 28, baseType: !2079, size: 128, offset: 5760)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2342, file: !2335, line: 29, baseType: !75, size: 32, offset: 5888)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2342, file: !2335, line: 30, baseType: !2352, size: 64, offset: 5952)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2354, line: 20, size: 512, elements: !2355)
!2354 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2353, file: !2354, line: 21, baseType: !215, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2353, file: !2354, line: 22, baseType: !215, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2353, file: !2354, line: 23, baseType: !139, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2353, file: !2354, line: 24, baseType: !66, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2353, file: !2354, line: 25, baseType: !66, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2353, file: !2354, line: 26, baseType: !2352, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2353, file: !2354, line: 26, baseType: !2352, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2353, file: !2354, line: 26, baseType: !2352, size: 64, offset: 448)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2342, file: !2335, line: 32, baseType: !2365, size: 64, offset: 6016)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1864, line: 586, size: 256, elements: !2368)
!2368 = !{!2369, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2367, file: !1864, line: 587, baseType: !2370, size: 160)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 160, elements: !1385)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2367, file: !1864, line: 588, baseType: !1884, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2342, file: !2335, line: 33, baseType: !373, size: 64, offset: 6080)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2342, file: !2335, line: 36, baseType: !2374, size: 64, offset: 6144)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2335, line: 18, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2342, file: !2335, line: 39, baseType: !2377, offset: 6208)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2086, line: 8, elements: !107)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2334, file: !2335, line: 202, baseType: !2338, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2334, file: !2335, line: 203, baseType: !2380, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2341}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2334, file: !2335, line: 204, baseType: !2384, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!70, !2341, !1895}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2334, file: !2335, line: 205, baseType: !2338, size: 64, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2334, file: !2335, line: 206, baseType: !1852, size: 1152, offset: 320)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2334, file: !2335, line: 207, baseType: !2365, size: 64, offset: 1472)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2334, file: !2335, line: 208, baseType: !306, size: 8, offset: 1536)
!2391 = !DIGlobalVariableExpression(var: !2392, expr: !DIExpression())
!2392 = distinct !DIGlobalVariable(name: "__key", scope: !2393, file: !3, line: 1016, type: !1927, isLocal: true, isDefinition: true)
!2393 = distinct !DISubprogram(name: "spear_smi_probe", scope: !3, file: !3, line: 935, type: !2339, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2394 = !DIGlobalVariableExpression(var: !2395, expr: !DIExpression())
!2395 = distinct !DIGlobalVariable(name: "__key", scope: !2393, file: !3, line: 1017, type: !1927, isLocal: true, isDefinition: true)
!2396 = !DIGlobalVariableExpression(var: !2397, expr: !DIExpression())
!2397 = distinct !DIGlobalVariable(name: "__key", scope: !2398, file: !3, line: 866, type: !1927, isLocal: true, isDefinition: true)
!2398 = distinct !DISubprogram(name: "spear_smi_setup_banks", scope: !3, file: !3, line: 841, type: !2399, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!70, !2341, !75, !2088}
!2401 = !DIGlobalVariableExpression(var: !2402, expr: !DIExpression())
!2402 = distinct !DIGlobalVariable(name: "flash_devices", scope: !2, file: !3, line: 115, type: !2403, isLocal: true, isDefinition: true)
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2404, size: 10880, elements: !2412)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flash_device", file: !3, line: 96, size: 320, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2404, file: !3, line: 97, baseType: !373, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "erase_cmd", scope: !2404, file: !3, line: 98, baseType: !249, size: 8, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !2404, file: !3, line: 99, baseType: !75, size: 32, offset: 96)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2404, file: !3, line: 100, baseType: !75, size: 32, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sectorsize", scope: !2404, file: !3, line: 101, baseType: !66, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "size_in_bytes", scope: !2404, file: !3, line: 102, baseType: !66, size: 64, offset: 256)
!2412 = !{!2413}
!2413 = !DISubrange(count: 34)
!2414 = !DIGlobalVariableExpression(var: !2415, expr: !DIExpression())
!2415 = distinct !DIGlobalVariable(name: "spear_smi_id_table", scope: !2, file: !3, line: 1101, type: !2416, isLocal: true, isDefinition: true)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1862, size: 3200, elements: !1155)
!2417 = !DIGlobalVariableExpression(var: !2418, expr: !DIExpression())
!2418 = distinct !DIGlobalVariable(name: "spear_smi_pm_ops", scope: !2, file: !3, line: 1098, type: !1807, isLocal: true, isDefinition: true)
!2419 = !{i32 7, !"Dwarf Version", i32 4}
!2420 = !{i32 2, !"Debug Info Version", i32 3}
!2421 = !{i32 1, !"wchar_size", i32 2}
!2422 = !{i32 1, !"Code Model", i32 2}
!2423 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2424 = distinct !DISubprogram(name: "spear_smi_driver_init", scope: !3, file: !3, line: 1118, type: !2425, scopeLine: 1118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!70}
!2427 = !DILocation(line: 1118, column: 1, scope: !2424)
!2428 = distinct !DISubprogram(name: "spear_smi_driver_exit", scope: !3, file: !3, line: 1118, type: !2312, scopeLine: 1118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2429 = !DILocation(line: 1118, column: 1, scope: !2428)
!2430 = !DILocalVariable(name: "pdev", arg: 1, scope: !2393, file: !3, line: 935, type: !2341)
!2431 = !DILocation(line: 935, column: 52, scope: !2393)
!2432 = !DILocalVariable(name: "np", scope: !2393, file: !3, line: 937, type: !2088)
!2433 = !DILocation(line: 937, column: 22, scope: !2393)
!2434 = !DILocation(line: 937, column: 27, scope: !2393)
!2435 = !DILocation(line: 937, column: 33, scope: !2393)
!2436 = !DILocation(line: 937, column: 37, scope: !2393)
!2437 = !DILocalVariable(name: "pdata", scope: !2393, file: !3, line: 938, type: !2438)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spear_smi_plat_data", file: !2440, line: 58, size: 448, elements: !2441)
!2440 = !DIFile(filename: "./include/linux/mtd/spear_smi.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !{!2442, !2443, !2444, !2454}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "clk_rate", scope: !2439, file: !2440, line: 59, baseType: !66, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "num_flashes", scope: !2439, file: !2440, line: 60, baseType: !70, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "board_flash_info", scope: !2439, file: !2440, line: 61, baseType: !2445, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spear_smi_flash_info", file: !2440, line: 42, size: 320, elements: !2447)
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2446, file: !2440, line: 43, baseType: !373, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "mem_base", scope: !2446, file: !2440, line: 44, baseType: !66, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2446, file: !2440, line: 45, baseType: !66, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !2446, file: !2440, line: 46, baseType: !2285, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_partitions", scope: !2446, file: !2440, line: 47, baseType: !70, size: 32, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fast_mode", scope: !2446, file: !2440, line: 48, baseType: !249, size: 8, offset: 288)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2439, file: !2440, line: 62, baseType: !2455, size: 256, offset: 192)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2088, size: 256, elements: !551)
!2456 = !DILocation(line: 938, column: 30, scope: !2393)
!2457 = !DILocalVariable(name: "dev", scope: !2393, file: !3, line: 939, type: !2458)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spear_smi", file: !3, line: 169, size: 960, elements: !2460)
!2460 = !{!2461, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2459, file: !3, line: 170, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2464, line: 17, flags: DIFlagFwdDecl)
!2464 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2459, file: !3, line: 171, baseType: !75, size: 32, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "clk_rate", scope: !2459, file: !3, line: 172, baseType: !66, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2459, file: !3, line: 173, baseType: !79, size: 192, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "io_base", scope: !2459, file: !3, line: 174, baseType: !62, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !2459, file: !3, line: 175, baseType: !2341, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_complete", scope: !2459, file: !3, line: 176, baseType: !890, size: 128, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "num_flashes", scope: !2459, file: !3, line: 177, baseType: !75, size: 32, offset: 640)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "flash", scope: !2459, file: !3, line: 178, baseType: !2473, size: 256, offset: 704)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 256, elements: !551)
!2474 = !DILocation(line: 939, column: 20, scope: !2393)
!2475 = !DILocalVariable(name: "smi_base", scope: !2393, file: !3, line: 940, type: !2352)
!2476 = !DILocation(line: 940, column: 19, scope: !2393)
!2477 = !DILocalVariable(name: "irq", scope: !2393, file: !3, line: 941, type: !70)
!2478 = !DILocation(line: 941, column: 6, scope: !2393)
!2479 = !DILocalVariable(name: "ret", scope: !2393, file: !3, line: 941, type: !70)
!2480 = !DILocation(line: 941, column: 11, scope: !2393)
!2481 = !DILocalVariable(name: "i", scope: !2393, file: !3, line: 942, type: !70)
!2482 = !DILocation(line: 942, column: 6, scope: !2393)
!2483 = !DILocation(line: 944, column: 6, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 944, column: 6)
!2485 = !DILocation(line: 944, column: 6, scope: !2393)
!2486 = !DILocation(line: 945, column: 25, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 944, column: 10)
!2488 = !DILocation(line: 945, column: 31, scope: !2487)
!2489 = !DILocation(line: 945, column: 11, scope: !2487)
!2490 = !DILocation(line: 945, column: 9, scope: !2487)
!2491 = !DILocation(line: 946, column: 8, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 946, column: 7)
!2493 = !DILocation(line: 946, column: 7, scope: !2487)
!2494 = !DILocation(line: 947, column: 8, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 946, column: 15)
!2496 = !DILocation(line: 948, column: 4, scope: !2495)
!2497 = !DILocation(line: 950, column: 29, scope: !2487)
!2498 = !DILocation(line: 950, column: 3, scope: !2487)
!2499 = !DILocation(line: 950, column: 9, scope: !2487)
!2500 = !DILocation(line: 950, column: 13, scope: !2487)
!2501 = !DILocation(line: 950, column: 27, scope: !2487)
!2502 = !DILocation(line: 951, column: 35, scope: !2487)
!2503 = !DILocation(line: 951, column: 41, scope: !2487)
!2504 = !DILocation(line: 951, column: 9, scope: !2487)
!2505 = !DILocation(line: 951, column: 7, scope: !2487)
!2506 = !DILocation(line: 952, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 952, column: 7)
!2508 = !DILocation(line: 952, column: 7, scope: !2487)
!2509 = !DILocation(line: 953, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 952, column: 12)
!2511 = !DILocation(line: 954, column: 4, scope: !2510)
!2512 = !DILocation(line: 955, column: 4, scope: !2510)
!2513 = !DILocation(line: 957, column: 2, scope: !2487)
!2514 = !DILocation(line: 958, column: 29, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 957, column: 9)
!2516 = !DILocation(line: 958, column: 35, scope: !2515)
!2517 = !DILocation(line: 958, column: 11, scope: !2515)
!2518 = !DILocation(line: 958, column: 9, scope: !2515)
!2519 = !DILocation(line: 959, column: 8, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 959, column: 7)
!2521 = !DILocation(line: 959, column: 7, scope: !2515)
!2522 = !DILocation(line: 960, column: 8, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 959, column: 15)
!2524 = !DILocation(line: 961, column: 4, scope: !2523)
!2525 = !DILocation(line: 962, column: 4, scope: !2523)
!2526 = !DILocation(line: 966, column: 25, scope: !2393)
!2527 = !DILocation(line: 966, column: 8, scope: !2393)
!2528 = !DILocation(line: 966, column: 6, scope: !2393)
!2529 = !DILocation(line: 967, column: 6, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 967, column: 6)
!2531 = !DILocation(line: 967, column: 10, scope: !2530)
!2532 = !DILocation(line: 967, column: 6, scope: !2393)
!2533 = !DILocation(line: 968, column: 7, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 967, column: 15)
!2535 = !DILocation(line: 969, column: 3, scope: !2534)
!2536 = !DILocation(line: 972, column: 22, scope: !2393)
!2537 = !DILocation(line: 972, column: 28, scope: !2393)
!2538 = !DILocation(line: 972, column: 8, scope: !2393)
!2539 = !DILocation(line: 972, column: 6, scope: !2393)
!2540 = !DILocation(line: 973, column: 7, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 973, column: 6)
!2542 = !DILocation(line: 973, column: 6, scope: !2393)
!2543 = !DILocation(line: 974, column: 7, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 973, column: 12)
!2545 = !DILocation(line: 975, column: 3, scope: !2544)
!2546 = !DILocation(line: 978, column: 35, scope: !2393)
!2547 = !DILocation(line: 978, column: 13, scope: !2393)
!2548 = !DILocation(line: 978, column: 11, scope: !2393)
!2549 = !DILocation(line: 980, column: 40, scope: !2393)
!2550 = !DILocation(line: 980, column: 46, scope: !2393)
!2551 = !DILocation(line: 980, column: 51, scope: !2393)
!2552 = !DILocation(line: 980, column: 17, scope: !2393)
!2553 = !DILocation(line: 980, column: 2, scope: !2393)
!2554 = !DILocation(line: 980, column: 7, scope: !2393)
!2555 = !DILocation(line: 980, column: 15, scope: !2393)
!2556 = !DILocation(line: 981, column: 13, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 981, column: 6)
!2558 = !DILocation(line: 981, column: 18, scope: !2557)
!2559 = !DILocation(line: 981, column: 6, scope: !2557)
!2560 = !DILocation(line: 981, column: 6, scope: !2393)
!2561 = !DILocation(line: 982, column: 17, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 981, column: 28)
!2563 = !DILocation(line: 982, column: 22, scope: !2562)
!2564 = !DILocation(line: 982, column: 9, scope: !2562)
!2565 = !DILocation(line: 982, column: 7, scope: !2562)
!2566 = !DILocation(line: 983, column: 3, scope: !2562)
!2567 = !DILocation(line: 986, column: 14, scope: !2393)
!2568 = !DILocation(line: 986, column: 2, scope: !2393)
!2569 = !DILocation(line: 986, column: 7, scope: !2393)
!2570 = !DILocation(line: 986, column: 12, scope: !2393)
!2571 = !DILocation(line: 987, column: 18, scope: !2393)
!2572 = !DILocation(line: 987, column: 25, scope: !2393)
!2573 = !DILocation(line: 987, column: 2, scope: !2393)
!2574 = !DILocation(line: 987, column: 7, scope: !2393)
!2575 = !DILocation(line: 987, column: 16, scope: !2393)
!2576 = !DILocation(line: 989, column: 6, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 989, column: 6)
!2578 = !DILocation(line: 989, column: 11, scope: !2577)
!2579 = !DILocation(line: 989, column: 20, scope: !2577)
!2580 = !DILocation(line: 989, column: 6, scope: !2393)
!2581 = !DILocation(line: 990, column: 3, scope: !2577)
!2582 = !DILocation(line: 990, column: 8, scope: !2577)
!2583 = !DILocation(line: 990, column: 17, scope: !2577)
!2584 = !DILocation(line: 992, column: 21, scope: !2393)
!2585 = !DILocation(line: 992, column: 28, scope: !2393)
!2586 = !DILocation(line: 992, column: 2, scope: !2393)
!2587 = !DILocation(line: 992, column: 7, scope: !2393)
!2588 = !DILocation(line: 992, column: 19, scope: !2393)
!2589 = !DILocation(line: 994, column: 6, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 994, column: 6)
!2591 = !DILocation(line: 994, column: 11, scope: !2590)
!2592 = !DILocation(line: 994, column: 23, scope: !2590)
!2593 = !DILocation(line: 994, column: 6, scope: !2393)
!2594 = !DILocation(line: 995, column: 3, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 994, column: 45)
!2596 = !DILocation(line: 996, column: 3, scope: !2595)
!2597 = !DILocation(line: 996, column: 8, scope: !2595)
!2598 = !DILocation(line: 996, column: 20, scope: !2595)
!2599 = !DILocation(line: 997, column: 2, scope: !2595)
!2600 = !DILocation(line: 999, column: 27, scope: !2393)
!2601 = !DILocation(line: 999, column: 33, scope: !2393)
!2602 = !DILocation(line: 999, column: 13, scope: !2393)
!2603 = !DILocation(line: 999, column: 2, scope: !2393)
!2604 = !DILocation(line: 999, column: 7, scope: !2393)
!2605 = !DILocation(line: 999, column: 11, scope: !2393)
!2606 = !DILocation(line: 1000, column: 13, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1000, column: 6)
!2608 = !DILocation(line: 1000, column: 18, scope: !2607)
!2609 = !DILocation(line: 1000, column: 6, scope: !2607)
!2610 = !DILocation(line: 1000, column: 6, scope: !2393)
!2611 = !DILocation(line: 1001, column: 17, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1000, column: 24)
!2613 = !DILocation(line: 1001, column: 22, scope: !2612)
!2614 = !DILocation(line: 1001, column: 9, scope: !2612)
!2615 = !DILocation(line: 1001, column: 7, scope: !2612)
!2616 = !DILocation(line: 1002, column: 3, scope: !2612)
!2617 = !DILocation(line: 1005, column: 27, scope: !2393)
!2618 = !DILocation(line: 1005, column: 32, scope: !2393)
!2619 = !DILocation(line: 1005, column: 8, scope: !2393)
!2620 = !DILocation(line: 1005, column: 6, scope: !2393)
!2621 = !DILocation(line: 1006, column: 6, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1006, column: 6)
!2623 = !DILocation(line: 1006, column: 6, scope: !2393)
!2624 = !DILocation(line: 1007, column: 3, scope: !2622)
!2625 = !DILocation(line: 1009, column: 26, scope: !2393)
!2626 = !DILocation(line: 1009, column: 32, scope: !2393)
!2627 = !DILocation(line: 1009, column: 37, scope: !2393)
!2628 = !DILocation(line: 1010, column: 11, scope: !2393)
!2629 = !DILocation(line: 1010, column: 17, scope: !2393)
!2630 = !DILocation(line: 1010, column: 23, scope: !2393)
!2631 = !DILocation(line: 1009, column: 8, scope: !2393)
!2632 = !DILocation(line: 1009, column: 6, scope: !2393)
!2633 = !DILocation(line: 1011, column: 6, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1011, column: 6)
!2635 = !DILocation(line: 1011, column: 6, scope: !2393)
!2636 = !DILocation(line: 1012, column: 3, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1011, column: 11)
!2638 = !DILocation(line: 1013, column: 3, scope: !2637)
!2639 = !DILocation(line: 1016, column: 2, scope: !2393)
!2640 = !DILocation(line: 1016, column: 2, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1016, column: 2)
!2642 = !DILocation(line: 1017, column: 2, scope: !2393)
!2643 = !DILocation(line: 1017, column: 2, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1017, column: 2)
!2645 = !DILocation(line: 1018, column: 20, scope: !2393)
!2646 = !DILocation(line: 1018, column: 2, scope: !2393)
!2647 = !DILocation(line: 1019, column: 23, scope: !2393)
!2648 = !DILocation(line: 1019, column: 29, scope: !2393)
!2649 = !DILocation(line: 1019, column: 2, scope: !2393)
!2650 = !DILocation(line: 1022, column: 9, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1022, column: 2)
!2652 = !DILocation(line: 1022, column: 7, scope: !2651)
!2653 = !DILocation(line: 1022, column: 14, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1022, column: 2)
!2655 = !DILocation(line: 1022, column: 18, scope: !2654)
!2656 = !DILocation(line: 1022, column: 23, scope: !2654)
!2657 = !DILocation(line: 1022, column: 16, scope: !2654)
!2658 = !DILocation(line: 1022, column: 2, scope: !2651)
!2659 = !DILocation(line: 1023, column: 31, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1022, column: 41)
!2661 = !DILocation(line: 1023, column: 37, scope: !2660)
!2662 = !DILocation(line: 1023, column: 40, scope: !2660)
!2663 = !DILocation(line: 1023, column: 47, scope: !2660)
!2664 = !DILocation(line: 1023, column: 50, scope: !2660)
!2665 = !DILocation(line: 1023, column: 9, scope: !2660)
!2666 = !DILocation(line: 1023, column: 7, scope: !2660)
!2667 = !DILocation(line: 1024, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1024, column: 7)
!2669 = !DILocation(line: 1024, column: 7, scope: !2660)
!2670 = !DILocation(line: 1025, column: 4, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1024, column: 12)
!2672 = !DILocation(line: 1026, column: 4, scope: !2671)
!2673 = !DILocation(line: 1028, column: 2, scope: !2660)
!2674 = !DILocation(line: 1022, column: 37, scope: !2654)
!2675 = !DILocation(line: 1022, column: 2, scope: !2654)
!2676 = distinct !{!2676, !2658, !2677}
!2677 = !DILocation(line: 1028, column: 2, scope: !2651)
!2678 = !DILocation(line: 1030, column: 2, scope: !2393)
!2679 = !DILabel(scope: !2393, name: "err_irq", file: !3, line: 1032)
!2680 = !DILocation(line: 1032, column: 1, scope: !2393)
!2681 = !DILocation(line: 1033, column: 24, scope: !2393)
!2682 = !DILocation(line: 1033, column: 29, scope: !2393)
!2683 = !DILocation(line: 1033, column: 2, scope: !2393)
!2684 = !DILabel(scope: !2393, name: "err", file: !3, line: 1034)
!2685 = !DILocation(line: 1034, column: 1, scope: !2393)
!2686 = !DILocation(line: 1035, column: 9, scope: !2393)
!2687 = !DILocation(line: 1035, column: 2, scope: !2393)
!2688 = !DILocation(line: 1036, column: 1, scope: !2393)
!2689 = distinct !DISubprogram(name: "spear_smi_remove", scope: !3, file: !3, line: 1044, type: !2339, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2690 = !DILocalVariable(name: "pdev", arg: 1, scope: !2689, file: !3, line: 1044, type: !2341)
!2691 = !DILocation(line: 1044, column: 53, scope: !2689)
!2692 = !DILocalVariable(name: "dev", scope: !2689, file: !3, line: 1046, type: !2458)
!2693 = !DILocation(line: 1046, column: 20, scope: !2689)
!2694 = !DILocalVariable(name: "flash", scope: !2689, file: !3, line: 1047, type: !71)
!2695 = !DILocation(line: 1047, column: 27, scope: !2689)
!2696 = !DILocalVariable(name: "ret", scope: !2689, file: !3, line: 1048, type: !70)
!2697 = !DILocation(line: 1048, column: 6, scope: !2689)
!2698 = !DILocalVariable(name: "i", scope: !2689, file: !3, line: 1048, type: !70)
!2699 = !DILocation(line: 1048, column: 11, scope: !2689)
!2700 = !DILocation(line: 1050, column: 29, scope: !2689)
!2701 = !DILocation(line: 1050, column: 8, scope: !2689)
!2702 = !DILocation(line: 1050, column: 6, scope: !2689)
!2703 = !DILocation(line: 1051, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 1051, column: 6)
!2705 = !DILocation(line: 1051, column: 6, scope: !2689)
!2706 = !DILocation(line: 1052, column: 3, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1051, column: 12)
!2708 = !DILocation(line: 1053, column: 3, scope: !2707)
!2709 = !DILocation(line: 1057, column: 9, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 1057, column: 2)
!2711 = !DILocation(line: 1057, column: 7, scope: !2710)
!2712 = !DILocation(line: 1057, column: 14, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 1057, column: 2)
!2714 = !DILocation(line: 1057, column: 18, scope: !2713)
!2715 = !DILocation(line: 1057, column: 23, scope: !2713)
!2716 = !DILocation(line: 1057, column: 16, scope: !2713)
!2717 = !DILocation(line: 1057, column: 2, scope: !2710)
!2718 = !DILocation(line: 1058, column: 11, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1057, column: 41)
!2720 = !DILocation(line: 1058, column: 16, scope: !2719)
!2721 = !DILocation(line: 1058, column: 22, scope: !2719)
!2722 = !DILocation(line: 1058, column: 9, scope: !2719)
!2723 = !DILocation(line: 1059, column: 8, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1059, column: 7)
!2725 = !DILocation(line: 1059, column: 7, scope: !2719)
!2726 = !DILocation(line: 1060, column: 4, scope: !2724)
!2727 = !DILocation(line: 1063, column: 32, scope: !2719)
!2728 = !DILocation(line: 1063, column: 39, scope: !2719)
!2729 = !DILocation(line: 1063, column: 9, scope: !2719)
!2730 = !DILocation(line: 1063, column: 7, scope: !2719)
!2731 = !DILocation(line: 1064, column: 7, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1064, column: 7)
!2733 = !DILocation(line: 1064, column: 7, scope: !2719)
!2734 = !DILocation(line: 1065, column: 4, scope: !2732)
!2735 = !DILocation(line: 1066, column: 2, scope: !2719)
!2736 = !DILocation(line: 1057, column: 37, scope: !2713)
!2737 = !DILocation(line: 1057, column: 2, scope: !2713)
!2738 = distinct !{!2738, !2717, !2739}
!2739 = !DILocation(line: 1066, column: 2, scope: !2710)
!2740 = !DILocation(line: 1068, column: 24, scope: !2689)
!2741 = !DILocation(line: 1068, column: 29, scope: !2689)
!2742 = !DILocation(line: 1068, column: 2, scope: !2689)
!2743 = !DILocation(line: 1070, column: 2, scope: !2689)
!2744 = !DILocation(line: 1071, column: 1, scope: !2689)
!2745 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2746, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!62, !1780, !209, !60}
!2748 = !DILocalVariable(name: "dev", arg: 1, scope: !2745, file: !30, line: 215, type: !1780)
!2749 = !DILocation(line: 215, column: 49, scope: !2745)
!2750 = !DILocalVariable(name: "size", arg: 2, scope: !2745, file: !30, line: 215, type: !209)
!2751 = !DILocation(line: 215, column: 61, scope: !2745)
!2752 = !DILocalVariable(name: "gfp", arg: 3, scope: !2745, file: !30, line: 215, type: !60)
!2753 = !DILocation(line: 215, column: 73, scope: !2745)
!2754 = !DILocation(line: 217, column: 22, scope: !2745)
!2755 = !DILocation(line: 217, column: 27, scope: !2745)
!2756 = !DILocation(line: 217, column: 33, scope: !2745)
!2757 = !DILocation(line: 217, column: 37, scope: !2745)
!2758 = !DILocation(line: 217, column: 9, scope: !2745)
!2759 = !DILocation(line: 217, column: 2, scope: !2745)
!2760 = distinct !DISubprogram(name: "spear_smi_probe_config_dt", scope: !3, file: !3, line: 792, type: !2761, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!70, !2341, !2088}
!2763 = !DILocalVariable(name: "p", arg: 1, scope: !2764, file: !2765, line: 184, type: !2768)
!2764 = distinct !DISubprogram(name: "__swab32p", scope: !2765, file: !2765, line: 184, type: !2766, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2765 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!64, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2770 = !DILocation(line: 184, column: 53, scope: !2764, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 82, column: 9, scope: !2772, inlinedAt: !2779)
!2772 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !2773, file: !2773, line: 80, type: !2774, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2773 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!64, !2776}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1750, line: 32, baseType: !64)
!2779 = distinct !DILocation(line: 821, column: 35, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 815, column: 33)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 815, column: 2)
!2782 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 815, column: 2)
!2783 = !DILocalVariable(name: "p", arg: 1, scope: !2772, file: !2773, line: 80, type: !2776)
!2784 = !DILocation(line: 80, column: 59, scope: !2772, inlinedAt: !2779)
!2785 = !DILocation(line: 184, column: 53, scope: !2764, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 82, column: 9, scope: !2772, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 820, column: 39, scope: !2780)
!2788 = !DILocation(line: 80, column: 59, scope: !2772, inlinedAt: !2787)
!2789 = !DILocalVariable(name: "pdev", arg: 1, scope: !2760, file: !3, line: 792, type: !2341)
!2790 = !DILocation(line: 792, column: 62, scope: !2760)
!2791 = !DILocalVariable(name: "np", arg: 2, scope: !2760, file: !3, line: 793, type: !2088)
!2792 = !DILocation(line: 793, column: 30, scope: !2760)
!2793 = !DILocalVariable(name: "pdata", scope: !2760, file: !3, line: 795, type: !2438)
!2794 = !DILocation(line: 795, column: 30, scope: !2760)
!2795 = !DILocation(line: 795, column: 56, scope: !2760)
!2796 = !DILocation(line: 795, column: 62, scope: !2760)
!2797 = !DILocation(line: 795, column: 38, scope: !2760)
!2798 = !DILocalVariable(name: "pp", scope: !2760, file: !3, line: 796, type: !2088)
!2799 = !DILocation(line: 796, column: 22, scope: !2760)
!2800 = !DILocalVariable(name: "addr", scope: !2760, file: !3, line: 797, type: !2776)
!2801 = !DILocation(line: 797, column: 16, scope: !2760)
!2802 = !DILocalVariable(name: "val", scope: !2760, file: !3, line: 798, type: !75)
!2803 = !DILocation(line: 798, column: 6, scope: !2760)
!2804 = !DILocalVariable(name: "len", scope: !2760, file: !3, line: 799, type: !70)
!2805 = !DILocation(line: 799, column: 6, scope: !2760)
!2806 = !DILocalVariable(name: "i", scope: !2760, file: !3, line: 800, type: !70)
!2807 = !DILocation(line: 800, column: 6, scope: !2760)
!2808 = !DILocation(line: 802, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 802, column: 6)
!2810 = !DILocation(line: 802, column: 6, scope: !2760)
!2811 = !DILocation(line: 803, column: 3, scope: !2809)
!2812 = !DILocation(line: 805, column: 23, scope: !2760)
!2813 = !DILocation(line: 805, column: 2, scope: !2760)
!2814 = !DILocation(line: 806, column: 20, scope: !2760)
!2815 = !DILocation(line: 806, column: 2, scope: !2760)
!2816 = !DILocation(line: 806, column: 9, scope: !2760)
!2817 = !DILocation(line: 806, column: 18, scope: !2760)
!2818 = !DILocation(line: 808, column: 42, scope: !2760)
!2819 = !DILocation(line: 808, column: 48, scope: !2760)
!2820 = !DILocation(line: 808, column: 28, scope: !2760)
!2821 = !DILocation(line: 808, column: 2, scope: !2760)
!2822 = !DILocation(line: 808, column: 9, scope: !2760)
!2823 = !DILocation(line: 808, column: 26, scope: !2760)
!2824 = !DILocation(line: 811, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 811, column: 6)
!2826 = !DILocation(line: 811, column: 14, scope: !2825)
!2827 = !DILocation(line: 811, column: 6, scope: !2760)
!2828 = !DILocation(line: 812, column: 3, scope: !2825)
!2829 = !DILocation(line: 815, column: 2, scope: !2782)
!2830 = !DILocation(line: 815, column: 2, scope: !2781)
!2831 = !DILocation(line: 816, column: 18, scope: !2780)
!2832 = !DILocation(line: 816, column: 3, scope: !2780)
!2833 = !DILocation(line: 816, column: 10, scope: !2780)
!2834 = !DILocation(line: 816, column: 13, scope: !2780)
!2835 = !DILocation(line: 816, column: 16, scope: !2780)
!2836 = !DILocation(line: 819, column: 26, scope: !2780)
!2837 = !DILocation(line: 819, column: 10, scope: !2780)
!2838 = !DILocation(line: 819, column: 8, scope: !2780)
!2839 = !DILocation(line: 820, column: 53, scope: !2780)
!2840 = !DILocation(line: 82, column: 28, scope: !2772, inlinedAt: !2787)
!2841 = !DILocation(line: 189, column: 9, scope: !2764, inlinedAt: !2786)
!2842 = !DILocation(line: 820, column: 39, scope: !2780)
!2843 = !DILocation(line: 820, column: 3, scope: !2780)
!2844 = !DILocation(line: 820, column: 10, scope: !2780)
!2845 = !DILocation(line: 820, column: 28, scope: !2780)
!2846 = !DILocation(line: 820, column: 37, scope: !2780)
!2847 = !DILocation(line: 821, column: 49, scope: !2780)
!2848 = !DILocation(line: 82, column: 28, scope: !2772, inlinedAt: !2779)
!2849 = !DILocation(line: 189, column: 9, scope: !2764, inlinedAt: !2771)
!2850 = !DILocation(line: 821, column: 35, scope: !2780)
!2851 = !DILocation(line: 821, column: 3, scope: !2780)
!2852 = !DILocation(line: 821, column: 10, scope: !2780)
!2853 = !DILocation(line: 821, column: 28, scope: !2780)
!2854 = !DILocation(line: 821, column: 33, scope: !2780)
!2855 = !DILocation(line: 823, column: 23, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 823, column: 7)
!2857 = !DILocation(line: 823, column: 7, scope: !2856)
!2858 = !DILocation(line: 823, column: 7, scope: !2780)
!2859 = !DILocation(line: 824, column: 4, scope: !2856)
!2860 = !DILocation(line: 824, column: 11, scope: !2856)
!2861 = !DILocation(line: 824, column: 29, scope: !2856)
!2862 = !DILocation(line: 824, column: 39, scope: !2856)
!2863 = !DILocation(line: 826, column: 4, scope: !2780)
!2864 = !DILocation(line: 827, column: 2, scope: !2780)
!2865 = distinct !{!2865, !2829, !2866}
!2866 = !DILocation(line: 827, column: 2, scope: !2782)
!2867 = !DILocation(line: 829, column: 23, scope: !2760)
!2868 = !DILocation(line: 829, column: 2, scope: !2760)
!2869 = !DILocation(line: 829, column: 9, scope: !2760)
!2870 = !DILocation(line: 829, column: 21, scope: !2760)
!2871 = !DILocation(line: 831, column: 2, scope: !2760)
!2872 = !DILocation(line: 832, column: 1, scope: !2760)
!2873 = distinct !DISubprogram(name: "dev_get_platdata", scope: !30, file: !30, line: 828, type: !2874, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!62, !2125}
!2876 = !DILocalVariable(name: "dev", arg: 1, scope: !2873, file: !30, line: 828, type: !2125)
!2877 = !DILocation(line: 828, column: 59, scope: !2873)
!2878 = !DILocation(line: 830, column: 9, scope: !2873)
!2879 = !DILocation(line: 830, column: 14, scope: !2873)
!2880 = !DILocation(line: 830, column: 2, scope: !2873)
!2881 = distinct !DISubprogram(name: "IS_ERR", scope: !2882, file: !2882, line: 34, type: !2883, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2882 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!306, !1311}
!2885 = !DILocalVariable(name: "ptr", arg: 1, scope: !2881, file: !2882, line: 34, type: !1311)
!2886 = !DILocation(line: 34, column: 60, scope: !2881)
!2887 = !DILocation(line: 36, column: 9, scope: !2881)
!2888 = !DILocation(line: 36, column: 2, scope: !2881)
!2889 = distinct !DISubprogram(name: "PTR_ERR", scope: !2882, file: !2882, line: 29, type: !2890, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!67, !1311}
!2892 = !DILocalVariable(name: "ptr", arg: 1, scope: !2889, file: !2882, line: 29, type: !1311)
!2893 = !DILocation(line: 29, column: 61, scope: !2889)
!2894 = !DILocation(line: 31, column: 16, scope: !2889)
!2895 = !DILocation(line: 31, column: 9, scope: !2889)
!2896 = !DILocation(line: 31, column: 2, scope: !2889)
!2897 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !2464, file: !2464, line: 906, type: !2898, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!70, !2462}
!2900 = !DILocalVariable(name: "clk", arg: 1, scope: !2897, file: !2464, line: 906, type: !2462)
!2901 = !DILocation(line: 906, column: 50, scope: !2897)
!2902 = !DILocalVariable(name: "ret", scope: !2897, file: !2464, line: 908, type: !70)
!2903 = !DILocation(line: 908, column: 6, scope: !2897)
!2904 = !DILocation(line: 910, column: 20, scope: !2897)
!2905 = !DILocation(line: 910, column: 8, scope: !2897)
!2906 = !DILocation(line: 910, column: 6, scope: !2897)
!2907 = !DILocation(line: 911, column: 6, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2897, file: !2464, line: 911, column: 6)
!2909 = !DILocation(line: 911, column: 6, scope: !2897)
!2910 = !DILocation(line: 912, column: 10, scope: !2908)
!2911 = !DILocation(line: 912, column: 3, scope: !2908)
!2912 = !DILocation(line: 913, column: 19, scope: !2897)
!2913 = !DILocation(line: 913, column: 8, scope: !2897)
!2914 = !DILocation(line: 913, column: 6, scope: !2897)
!2915 = !DILocation(line: 914, column: 6, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2897, file: !2464, line: 914, column: 6)
!2917 = !DILocation(line: 914, column: 6, scope: !2897)
!2918 = !DILocation(line: 915, column: 17, scope: !2916)
!2919 = !DILocation(line: 915, column: 3, scope: !2916)
!2920 = !DILocation(line: 917, column: 9, scope: !2897)
!2921 = !DILocation(line: 917, column: 2, scope: !2897)
!2922 = !DILocation(line: 918, column: 1, scope: !2897)
!2923 = distinct !DISubprogram(name: "devm_request_irq", scope: !2924, file: !2924, line: 203, type: !2925, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2924 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!70, !1780, !7, !2927, !66, !139, !62}
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !2924, line: 92, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!2931, !70, !62}
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !51, line: 17, baseType: !50)
!2932 = !DILocalVariable(name: "dev", arg: 1, scope: !2923, file: !2924, line: 203, type: !1780)
!2933 = !DILocation(line: 203, column: 33, scope: !2923)
!2934 = !DILocalVariable(name: "irq", arg: 2, scope: !2923, file: !2924, line: 203, type: !7)
!2935 = !DILocation(line: 203, column: 51, scope: !2923)
!2936 = !DILocalVariable(name: "handler", arg: 3, scope: !2923, file: !2924, line: 203, type: !2927)
!2937 = !DILocation(line: 203, column: 70, scope: !2923)
!2938 = !DILocalVariable(name: "irqflags", arg: 4, scope: !2923, file: !2924, line: 204, type: !66)
!2939 = !DILocation(line: 204, column: 18, scope: !2923)
!2940 = !DILocalVariable(name: "devname", arg: 5, scope: !2923, file: !2924, line: 204, type: !139)
!2941 = !DILocation(line: 204, column: 40, scope: !2923)
!2942 = !DILocalVariable(name: "dev_id", arg: 6, scope: !2923, file: !2924, line: 204, type: !62)
!2943 = !DILocation(line: 204, column: 55, scope: !2923)
!2944 = !DILocation(line: 206, column: 35, scope: !2923)
!2945 = !DILocation(line: 206, column: 40, scope: !2923)
!2946 = !DILocation(line: 206, column: 45, scope: !2923)
!2947 = !DILocation(line: 206, column: 60, scope: !2923)
!2948 = !DILocation(line: 207, column: 7, scope: !2923)
!2949 = !DILocation(line: 207, column: 16, scope: !2923)
!2950 = !DILocation(line: 206, column: 9, scope: !2923)
!2951 = !DILocation(line: 206, column: 2, scope: !2923)
!2952 = distinct !DISubprogram(name: "spear_smi_int_handler", scope: !3, file: !3, line: 296, type: !2929, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2953 = !DILocalVariable(name: "irq", arg: 1, scope: !2952, file: !3, line: 296, type: !70)
!2954 = !DILocation(line: 296, column: 46, scope: !2952)
!2955 = !DILocalVariable(name: "dev_id", arg: 2, scope: !2952, file: !3, line: 296, type: !62)
!2956 = !DILocation(line: 296, column: 57, scope: !2952)
!2957 = !DILocalVariable(name: "status", scope: !2952, file: !3, line: 298, type: !75)
!2958 = !DILocation(line: 298, column: 6, scope: !2952)
!2959 = !DILocalVariable(name: "dev", scope: !2952, file: !3, line: 299, type: !2458)
!2960 = !DILocation(line: 299, column: 20, scope: !2952)
!2961 = !DILocation(line: 299, column: 26, scope: !2952)
!2962 = !DILocation(line: 301, column: 17, scope: !2952)
!2963 = !DILocation(line: 301, column: 22, scope: !2952)
!2964 = !DILocation(line: 301, column: 30, scope: !2952)
!2965 = !DILocation(line: 301, column: 11, scope: !2952)
!2966 = !DILocation(line: 301, column: 9, scope: !2952)
!2967 = !DILocation(line: 303, column: 6, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 303, column: 6)
!2969 = !DILocation(line: 303, column: 6, scope: !2952)
!2970 = !DILocation(line: 304, column: 3, scope: !2968)
!2971 = !DILocation(line: 307, column: 12, scope: !2952)
!2972 = !DILocation(line: 307, column: 17, scope: !2952)
!2973 = !DILocation(line: 307, column: 25, scope: !2952)
!2974 = !DILocation(line: 307, column: 2, scope: !2952)
!2975 = !DILocation(line: 310, column: 17, scope: !2952)
!2976 = !DILocation(line: 310, column: 2, scope: !2952)
!2977 = !DILocation(line: 310, column: 7, scope: !2952)
!2978 = !DILocation(line: 310, column: 14, scope: !2952)
!2979 = !DILocation(line: 313, column: 2, scope: !2952)
!2980 = !DILocation(line: 315, column: 2, scope: !2952)
!2981 = !DILocation(line: 316, column: 1, scope: !2952)
!2982 = distinct !DISubprogram(name: "spear_smi_hw_init", scope: !3, file: !3, line: 324, type: !2983, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2458}
!2985 = !DILocalVariable(name: "dev", arg: 1, scope: !2982, file: !3, line: 324, type: !2458)
!2986 = !DILocation(line: 324, column: 49, scope: !2982)
!2987 = !DILocalVariable(name: "rate", scope: !2982, file: !3, line: 326, type: !66)
!2988 = !DILocation(line: 326, column: 16, scope: !2982)
!2989 = !DILocalVariable(name: "prescale", scope: !2982, file: !3, line: 327, type: !75)
!2990 = !DILocation(line: 327, column: 6, scope: !2982)
!2991 = !DILocalVariable(name: "val", scope: !2982, file: !3, line: 328, type: !75)
!2992 = !DILocation(line: 328, column: 6, scope: !2982)
!2993 = !DILocation(line: 330, column: 22, scope: !2982)
!2994 = !DILocation(line: 330, column: 27, scope: !2982)
!2995 = !DILocation(line: 330, column: 9, scope: !2982)
!2996 = !DILocation(line: 330, column: 7, scope: !2982)
!2997 = !DILocation(line: 333, column: 13, scope: !2982)
!2998 = !DILocation(line: 333, column: 11, scope: !2982)
!2999 = !DILocation(line: 339, column: 39, scope: !2982)
!3000 = !DILocation(line: 339, column: 48, scope: !2982)
!3001 = !DILocation(line: 339, column: 36, scope: !2982)
!3002 = !DILocation(line: 339, column: 6, scope: !2982)
!3003 = !DILocation(line: 341, column: 14, scope: !2982)
!3004 = !DILocation(line: 341, column: 19, scope: !2982)
!3005 = !DILocation(line: 341, column: 2, scope: !2982)
!3006 = !DILocation(line: 343, column: 12, scope: !2982)
!3007 = !DILocation(line: 343, column: 17, scope: !2982)
!3008 = !DILocation(line: 343, column: 25, scope: !2982)
!3009 = !DILocation(line: 343, column: 2, scope: !2982)
!3010 = !DILocation(line: 345, column: 9, scope: !2982)
!3011 = !DILocation(line: 345, column: 14, scope: !2982)
!3012 = !DILocation(line: 345, column: 19, scope: !2982)
!3013 = !DILocation(line: 345, column: 27, scope: !2982)
!3014 = !DILocation(line: 345, column: 2, scope: !2982)
!3015 = !DILocation(line: 346, column: 16, scope: !2982)
!3016 = !DILocation(line: 346, column: 21, scope: !2982)
!3017 = !DILocation(line: 346, column: 2, scope: !2982)
!3018 = !DILocation(line: 347, column: 1, scope: !2982)
!3019 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2335, file: !2335, line: 236, type: !3020, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2341, !62}
!3022 = !DILocalVariable(name: "pdev", arg: 1, scope: !3019, file: !2335, line: 236, type: !2341)
!3023 = !DILocation(line: 236, column: 65, scope: !3019)
!3024 = !DILocalVariable(name: "data", arg: 2, scope: !3019, file: !2335, line: 237, type: !62)
!3025 = !DILocation(line: 237, column: 12, scope: !3019)
!3026 = !DILocation(line: 239, column: 19, scope: !3019)
!3027 = !DILocation(line: 239, column: 25, scope: !3019)
!3028 = !DILocation(line: 239, column: 30, scope: !3019)
!3029 = !DILocation(line: 239, column: 2, scope: !3019)
!3030 = !DILocation(line: 240, column: 1, scope: !3019)
!3031 = !DILocalVariable(name: "pdev", arg: 1, scope: !2398, file: !3, line: 841, type: !2341)
!3032 = !DILocation(line: 841, column: 58, scope: !2398)
!3033 = !DILocalVariable(name: "bank", arg: 2, scope: !2398, file: !3, line: 842, type: !75)
!3034 = !DILocation(line: 842, column: 10, scope: !2398)
!3035 = !DILocalVariable(name: "np", arg: 3, scope: !2398, file: !3, line: 842, type: !2088)
!3036 = !DILocation(line: 842, column: 36, scope: !2398)
!3037 = !DILocalVariable(name: "dev", scope: !2398, file: !3, line: 844, type: !2458)
!3038 = !DILocation(line: 844, column: 20, scope: !2398)
!3039 = !DILocation(line: 844, column: 47, scope: !2398)
!3040 = !DILocation(line: 844, column: 26, scope: !2398)
!3041 = !DILocalVariable(name: "flash_info", scope: !2398, file: !3, line: 845, type: !2445)
!3042 = !DILocation(line: 845, column: 31, scope: !2398)
!3043 = !DILocalVariable(name: "pdata", scope: !2398, file: !3, line: 846, type: !2438)
!3044 = !DILocation(line: 846, column: 30, scope: !2398)
!3045 = !DILocalVariable(name: "flash", scope: !2398, file: !3, line: 847, type: !71)
!3046 = !DILocation(line: 847, column: 27, scope: !2398)
!3047 = !DILocalVariable(name: "parts", scope: !2398, file: !3, line: 848, type: !2285)
!3048 = !DILocation(line: 848, column: 24, scope: !2398)
!3049 = !DILocalVariable(name: "count", scope: !2398, file: !3, line: 849, type: !70)
!3050 = !DILocation(line: 849, column: 6, scope: !2398)
!3051 = !DILocalVariable(name: "flash_index", scope: !2398, file: !3, line: 850, type: !70)
!3052 = !DILocation(line: 850, column: 6, scope: !2398)
!3053 = !DILocalVariable(name: "ret", scope: !2398, file: !3, line: 851, type: !70)
!3054 = !DILocation(line: 851, column: 6, scope: !2398)
!3055 = !DILocation(line: 853, column: 28, scope: !2398)
!3056 = !DILocation(line: 853, column: 34, scope: !2398)
!3057 = !DILocation(line: 853, column: 10, scope: !2398)
!3058 = !DILocation(line: 853, column: 8, scope: !2398)
!3059 = !DILocation(line: 854, column: 6, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 854, column: 6)
!3061 = !DILocation(line: 854, column: 13, scope: !3060)
!3062 = !DILocation(line: 854, column: 20, scope: !3060)
!3063 = !DILocation(line: 854, column: 32, scope: !3060)
!3064 = !DILocation(line: 854, column: 11, scope: !3060)
!3065 = !DILocation(line: 854, column: 6, scope: !2398)
!3066 = !DILocation(line: 855, column: 3, scope: !3060)
!3067 = !DILocation(line: 857, column: 16, scope: !2398)
!3068 = !DILocation(line: 857, column: 23, scope: !2398)
!3069 = !DILocation(line: 857, column: 40, scope: !2398)
!3070 = !DILocation(line: 857, column: 13, scope: !2398)
!3071 = !DILocation(line: 858, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 858, column: 6)
!3073 = !DILocation(line: 858, column: 6, scope: !2398)
!3074 = !DILocation(line: 859, column: 3, scope: !3072)
!3075 = !DILocation(line: 861, column: 24, scope: !2398)
!3076 = !DILocation(line: 861, column: 30, scope: !2398)
!3077 = !DILocation(line: 861, column: 10, scope: !2398)
!3078 = !DILocation(line: 861, column: 8, scope: !2398)
!3079 = !DILocation(line: 862, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 862, column: 6)
!3081 = !DILocation(line: 862, column: 6, scope: !2398)
!3082 = !DILocation(line: 863, column: 3, scope: !3080)
!3083 = !DILocation(line: 864, column: 16, scope: !2398)
!3084 = !DILocation(line: 864, column: 2, scope: !2398)
!3085 = !DILocation(line: 864, column: 9, scope: !2398)
!3086 = !DILocation(line: 864, column: 14, scope: !2398)
!3087 = !DILocation(line: 865, column: 21, scope: !2398)
!3088 = !DILocation(line: 865, column: 33, scope: !2398)
!3089 = !DILocation(line: 865, column: 2, scope: !2398)
!3090 = !DILocation(line: 865, column: 9, scope: !2398)
!3091 = !DILocation(line: 865, column: 19, scope: !2398)
!3092 = !DILocation(line: 866, column: 2, scope: !2398)
!3093 = !DILocation(line: 866, column: 2, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 866, column: 2)
!3095 = !DILocation(line: 869, column: 38, scope: !2398)
!3096 = !DILocation(line: 869, column: 43, scope: !2398)
!3097 = !DILocation(line: 869, column: 16, scope: !2398)
!3098 = !DILocation(line: 869, column: 14, scope: !2398)
!3099 = !DILocation(line: 870, column: 6, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 870, column: 6)
!3101 = !DILocation(line: 870, column: 18, scope: !3100)
!3102 = !DILocation(line: 870, column: 6, scope: !2398)
!3103 = !DILocation(line: 871, column: 3, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 870, column: 23)
!3105 = !DILocation(line: 872, column: 10, scope: !3104)
!3106 = !DILocation(line: 872, column: 3, scope: !3104)
!3107 = !DILocation(line: 875, column: 35, scope: !2398)
!3108 = !DILocation(line: 875, column: 41, scope: !2398)
!3109 = !DILocation(line: 875, column: 46, scope: !2398)
!3110 = !DILocation(line: 875, column: 58, scope: !2398)
!3111 = !DILocation(line: 876, column: 6, scope: !2398)
!3112 = !DILocation(line: 876, column: 18, scope: !2398)
!3113 = !DILocation(line: 875, column: 21, scope: !2398)
!3114 = !DILocation(line: 875, column: 2, scope: !2398)
!3115 = !DILocation(line: 875, column: 9, scope: !2398)
!3116 = !DILocation(line: 875, column: 19, scope: !2398)
!3117 = !DILocation(line: 877, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 877, column: 6)
!3119 = !DILocation(line: 877, column: 14, scope: !3118)
!3120 = !DILocation(line: 877, column: 6, scope: !2398)
!3121 = !DILocation(line: 878, column: 3, scope: !3118)
!3122 = !DILocation(line: 880, column: 21, scope: !2398)
!3123 = !DILocation(line: 880, column: 2, scope: !2398)
!3124 = !DILocation(line: 880, column: 7, scope: !2398)
!3125 = !DILocation(line: 880, column: 13, scope: !2398)
!3126 = !DILocation(line: 880, column: 19, scope: !2398)
!3127 = !DILocation(line: 881, column: 20, scope: !2398)
!3128 = !DILocation(line: 881, column: 2, scope: !2398)
!3129 = !DILocation(line: 881, column: 9, scope: !2398)
!3130 = !DILocation(line: 881, column: 13, scope: !2398)
!3131 = !DILocation(line: 881, column: 18, scope: !2398)
!3132 = !DILocation(line: 883, column: 6, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 883, column: 6)
!3134 = !DILocation(line: 883, column: 18, scope: !3133)
!3135 = !DILocation(line: 883, column: 6, scope: !2398)
!3136 = !DILocation(line: 884, column: 21, scope: !3133)
!3137 = !DILocation(line: 884, column: 33, scope: !3133)
!3138 = !DILocation(line: 884, column: 3, scope: !3133)
!3139 = !DILocation(line: 884, column: 10, scope: !3133)
!3140 = !DILocation(line: 884, column: 14, scope: !3133)
!3141 = !DILocation(line: 884, column: 19, scope: !3133)
!3142 = !DILocation(line: 886, column: 35, scope: !3133)
!3143 = !DILocation(line: 886, column: 21, scope: !3133)
!3144 = !DILocation(line: 886, column: 48, scope: !3133)
!3145 = !DILocation(line: 886, column: 3, scope: !3133)
!3146 = !DILocation(line: 886, column: 10, scope: !3133)
!3147 = !DILocation(line: 886, column: 14, scope: !3133)
!3148 = !DILocation(line: 886, column: 19, scope: !3133)
!3149 = !DILocation(line: 888, column: 27, scope: !2398)
!3150 = !DILocation(line: 888, column: 33, scope: !2398)
!3151 = !DILocation(line: 888, column: 2, scope: !2398)
!3152 = !DILocation(line: 888, column: 9, scope: !2398)
!3153 = !DILocation(line: 888, column: 13, scope: !2398)
!3154 = !DILocation(line: 888, column: 17, scope: !2398)
!3155 = !DILocation(line: 888, column: 24, scope: !2398)
!3156 = !DILocation(line: 889, column: 19, scope: !2398)
!3157 = !DILocation(line: 889, column: 26, scope: !2398)
!3158 = !DILocation(line: 889, column: 31, scope: !2398)
!3159 = !DILocation(line: 889, column: 2, scope: !2398)
!3160 = !DILocation(line: 890, column: 2, scope: !2398)
!3161 = !DILocation(line: 890, column: 9, scope: !2398)
!3162 = !DILocation(line: 890, column: 13, scope: !2398)
!3163 = !DILocation(line: 890, column: 18, scope: !2398)
!3164 = !DILocation(line: 891, column: 2, scope: !2398)
!3165 = !DILocation(line: 891, column: 9, scope: !2398)
!3166 = !DILocation(line: 891, column: 13, scope: !2398)
!3167 = !DILocation(line: 891, column: 23, scope: !2398)
!3168 = !DILocation(line: 892, column: 2, scope: !2398)
!3169 = !DILocation(line: 892, column: 9, scope: !2398)
!3170 = !DILocation(line: 892, column: 13, scope: !2398)
!3171 = !DILocation(line: 892, column: 19, scope: !2398)
!3172 = !DILocation(line: 893, column: 20, scope: !2398)
!3173 = !DILocation(line: 893, column: 32, scope: !2398)
!3174 = !DILocation(line: 893, column: 2, scope: !2398)
!3175 = !DILocation(line: 893, column: 9, scope: !2398)
!3176 = !DILocation(line: 893, column: 13, scope: !2398)
!3177 = !DILocation(line: 893, column: 18, scope: !2398)
!3178 = !DILocation(line: 894, column: 39, scope: !2398)
!3179 = !DILocation(line: 894, column: 25, scope: !2398)
!3180 = !DILocation(line: 894, column: 52, scope: !2398)
!3181 = !DILocation(line: 894, column: 2, scope: !2398)
!3182 = !DILocation(line: 894, column: 9, scope: !2398)
!3183 = !DILocation(line: 894, column: 13, scope: !2398)
!3184 = !DILocation(line: 894, column: 23, scope: !2398)
!3185 = !DILocation(line: 895, column: 35, scope: !2398)
!3186 = !DILocation(line: 895, column: 21, scope: !2398)
!3187 = !DILocation(line: 895, column: 48, scope: !2398)
!3188 = !DILocation(line: 895, column: 2, scope: !2398)
!3189 = !DILocation(line: 895, column: 9, scope: !2398)
!3190 = !DILocation(line: 895, column: 19, scope: !2398)
!3191 = !DILocation(line: 896, column: 28, scope: !2398)
!3192 = !DILocation(line: 896, column: 35, scope: !2398)
!3193 = !DILocation(line: 896, column: 2, scope: !2398)
!3194 = !DILocation(line: 896, column: 9, scope: !2398)
!3195 = !DILocation(line: 896, column: 13, scope: !2398)
!3196 = !DILocation(line: 896, column: 26, scope: !2398)
!3197 = !DILocation(line: 897, column: 35, scope: !2398)
!3198 = !DILocation(line: 897, column: 21, scope: !2398)
!3199 = !DILocation(line: 897, column: 48, scope: !2398)
!3200 = !DILocation(line: 897, column: 2, scope: !2398)
!3201 = !DILocation(line: 897, column: 9, scope: !2398)
!3202 = !DILocation(line: 897, column: 19, scope: !2398)
!3203 = !DILocation(line: 898, column: 2, scope: !2398)
!3204 = !DILocation(line: 898, column: 9, scope: !2398)
!3205 = !DILocation(line: 898, column: 13, scope: !2398)
!3206 = !DILocation(line: 898, column: 20, scope: !2398)
!3207 = !DILocation(line: 899, column: 2, scope: !2398)
!3208 = !DILocation(line: 899, column: 9, scope: !2398)
!3209 = !DILocation(line: 899, column: 13, scope: !2398)
!3210 = !DILocation(line: 899, column: 19, scope: !2398)
!3211 = !DILocation(line: 900, column: 2, scope: !2398)
!3212 = !DILocation(line: 900, column: 9, scope: !2398)
!3213 = !DILocation(line: 900, column: 13, scope: !2398)
!3214 = !DILocation(line: 900, column: 20, scope: !2398)
!3215 = !DILocation(line: 901, column: 32, scope: !2398)
!3216 = !DILocation(line: 901, column: 18, scope: !2398)
!3217 = !DILocation(line: 901, column: 45, scope: !2398)
!3218 = !DILocation(line: 901, column: 2, scope: !2398)
!3219 = !DILocation(line: 901, column: 9, scope: !2398)
!3220 = !DILocation(line: 901, column: 16, scope: !2398)
!3221 = !DILocation(line: 903, column: 2, scope: !2398)
!3222 = !DILocation(line: 907, column: 2, scope: !2398)
!3223 = !DILocation(line: 917, column: 8, scope: !2398)
!3224 = !DILocation(line: 917, column: 6, scope: !2398)
!3225 = !DILocation(line: 918, column: 6, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 918, column: 6)
!3227 = !DILocation(line: 918, column: 6, scope: !2398)
!3228 = !DILocation(line: 919, column: 3, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 918, column: 11)
!3230 = !DILocation(line: 920, column: 10, scope: !3229)
!3231 = !DILocation(line: 920, column: 3, scope: !3229)
!3232 = !DILocation(line: 923, column: 2, scope: !2398)
!3233 = !DILocation(line: 924, column: 1, scope: !2398)
!3234 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !2464, file: !2464, line: 921, type: !3235, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !2462}
!3237 = !DILocalVariable(name: "clk", arg: 1, scope: !3234, file: !2464, line: 921, type: !2462)
!3238 = !DILocation(line: 921, column: 54, scope: !3234)
!3239 = !DILocation(line: 923, column: 14, scope: !3234)
!3240 = !DILocation(line: 923, column: 2, scope: !3234)
!3241 = !DILocation(line: 924, column: 16, scope: !3234)
!3242 = !DILocation(line: 924, column: 2, scope: !3234)
!3243 = !DILocation(line: 925, column: 1, scope: !3234)
!3244 = distinct !DISubprogram(name: "of_property_read_u32", scope: !2090, file: !2090, line: 1214, type: !3245, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!70, !3247, !139, !814}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2089)
!3249 = !DILocalVariable(name: "np", arg: 1, scope: !3244, file: !2090, line: 1214, type: !3247)
!3250 = !DILocation(line: 1214, column: 66, scope: !3244)
!3251 = !DILocalVariable(name: "propname", arg: 2, scope: !3244, file: !2090, line: 1215, type: !139)
!3252 = !DILocation(line: 1215, column: 24, scope: !3244)
!3253 = !DILocalVariable(name: "out_value", arg: 3, scope: !3244, file: !2090, line: 1216, type: !814)
!3254 = !DILocation(line: 1216, column: 17, scope: !3244)
!3255 = !DILocation(line: 1218, column: 36, scope: !3244)
!3256 = !DILocation(line: 1218, column: 40, scope: !3244)
!3257 = !DILocation(line: 1218, column: 50, scope: !3244)
!3258 = !DILocation(line: 1218, column: 9, scope: !3244)
!3259 = !DILocation(line: 1218, column: 2, scope: !3244)
!3260 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !2090, file: !2090, line: 494, type: !3261, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!70, !3247, !139, !814, !209}
!3263 = !DILocalVariable(name: "np", arg: 1, scope: !3260, file: !2090, line: 494, type: !3247)
!3264 = !DILocation(line: 494, column: 72, scope: !3260)
!3265 = !DILocalVariable(name: "propname", arg: 2, scope: !3260, file: !2090, line: 495, type: !139)
!3266 = !DILocation(line: 495, column: 23, scope: !3260)
!3267 = !DILocalVariable(name: "out_values", arg: 3, scope: !3260, file: !2090, line: 496, type: !814)
!3268 = !DILocation(line: 496, column: 16, scope: !3260)
!3269 = !DILocalVariable(name: "sz", arg: 4, scope: !3260, file: !2090, line: 496, type: !209)
!3270 = !DILocation(line: 496, column: 35, scope: !3260)
!3271 = !DILocalVariable(name: "ret", scope: !3260, file: !2090, line: 498, type: !70)
!3272 = !DILocation(line: 498, column: 6, scope: !3260)
!3273 = !DILocation(line: 498, column: 48, scope: !3260)
!3274 = !DILocation(line: 498, column: 52, scope: !3260)
!3275 = !DILocation(line: 498, column: 62, scope: !3260)
!3276 = !DILocation(line: 499, column: 13, scope: !3260)
!3277 = !DILocation(line: 498, column: 12, scope: !3260)
!3278 = !DILocation(line: 500, column: 6, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3260, file: !2090, line: 500, column: 6)
!3280 = !DILocation(line: 500, column: 10, scope: !3279)
!3281 = !DILocation(line: 500, column: 6, scope: !3260)
!3282 = !DILocation(line: 501, column: 3, scope: !3279)
!3283 = !DILocation(line: 503, column: 10, scope: !3279)
!3284 = !DILocation(line: 503, column: 3, scope: !3279)
!3285 = !DILocation(line: 504, column: 1, scope: !3260)
!3286 = distinct !DISubprogram(name: "__fswab32", scope: !2765, file: !2765, line: 57, type: !3287, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!64, !64}
!3289 = !DILocalVariable(name: "val", arg: 1, scope: !3286, file: !2765, line: 57, type: !64)
!3290 = !DILocation(line: 57, column: 57, scope: !3286)
!3291 = !DILocation(line: 60, column: 23, scope: !3286)
!3292 = !DILocation(line: 60, column: 9, scope: !3286)
!3293 = !DILocation(line: 60, column: 2, scope: !3286)
!3294 = distinct !DISubprogram(name: "__arch_swab32", scope: !3295, file: !3295, line: 8, type: !3287, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3295 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!3296 = !DILocalVariable(name: "val", arg: 1, scope: !3294, file: !3295, line: 8, type: !64)
!3297 = !DILocation(line: 8, column: 61, scope: !3294)
!3298 = !DILocation(line: 10, column: 38, scope: !3294)
!3299 = !DILocation(line: 10, column: 2, scope: !3294)
!3300 = !{i32 429117}
!3301 = !DILocation(line: 11, column: 9, scope: !3294)
!3302 = !DILocation(line: 11, column: 2, scope: !3294)
!3303 = distinct !DISubprogram(name: "readl", scope: !3304, file: !3304, line: 59, type: !3305, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3304 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!7, !3307}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3309)
!3309 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3310 = !DILocalVariable(name: "addr", arg: 1, scope: !3303, file: !3304, line: 59, type: !3307)
!3311 = !DILocation(line: 59, column: 1, scope: !3303)
!3312 = !DILocalVariable(name: "ret", scope: !3303, file: !3304, line: 59, type: !7)
!3313 = !{i32 -2143655328}
!3314 = distinct !DISubprogram(name: "writel", scope: !3304, file: !3304, line: 67, type: !3315, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !7, !3317}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3318 = !DILocalVariable(name: "val", arg: 1, scope: !3314, file: !3304, line: 67, type: !7)
!3319 = !DILocation(line: 67, column: 1, scope: !3314)
!3320 = !DILocalVariable(name: "addr", arg: 2, scope: !3314, file: !3304, line: 67, type: !3317)
!3321 = !{i32 -2143652935}
!3322 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3323, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !1780, !62}
!3325 = !DILocalVariable(name: "dev", arg: 1, scope: !3322, file: !30, line: 660, type: !1780)
!3326 = !DILocation(line: 660, column: 51, scope: !3322)
!3327 = !DILocalVariable(name: "data", arg: 2, scope: !3322, file: !30, line: 660, type: !62)
!3328 = !DILocation(line: 660, column: 62, scope: !3322)
!3329 = !DILocation(line: 662, column: 21, scope: !3322)
!3330 = !DILocation(line: 662, column: 2, scope: !3322)
!3331 = !DILocation(line: 662, column: 7, scope: !3322)
!3332 = !DILocation(line: 662, column: 19, scope: !3322)
!3333 = !DILocation(line: 663, column: 1, scope: !3322)
!3334 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2335, file: !2335, line: 231, type: !3335, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!62, !3337}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2342)
!3339 = !DILocalVariable(name: "pdev", arg: 1, scope: !3334, file: !2335, line: 231, type: !3337)
!3340 = !DILocation(line: 231, column: 72, scope: !3334)
!3341 = !DILocation(line: 233, column: 26, scope: !3334)
!3342 = !DILocation(line: 233, column: 32, scope: !3334)
!3343 = !DILocation(line: 233, column: 9, scope: !3334)
!3344 = !DILocation(line: 233, column: 2, scope: !3334)
!3345 = distinct !DISubprogram(name: "spear_smi_probe_flash", scope: !3, file: !3, line: 745, type: !3346, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!70, !2458, !75}
!3348 = !DILocalVariable(name: "dev", arg: 1, scope: !3345, file: !3, line: 745, type: !2458)
!3349 = !DILocation(line: 745, column: 52, scope: !3345)
!3350 = !DILocalVariable(name: "bank", arg: 2, scope: !3345, file: !3, line: 745, type: !75)
!3351 = !DILocation(line: 745, column: 61, scope: !3345)
!3352 = !DILocalVariable(name: "ret", scope: !3345, file: !3, line: 747, type: !70)
!3353 = !DILocation(line: 747, column: 6, scope: !3345)
!3354 = !DILocalVariable(name: "val", scope: !3345, file: !3, line: 748, type: !75)
!3355 = !DILocation(line: 748, column: 6, scope: !3345)
!3356 = !DILocation(line: 750, column: 34, scope: !3345)
!3357 = !DILocation(line: 750, column: 39, scope: !3345)
!3358 = !DILocation(line: 750, column: 8, scope: !3345)
!3359 = !DILocation(line: 750, column: 6, scope: !3345)
!3360 = !DILocation(line: 751, column: 6, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 751, column: 6)
!3362 = !DILocation(line: 751, column: 6, scope: !3345)
!3363 = !DILocation(line: 752, column: 10, scope: !3361)
!3364 = !DILocation(line: 752, column: 3, scope: !3361)
!3365 = !DILocation(line: 754, column: 14, scope: !3345)
!3366 = !DILocation(line: 754, column: 19, scope: !3345)
!3367 = !DILocation(line: 754, column: 2, scope: !3345)
!3368 = !DILocation(line: 756, column: 2, scope: !3345)
!3369 = !DILocation(line: 756, column: 7, scope: !3345)
!3370 = !DILocation(line: 756, column: 14, scope: !3345)
!3371 = !DILocation(line: 758, column: 14, scope: !3345)
!3372 = !DILocation(line: 758, column: 19, scope: !3345)
!3373 = !DILocation(line: 758, column: 27, scope: !3345)
!3374 = !DILocation(line: 758, column: 8, scope: !3345)
!3375 = !DILocation(line: 758, column: 6, scope: !3345)
!3376 = !DILocation(line: 759, column: 9, scope: !3345)
!3377 = !DILocation(line: 759, column: 13, scope: !3345)
!3378 = !DILocation(line: 759, column: 24, scope: !3345)
!3379 = !DILocation(line: 759, column: 29, scope: !3345)
!3380 = !DILocation(line: 759, column: 37, scope: !3345)
!3381 = !DILocation(line: 759, column: 2, scope: !3345)
!3382 = !DILocation(line: 762, column: 22, scope: !3345)
!3383 = !DILocation(line: 762, column: 27, scope: !3345)
!3384 = !DILocation(line: 762, column: 35, scope: !3345)
!3385 = !DILocation(line: 762, column: 2, scope: !3345)
!3386 = !DILocation(line: 764, column: 9, scope: !3345)
!3387 = !DILocation(line: 764, column: 14, scope: !3345)
!3388 = !DILocation(line: 764, column: 29, scope: !3345)
!3389 = !DILocation(line: 764, column: 36, scope: !3345)
!3390 = !DILocation(line: 764, column: 58, scope: !3345)
!3391 = !DILocation(line: 765, column: 23, scope: !3345)
!3392 = !DILocation(line: 764, column: 6, scope: !3345)
!3393 = !DILocation(line: 766, column: 9, scope: !3345)
!3394 = !DILocation(line: 766, column: 14, scope: !3345)
!3395 = !DILocation(line: 766, column: 19, scope: !3345)
!3396 = !DILocation(line: 766, column: 27, scope: !3345)
!3397 = !DILocation(line: 766, column: 2, scope: !3345)
!3398 = !DILocalVariable(name: "__ret", scope: !3399, file: !3, line: 769, type: !67)
!3399 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 769, column: 8)
!3400 = !DILocation(line: 769, column: 8, scope: !3399)
!3401 = !DILocation(line: 769, column: 8, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 769, column: 8)
!3403 = !DILocation(line: 769, column: 8, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 769, column: 8)
!3405 = !DILocalVariable(name: "__cond", scope: !3406, file: !3, line: 769, type: !306)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 769, column: 8)
!3407 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 769, column: 8)
!3408 = !DILocation(line: 769, column: 8, scope: !3406)
!3409 = !DILocation(line: 769, column: 8, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 769, column: 8)
!3411 = !DILocation(line: 769, column: 8, scope: !3407)
!3412 = !DILocalVariable(name: "__wq_entry", scope: !3413, file: !3, line: 769, type: !3414)
!3413 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 769, column: 8)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !891, line: 29, size: 320, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3424}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3414, file: !891, line: 30, baseType: !7, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3414, file: !891, line: 31, baseType: !62, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3414, file: !891, line: 32, baseType: !3419, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !891, line: 16, baseType: !3420)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!70, !3423, !7, !70, !62}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3414, file: !891, line: 33, baseType: !109, size: 128, offset: 192)
!3425 = !DILocation(line: 769, column: 8, scope: !3413)
!3426 = !DILocalVariable(name: "__ret", scope: !3413, file: !3, line: 769, type: !67)
!3427 = !DILocalVariable(name: "__int", scope: !3428, file: !3, line: 769, type: !67)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 769, column: 8)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 769, column: 8)
!3430 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 769, column: 8)
!3431 = !DILocation(line: 769, column: 8, scope: !3428)
!3432 = !DILocalVariable(name: "__cond", scope: !3433, file: !3, line: 769, type: !306)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 769, column: 8)
!3434 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 769, column: 8)
!3435 = !DILocation(line: 769, column: 8, scope: !3433)
!3436 = !DILocation(line: 769, column: 8, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 769, column: 8)
!3438 = !DILocation(line: 769, column: 8, scope: !3434)
!3439 = !DILocation(line: 769, column: 8, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 769, column: 8)
!3441 = !DILocation(line: 769, column: 8, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 769, column: 8)
!3443 = !DILocation(line: 769, column: 8, scope: !3429)
!3444 = distinct !{!3444, !3445, !3445}
!3445 = !DILocation(line: 769, column: 8, scope: !3430)
!3446 = !DILabel(scope: !3413, name: "__out", file: !3, line: 769)
!3447 = !DILocation(line: 769, column: 8, scope: !3345)
!3448 = !DILocation(line: 769, column: 6, scope: !3345)
!3449 = !DILocation(line: 771, column: 6, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 771, column: 6)
!3451 = !DILocation(line: 771, column: 10, scope: !3450)
!3452 = !DILocation(line: 771, column: 6, scope: !3345)
!3453 = !DILocation(line: 772, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 771, column: 16)
!3455 = !DILocation(line: 773, column: 3, scope: !3454)
!3456 = !DILocation(line: 777, column: 14, scope: !3345)
!3457 = !DILocation(line: 777, column: 19, scope: !3345)
!3458 = !DILocation(line: 777, column: 27, scope: !3345)
!3459 = !DILocation(line: 777, column: 8, scope: !3345)
!3460 = !DILocation(line: 777, column: 6, scope: !3345)
!3461 = !DILocation(line: 778, column: 6, scope: !3345)
!3462 = !DILocation(line: 779, column: 24, scope: !3345)
!3463 = !DILocation(line: 779, column: 8, scope: !3345)
!3464 = !DILocation(line: 779, column: 6, scope: !3345)
!3465 = !DILocation(line: 779, column: 2, scope: !3345)
!3466 = !DILabel(scope: !3345, name: "err_probe", file: !3, line: 781)
!3467 = !DILocation(line: 781, column: 1, scope: !3345)
!3468 = !DILocation(line: 783, column: 14, scope: !3345)
!3469 = !DILocation(line: 783, column: 19, scope: !3345)
!3470 = !DILocation(line: 783, column: 27, scope: !3345)
!3471 = !DILocation(line: 783, column: 8, scope: !3345)
!3472 = !DILocation(line: 783, column: 6, scope: !3345)
!3473 = !DILocation(line: 784, column: 9, scope: !3345)
!3474 = !DILocation(line: 784, column: 13, scope: !3345)
!3475 = !DILocation(line: 784, column: 25, scope: !3345)
!3476 = !DILocation(line: 784, column: 30, scope: !3345)
!3477 = !DILocation(line: 784, column: 38, scope: !3345)
!3478 = !DILocation(line: 784, column: 2, scope: !3345)
!3479 = !DILocation(line: 786, column: 16, scope: !3345)
!3480 = !DILocation(line: 786, column: 21, scope: !3345)
!3481 = !DILocation(line: 786, column: 2, scope: !3345)
!3482 = !DILocation(line: 787, column: 9, scope: !3345)
!3483 = !DILocation(line: 787, column: 2, scope: !3345)
!3484 = !DILocation(line: 788, column: 1, scope: !3345)
!3485 = distinct !DISubprogram(name: "mtd_set_of_node", scope: !116, file: !116, line: 455, type: !3486, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !152, !2088}
!3488 = !DILocalVariable(name: "mtd", arg: 1, scope: !3485, file: !116, line: 455, type: !152)
!3489 = !DILocation(line: 455, column: 53, scope: !3485)
!3490 = !DILocalVariable(name: "np", arg: 2, scope: !3485, file: !116, line: 456, type: !2088)
!3491 = !DILocation(line: 456, column: 28, scope: !3485)
!3492 = !DILocation(line: 458, column: 21, scope: !3485)
!3493 = !DILocation(line: 458, column: 2, scope: !3485)
!3494 = !DILocation(line: 458, column: 7, scope: !3485)
!3495 = !DILocation(line: 458, column: 11, scope: !3485)
!3496 = !DILocation(line: 458, column: 19, scope: !3485)
!3497 = !DILocation(line: 459, column: 7, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3485, file: !116, line: 459, column: 6)
!3499 = !DILocation(line: 459, column: 12, scope: !3498)
!3500 = !DILocation(line: 459, column: 6, scope: !3485)
!3501 = !DILocation(line: 460, column: 27, scope: !3498)
!3502 = !DILocation(line: 460, column: 41, scope: !3498)
!3503 = !DILocation(line: 460, column: 46, scope: !3498)
!3504 = !DILocation(line: 460, column: 3, scope: !3498)
!3505 = !DILocation(line: 461, column: 1, scope: !3485)
!3506 = distinct !DISubprogram(name: "spear_mtd_erase", scope: !3, file: !3, line: 494, type: !194, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3507 = !DILocalVariable(name: "mtd", arg: 1, scope: !3506, file: !3, line: 494, type: !152)
!3508 = !DILocation(line: 494, column: 45, scope: !3506)
!3509 = !DILocalVariable(name: "e_info", arg: 2, scope: !3506, file: !3, line: 494, type: !196)
!3510 = !DILocation(line: 494, column: 69, scope: !3506)
!3511 = !DILocalVariable(name: "flash", scope: !3506, file: !3, line: 496, type: !71)
!3512 = !DILocation(line: 496, column: 27, scope: !3506)
!3513 = !DILocation(line: 496, column: 50, scope: !3506)
!3514 = !DILocation(line: 496, column: 35, scope: !3506)
!3515 = !DILocalVariable(name: "dev", scope: !3506, file: !3, line: 497, type: !2458)
!3516 = !DILocation(line: 497, column: 20, scope: !3506)
!3517 = !DILocation(line: 497, column: 26, scope: !3506)
!3518 = !DILocation(line: 497, column: 31, scope: !3506)
!3519 = !DILocalVariable(name: "addr", scope: !3506, file: !3, line: 498, type: !75)
!3520 = !DILocation(line: 498, column: 6, scope: !3506)
!3521 = !DILocalVariable(name: "command", scope: !3506, file: !3, line: 498, type: !75)
!3522 = !DILocation(line: 498, column: 12, scope: !3506)
!3523 = !DILocalVariable(name: "bank", scope: !3506, file: !3, line: 498, type: !75)
!3524 = !DILocation(line: 498, column: 21, scope: !3506)
!3525 = !DILocalVariable(name: "len", scope: !3506, file: !3, line: 499, type: !70)
!3526 = !DILocation(line: 499, column: 6, scope: !3506)
!3527 = !DILocalVariable(name: "ret", scope: !3506, file: !3, line: 499, type: !70)
!3528 = !DILocation(line: 499, column: 11, scope: !3506)
!3529 = !DILocation(line: 501, column: 7, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 501, column: 6)
!3531 = !DILocation(line: 501, column: 13, scope: !3530)
!3532 = !DILocation(line: 501, column: 17, scope: !3530)
!3533 = !DILocation(line: 501, column: 6, scope: !3506)
!3534 = !DILocation(line: 502, column: 3, scope: !3530)
!3535 = !DILocation(line: 504, column: 9, scope: !3506)
!3536 = !DILocation(line: 504, column: 16, scope: !3506)
!3537 = !DILocation(line: 504, column: 7, scope: !3506)
!3538 = !DILocation(line: 505, column: 6, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 505, column: 6)
!3540 = !DILocation(line: 505, column: 13, scope: !3539)
!3541 = !DILocation(line: 505, column: 18, scope: !3539)
!3542 = !DILocation(line: 505, column: 30, scope: !3539)
!3543 = !DILocation(line: 505, column: 11, scope: !3539)
!3544 = !DILocation(line: 505, column: 6, scope: !3506)
!3545 = !DILocation(line: 506, column: 3, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 505, column: 35)
!3547 = !DILocation(line: 507, column: 3, scope: !3546)
!3548 = !DILocation(line: 510, column: 9, scope: !3506)
!3549 = !DILocation(line: 510, column: 17, scope: !3506)
!3550 = !DILocation(line: 510, column: 7, scope: !3506)
!3551 = !DILocation(line: 511, column: 8, scope: !3506)
!3552 = !DILocation(line: 511, column: 16, scope: !3506)
!3553 = !DILocation(line: 511, column: 6, scope: !3506)
!3554 = !DILocation(line: 513, column: 14, scope: !3506)
!3555 = !DILocation(line: 513, column: 21, scope: !3506)
!3556 = !DILocation(line: 513, column: 2, scope: !3506)
!3557 = !DILocation(line: 516, column: 2, scope: !3506)
!3558 = !DILocation(line: 516, column: 9, scope: !3506)
!3559 = !DILocation(line: 517, column: 34, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 516, column: 14)
!3561 = !DILocation(line: 517, column: 41, scope: !3560)
!3562 = !DILocation(line: 517, column: 13, scope: !3560)
!3563 = !DILocation(line: 517, column: 11, scope: !3560)
!3564 = !DILocation(line: 519, column: 32, scope: !3560)
!3565 = !DILocation(line: 519, column: 37, scope: !3560)
!3566 = !DILocation(line: 519, column: 43, scope: !3560)
!3567 = !DILocation(line: 519, column: 9, scope: !3560)
!3568 = !DILocation(line: 519, column: 7, scope: !3560)
!3569 = !DILocation(line: 520, column: 7, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 520, column: 7)
!3571 = !DILocation(line: 520, column: 7, scope: !3560)
!3572 = !DILocation(line: 521, column: 18, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 520, column: 12)
!3574 = !DILocation(line: 521, column: 25, scope: !3573)
!3575 = !DILocation(line: 521, column: 4, scope: !3573)
!3576 = !DILocation(line: 522, column: 11, scope: !3573)
!3577 = !DILocation(line: 522, column: 4, scope: !3573)
!3578 = !DILocation(line: 524, column: 11, scope: !3560)
!3579 = !DILocation(line: 524, column: 16, scope: !3560)
!3580 = !DILocation(line: 524, column: 8, scope: !3560)
!3581 = !DILocation(line: 525, column: 10, scope: !3560)
!3582 = !DILocation(line: 525, column: 15, scope: !3560)
!3583 = !DILocation(line: 525, column: 7, scope: !3560)
!3584 = distinct !{!3584, !3557, !3585}
!3585 = !DILocation(line: 526, column: 2, scope: !3506)
!3586 = !DILocation(line: 528, column: 16, scope: !3506)
!3587 = !DILocation(line: 528, column: 23, scope: !3506)
!3588 = !DILocation(line: 528, column: 2, scope: !3506)
!3589 = !DILocation(line: 530, column: 2, scope: !3506)
!3590 = !DILocation(line: 531, column: 1, scope: !3506)
!3591 = distinct !DISubprogram(name: "spear_mtd_read", scope: !3, file: !3, line: 545, type: !3592, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!70, !152, !206, !209, !212, !2302}
!3594 = !DILocalVariable(name: "mtd", arg: 1, scope: !3591, file: !3, line: 545, type: !152)
!3595 = !DILocation(line: 545, column: 44, scope: !3591)
!3596 = !DILocalVariable(name: "from", arg: 2, scope: !3591, file: !3, line: 545, type: !206)
!3597 = !DILocation(line: 545, column: 56, scope: !3591)
!3598 = !DILocalVariable(name: "len", arg: 3, scope: !3591, file: !3, line: 545, type: !209)
!3599 = !DILocation(line: 545, column: 69, scope: !3591)
!3600 = !DILocalVariable(name: "retlen", arg: 4, scope: !3591, file: !3, line: 546, type: !212)
!3601 = !DILocation(line: 546, column: 11, scope: !3591)
!3602 = !DILocalVariable(name: "buf", arg: 5, scope: !3591, file: !3, line: 546, type: !2302)
!3603 = !DILocation(line: 546, column: 23, scope: !3591)
!3604 = !DILocalVariable(name: "flash", scope: !3591, file: !3, line: 548, type: !71)
!3605 = !DILocation(line: 548, column: 27, scope: !3591)
!3606 = !DILocation(line: 548, column: 50, scope: !3591)
!3607 = !DILocation(line: 548, column: 35, scope: !3591)
!3608 = !DILocalVariable(name: "dev", scope: !3591, file: !3, line: 549, type: !2458)
!3609 = !DILocation(line: 549, column: 20, scope: !3591)
!3610 = !DILocation(line: 549, column: 26, scope: !3591)
!3611 = !DILocation(line: 549, column: 31, scope: !3591)
!3612 = !DILocalVariable(name: "src", scope: !3591, file: !3, line: 550, type: !62)
!3613 = !DILocation(line: 550, column: 16, scope: !3591)
!3614 = !DILocalVariable(name: "ctrlreg1", scope: !3591, file: !3, line: 551, type: !75)
!3615 = !DILocation(line: 551, column: 6, scope: !3591)
!3616 = !DILocalVariable(name: "val", scope: !3591, file: !3, line: 551, type: !75)
!3617 = !DILocation(line: 551, column: 16, scope: !3591)
!3618 = !DILocalVariable(name: "ret", scope: !3591, file: !3, line: 552, type: !70)
!3619 = !DILocation(line: 552, column: 6, scope: !3591)
!3620 = !DILocation(line: 554, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 554, column: 6)
!3622 = !DILocation(line: 554, column: 13, scope: !3621)
!3623 = !DILocation(line: 554, column: 17, scope: !3621)
!3624 = !DILocation(line: 554, column: 6, scope: !3591)
!3625 = !DILocation(line: 555, column: 3, scope: !3621)
!3626 = !DILocation(line: 557, column: 6, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 557, column: 6)
!3628 = !DILocation(line: 557, column: 13, scope: !3627)
!3629 = !DILocation(line: 557, column: 20, scope: !3627)
!3630 = !DILocation(line: 557, column: 25, scope: !3627)
!3631 = !DILocation(line: 557, column: 37, scope: !3627)
!3632 = !DILocation(line: 557, column: 18, scope: !3627)
!3633 = !DILocation(line: 557, column: 6, scope: !3591)
!3634 = !DILocation(line: 558, column: 3, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 557, column: 42)
!3636 = !DILocation(line: 559, column: 3, scope: !3635)
!3637 = !DILocation(line: 563, column: 8, scope: !3591)
!3638 = !DILocation(line: 563, column: 15, scope: !3591)
!3639 = !DILocation(line: 563, column: 27, scope: !3591)
!3640 = !DILocation(line: 563, column: 25, scope: !3591)
!3641 = !DILocation(line: 563, column: 6, scope: !3591)
!3642 = !DILocation(line: 565, column: 14, scope: !3591)
!3643 = !DILocation(line: 565, column: 21, scope: !3591)
!3644 = !DILocation(line: 565, column: 2, scope: !3591)
!3645 = !DILocation(line: 568, column: 34, scope: !3591)
!3646 = !DILocation(line: 568, column: 39, scope: !3591)
!3647 = !DILocation(line: 568, column: 46, scope: !3591)
!3648 = !DILocation(line: 568, column: 8, scope: !3591)
!3649 = !DILocation(line: 568, column: 6, scope: !3591)
!3650 = !DILocation(line: 569, column: 6, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 569, column: 6)
!3652 = !DILocation(line: 569, column: 6, scope: !3591)
!3653 = !DILocation(line: 570, column: 17, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 569, column: 11)
!3655 = !DILocation(line: 570, column: 24, scope: !3654)
!3656 = !DILocation(line: 570, column: 3, scope: !3654)
!3657 = !DILocation(line: 571, column: 10, scope: !3654)
!3658 = !DILocation(line: 571, column: 3, scope: !3654)
!3659 = !DILocation(line: 574, column: 14, scope: !3591)
!3660 = !DILocation(line: 574, column: 19, scope: !3591)
!3661 = !DILocation(line: 574, column: 2, scope: !3591)
!3662 = !DILocation(line: 576, column: 25, scope: !3591)
!3663 = !DILocation(line: 576, column: 30, scope: !3591)
!3664 = !DILocation(line: 576, column: 38, scope: !3591)
!3665 = !DILocation(line: 576, column: 19, scope: !3591)
!3666 = !DILocation(line: 576, column: 17, scope: !3591)
!3667 = !DILocation(line: 576, column: 11, scope: !3591)
!3668 = !DILocation(line: 577, column: 6, scope: !3591)
!3669 = !DILocation(line: 578, column: 6, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 578, column: 6)
!3671 = !DILocation(line: 578, column: 13, scope: !3670)
!3672 = !DILocation(line: 578, column: 6, scope: !3591)
!3673 = !DILocation(line: 579, column: 7, scope: !3670)
!3674 = !DILocation(line: 579, column: 3, scope: !3670)
!3675 = !DILocation(line: 581, column: 9, scope: !3591)
!3676 = !DILocation(line: 581, column: 14, scope: !3591)
!3677 = !DILocation(line: 581, column: 19, scope: !3591)
!3678 = !DILocation(line: 581, column: 27, scope: !3591)
!3679 = !DILocation(line: 581, column: 2, scope: !3591)
!3680 = !DILocation(line: 583, column: 16, scope: !3591)
!3681 = !DILocation(line: 583, column: 21, scope: !3591)
!3682 = !DILocation(line: 583, column: 26, scope: !3591)
!3683 = !DILocation(line: 583, column: 2, scope: !3591)
!3684 = !DILocation(line: 586, column: 9, scope: !3591)
!3685 = !DILocation(line: 586, column: 19, scope: !3591)
!3686 = !DILocation(line: 586, column: 24, scope: !3591)
!3687 = !DILocation(line: 586, column: 32, scope: !3591)
!3688 = !DILocation(line: 586, column: 2, scope: !3591)
!3689 = !DILocation(line: 587, column: 16, scope: !3591)
!3690 = !DILocation(line: 587, column: 21, scope: !3591)
!3691 = !DILocation(line: 587, column: 2, scope: !3591)
!3692 = !DILocation(line: 589, column: 12, scope: !3591)
!3693 = !DILocation(line: 589, column: 3, scope: !3591)
!3694 = !DILocation(line: 589, column: 10, scope: !3591)
!3695 = !DILocation(line: 590, column: 16, scope: !3591)
!3696 = !DILocation(line: 590, column: 23, scope: !3591)
!3697 = !DILocation(line: 590, column: 2, scope: !3591)
!3698 = !DILocation(line: 592, column: 2, scope: !3591)
!3699 = !DILocation(line: 593, column: 1, scope: !3591)
!3700 = distinct !DISubprogram(name: "spear_mtd_write", scope: !3, file: !3, line: 674, type: !3701, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!70, !152, !206, !209, !212, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!3705 = !DILocalVariable(name: "mtd", arg: 1, scope: !3700, file: !3, line: 674, type: !152)
!3706 = !DILocation(line: 674, column: 45, scope: !3700)
!3707 = !DILocalVariable(name: "to", arg: 2, scope: !3700, file: !3, line: 674, type: !206)
!3708 = !DILocation(line: 674, column: 57, scope: !3700)
!3709 = !DILocalVariable(name: "len", arg: 3, scope: !3700, file: !3, line: 674, type: !209)
!3710 = !DILocation(line: 674, column: 68, scope: !3700)
!3711 = !DILocalVariable(name: "retlen", arg: 4, scope: !3700, file: !3, line: 675, type: !212)
!3712 = !DILocation(line: 675, column: 11, scope: !3700)
!3713 = !DILocalVariable(name: "buf", arg: 5, scope: !3700, file: !3, line: 675, type: !3703)
!3714 = !DILocation(line: 675, column: 29, scope: !3700)
!3715 = !DILocalVariable(name: "flash", scope: !3700, file: !3, line: 677, type: !71)
!3716 = !DILocation(line: 677, column: 27, scope: !3700)
!3717 = !DILocation(line: 677, column: 50, scope: !3700)
!3718 = !DILocation(line: 677, column: 35, scope: !3700)
!3719 = !DILocalVariable(name: "dev", scope: !3700, file: !3, line: 678, type: !2458)
!3720 = !DILocation(line: 678, column: 20, scope: !3700)
!3721 = !DILocation(line: 678, column: 26, scope: !3700)
!3722 = !DILocation(line: 678, column: 31, scope: !3700)
!3723 = !DILocalVariable(name: "dest", scope: !3700, file: !3, line: 679, type: !62)
!3724 = !DILocation(line: 679, column: 16, scope: !3700)
!3725 = !DILocalVariable(name: "page_offset", scope: !3700, file: !3, line: 680, type: !75)
!3726 = !DILocation(line: 680, column: 6, scope: !3700)
!3727 = !DILocalVariable(name: "page_size", scope: !3700, file: !3, line: 680, type: !75)
!3728 = !DILocation(line: 680, column: 19, scope: !3700)
!3729 = !DILocalVariable(name: "ret", scope: !3700, file: !3, line: 681, type: !70)
!3730 = !DILocation(line: 681, column: 6, scope: !3700)
!3731 = !DILocation(line: 683, column: 7, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 683, column: 6)
!3733 = !DILocation(line: 683, column: 13, scope: !3732)
!3734 = !DILocation(line: 683, column: 17, scope: !3732)
!3735 = !DILocation(line: 683, column: 6, scope: !3700)
!3736 = !DILocation(line: 684, column: 3, scope: !3732)
!3737 = !DILocation(line: 686, column: 6, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 686, column: 6)
!3739 = !DILocation(line: 686, column: 13, scope: !3738)
!3740 = !DILocation(line: 686, column: 20, scope: !3738)
!3741 = !DILocation(line: 686, column: 25, scope: !3738)
!3742 = !DILocation(line: 686, column: 37, scope: !3738)
!3743 = !DILocation(line: 686, column: 18, scope: !3738)
!3744 = !DILocation(line: 686, column: 6, scope: !3700)
!3745 = !DILocation(line: 687, column: 3, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 686, column: 42)
!3747 = !DILocation(line: 688, column: 3, scope: !3746)
!3748 = !DILocation(line: 692, column: 9, scope: !3700)
!3749 = !DILocation(line: 692, column: 16, scope: !3700)
!3750 = !DILocation(line: 692, column: 28, scope: !3700)
!3751 = !DILocation(line: 692, column: 26, scope: !3700)
!3752 = !DILocation(line: 692, column: 7, scope: !3700)
!3753 = !DILocation(line: 693, column: 14, scope: !3700)
!3754 = !DILocation(line: 693, column: 21, scope: !3700)
!3755 = !DILocation(line: 693, column: 2, scope: !3700)
!3756 = !DILocation(line: 695, column: 21, scope: !3700)
!3757 = !DILocation(line: 695, column: 16, scope: !3700)
!3758 = !DILocation(line: 695, column: 26, scope: !3700)
!3759 = !DILocation(line: 695, column: 33, scope: !3700)
!3760 = !DILocation(line: 695, column: 24, scope: !3700)
!3761 = !DILocation(line: 695, column: 14, scope: !3700)
!3762 = !DILocation(line: 698, column: 6, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 698, column: 6)
!3764 = !DILocation(line: 698, column: 20, scope: !3763)
!3765 = !DILocation(line: 698, column: 18, scope: !3763)
!3766 = !DILocation(line: 698, column: 27, scope: !3763)
!3767 = !DILocation(line: 698, column: 34, scope: !3763)
!3768 = !DILocation(line: 698, column: 24, scope: !3763)
!3769 = !DILocation(line: 698, column: 6, scope: !3700)
!3770 = !DILocation(line: 699, column: 28, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 698, column: 45)
!3772 = !DILocation(line: 699, column: 33, scope: !3771)
!3773 = !DILocation(line: 699, column: 40, scope: !3771)
!3774 = !DILocation(line: 699, column: 46, scope: !3771)
!3775 = !DILocation(line: 699, column: 52, scope: !3771)
!3776 = !DILocation(line: 699, column: 57, scope: !3771)
!3777 = !DILocation(line: 699, column: 9, scope: !3771)
!3778 = !DILocation(line: 699, column: 7, scope: !3771)
!3779 = !DILocation(line: 700, column: 8, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 700, column: 7)
!3781 = !DILocation(line: 700, column: 7, scope: !3771)
!3782 = !DILocation(line: 701, column: 15, scope: !3780)
!3783 = !DILocation(line: 701, column: 5, scope: !3780)
!3784 = !DILocation(line: 701, column: 12, scope: !3780)
!3785 = !DILocation(line: 701, column: 4, scope: !3780)
!3786 = !DILocation(line: 702, column: 2, scope: !3771)
!3787 = !DILocalVariable(name: "i", scope: !3788, file: !3, line: 703, type: !75)
!3788 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 702, column: 9)
!3789 = !DILocation(line: 703, column: 7, scope: !3788)
!3790 = !DILocation(line: 706, column: 15, scope: !3788)
!3791 = !DILocation(line: 706, column: 22, scope: !3788)
!3792 = !DILocation(line: 706, column: 34, scope: !3788)
!3793 = !DILocation(line: 706, column: 32, scope: !3788)
!3794 = !DILocation(line: 706, column: 13, scope: !3788)
!3795 = !DILocation(line: 708, column: 28, scope: !3788)
!3796 = !DILocation(line: 708, column: 33, scope: !3788)
!3797 = !DILocation(line: 708, column: 40, scope: !3788)
!3798 = !DILocation(line: 708, column: 46, scope: !3788)
!3799 = !DILocation(line: 708, column: 52, scope: !3788)
!3800 = !DILocation(line: 709, column: 5, scope: !3788)
!3801 = !DILocation(line: 708, column: 9, scope: !3788)
!3802 = !DILocation(line: 708, column: 7, scope: !3788)
!3803 = !DILocation(line: 710, column: 7, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 710, column: 7)
!3805 = !DILocation(line: 710, column: 7, scope: !3788)
!3806 = !DILocation(line: 711, column: 4, scope: !3804)
!3807 = !DILocation(line: 713, column: 15, scope: !3804)
!3808 = !DILocation(line: 713, column: 5, scope: !3804)
!3809 = !DILocation(line: 713, column: 12, scope: !3804)
!3810 = !DILocation(line: 716, column: 12, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 716, column: 3)
!3812 = !DILocation(line: 716, column: 10, scope: !3811)
!3813 = !DILocation(line: 716, column: 8, scope: !3811)
!3814 = !DILocation(line: 716, column: 23, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 716, column: 3)
!3816 = !DILocation(line: 716, column: 27, scope: !3815)
!3817 = !DILocation(line: 716, column: 25, scope: !3815)
!3818 = !DILocation(line: 716, column: 3, scope: !3811)
!3819 = !DILocation(line: 717, column: 16, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 716, column: 48)
!3821 = !DILocation(line: 717, column: 22, scope: !3820)
!3822 = !DILocation(line: 717, column: 20, scope: !3820)
!3823 = !DILocation(line: 717, column: 14, scope: !3820)
!3824 = !DILocation(line: 718, column: 8, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 718, column: 8)
!3826 = !DILocation(line: 718, column: 20, scope: !3825)
!3827 = !DILocation(line: 718, column: 27, scope: !3825)
!3828 = !DILocation(line: 718, column: 18, scope: !3825)
!3829 = !DILocation(line: 718, column: 8, scope: !3820)
!3830 = !DILocation(line: 719, column: 17, scope: !3825)
!3831 = !DILocation(line: 719, column: 24, scope: !3825)
!3832 = !DILocation(line: 719, column: 15, scope: !3825)
!3833 = !DILocation(line: 719, column: 5, scope: !3825)
!3834 = !DILocation(line: 721, column: 29, scope: !3820)
!3835 = !DILocation(line: 721, column: 34, scope: !3820)
!3836 = !DILocation(line: 721, column: 41, scope: !3820)
!3837 = !DILocation(line: 721, column: 47, scope: !3820)
!3838 = !DILocation(line: 721, column: 54, scope: !3820)
!3839 = !DILocation(line: 721, column: 52, scope: !3820)
!3840 = !DILocation(line: 722, column: 6, scope: !3820)
!3841 = !DILocation(line: 722, column: 12, scope: !3820)
!3842 = !DILocation(line: 722, column: 10, scope: !3820)
!3843 = !DILocation(line: 722, column: 15, scope: !3820)
!3844 = !DILocation(line: 721, column: 10, scope: !3820)
!3845 = !DILocation(line: 721, column: 8, scope: !3820)
!3846 = !DILocation(line: 723, column: 8, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 723, column: 8)
!3848 = !DILocation(line: 723, column: 8, scope: !3820)
!3849 = !DILocation(line: 724, column: 5, scope: !3847)
!3850 = !DILocation(line: 726, column: 16, scope: !3847)
!3851 = !DILocation(line: 726, column: 6, scope: !3847)
!3852 = !DILocation(line: 726, column: 13, scope: !3847)
!3853 = !DILocation(line: 727, column: 3, scope: !3820)
!3854 = !DILocation(line: 716, column: 37, scope: !3815)
!3855 = !DILocation(line: 716, column: 34, scope: !3815)
!3856 = !DILocation(line: 716, column: 3, scope: !3815)
!3857 = distinct !{!3857, !3818, !3858}
!3858 = !DILocation(line: 727, column: 3, scope: !3811)
!3859 = !DILabel(scope: !3700, name: "err_write", file: !3, line: 730)
!3860 = !DILocation(line: 730, column: 1, scope: !3700)
!3861 = !DILocation(line: 731, column: 16, scope: !3700)
!3862 = !DILocation(line: 731, column: 23, scope: !3700)
!3863 = !DILocation(line: 731, column: 2, scope: !3700)
!3864 = !DILocation(line: 733, column: 9, scope: !3700)
!3865 = !DILocation(line: 733, column: 2, scope: !3700)
!3866 = !DILocation(line: 734, column: 1, scope: !3700)
!3867 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2874, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3868 = !DILocalVariable(name: "dev", arg: 1, scope: !3867, file: !30, line: 655, type: !2125)
!3869 = !DILocation(line: 655, column: 58, scope: !3867)
!3870 = !DILocation(line: 657, column: 9, scope: !3867)
!3871 = !DILocation(line: 657, column: 14, scope: !3867)
!3872 = !DILocation(line: 657, column: 2, scope: !3867)
!3873 = distinct !DISubprogram(name: "spear_smi_wait_till_ready", scope: !3, file: !3, line: 264, type: !3874, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!70, !2458, !75, !66}
!3876 = !DILocalVariable(name: "dev", arg: 1, scope: !3873, file: !3, line: 264, type: !2458)
!3877 = !DILocation(line: 264, column: 56, scope: !3873)
!3878 = !DILocalVariable(name: "bank", arg: 2, scope: !3873, file: !3, line: 264, type: !75)
!3879 = !DILocation(line: 264, column: 65, scope: !3873)
!3880 = !DILocalVariable(name: "timeout", arg: 3, scope: !3873, file: !3, line: 265, type: !66)
!3881 = !DILocation(line: 265, column: 17, scope: !3873)
!3882 = !DILocalVariable(name: "finish", scope: !3873, file: !3, line: 267, type: !66)
!3883 = !DILocation(line: 267, column: 16, scope: !3873)
!3884 = !DILocalVariable(name: "status", scope: !3873, file: !3, line: 268, type: !70)
!3885 = !DILocation(line: 268, column: 6, scope: !3873)
!3886 = !DILocation(line: 270, column: 11, scope: !3873)
!3887 = !DILocation(line: 270, column: 21, scope: !3873)
!3888 = !DILocation(line: 270, column: 19, scope: !3873)
!3889 = !DILocation(line: 270, column: 9, scope: !3873)
!3890 = !DILocation(line: 271, column: 2, scope: !3873)
!3891 = !DILocation(line: 272, column: 30, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 271, column: 5)
!3893 = !DILocation(line: 272, column: 35, scope: !3892)
!3894 = !DILocation(line: 272, column: 12, scope: !3892)
!3895 = !DILocation(line: 272, column: 10, scope: !3892)
!3896 = !DILocation(line: 273, column: 7, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 273, column: 7)
!3898 = !DILocation(line: 273, column: 14, scope: !3897)
!3899 = !DILocation(line: 273, column: 7, scope: !3892)
!3900 = !DILocation(line: 274, column: 8, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 274, column: 8)
!3902 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 273, column: 19)
!3903 = !DILocation(line: 274, column: 15, scope: !3901)
!3904 = !DILocation(line: 274, column: 8, scope: !3902)
!3905 = !DILocation(line: 275, column: 5, scope: !3901)
!3906 = !DILocation(line: 276, column: 11, scope: !3902)
!3907 = !DILocation(line: 276, column: 4, scope: !3902)
!3908 = !DILocation(line: 277, column: 16, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 277, column: 14)
!3910 = !DILocation(line: 277, column: 23, scope: !3909)
!3911 = !DILocation(line: 277, column: 14, scope: !3897)
!3912 = !DILocation(line: 278, column: 4, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3909, file: !3, line: 277, column: 34)
!3914 = !DILocation(line: 281, column: 3, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 281, column: 3)
!3916 = !DILocation(line: 282, column: 2, scope: !3892)
!3917 = !DILocation(line: 282, column: 12, scope: !3873)
!3918 = !DILocation(line: 282, column: 11, scope: !3873)
!3919 = distinct !{!3919, !3890, !3920}
!3920 = !DILocation(line: 282, column: 42, scope: !3873)
!3921 = !DILocation(line: 284, column: 2, scope: !3873)
!3922 = !DILocation(line: 285, column: 2, scope: !3873)
!3923 = !DILocation(line: 286, column: 1, scope: !3873)
!3924 = distinct !DISubprogram(name: "get_flash_index", scope: !3, file: !3, line: 357, type: !3925, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!70, !75}
!3927 = !DILocalVariable(name: "flash_id", arg: 1, scope: !3924, file: !3, line: 357, type: !75)
!3928 = !DILocation(line: 357, column: 32, scope: !3924)
!3929 = !DILocalVariable(name: "index", scope: !3924, file: !3, line: 359, type: !70)
!3930 = !DILocation(line: 359, column: 6, scope: !3924)
!3931 = !DILocation(line: 362, column: 13, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 362, column: 2)
!3933 = !DILocation(line: 362, column: 7, scope: !3932)
!3934 = !DILocation(line: 362, column: 18, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 362, column: 2)
!3936 = !DILocation(line: 362, column: 24, scope: !3935)
!3937 = !DILocation(line: 362, column: 2, scope: !3932)
!3938 = !DILocation(line: 363, column: 21, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 363, column: 7)
!3940 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 362, column: 62)
!3941 = !DILocation(line: 363, column: 7, scope: !3939)
!3942 = !DILocation(line: 363, column: 28, scope: !3939)
!3943 = !DILocation(line: 363, column: 41, scope: !3939)
!3944 = !DILocation(line: 363, column: 38, scope: !3939)
!3945 = !DILocation(line: 363, column: 7, scope: !3940)
!3946 = !DILocation(line: 364, column: 11, scope: !3939)
!3947 = !DILocation(line: 364, column: 4, scope: !3939)
!3948 = !DILocation(line: 365, column: 2, scope: !3940)
!3949 = !DILocation(line: 362, column: 58, scope: !3935)
!3950 = !DILocation(line: 362, column: 2, scope: !3935)
!3951 = distinct !{!3951, !3937, !3952}
!3952 = !DILocation(line: 365, column: 2, scope: !3932)
!3953 = !DILocation(line: 368, column: 2, scope: !3924)
!3954 = !DILocation(line: 369, column: 1, scope: !3924)
!3955 = distinct !DISubprogram(name: "spear_smi_read_sr", scope: !3, file: !3, line: 221, type: !3346, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!3956 = !DILocalVariable(name: "dev", arg: 1, scope: !3955, file: !3, line: 221, type: !2458)
!3957 = !DILocation(line: 221, column: 48, scope: !3955)
!3958 = !DILocalVariable(name: "bank", arg: 2, scope: !3955, file: !3, line: 221, type: !75)
!3959 = !DILocation(line: 221, column: 57, scope: !3955)
!3960 = !DILocalVariable(name: "ret", scope: !3955, file: !3, line: 223, type: !70)
!3961 = !DILocation(line: 223, column: 6, scope: !3955)
!3962 = !DILocalVariable(name: "ctrlreg1", scope: !3955, file: !3, line: 224, type: !75)
!3963 = !DILocation(line: 224, column: 6, scope: !3955)
!3964 = !DILocation(line: 226, column: 14, scope: !3955)
!3965 = !DILocation(line: 226, column: 19, scope: !3955)
!3966 = !DILocation(line: 226, column: 2, scope: !3955)
!3967 = !DILocation(line: 227, column: 2, scope: !3955)
!3968 = !DILocation(line: 227, column: 7, scope: !3955)
!3969 = !DILocation(line: 227, column: 14, scope: !3955)
!3970 = !DILocation(line: 229, column: 19, scope: !3955)
!3971 = !DILocation(line: 229, column: 24, scope: !3955)
!3972 = !DILocation(line: 229, column: 32, scope: !3955)
!3973 = !DILocation(line: 229, column: 13, scope: !3955)
!3974 = !DILocation(line: 229, column: 11, scope: !3955)
!3975 = !DILocation(line: 231, column: 9, scope: !3955)
!3976 = !DILocation(line: 231, column: 18, scope: !3955)
!3977 = !DILocation(line: 231, column: 42, scope: !3955)
!3978 = !DILocation(line: 231, column: 47, scope: !3955)
!3979 = !DILocation(line: 231, column: 55, scope: !3955)
!3980 = !DILocation(line: 231, column: 2, scope: !3955)
!3981 = !DILocation(line: 234, column: 10, scope: !3955)
!3982 = !DILocation(line: 234, column: 15, scope: !3955)
!3983 = !DILocation(line: 234, column: 30, scope: !3955)
!3984 = !DILocation(line: 234, column: 46, scope: !3955)
!3985 = !DILocation(line: 235, column: 4, scope: !3955)
!3986 = !DILocation(line: 235, column: 9, scope: !3955)
!3987 = !DILocation(line: 235, column: 17, scope: !3955)
!3988 = !DILocation(line: 234, column: 2, scope: !3955)
!3989 = !DILocalVariable(name: "__ret", scope: !3990, file: !3, line: 238, type: !67)
!3990 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 238, column: 8)
!3991 = !DILocation(line: 238, column: 8, scope: !3990)
!3992 = !DILocation(line: 238, column: 8, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 238, column: 8)
!3994 = !DILocation(line: 238, column: 8, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 238, column: 8)
!3996 = !DILocalVariable(name: "__cond", scope: !3997, file: !3, line: 238, type: !306)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 238, column: 8)
!3998 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 238, column: 8)
!3999 = !DILocation(line: 238, column: 8, scope: !3997)
!4000 = !DILocation(line: 238, column: 8, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 238, column: 8)
!4002 = !DILocation(line: 238, column: 8, scope: !3998)
!4003 = !DILocalVariable(name: "__wq_entry", scope: !4004, file: !3, line: 238, type: !3414)
!4004 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 238, column: 8)
!4005 = !DILocation(line: 238, column: 8, scope: !4004)
!4006 = !DILocalVariable(name: "__ret", scope: !4004, file: !3, line: 238, type: !67)
!4007 = !DILocalVariable(name: "__int", scope: !4008, file: !3, line: 238, type: !67)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 238, column: 8)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 238, column: 8)
!4010 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 238, column: 8)
!4011 = !DILocation(line: 238, column: 8, scope: !4008)
!4012 = !DILocalVariable(name: "__cond", scope: !4013, file: !3, line: 238, type: !306)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 238, column: 8)
!4014 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 238, column: 8)
!4015 = !DILocation(line: 238, column: 8, scope: !4013)
!4016 = !DILocation(line: 238, column: 8, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 238, column: 8)
!4018 = !DILocation(line: 238, column: 8, scope: !4014)
!4019 = !DILocation(line: 238, column: 8, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 238, column: 8)
!4021 = !DILocation(line: 238, column: 8, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 238, column: 8)
!4023 = !DILocation(line: 238, column: 8, scope: !4009)
!4024 = distinct !{!4024, !4025, !4025}
!4025 = !DILocation(line: 238, column: 8, scope: !4010)
!4026 = !DILabel(scope: !4004, name: "__out", file: !3, line: 238)
!4027 = !DILocation(line: 238, column: 8, scope: !3955)
!4028 = !DILocation(line: 238, column: 6, scope: !3955)
!4029 = !DILocation(line: 242, column: 6, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 242, column: 6)
!4031 = !DILocation(line: 242, column: 10, scope: !4030)
!4032 = !DILocation(line: 242, column: 6, scope: !3955)
!4033 = !DILocation(line: 243, column: 9, scope: !4030)
!4034 = !DILocation(line: 243, column: 14, scope: !4030)
!4035 = !DILocation(line: 243, column: 21, scope: !4030)
!4036 = !DILocation(line: 243, column: 7, scope: !4030)
!4037 = !DILocation(line: 243, column: 3, scope: !4030)
!4038 = !DILocation(line: 244, column: 11, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 244, column: 11)
!4040 = !DILocation(line: 244, column: 15, scope: !4039)
!4041 = !DILocation(line: 244, column: 11, scope: !4030)
!4042 = !DILocation(line: 245, column: 7, scope: !4039)
!4043 = !DILocation(line: 245, column: 3, scope: !4039)
!4044 = !DILocation(line: 248, column: 9, scope: !3955)
!4045 = !DILocation(line: 248, column: 19, scope: !3955)
!4046 = !DILocation(line: 248, column: 24, scope: !3955)
!4047 = !DILocation(line: 248, column: 32, scope: !3955)
!4048 = !DILocation(line: 248, column: 2, scope: !3955)
!4049 = !DILocation(line: 249, column: 12, scope: !3955)
!4050 = !DILocation(line: 249, column: 17, scope: !3955)
!4051 = !DILocation(line: 249, column: 25, scope: !3955)
!4052 = !DILocation(line: 249, column: 2, scope: !3955)
!4053 = !DILocation(line: 250, column: 16, scope: !3955)
!4054 = !DILocation(line: 250, column: 21, scope: !3955)
!4055 = !DILocation(line: 250, column: 2, scope: !3955)
!4056 = !DILocation(line: 252, column: 9, scope: !3955)
!4057 = !DILocation(line: 252, column: 2, scope: !3955)
!4058 = distinct !DISubprogram(name: "___might_sleep", scope: !4059, file: !4059, line: 248, type: !4060, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4059 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !139, !70, !70}
!4062 = !DILocalVariable(name: "file", arg: 1, scope: !4058, file: !4059, line: 248, type: !139)
!4063 = !DILocation(line: 248, column: 49, scope: !4058)
!4064 = !DILocalVariable(name: "line", arg: 2, scope: !4058, file: !4059, line: 248, type: !70)
!4065 = !DILocation(line: 248, column: 59, scope: !4058)
!4066 = !DILocalVariable(name: "preempt_offset", arg: 3, scope: !4058, file: !4059, line: 249, type: !70)
!4067 = !DILocation(line: 249, column: 12, scope: !4058)
!4068 = !DILocation(line: 249, column: 30, scope: !4058)
!4069 = distinct !DISubprogram(name: "get_flash_data", scope: !3, file: !3, line: 208, type: !4070, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!71, !152}
!4072 = !DILocalVariable(name: "mtd", arg: 1, scope: !4069, file: !3, line: 208, type: !152)
!4073 = !DILocation(line: 208, column: 72, scope: !4069)
!4074 = !DILocalVariable(name: "__mptr", scope: !4075, file: !3, line: 210, type: !62)
!4075 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 210, column: 9)
!4076 = !DILocation(line: 210, column: 9, scope: !4075)
!4077 = !DILocation(line: 210, column: 9, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 210, column: 9)
!4079 = !DILocation(line: 210, column: 2, scope: !4069)
!4080 = distinct !DISubprogram(name: "get_sector_erase_cmd", scope: !3, file: !3, line: 420, type: !4081, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!75, !71, !75}
!4083 = !DILocalVariable(name: "flash", arg: 1, scope: !4080, file: !3, line: 420, type: !71)
!4084 = !DILocation(line: 420, column: 47, scope: !4080)
!4085 = !DILocalVariable(name: "offset", arg: 2, scope: !4080, file: !3, line: 420, type: !75)
!4086 = !DILocation(line: 420, column: 58, scope: !4080)
!4087 = !DILocalVariable(name: "cmd", scope: !4080, file: !3, line: 422, type: !75)
!4088 = !DILocation(line: 422, column: 6, scope: !4080)
!4089 = !DILocalVariable(name: "x", scope: !4080, file: !3, line: 423, type: !2302)
!4090 = !DILocation(line: 423, column: 6, scope: !4080)
!4091 = !DILocation(line: 423, column: 10, scope: !4080)
!4092 = !DILocation(line: 425, column: 9, scope: !4080)
!4093 = !DILocation(line: 425, column: 16, scope: !4080)
!4094 = !DILocation(line: 425, column: 2, scope: !4080)
!4095 = !DILocation(line: 425, column: 7, scope: !4080)
!4096 = !DILocation(line: 426, column: 9, scope: !4080)
!4097 = !DILocation(line: 426, column: 16, scope: !4080)
!4098 = !DILocation(line: 426, column: 2, scope: !4080)
!4099 = !DILocation(line: 426, column: 7, scope: !4080)
!4100 = !DILocation(line: 427, column: 9, scope: !4080)
!4101 = !DILocation(line: 427, column: 16, scope: !4080)
!4102 = !DILocation(line: 427, column: 2, scope: !4080)
!4103 = !DILocation(line: 427, column: 7, scope: !4080)
!4104 = !DILocation(line: 428, column: 9, scope: !4080)
!4105 = !DILocation(line: 428, column: 2, scope: !4080)
!4106 = !DILocation(line: 428, column: 7, scope: !4080)
!4107 = !DILocation(line: 430, column: 9, scope: !4080)
!4108 = !DILocation(line: 430, column: 2, scope: !4080)
!4109 = distinct !DISubprogram(name: "spear_smi_erase_sector", scope: !3, file: !3, line: 444, type: !4110, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!70, !2458, !75, !75, !75}
!4112 = !DILocalVariable(name: "dev", arg: 1, scope: !4109, file: !3, line: 444, type: !2458)
!4113 = !DILocation(line: 444, column: 53, scope: !4109)
!4114 = !DILocalVariable(name: "bank", arg: 2, scope: !4109, file: !3, line: 445, type: !75)
!4115 = !DILocation(line: 445, column: 7, scope: !4109)
!4116 = !DILocalVariable(name: "command", arg: 3, scope: !4109, file: !3, line: 445, type: !75)
!4117 = !DILocation(line: 445, column: 17, scope: !4109)
!4118 = !DILocalVariable(name: "bytes", arg: 4, scope: !4109, file: !3, line: 445, type: !75)
!4119 = !DILocation(line: 445, column: 30, scope: !4109)
!4120 = !DILocalVariable(name: "ctrlreg1", scope: !4109, file: !3, line: 447, type: !75)
!4121 = !DILocation(line: 447, column: 6, scope: !4109)
!4122 = !DILocalVariable(name: "ret", scope: !4109, file: !3, line: 448, type: !70)
!4123 = !DILocation(line: 448, column: 6, scope: !4109)
!4124 = !DILocation(line: 450, column: 34, scope: !4109)
!4125 = !DILocation(line: 450, column: 39, scope: !4109)
!4126 = !DILocation(line: 450, column: 8, scope: !4109)
!4127 = !DILocation(line: 450, column: 6, scope: !4109)
!4128 = !DILocation(line: 451, column: 6, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 451, column: 6)
!4130 = !DILocation(line: 451, column: 6, scope: !4109)
!4131 = !DILocation(line: 452, column: 10, scope: !4129)
!4132 = !DILocation(line: 452, column: 3, scope: !4129)
!4133 = !DILocation(line: 454, column: 31, scope: !4109)
!4134 = !DILocation(line: 454, column: 36, scope: !4109)
!4135 = !DILocation(line: 454, column: 8, scope: !4109)
!4136 = !DILocation(line: 454, column: 6, scope: !4109)
!4137 = !DILocation(line: 455, column: 6, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 455, column: 6)
!4139 = !DILocation(line: 455, column: 6, scope: !4109)
!4140 = !DILocation(line: 456, column: 10, scope: !4138)
!4141 = !DILocation(line: 456, column: 3, scope: !4138)
!4142 = !DILocation(line: 458, column: 14, scope: !4109)
!4143 = !DILocation(line: 458, column: 19, scope: !4109)
!4144 = !DILocation(line: 458, column: 2, scope: !4109)
!4145 = !DILocation(line: 460, column: 19, scope: !4109)
!4146 = !DILocation(line: 460, column: 24, scope: !4109)
!4147 = !DILocation(line: 460, column: 32, scope: !4109)
!4148 = !DILocation(line: 460, column: 13, scope: !4109)
!4149 = !DILocation(line: 460, column: 11, scope: !4109)
!4150 = !DILocation(line: 461, column: 10, scope: !4109)
!4151 = !DILocation(line: 461, column: 19, scope: !4109)
!4152 = !DILocation(line: 461, column: 30, scope: !4109)
!4153 = !DILocation(line: 461, column: 42, scope: !4109)
!4154 = !DILocation(line: 461, column: 47, scope: !4109)
!4155 = !DILocation(line: 461, column: 55, scope: !4109)
!4156 = !DILocation(line: 461, column: 2, scope: !4109)
!4157 = !DILocation(line: 464, column: 9, scope: !4109)
!4158 = !DILocation(line: 464, column: 18, scope: !4109)
!4159 = !DILocation(line: 464, column: 23, scope: !4109)
!4160 = !DILocation(line: 464, column: 31, scope: !4109)
!4161 = !DILocation(line: 464, column: 2, scope: !4109)
!4162 = !DILocation(line: 466, column: 10, scope: !4109)
!4163 = !DILocation(line: 466, column: 15, scope: !4109)
!4164 = !DILocation(line: 466, column: 30, scope: !4109)
!4165 = !DILocation(line: 466, column: 37, scope: !4109)
!4166 = !DILocation(line: 466, column: 47, scope: !4109)
!4167 = !DILocation(line: 466, column: 53, scope: !4109)
!4168 = !DILocation(line: 466, column: 44, scope: !4109)
!4169 = !DILocation(line: 467, column: 4, scope: !4109)
!4170 = !DILocation(line: 467, column: 9, scope: !4109)
!4171 = !DILocation(line: 467, column: 17, scope: !4109)
!4172 = !DILocation(line: 466, column: 2, scope: !4109)
!4173 = !DILocalVariable(name: "__ret", scope: !4174, file: !3, line: 469, type: !67)
!4174 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 469, column: 8)
!4175 = !DILocation(line: 469, column: 8, scope: !4174)
!4176 = !DILocation(line: 469, column: 8, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 469, column: 8)
!4178 = !DILocation(line: 469, column: 8, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 469, column: 8)
!4180 = !DILocalVariable(name: "__cond", scope: !4181, file: !3, line: 469, type: !306)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 469, column: 8)
!4182 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 469, column: 8)
!4183 = !DILocation(line: 469, column: 8, scope: !4181)
!4184 = !DILocation(line: 469, column: 8, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 469, column: 8)
!4186 = !DILocation(line: 469, column: 8, scope: !4182)
!4187 = !DILocalVariable(name: "__wq_entry", scope: !4188, file: !3, line: 469, type: !3414)
!4188 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 469, column: 8)
!4189 = !DILocation(line: 469, column: 8, scope: !4188)
!4190 = !DILocalVariable(name: "__ret", scope: !4188, file: !3, line: 469, type: !67)
!4191 = !DILocalVariable(name: "__int", scope: !4192, file: !3, line: 469, type: !67)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 469, column: 8)
!4193 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 469, column: 8)
!4194 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 469, column: 8)
!4195 = !DILocation(line: 469, column: 8, scope: !4192)
!4196 = !DILocalVariable(name: "__cond", scope: !4197, file: !3, line: 469, type: !306)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 469, column: 8)
!4198 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 469, column: 8)
!4199 = !DILocation(line: 469, column: 8, scope: !4197)
!4200 = !DILocation(line: 469, column: 8, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 469, column: 8)
!4202 = !DILocation(line: 469, column: 8, scope: !4198)
!4203 = !DILocation(line: 469, column: 8, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 469, column: 8)
!4205 = !DILocation(line: 469, column: 8, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 469, column: 8)
!4207 = !DILocation(line: 469, column: 8, scope: !4193)
!4208 = distinct !{!4208, !4209, !4209}
!4209 = !DILocation(line: 469, column: 8, scope: !4194)
!4210 = !DILabel(scope: !4188, name: "__out", file: !3, line: 469)
!4211 = !DILocation(line: 469, column: 8, scope: !4109)
!4212 = !DILocation(line: 469, column: 6, scope: !4109)
!4213 = !DILocation(line: 472, column: 6, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 472, column: 6)
!4215 = !DILocation(line: 472, column: 10, scope: !4214)
!4216 = !DILocation(line: 472, column: 6, scope: !4109)
!4217 = !DILocation(line: 473, column: 7, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 472, column: 16)
!4219 = !DILocation(line: 474, column: 3, scope: !4218)
!4220 = !DILocation(line: 475, column: 2, scope: !4218)
!4221 = !DILocation(line: 475, column: 13, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 475, column: 13)
!4223 = !DILocation(line: 475, column: 17, scope: !4222)
!4224 = !DILocation(line: 475, column: 13, scope: !4214)
!4225 = !DILocation(line: 476, column: 7, scope: !4222)
!4226 = !DILocation(line: 476, column: 3, scope: !4222)
!4227 = !DILocation(line: 479, column: 9, scope: !4109)
!4228 = !DILocation(line: 479, column: 19, scope: !4109)
!4229 = !DILocation(line: 479, column: 24, scope: !4109)
!4230 = !DILocation(line: 479, column: 32, scope: !4109)
!4231 = !DILocation(line: 479, column: 2, scope: !4109)
!4232 = !DILocation(line: 480, column: 12, scope: !4109)
!4233 = !DILocation(line: 480, column: 17, scope: !4109)
!4234 = !DILocation(line: 480, column: 25, scope: !4109)
!4235 = !DILocation(line: 480, column: 2, scope: !4109)
!4236 = !DILocation(line: 482, column: 16, scope: !4109)
!4237 = !DILocation(line: 482, column: 21, scope: !4109)
!4238 = !DILocation(line: 482, column: 2, scope: !4109)
!4239 = !DILocation(line: 483, column: 9, scope: !4109)
!4240 = !DILocation(line: 483, column: 2, scope: !4109)
!4241 = !DILocation(line: 484, column: 1, scope: !4109)
!4242 = distinct !DISubprogram(name: "spear_smi_write_enable", scope: !3, file: !3, line: 379, type: !3346, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4243 = !DILocalVariable(name: "dev", arg: 1, scope: !4242, file: !3, line: 379, type: !2458)
!4244 = !DILocation(line: 379, column: 53, scope: !4242)
!4245 = !DILocalVariable(name: "bank", arg: 2, scope: !4242, file: !3, line: 379, type: !75)
!4246 = !DILocation(line: 379, column: 62, scope: !4242)
!4247 = !DILocalVariable(name: "ret", scope: !4242, file: !3, line: 381, type: !70)
!4248 = !DILocation(line: 381, column: 6, scope: !4242)
!4249 = !DILocalVariable(name: "ctrlreg1", scope: !4242, file: !3, line: 382, type: !75)
!4250 = !DILocation(line: 382, column: 6, scope: !4242)
!4251 = !DILocation(line: 384, column: 14, scope: !4242)
!4252 = !DILocation(line: 384, column: 19, scope: !4242)
!4253 = !DILocation(line: 384, column: 2, scope: !4242)
!4254 = !DILocation(line: 385, column: 2, scope: !4242)
!4255 = !DILocation(line: 385, column: 7, scope: !4242)
!4256 = !DILocation(line: 385, column: 14, scope: !4242)
!4257 = !DILocation(line: 387, column: 19, scope: !4242)
!4258 = !DILocation(line: 387, column: 24, scope: !4242)
!4259 = !DILocation(line: 387, column: 32, scope: !4242)
!4260 = !DILocation(line: 387, column: 13, scope: !4242)
!4261 = !DILocation(line: 387, column: 11, scope: !4242)
!4262 = !DILocation(line: 389, column: 9, scope: !4242)
!4263 = !DILocation(line: 389, column: 18, scope: !4242)
!4264 = !DILocation(line: 389, column: 30, scope: !4242)
!4265 = !DILocation(line: 389, column: 35, scope: !4242)
!4266 = !DILocation(line: 389, column: 43, scope: !4242)
!4267 = !DILocation(line: 389, column: 2, scope: !4242)
!4268 = !DILocation(line: 392, column: 10, scope: !4242)
!4269 = !DILocation(line: 392, column: 15, scope: !4242)
!4270 = !DILocation(line: 392, column: 30, scope: !4242)
!4271 = !DILocation(line: 392, column: 35, scope: !4242)
!4272 = !DILocation(line: 392, column: 43, scope: !4242)
!4273 = !DILocation(line: 392, column: 48, scope: !4242)
!4274 = !DILocation(line: 392, column: 56, scope: !4242)
!4275 = !DILocation(line: 392, column: 2, scope: !4242)
!4276 = !DILocalVariable(name: "__ret", scope: !4277, file: !3, line: 394, type: !67)
!4277 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 394, column: 8)
!4278 = !DILocation(line: 394, column: 8, scope: !4277)
!4279 = !DILocation(line: 394, column: 8, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 394, column: 8)
!4281 = !DILocation(line: 394, column: 8, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 394, column: 8)
!4283 = !DILocalVariable(name: "__cond", scope: !4284, file: !3, line: 394, type: !306)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 394, column: 8)
!4285 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 394, column: 8)
!4286 = !DILocation(line: 394, column: 8, scope: !4284)
!4287 = !DILocation(line: 394, column: 8, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 394, column: 8)
!4289 = !DILocation(line: 394, column: 8, scope: !4285)
!4290 = !DILocalVariable(name: "__wq_entry", scope: !4291, file: !3, line: 394, type: !3414)
!4291 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 394, column: 8)
!4292 = !DILocation(line: 394, column: 8, scope: !4291)
!4293 = !DILocalVariable(name: "__ret", scope: !4291, file: !3, line: 394, type: !67)
!4294 = !DILocalVariable(name: "__int", scope: !4295, file: !3, line: 394, type: !67)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 394, column: 8)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 394, column: 8)
!4297 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 394, column: 8)
!4298 = !DILocation(line: 394, column: 8, scope: !4295)
!4299 = !DILocalVariable(name: "__cond", scope: !4300, file: !3, line: 394, type: !306)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 394, column: 8)
!4301 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 394, column: 8)
!4302 = !DILocation(line: 394, column: 8, scope: !4300)
!4303 = !DILocation(line: 394, column: 8, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 394, column: 8)
!4305 = !DILocation(line: 394, column: 8, scope: !4301)
!4306 = !DILocation(line: 394, column: 8, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 394, column: 8)
!4308 = !DILocation(line: 394, column: 8, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 394, column: 8)
!4310 = !DILocation(line: 394, column: 8, scope: !4296)
!4311 = distinct !{!4311, !4312, !4312}
!4312 = !DILocation(line: 394, column: 8, scope: !4297)
!4313 = !DILabel(scope: !4291, name: "__out", file: !3, line: 394)
!4314 = !DILocation(line: 394, column: 8, scope: !4242)
!4315 = !DILocation(line: 394, column: 6, scope: !4242)
!4316 = !DILocation(line: 398, column: 9, scope: !4242)
!4317 = !DILocation(line: 398, column: 19, scope: !4242)
!4318 = !DILocation(line: 398, column: 24, scope: !4242)
!4319 = !DILocation(line: 398, column: 32, scope: !4242)
!4320 = !DILocation(line: 398, column: 2, scope: !4242)
!4321 = !DILocation(line: 399, column: 12, scope: !4242)
!4322 = !DILocation(line: 399, column: 17, scope: !4242)
!4323 = !DILocation(line: 399, column: 25, scope: !4242)
!4324 = !DILocation(line: 399, column: 2, scope: !4242)
!4325 = !DILocation(line: 401, column: 6, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 401, column: 6)
!4327 = !DILocation(line: 401, column: 10, scope: !4326)
!4328 = !DILocation(line: 401, column: 6, scope: !4242)
!4329 = !DILocation(line: 402, column: 7, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 401, column: 16)
!4331 = !DILocation(line: 403, column: 3, scope: !4330)
!4332 = !DILocation(line: 405, column: 2, scope: !4330)
!4333 = !DILocation(line: 405, column: 13, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 405, column: 13)
!4335 = !DILocation(line: 405, column: 17, scope: !4334)
!4336 = !DILocation(line: 405, column: 13, scope: !4326)
!4337 = !DILocation(line: 407, column: 7, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 407, column: 7)
!4339 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 405, column: 22)
!4340 = !DILocation(line: 407, column: 12, scope: !4338)
!4341 = !DILocation(line: 407, column: 28, scope: !4338)
!4342 = !DILocation(line: 407, column: 33, scope: !4338)
!4343 = !DILocation(line: 407, column: 24, scope: !4338)
!4344 = !DILocation(line: 407, column: 19, scope: !4338)
!4345 = !DILocation(line: 407, column: 7, scope: !4339)
!4346 = !DILocation(line: 408, column: 8, scope: !4338)
!4347 = !DILocation(line: 408, column: 4, scope: !4338)
!4348 = !DILocation(line: 410, column: 4, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 409, column: 8)
!4350 = !DILocation(line: 411, column: 8, scope: !4349)
!4351 = !DILocation(line: 413, column: 2, scope: !4339)
!4352 = !DILocation(line: 415, column: 16, scope: !4242)
!4353 = !DILocation(line: 415, column: 21, scope: !4242)
!4354 = !DILocation(line: 415, column: 2, scope: !4242)
!4355 = !DILocation(line: 416, column: 9, scope: !4242)
!4356 = !DILocation(line: 416, column: 2, scope: !4242)
!4357 = distinct !DISubprogram(name: "spear_smi_cpy_toio", scope: !3, file: !3, line: 615, type: !4358, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!70, !2458, !75, !62, !1311, !209}
!4360 = !DILocalVariable(name: "dev", arg: 1, scope: !4357, file: !3, line: 615, type: !2458)
!4361 = !DILocation(line: 615, column: 56, scope: !4357)
!4362 = !DILocalVariable(name: "bank", arg: 2, scope: !4357, file: !3, line: 615, type: !75)
!4363 = !DILocation(line: 615, column: 65, scope: !4357)
!4364 = !DILocalVariable(name: "dest", arg: 3, scope: !4357, file: !3, line: 616, type: !62)
!4365 = !DILocation(line: 616, column: 17, scope: !4357)
!4366 = !DILocalVariable(name: "src", arg: 4, scope: !4357, file: !3, line: 616, type: !1311)
!4367 = !DILocation(line: 616, column: 35, scope: !4357)
!4368 = !DILocalVariable(name: "len", arg: 5, scope: !4357, file: !3, line: 616, type: !209)
!4369 = !DILocation(line: 616, column: 47, scope: !4357)
!4370 = !DILocalVariable(name: "ret", scope: !4357, file: !3, line: 618, type: !70)
!4371 = !DILocation(line: 618, column: 6, scope: !4357)
!4372 = !DILocalVariable(name: "ctrlreg1", scope: !4357, file: !3, line: 619, type: !75)
!4373 = !DILocation(line: 619, column: 6, scope: !4357)
!4374 = !DILocation(line: 622, column: 34, scope: !4357)
!4375 = !DILocation(line: 622, column: 39, scope: !4357)
!4376 = !DILocation(line: 622, column: 8, scope: !4357)
!4377 = !DILocation(line: 622, column: 6, scope: !4357)
!4378 = !DILocation(line: 623, column: 6, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 623, column: 6)
!4380 = !DILocation(line: 623, column: 6, scope: !4357)
!4381 = !DILocation(line: 624, column: 10, scope: !4379)
!4382 = !DILocation(line: 624, column: 3, scope: !4379)
!4383 = !DILocation(line: 627, column: 31, scope: !4357)
!4384 = !DILocation(line: 627, column: 36, scope: !4357)
!4385 = !DILocation(line: 627, column: 8, scope: !4357)
!4386 = !DILocation(line: 627, column: 6, scope: !4357)
!4387 = !DILocation(line: 628, column: 6, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 628, column: 6)
!4389 = !DILocation(line: 628, column: 6, scope: !4357)
!4390 = !DILocation(line: 629, column: 10, scope: !4388)
!4391 = !DILocation(line: 629, column: 3, scope: !4388)
!4392 = !DILocation(line: 632, column: 14, scope: !4357)
!4393 = !DILocation(line: 632, column: 19, scope: !4357)
!4394 = !DILocation(line: 632, column: 2, scope: !4357)
!4395 = !DILocation(line: 634, column: 19, scope: !4357)
!4396 = !DILocation(line: 634, column: 24, scope: !4357)
!4397 = !DILocation(line: 634, column: 32, scope: !4357)
!4398 = !DILocation(line: 634, column: 13, scope: !4357)
!4399 = !DILocation(line: 634, column: 11, scope: !4357)
!4400 = !DILocation(line: 635, column: 10, scope: !4357)
!4401 = !DILocation(line: 635, column: 19, scope: !4357)
!4402 = !DILocation(line: 635, column: 30, scope: !4357)
!4403 = !DILocation(line: 635, column: 42, scope: !4357)
!4404 = !DILocation(line: 635, column: 47, scope: !4357)
!4405 = !DILocation(line: 635, column: 55, scope: !4357)
!4406 = !DILocation(line: 635, column: 2, scope: !4357)
!4407 = !DILocation(line: 649, column: 6, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 649, column: 6)
!4409 = !DILocation(line: 649, column: 35, scope: !4408)
!4410 = !DILocation(line: 650, column: 6, scope: !4408)
!4411 = !DILocation(line: 649, column: 6, scope: !4357)
!4412 = !DILocation(line: 651, column: 15, scope: !4408)
!4413 = !DILocation(line: 651, column: 21, scope: !4408)
!4414 = !DILocation(line: 651, column: 26, scope: !4408)
!4415 = !DILocation(line: 651, column: 3, scope: !4408)
!4416 = !DILocation(line: 653, column: 27, scope: !4408)
!4417 = !DILocation(line: 653, column: 33, scope: !4408)
!4418 = !DILocation(line: 653, column: 38, scope: !4408)
!4419 = !DILocation(line: 653, column: 3, scope: !4408)
!4420 = !DILocation(line: 655, column: 9, scope: !4357)
!4421 = !DILocation(line: 655, column: 19, scope: !4357)
!4422 = !DILocation(line: 655, column: 24, scope: !4357)
!4423 = !DILocation(line: 655, column: 32, scope: !4357)
!4424 = !DILocation(line: 655, column: 2, scope: !4357)
!4425 = !DILocation(line: 657, column: 16, scope: !4357)
!4426 = !DILocation(line: 657, column: 21, scope: !4357)
!4427 = !DILocation(line: 657, column: 2, scope: !4357)
!4428 = !DILocation(line: 658, column: 2, scope: !4357)
!4429 = !DILocation(line: 659, column: 1, scope: !4357)
!4430 = distinct !DISubprogram(name: "spear_smi_memcpy_toio_b", scope: !3, file: !3, line: 602, type: !4431, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !3317, !1311, !209}
!4433 = !DILocalVariable(name: "dest", arg: 1, scope: !4430, file: !3, line: 602, type: !3317)
!4434 = !DILocation(line: 602, column: 60, scope: !4430)
!4435 = !DILocalVariable(name: "src", arg: 2, scope: !4430, file: !3, line: 603, type: !1311)
!4436 = !DILocation(line: 603, column: 21, scope: !4430)
!4437 = !DILocalVariable(name: "len", arg: 3, scope: !4430, file: !3, line: 603, type: !209)
!4438 = !DILocation(line: 603, column: 33, scope: !4430)
!4439 = !DILocalVariable(name: "from", scope: !4430, file: !3, line: 605, type: !4440)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!4442 = !DILocation(line: 605, column: 23, scope: !4430)
!4443 = !DILocation(line: 605, column: 30, scope: !4430)
!4444 = !DILocation(line: 607, column: 2, scope: !4430)
!4445 = !DILocation(line: 607, column: 9, scope: !4430)
!4446 = !DILocation(line: 608, column: 6, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 607, column: 14)
!4448 = !DILocation(line: 609, column: 11, scope: !4447)
!4449 = !DILocation(line: 609, column: 10, scope: !4447)
!4450 = !DILocation(line: 609, column: 17, scope: !4447)
!4451 = !DILocation(line: 609, column: 3, scope: !4447)
!4452 = !DILocation(line: 610, column: 7, scope: !4447)
!4453 = !DILocation(line: 611, column: 7, scope: !4447)
!4454 = distinct !{!4454, !4444, !4455}
!4455 = !DILocation(line: 612, column: 2, scope: !4430)
!4456 = !DILocation(line: 613, column: 1, scope: !4430)
!4457 = distinct !DISubprogram(name: "writeb", scope: !3304, file: !3304, line: 65, type: !4458, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !120, !3317}
!4460 = !DILocalVariable(name: "val", arg: 1, scope: !4457, file: !3304, line: 65, type: !120)
!4461 = !DILocation(line: 65, column: 1, scope: !4457)
!4462 = !DILocalVariable(name: "addr", arg: 2, scope: !4457, file: !3304, line: 65, type: !3317)
!4463 = !{i32 -2143653705}
!4464 = distinct !DISubprogram(name: "spear_smi_suspend", scope: !3, file: !3, line: 1074, type: !1812, scopeLine: 1075, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4465 = !DILocalVariable(name: "dev", arg: 1, scope: !4464, file: !3, line: 1074, type: !1780)
!4466 = !DILocation(line: 1074, column: 45, scope: !4464)
!4467 = !DILocalVariable(name: "sdev", scope: !4464, file: !3, line: 1076, type: !2458)
!4468 = !DILocation(line: 1076, column: 20, scope: !4464)
!4469 = !DILocation(line: 1076, column: 43, scope: !4464)
!4470 = !DILocation(line: 1076, column: 27, scope: !4464)
!4471 = !DILocation(line: 1078, column: 6, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 1078, column: 6)
!4473 = !DILocation(line: 1078, column: 11, scope: !4472)
!4474 = !DILocation(line: 1078, column: 14, scope: !4472)
!4475 = !DILocation(line: 1078, column: 20, scope: !4472)
!4476 = !DILocation(line: 1078, column: 6, scope: !4464)
!4477 = !DILocation(line: 1079, column: 25, scope: !4472)
!4478 = !DILocation(line: 1079, column: 31, scope: !4472)
!4479 = !DILocation(line: 1079, column: 3, scope: !4472)
!4480 = !DILocation(line: 1081, column: 2, scope: !4464)
!4481 = distinct !DISubprogram(name: "spear_smi_resume", scope: !3, file: !3, line: 1084, type: !1812, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !107)
!4482 = !DILocalVariable(name: "dev", arg: 1, scope: !4481, file: !3, line: 1084, type: !1780)
!4483 = !DILocation(line: 1084, column: 44, scope: !4481)
!4484 = !DILocalVariable(name: "sdev", scope: !4481, file: !3, line: 1086, type: !2458)
!4485 = !DILocation(line: 1086, column: 20, scope: !4481)
!4486 = !DILocation(line: 1086, column: 43, scope: !4481)
!4487 = !DILocation(line: 1086, column: 27, scope: !4481)
!4488 = !DILocalVariable(name: "ret", scope: !4481, file: !3, line: 1087, type: !70)
!4489 = !DILocation(line: 1087, column: 6, scope: !4481)
!4490 = !DILocation(line: 1089, column: 6, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 1089, column: 6)
!4492 = !DILocation(line: 1089, column: 11, scope: !4491)
!4493 = !DILocation(line: 1089, column: 14, scope: !4491)
!4494 = !DILocation(line: 1089, column: 20, scope: !4491)
!4495 = !DILocation(line: 1089, column: 6, scope: !4481)
!4496 = !DILocation(line: 1090, column: 28, scope: !4491)
!4497 = !DILocation(line: 1090, column: 34, scope: !4491)
!4498 = !DILocation(line: 1090, column: 9, scope: !4491)
!4499 = !DILocation(line: 1090, column: 7, scope: !4491)
!4500 = !DILocation(line: 1090, column: 3, scope: !4491)
!4501 = !DILocation(line: 1092, column: 7, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 1092, column: 6)
!4503 = !DILocation(line: 1092, column: 6, scope: !4481)
!4504 = !DILocation(line: 1093, column: 21, scope: !4502)
!4505 = !DILocation(line: 1093, column: 3, scope: !4502)
!4506 = !DILocation(line: 1094, column: 9, scope: !4481)
!4507 = !DILocation(line: 1094, column: 2, scope: !4481)
