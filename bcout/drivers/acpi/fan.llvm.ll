; ModuleID = '../bcout/drivers/acpi/fan.llvm.bc'
source_filename = "drivers/acpi/fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_acpi_fan_driver_init6:\09\09\09"
module asm ".long\09acpi_fan_driver_init - .\09\09\09"
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_fan = type { i8, %struct.acpi_fan_fif, %struct.acpi_fan_fps*, i32, %struct.thermal_cooling_device* }
%struct.acpi_fan_fif = type { i64, i64, i64, i64 }
%struct.acpi_fan_fps = type { i64, i64, i64, i64, i64, [20 x i8], %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
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
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.41 = type { i32, i32, %union.acpi_object* }
%struct.anon.38 = type { i32, i64 }

@__UNIQUE_ID_author173 = internal constant [28 x i8] c"fan.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description174 = internal constant [32 x i8] c"fan.description=ACPI Fan Driver\00", section ".modinfo", align 1, !dbg !2445
@__UNIQUE_ID_file175 = internal constant [26 x i8] c"fan.file=drivers/acpi/fan\00", section ".modinfo", align 1, !dbg !2448
@__UNIQUE_ID_license176 = internal constant [16 x i8] c"fan.license=GPL\00", section ".modinfo", align 1, !dbg !2453
@__UNIQUE_ID___addressable_acpi_fan_driver_init182 = internal global i8* bitcast (i32 ()* @acpi_fan_driver_init to i8*), section ".discard.addressable", align 8, !dbg !2456
@acpi_fan_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @acpi_fan_probe, i32 (%struct.platform_device*)* @acpi_fan_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* getelementptr inbounds ([5 x %struct.acpi_device_id], [5 x %struct.acpi_device_id]* @fan_device_ids, i32 0, i32 0), i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @acpi_fan_pm, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2465
@__exitcall_acpi_fan_driver_exit = internal global void ()* @acpi_fan_driver_exit, section ".exitcall.exit", align 8, !dbg !2458
@.str = private unnamed_addr constant [9 x i8] c"acpi-fan\00", align 1
@fan_device_ids = internal constant [5 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"PNP0C0B\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INT3404\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INTC1044\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INTC1048\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2566
@acpi_fan_pm = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_fan_resume, i32 (%struct.device*)* @acpi_fan_suspend, i32 (%struct.device*)* @acpi_fan_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* @acpi_fan_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2569
@.str.1 = private unnamed_addr constant [19 x i8] c"No memory for fan\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to set initial power state\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PNP0C0B\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Fan\00", align 1
@fan_cooling_ops = internal constant %struct.thermal_cooling_device_ops { i32 (%struct.thermal_cooling_device*, i64*)* @fan_get_max_state, i32 (%struct.thermal_cooling_device*, i64*)* @fan_get_cur_state, i32 (%struct.thermal_cooling_device*, i64)* @fan_set_cur_state, i32 (%struct.thermal_cooling_device*, i32*)* null, i32 (%struct.thermal_cooling_device*, i64, i32*)* null, i32 (%struct.thermal_cooling_device*, i32, i64*)* null }, align 8, !dbg !2524
@.str.5 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Failed to create sysfs link 'thermal_cooling'\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to create sysfs link 'device'\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"_FIF\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"_FPS\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"_FSL\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"_FST\00", align 1
@__const.acpi_fan_get_fif.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"NNNN\00", align 1
@__const.acpi_fan_get_fif.format = private unnamed_addr constant %struct.acpi_buffer { i64 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"Invalid _FIF data\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Invalid _FIF element\0A\00", align 1
@__const.acpi_fan_get_fps.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"Invalid _FPS data\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Not enough memory\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"NNNNN\00", align 1
@__const.acpi_fan_get_fps.format = private unnamed_addr constant %struct.acpi_buffer { i64 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0) }, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"Invalid _FPS element\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"state%d\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"not-defined:\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%lld:\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"not-defined\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@__const.fan_get_state_acpi4.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.25 = private unnamed_addr constant [22 x i8] c"Get fan state failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Invalid _FST data\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Error updating fan power state\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_author173, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_description174, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_file175, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__UNIQUE_ID_license176, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_acpi_fan_driver_init182 to i8*), i8* bitcast (void ()* @acpi_fan_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_acpi_fan_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fan_driver_init() #0 section ".init.text" !dbg !2579 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @acpi_fan_driver, %struct.module* null) #6, !dbg !2582
  ret i32 %call, !dbg !2582
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_fan_driver_exit() #0 section ".exit.text" !dbg !2583 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @acpi_fan_driver) #6, !dbg !2584
  ret void, !dbg !2584
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fan_probe(%struct.platform_device* %pdev) #2 !dbg !2585 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %result = alloca i32, align 4
  %cdev = alloca %struct.thermal_cooling_device*, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2586, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2588, metadata !DIExpression()), !dbg !2589
  store i32 0, i32* %result, align 4, !dbg !2589
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev, metadata !2590, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !2592, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2610, metadata !DIExpression()), !dbg !2612
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2612
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2612
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 24, !dbg !2612
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2612
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2612
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2612
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #6, !dbg !2612
  br i1 %call, label %cond.true, label %cond.false, !dbg !2612

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2613, metadata !DIExpression()), !dbg !2615
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2615
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !2615
  store i8* %4, i8** %__mptr, align 8, !dbg !2615
  br label %do.body, !dbg !2615

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2616

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2615
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !2615
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2615
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !2616
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !2615
  br label %cond.end, !dbg !2612

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2612

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !2612
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2612
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2612
  store %struct.acpi_device* %8, %struct.acpi_device** %device, align 8, !dbg !2609
  call void @llvm.dbg.declare(metadata i8** %name, metadata !2618, metadata !DIExpression()), !dbg !2619
  %9 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2620
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 3, !dbg !2621
  %call3 = call i8* @devm_kzalloc(%struct.device* %dev2, i64 64, i32 3264) #6, !dbg !2622
  %10 = bitcast i8* %call3 to %struct.acpi_fan*, !dbg !2622
  store %struct.acpi_fan* %10, %struct.acpi_fan** %fan, align 8, !dbg !2623
  %11 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2624
  %tobool = icmp ne %struct.acpi_fan* %11, null, !dbg !2624
  br i1 %tobool, label %if.end, label %if.then, !dbg !2626

if.then:                                          ; preds = %cond.end
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2627
  %dev4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 21, !dbg !2627
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !2627
  store i32 -12, i32* %retval, align 4, !dbg !2629
  br label %return, !dbg !2629

if.end:                                           ; preds = %cond.end
  %13 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2630
  %14 = bitcast %struct.acpi_fan* %13 to i8*, !dbg !2630
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2631
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 20, !dbg !2632
  store i8* %14, i8** %driver_data, align 8, !dbg !2633
  %16 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2634
  %17 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2635
  %18 = bitcast %struct.acpi_fan* %17 to i8*, !dbg !2635
  call void @platform_set_drvdata(%struct.platform_device* %16, i8* %18) #6, !dbg !2636
  %19 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2637
  %call5 = call zeroext i1 @acpi_fan_is_acpi4(%struct.acpi_device* %19) #6, !dbg !2639
  br i1 %call5, label %if.then6, label %if.else, !dbg !2640

if.then6:                                         ; preds = %if.end
  %20 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2641
  %call7 = call i32 @acpi_fan_get_fif(%struct.acpi_device* %20) #6, !dbg !2643
  store i32 %call7, i32* %result, align 4, !dbg !2644
  %21 = load i32, i32* %result, align 4, !dbg !2645
  %tobool8 = icmp ne i32 %21, 0, !dbg !2645
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2647

if.then9:                                         ; preds = %if.then6
  %22 = load i32, i32* %result, align 4, !dbg !2648
  store i32 %22, i32* %retval, align 4, !dbg !2649
  br label %return, !dbg !2649

if.end10:                                         ; preds = %if.then6
  %23 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2650
  %call11 = call i32 @acpi_fan_get_fps(%struct.acpi_device* %23) #6, !dbg !2651
  store i32 %call11, i32* %result, align 4, !dbg !2652
  %24 = load i32, i32* %result, align 4, !dbg !2653
  %tobool12 = icmp ne i32 %24, 0, !dbg !2653
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2655

if.then13:                                        ; preds = %if.end10
  %25 = load i32, i32* %result, align 4, !dbg !2656
  store i32 %25, i32* %retval, align 4, !dbg !2657
  br label %return, !dbg !2657

if.end14:                                         ; preds = %if.end10
  %26 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2658
  %acpi4 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %26, i32 0, i32 0, !dbg !2659
  store i8 1, i8* %acpi4, align 8, !dbg !2660
  br label %if.end20, !dbg !2661

if.else:                                          ; preds = %if.end
  %27 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2662
  %call15 = call i32 @acpi_device_update_power(%struct.acpi_device* %27, i32* null) #6, !dbg !2664
  store i32 %call15, i32* %result, align 4, !dbg !2665
  %28 = load i32, i32* %result, align 4, !dbg !2666
  %tobool16 = icmp ne i32 %28, 0, !dbg !2666
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !2668

if.then17:                                        ; preds = %if.else
  %29 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2669
  %dev18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 21, !dbg !2669
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2669
  br label %err_end, !dbg !2671

if.end19:                                         ; preds = %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end14
  %30 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2672
  %name21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0, !dbg !2674
  %31 = load i8*, i8** %name21, align 8, !dbg !2674
  %call22 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 7) #6, !dbg !2675
  %tobool23 = icmp ne i32 %call22, 0, !dbg !2675
  br i1 %tobool23, label %if.else25, label %if.then24, !dbg !2676

if.then24:                                        ; preds = %if.end20
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %name, align 8, !dbg !2677
  br label %if.end26, !dbg !2678

if.else25:                                        ; preds = %if.end20
  %32 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2679
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 10, !dbg !2679
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !2679
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !2679
  store i8* %arraydecay, i8** %name, align 8, !dbg !2680
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then24
  %33 = load i8*, i8** %name, align 8, !dbg !2681
  %34 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2682
  %35 = bitcast %struct.acpi_device* %34 to i8*, !dbg !2682
  %call27 = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* %33, i8* %35, %struct.thermal_cooling_device_ops* @fan_cooling_ops) #6, !dbg !2683
  store %struct.thermal_cooling_device* %call27, %struct.thermal_cooling_device** %cdev, align 8, !dbg !2684
  %36 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !2685
  %37 = bitcast %struct.thermal_cooling_device* %36 to i8*, !dbg !2685
  %call28 = call zeroext i1 @IS_ERR(i8* %37) #6, !dbg !2687
  br i1 %call28, label %if.then29, label %if.end31, !dbg !2688

if.then29:                                        ; preds = %if.end26
  %38 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !2689
  %39 = bitcast %struct.thermal_cooling_device* %38 to i8*, !dbg !2689
  %call30 = call i64 @PTR_ERR(i8* %39) #6, !dbg !2691
  %conv = trunc i64 %call30 to i32, !dbg !2691
  store i32 %conv, i32* %result, align 4, !dbg !2692
  br label %err_end, !dbg !2693

if.end31:                                         ; preds = %if.end26
  %40 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !2694
  %41 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2695
  %cdev32 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %41, i32 0, i32 4, !dbg !2696
  store %struct.thermal_cooling_device* %40, %struct.thermal_cooling_device** %cdev32, align 8, !dbg !2697
  %42 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2698
  %dev33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 3, !dbg !2699
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev33, i32 0, i32 0, !dbg !2700
  %43 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !2701
  %device34 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %43, i32 0, i32 2, !dbg !2702
  %kobj35 = getelementptr inbounds %struct.device, %struct.device* %device34, i32 0, i32 0, !dbg !2703
  %call36 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2704
  store i32 %call36, i32* %result, align 4, !dbg !2705
  %44 = load i32, i32* %result, align 4, !dbg !2706
  %tobool37 = icmp ne i32 %44, 0, !dbg !2706
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !2708

if.then38:                                        ; preds = %if.end31
  %45 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2709
  %dev39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 3, !dbg !2709
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !2709
  br label %if.end40, !dbg !2709

if.end40:                                         ; preds = %if.then38, %if.end31
  %46 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !2710
  %device41 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %46, i32 0, i32 2, !dbg !2711
  %kobj42 = getelementptr inbounds %struct.device, %struct.device* %device41, i32 0, i32 0, !dbg !2712
  %47 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2713
  %dev43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 3, !dbg !2714
  %kobj44 = getelementptr inbounds %struct.device, %struct.device* %dev43, i32 0, i32 0, !dbg !2715
  %call45 = call i32 @sysfs_create_link(%struct.kobject* %kobj42, %struct.kobject* %kobj44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2716
  store i32 %call45, i32* %result, align 4, !dbg !2717
  %48 = load i32, i32* %result, align 4, !dbg !2718
  %tobool46 = icmp ne i32 %48, 0, !dbg !2718
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !2720

if.then47:                                        ; preds = %if.end40
  %49 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2721
  %dev48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 3, !dbg !2721
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !2721
  br label %err_end, !dbg !2723

if.end49:                                         ; preds = %if.end40
  store i32 0, i32* %retval, align 4, !dbg !2724
  br label %return, !dbg !2724

err_end:                                          ; preds = %if.then47, %if.then29, %if.then17
  call void @llvm.dbg.label(metadata !2725), !dbg !2726
  %50 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2727
  %acpi450 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %50, i32 0, i32 0, !dbg !2729
  %51 = load i8, i8* %acpi450, align 8, !dbg !2729
  %tobool51 = trunc i8 %51 to i1, !dbg !2729
  br i1 %tobool51, label %if.then52, label %if.end56, !dbg !2730

if.then52:                                        ; preds = %err_end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2731, metadata !DIExpression()), !dbg !2733
  store i32 0, i32* %i, align 4, !dbg !2734
  br label %for.cond, !dbg !2736

for.cond:                                         ; preds = %for.inc, %if.then52
  %52 = load i32, i32* %i, align 4, !dbg !2737
  %53 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2739
  %fps_count = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %53, i32 0, i32 3, !dbg !2740
  %54 = load i32, i32* %fps_count, align 8, !dbg !2740
  %cmp = icmp slt i32 %52, %54, !dbg !2741
  br i1 %cmp, label %for.body, label %for.end, !dbg !2742

for.body:                                         ; preds = %for.cond
  %55 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2743
  %dev54 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %55, i32 0, i32 21, !dbg !2744
  %kobj55 = getelementptr inbounds %struct.device, %struct.device* %dev54, i32 0, i32 0, !dbg !2745
  %56 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2746
  %fps = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %56, i32 0, i32 2, !dbg !2747
  %57 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !2747
  %58 = load i32, i32* %i, align 4, !dbg !2748
  %idxprom = sext i32 %58 to i64, !dbg !2746
  %arrayidx = getelementptr %struct.acpi_fan_fps, %struct.acpi_fan_fps* %57, i64 %idxprom, !dbg !2746
  %dev_attr = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %arrayidx, i32 0, i32 6, !dbg !2749
  %attr = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr, i32 0, i32 0, !dbg !2750
  call void @sysfs_remove_file(%struct.kobject* %kobj55, %struct.attribute* %attr) #6, !dbg !2751
  br label %for.inc, !dbg !2751

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i, align 4, !dbg !2752
  %inc = add i32 %59, 1, !dbg !2752
  store i32 %inc, i32* %i, align 4, !dbg !2752
  br label %for.cond, !dbg !2753, !llvm.loop !2754

for.end:                                          ; preds = %for.cond
  br label %if.end56, !dbg !2756

if.end56:                                         ; preds = %for.end, %err_end
  %60 = load i32, i32* %result, align 4, !dbg !2757
  store i32 %60, i32* %retval, align 4, !dbg !2758
  br label %return, !dbg !2758

return:                                           ; preds = %if.end56, %if.end49, %if.then13, %if.then9, %if.then
  %61 = load i32, i32* %retval, align 4, !dbg !2759
  ret i32 %61, !dbg !2759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fan_remove(%struct.platform_device* %pdev) #2 !dbg !2760 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !2763, metadata !DIExpression()), !dbg !2764
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2765
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #6, !dbg !2766
  %1 = bitcast i8* %call to %struct.acpi_fan*, !dbg !2766
  store %struct.acpi_fan* %1, %struct.acpi_fan** %fan, align 8, !dbg !2764
  %2 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2767
  %acpi4 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %2, i32 0, i32 0, !dbg !2769
  %3 = load i8, i8* %acpi4, align 8, !dbg !2769
  %tobool = trunc i8 %3 to i1, !dbg !2769
  br i1 %tobool, label %if.then, label %if.end, !dbg !2770

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2774, metadata !DIExpression()), !dbg !2776
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2776
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 3, !dbg !2776
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 24, !dbg !2776
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2776
  store %struct.fwnode_handle* %5, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2776
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2776
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %6) #6, !dbg !2776
  br i1 %call1, label %cond.true, label %cond.false, !dbg !2776

cond.true:                                        ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2777, metadata !DIExpression()), !dbg !2779
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2779
  %8 = bitcast %struct.fwnode_handle* %7 to i8*, !dbg !2779
  store i8* %8, i8** %__mptr, align 8, !dbg !2779
  br label %do.body, !dbg !2779

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2780

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !2779
  %add.ptr = getelementptr i8, i8* %9, i64 -16, !dbg !2779
  %10 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2779
  store %struct.acpi_device* %10, %struct.acpi_device** %tmp2, align 8, !dbg !2780
  %11 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !2779
  br label %cond.end, !dbg !2776

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2776

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %11, %do.end ], [ null, %cond.false ], !dbg !2776
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2776
  %12 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2776
  store %struct.acpi_device* %12, %struct.acpi_device** %device, align 8, !dbg !2773
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2782, metadata !DIExpression()), !dbg !2783
  store i32 0, i32* %i, align 4, !dbg !2784
  br label %for.cond, !dbg !2786

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, i32* %i, align 4, !dbg !2787
  %14 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2789
  %fps_count = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %14, i32 0, i32 3, !dbg !2790
  %15 = load i32, i32* %fps_count, align 8, !dbg !2790
  %cmp = icmp slt i32 %13, %15, !dbg !2791
  br i1 %cmp, label %for.body, label %for.end, !dbg !2792

for.body:                                         ; preds = %for.cond
  %16 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2793
  %dev3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 21, !dbg !2794
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 0, !dbg !2795
  %17 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2796
  %fps = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %17, i32 0, i32 2, !dbg !2797
  %18 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !2797
  %19 = load i32, i32* %i, align 4, !dbg !2798
  %idxprom = sext i32 %19 to i64, !dbg !2796
  %arrayidx = getelementptr %struct.acpi_fan_fps, %struct.acpi_fan_fps* %18, i64 %idxprom, !dbg !2796
  %dev_attr = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %arrayidx, i32 0, i32 6, !dbg !2799
  %attr = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr, i32 0, i32 0, !dbg !2800
  call void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr) #6, !dbg !2801
  br label %for.inc, !dbg !2801

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !2802
  %inc = add i32 %20, 1, !dbg !2802
  store i32 %inc, i32* %i, align 4, !dbg !2802
  br label %for.cond, !dbg !2803, !llvm.loop !2804

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2806

if.end:                                           ; preds = %for.end, %entry
  %21 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2807
  %dev4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 3, !dbg !2808
  %kobj5 = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 0, !dbg !2809
  call void @sysfs_remove_link(%struct.kobject* %kobj5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2810
  %22 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2811
  %cdev = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %22, i32 0, i32 4, !dbg !2812
  %23 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !2812
  %device6 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %23, i32 0, i32 2, !dbg !2813
  %kobj7 = getelementptr inbounds %struct.device, %struct.device* %device6, i32 0, i32 0, !dbg !2814
  call void @sysfs_remove_link(%struct.kobject* %kobj7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2815
  %24 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2816
  %cdev8 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %24, i32 0, i32 4, !dbg !2817
  %25 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev8, align 8, !dbg !2817
  call void @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %25) #6, !dbg !2818
  ret i32 0, !dbg !2819
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2820 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2823, metadata !DIExpression()), !dbg !2824
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2825, metadata !DIExpression()), !dbg !2826
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2827, metadata !DIExpression()), !dbg !2828
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2829
  %1 = load i64, i64* %size.addr, align 8, !dbg !2830
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2831
  %or = or i32 %2, 256, !dbg !2832
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !2833
  ret i8* %call, !dbg !2834
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2835 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2838, metadata !DIExpression()), !dbg !2839
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2840, metadata !DIExpression()), !dbg !2841
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2842
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2843
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2844
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !2845
  ret void, !dbg !2846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_fan_is_acpi4(%struct.acpi_device* %device) #2 !dbg !2847 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !2850, metadata !DIExpression()), !dbg !2851
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2852
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 1, !dbg !2853
  %1 = load i8*, i8** %handle, align 8, !dbg !2853
  %call = call zeroext i1 @acpi_has_method(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2854
  br i1 %call, label %land.lhs.true, label %land.end, !dbg !2855

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2856
  %handle1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !2857
  %3 = load i8*, i8** %handle1, align 8, !dbg !2857
  %call2 = call zeroext i1 @acpi_has_method(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2858
  br i1 %call2, label %land.lhs.true3, label %land.end, !dbg !2859

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2860
  %handle4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !2861
  %5 = load i8*, i8** %handle4, align 8, !dbg !2861
  %call5 = call zeroext i1 @acpi_has_method(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2862
  br i1 %call5, label %land.rhs, label %land.end, !dbg !2863

land.rhs:                                         ; preds = %land.lhs.true3
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2864
  %handle6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1, !dbg !2865
  %7 = load i8*, i8** %handle6, align 8, !dbg !2865
  %call7 = call zeroext i1 @acpi_has_method(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2866
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true3, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %call7, %land.rhs ], !dbg !2867
  ret i1 %8, !dbg !2868
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fan_get_fif(%struct.acpi_device* %device) #2 !dbg !2869 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  %format = alloca %struct.acpi_buffer, align 8
  %fif = alloca %struct.acpi_buffer, align 8
  %obj = alloca %union.acpi_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !2872, metadata !DIExpression()), !dbg !2878
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !2878
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_fan_get_fif.buffer to i8*), i64 16, i1 false), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !2879, metadata !DIExpression()), !dbg !2880
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2881
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %1) #6, !dbg !2882
  %2 = bitcast i8* %call to %struct.acpi_fan*, !dbg !2882
  store %struct.acpi_fan* %2, %struct.acpi_fan** %fan, align 8, !dbg !2880
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %format, metadata !2883, metadata !DIExpression()), !dbg !2884
  %3 = bitcast %struct.acpi_buffer* %format to i8*, !dbg !2884
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_fan_get_fif.format to i8*), i64 16, i1 false), !dbg !2884
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %fif, metadata !2885, metadata !DIExpression()), !dbg !2886
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %fif, i32 0, i32 0, !dbg !2887
  store i64 32, i64* %length, align 8, !dbg !2887
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %fif, i32 0, i32 1, !dbg !2887
  %4 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2888
  %fif1 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %4, i32 0, i32 1, !dbg !2889
  %5 = bitcast %struct.acpi_fan_fif* %fif1 to i8*, !dbg !2890
  store i8* %5, i8** %pointer, align 8, !dbg !2887
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !2891, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2893, metadata !DIExpression()), !dbg !2894
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2895
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1, !dbg !2896
  %7 = load i8*, i8** %handle, align 8, !dbg !2896
  %call2 = call i32 @acpi_evaluate_object(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #6, !dbg !2897
  store i32 %call2, i32* %status, align 4, !dbg !2898
  %8 = load i32, i32* %status, align 4, !dbg !2899
  %tobool = icmp ne i32 %8, 0, !dbg !2899
  br i1 %tobool, label %if.then, label %if.end, !dbg !2901

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %status, align 4, !dbg !2902
  store i32 %9, i32* %retval, align 4, !dbg !2903
  br label %return, !dbg !2903

if.end:                                           ; preds = %entry
  %pointer3 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !2904
  %10 = load i8*, i8** %pointer3, align 8, !dbg !2904
  %11 = bitcast i8* %10 to %union.acpi_object*, !dbg !2905
  store %union.acpi_object* %11, %union.acpi_object** %obj, align 8, !dbg !2906
  %12 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2907
  %tobool4 = icmp ne %union.acpi_object* %12, null, !dbg !2907
  br i1 %tobool4, label %lor.lhs.false, label %if.then5, !dbg !2909

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2910
  %type = bitcast %union.acpi_object* %13 to i32*, !dbg !2911
  %14 = load i32, i32* %type, align 8, !dbg !2911
  %cmp = icmp ne i32 %14, 4, !dbg !2912
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2913

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2914
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 21, !dbg !2914
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !2914
  store i32 -22, i32* %status, align 4, !dbg !2916
  br label %err, !dbg !2917

if.end6:                                          ; preds = %lor.lhs.false
  %16 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2918
  %call7 = call i32 @acpi_extract_package(%union.acpi_object* %16, %struct.acpi_buffer* %format, %struct.acpi_buffer* %fif) #6, !dbg !2919
  store i32 %call7, i32* %status, align 4, !dbg !2920
  %17 = load i32, i32* %status, align 4, !dbg !2921
  %tobool8 = icmp ne i32 %17, 0, !dbg !2921
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !2923

if.then9:                                         ; preds = %if.end6
  %18 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2924
  %dev10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 21, !dbg !2924
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2924
  store i32 -22, i32* %status, align 4, !dbg !2926
  br label %if.end11, !dbg !2927

if.end11:                                         ; preds = %if.then9, %if.end6
  br label %err, !dbg !2921

err:                                              ; preds = %if.end11, %if.then5
  call void @llvm.dbg.label(metadata !2928), !dbg !2929
  %19 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2930
  %20 = bitcast %union.acpi_object* %19 to i8*, !dbg !2930
  call void @kfree(i8* %20) #6, !dbg !2931
  %21 = load i32, i32* %status, align 4, !dbg !2932
  store i32 %21, i32* %retval, align 4, !dbg !2933
  br label %return, !dbg !2933

return:                                           ; preds = %err, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !2934
  ret i32 %22, !dbg !2934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fan_get_fps(%struct.acpi_device* %device) #2 !dbg !2935 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj = alloca %union.acpi_object*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %format = alloca %struct.acpi_buffer, align 8
  %fps20 = alloca %struct.acpi_buffer, align 8
  %fps39 = alloca %struct.acpi_fan_fps*, align 8
  %j = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !2938, metadata !DIExpression()), !dbg !2939
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2940
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #6, !dbg !2941
  %1 = bitcast i8* %call to %struct.acpi_fan*, !dbg !2941
  store %struct.acpi_fan* %1, %struct.acpi_fan** %fan, align 8, !dbg !2939
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !2942, metadata !DIExpression()), !dbg !2943
  %2 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !2943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_fan_get_fps.buffer to i8*), i64 16, i1 false), !dbg !2943
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2948, metadata !DIExpression()), !dbg !2949
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2950
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 1, !dbg !2951
  %4 = load i8*, i8** %handle, align 8, !dbg !2951
  %call1 = call i32 @acpi_evaluate_object(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #6, !dbg !2952
  store i32 %call1, i32* %status, align 4, !dbg !2953
  %5 = load i32, i32* %status, align 4, !dbg !2954
  %tobool = icmp ne i32 %5, 0, !dbg !2954
  br i1 %tobool, label %if.then, label %if.end, !dbg !2956

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4, !dbg !2957
  store i32 %6, i32* %retval, align 4, !dbg !2958
  br label %return, !dbg !2958

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !2959
  %7 = load i8*, i8** %pointer, align 8, !dbg !2959
  %8 = bitcast i8* %7 to %union.acpi_object*, !dbg !2960
  store %union.acpi_object* %8, %union.acpi_object** %obj, align 8, !dbg !2961
  %9 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2962
  %tobool2 = icmp ne %union.acpi_object* %9, null, !dbg !2962
  br i1 %tobool2, label %lor.lhs.false, label %if.then5, !dbg !2964

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2965
  %type = bitcast %union.acpi_object* %10 to i32*, !dbg !2966
  %11 = load i32, i32* %type, align 8, !dbg !2966
  %cmp = icmp ne i32 %11, 4, !dbg !2967
  br i1 %cmp, label %if.then5, label %lor.lhs.false3, !dbg !2968

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %12 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2969
  %package = bitcast %union.acpi_object* %12 to %struct.anon.41*, !dbg !2970
  %count = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package, i32 0, i32 1, !dbg !2971
  %13 = load i32, i32* %count, align 4, !dbg !2971
  %cmp4 = icmp ult i32 %13, 2, !dbg !2972
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2973

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  %14 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2974
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 21, !dbg !2974
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !2974
  store i32 -22, i32* %status, align 4, !dbg !2976
  br label %err, !dbg !2977

if.end6:                                          ; preds = %lor.lhs.false3
  %15 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2978
  %package7 = bitcast %union.acpi_object* %15 to %struct.anon.41*, !dbg !2979
  %count8 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package7, i32 0, i32 1, !dbg !2980
  %16 = load i32, i32* %count8, align 4, !dbg !2980
  %sub = sub i32 %16, 1, !dbg !2981
  %17 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2982
  %fps_count = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %17, i32 0, i32 3, !dbg !2983
  store i32 %sub, i32* %fps_count, align 8, !dbg !2984
  %18 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2985
  %dev9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 21, !dbg !2986
  %19 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2987
  %fps_count10 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %19, i32 0, i32 3, !dbg !2988
  %20 = load i32, i32* %fps_count10, align 8, !dbg !2988
  %conv = sext i32 %20 to i64, !dbg !2987
  %call11 = call i8* @devm_kcalloc(%struct.device* %dev9, i64 %conv, i64 96, i32 3264) #6, !dbg !2989
  %21 = bitcast i8* %call11 to %struct.acpi_fan_fps*, !dbg !2989
  %22 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2990
  %fps = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %22, i32 0, i32 2, !dbg !2991
  store %struct.acpi_fan_fps* %21, %struct.acpi_fan_fps** %fps, align 8, !dbg !2992
  %23 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !2993
  %fps12 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %23, i32 0, i32 2, !dbg !2995
  %24 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps12, align 8, !dbg !2995
  %tobool13 = icmp ne %struct.acpi_fan_fps* %24, null, !dbg !2993
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !2996

if.then14:                                        ; preds = %if.end6
  %25 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2997
  %dev15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 21, !dbg !2997
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !2997
  store i32 -12, i32* %status, align 4, !dbg !2999
  br label %err, !dbg !3000

if.end16:                                         ; preds = %if.end6
  store i32 0, i32* %i, align 4, !dbg !3001
  br label %for.cond, !dbg !3003

for.cond:                                         ; preds = %for.inc, %if.end16
  %26 = load i32, i32* %i, align 4, !dbg !3004
  %27 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3006
  %fps_count17 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %27, i32 0, i32 3, !dbg !3007
  %28 = load i32, i32* %fps_count17, align 8, !dbg !3007
  %cmp18 = icmp slt i32 %26, %28, !dbg !3008
  br i1 %cmp18, label %for.body, label %for.end, !dbg !3009

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %format, metadata !3010, metadata !DIExpression()), !dbg !3012
  %29 = bitcast %struct.acpi_buffer* %format to i8*, !dbg !3012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_fan_get_fps.format to i8*), i64 16, i1 false), !dbg !3012
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %fps20, metadata !3013, metadata !DIExpression()), !dbg !3014
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %fps20, i32 0, i32 0, !dbg !3015
  store i64 40, i64* %length, align 8, !dbg !3015
  %pointer21 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %fps20, i32 0, i32 1, !dbg !3015
  %30 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3016
  %fps22 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %30, i32 0, i32 2, !dbg !3017
  %31 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps22, align 8, !dbg !3017
  %32 = load i32, i32* %i, align 4, !dbg !3018
  %idxprom = sext i32 %32 to i64, !dbg !3016
  %arrayidx = getelementptr %struct.acpi_fan_fps, %struct.acpi_fan_fps* %31, i64 %idxprom, !dbg !3016
  %33 = bitcast %struct.acpi_fan_fps* %arrayidx to i8*, !dbg !3019
  store i8* %33, i8** %pointer21, align 8, !dbg !3015
  %34 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3020
  %package23 = bitcast %union.acpi_object* %34 to %struct.anon.41*, !dbg !3021
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package23, i32 0, i32 2, !dbg !3022
  %35 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3022
  %36 = load i32, i32* %i, align 4, !dbg !3023
  %add = add i32 %36, 1, !dbg !3024
  %idxprom24 = sext i32 %add to i64, !dbg !3020
  %arrayidx25 = getelementptr %union.acpi_object, %union.acpi_object* %35, i64 %idxprom24, !dbg !3020
  %call26 = call i32 @acpi_extract_package(%union.acpi_object* %arrayidx25, %struct.acpi_buffer* %format, %struct.acpi_buffer* %fps20) #6, !dbg !3025
  store i32 %call26, i32* %status, align 4, !dbg !3026
  %37 = load i32, i32* %status, align 4, !dbg !3027
  %tobool27 = icmp ne i32 %37, 0, !dbg !3027
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !3029

if.then28:                                        ; preds = %for.body
  %38 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3030
  %dev29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 21, !dbg !3030
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !3030
  br label %err, !dbg !3032

if.end30:                                         ; preds = %for.body
  br label %for.inc, !dbg !3033

for.inc:                                          ; preds = %if.end30
  %39 = load i32, i32* %i, align 4, !dbg !3034
  %inc = add i32 %39, 1, !dbg !3034
  store i32 %inc, i32* %i, align 4, !dbg !3034
  br label %for.cond, !dbg !3035, !llvm.loop !3036

for.end:                                          ; preds = %for.cond
  %40 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3038
  %fps31 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %40, i32 0, i32 2, !dbg !3039
  %41 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps31, align 8, !dbg !3039
  %42 = bitcast %struct.acpi_fan_fps* %41 to i8*, !dbg !3038
  %43 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3040
  %fps_count32 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %43, i32 0, i32 3, !dbg !3041
  %44 = load i32, i32* %fps_count32, align 8, !dbg !3041
  %conv33 = sext i32 %44 to i64, !dbg !3040
  call void @sort(i8* %42, i64 %conv33, i64 96, i32 (i8*, i8*)* @acpi_fan_speed_cmp, void (i8*, i8*, i32)* null) #6, !dbg !3042
  store i32 0, i32* %i, align 4, !dbg !3043
  br label %for.cond34, !dbg !3045

for.cond34:                                       ; preds = %for.inc72, %for.end
  %45 = load i32, i32* %i, align 4, !dbg !3046
  %46 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3048
  %fps_count35 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %46, i32 0, i32 3, !dbg !3049
  %47 = load i32, i32* %fps_count35, align 8, !dbg !3049
  %cmp36 = icmp slt i32 %45, %47, !dbg !3050
  br i1 %cmp36, label %for.body38, label %for.end74, !dbg !3051

for.body38:                                       ; preds = %for.cond34
  call void @llvm.dbg.declare(metadata %struct.acpi_fan_fps** %fps39, metadata !3052, metadata !DIExpression()), !dbg !3054
  %48 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3055
  %fps40 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %48, i32 0, i32 2, !dbg !3056
  %49 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps40, align 8, !dbg !3056
  %50 = load i32, i32* %i, align 4, !dbg !3057
  %idxprom41 = sext i32 %50 to i64, !dbg !3055
  %arrayidx42 = getelementptr %struct.acpi_fan_fps, %struct.acpi_fan_fps* %49, i64 %idxprom41, !dbg !3055
  store %struct.acpi_fan_fps* %arrayidx42, %struct.acpi_fan_fps** %fps39, align 8, !dbg !3054
  %51 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps39, align 8, !dbg !3058
  %name = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %51, i32 0, i32 5, !dbg !3059
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0, !dbg !3058
  %52 = load i32, i32* %i, align 4, !dbg !3060
  %call43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %52) #6, !dbg !3061
  br label %do.body, !dbg !3062

do.body:                                          ; preds = %for.body38
  br label %do.end, !dbg !3063

do.end:                                           ; preds = %do.body
  %53 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps39, align 8, !dbg !3065
  %dev_attr = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %53, i32 0, i32 6, !dbg !3066
  %show = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr, i32 0, i32 1, !dbg !3067
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_state, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show, align 8, !dbg !3068
  %54 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps39, align 8, !dbg !3069
  %dev_attr44 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %54, i32 0, i32 6, !dbg !3070
  %store = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr44, i32 0, i32 2, !dbg !3071
  store i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %store, align 8, !dbg !3072
  %55 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps39, align 8, !dbg !3073
  %name45 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %55, i32 0, i32 5, !dbg !3074
  %arraydecay46 = getelementptr inbounds [20 x i8], [20 x i8]* %name45, i64 0, i64 0, !dbg !3073
  %56 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps39, align 8, !dbg !3075
  %dev_attr47 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %56, i32 0, i32 6, !dbg !3076
  %attr = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr47, i32 0, i32 0, !dbg !3077
  %name48 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i32 0, i32 0, !dbg !3078
  store i8* %arraydecay46, i8** %name48, align 8, !dbg !3079
  %57 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps39, align 8, !dbg !3080
  %dev_attr49 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %57, i32 0, i32 6, !dbg !3081
  %attr50 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr49, i32 0, i32 0, !dbg !3082
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr50, i32 0, i32 1, !dbg !3083
  store i16 292, i16* %mode, align 8, !dbg !3084
  %58 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3085
  %dev51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %58, i32 0, i32 21, !dbg !3086
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev51, i32 0, i32 0, !dbg !3087
  %59 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps39, align 8, !dbg !3088
  %dev_attr52 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %59, i32 0, i32 6, !dbg !3089
  %attr53 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr52, i32 0, i32 0, !dbg !3090
  %call54 = call i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr53) #6, !dbg !3091
  store i32 %call54, i32* %status, align 4, !dbg !3092
  %60 = load i32, i32* %status, align 4, !dbg !3093
  %tobool55 = icmp ne i32 %60, 0, !dbg !3093
  br i1 %tobool55, label %if.then56, label %if.end71, !dbg !3095

if.then56:                                        ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3096, metadata !DIExpression()), !dbg !3098
  store i32 0, i32* %j, align 4, !dbg !3099
  br label %for.cond57, !dbg !3101

for.cond57:                                       ; preds = %for.inc68, %if.then56
  %61 = load i32, i32* %j, align 4, !dbg !3102
  %62 = load i32, i32* %i, align 4, !dbg !3104
  %cmp58 = icmp slt i32 %61, %62, !dbg !3105
  br i1 %cmp58, label %for.body60, label %for.end70, !dbg !3106

for.body60:                                       ; preds = %for.cond57
  %63 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3107
  %dev61 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 21, !dbg !3108
  %kobj62 = getelementptr inbounds %struct.device, %struct.device* %dev61, i32 0, i32 0, !dbg !3109
  %64 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3110
  %fps63 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %64, i32 0, i32 2, !dbg !3111
  %65 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps63, align 8, !dbg !3111
  %66 = load i32, i32* %j, align 4, !dbg !3112
  %idxprom64 = sext i32 %66 to i64, !dbg !3110
  %arrayidx65 = getelementptr %struct.acpi_fan_fps, %struct.acpi_fan_fps* %65, i64 %idxprom64, !dbg !3110
  %dev_attr66 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %arrayidx65, i32 0, i32 6, !dbg !3113
  %attr67 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %dev_attr66, i32 0, i32 0, !dbg !3114
  call void @sysfs_remove_file(%struct.kobject* %kobj62, %struct.attribute* %attr67) #6, !dbg !3115
  br label %for.inc68, !dbg !3115

for.inc68:                                        ; preds = %for.body60
  %67 = load i32, i32* %j, align 4, !dbg !3116
  %inc69 = add i32 %67, 1, !dbg !3116
  store i32 %inc69, i32* %j, align 4, !dbg !3116
  br label %for.cond57, !dbg !3117, !llvm.loop !3118

for.end70:                                        ; preds = %for.cond57
  br label %for.end74, !dbg !3120

if.end71:                                         ; preds = %do.end
  br label %for.inc72, !dbg !3121

for.inc72:                                        ; preds = %if.end71
  %68 = load i32, i32* %i, align 4, !dbg !3122
  %inc73 = add i32 %68, 1, !dbg !3122
  store i32 %inc73, i32* %i, align 4, !dbg !3122
  br label %for.cond34, !dbg !3123, !llvm.loop !3124

for.end74:                                        ; preds = %for.end70, %for.cond34
  br label %err, !dbg !3125

err:                                              ; preds = %for.end74, %if.then28, %if.then14, %if.then5
  call void @llvm.dbg.label(metadata !3126), !dbg !3127
  %69 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3128
  %70 = bitcast %union.acpi_object* %69 to i8*, !dbg !3128
  call void @kfree(i8* %70) #6, !dbg !3129
  %71 = load i32, i32* %status, align 4, !dbg !3130
  store i32 %71, i32* %retval, align 4, !dbg !3131
  br label %return, !dbg !3131

return:                                           ; preds = %err, %if.then
  %72 = load i32, i32* %retval, align 4, !dbg !3132
  ret i32 %72, !dbg !3132
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_device_update_power(%struct.acpi_device*, i32*) #1

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, i8*, %struct.thermal_cooling_device_ops*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !3133 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3137, metadata !DIExpression()), !dbg !3138
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3139
  %1 = ptrtoint i8* %0 to i64, !dbg !3139
  %2 = inttoptr i64 %1 to i8*, !dbg !3139
  %3 = ptrtoint i8* %2 to i64, !dbg !3139
  %cmp = icmp uge i64 %3, -4095, !dbg !3139
  %lnot = xor i1 %cmp, true, !dbg !3139
  %lnot1 = xor i1 %lnot, true, !dbg !3139
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3139
  %conv = sext i32 %lnot.ext to i64, !dbg !3139
  %tobool = icmp ne i64 %conv, 0, !dbg !3139
  ret i1 %tobool, !dbg !3140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !3141 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3144, metadata !DIExpression()), !dbg !3145
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3146
  %1 = ptrtoint i8* %0 to i64, !dbg !3147
  ret i64 %1, !dbg !3148
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr) #2 !dbg !3149 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3154, metadata !DIExpression()), !dbg !3155
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3156, metadata !DIExpression()), !dbg !3157
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3158
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3159
  call void @sysfs_remove_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #6, !dbg !3160
  ret void, !dbg !3161
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3162 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3165, metadata !DIExpression()), !dbg !3166
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3167, metadata !DIExpression()), !dbg !3168
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3169
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3170
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3171
  store i8* %0, i8** %driver_data, align 8, !dbg !3172
  ret void, !dbg !3173
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_has_method(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_driver_data(%struct.acpi_device* %d) #2 !dbg !3174 {
entry:
  %d.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %d, %struct.acpi_device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %d.addr, metadata !3177, metadata !DIExpression()), !dbg !3178
  %0 = load %struct.acpi_device*, %struct.acpi_device** %d.addr, align 8, !dbg !3179
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 20, !dbg !3180
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3180
  ret i8* %1, !dbg !3181
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_extract_package(%union.acpi_object*, %struct.acpi_buffer*, %struct.acpi_buffer*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kcalloc(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !3182 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3187, metadata !DIExpression()), !dbg !3188
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3189, metadata !DIExpression()), !dbg !3190
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3191, metadata !DIExpression()), !dbg !3192
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3193
  %1 = load i64, i64* %n.addr, align 8, !dbg !3194
  %2 = load i64, i64* %size.addr, align 8, !dbg !3195
  %3 = load i32, i32* %flags.addr, align 4, !dbg !3196
  %or = or i32 %3, 256, !dbg !3197
  %call = call i8* @devm_kmalloc_array(%struct.device* %0, i64 %1, i64 %2, i32 %or) #6, !dbg !3198
  ret i8* %call, !dbg !3199
}

; Function Attrs: noredzone
declare dso_local void @sort(i8*, i64, i64, i32 (i8*, i8*)*, void (i8*, i8*, i32)*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fan_speed_cmp(i8* %a, i8* %b) #2 !dbg !3200 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %fps1 = alloca %struct.acpi_fan_fps*, align 8
  %fps2 = alloca %struct.acpi_fan_fps*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.declare(metadata %struct.acpi_fan_fps** %fps1, metadata !3207, metadata !DIExpression()), !dbg !3210
  %0 = load i8*, i8** %a.addr, align 8, !dbg !3211
  %1 = bitcast i8* %0 to %struct.acpi_fan_fps*, !dbg !3211
  store %struct.acpi_fan_fps* %1, %struct.acpi_fan_fps** %fps1, align 8, !dbg !3210
  call void @llvm.dbg.declare(metadata %struct.acpi_fan_fps** %fps2, metadata !3212, metadata !DIExpression()), !dbg !3213
  %2 = load i8*, i8** %b.addr, align 8, !dbg !3214
  %3 = bitcast i8* %2 to %struct.acpi_fan_fps*, !dbg !3214
  store %struct.acpi_fan_fps* %3, %struct.acpi_fan_fps** %fps2, align 8, !dbg !3213
  %4 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps1, align 8, !dbg !3215
  %speed = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %4, i32 0, i32 2, !dbg !3216
  %5 = load i64, i64* %speed, align 8, !dbg !3216
  %6 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps2, align 8, !dbg !3217
  %speed1 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %6, i32 0, i32 2, !dbg !3218
  %7 = load i64, i64* %speed1, align 8, !dbg !3218
  %sub = sub i64 %5, %7, !dbg !3219
  %conv = trunc i64 %sub to i32, !dbg !3215
  ret i32 %conv, !dbg !3220
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @show_state(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !3221 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %fps = alloca %struct.acpi_fan_fps*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_fan_fps*, align 8
  %count = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3222, metadata !DIExpression()), !dbg !3223
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3224, metadata !DIExpression()), !dbg !3225
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3226, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.declare(metadata %struct.acpi_fan_fps** %fps, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3230, metadata !DIExpression()), !dbg !3232
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !3232
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !3232
  store i8* %1, i8** %__mptr, align 8, !dbg !3232
  br label %do.body, !dbg !3232

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3233

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3232
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !3232
  %3 = bitcast i8* %add.ptr to %struct.acpi_fan_fps*, !dbg !3232
  store %struct.acpi_fan_fps* %3, %struct.acpi_fan_fps** %tmp, align 8, !dbg !3233
  %4 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %tmp, align 8, !dbg !3232
  store %struct.acpi_fan_fps* %4, %struct.acpi_fan_fps** %fps, align 8, !dbg !3229
  call void @llvm.dbg.declare(metadata i32* %count, metadata !3235, metadata !DIExpression()), !dbg !3236
  %5 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3237
  %control = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %5, i32 0, i32 0, !dbg !3239
  %6 = load i64, i64* %control, align 8, !dbg !3239
  %cmp = icmp eq i64 %6, 4294967295, !dbg !3240
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3241

lor.lhs.false:                                    ; preds = %do.end
  %7 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3242
  %control1 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %7, i32 0, i32 0, !dbg !3243
  %8 = load i64, i64* %control1, align 8, !dbg !3243
  %cmp2 = icmp ugt i64 %8, 100, !dbg !3244
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3245

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !3246
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %9, i64 4096, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3247
  store i32 %call, i32* %count, align 4, !dbg !3248
  br label %if.end, !dbg !3249

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !3250
  %11 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3251
  %control3 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %11, i32 0, i32 0, !dbg !3252
  %12 = load i64, i64* %control3, align 8, !dbg !3252
  %call4 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %10, i64 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 %12) #6, !dbg !3253
  store i32 %call4, i32* %count, align 4, !dbg !3254
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3255
  %trip_point = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %13, i32 0, i32 1, !dbg !3257
  %14 = load i64, i64* %trip_point, align 8, !dbg !3257
  %cmp5 = icmp eq i64 %14, 4294967295, !dbg !3258
  br i1 %cmp5, label %if.then9, label %lor.lhs.false6, !dbg !3259

lor.lhs.false6:                                   ; preds = %if.end
  %15 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3260
  %trip_point7 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %15, i32 0, i32 1, !dbg !3261
  %16 = load i64, i64* %trip_point7, align 8, !dbg !3261
  %cmp8 = icmp ugt i64 %16, 9, !dbg !3262
  br i1 %cmp8, label %if.then9, label %if.else11, !dbg !3263

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !3264
  %18 = load i32, i32* %count, align 4, !dbg !3265
  %idxprom = sext i32 %18 to i64, !dbg !3264
  %arrayidx = getelementptr i8, i8* %17, i64 %idxprom, !dbg !3264
  %19 = load i32, i32* %count, align 4, !dbg !3266
  %conv = sext i32 %19 to i64, !dbg !3266
  %sub = sub i64 4096, %conv, !dbg !3267
  %call10 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx, i64 %sub, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3268
  %20 = load i32, i32* %count, align 4, !dbg !3269
  %add = add i32 %20, %call10, !dbg !3269
  store i32 %add, i32* %count, align 4, !dbg !3269
  br label %if.end19, !dbg !3270

if.else11:                                        ; preds = %lor.lhs.false6
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !3271
  %22 = load i32, i32* %count, align 4, !dbg !3272
  %idxprom12 = sext i32 %22 to i64, !dbg !3271
  %arrayidx13 = getelementptr i8, i8* %21, i64 %idxprom12, !dbg !3271
  %23 = load i32, i32* %count, align 4, !dbg !3273
  %conv14 = sext i32 %23 to i64, !dbg !3273
  %sub15 = sub i64 4096, %conv14, !dbg !3274
  %24 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3275
  %trip_point16 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %24, i32 0, i32 1, !dbg !3276
  %25 = load i64, i64* %trip_point16, align 8, !dbg !3276
  %call17 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx13, i64 %sub15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 %25) #6, !dbg !3277
  %26 = load i32, i32* %count, align 4, !dbg !3278
  %add18 = add i32 %26, %call17, !dbg !3278
  store i32 %add18, i32* %count, align 4, !dbg !3278
  br label %if.end19

if.end19:                                         ; preds = %if.else11, %if.then9
  %27 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3279
  %speed = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %27, i32 0, i32 2, !dbg !3281
  %28 = load i64, i64* %speed, align 8, !dbg !3281
  %cmp20 = icmp eq i64 %28, 4294967295, !dbg !3282
  br i1 %cmp20, label %if.then22, label %if.else29, !dbg !3283

if.then22:                                        ; preds = %if.end19
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !3284
  %30 = load i32, i32* %count, align 4, !dbg !3285
  %idxprom23 = sext i32 %30 to i64, !dbg !3284
  %arrayidx24 = getelementptr i8, i8* %29, i64 %idxprom23, !dbg !3284
  %31 = load i32, i32* %count, align 4, !dbg !3286
  %conv25 = sext i32 %31 to i64, !dbg !3286
  %sub26 = sub i64 4096, %conv25, !dbg !3287
  %call27 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx24, i64 %sub26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3288
  %32 = load i32, i32* %count, align 4, !dbg !3289
  %add28 = add i32 %32, %call27, !dbg !3289
  store i32 %add28, i32* %count, align 4, !dbg !3289
  br label %if.end37, !dbg !3290

if.else29:                                        ; preds = %if.end19
  %33 = load i8*, i8** %buf.addr, align 8, !dbg !3291
  %34 = load i32, i32* %count, align 4, !dbg !3292
  %idxprom30 = sext i32 %34 to i64, !dbg !3291
  %arrayidx31 = getelementptr i8, i8* %33, i64 %idxprom30, !dbg !3291
  %35 = load i32, i32* %count, align 4, !dbg !3293
  %conv32 = sext i32 %35 to i64, !dbg !3293
  %sub33 = sub i64 4096, %conv32, !dbg !3294
  %36 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3295
  %speed34 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %36, i32 0, i32 2, !dbg !3296
  %37 = load i64, i64* %speed34, align 8, !dbg !3296
  %call35 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx31, i64 %sub33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 %37) #6, !dbg !3297
  %38 = load i32, i32* %count, align 4, !dbg !3298
  %add36 = add i32 %38, %call35, !dbg !3298
  store i32 %add36, i32* %count, align 4, !dbg !3298
  br label %if.end37

if.end37:                                         ; preds = %if.else29, %if.then22
  %39 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3299
  %noise_level = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %39, i32 0, i32 3, !dbg !3301
  %40 = load i64, i64* %noise_level, align 8, !dbg !3301
  %cmp38 = icmp eq i64 %40, 4294967295, !dbg !3302
  br i1 %cmp38, label %if.then40, label %if.else47, !dbg !3303

if.then40:                                        ; preds = %if.end37
  %41 = load i8*, i8** %buf.addr, align 8, !dbg !3304
  %42 = load i32, i32* %count, align 4, !dbg !3305
  %idxprom41 = sext i32 %42 to i64, !dbg !3304
  %arrayidx42 = getelementptr i8, i8* %41, i64 %idxprom41, !dbg !3304
  %43 = load i32, i32* %count, align 4, !dbg !3306
  %conv43 = sext i32 %43 to i64, !dbg !3306
  %sub44 = sub i64 4096, %conv43, !dbg !3307
  %call45 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx42, i64 %sub44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3308
  %44 = load i32, i32* %count, align 4, !dbg !3309
  %add46 = add i32 %44, %call45, !dbg !3309
  store i32 %add46, i32* %count, align 4, !dbg !3309
  br label %if.end55, !dbg !3310

if.else47:                                        ; preds = %if.end37
  %45 = load i8*, i8** %buf.addr, align 8, !dbg !3311
  %46 = load i32, i32* %count, align 4, !dbg !3312
  %idxprom48 = sext i32 %46 to i64, !dbg !3311
  %arrayidx49 = getelementptr i8, i8* %45, i64 %idxprom48, !dbg !3311
  %47 = load i32, i32* %count, align 4, !dbg !3313
  %conv50 = sext i32 %47 to i64, !dbg !3313
  %sub51 = sub i64 4096, %conv50, !dbg !3314
  %48 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3315
  %noise_level52 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %48, i32 0, i32 3, !dbg !3316
  %49 = load i64, i64* %noise_level52, align 8, !dbg !3316
  %mul = mul i64 %49, 100, !dbg !3317
  %call53 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx49, i64 %sub51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 %mul) #6, !dbg !3318
  %50 = load i32, i32* %count, align 4, !dbg !3319
  %add54 = add i32 %50, %call53, !dbg !3319
  store i32 %add54, i32* %count, align 4, !dbg !3319
  br label %if.end55

if.end55:                                         ; preds = %if.else47, %if.then40
  %51 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3320
  %power = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %51, i32 0, i32 4, !dbg !3322
  %52 = load i64, i64* %power, align 8, !dbg !3322
  %cmp56 = icmp eq i64 %52, 4294967295, !dbg !3323
  br i1 %cmp56, label %if.then58, label %if.else65, !dbg !3324

if.then58:                                        ; preds = %if.end55
  %53 = load i8*, i8** %buf.addr, align 8, !dbg !3325
  %54 = load i32, i32* %count, align 4, !dbg !3326
  %idxprom59 = sext i32 %54 to i64, !dbg !3325
  %arrayidx60 = getelementptr i8, i8* %53, i64 %idxprom59, !dbg !3325
  %55 = load i32, i32* %count, align 4, !dbg !3327
  %conv61 = sext i32 %55 to i64, !dbg !3327
  %sub62 = sub i64 4096, %conv61, !dbg !3328
  %call63 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx60, i64 %sub62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3329
  %56 = load i32, i32* %count, align 4, !dbg !3330
  %add64 = add i32 %56, %call63, !dbg !3330
  store i32 %add64, i32* %count, align 4, !dbg !3330
  br label %if.end73, !dbg !3331

if.else65:                                        ; preds = %if.end55
  %57 = load i8*, i8** %buf.addr, align 8, !dbg !3332
  %58 = load i32, i32* %count, align 4, !dbg !3333
  %idxprom66 = sext i32 %58 to i64, !dbg !3332
  %arrayidx67 = getelementptr i8, i8* %57, i64 %idxprom66, !dbg !3332
  %59 = load i32, i32* %count, align 4, !dbg !3334
  %conv68 = sext i32 %59 to i64, !dbg !3334
  %sub69 = sub i64 4096, %conv68, !dbg !3335
  %60 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3336
  %power70 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %60, i32 0, i32 4, !dbg !3337
  %61 = load i64, i64* %power70, align 8, !dbg !3337
  %call71 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx67, i64 %sub69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 %61) #6, !dbg !3338
  %62 = load i32, i32* %count, align 4, !dbg !3339
  %add72 = add i32 %62, %call71, !dbg !3339
  store i32 %add72, i32* %count, align 4, !dbg !3339
  br label %if.end73

if.end73:                                         ; preds = %if.else65, %if.then58
  %63 = load i32, i32* %count, align 4, !dbg !3340
  %conv74 = sext i32 %63 to i64, !dbg !3340
  ret i64 %conv74, !dbg !3341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr) #2 !dbg !3342 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3345, metadata !DIExpression()), !dbg !3346
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3347, metadata !DIExpression()), !dbg !3348
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3349
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3350
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #6, !dbg !3351
  ret i32 %call, !dbg !3352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kmalloc_array(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #2 !dbg !3353 {
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
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3354, metadata !DIExpression()), !dbg !3355
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3356, metadata !DIExpression()), !dbg !3357
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3358, metadata !DIExpression()), !dbg !3359
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3360, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3364, metadata !DIExpression()), !dbg !3367
  %0 = load i64, i64* %n.addr, align 8, !dbg !3367
  store i64 %0, i64* %__a, align 8, !dbg !3367
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3368, metadata !DIExpression()), !dbg !3367
  %1 = load i64, i64* %size.addr, align 8, !dbg !3367
  store i64 %1, i64* %__b, align 8, !dbg !3367
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3369, metadata !DIExpression()), !dbg !3367
  store i64* %bytes, i64** %__d, align 8, !dbg !3367
  %cmp = icmp eq i64* %__a, %__b, !dbg !3367
  %conv = zext i1 %cmp to i32, !dbg !3367
  %2 = load i64*, i64** %__d, align 8, !dbg !3367
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3367
  %conv2 = zext i1 %cmp1 to i32, !dbg !3367
  %3 = load i64, i64* %__a, align 8, !dbg !3367
  %4 = load i64, i64* %__b, align 8, !dbg !3367
  %5 = load i64*, i64** %__d, align 8, !dbg !3367
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3367
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3367
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3367
  store i64 %8, i64* %5, align 8, !dbg !3367
  %frombool = zext i1 %7 to i8, !dbg !3367
  store i8 %frombool, i8* %tmp, align 1, !dbg !3367
  %9 = load i8, i8* %tmp, align 1, !dbg !3367
  %tobool = trunc i8 %9 to i1, !dbg !3367
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !3371
  %lnot = xor i1 %call, true, !dbg !3371
  %lnot3 = xor i1 %lnot, true, !dbg !3371
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3371
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3371
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3371
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3372

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3373
  br label %return, !dbg !3373

if.end:                                           ; preds = %entry
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3374
  %11 = load i64, i64* %bytes, align 8, !dbg !3375
  %12 = load i32, i32* %flags.addr, align 4, !dbg !3376
  %call6 = call noalias i8* @devm_kmalloc(%struct.device* %10, i64 %11, i32 %12) #6, !dbg !3377
  store i8* %call6, i8** %retval, align 8, !dbg !3378
  br label %return, !dbg !3378

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !3379
  ret i8* %13, !dbg !3379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !3380 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3384, metadata !DIExpression()), !dbg !3385
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3386
  %tobool = trunc i8 %0 to i1, !dbg !3386
  %lnot = xor i1 %tobool, true, !dbg !3386
  %lnot1 = xor i1 %lnot, true, !dbg !3386
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3386
  %conv = sext i32 %lnot.ext to i64, !dbg !3386
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3386
  ret i1 %tobool2, !dbg !3387
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject*, %struct.attribute*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fan_get_max_state(%struct.thermal_cooling_device* %cdev, i64* %state) #2 !dbg !3388 {
entry:
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !3389, metadata !DIExpression()), !dbg !3390
  store i64* %state, i64** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %state.addr, metadata !3391, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3393, metadata !DIExpression()), !dbg !3394
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !3395
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !3396
  %1 = load i8*, i8** %devdata, align 8, !dbg !3396
  %2 = bitcast i8* %1 to %struct.acpi_device*, !dbg !3395
  store %struct.acpi_device* %2, %struct.acpi_device** %device, align 8, !dbg !3394
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !3397, metadata !DIExpression()), !dbg !3398
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3399
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %3) #6, !dbg !3400
  %4 = bitcast i8* %call to %struct.acpi_fan*, !dbg !3400
  store %struct.acpi_fan* %4, %struct.acpi_fan** %fan, align 8, !dbg !3398
  %5 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3401
  %acpi4 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %5, i32 0, i32 0, !dbg !3403
  %6 = load i8, i8* %acpi4, align 8, !dbg !3403
  %tobool = trunc i8 %6 to i1, !dbg !3403
  br i1 %tobool, label %if.then, label %if.else, !dbg !3404

if.then:                                          ; preds = %entry
  %7 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3405
  %fps_count = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %7, i32 0, i32 3, !dbg !3406
  %8 = load i32, i32* %fps_count, align 8, !dbg !3406
  %sub = sub i32 %8, 1, !dbg !3407
  %conv = sext i32 %sub to i64, !dbg !3405
  %9 = load i64*, i64** %state.addr, align 8, !dbg !3408
  store i64 %conv, i64* %9, align 8, !dbg !3409
  br label %if.end, !dbg !3410

if.else:                                          ; preds = %entry
  %10 = load i64*, i64** %state.addr, align 8, !dbg !3411
  store i64 1, i64* %10, align 8, !dbg !3412
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !3413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fan_get_cur_state(%struct.thermal_cooling_device* %cdev, i64* %state) #2 !dbg !3414 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !3415, metadata !DIExpression()), !dbg !3416
  store i64* %state, i64** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %state.addr, metadata !3417, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3419, metadata !DIExpression()), !dbg !3420
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !3421
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !3422
  %1 = load i8*, i8** %devdata, align 8, !dbg !3422
  %2 = bitcast i8* %1 to %struct.acpi_device*, !dbg !3421
  store %struct.acpi_device* %2, %struct.acpi_device** %device, align 8, !dbg !3420
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !3423, metadata !DIExpression()), !dbg !3424
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3425
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %3) #6, !dbg !3426
  %4 = bitcast i8* %call to %struct.acpi_fan*, !dbg !3426
  store %struct.acpi_fan* %4, %struct.acpi_fan** %fan, align 8, !dbg !3424
  %5 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3427
  %acpi4 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %5, i32 0, i32 0, !dbg !3429
  %6 = load i8, i8* %acpi4, align 8, !dbg !3429
  %tobool = trunc i8 %6 to i1, !dbg !3429
  br i1 %tobool, label %if.then, label %if.else, !dbg !3430

if.then:                                          ; preds = %entry
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3431
  %8 = load i64*, i64** %state.addr, align 8, !dbg !3432
  %call1 = call i32 @fan_get_state_acpi4(%struct.acpi_device* %7, i64* %8) #6, !dbg !3433
  store i32 %call1, i32* %retval, align 4, !dbg !3434
  br label %return, !dbg !3434

if.else:                                          ; preds = %entry
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3435
  %10 = load i64*, i64** %state.addr, align 8, !dbg !3436
  %call2 = call i32 @fan_get_state(%struct.acpi_device* %9, i64* %10) #6, !dbg !3437
  store i32 %call2, i32* %retval, align 4, !dbg !3438
  br label %return, !dbg !3438

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3439
  ret i32 %11, !dbg !3439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fan_set_cur_state(%struct.thermal_cooling_device* %cdev, i64 %state) #2 !dbg !3440 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64, align 8
  %device = alloca %struct.acpi_device*, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i64 %state, i64* %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %state.addr, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3445, metadata !DIExpression()), !dbg !3446
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !3447
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !3448
  %1 = load i8*, i8** %devdata, align 8, !dbg !3448
  %2 = bitcast i8* %1 to %struct.acpi_device*, !dbg !3447
  store %struct.acpi_device* %2, %struct.acpi_device** %device, align 8, !dbg !3446
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !3449, metadata !DIExpression()), !dbg !3450
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3451
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %3) #6, !dbg !3452
  %4 = bitcast i8* %call to %struct.acpi_fan*, !dbg !3452
  store %struct.acpi_fan* %4, %struct.acpi_fan** %fan, align 8, !dbg !3450
  %5 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3453
  %acpi4 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %5, i32 0, i32 0, !dbg !3455
  %6 = load i8, i8* %acpi4, align 8, !dbg !3455
  %tobool = trunc i8 %6 to i1, !dbg !3455
  br i1 %tobool, label %if.then, label %if.else, !dbg !3456

if.then:                                          ; preds = %entry
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3457
  %8 = load i64, i64* %state.addr, align 8, !dbg !3458
  %call1 = call i32 @fan_set_state_acpi4(%struct.acpi_device* %7, i64 %8) #6, !dbg !3459
  store i32 %call1, i32* %retval, align 4, !dbg !3460
  br label %return, !dbg !3460

if.else:                                          ; preds = %entry
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3461
  %10 = load i64, i64* %state.addr, align 8, !dbg !3462
  %call2 = call i32 @fan_set_state(%struct.acpi_device* %9, i64 %10) #6, !dbg !3463
  store i32 %call2, i32* %retval, align 4, !dbg !3464
  br label %return, !dbg !3464

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3465
  ret i32 %11, !dbg !3465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fan_get_state_acpi4(%struct.acpi_device* %device, i64* %state) #2 !dbg !3466 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i64*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %status = alloca i32, align 4
  %control = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3469, metadata !DIExpression()), !dbg !3470
  store i64* %state, i64** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %state.addr, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !3473, metadata !DIExpression()), !dbg !3474
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !3474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.fan_get_state_acpi4.buffer to i8*), i64 16, i1 false), !dbg !3474
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !3475, metadata !DIExpression()), !dbg !3476
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3477
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %1) #6, !dbg !3478
  %2 = bitcast i8* %call to %struct.acpi_fan*, !dbg !3478
  store %struct.acpi_fan* %2, %struct.acpi_fan** %fan, align 8, !dbg !3476
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3481, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.declare(metadata i32* %control, metadata !3483, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3485, metadata !DIExpression()), !dbg !3486
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3487
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 1, !dbg !3488
  %4 = load i8*, i8** %handle, align 8, !dbg !3488
  %call1 = call i32 @acpi_evaluate_object(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #6, !dbg !3489
  store i32 %call1, i32* %status, align 4, !dbg !3490
  %5 = load i32, i32* %status, align 4, !dbg !3491
  %tobool = icmp ne i32 %5, 0, !dbg !3491
  br i1 %tobool, label %if.then, label %if.end, !dbg !3493

if.then:                                          ; preds = %entry
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3494
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 21, !dbg !3494
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !3494
  %7 = load i32, i32* %status, align 4, !dbg !3496
  store i32 %7, i32* %retval, align 4, !dbg !3497
  br label %return, !dbg !3497

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3498
  %8 = load i8*, i8** %pointer, align 8, !dbg !3498
  %9 = bitcast i8* %8 to %union.acpi_object*, !dbg !3499
  store %union.acpi_object* %9, %union.acpi_object** %obj, align 8, !dbg !3500
  %10 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3501
  %tobool2 = icmp ne %union.acpi_object* %10, null, !dbg !3501
  br i1 %tobool2, label %lor.lhs.false, label %if.then9, !dbg !3503

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3504
  %type = bitcast %union.acpi_object* %11 to i32*, !dbg !3505
  %12 = load i32, i32* %type, align 8, !dbg !3505
  %cmp = icmp ne i32 %12, 4, !dbg !3506
  br i1 %cmp, label %if.then9, label %lor.lhs.false3, !dbg !3507

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %13 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3508
  %package = bitcast %union.acpi_object* %13 to %struct.anon.41*, !dbg !3509
  %count = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package, i32 0, i32 1, !dbg !3510
  %14 = load i32, i32* %count, align 4, !dbg !3510
  %cmp4 = icmp ne i32 %14, 3, !dbg !3511
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5, !dbg !3512

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %15 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3513
  %package6 = bitcast %union.acpi_object* %15 to %struct.anon.41*, !dbg !3514
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package6, i32 0, i32 2, !dbg !3515
  %16 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3515
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %16, i64 1, !dbg !3513
  %type7 = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !3516
  %17 = load i32, i32* %type7, align 8, !dbg !3516
  %cmp8 = icmp ne i32 %17, 1, !dbg !3517
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !3518

if.then9:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %if.end
  %18 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3519
  %dev10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 21, !dbg !3519
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !3519
  store i32 -22, i32* %status, align 4, !dbg !3521
  br label %err, !dbg !3522

if.end11:                                         ; preds = %lor.lhs.false5
  %19 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3523
  %package12 = bitcast %union.acpi_object* %19 to %struct.anon.41*, !dbg !3524
  %elements13 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package12, i32 0, i32 2, !dbg !3525
  %20 = load %union.acpi_object*, %union.acpi_object** %elements13, align 8, !dbg !3525
  %arrayidx14 = getelementptr %union.acpi_object, %union.acpi_object* %20, i64 1, !dbg !3523
  %integer = bitcast %union.acpi_object* %arrayidx14 to %struct.anon.38*, !dbg !3526
  %value = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer, i32 0, i32 1, !dbg !3527
  %21 = load i64, i64* %value, align 8, !dbg !3527
  %conv = trunc i64 %21 to i32, !dbg !3523
  store i32 %conv, i32* %control, align 4, !dbg !3528
  store i32 0, i32* %i, align 4, !dbg !3529
  br label %for.cond, !dbg !3531

for.cond:                                         ; preds = %for.inc, %if.end11
  %22 = load i32, i32* %i, align 4, !dbg !3532
  %23 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3534
  %fps_count = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %23, i32 0, i32 3, !dbg !3535
  %24 = load i32, i32* %fps_count, align 8, !dbg !3535
  %cmp15 = icmp slt i32 %22, %24, !dbg !3536
  br i1 %cmp15, label %for.body, label %for.end, !dbg !3537

for.body:                                         ; preds = %for.cond
  %25 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3538
  %fif = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %25, i32 0, i32 1, !dbg !3541
  %fine_grain_ctrl = getelementptr inbounds %struct.acpi_fan_fif, %struct.acpi_fan_fif* %fif, i32 0, i32 1, !dbg !3542
  %26 = load i64, i64* %fine_grain_ctrl, align 8, !dbg !3542
  %tobool17 = icmp ne i64 %26, 0, !dbg !3538
  br i1 %tobool17, label %land.lhs.true, label %if.else, !dbg !3543

land.lhs.true:                                    ; preds = %for.body
  %27 = load i32, i32* %control, align 4, !dbg !3544
  %conv18 = sext i32 %27 to i64, !dbg !3544
  %28 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3545
  %fps = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %28, i32 0, i32 2, !dbg !3546
  %29 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3546
  %30 = load i32, i32* %i, align 4, !dbg !3547
  %idxprom = sext i32 %30 to i64, !dbg !3545
  %arrayidx19 = getelementptr %struct.acpi_fan_fps, %struct.acpi_fan_fps* %29, i64 %idxprom, !dbg !3545
  %control20 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %arrayidx19, i32 0, i32 0, !dbg !3548
  %31 = load i64, i64* %control20, align 8, !dbg !3548
  %cmp21 = icmp ult i64 %conv18, %31, !dbg !3549
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !3550

if.then23:                                        ; preds = %land.lhs.true
  %32 = load i32, i32* %i, align 4, !dbg !3551
  %cmp24 = icmp sgt i32 %32, 0, !dbg !3553
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !3554

cond.true:                                        ; preds = %if.then23
  %33 = load i32, i32* %i, align 4, !dbg !3555
  %sub = sub i32 %33, 1, !dbg !3556
  br label %cond.end, !dbg !3554

cond.false:                                       ; preds = %if.then23
  br label %cond.end, !dbg !3554

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !3554
  store i32 %cond, i32* %i, align 4, !dbg !3557
  br label %for.end, !dbg !3558

if.else:                                          ; preds = %land.lhs.true, %for.body
  %34 = load i32, i32* %control, align 4, !dbg !3559
  %conv26 = sext i32 %34 to i64, !dbg !3559
  %35 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3561
  %fps27 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %35, i32 0, i32 2, !dbg !3562
  %36 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps27, align 8, !dbg !3562
  %37 = load i32, i32* %i, align 4, !dbg !3563
  %idxprom28 = sext i32 %37 to i64, !dbg !3561
  %arrayidx29 = getelementptr %struct.acpi_fan_fps, %struct.acpi_fan_fps* %36, i64 %idxprom28, !dbg !3561
  %control30 = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %arrayidx29, i32 0, i32 0, !dbg !3564
  %38 = load i64, i64* %control30, align 8, !dbg !3564
  %cmp31 = icmp eq i64 %conv26, %38, !dbg !3565
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !3566

if.then33:                                        ; preds = %if.else
  br label %for.end, !dbg !3567

if.end34:                                         ; preds = %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34
  br label %for.inc, !dbg !3569

for.inc:                                          ; preds = %if.end35
  %39 = load i32, i32* %i, align 4, !dbg !3570
  %inc = add i32 %39, 1, !dbg !3570
  store i32 %inc, i32* %i, align 4, !dbg !3570
  br label %for.cond, !dbg !3571, !llvm.loop !3572

for.end:                                          ; preds = %if.then33, %cond.end, %for.cond
  %40 = load i32, i32* %i, align 4, !dbg !3574
  %41 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3576
  %fps_count36 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %41, i32 0, i32 3, !dbg !3577
  %42 = load i32, i32* %fps_count36, align 8, !dbg !3577
  %cmp37 = icmp eq i32 %40, %42, !dbg !3578
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !3579

if.then39:                                        ; preds = %for.end
  store i32 -22, i32* %status, align 4, !dbg !3580
  br label %err, !dbg !3582

if.end40:                                         ; preds = %for.end
  %43 = load i32, i32* %i, align 4, !dbg !3583
  %conv41 = sext i32 %43 to i64, !dbg !3583
  %44 = load i64*, i64** %state.addr, align 8, !dbg !3584
  store i64 %conv41, i64* %44, align 8, !dbg !3585
  br label %err, !dbg !3586

err:                                              ; preds = %if.end40, %if.then39, %if.then9
  call void @llvm.dbg.label(metadata !3587), !dbg !3588
  %45 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3589
  %46 = bitcast %union.acpi_object* %45 to i8*, !dbg !3589
  call void @kfree(i8* %46) #6, !dbg !3590
  %47 = load i32, i32* %status, align 4, !dbg !3591
  store i32 %47, i32* %retval, align 4, !dbg !3592
  br label %return, !dbg !3592

return:                                           ; preds = %err, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !3593
  ret i32 %48, !dbg !3593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fan_get_state(%struct.acpi_device* %device, i64* %state) #2 !dbg !3594 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i64*, align 8
  %result = alloca i32, align 4
  %acpi_state = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3595, metadata !DIExpression()), !dbg !3596
  store i64* %state, i64** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %state.addr, metadata !3597, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.declare(metadata i32* %acpi_state, metadata !3601, metadata !DIExpression()), !dbg !3602
  store i32 0, i32* %acpi_state, align 4, !dbg !3602
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3603
  %call = call i32 @acpi_device_update_power(%struct.acpi_device* %0, i32* %acpi_state) #6, !dbg !3604
  store i32 %call, i32* %result, align 4, !dbg !3605
  %1 = load i32, i32* %result, align 4, !dbg !3606
  %tobool = icmp ne i32 %1, 0, !dbg !3606
  br i1 %tobool, label %if.then, label %if.end, !dbg !3608

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %result, align 4, !dbg !3609
  store i32 %2, i32* %retval, align 4, !dbg !3610
  br label %return, !dbg !3610

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %acpi_state, align 4, !dbg !3611
  %cmp = icmp eq i32 %3, 4, !dbg !3612
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3613

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %acpi_state, align 4, !dbg !3614
  %cmp1 = icmp eq i32 %4, 3, !dbg !3615
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3611

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  br label %cond.end, !dbg !3611

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i32, i32* %acpi_state, align 4, !dbg !3616
  %cmp2 = icmp eq i32 %5, 0, !dbg !3617
  %6 = zext i1 %cmp2 to i64, !dbg !3616
  %cond = select i1 %cmp2, i32 1, i32 -1, !dbg !3616
  br label %cond.end, !dbg !3611

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ 0, %cond.true ], [ %cond, %cond.false ], !dbg !3611
  %conv = sext i32 %cond3 to i64, !dbg !3611
  %7 = load i64*, i64** %state.addr, align 8, !dbg !3618
  store i64 %conv, i64* %7, align 8, !dbg !3619
  store i32 0, i32* %retval, align 4, !dbg !3620
  br label %return, !dbg !3620

return:                                           ; preds = %cond.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3621
  ret i32 %8, !dbg !3621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fan_set_state_acpi4(%struct.acpi_device* %device, i64 %state) #2 !dbg !3622 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i64, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3625, metadata !DIExpression()), !dbg !3626
  store i64 %state, i64* %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %state.addr, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !3629, metadata !DIExpression()), !dbg !3630
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3631
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #6, !dbg !3632
  %1 = bitcast i8* %call to %struct.acpi_fan*, !dbg !3632
  store %struct.acpi_fan* %1, %struct.acpi_fan** %fan, align 8, !dbg !3630
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3633, metadata !DIExpression()), !dbg !3634
  %2 = load i64, i64* %state.addr, align 8, !dbg !3635
  %3 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3637
  %fps_count = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %3, i32 0, i32 3, !dbg !3638
  %4 = load i32, i32* %fps_count, align 8, !dbg !3638
  %conv = sext i32 %4 to i64, !dbg !3637
  %cmp = icmp uge i64 %2, %conv, !dbg !3639
  br i1 %cmp, label %if.then, label %if.end, !dbg !3640

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3641
  br label %return, !dbg !3641

if.end:                                           ; preds = %entry
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3642
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 1, !dbg !3643
  %6 = load i8*, i8** %handle, align 8, !dbg !3643
  %7 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3644
  %fps = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %7, i32 0, i32 2, !dbg !3645
  %8 = load %struct.acpi_fan_fps*, %struct.acpi_fan_fps** %fps, align 8, !dbg !3645
  %9 = load i64, i64* %state.addr, align 8, !dbg !3646
  %arrayidx = getelementptr %struct.acpi_fan_fps, %struct.acpi_fan_fps* %8, i64 %9, !dbg !3644
  %control = getelementptr inbounds %struct.acpi_fan_fps, %struct.acpi_fan_fps* %arrayidx, i32 0, i32 0, !dbg !3647
  %10 = load i64, i64* %control, align 8, !dbg !3647
  %call2 = call i32 @acpi_execute_simple_method(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %10) #6, !dbg !3648
  store i32 %call2, i32* %status, align 4, !dbg !3649
  %11 = load i32, i32* %status, align 4, !dbg !3650
  %tobool = icmp ne i32 %11, 0, !dbg !3650
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !3652

if.then3:                                         ; preds = %if.end
  %12 = load i32, i32* %status, align 4, !dbg !3653
  store i32 %12, i32* %retval, align 4, !dbg !3655
  br label %return, !dbg !3655

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3656
  br label %return, !dbg !3656

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3657
  ret i32 %13, !dbg !3657
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fan_set_state(%struct.acpi_device* %device, i64 %state) #2 !dbg !3658 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i64, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3659, metadata !DIExpression()), !dbg !3660
  store i64 %state, i64* %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %state.addr, metadata !3661, metadata !DIExpression()), !dbg !3662
  %0 = load i64, i64* %state.addr, align 8, !dbg !3663
  %cmp = icmp ne i64 %0, 0, !dbg !3665
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3666

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %state.addr, align 8, !dbg !3667
  %cmp1 = icmp ne i64 %1, 1, !dbg !3668
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3669

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, i32* %retval, align 4, !dbg !3670
  br label %return, !dbg !3670

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3671
  %3 = load i64, i64* %state.addr, align 8, !dbg !3672
  %tobool = icmp ne i64 %3, 0, !dbg !3672
  %4 = zext i1 %tobool to i64, !dbg !3672
  %cond = select i1 %tobool, i32 0, i32 4, !dbg !3672
  %call = call i32 @acpi_device_set_power(%struct.acpi_device* %2, i32 %cond) #6, !dbg !3673
  store i32 %call, i32* %retval, align 4, !dbg !3674
  br label %return, !dbg !3674

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !3675
  ret i32 %5, !dbg !3675
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_execute_simple_method(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_device_set_power(%struct.acpi_device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_file_ns(%struct.kobject*, %struct.attribute*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3676 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3681, metadata !DIExpression()), !dbg !3682
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3683
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3684
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !3685
  ret i8* %call, !dbg !3686
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #1

; Function Attrs: noredzone
declare dso_local void @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3687 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3690, metadata !DIExpression()), !dbg !3691
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3692
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3693
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3693
  ret i8* %1, !dbg !3694
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fan_resume(%struct.device* %dev) #2 !dbg !3695 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %result = alloca i32, align 4
  %fan = alloca %struct.acpi_fan*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3696, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3698, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !3700, metadata !DIExpression()), !dbg !3701
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3702
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !3703
  %1 = bitcast i8* %call to %struct.acpi_fan*, !dbg !3703
  store %struct.acpi_fan* %1, %struct.acpi_fan** %fan, align 8, !dbg !3701
  %2 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3704
  %acpi4 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %2, i32 0, i32 0, !dbg !3706
  %3 = load i8, i8* %acpi4, align 8, !dbg !3706
  %tobool = trunc i8 %3 to i1, !dbg !3706
  br i1 %tobool, label %if.then, label %if.end, !dbg !3707

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3708
  br label %return, !dbg !3708

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3709, metadata !DIExpression()), !dbg !3711
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3711
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 24, !dbg !3711
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3711
  store %struct.fwnode_handle* %5, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3711
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3711
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %6) #6, !dbg !3711
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3711

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3712, metadata !DIExpression()), !dbg !3714
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3714
  %8 = bitcast %struct.fwnode_handle* %7 to i8*, !dbg !3714
  store i8* %8, i8** %__mptr, align 8, !dbg !3714
  br label %do.body, !dbg !3714

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3715

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !3714
  %add.ptr = getelementptr i8, i8* %9, i64 -16, !dbg !3714
  %10 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3714
  store %struct.acpi_device* %10, %struct.acpi_device** %tmp2, align 8, !dbg !3715
  %11 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !3714
  br label %cond.end, !dbg !3711

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3711

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %11, %do.end ], [ null, %cond.false ], !dbg !3711
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3711
  %12 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3711
  %call3 = call i32 @acpi_device_update_power(%struct.acpi_device* %12, i32* null) #6, !dbg !3717
  store i32 %call3, i32* %result, align 4, !dbg !3718
  %13 = load i32, i32* %result, align 4, !dbg !3719
  %tobool4 = icmp ne i32 %13, 0, !dbg !3719
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3721

if.then5:                                         ; preds = %cond.end
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3722
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !3722
  br label %if.end6, !dbg !3722

if.end6:                                          ; preds = %if.then5, %cond.end
  %15 = load i32, i32* %result, align 4, !dbg !3723
  store i32 %15, i32* %retval, align 4, !dbg !3724
  br label %return, !dbg !3724

return:                                           ; preds = %if.end6, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3725
  ret i32 %16, !dbg !3725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_fan_suspend(%struct.device* %dev) #2 !dbg !3726 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %fan = alloca %struct.acpi_fan*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3727, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.declare(metadata %struct.acpi_fan** %fan, metadata !3729, metadata !DIExpression()), !dbg !3730
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3731
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !3732
  %1 = bitcast i8* %call to %struct.acpi_fan*, !dbg !3732
  store %struct.acpi_fan* %1, %struct.acpi_fan** %fan, align 8, !dbg !3730
  %2 = load %struct.acpi_fan*, %struct.acpi_fan** %fan, align 8, !dbg !3733
  %acpi4 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %2, i32 0, i32 0, !dbg !3735
  %3 = load i8, i8* %acpi4, align 8, !dbg !3735
  %tobool = trunc i8 %3 to i1, !dbg !3735
  br i1 %tobool, label %if.then, label %if.end, !dbg !3736

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3737
  br label %return, !dbg !3737

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3738, metadata !DIExpression()), !dbg !3740
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3740
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 24, !dbg !3740
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3740
  store %struct.fwnode_handle* %5, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3740
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3740
  %call1 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %6) #6, !dbg !3740
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3740

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3741, metadata !DIExpression()), !dbg !3743
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3743
  %8 = bitcast %struct.fwnode_handle* %7 to i8*, !dbg !3743
  store i8* %8, i8** %__mptr, align 8, !dbg !3743
  br label %do.body, !dbg !3743

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3744

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !3743
  %add.ptr = getelementptr i8, i8* %9, i64 -16, !dbg !3743
  %10 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3743
  store %struct.acpi_device* %10, %struct.acpi_device** %tmp2, align 8, !dbg !3744
  %11 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !3743
  br label %cond.end, !dbg !3740

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3740

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %11, %do.end ], [ null, %cond.false ], !dbg !3740
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3740
  %12 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3740
  %call3 = call i32 @acpi_device_set_power(%struct.acpi_device* %12, i32 0) #6, !dbg !3746
  store i32 0, i32* %retval, align 4, !dbg !3747
  br label %return, !dbg !3747

return:                                           ; preds = %cond.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3748
  ret i32 %13, !dbg !3748
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2574, !2575, !2576, !2577}
!llvm.ident = !{!2578}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author173", scope: !2, file: !3, line: 19, type: !2571, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !69, globals: !2444, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/fan.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64}
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
!69 = !{!70, !73, !74, !1497, !2421, !594, !234, !219, !2443}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !72, line: 76, flags: DIFlagFwdDecl)
!72 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !76, line: 351, size: 10880, elements: !77)
!76 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !80, !83, !2148, !2149, !2150, !2151, !2152, !2153, !2162, !2179, !2253, !2282, !2306, !2327, !2333, !2342, !2374, !2388, !2410, !2414, !2415, !2416, !2417, !2418, !2419, !2420}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !75, file: !76, line: 352, baseType: !79, size: 32)
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !75, file: !76, line: 353, baseType: !81, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !82, line: 424, baseType: !73)
!82 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !75, file: !76, line: 354, baseType: !84, size: 192, offset: 128)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !85, line: 17, size: 192, elements: !86)
!85 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !89, !2147}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !84, file: !85, line: 18, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !84, file: !85, line: 19, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !85, line: 110, size: 1152, elements: !93)
!93 = !{!94, !98, !102, !111, !2089, !2093, !2097, !2102, !2106, !2107, !2111, !2115, !2119, !2130, !2131, !2132, !2133, !2143}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !92, file: !85, line: 111, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!88, !88}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !92, file: !85, line: 112, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !88}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !92, file: !85, line: 113, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !109}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !107, line: 30, baseType: !108)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !92, file: !85, line: 114, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !109, !117}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !120)
!120 = !{!121, !1625, !1627, !1630, !1631, !1682, !1776, !1777, !1778, !1779, !1780, !1789, !1894, !1907, !2014, !2015, !2019, !2021, !2022, !2023, !2027, !2033, !2034, !2037, !2038, !2039, !2042, !2043, !2044, !2045, !2077, !2078, !2079, !2082, !2085, !2086, !2087, !2088}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !119, file: !30, line: 462, baseType: !122, size: 512)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !123, line: 64, size: 512, elements: !124)
!123 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !129, !135, !137, !197, !1461, !1615, !1620, !1621, !1622, !1623, !1624}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !123, line: 65, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !122, file: !123, line: 66, baseType: !130, size: 128, offset: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !107, line: 178, size: 128, elements: !131)
!131 = !{!132, !134}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !107, line: 179, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !130, file: !107, line: 179, baseType: !133, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !122, file: !123, line: 67, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !122, file: !123, line: 68, baseType: !138, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !123, line: 192, size: 704, elements: !140)
!140 = !{!141, !142, !158, !159}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !139, file: !123, line: 193, baseType: !130, size: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !139, file: !123, line: 194, baseType: !143, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !144, line: 83, baseType: !145)
!144 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !144, line: 71, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !144, line: 72, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !144, line: 72, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !148, file: !144, line: 73, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !144, line: 20, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !151, file: !144, line: 21, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !155, line: 25, baseType: !156)
!155 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 25, elements: !157)
!157 = !{}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !139, file: !123, line: 195, baseType: !122, size: 512, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !139, file: !123, line: 196, baseType: !160, size: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !123, line: 156, size: 192, elements: !163)
!163 = !{!164, !169, !174}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !162, file: !123, line: 157, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!79, !138, !136}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !123, line: 158, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!126, !138, !136}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !162, file: !123, line: 159, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!79, !138, !136, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !123, line: 148, size: 20736, elements: !181)
!181 = !{!182, !187, !191, !192, !196}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !180, file: !123, line: 149, baseType: !183, size: 192)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 192, elements: !185)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!185 = !{!186}
!186 = !DISubrange(count: 3)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !180, file: !123, line: 150, baseType: !188, size: 4096, offset: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 4096, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !180, file: !123, line: 151, baseType: !79, size: 32, offset: 4288)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !180, file: !123, line: 152, baseType: !193, size: 16384, offset: 4320)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 16384, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 2048)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !180, file: !123, line: 153, baseType: !79, size: 32, offset: 20704)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !122, file: !123, line: 69, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !123, line: 138, size: 448, elements: !200)
!200 = !{!201, !205, !235, !237, !1409, !1440, !1444}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !199, file: !123, line: 139, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !136}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !199, file: !123, line: 140, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !209, line: 230, size: 128, elements: !210)
!209 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!210 = !{!211, !227}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !208, file: !209, line: 231, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !136, !220, !184}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !107, line: 60, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !217, line: 73, baseType: !218)
!217 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !217, line: 15, baseType: !219)
!219 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !209, line: 30, size: 128, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !209, line: 31, baseType: !126, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !221, file: !209, line: 32, baseType: !225, size: 16, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !107, line: 19, baseType: !226)
!226 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !208, file: !209, line: 232, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!215, !136, !220, !126, !231}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 55, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !217, line: 72, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !217, line: 16, baseType: !234)
!234 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !199, file: !123, line: 141, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !199, file: !123, line: 142, baseType: !238, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !209, line: 84, size: 320, elements: !242)
!242 = !{!243, !244, !248, !1406, !1407}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !209, line: 85, baseType: !126, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !241, file: !209, line: 86, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!225, !136, !220, !79}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !241, file: !209, line: 88, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!225, !136, !252, !79}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !209, line: 168, size: 448, elements: !254)
!254 = !{!255, !256, !257, !258, !268, !269}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !253, file: !209, line: 169, baseType: !221, size: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !253, file: !209, line: 170, baseType: !231, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !253, file: !209, line: 171, baseType: !73, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !253, file: !209, line: 172, baseType: !259, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!215, !262, !136, !252, !184, !265, !231}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !264, line: 526, flags: DIFlagFwdDecl)
!264 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !107, line: 46, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !217, line: 88, baseType: !267)
!267 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !253, file: !209, line: 174, baseType: !259, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !253, file: !209, line: 176, baseType: !270, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!79, !262, !136, !252, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !275, line: 305, size: 1472, elements: !276)
!275 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277, !278, !279, !280, !281, !289, !290, !1380, !1386, !1387, !1392, !1393, !1396, !1400, !1401, !1402, !1403, !1404}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !274, file: !275, line: 308, baseType: !234, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !274, file: !275, line: 309, baseType: !234, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !274, file: !275, line: 313, baseType: !273, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !274, file: !275, line: 313, baseType: !273, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !274, file: !275, line: 315, baseType: !282, size: 192, align: 64, offset: 256)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !283, line: 24, size: 192, align: 64, elements: !284)
!283 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285, !286, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !282, file: !283, line: 25, baseType: !234, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !282, file: !283, line: 26, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !282, file: !283, line: 27, baseType: !287, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !274, file: !275, line: 323, baseType: !234, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !274, file: !275, line: 327, baseType: !291, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !275, line: 388, size: 7296, elements: !293)
!293 = !{!294, !1376}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !275, line: 389, baseType: !295, size: 7296)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !275, line: 389, size: 7296, elements: !296)
!296 = !{!297, !298, !302, !308, !312, !313, !314, !315, !316, !324, !329, !330, !331, !332, !341, !342, !343, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !378, !386, !389, !437, !438, !1346, !1347, !1350, !1354, !1355, !1358, !1359, !1360, !1363, !1375}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !295, file: !275, line: 390, baseType: !273, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !295, file: !275, line: 391, baseType: !299, size: 64, offset: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !283, line: 31, size: 64, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !299, file: !283, line: 32, baseType: !287, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !295, file: !275, line: 392, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !304, line: 23, baseType: !305)
!304 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !306, line: 31, baseType: !307)
!306 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!307 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !295, file: !275, line: 394, baseType: !309, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!234, !262, !234, !234, !234, !234}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !295, file: !275, line: 398, baseType: !234, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !295, file: !275, line: 399, baseType: !234, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !295, file: !275, line: 405, baseType: !234, size: 64, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !295, file: !275, line: 406, baseType: !234, size: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !295, file: !275, line: 407, baseType: !317, size: 64, offset: 512)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !264, line: 286, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 286, size: 64, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !319, file: !264, line: 286, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !323, line: 18, baseType: !234)
!323 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!324 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !295, file: !275, line: 416, baseType: !325, size: 32, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !107, line: 168, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 166, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !326, file: !107, line: 167, baseType: !79, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !295, file: !275, line: 428, baseType: !325, size: 32, offset: 608)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !295, file: !275, line: 437, baseType: !325, size: 32, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !295, file: !275, line: 447, baseType: !325, size: 32, offset: 672)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !295, file: !275, line: 450, baseType: !333, size: 64, offset: 704)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !334, line: 13, baseType: !335)
!334 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !107, line: 175, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 173, size: 64, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !336, file: !107, line: 174, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !304, line: 22, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !306, line: 30, baseType: !267)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !295, file: !275, line: 452, baseType: !79, size: 32, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !295, file: !275, line: 454, baseType: !143, offset: 800)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !295, file: !275, line: 457, baseType: !344, size: 256, offset: 832)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !345, line: 35, size: 256, elements: !346)
!345 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!346 = !{!347, !348, !349, !351}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !344, file: !345, line: 36, baseType: !333, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !344, file: !345, line: 42, baseType: !333, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !344, file: !345, line: 46, baseType: !350, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !144, line: 29, baseType: !151)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !344, file: !345, line: 47, baseType: !130, size: 128, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !295, file: !275, line: 459, baseType: !130, size: 128, offset: 1088)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !295, file: !275, line: 466, baseType: !234, size: 64, offset: 1216)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !295, file: !275, line: 467, baseType: !234, size: 64, offset: 1280)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !295, file: !275, line: 469, baseType: !234, size: 64, offset: 1344)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !295, file: !275, line: 470, baseType: !234, size: 64, offset: 1408)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !295, file: !275, line: 471, baseType: !335, size: 64, offset: 1472)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !295, file: !275, line: 472, baseType: !234, size: 64, offset: 1536)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !295, file: !275, line: 473, baseType: !234, size: 64, offset: 1600)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !295, file: !275, line: 474, baseType: !234, size: 64, offset: 1664)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !295, file: !275, line: 475, baseType: !234, size: 64, offset: 1728)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !295, file: !275, line: 477, baseType: !143, offset: 1792)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !295, file: !275, line: 478, baseType: !234, size: 64, offset: 1792)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !295, file: !275, line: 478, baseType: !234, size: 64, offset: 1856)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !295, file: !275, line: 478, baseType: !234, size: 64, offset: 1920)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !295, file: !275, line: 478, baseType: !234, size: 64, offset: 1984)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !295, file: !275, line: 479, baseType: !234, size: 64, offset: 2048)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !295, file: !275, line: 479, baseType: !234, size: 64, offset: 2112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !295, file: !275, line: 479, baseType: !234, size: 64, offset: 2176)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !295, file: !275, line: 480, baseType: !234, size: 64, offset: 2240)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !295, file: !275, line: 480, baseType: !234, size: 64, offset: 2304)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !295, file: !275, line: 480, baseType: !234, size: 64, offset: 2368)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !295, file: !275, line: 480, baseType: !234, size: 64, offset: 2432)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !295, file: !275, line: 482, baseType: !375, size: 2816, offset: 2496)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 2816, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 44)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !295, file: !275, line: 488, baseType: !379, size: 256, offset: 5312)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !380, line: 60, size: 256, elements: !381)
!380 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !379, file: !380, line: 61, baseType: !383, size: 256)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 256, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 4)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !295, file: !275, line: 490, baseType: !387, size: 64, offset: 5568)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !275, line: 490, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !295, file: !275, line: 493, baseType: !390, size: 896, offset: 5632)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !391, line: 53, baseType: !392)
!391 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 13, size: 896, elements: !393)
!393 = !{!394, !395, !396, !397, !400, !401, !408, !409, !429, !430, !433}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !392, file: !391, line: 18, baseType: !303, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !392, file: !391, line: 28, baseType: !335, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !392, file: !391, line: 31, baseType: !344, size: 256, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !392, file: !391, line: 32, baseType: !398, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !391, line: 32, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !392, file: !391, line: 37, baseType: !226, size: 16, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !392, file: !391, line: 40, baseType: !402, size: 192, offset: 512)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !403, line: 53, size: 192, elements: !404)
!403 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405, !406, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !402, file: !403, line: 54, baseType: !333, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !402, file: !403, line: 55, baseType: !143, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !402, file: !403, line: 59, baseType: !130, size: 128, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !392, file: !391, line: 41, baseType: !73, size: 64, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !392, file: !391, line: 42, baseType: !410, size: 64, offset: 768)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !413, line: 13, size: 896, elements: !414)
!413 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !412, file: !413, line: 14, baseType: !73, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !412, file: !413, line: 15, baseType: !234, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !412, file: !413, line: 17, baseType: !234, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !412, file: !413, line: 17, baseType: !234, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !412, file: !413, line: 19, baseType: !219, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !412, file: !413, line: 21, baseType: !219, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !412, file: !413, line: 22, baseType: !219, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !412, file: !413, line: 23, baseType: !219, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !412, file: !413, line: 24, baseType: !219, size: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !412, file: !413, line: 25, baseType: !219, size: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !412, file: !413, line: 26, baseType: !219, size: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !412, file: !413, line: 27, baseType: !219, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !412, file: !413, line: 28, baseType: !219, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !412, file: !413, line: 29, baseType: !219, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !392, file: !391, line: 44, baseType: !325, size: 32, offset: 832)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !392, file: !391, line: 50, baseType: !431, size: 16, offset: 864)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !304, line: 19, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !306, line: 24, baseType: !226)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !392, file: !391, line: 51, baseType: !434, size: 16, offset: 880)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !304, line: 18, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !306, line: 23, baseType: !436)
!436 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !275, line: 495, baseType: !234, size: 64, offset: 6528)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !295, file: !275, line: 497, baseType: !439, size: 64, offset: 6592)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !275, line: 381, size: 384, elements: !441)
!441 = !{!442, !443, !1345}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !440, file: !275, line: 382, baseType: !325, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !440, file: !275, line: 383, baseType: !444, size: 128, offset: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !275, line: 376, size: 128, elements: !445)
!445 = !{!446, !1343}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !444, file: !275, line: 377, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !449, line: 640, size: 48640, elements: !450)
!449 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!450 = !{!451, !459, !461, !462, !468, !469, !470, !471, !472, !473, !474, !475, !479, !497, !508, !603, !604, !605, !616, !617, !619, !620, !621, !622, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !701, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !757, !759, !760, !761, !773, !775, !776, !777, !778, !779, !785, !786, !787, !788, !789, !790, !791, !803, !808, !813, !814, !815, !818, !822, !825, !828, !831, !834, !838, !841, !844, !850, !851, !852, !858, !859, !860, !861, !862, !871, !872, !873, !874, !875, !880, !881, !882, !885, !886, !889, !892, !895, !898, !901, !904, !905, !985, !988, !991, !992, !995, !996, !997, !1003, !1004, !1005, !1018, !1019, !1020, !1030, !1035, !1038, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !448, file: !449, line: 646, baseType: !452, size: 128)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !453, line: 56, size: 128, elements: !454)
!453 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !453, line: 57, baseType: !234, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !452, file: !453, line: 58, baseType: !457, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !304, line: 21, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !306, line: 27, baseType: !7)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !448, file: !449, line: 649, baseType: !460, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !219)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !448, file: !449, line: 657, baseType: !73, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !448, file: !449, line: 658, baseType: !463, size: 32, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !464, line: 113, baseType: !465)
!464 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !464, line: 111, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !465, file: !464, line: 112, baseType: !325, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !449, line: 660, baseType: !7, size: 32, offset: 288)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !448, file: !449, line: 661, baseType: !7, size: 32, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !448, file: !449, line: 684, baseType: !79, size: 32, offset: 352)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !448, file: !449, line: 686, baseType: !79, size: 32, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !448, file: !449, line: 687, baseType: !79, size: 32, offset: 416)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !448, file: !449, line: 688, baseType: !79, size: 32, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !448, file: !449, line: 689, baseType: !7, size: 32, offset: 480)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !448, file: !449, line: 691, baseType: !476, size: 64, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !449, line: 691, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !448, file: !449, line: 692, baseType: !480, size: 832, offset: 576)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !449, line: 451, size: 832, elements: !481)
!481 = !{!482, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !480, file: !449, line: 453, baseType: !483, size: 128)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !449, line: 325, size: 128, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !483, file: !449, line: 326, baseType: !234, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !483, file: !449, line: 327, baseType: !457, size: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !480, file: !449, line: 454, baseType: !282, size: 192, align: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !480, file: !449, line: 455, baseType: !130, size: 128, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !480, file: !449, line: 456, baseType: !7, size: 32, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !480, file: !449, line: 458, baseType: !303, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !480, file: !449, line: 459, baseType: !303, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !480, file: !449, line: 460, baseType: !303, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !480, file: !449, line: 461, baseType: !303, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !480, file: !449, line: 463, baseType: !303, size: 64, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !480, file: !449, line: 465, baseType: !496, offset: 832)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !449, line: 415, elements: !157)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !448, file: !449, line: 693, baseType: !498, size: 384, offset: 1408)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !449, line: 489, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !498, file: !449, line: 490, baseType: !130, size: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !498, file: !449, line: 491, baseType: !234, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !498, file: !449, line: 492, baseType: !234, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !498, file: !449, line: 493, baseType: !7, size: 32, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !498, file: !449, line: 494, baseType: !226, size: 16, offset: 288)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !498, file: !449, line: 495, baseType: !226, size: 16, offset: 304)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !498, file: !449, line: 497, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !448, file: !449, line: 697, baseType: !509, size: 1792, offset: 1792)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !449, line: 507, size: 1792, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !600, !601}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !509, file: !449, line: 508, baseType: !282, size: 192, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !509, file: !449, line: 515, baseType: !303, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !509, file: !449, line: 516, baseType: !303, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !509, file: !449, line: 517, baseType: !303, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !509, file: !449, line: 518, baseType: !303, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !509, file: !449, line: 519, baseType: !303, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !509, file: !449, line: 526, baseType: !339, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !509, file: !449, line: 527, baseType: !303, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !449, line: 528, baseType: !7, size: 32, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !509, file: !449, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !509, file: !449, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !509, file: !449, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !509, file: !449, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !509, file: !449, line: 563, baseType: !525, size: 512, offset: 704)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !526)
!526 = !{!527, !535, !536, !541, !593, !597, !598, !599}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !525, file: !6, line: 119, baseType: !528, size: 256)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !529, line: 9, size: 256, elements: !530)
!529 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !528, file: !529, line: 10, baseType: !282, size: 192, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !528, file: !529, line: 11, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !534, line: 29, baseType: !339)
!534 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !525, file: !6, line: 120, baseType: !533, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !525, file: !6, line: 121, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!5, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !525, file: !6, line: 122, baseType: !542, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !544)
!544 = !{!545, !565, !566, !569, !579, !580, !588, !592}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !543, file: !6, line: 160, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !547, file: !6, line: 215, baseType: !350)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !547, file: !6, line: 216, baseType: !7, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !547, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !547, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !547, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !547, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !547, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !547, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !547, file: !6, line: 233, baseType: !533, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !547, file: !6, line: 234, baseType: !540, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !547, file: !6, line: 235, baseType: !533, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !547, file: !6, line: 236, baseType: !540, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !547, file: !6, line: 237, baseType: !562, size: 4096, offset: 512)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 4096, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 8)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !543, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !543, file: !6, line: 162, baseType: !567, size: 32, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !107, line: 27, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !217, line: 96, baseType: !79)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !543, file: !6, line: 163, baseType: !570, size: 32, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !571, line: 276, baseType: !572)
!571 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !571, line: 276, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !572, file: !571, line: 276, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !571, line: 70, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !571, line: 65, size: 32, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !576, file: !571, line: 66, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !543, file: !6, line: 164, baseType: !540, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !543, file: !6, line: 165, baseType: !581, size: 128, offset: 256)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !529, line: 14, size: 128, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !581, file: !529, line: 15, baseType: !584, size: 128)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !283, line: 125, size: 128, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !584, file: !283, line: 126, baseType: !299, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !584, file: !283, line: 127, baseType: !287, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !543, file: !6, line: 166, baseType: !589, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!533}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !543, file: !6, line: 167, baseType: !533, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !525, file: !6, line: 123, baseType: !594, size: 8, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !304, line: 17, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !306, line: 21, baseType: !596)
!596 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !525, file: !6, line: 124, baseType: !594, size: 8, offset: 456)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !525, file: !6, line: 125, baseType: !594, size: 8, offset: 464)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !525, file: !6, line: 126, baseType: !594, size: 8, offset: 472)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !509, file: !449, line: 572, baseType: !525, size: 512, offset: 1216)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !509, file: !449, line: 580, baseType: !602, size: 64, offset: 1728)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !448, file: !449, line: 721, baseType: !7, size: 32, offset: 3584)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !448, file: !449, line: 722, baseType: !79, size: 32, offset: 3616)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !448, file: !449, line: 723, baseType: !606, size: 64, offset: 3648)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !609, line: 17, baseType: !610)
!609 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !609, line: 17, size: 64, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !610, file: !609, line: 17, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 64, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 1)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !448, file: !449, line: 724, baseType: !608, size: 64, offset: 3712)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !448, file: !449, line: 749, baseType: !618, offset: 3776)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !449, line: 290, elements: !157)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !448, file: !449, line: 751, baseType: !130, size: 128, offset: 3776)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !448, file: !449, line: 757, baseType: !291, size: 64, offset: 3904)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !448, file: !449, line: 758, baseType: !291, size: 64, offset: 3968)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !448, file: !449, line: 761, baseType: !623, size: 320, offset: 4032)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !380, line: 34, size: 320, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !623, file: !380, line: 35, baseType: !303, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !623, file: !380, line: 36, baseType: !627, size: 256, offset: 64)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !448, file: !449, line: 766, baseType: !79, size: 32, offset: 4352)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !448, file: !449, line: 767, baseType: !79, size: 32, offset: 4384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !448, file: !449, line: 768, baseType: !79, size: 32, offset: 4416)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !448, file: !449, line: 770, baseType: !79, size: 32, offset: 4448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !448, file: !449, line: 772, baseType: !234, size: 64, offset: 4480)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !448, file: !449, line: 775, baseType: !7, size: 32, offset: 4544)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !448, file: !449, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !448, file: !449, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !448, file: !449, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !448, file: !449, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !448, file: !449, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !448, file: !449, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !448, file: !449, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !448, file: !449, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !448, file: !449, line: 831, baseType: !234, size: 64, offset: 4672)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !448, file: !449, line: 833, baseType: !644, size: 384, offset: 4736)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !645)
!645 = !{!646, !651}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !644, file: !12, line: 26, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!219, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !12, line: 27, baseType: !652, size: 320, offset: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !12, line: 27, size: 320, elements: !653)
!653 = !{!654, !664, !691}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !652, file: !12, line: 36, baseType: !655, size: 320)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !652, file: !12, line: 29, size: 320, elements: !656)
!656 = !{!657, !659, !660, !661, !662, !663}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !655, file: !12, line: 30, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !655, file: !12, line: 31, baseType: !457, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !12, line: 32, baseType: !457, size: 32, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !655, file: !12, line: 33, baseType: !457, size: 32, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !655, file: !12, line: 34, baseType: !303, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !655, file: !12, line: 35, baseType: !658, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !652, file: !12, line: 46, baseType: !665, size: 192)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !652, file: !12, line: 38, size: 192, elements: !666)
!666 = !{!667, !668, !669, !690}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !665, file: !12, line: 39, baseType: !567, size: 32)
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
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !217, line: 93, baseType: !267)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !674, file: !675, line: 9, baseType: !267, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !670, file: !12, line: 43, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !683, line: 7, size: 64, elements: !684)
!683 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!684 = !{!685, !689}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !682, file: !683, line: 8, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !683, line: 5, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !304, line: 20, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !306, line: 26, baseType: !79)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !682, file: !683, line: 9, baseType: !687, size: 32, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !665, file: !12, line: 45, baseType: !303, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !652, file: !12, line: 54, baseType: !692, size: 256)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !652, file: !12, line: 48, size: 256, elements: !693)
!693 = !{!694, !697, !698, !699, !700}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !692, file: !12, line: 49, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !692, file: !12, line: 50, baseType: !79, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !692, file: !12, line: 51, baseType: !79, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !692, file: !12, line: 52, baseType: !234, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !692, file: !12, line: 53, baseType: !234, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !448, file: !449, line: 835, baseType: !702, size: 32, offset: 5120)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !107, line: 22, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !217, line: 28, baseType: !79)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !448, file: !449, line: 836, baseType: !702, size: 32, offset: 5152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !448, file: !449, line: 840, baseType: !234, size: 64, offset: 5184)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !448, file: !449, line: 849, baseType: !447, size: 64, offset: 5248)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !448, file: !449, line: 852, baseType: !447, size: 64, offset: 5312)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !448, file: !449, line: 857, baseType: !130, size: 128, offset: 5376)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !448, file: !449, line: 858, baseType: !130, size: 128, offset: 5504)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !448, file: !449, line: 859, baseType: !447, size: 64, offset: 5632)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !448, file: !449, line: 867, baseType: !130, size: 128, offset: 5696)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !448, file: !449, line: 868, baseType: !130, size: 128, offset: 5824)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !448, file: !449, line: 871, baseType: !714, size: 64, offset: 5952)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !716, line: 59, size: 768, elements: !717)
!716 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719, !720, !721, !732, !733, !740, !749}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !715, file: !716, line: 61, baseType: !463, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !715, file: !716, line: 62, baseType: !7, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !716, line: 63, baseType: !143, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !715, file: !716, line: 65, baseType: !722, size: 256, offset: 64)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 256, elements: !384)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !107, line: 182, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !723, file: !107, line: 183, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !107, line: 186, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !107, line: 187, baseType: !726, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !727, file: !107, line: 187, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !715, file: !716, line: 66, baseType: !723, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !715, file: !716, line: 68, baseType: !734, size: 128, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !735, line: 40, baseType: !736)
!735 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !735, line: 36, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !736, file: !735, line: 37, baseType: !143)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !736, file: !735, line: 38, baseType: !130, size: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !715, file: !716, line: 69, baseType: !741, size: 128, align: 64, offset: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !107, line: 216, size: 128, align: 64, elements: !742)
!742 = !{!743, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !107, line: 217, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !741, file: !107, line: 218, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !744}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !715, file: !716, line: 70, baseType: !750, size: 128, offset: 640)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 128, elements: !614)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !716, line: 54, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !751, file: !716, line: 55, baseType: !79, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !751, file: !716, line: 56, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !716, line: 56, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !448, file: !449, line: 872, baseType: !758, size: 512, offset: 6016)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 512, elements: !384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !448, file: !449, line: 873, baseType: !130, size: 128, offset: 6528)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !448, file: !449, line: 874, baseType: !130, size: 128, offset: 6656)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !448, file: !449, line: 876, baseType: !762, size: 64, offset: 6784)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !764, line: 26, size: 192, elements: !765)
!764 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !763, file: !764, line: 27, baseType: !7, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !763, file: !764, line: 28, baseType: !768, size: 128, offset: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !769, line: 43, size: 128, elements: !770)
!769 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !768, file: !769, line: 44, baseType: !350)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !768, file: !769, line: 45, baseType: !130, size: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !448, file: !449, line: 879, baseType: !774, size: 64, offset: 6848)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !448, file: !449, line: 882, baseType: !774, size: 64, offset: 6912)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !448, file: !449, line: 884, baseType: !303, size: 64, offset: 6976)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !448, file: !449, line: 885, baseType: !303, size: 64, offset: 7040)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !448, file: !449, line: 890, baseType: !303, size: 64, offset: 7104)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !448, file: !449, line: 891, baseType: !780, size: 128, offset: 7168)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !449, line: 242, size: 128, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !780, file: !449, line: 244, baseType: !303, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !780, file: !449, line: 245, baseType: !303, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !780, file: !449, line: 246, baseType: !350, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !448, file: !449, line: 900, baseType: !234, size: 64, offset: 7296)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !448, file: !449, line: 901, baseType: !234, size: 64, offset: 7360)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !448, file: !449, line: 904, baseType: !303, size: 64, offset: 7424)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !448, file: !449, line: 907, baseType: !303, size: 64, offset: 7488)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !448, file: !449, line: 910, baseType: !234, size: 64, offset: 7552)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !448, file: !449, line: 911, baseType: !234, size: 64, offset: 7616)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !448, file: !449, line: 914, baseType: !792, size: 640, offset: 7680)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !793, line: 123, size: 640, elements: !794)
!793 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!794 = !{!795, !801, !802}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !792, file: !793, line: 124, baseType: !796, size: 576)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 576, elements: !185)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !793, line: 108, size: 192, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !797, file: !793, line: 109, baseType: !303, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !797, file: !793, line: 110, baseType: !581, size: 128, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !792, file: !793, line: 125, baseType: !7, size: 32, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !792, file: !793, line: 126, baseType: !7, size: 32, offset: 608)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !448, file: !449, line: 917, baseType: !804, size: 192, offset: 8320)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !793, line: 134, size: 192, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !804, file: !793, line: 135, baseType: !741, size: 128, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !804, file: !793, line: 136, baseType: !7, size: 32, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !448, file: !449, line: 923, baseType: !809, size: 64, offset: 8512)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !812, line: 11, flags: DIFlagFwdDecl)
!812 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!813 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !448, file: !449, line: 926, baseType: !809, size: 64, offset: 8576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !448, file: !449, line: 929, baseType: !809, size: 64, offset: 8640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !448, file: !449, line: 933, baseType: !816, size: 64, offset: 8704)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !449, line: 933, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !448, file: !449, line: 943, baseType: !819, size: 128, offset: 8768)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 16)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !448, file: !449, line: 945, baseType: !823, size: 64, offset: 8896)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !449, line: 49, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !448, file: !449, line: 956, baseType: !826, size: 64, offset: 8960)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !449, line: 45, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !448, file: !449, line: 959, baseType: !829, size: 64, offset: 9024)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !449, line: 959, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !448, file: !449, line: 962, baseType: !832, size: 64, offset: 9088)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !449, line: 66, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !448, file: !449, line: 966, baseType: !835, size: 64, offset: 9152)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !837, line: 35, flags: DIFlagFwdDecl)
!837 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!838 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !448, file: !449, line: 969, baseType: !839, size: 64, offset: 9216)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !793, line: 223, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !448, file: !449, line: 970, baseType: !842, size: 64, offset: 9280)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !449, line: 62, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !448, file: !449, line: 971, baseType: !845, size: 64, offset: 9344)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !846, line: 25, baseType: !847)
!846 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !846, line: 23, size: 64, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !847, file: !846, line: 24, baseType: !613, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !448, file: !449, line: 972, baseType: !845, size: 64, offset: 9408)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !448, file: !449, line: 974, baseType: !845, size: 64, offset: 9472)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !448, file: !449, line: 975, baseType: !853, size: 192, offset: 9536)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !854, line: 30, size: 192, elements: !855)
!854 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !853, file: !854, line: 31, baseType: !130, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !853, file: !854, line: 32, baseType: !845, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !448, file: !449, line: 976, baseType: !234, size: 64, offset: 9728)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !448, file: !449, line: 977, baseType: !231, size: 64, offset: 9792)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !448, file: !449, line: 978, baseType: !7, size: 32, offset: 9856)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !448, file: !449, line: 980, baseType: !744, size: 64, offset: 9920)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !448, file: !449, line: 989, baseType: !863, size: 128, offset: 9984)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !864, line: 35, size: 128, elements: !865)
!864 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !863, file: !864, line: 36, baseType: !79, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !863, file: !864, line: 37, baseType: !325, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !863, file: !864, line: 38, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !864, line: 23, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !448, file: !449, line: 992, baseType: !303, size: 64, offset: 10112)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !448, file: !449, line: 993, baseType: !303, size: 64, offset: 10176)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !448, file: !449, line: 996, baseType: !143, offset: 10240)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !448, file: !449, line: 999, baseType: !350, offset: 10240)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !448, file: !449, line: 1001, baseType: !876, size: 64, offset: 10240)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !449, line: 636, size: 64, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !876, file: !449, line: 637, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !448, file: !449, line: 1005, baseType: !584, size: 128, offset: 10304)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !448, file: !449, line: 1007, baseType: !447, size: 64, offset: 10432)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !448, file: !449, line: 1009, baseType: !883, size: 64, offset: 10496)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !449, line: 1009, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !448, file: !449, line: 1043, baseType: !73, size: 64, offset: 10560)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !448, file: !449, line: 1046, baseType: !887, size: 64, offset: 10624)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !449, line: 41, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !448, file: !449, line: 1050, baseType: !890, size: 64, offset: 10688)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !449, line: 42, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !448, file: !449, line: 1054, baseType: !893, size: 64, offset: 10752)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !449, line: 55, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !448, file: !449, line: 1056, baseType: !896, size: 64, offset: 10816)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !449, line: 40, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !448, file: !449, line: 1058, baseType: !899, size: 64, offset: 10880)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !449, line: 47, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !448, file: !449, line: 1061, baseType: !902, size: 64, offset: 10944)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !449, line: 43, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !448, file: !449, line: 1064, baseType: !234, size: 64, offset: 11008)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !448, file: !449, line: 1065, baseType: !906, size: 64, offset: 11072)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !854, line: 14, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !854, line: 12, size: 384, elements: !909)
!909 = !{!910}
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !854, line: 13, baseType: !911, size: 384)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !854, line: 13, size: 384, elements: !912)
!912 = !{!913, !914, !915, !916}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !911, file: !854, line: 13, baseType: !79, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !911, file: !854, line: 13, baseType: !79, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !911, file: !854, line: 13, baseType: !79, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !911, file: !854, line: 13, baseType: !917, size: 256, offset: 128)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !918, line: 32, size: 256, elements: !919)
!918 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!919 = !{!920, !926, !939, !945, !954, !974, !979}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !917, file: !918, line: 37, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !918, line: 34, size: 64, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !921, file: !918, line: 35, baseType: !703, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !921, file: !918, line: 36, baseType: !925, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !217, line: 49, baseType: !7)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !917, file: !918, line: 45, baseType: !927, size: 192)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !918, line: 40, size: 192, elements: !928)
!928 = !{!929, !931, !932, !938}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !927, file: !918, line: 41, baseType: !930, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !217, line: 95, baseType: !79)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !927, file: !918, line: 42, baseType: !79, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !927, file: !918, line: 43, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !918, line: 11, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !918, line: 8, size: 64, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !934, file: !918, line: 9, baseType: !79, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !934, file: !918, line: 10, baseType: !73, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !927, file: !918, line: 44, baseType: !79, size: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !917, file: !918, line: 52, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !918, line: 48, size: 128, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !940, file: !918, line: 49, baseType: !703, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !940, file: !918, line: 50, baseType: !925, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !940, file: !918, line: 51, baseType: !933, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !917, file: !918, line: 61, baseType: !946, size: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !918, line: 55, size: 256, elements: !947)
!947 = !{!948, !949, !950, !951, !953}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !946, file: !918, line: 56, baseType: !703, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !946, file: !918, line: 57, baseType: !925, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !946, file: !918, line: 58, baseType: !79, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !946, file: !918, line: 59, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !217, line: 94, baseType: !218)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !946, file: !918, line: 60, baseType: !952, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !917, file: !918, line: 95, baseType: !955, size: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !918, line: 64, size: 256, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !955, file: !918, line: 65, baseType: !73, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !918, line: 77, baseType: !959, size: 192, offset: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !918, line: 77, size: 192, elements: !960)
!960 = !{!961, !962, !969}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !959, file: !918, line: 82, baseType: !436, size: 16)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !959, file: !918, line: 88, baseType: !963, size: 192)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !918, line: 84, size: 192, elements: !964)
!964 = !{!965, !967, !968}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !963, file: !918, line: 85, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !563)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !963, file: !918, line: 86, baseType: !73, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !963, file: !918, line: 87, baseType: !73, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !959, file: !918, line: 93, baseType: !970, size: 96)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !918, line: 90, size: 96, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !970, file: !918, line: 91, baseType: !966, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !970, file: !918, line: 92, baseType: !458, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !917, file: !918, line: 101, baseType: !975, size: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !918, line: 98, size: 128, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !975, file: !918, line: 99, baseType: !219, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !975, file: !918, line: 100, baseType: !79, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !917, file: !918, line: 108, baseType: !980, size: 128)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !918, line: 104, size: 128, elements: !981)
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !980, file: !918, line: 105, baseType: !73, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !980, file: !918, line: 106, baseType: !79, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !980, file: !918, line: 107, baseType: !7, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !448, file: !449, line: 1067, baseType: !986, offset: 11136)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !987, line: 12, elements: !157)
!987 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!988 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !448, file: !449, line: 1099, baseType: !989, size: 64, offset: 11136)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !449, line: 56, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !448, file: !449, line: 1103, baseType: !130, size: 128, offset: 11200)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !448, file: !449, line: 1104, baseType: !993, size: 64, offset: 11328)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !449, line: 46, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !448, file: !449, line: 1105, baseType: !402, size: 192, offset: 11392)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !448, file: !449, line: 1106, baseType: !7, size: 32, offset: 11584)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !448, file: !449, line: 1109, baseType: !998, size: 128, offset: 11648)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 128, elements: !1001)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !449, line: 51, flags: DIFlagFwdDecl)
!1001 = !{!1002}
!1002 = !DISubrange(count: 2)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !448, file: !449, line: 1110, baseType: !402, size: 192, offset: 11776)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !448, file: !449, line: 1111, baseType: !130, size: 128, offset: 11968)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !448, file: !449, line: 1173, baseType: !1006, size: 64, offset: 12096)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1008, line: 62, size: 256, align: 256, elements: !1009)
!1008 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !{!1010, !1011, !1012, !1017}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1007, file: !1008, line: 75, baseType: !458, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1007, file: !1008, line: 90, baseType: !458, size: 32, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1007, file: !1008, line: 124, baseType: !1013, size: 64, offset: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !1008, line: 109, size: 64, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1013, file: !1008, line: 110, baseType: !305, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1013, file: !1008, line: 112, baseType: !305, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !1008, line: 144, baseType: !458, size: 32, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !448, file: !449, line: 1174, baseType: !457, size: 32, offset: 12160)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !448, file: !449, line: 1179, baseType: !234, size: 64, offset: 12224)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !448, file: !449, line: 1182, baseType: !1021, size: 128, offset: 12288)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !380, line: 76, size: 128, elements: !1022)
!1022 = !{!1023, !1028, !1029}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1021, file: !380, line: 85, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1025, line: 7, size: 64, elements: !1026)
!1025 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1024, file: !1025, line: 12, baseType: !610, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1021, file: !380, line: 88, baseType: !106, size: 8, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1021, file: !380, line: 95, baseType: !106, size: 8, offset: 72)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !449, line: 1184, baseType: !1031, size: 128, offset: 12416)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !449, line: 1184, size: 128, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1031, file: !449, line: 1185, baseType: !463, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1031, file: !449, line: 1186, baseType: !741, size: 128, align: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !448, file: !449, line: 1190, baseType: !1036, size: 64, offset: 12544)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !449, line: 53, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !448, file: !449, line: 1192, baseType: !1039, size: 128, offset: 12608)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !380, line: 64, size: 128, elements: !1040)
!1040 = !{!1041, !1134, !1135}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1039, file: !380, line: 65, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !275, line: 68, size: 512, align: 128, elements: !1044)
!1044 = !{!1045, !1046, !1126, !1133}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !275, line: 69, baseType: !234, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !275, line: 77, baseType: !1047, size: 320, offset: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !275, line: 77, size: 320, elements: !1048)
!1048 = !{!1049, !1058, !1063, !1091, !1099, !1105, !1118, !1125}
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !275, line: 78, baseType: !1050, size: 320)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !275, line: 78, size: 320, elements: !1051)
!1051 = !{!1052, !1053, !1056, !1057}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1050, file: !275, line: 84, baseType: !130, size: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1050, file: !275, line: 86, baseType: !1054, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !275, line: 26, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1050, file: !275, line: 87, baseType: !234, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1050, file: !275, line: 94, baseType: !234, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !275, line: 96, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !275, line: 96, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1059, file: !275, line: 101, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !107, line: 143, baseType: !303)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !275, line: 103, baseType: !1064, size: 320)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !275, line: 103, size: 320, elements: !1065)
!1065 = !{!1066, !1076, !1079, !1080}
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !275, line: 104, baseType: !1067, size: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !275, line: 104, size: 128, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1067, file: !275, line: 105, baseType: !130, size: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !275, line: 106, baseType: !1071, size: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !275, line: 106, size: 128, elements: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1071, file: !275, line: 107, baseType: !1042, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1071, file: !275, line: 109, baseType: !79, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1071, file: !275, line: 110, baseType: !79, size: 32, offset: 96)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1064, file: !275, line: 117, baseType: !1077, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !275, line: 117, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1064, file: !275, line: 119, baseType: !73, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !275, line: 120, baseType: !1081, size: 64, offset: 256)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !275, line: 120, size: 64, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1081, file: !275, line: 121, baseType: !73, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1081, file: !275, line: 122, baseType: !234, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !275, line: 123, baseType: !1086, size: 32)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !275, line: 123, size: 32, elements: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1086, file: !275, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1086, file: !275, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1086, file: !275, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !275, line: 130, baseType: !1092, size: 192)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !275, line: 130, size: 192, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1092, file: !275, line: 131, baseType: !234, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1092, file: !275, line: 134, baseType: !596, size: 8, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1092, file: !275, line: 135, baseType: !596, size: 8, offset: 72)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1092, file: !275, line: 136, baseType: !325, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1092, file: !275, line: 137, baseType: !7, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !275, line: 139, baseType: !1100, size: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !275, line: 139, size: 256, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1100, file: !275, line: 140, baseType: !234, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1100, file: !275, line: 141, baseType: !325, size: 32, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1100, file: !275, line: 143, baseType: !130, size: 128, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !275, line: 145, baseType: !1106, size: 256)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !275, line: 145, size: 256, elements: !1107)
!1107 = !{!1108, !1109, !1111, !1112, !1117}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1106, file: !275, line: 146, baseType: !234, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1106, file: !275, line: 147, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !264, line: 509, baseType: !1042)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1106, file: !275, line: 148, baseType: !234, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !275, line: 149, baseType: !1113, size: 64, offset: 192)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !275, line: 149, size: 64, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1113, file: !275, line: 150, baseType: !291, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1113, file: !275, line: 151, baseType: !325, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1106, file: !275, line: 156, baseType: !143, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !275, line: 159, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !275, line: 159, size: 128, elements: !1120)
!1120 = !{!1121, !1124}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1119, file: !275, line: 161, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !275, line: 161, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1119, file: !275, line: 162, baseType: !73, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1047, file: !275, line: 176, baseType: !741, size: 128, align: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !275, line: 179, baseType: !1127, size: 32, offset: 384)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !275, line: 179, size: 32, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1127, file: !275, line: 184, baseType: !325, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1127, file: !275, line: 192, baseType: !7, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1127, file: !275, line: 194, baseType: !7, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1127, file: !275, line: 195, baseType: !79, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1043, file: !275, line: 199, baseType: !325, size: 32, offset: 416)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1039, file: !380, line: 67, baseType: !458, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1039, file: !380, line: 68, baseType: !458, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !448, file: !449, line: 1206, baseType: !79, size: 32, offset: 12736)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !448, file: !449, line: 1207, baseType: !79, size: 32, offset: 12768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !448, file: !449, line: 1209, baseType: !234, size: 64, offset: 12800)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !448, file: !449, line: 1219, baseType: !303, size: 64, offset: 12864)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !448, file: !449, line: 1220, baseType: !303, size: 64, offset: 12928)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !448, file: !449, line: 1317, baseType: !79, size: 32, offset: 12992)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !448, file: !449, line: 1319, baseType: !447, size: 64, offset: 13056)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !448, file: !449, line: 1322, baseType: !1144, size: 64, offset: 13120)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1146, line: 56, size: 512, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1154, !1155, !1157}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1145, file: !1146, line: 57, baseType: !1144, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1145, file: !1146, line: 58, baseType: !73, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1145, file: !1146, line: 59, baseType: !234, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1145, file: !1146, line: 60, baseType: !234, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1145, file: !1146, line: 61, baseType: !1153, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1145, file: !1146, line: 62, baseType: !7, size: 32, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1145, file: !1146, line: 63, baseType: !1156, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !107, line: 153, baseType: !303)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1145, file: !1146, line: 64, baseType: !115, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !448, file: !449, line: 1326, baseType: !463, size: 32, offset: 13184)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !448, file: !449, line: 1342, baseType: !73, size: 64, offset: 13248)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !448, file: !449, line: 1343, baseType: !305, size: 64, offset: 13312)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !448, file: !449, line: 1344, baseType: !303, size: 64, offset: 13376)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !448, file: !449, line: 1345, baseType: !305, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !448, file: !449, line: 1346, baseType: !305, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !448, file: !449, line: 1347, baseType: !305, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !448, file: !449, line: 1348, baseType: !741, size: 128, align: 64, offset: 13504)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !448, file: !449, line: 1358, baseType: !1167, size: 34816, offset: 13824)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1168, line: 485, size: 34816, elements: !1169)
!1168 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1199, !1200, !1201, !1202, !1203, !1204, !1207, !1208, !1209}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1167, file: !1168, line: 487, baseType: !1171, size: 192)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 192, elements: !185)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1173, line: 16, size: 64, elements: !1174)
!1173 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1172, file: !1173, line: 17, baseType: !431, size: 16)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1172, file: !1173, line: 18, baseType: !431, size: 16, offset: 16)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1172, file: !1173, line: 19, baseType: !431, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1172, file: !1173, line: 19, baseType: !431, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1172, file: !1173, line: 19, baseType: !431, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1172, file: !1173, line: 19, baseType: !431, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1172, file: !1173, line: 19, baseType: !431, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1172, file: !1173, line: 20, baseType: !431, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1172, file: !1173, line: 20, baseType: !431, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1172, file: !1173, line: 20, baseType: !431, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1172, file: !1173, line: 20, baseType: !431, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1172, file: !1173, line: 20, baseType: !431, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1172, file: !1173, line: 20, baseType: !431, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1167, file: !1168, line: 491, baseType: !234, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1167, file: !1168, line: 495, baseType: !226, size: 16, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1167, file: !1168, line: 496, baseType: !226, size: 16, offset: 272)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1167, file: !1168, line: 497, baseType: !226, size: 16, offset: 288)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1167, file: !1168, line: 498, baseType: !226, size: 16, offset: 304)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1167, file: !1168, line: 502, baseType: !234, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1167, file: !1168, line: 503, baseType: !234, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1167, file: !1168, line: 514, baseType: !1196, size: 256, offset: 448)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 256, elements: !384)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1168, line: 483, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1167, file: !1168, line: 516, baseType: !234, size: 64, offset: 704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1167, file: !1168, line: 518, baseType: !234, size: 64, offset: 768)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1167, file: !1168, line: 520, baseType: !234, size: 64, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1167, file: !1168, line: 521, baseType: !234, size: 64, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1167, file: !1168, line: 522, baseType: !234, size: 64, offset: 960)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1167, file: !1168, line: 528, baseType: !1205, size: 64, offset: 1024)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1168, line: 10, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1167, file: !1168, line: 535, baseType: !234, size: 64, offset: 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1167, file: !1168, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1167, file: !1168, line: 540, baseType: !1210, size: 33280, offset: 1536)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1211, line: 317, size: 33280, elements: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1210, file: !1211, line: 330, baseType: !7, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1210, file: !1211, line: 337, baseType: !234, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1210, file: !1211, line: 348, baseType: !1216, size: 32768, offset: 512)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1211, line: 304, size: 32768, elements: !1217)
!1217 = !{!1218, !1233, !1272, !1322, !1339}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1216, file: !1211, line: 305, baseType: !1219, size: 896)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1211, line: 12, size: 896, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1232}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1219, file: !1211, line: 13, baseType: !457, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1219, file: !1211, line: 14, baseType: !457, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1219, file: !1211, line: 15, baseType: !457, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1219, file: !1211, line: 16, baseType: !457, size: 32, offset: 96)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1219, file: !1211, line: 17, baseType: !457, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1219, file: !1211, line: 18, baseType: !457, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1219, file: !1211, line: 19, baseType: !457, size: 32, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1219, file: !1211, line: 22, baseType: !1229, size: 640, offset: 224)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 640, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 20)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1219, file: !1211, line: 25, baseType: !457, size: 32, offset: 864)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1216, file: !1211, line: 306, baseType: !1234, size: 4096, align: 128)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1211, line: 34, size: 4096, align: 128, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1255, !1256, !1257, !1261, !1263, !1267}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1234, file: !1211, line: 35, baseType: !431, size: 16)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1234, file: !1211, line: 36, baseType: !431, size: 16, offset: 16)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1234, file: !1211, line: 37, baseType: !431, size: 16, offset: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1234, file: !1211, line: 38, baseType: !431, size: 16, offset: 48)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !1211, line: 39, baseType: !1241, size: 128, offset: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1211, line: 39, size: 128, elements: !1242)
!1242 = !{!1243, !1248}
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !1211, line: 40, baseType: !1244, size: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !1211, line: 40, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1244, file: !1211, line: 41, baseType: !303, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1244, file: !1211, line: 42, baseType: !303, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !1211, line: 44, baseType: !1249, size: 128)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1241, file: !1211, line: 44, size: 128, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1249, file: !1211, line: 45, baseType: !457, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1249, file: !1211, line: 46, baseType: !457, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1249, file: !1211, line: 47, baseType: !457, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1249, file: !1211, line: 48, baseType: !457, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1234, file: !1211, line: 51, baseType: !457, size: 32, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1234, file: !1211, line: 52, baseType: !457, size: 32, offset: 224)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1234, file: !1211, line: 55, baseType: !1258, size: 1024, offset: 256)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 1024, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1234, file: !1211, line: 58, baseType: !1262, size: 2048, offset: 1280)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 2048, elements: !189)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1234, file: !1211, line: 60, baseType: !1264, size: 384, offset: 3328)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 384, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 12)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !1211, line: 62, baseType: !1268, size: 384, offset: 3712)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1211, line: 62, size: 384, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1268, file: !1211, line: 63, baseType: !1264, size: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1268, file: !1211, line: 64, baseType: !1264, size: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1216, file: !1211, line: 307, baseType: !1273, size: 1088)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1211, line: 79, size: 1088, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1321}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1273, file: !1211, line: 80, baseType: !457, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1273, file: !1211, line: 81, baseType: !457, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1273, file: !1211, line: 82, baseType: !457, size: 32, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1273, file: !1211, line: 83, baseType: !457, size: 32, offset: 96)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1273, file: !1211, line: 84, baseType: !457, size: 32, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1273, file: !1211, line: 85, baseType: !457, size: 32, offset: 160)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1273, file: !1211, line: 86, baseType: !457, size: 32, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1273, file: !1211, line: 88, baseType: !1229, size: 640, offset: 224)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1273, file: !1211, line: 89, baseType: !594, size: 8, offset: 864)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1273, file: !1211, line: 90, baseType: !594, size: 8, offset: 872)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1273, file: !1211, line: 91, baseType: !594, size: 8, offset: 880)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1273, file: !1211, line: 92, baseType: !594, size: 8, offset: 888)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1273, file: !1211, line: 93, baseType: !594, size: 8, offset: 896)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1273, file: !1211, line: 94, baseType: !594, size: 8, offset: 904)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1273, file: !1211, line: 95, baseType: !1290, size: 64, offset: 960)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1292, line: 11, size: 128, elements: !1293)
!1292 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1291, file: !1292, line: 12, baseType: !219, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1291, file: !1292, line: 13, baseType: !1296, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1298, line: 56, size: 1344, elements: !1299)
!1298 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1297, file: !1298, line: 61, baseType: !234, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1297, file: !1298, line: 62, baseType: !234, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1297, file: !1298, line: 63, baseType: !234, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1297, file: !1298, line: 64, baseType: !234, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1297, file: !1298, line: 65, baseType: !234, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1297, file: !1298, line: 66, baseType: !234, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1297, file: !1298, line: 68, baseType: !234, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1297, file: !1298, line: 69, baseType: !234, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1297, file: !1298, line: 70, baseType: !234, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1297, file: !1298, line: 71, baseType: !234, size: 64, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1297, file: !1298, line: 72, baseType: !234, size: 64, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1297, file: !1298, line: 73, baseType: !234, size: 64, offset: 704)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1297, file: !1298, line: 74, baseType: !234, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1297, file: !1298, line: 75, baseType: !234, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1297, file: !1298, line: 76, baseType: !234, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1297, file: !1298, line: 81, baseType: !234, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1297, file: !1298, line: 83, baseType: !234, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1297, file: !1298, line: 84, baseType: !234, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1297, file: !1298, line: 85, baseType: !234, size: 64, offset: 1152)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1297, file: !1298, line: 86, baseType: !234, size: 64, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1297, file: !1298, line: 87, baseType: !234, size: 64, offset: 1280)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1273, file: !1211, line: 96, baseType: !457, size: 32, offset: 1024)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1216, file: !1211, line: 308, baseType: !1323, size: 4608, align: 512)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1211, line: 289, size: 4608, align: 512, elements: !1324)
!1324 = !{!1325, !1326, !1335}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1323, file: !1211, line: 290, baseType: !1234, size: 4096, align: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1323, file: !1211, line: 291, baseType: !1327, size: 512, offset: 4096)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1211, line: 268, size: 512, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1327, file: !1211, line: 269, baseType: !303, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1327, file: !1211, line: 270, baseType: !303, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1327, file: !1211, line: 271, baseType: !1332, size: 384, offset: 128)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 384, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 6)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1323, file: !1211, line: 292, baseType: !1336, offset: 4608)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 0)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1216, file: !1211, line: 309, baseType: !1340, size: 32768)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 32768, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 4096)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !275, line: 378, baseType: !1344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !440, file: !275, line: 384, baseType: !763, size: 192, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !295, file: !275, line: 500, baseType: !143, offset: 6656)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !295, file: !275, line: 501, baseType: !1348, size: 64, offset: 6656)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !275, line: 387, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !295, file: !275, line: 516, baseType: !1351, size: 64, offset: 6720)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1353, line: 18, flags: DIFlagFwdDecl)
!1353 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !295, file: !275, line: 519, baseType: !262, size: 64, offset: 6784)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !295, file: !275, line: 521, baseType: !1356, size: 64, offset: 6848)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !275, line: 521, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !295, file: !275, line: 545, baseType: !325, size: 32, offset: 6912)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !295, file: !275, line: 548, baseType: !106, size: 8, offset: 6944)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !295, file: !275, line: 550, baseType: !1361, offset: 6952)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1362, line: 142, elements: !157)
!1362 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !295, file: !275, line: 554, baseType: !1364, size: 256, offset: 6976)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1365, line: 102, size: 256, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1366 = !{!1367, !1368, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1364, file: !1365, line: 103, baseType: !333, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1364, file: !1365, line: 104, baseType: !130, size: 128, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1364, file: !1365, line: 105, baseType: !1370, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1365, line: 21, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !1374}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !295, file: !275, line: 557, baseType: !457, size: 32, offset: 7232)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !292, file: !275, line: 565, baseType: !1377, offset: 7296)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: -1)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !274, file: !275, line: 333, baseType: !1381, size: 64, offset: 576)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !264, line: 284, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !264, line: 284, size: 64, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1382, file: !264, line: 284, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !323, line: 19, baseType: !234)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !274, file: !275, line: 334, baseType: !234, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !274, file: !275, line: 343, baseType: !1388, size: 256, offset: 704)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !275, line: 340, size: 256, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1388, file: !275, line: 341, baseType: !282, size: 192, align: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1388, file: !275, line: 342, baseType: !234, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !274, file: !275, line: 351, baseType: !130, size: 128, offset: 960)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !274, file: !275, line: 353, baseType: !1394, size: 64, offset: 1088)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !275, line: 353, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !274, file: !275, line: 356, baseType: !1397, size: 64, offset: 1152)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1399)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !275, line: 356, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !274, file: !275, line: 359, baseType: !234, size: 64, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !274, file: !275, line: 361, baseType: !262, size: 64, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !274, file: !275, line: 362, baseType: !73, size: 64, offset: 1344)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !274, file: !275, line: 365, baseType: !333, size: 64, offset: 1408)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !274, file: !275, line: 373, baseType: !1405, offset: 1472)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !275, line: 296, elements: !157)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !241, file: !209, line: 90, baseType: !236, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !241, file: !209, line: 91, baseType: !1408, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !199, file: !123, line: 143, baseType: !1410, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1413, !136}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1416)
!1416 = !{!1417, !1418, !1422, !1426, !1432, !1436}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1415, file: !18, line: 40, baseType: !17, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1415, file: !18, line: 41, baseType: !1419, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!106}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1415, file: !18, line: 42, baseType: !1423, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!73}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1415, file: !18, line: 43, baseType: !1427, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!115, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1415, file: !18, line: 44, baseType: !1433, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!115}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1415, file: !18, line: 45, baseType: !1437, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !73}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !199, file: !123, line: 144, baseType: !1441, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!115, !136}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !199, file: !123, line: 145, baseType: !1445, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !136, !1448, !1454}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1353, line: 23, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1353, line: 21, size: 32, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1450, file: !1353, line: 22, baseType: !1453, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !107, line: 32, baseType: !925)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1353, line: 28, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1353, line: 26, size: 32, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1456, file: !1353, line: 27, baseType: !1459, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !107, line: 33, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !217, line: 50, baseType: !7)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !122, file: !123, line: 70, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1464, line: 123, size: 1024, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1608, !1609, !1610, !1611, !1612}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1463, file: !1464, line: 124, baseType: !325, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1463, file: !1464, line: 125, baseType: !325, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1463, file: !1464, line: 135, baseType: !1462, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1463, file: !1464, line: 136, baseType: !126, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1463, file: !1464, line: 138, baseType: !282, size: 192, align: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1463, file: !1464, line: 140, baseType: !115, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1463, file: !1464, line: 141, baseType: !7, size: 32, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1464, line: 142, baseType: !1474, size: 256, offset: 512)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1464, line: 142, size: 256, elements: !1475)
!1475 = !{!1476, !1531, !1535}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1474, file: !1464, line: 143, baseType: !1477, size: 192)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1464, line: 91, size: 192, elements: !1478)
!1478 = !{!1479, !1480, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1477, file: !1464, line: 92, baseType: !234, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1477, file: !1464, line: 94, baseType: !299, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1477, file: !1464, line: 100, baseType: !1482, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1464, line: 180, size: 704, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1501, !1502, !1503, !1529, !1530}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1483, file: !1464, line: 182, baseType: !1462, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1483, file: !1464, line: 183, baseType: !7, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1483, file: !1464, line: 186, baseType: !1488, size: 192, offset: 128)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1489, line: 19, size: 192, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1499, !1500}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1488, file: !1489, line: 20, baseType: !1492, size: 128)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1493, line: 292, size: 128, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1494 = !{!1495, !1496, !1498}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1492, file: !1493, line: 293, baseType: !143)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1492, file: !1493, line: 295, baseType: !1497, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !107, line: 148, baseType: !7)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1492, file: !1493, line: 296, baseType: !73, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1488, file: !1489, line: 21, baseType: !7, size: 32, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1488, file: !1489, line: 22, baseType: !7, size: 32, offset: 160)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1483, file: !1464, line: 187, baseType: !457, size: 32, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1483, file: !1464, line: 188, baseType: !457, size: 32, offset: 352)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1483, file: !1464, line: 189, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1464, line: 168, size: 320, elements: !1506)
!1506 = !{!1507, !1513, !1517, !1521, !1525}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1505, file: !1464, line: 169, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!79, !1511, !1482}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !264, line: 539, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1505, file: !1464, line: 171, baseType: !1514, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!79, !1462, !126, !225}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1505, file: !1464, line: 173, baseType: !1518, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!79, !1462}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1505, file: !1464, line: 174, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!79, !1462, !1462, !126}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1505, file: !1464, line: 176, baseType: !1526, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!79, !1511, !1462, !1482}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1483, file: !1464, line: 192, baseType: !130, size: 128, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1483, file: !1464, line: 194, baseType: !734, size: 128, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1474, file: !1464, line: 144, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1464, line: 103, size: 64, elements: !1533)
!1533 = !{!1534}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1532, file: !1464, line: 104, baseType: !1462, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1474, file: !1464, line: 145, baseType: !1536, size: 256)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1464, line: 107, size: 256, elements: !1537)
!1537 = !{!1538, !1603, !1606, !1607}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1536, file: !1464, line: 108, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1464, line: 217, size: 768, elements: !1542)
!1542 = !{!1543, !1563, !1567, !1571, !1576, !1580, !1584, !1588, !1589, !1590, !1591, !1599}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1541, file: !1464, line: 222, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!79, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1464, line: 197, size: 1088, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1548, file: !1464, line: 199, baseType: !1462, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1548, file: !1464, line: 200, baseType: !262, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1548, file: !1464, line: 201, baseType: !1511, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1548, file: !1464, line: 202, baseType: !73, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1548, file: !1464, line: 205, baseType: !402, size: 192, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1548, file: !1464, line: 206, baseType: !402, size: 192, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1548, file: !1464, line: 207, baseType: !79, size: 32, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1548, file: !1464, line: 208, baseType: !130, size: 128, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1548, file: !1464, line: 209, baseType: !184, size: 64, offset: 832)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1548, file: !1464, line: 211, baseType: !231, size: 64, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1548, file: !1464, line: 212, baseType: !106, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1548, file: !1464, line: 213, baseType: !106, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1548, file: !1464, line: 214, baseType: !1397, size: 64, offset: 1024)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1541, file: !1464, line: 223, baseType: !1564, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !1547}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1541, file: !1464, line: 236, baseType: !1568, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!79, !1511, !73}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1541, file: !1464, line: 238, baseType: !1572, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!73, !1511, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1541, file: !1464, line: 239, baseType: !1577, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!73, !1511, !73, !1575}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1541, file: !1464, line: 240, baseType: !1581, size: 64, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1511, !73}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1541, file: !1464, line: 242, baseType: !1585, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!215, !1547, !184, !231, !265}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1541, file: !1464, line: 252, baseType: !231, size: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1541, file: !1464, line: 259, baseType: !106, size: 8, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1541, file: !1464, line: 260, baseType: !1585, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1541, file: !1464, line: 263, baseType: !1592, size: 64, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1595, !1547, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1596, line: 52, baseType: !7)
!1596 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1464, line: 27, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1541, file: !1464, line: 266, baseType: !1600, size: 64, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!79, !1547, !273}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1536, file: !1464, line: 109, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1464, line: 31, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1536, file: !1464, line: 110, baseType: !265, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1536, file: !1464, line: 111, baseType: !1462, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1463, file: !1464, line: 148, baseType: !73, size: 64, offset: 768)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1463, file: !1464, line: 154, baseType: !303, size: 64, offset: 832)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !1464, line: 156, baseType: !226, size: 16, offset: 896)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1463, file: !1464, line: 157, baseType: !225, size: 16, offset: 912)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1463, file: !1464, line: 158, baseType: !1613, size: 64, offset: 960)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1464, line: 32, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !122, file: !123, line: 71, baseType: !1616, size: 32, offset: 448)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1617, line: 19, size: 32, elements: !1618)
!1617 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1616, file: !1617, line: 20, baseType: !463, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !122, file: !123, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !122, file: !123, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !122, file: !123, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !122, file: !123, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !122, file: !123, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !119, file: !30, line: 463, baseType: !1626, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !119, file: !30, line: 465, baseType: !1628, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !119, file: !30, line: 467, baseType: !126, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !30, line: 468, baseType: !1632, size: 64, offset: 704)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1642, !1647, !1651}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1634, file: !30, line: 88, baseType: !126, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1634, file: !30, line: 89, baseType: !238, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1634, file: !30, line: 90, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!79, !1626, !179}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1634, file: !30, line: 91, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!184, !1626, !1646, !1448, !1454}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1634, file: !30, line: 93, baseType: !1648, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{null, !1626}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1634, file: !30, line: 95, baseType: !1652, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1655)
!1655 = !{!1656, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1654, file: !37, line: 279, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!79, !1626}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1654, file: !37, line: 280, baseType: !1648, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1654, file: !37, line: 281, baseType: !1657, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1654, file: !37, line: 282, baseType: !1657, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1654, file: !37, line: 283, baseType: !1657, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1654, file: !37, line: 284, baseType: !1657, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1654, file: !37, line: 285, baseType: !1657, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1654, file: !37, line: 286, baseType: !1657, size: 64, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1654, file: !37, line: 287, baseType: !1657, size: 64, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1654, file: !37, line: 288, baseType: !1657, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1654, file: !37, line: 289, baseType: !1657, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1654, file: !37, line: 290, baseType: !1657, size: 64, offset: 704)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1654, file: !37, line: 291, baseType: !1657, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1654, file: !37, line: 292, baseType: !1657, size: 64, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1654, file: !37, line: 293, baseType: !1657, size: 64, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1654, file: !37, line: 294, baseType: !1657, size: 64, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1654, file: !37, line: 295, baseType: !1657, size: 64, offset: 1024)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1654, file: !37, line: 296, baseType: !1657, size: 64, offset: 1088)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1654, file: !37, line: 297, baseType: !1657, size: 64, offset: 1152)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1654, file: !37, line: 298, baseType: !1657, size: 64, offset: 1216)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1654, file: !37, line: 299, baseType: !1657, size: 64, offset: 1280)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1654, file: !37, line: 300, baseType: !1657, size: 64, offset: 1344)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1654, file: !37, line: 301, baseType: !1657, size: 64, offset: 1408)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !119, file: !30, line: 470, baseType: !1683, size: 64, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1685, line: 82, size: 1408, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1769, !1772, !1775}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1684, file: !1685, line: 83, baseType: !126, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1684, file: !1685, line: 84, baseType: !126, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1684, file: !1685, line: 85, baseType: !1626, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1684, file: !1685, line: 86, baseType: !238, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1684, file: !1685, line: 87, baseType: !238, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1684, file: !1685, line: 88, baseType: !238, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1684, file: !1685, line: 90, baseType: !1694, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!79, !1626, !1697}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706, !1720, !1733, !1734, !1735, !1736, !1737, !1745, !1746, !1747, !1748, !1749, !1750}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1698, file: !24, line: 96, baseType: !126, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1698, file: !24, line: 97, baseType: !1683, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1698, file: !24, line: 99, baseType: !70, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1698, file: !24, line: 100, baseType: !126, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1698, file: !24, line: 102, baseType: !106, size: 8, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1698, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1698, file: !24, line: 105, baseType: !1707, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1710, line: 262, size: 1600, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1714, !1715, !1719}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !1710, line: 263, baseType: !1713, size: 256)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !1259)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1709, file: !1710, line: 264, baseType: !1713, size: 256, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1709, file: !1710, line: 265, baseType: !1716, size: 1024, offset: 512)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1709, file: !1710, line: 266, baseType: !115, size: 64, offset: 1536)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1698, file: !24, line: 106, baseType: !1721, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1710, line: 210, size: 256, elements: !1724)
!1724 = !{!1725, !1729, !1731, !1732}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1723, file: !1710, line: 211, baseType: !1726, size: 72)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 72, elements: !1727)
!1727 = !{!1728}
!1728 = !DISubrange(count: 9)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1723, file: !1710, line: 212, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1710, line: 14, baseType: !234)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1723, file: !1710, line: 213, baseType: !458, size: 32, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1723, file: !1710, line: 214, baseType: !458, size: 32, offset: 224)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1698, file: !24, line: 108, baseType: !1657, size: 64, offset: 448)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1698, file: !24, line: 109, baseType: !1648, size: 64, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1698, file: !24, line: 110, baseType: !1657, size: 64, offset: 576)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1698, file: !24, line: 111, baseType: !1648, size: 64, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1698, file: !24, line: 112, baseType: !1738, size: 64, offset: 704)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!79, !1626, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1742, file: !37, line: 51, baseType: !79, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1698, file: !24, line: 113, baseType: !1657, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1698, file: !24, line: 114, baseType: !238, size: 64, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1698, file: !24, line: 115, baseType: !238, size: 64, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1698, file: !24, line: 117, baseType: !1652, size: 64, offset: 960)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1698, file: !24, line: 118, baseType: !1648, size: 64, offset: 1024)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1698, file: !24, line: 120, baseType: !1751, size: 64, offset: 1088)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1684, file: !1685, line: 91, baseType: !1639, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1684, file: !1685, line: 92, baseType: !1657, size: 64, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1684, file: !1685, line: 93, baseType: !1648, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1684, file: !1685, line: 94, baseType: !1657, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1684, file: !1685, line: 95, baseType: !1648, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1684, file: !1685, line: 97, baseType: !1657, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1684, file: !1685, line: 98, baseType: !1657, size: 64, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1684, file: !1685, line: 100, baseType: !1738, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1684, file: !1685, line: 101, baseType: !1657, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1684, file: !1685, line: 103, baseType: !1657, size: 64, offset: 1024)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1684, file: !1685, line: 105, baseType: !1657, size: 64, offset: 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1684, file: !1685, line: 107, baseType: !1652, size: 64, offset: 1152)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1684, file: !1685, line: 109, baseType: !1766, size: 64, offset: 1216)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1685, line: 109, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1684, file: !1685, line: 111, baseType: !1770, size: 64, offset: 1280)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1685, line: 111, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1684, file: !1685, line: 112, baseType: !1773, offset: 1344)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1774, line: 187, elements: !157)
!1774 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1684, file: !1685, line: 114, baseType: !106, size: 8, offset: 1344)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !119, file: !30, line: 471, baseType: !1697, size: 64, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !119, file: !30, line: 473, baseType: !73, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !119, file: !30, line: 475, baseType: !73, size: 64, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !119, file: !30, line: 480, baseType: !402, size: 192, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !119, file: !30, line: 484, baseType: !1781, size: 576, offset: 1216)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1781, file: !30, line: 362, baseType: !130, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1781, file: !30, line: 363, baseType: !130, size: 128, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1781, file: !30, line: 364, baseType: !130, size: 128, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1781, file: !30, line: 365, baseType: !130, size: 128, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1781, file: !30, line: 366, baseType: !106, size: 8, offset: 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1781, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !119, file: !30, line: 485, baseType: !1790, size: 2304, offset: 1792)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1887, !1891}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1790, file: !37, line: 566, baseType: !1741, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1790, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1790, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1790, file: !37, line: 569, baseType: !106, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1790, file: !37, line: 570, baseType: !106, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1790, file: !37, line: 571, baseType: !106, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1790, file: !37, line: 572, baseType: !106, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1790, file: !37, line: 573, baseType: !106, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1790, file: !37, line: 574, baseType: !106, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1790, file: !37, line: 575, baseType: !106, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1790, file: !37, line: 576, baseType: !106, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1790, file: !37, line: 577, baseType: !457, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1790, file: !37, line: 578, baseType: !143, offset: 96)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1790, file: !37, line: 580, baseType: !130, size: 128, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1790, file: !37, line: 581, baseType: !763, size: 192, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1790, file: !37, line: 582, baseType: !1808, size: 64, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1810, line: 43, size: 1472, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1819, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1809, file: !1810, line: 44, baseType: !126, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1809, file: !1810, line: 45, baseType: !79, size: 32, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1809, file: !1810, line: 46, baseType: !130, size: 128, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !1810, line: 47, baseType: !143, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1809, file: !1810, line: 48, baseType: !1817, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1809, file: !1810, line: 49, baseType: !1820, size: 320, offset: 320)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1821, line: 11, size: 320, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !{!1823, !1824, !1825, !1830}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1820, file: !1821, line: 16, baseType: !727, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1820, file: !1821, line: 17, baseType: !234, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1820, file: !1821, line: 18, baseType: !1826, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !1821, line: 19, baseType: !457, size: 32, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1809, file: !1810, line: 50, baseType: !234, size: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1809, file: !1810, line: 51, baseType: !533, size: 64, offset: 704)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1809, file: !1810, line: 52, baseType: !533, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1809, file: !1810, line: 53, baseType: !533, size: 64, offset: 832)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1809, file: !1810, line: 54, baseType: !533, size: 64, offset: 896)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1809, file: !1810, line: 55, baseType: !533, size: 64, offset: 960)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1809, file: !1810, line: 56, baseType: !234, size: 64, offset: 1024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1809, file: !1810, line: 57, baseType: !234, size: 64, offset: 1088)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1809, file: !1810, line: 58, baseType: !234, size: 64, offset: 1152)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1809, file: !1810, line: 59, baseType: !234, size: 64, offset: 1216)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1809, file: !1810, line: 60, baseType: !234, size: 64, offset: 1280)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1809, file: !1810, line: 61, baseType: !1626, size: 64, offset: 1344)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1809, file: !1810, line: 62, baseType: !106, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1809, file: !1810, line: 63, baseType: !106, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1790, file: !37, line: 583, baseType: !106, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1790, file: !37, line: 584, baseType: !106, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1790, file: !37, line: 585, baseType: !106, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1790, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1790, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1790, file: !37, line: 592, baseType: !525, size: 512, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1790, file: !37, line: 593, baseType: !303, size: 64, offset: 1088)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1790, file: !37, line: 594, baseType: !1364, size: 256, offset: 1152)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1790, file: !37, line: 595, baseType: !734, size: 128, offset: 1408)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1790, file: !37, line: 596, baseType: !1817, size: 64, offset: 1536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1790, file: !37, line: 597, baseType: !325, size: 32, offset: 1600)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1790, file: !37, line: 598, baseType: !325, size: 32, offset: 1632)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1790, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1790, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1790, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1790, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1790, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1790, file: !37, line: 604, baseType: !106, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1790, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1790, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1790, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1790, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1790, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1790, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1790, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1790, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1790, file: !37, line: 613, baseType: !79, size: 32, offset: 1792)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1790, file: !37, line: 614, baseType: !79, size: 32, offset: 1824)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1790, file: !37, line: 615, baseType: !303, size: 64, offset: 1856)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1790, file: !37, line: 616, baseType: !303, size: 64, offset: 1920)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1790, file: !37, line: 617, baseType: !303, size: 64, offset: 1984)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1790, file: !37, line: 618, baseType: !303, size: 64, offset: 2048)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1790, file: !37, line: 620, baseType: !1878, size: 64, offset: 2112)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1879, file: !37, line: 537, baseType: !143)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1879, file: !37, line: 538, baseType: !7, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1879, file: !37, line: 540, baseType: !130, size: 128, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1879, file: !37, line: 543, baseType: !1885, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1790, file: !37, line: 621, baseType: !1888, size: 64, offset: 2176)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !1626, !687}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1790, file: !37, line: 622, baseType: !1892, size: 64, offset: 2240)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !119, file: !30, line: 486, baseType: !1895, size: 64, offset: 4096)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1904, !1905, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1896, file: !37, line: 643, baseType: !1654, size: 1472)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1896, file: !37, line: 644, baseType: !1657, size: 64, offset: 1472)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1896, file: !37, line: 645, baseType: !1901, size: 64, offset: 1536)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !1626, !106}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1896, file: !37, line: 646, baseType: !1657, size: 64, offset: 1600)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1896, file: !37, line: 647, baseType: !1648, size: 64, offset: 1664)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1896, file: !37, line: 648, baseType: !1648, size: 64, offset: 1728)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !119, file: !30, line: 493, baseType: !1908, size: 64, offset: 4160)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1998, !1999, !2000, !2001, !2002, !2003, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1909, file: !51, line: 163, baseType: !130, size: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1909, file: !51, line: 164, baseType: !126, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1909, file: !51, line: 165, baseType: !1914, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1917)
!1917 = !{!1918, !1947, !1958, !1963, !1967, !1975, !1979, !1983, !1990, !1994}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1916, file: !51, line: 106, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!79, !1908, !1922, !50}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1924, line: 51, size: 1344, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !1929, !1930, !1931, !1940, !1941, !1942, !1943, !1944, !1945, !1946}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1923, file: !1924, line: 52, baseType: !126, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1923, file: !1924, line: 53, baseType: !1928, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1924, line: 28, baseType: !457)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1923, file: !1924, line: 54, baseType: !126, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1923, file: !1924, line: 55, baseType: !84, size: 192, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1923, file: !1924, line: 57, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1924, line: 31, size: 704, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1933, file: !1924, line: 32, baseType: !184, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1933, file: !1924, line: 33, baseType: !79, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1933, file: !1924, line: 34, baseType: !73, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1933, file: !1924, line: 35, baseType: !1932, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1933, file: !1924, line: 43, baseType: !253, size: 448, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1923, file: !1924, line: 58, baseType: !1932, size: 64, offset: 448)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1923, file: !1924, line: 59, baseType: !1922, size: 64, offset: 512)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1923, file: !1924, line: 60, baseType: !1922, size: 64, offset: 576)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1923, file: !1924, line: 61, baseType: !1922, size: 64, offset: 640)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1923, file: !1924, line: 63, baseType: !122, size: 512, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1923, file: !1924, line: 65, baseType: !234, size: 64, offset: 1216)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1923, file: !1924, line: 66, baseType: !73, size: 64, offset: 1280)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1916, file: !51, line: 108, baseType: !1948, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!79, !1908, !1951, !50}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1952, file: !51, line: 64, baseType: !88, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1952, file: !51, line: 65, baseType: !79, size: 32, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1952, file: !51, line: 66, baseType: !1957, size: 512, offset: 96)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 512, elements: !820)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1916, file: !51, line: 110, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!79, !1908, !7, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !107, line: 164, baseType: !234)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1916, file: !51, line: 111, baseType: !1964, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1908, !7}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1916, file: !51, line: 112, baseType: !1968, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!79, !1908, !1922, !1971, !7, !1973, !1974}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1916, file: !51, line: 117, baseType: !1976, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!79, !1908, !7, !7, !73}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1916, file: !51, line: 119, baseType: !1980, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1908, !7, !7}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1916, file: !51, line: 121, baseType: !1984, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!79, !1908, !1987, !106}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !1989, line: 11, flags: DIFlagFwdDecl)
!1989 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1916, file: !51, line: 122, baseType: !1991, size: 64, offset: 512)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1908, !1987}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1916, file: !51, line: 123, baseType: !1995, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!79, !1908, !1951, !1973, !1974}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1909, file: !51, line: 166, baseType: !73, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1909, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1909, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1909, file: !51, line: 171, baseType: !88, size: 64, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1909, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1909, file: !51, line: 173, baseType: !2004, size: 64, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1909, file: !51, line: 175, baseType: !1908, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1909, file: !51, line: 182, baseType: !1962, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1909, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1909, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1909, file: !51, line: 185, baseType: !1492, size: 128, offset: 768)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1909, file: !51, line: 186, baseType: !402, size: 192, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1909, file: !51, line: 187, baseType: !2013, offset: 1088)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1378)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !119, file: !30, line: 499, baseType: !130, size: 128, offset: 4224)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !119, file: !30, line: 502, baseType: !2016, size: 64, offset: 4352)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !119, file: !30, line: 504, baseType: !2020, size: 64, offset: 4416)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !119, file: !30, line: 505, baseType: !303, size: 64, offset: 4480)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !119, file: !30, line: 510, baseType: !303, size: 64, offset: 4544)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !119, file: !30, line: 511, baseType: !2024, size: 64, offset: 4608)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !119, file: !30, line: 513, baseType: !2028, size: 64, offset: 4672)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2029, file: !30, line: 293, baseType: !7, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2029, file: !30, line: 294, baseType: !234, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !119, file: !30, line: 515, baseType: !130, size: 128, offset: 4736)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !119, file: !30, line: 526, baseType: !2035, offset: 4864)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2036, line: 5, elements: !157)
!2036 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !119, file: !30, line: 528, baseType: !1922, size: 64, offset: 4864)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !119, file: !30, line: 529, baseType: !88, size: 64, offset: 4928)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !119, file: !30, line: 534, baseType: !2040, size: 32, offset: 4992)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !107, line: 16, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !107, line: 13, baseType: !457)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !119, file: !30, line: 535, baseType: !457, size: 32, offset: 5024)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !119, file: !30, line: 537, baseType: !143, offset: 5056)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !119, file: !30, line: 538, baseType: !130, size: 128, offset: 5056)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !119, file: !30, line: 540, baseType: !2046, size: 64, offset: 5184)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2048, line: 54, size: 960, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2060, !2064, !2065, !2066, !2067, !2071, !2075, !2076}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2047, file: !2048, line: 55, baseType: !126, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2047, file: !2048, line: 56, baseType: !70, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2047, file: !2048, line: 58, baseType: !238, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2047, file: !2048, line: 59, baseType: !238, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2047, file: !2048, line: 60, baseType: !136, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2047, file: !2048, line: 62, baseType: !1639, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2047, file: !2048, line: 63, baseType: !2057, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!184, !1626, !1646}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2047, file: !2048, line: 65, baseType: !2061, size: 64, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !2046}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2047, file: !2048, line: 66, baseType: !1648, size: 64, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2047, file: !2048, line: 68, baseType: !1657, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2047, file: !2048, line: 70, baseType: !1413, size: 64, offset: 640)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2047, file: !2048, line: 71, baseType: !2068, size: 64, offset: 704)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!115, !1626}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2047, file: !2048, line: 73, baseType: !2072, size: 64, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !1626, !1448, !1454}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2047, file: !2048, line: 75, baseType: !1652, size: 64, offset: 832)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2047, file: !2048, line: 77, baseType: !1770, size: 64, offset: 896)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !119, file: !30, line: 541, baseType: !238, size: 64, offset: 5248)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !119, file: !30, line: 543, baseType: !1648, size: 64, offset: 5312)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !119, file: !30, line: 544, baseType: !2080, size: 64, offset: 5376)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !119, file: !30, line: 545, baseType: !2083, size: 64, offset: 5440)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !119, file: !30, line: 547, baseType: !106, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !119, file: !30, line: 548, baseType: !106, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !119, file: !30, line: 549, baseType: !106, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !119, file: !30, line: 550, baseType: !106, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !92, file: !85, line: 116, baseType: !2090, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!106, !109, !126}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !92, file: !85, line: 118, baseType: !2094, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!79, !109, !126, !7, !73, !231}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !92, file: !85, line: 123, baseType: !2098, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!79, !109, !126, !2101, !231}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !92, file: !85, line: 126, baseType: !2103, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!126, !109}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !92, file: !85, line: 127, baseType: !2103, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !92, file: !85, line: 128, baseType: !2108, size: 64, offset: 576)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!88, !109}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !92, file: !85, line: 130, baseType: !2112, size: 64, offset: 640)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!88, !109, !88}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !92, file: !85, line: 133, baseType: !2116, size: 64, offset: 704)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!88, !109, !126}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !92, file: !85, line: 135, baseType: !2120, size: 64, offset: 768)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!79, !109, !126, !126, !7, !7, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !85, line: 43, size: 640, elements: !2125)
!2125 = !{!2126, !2127, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2124, file: !85, line: 44, baseType: !88, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2124, file: !85, line: 45, baseType: !7, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2124, file: !85, line: 46, baseType: !2129, size: 512, offset: 128)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 512, elements: !563)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !92, file: !85, line: 140, baseType: !2112, size: 64, offset: 832)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !92, file: !85, line: 143, baseType: !2108, size: 64, offset: 896)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !92, file: !85, line: 145, baseType: !95, size: 64, offset: 960)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !92, file: !85, line: 146, baseType: !2134, size: 64, offset: 1024)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!79, !109, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !85, line: 29, size: 128, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2138, file: !85, line: 30, baseType: !7, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2138, file: !85, line: 31, baseType: !7, size: 32, offset: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2138, file: !85, line: 32, baseType: !109, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !92, file: !85, line: 148, baseType: !2144, size: 64, offset: 1088)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!79, !109, !1626}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !84, file: !85, line: 20, baseType: !1626, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !76, line: 355, baseType: !74, size: 64, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !75, file: !76, line: 356, baseType: !130, size: 128, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !76, line: 357, baseType: !130, size: 128, offset: 512)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !75, file: !76, line: 358, baseType: !130, size: 128, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !75, file: !76, line: 359, baseType: !130, size: 128, offset: 768)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !75, file: !76, line: 360, baseType: !2154, size: 32, offset: 896)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !76, line: 179, size: 32, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2154, file: !76, line: 180, baseType: !457, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2154, file: !76, line: 181, baseType: !457, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2154, file: !76, line: 182, baseType: !457, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2154, file: !76, line: 183, baseType: !457, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2154, file: !76, line: 184, baseType: !457, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2154, file: !76, line: 185, baseType: !457, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !76, line: 361, baseType: !2163, size: 32, offset: 928)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !76, line: 190, size: 32, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2163, file: !76, line: 191, baseType: !457, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2163, file: !76, line: 192, baseType: !457, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2163, file: !76, line: 193, baseType: !457, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2163, file: !76, line: 194, baseType: !457, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2163, file: !76, line: 195, baseType: !457, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2163, file: !76, line: 196, baseType: !457, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2163, file: !76, line: 197, baseType: !457, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2163, file: !76, line: 198, baseType: !457, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2163, file: !76, line: 199, baseType: !457, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2163, file: !76, line: 200, baseType: !457, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2163, file: !76, line: 201, baseType: !457, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2163, file: !76, line: 202, baseType: !457, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2163, file: !76, line: 203, baseType: !457, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2163, file: !76, line: 204, baseType: !457, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !75, file: !76, line: 362, baseType: !2180, size: 960, offset: 960)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !76, line: 234, size: 960, elements: !2181)
!2181 = !{!2182, !2184, !2191, !2193, !2194, !2195, !2200, !2203}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2180, file: !76, line: 235, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !76, line: 217, baseType: !966)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2180, file: !76, line: 236, baseType: !2185, size: 32, offset: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !76, line: 227, size: 32, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2185, file: !76, line: 228, baseType: !457, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2185, file: !76, line: 229, baseType: !457, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2185, file: !76, line: 230, baseType: !457, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2185, file: !76, line: 231, baseType: !457, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2180, file: !76, line: 237, baseType: !2192, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !76, line: 218, baseType: !303)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2180, file: !76, line: 238, baseType: !184, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2180, file: !76, line: 239, baseType: !130, size: 128, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2180, file: !76, line: 240, baseType: !2196, size: 320, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !76, line: 219, baseType: !2197)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 320, elements: !2198)
!2198 = !{!2199}
!2199 = !DISubrange(count: 40)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2180, file: !76, line: 241, baseType: !2201, size: 160, offset: 704)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !76, line: 220, baseType: !2202)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 160, elements: !1230)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2180, file: !76, line: 242, baseType: !2204, size: 64, offset: 896)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !82, line: 899, size: 192, elements: !2206)
!2206 = !{!2207, !2209, !2214, !2220, !2227, !2233, !2239, !2247}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2205, file: !82, line: 900, baseType: !2208, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !82, line: 635, baseType: !457)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2205, file: !82, line: 904, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !82, line: 901, size: 128, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2210, file: !82, line: 902, baseType: !2208, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2210, file: !82, line: 903, baseType: !303, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2205, file: !82, line: 910, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !82, line: 906, size: 128, elements: !2216)
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2215, file: !82, line: 907, baseType: !2208, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2215, file: !82, line: 908, baseType: !457, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2215, file: !82, line: 909, baseType: !184, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2205, file: !82, line: 916, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !82, line: 912, size: 128, elements: !2222)
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2221, file: !82, line: 913, baseType: !2208, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2221, file: !82, line: 914, baseType: !457, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2221, file: !82, line: 915, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2205, file: !82, line: 922, baseType: !2228, size: 128)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !82, line: 918, size: 128, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2228, file: !82, line: 919, baseType: !2208, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2228, file: !82, line: 920, baseType: !457, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2228, file: !82, line: 921, baseType: !2204, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2205, file: !82, line: 928, baseType: !2234, size: 128)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !82, line: 924, size: 128, elements: !2235)
!2235 = !{!2236, !2237, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2234, file: !82, line: 925, baseType: !2208, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2234, file: !82, line: 926, baseType: !2208, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2234, file: !82, line: 927, baseType: !81, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2205, file: !82, line: 935, baseType: !2240, size: 192)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !82, line: 930, size: 192, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2246}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !82, line: 931, baseType: !2208, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2240, file: !82, line: 932, baseType: !457, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2240, file: !82, line: 933, baseType: !2245, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !82, line: 128, baseType: !303)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2240, file: !82, line: 934, baseType: !457, size: 32, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2205, file: !82, line: 941, baseType: !2248, size: 96)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !82, line: 937, size: 96, elements: !2249)
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2248, file: !82, line: 938, baseType: !2208, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2248, file: !82, line: 939, baseType: !457, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2248, file: !82, line: 940, baseType: !457, size: 32, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !75, file: !76, line: 363, baseType: !2254, size: 1344, offset: 1920)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !76, line: 275, size: 1344, elements: !2255)
!2255 = !{!2256, !2257, !2267}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2254, file: !76, line: 276, baseType: !79, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2254, file: !76, line: 277, baseType: !2258, size: 32, offset: 32)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !76, line: 254, size: 32, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2258, file: !76, line: 255, baseType: !457, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2258, file: !76, line: 256, baseType: !457, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2258, file: !76, line: 257, baseType: !457, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2258, file: !76, line: 258, baseType: !457, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2258, file: !76, line: 259, baseType: !457, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2258, file: !76, line: 260, baseType: !457, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2258, file: !76, line: 261, baseType: !457, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2254, file: !76, line: 278, baseType: !2268, size: 1280, offset: 64)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2269, size: 1280, elements: !2280)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !76, line: 264, size: 256, elements: !2270)
!2270 = !{!2271, !2277, !2278, !2279}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2269, file: !76, line: 269, baseType: !2272, size: 8)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2269, file: !76, line: 265, size: 8, elements: !2273)
!2273 = !{!2274, !2275, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2272, file: !76, line: 266, baseType: !594, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2272, file: !76, line: 267, baseType: !594, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2272, file: !76, line: 268, baseType: !594, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2269, file: !76, line: 270, baseType: !79, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2269, file: !76, line: 271, baseType: !79, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2269, file: !76, line: 272, baseType: !130, size: 128, offset: 128)
!2280 = !{!2281}
!2281 = !DISubrange(count: 5)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !75, file: !76, line: 364, baseType: !2283, size: 640, offset: 3264)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !76, line: 315, size: 640, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2294, !2303, !2304, !2305}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2283, file: !76, line: 316, baseType: !81, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2283, file: !76, line: 317, baseType: !303, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2283, file: !76, line: 318, baseType: !303, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2283, file: !76, line: 319, baseType: !130, size: 128, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2283, file: !76, line: 320, baseType: !2290, size: 8, offset: 320)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !76, line: 305, size: 8, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2290, file: !76, line: 306, baseType: !594, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2290, file: !76, line: 307, baseType: !594, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2283, file: !76, line: 321, baseType: !2295, size: 128, offset: 384)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !76, line: 310, size: 128, elements: !2296)
!2296 = !{!2297, !2302}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2295, file: !76, line: 311, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2295, file: !76, line: 312, baseType: !1626, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2283, file: !76, line: 322, baseType: !1808, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2283, file: !76, line: 323, baseType: !79, size: 32, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2283, file: !76, line: 324, baseType: !79, size: 32, offset: 608)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !75, file: !76, line: 365, baseType: !2307, size: 192, offset: 3904)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !76, line: 297, size: 192, elements: !2308)
!2308 = !{!2309, !2310, !2314, !2315}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2307, file: !76, line: 298, baseType: !79, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !76, line: 299, baseType: !2311, size: 8, offset: 32)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !76, line: 283, size: 8, elements: !2312)
!2312 = !{!2313}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2311, file: !76, line: 284, baseType: !594, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2307, file: !76, line: 300, baseType: !79, size: 32, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2307, file: !76, line: 301, baseType: !2316, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !76, line: 287, size: 64, elements: !2318)
!2318 = !{!2319, !2324, !2325, !2326}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2317, file: !76, line: 291, baseType: !2320, size: 8)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2317, file: !76, line: 288, size: 8, elements: !2321)
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2320, file: !76, line: 289, baseType: !594, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2320, file: !76, line: 290, baseType: !594, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2317, file: !76, line: 292, baseType: !594, size: 8, offset: 8)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2317, file: !76, line: 293, baseType: !594, size: 8, offset: 16)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2317, file: !76, line: 294, baseType: !79, size: 32, offset: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !75, file: !76, line: 366, baseType: !2328, size: 64, offset: 4096)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !76, line: 209, size: 64, elements: !2329)
!2329 = !{!2330}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2328, file: !76, line: 210, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !76, line: 84, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !75, file: !76, line: 367, baseType: !2334, size: 384, offset: 4160)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !76, line: 341, size: 384, elements: !2335)
!2335 = !{!2336, !2339, !2340, !2341}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2334, file: !76, line: 342, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2334, file: !76, line: 343, baseType: !130, size: 128, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2334, file: !76, line: 344, baseType: !2337, size: 64, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2334, file: !76, line: 345, baseType: !130, size: 128, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !75, file: !76, line: 368, baseType: !2343, size: 64, offset: 4544)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !76, line: 122, size: 1216, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2353, !2357, !2361, !2362, !2363}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2344, file: !76, line: 123, baseType: !1721, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2344, file: !76, line: 124, baseType: !130, size: 128, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2344, file: !76, line: 125, baseType: !2349, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!106, !126, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2344, file: !76, line: 126, baseType: !2354, size: 64, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!79, !74, !1721}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2344, file: !76, line: 127, baseType: !2358, size: 64, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !74}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2344, file: !76, line: 128, baseType: !1648, size: 64, offset: 384)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2344, file: !76, line: 129, baseType: !1648, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2344, file: !76, line: 130, baseType: !2364, size: 704, offset: 512)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !76, line: 108, size: 704, elements: !2365)
!2365 = !{!2366, !2367, !2371, !2372, !2373}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2364, file: !76, line: 109, baseType: !122, size: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2364, file: !76, line: 110, baseType: !2368, size: 64, offset: 512)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!79, !74}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2364, file: !76, line: 111, baseType: !2358, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2364, file: !76, line: 112, baseType: !106, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2364, file: !76, line: 113, baseType: !106, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !75, file: !76, line: 369, baseType: !2375, size: 64, offset: 4608)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !76, line: 138, size: 256, elements: !2377)
!2377 = !{!2378, !2379, !2383, !2387}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2376, file: !76, line: 139, baseType: !74, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2376, file: !76, line: 140, baseType: !2380, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!79, !74, !457}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2376, file: !76, line: 141, baseType: !2384, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !74, !457}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2376, file: !76, line: 142, baseType: !2358, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !75, file: !76, line: 370, baseType: !2389, size: 64, offset: 4672)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !76, line: 162, size: 2816, elements: !2391)
!2391 = !{!2392, !2396, !2397, !2398, !2399, !2408, !2409}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2390, file: !76, line: 163, baseType: !2393, size: 640)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 640, elements: !2394)
!2394 = !{!2395}
!2395 = !DISubrange(count: 80)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2390, file: !76, line: 164, baseType: !2393, size: 640, offset: 640)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2390, file: !76, line: 165, baseType: !1721, size: 64, offset: 1280)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2390, file: !76, line: 166, baseType: !7, size: 32, offset: 1344)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2390, file: !76, line: 167, baseType: !2400, size: 192, offset: 1408)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !76, line: 154, size: 192, elements: !2401)
!2401 = !{!2402, !2404, !2406}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2400, file: !76, line: 155, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !76, line: 150, baseType: !2368)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2400, file: !76, line: 156, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !76, line: 151, baseType: !2368)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2400, file: !76, line: 157, baseType: !2407, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !76, line: 152, baseType: !2384)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2390, file: !76, line: 168, baseType: !1698, size: 1152, offset: 1600)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2390, file: !76, line: 169, baseType: !70, size: 64, offset: 2752)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !75, file: !76, line: 371, baseType: !2411, size: 64, offset: 4736)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2413)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !76, line: 348, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !75, file: !76, line: 372, baseType: !73, size: 64, offset: 4800)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !75, file: !76, line: 373, baseType: !119, size: 5568, offset: 4864)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !75, file: !76, line: 374, baseType: !7, size: 32, offset: 10432)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !75, file: !76, line: 375, baseType: !7, size: 32, offset: 10464)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !75, file: !76, line: 376, baseType: !130, size: 128, offset: 10496)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !75, file: !76, line: 377, baseType: !402, size: 192, offset: 10624)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !75, file: !76, line: 378, baseType: !2358, size: 64, offset: 10816)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan_fps", file: !3, line: 51, size: 768, elements: !2423)
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2422, file: !3, line: 52, baseType: !303, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "trip_point", scope: !2422, file: !3, line: 53, baseType: !303, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !2422, file: !3, line: 54, baseType: !303, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "noise_level", scope: !2422, file: !3, line: 55, baseType: !303, size: 64, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2422, file: !3, line: 56, baseType: !303, size: 64, offset: 256)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2422, file: !3, line: 57, baseType: !2202, size: 160, offset: 320)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !2422, file: !3, line: 58, baseType: !2431, size: 256, offset: 512)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2432)
!2432 = !{!2433, !2434, !2439}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2431, file: !30, line: 100, baseType: !221, size: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2431, file: !30, line: 101, baseType: !2435, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!215, !1626, !2438, !184}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2431, file: !30, line: 103, baseType: !2440, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!215, !1626, !2438, !126, !231}
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !82, line: 421, baseType: !457)
!2444 = !{!0, !2445, !2448, !2453, !2456, !2458, !2465, !2524, !2566, !2569}
!2445 = !DIGlobalVariableExpression(var: !2446, expr: !DIExpression())
!2446 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description174", scope: !2, file: !3, line: 20, type: !2447, isLocal: true, isDefinition: true, align: 8)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1259)
!2448 = !DIGlobalVariableExpression(var: !2449, expr: !DIExpression())
!2449 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file175", scope: !2, file: !3, line: 21, type: !2450, isLocal: true, isDefinition: true, align: 8)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 208, elements: !2451)
!2451 = !{!2452}
!2452 = !DISubrange(count: 26)
!2453 = !DIGlobalVariableExpression(var: !2454, expr: !DIExpression())
!2454 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license176", scope: !2, file: !3, line: 21, type: !2455, isLocal: true, isDefinition: true, align: 8)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !820)
!2456 = !DIGlobalVariableExpression(var: !2457, expr: !DIExpression())
!2457 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_fan_driver_init182", scope: !2, file: !3, line: 497, type: !73, isLocal: true, isDefinition: true)
!2458 = !DIGlobalVariableExpression(var: !2459, expr: !DIExpression())
!2459 = distinct !DIGlobalVariable(name: "__exitcall_acpi_fan_driver_exit", scope: !2, file: !3, line: 497, type: !2460, isLocal: true, isDefinition: true)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2461, line: 117, baseType: !2462)
!2461 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null}
!2465 = !DIGlobalVariableExpression(var: !2466, expr: !DIExpression())
!2466 = distinct !DIGlobalVariable(name: "acpi_fan_driver", scope: !2, file: !3, line: 76, type: !2467, isLocal: true, isDefinition: true)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2468, line: 200, size: 1600, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2469 = !{!2470, !2511, !2512, !2516, !2520, !2521, !2522, !2523}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2467, file: !2468, line: 201, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!79, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2468, line: 22, size: 6208, elements: !2476)
!2476 = !{!2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2498, !2505, !2506, !2509}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2475, file: !2468, line: 23, baseType: !126, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2475, file: !2468, line: 24, baseType: !79, size: 32, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2475, file: !2468, line: 25, baseType: !106, size: 8, offset: 96)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2475, file: !2468, line: 26, baseType: !119, size: 5568, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2475, file: !2468, line: 27, baseType: !303, size: 64, offset: 5696)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2475, file: !2468, line: 28, baseType: !2029, size: 128, offset: 5760)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2475, file: !2468, line: 29, baseType: !457, size: 32, offset: 5888)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2475, file: !2468, line: 30, baseType: !2485, size: 64, offset: 5952)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2487, line: 20, size: 512, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2488 = !{!2489, !2491, !2492, !2493, !2494, !2495, !2496, !2497}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2486, file: !2487, line: 21, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !107, line: 158, baseType: !1156)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2486, file: !2487, line: 22, baseType: !2490, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2486, file: !2487, line: 23, baseType: !126, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2486, file: !2487, line: 24, baseType: !234, size: 64, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2486, file: !2487, line: 25, baseType: !234, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2486, file: !2487, line: 26, baseType: !2485, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2486, file: !2487, line: 26, baseType: !2485, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2486, file: !2487, line: 26, baseType: !2485, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2475, file: !2468, line: 32, baseType: !2499, size: 64, offset: 6016)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1710, line: 586, size: 256, elements: !2502)
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2501, file: !1710, line: 587, baseType: !2202, size: 160)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2501, file: !1710, line: 588, baseType: !1730, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2475, file: !2468, line: 33, baseType: !184, size: 64, offset: 6080)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2475, file: !2468, line: 36, baseType: !2507, size: 64, offset: 6144)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2468, line: 18, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2475, file: !2468, line: 39, baseType: !2510, offset: 6208)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2036, line: 8, elements: !157)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2467, file: !2468, line: 202, baseType: !2471, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2467, file: !2468, line: 203, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2474}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2467, file: !2468, line: 204, baseType: !2517, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!79, !2474, !1741}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2467, file: !2468, line: 205, baseType: !2471, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2467, file: !2468, line: 206, baseType: !1698, size: 1152, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2467, file: !2468, line: 207, baseType: !2499, size: 64, offset: 1472)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2467, file: !2468, line: 208, baseType: !106, size: 8, offset: 1536)
!2524 = !DIGlobalVariableExpression(var: !2525, expr: !DIExpression())
!2525 = distinct !DIGlobalVariable(name: "fan_cooling_ops", scope: !2, file: !3, line: 217, type: !2526, isLocal: true, isDefinition: true)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2527)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !2528, line: 84, size: 384, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !{!2530, !2549, !2550, !2554, !2558, !2562}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2527, file: !2528, line: 85, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!79, !2534, !1973}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !2528, line: 93, size: 6528, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2545, !2546, !2547, !2548}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2535, file: !2528, line: 94, baseType: !79, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2535, file: !2528, line: 95, baseType: !2202, size: 160, offset: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2535, file: !2528, line: 96, baseType: !119, size: 5568, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2535, file: !2528, line: 97, baseType: !1922, size: 64, offset: 5760)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2535, file: !2528, line: 98, baseType: !73, size: 64, offset: 5824)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2535, file: !2528, line: 99, baseType: !73, size: 64, offset: 5888)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2535, file: !2528, line: 100, baseType: !2544, size: 64, offset: 5952)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2535, file: !2528, line: 101, baseType: !106, size: 8, offset: 6016)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2535, file: !2528, line: 102, baseType: !402, size: 192, offset: 6080)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2535, file: !2528, line: 103, baseType: !130, size: 128, offset: 6272)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2535, file: !2528, line: 104, baseType: !130, size: 128, offset: 6400)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2527, file: !2528, line: 86, baseType: !2531, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2527, file: !2528, line: 87, baseType: !2551, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!79, !2534, !234}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2527, file: !2528, line: 88, baseType: !2555, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!79, !2534, !658}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2527, file: !2528, line: 89, baseType: !2559, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!79, !2534, !234, !658}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2527, file: !2528, line: 90, baseType: !2563, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!79, !2534, !457, !1973}
!2566 = !DIGlobalVariableExpression(var: !2567, expr: !DIExpression())
!2567 = distinct !DIGlobalVariable(name: "fan_device_ids", scope: !2, file: !3, line: 26, type: !2568, isLocal: true, isDefinition: true)
!2568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1722, size: 1280, elements: !2280)
!2569 = !DIGlobalVariableExpression(var: !2570, expr: !DIExpression())
!2570 = distinct !DIGlobalVariable(name: "acpi_fan_pm", scope: !2, file: !3, line: 38, type: !1653, isLocal: true, isDefinition: true)
!2571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 224, elements: !2572)
!2572 = !{!2573}
!2573 = !DISubrange(count: 28)
!2574 = !{i32 7, !"Dwarf Version", i32 4}
!2575 = !{i32 2, !"Debug Info Version", i32 3}
!2576 = !{i32 1, !"wchar_size", i32 2}
!2577 = !{i32 1, !"Code Model", i32 2}
!2578 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2579 = distinct !DISubprogram(name: "acpi_fan_driver_init", scope: !3, file: !3, line: 497, type: !2580, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!79}
!2582 = !DILocation(line: 497, column: 1, scope: !2579)
!2583 = distinct !DISubprogram(name: "acpi_fan_driver_exit", scope: !3, file: !3, line: 497, type: !2463, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2584 = !DILocation(line: 497, column: 1, scope: !2583)
!2585 = distinct !DISubprogram(name: "acpi_fan_probe", scope: !3, file: !3, line: 375, type: !2472, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2586 = !DILocalVariable(name: "pdev", arg: 1, scope: !2585, file: !3, line: 375, type: !2474)
!2587 = !DILocation(line: 375, column: 51, scope: !2585)
!2588 = !DILocalVariable(name: "result", scope: !2585, file: !3, line: 377, type: !79)
!2589 = !DILocation(line: 377, column: 6, scope: !2585)
!2590 = !DILocalVariable(name: "cdev", scope: !2585, file: !3, line: 378, type: !2534)
!2591 = !DILocation(line: 378, column: 33, scope: !2585)
!2592 = !DILocalVariable(name: "fan", scope: !2585, file: !3, line: 379, type: !2593)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan", file: !3, line: 68, size: 512, elements: !2595)
!2595 = !{!2596, !2597, !2604, !2605, !2606}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "acpi4", scope: !2594, file: !3, line: 69, baseType: !106, size: 8)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "fif", scope: !2594, file: !3, line: 70, baseType: !2598, size: 256, offset: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan_fif", file: !3, line: 61, size: 256, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2603}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2598, file: !3, line: 62, baseType: !303, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "fine_grain_ctrl", scope: !2598, file: !3, line: 63, baseType: !303, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2598, file: !3, line: 64, baseType: !303, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed_notification", scope: !2598, file: !3, line: 65, baseType: !303, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "fps", scope: !2594, file: !3, line: 71, baseType: !2421, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "fps_count", scope: !2594, file: !3, line: 72, baseType: !79, size: 32, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2594, file: !3, line: 73, baseType: !2534, size: 64, offset: 448)
!2607 = !DILocation(line: 379, column: 19, scope: !2585)
!2608 = !DILocalVariable(name: "device", scope: !2585, file: !3, line: 380, type: !74)
!2609 = !DILocation(line: 380, column: 22, scope: !2585)
!2610 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2611, file: !3, line: 380, type: !88)
!2611 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 380, column: 31)
!2612 = !DILocation(line: 380, column: 31, scope: !2611)
!2613 = !DILocalVariable(name: "__mptr", scope: !2614, file: !3, line: 380, type: !73)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 380, column: 31)
!2615 = !DILocation(line: 380, column: 31, scope: !2614)
!2616 = !DILocation(line: 380, column: 31, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 380, column: 31)
!2618 = !DILocalVariable(name: "name", scope: !2585, file: !3, line: 381, type: !184)
!2619 = !DILocation(line: 381, column: 8, scope: !2585)
!2620 = !DILocation(line: 383, column: 22, scope: !2585)
!2621 = !DILocation(line: 383, column: 28, scope: !2585)
!2622 = !DILocation(line: 383, column: 8, scope: !2585)
!2623 = !DILocation(line: 383, column: 6, scope: !2585)
!2624 = !DILocation(line: 384, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 384, column: 6)
!2626 = !DILocation(line: 384, column: 6, scope: !2585)
!2627 = !DILocation(line: 385, column: 3, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 384, column: 12)
!2629 = !DILocation(line: 386, column: 3, scope: !2628)
!2630 = !DILocation(line: 388, column: 24, scope: !2585)
!2631 = !DILocation(line: 388, column: 2, scope: !2585)
!2632 = !DILocation(line: 388, column: 10, scope: !2585)
!2633 = !DILocation(line: 388, column: 22, scope: !2585)
!2634 = !DILocation(line: 389, column: 23, scope: !2585)
!2635 = !DILocation(line: 389, column: 29, scope: !2585)
!2636 = !DILocation(line: 389, column: 2, scope: !2585)
!2637 = !DILocation(line: 391, column: 24, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 391, column: 6)
!2639 = !DILocation(line: 391, column: 6, scope: !2638)
!2640 = !DILocation(line: 391, column: 6, scope: !2585)
!2641 = !DILocation(line: 392, column: 29, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 391, column: 33)
!2643 = !DILocation(line: 392, column: 12, scope: !2642)
!2644 = !DILocation(line: 392, column: 10, scope: !2642)
!2645 = !DILocation(line: 393, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 393, column: 7)
!2647 = !DILocation(line: 393, column: 7, scope: !2642)
!2648 = !DILocation(line: 394, column: 11, scope: !2646)
!2649 = !DILocation(line: 394, column: 4, scope: !2646)
!2650 = !DILocation(line: 396, column: 29, scope: !2642)
!2651 = !DILocation(line: 396, column: 12, scope: !2642)
!2652 = !DILocation(line: 396, column: 10, scope: !2642)
!2653 = !DILocation(line: 397, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 397, column: 7)
!2655 = !DILocation(line: 397, column: 7, scope: !2642)
!2656 = !DILocation(line: 398, column: 11, scope: !2654)
!2657 = !DILocation(line: 398, column: 4, scope: !2654)
!2658 = !DILocation(line: 400, column: 3, scope: !2642)
!2659 = !DILocation(line: 400, column: 8, scope: !2642)
!2660 = !DILocation(line: 400, column: 14, scope: !2642)
!2661 = !DILocation(line: 401, column: 2, scope: !2642)
!2662 = !DILocation(line: 402, column: 37, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 401, column: 9)
!2664 = !DILocation(line: 402, column: 12, scope: !2663)
!2665 = !DILocation(line: 402, column: 10, scope: !2663)
!2666 = !DILocation(line: 403, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 403, column: 7)
!2668 = !DILocation(line: 403, column: 7, scope: !2663)
!2669 = !DILocation(line: 404, column: 4, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 403, column: 15)
!2671 = !DILocation(line: 405, column: 4, scope: !2670)
!2672 = !DILocation(line: 409, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 409, column: 6)
!2674 = !DILocation(line: 409, column: 21, scope: !2673)
!2675 = !DILocation(line: 409, column: 7, scope: !2673)
!2676 = !DILocation(line: 409, column: 6, scope: !2585)
!2677 = !DILocation(line: 410, column: 8, scope: !2673)
!2678 = !DILocation(line: 410, column: 3, scope: !2673)
!2679 = !DILocation(line: 412, column: 10, scope: !2673)
!2680 = !DILocation(line: 412, column: 8, scope: !2673)
!2681 = !DILocation(line: 414, column: 41, scope: !2585)
!2682 = !DILocation(line: 414, column: 47, scope: !2585)
!2683 = !DILocation(line: 414, column: 9, scope: !2585)
!2684 = !DILocation(line: 414, column: 7, scope: !2585)
!2685 = !DILocation(line: 416, column: 13, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 416, column: 6)
!2687 = !DILocation(line: 416, column: 6, scope: !2686)
!2688 = !DILocation(line: 416, column: 6, scope: !2585)
!2689 = !DILocation(line: 417, column: 20, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 416, column: 20)
!2691 = !DILocation(line: 417, column: 12, scope: !2690)
!2692 = !DILocation(line: 417, column: 10, scope: !2690)
!2693 = !DILocation(line: 418, column: 3, scope: !2690)
!2694 = !DILocation(line: 423, column: 14, scope: !2585)
!2695 = !DILocation(line: 423, column: 2, scope: !2585)
!2696 = !DILocation(line: 423, column: 7, scope: !2585)
!2697 = !DILocation(line: 423, column: 12, scope: !2585)
!2698 = !DILocation(line: 424, column: 30, scope: !2585)
!2699 = !DILocation(line: 424, column: 36, scope: !2585)
!2700 = !DILocation(line: 424, column: 40, scope: !2585)
!2701 = !DILocation(line: 425, column: 9, scope: !2585)
!2702 = !DILocation(line: 425, column: 15, scope: !2585)
!2703 = !DILocation(line: 425, column: 22, scope: !2585)
!2704 = !DILocation(line: 424, column: 11, scope: !2585)
!2705 = !DILocation(line: 424, column: 9, scope: !2585)
!2706 = !DILocation(line: 427, column: 6, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 427, column: 6)
!2708 = !DILocation(line: 427, column: 6, scope: !2585)
!2709 = !DILocation(line: 428, column: 3, scope: !2707)
!2710 = !DILocation(line: 430, column: 30, scope: !2585)
!2711 = !DILocation(line: 430, column: 36, scope: !2585)
!2712 = !DILocation(line: 430, column: 43, scope: !2585)
!2713 = !DILocation(line: 431, column: 9, scope: !2585)
!2714 = !DILocation(line: 431, column: 15, scope: !2585)
!2715 = !DILocation(line: 431, column: 19, scope: !2585)
!2716 = !DILocation(line: 430, column: 11, scope: !2585)
!2717 = !DILocation(line: 430, column: 9, scope: !2585)
!2718 = !DILocation(line: 433, column: 6, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 433, column: 6)
!2720 = !DILocation(line: 433, column: 6, scope: !2585)
!2721 = !DILocation(line: 434, column: 3, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 433, column: 14)
!2723 = !DILocation(line: 435, column: 3, scope: !2722)
!2724 = !DILocation(line: 438, column: 2, scope: !2585)
!2725 = !DILabel(scope: !2585, name: "err_end", file: !3, line: 440)
!2726 = !DILocation(line: 440, column: 1, scope: !2585)
!2727 = !DILocation(line: 441, column: 6, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 441, column: 6)
!2729 = !DILocation(line: 441, column: 11, scope: !2728)
!2730 = !DILocation(line: 441, column: 6, scope: !2585)
!2731 = !DILocalVariable(name: "i", scope: !2732, file: !3, line: 442, type: !79)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 441, column: 18)
!2733 = !DILocation(line: 442, column: 7, scope: !2732)
!2734 = !DILocation(line: 444, column: 10, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 444, column: 3)
!2736 = !DILocation(line: 444, column: 8, scope: !2735)
!2737 = !DILocation(line: 444, column: 15, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 444, column: 3)
!2739 = !DILocation(line: 444, column: 19, scope: !2738)
!2740 = !DILocation(line: 444, column: 24, scope: !2738)
!2741 = !DILocation(line: 444, column: 17, scope: !2738)
!2742 = !DILocation(line: 444, column: 3, scope: !2735)
!2743 = !DILocation(line: 445, column: 23, scope: !2738)
!2744 = !DILocation(line: 445, column: 31, scope: !2738)
!2745 = !DILocation(line: 445, column: 35, scope: !2738)
!2746 = !DILocation(line: 445, column: 42, scope: !2738)
!2747 = !DILocation(line: 445, column: 47, scope: !2738)
!2748 = !DILocation(line: 445, column: 51, scope: !2738)
!2749 = !DILocation(line: 445, column: 54, scope: !2738)
!2750 = !DILocation(line: 445, column: 63, scope: !2738)
!2751 = !DILocation(line: 445, column: 4, scope: !2738)
!2752 = !DILocation(line: 444, column: 35, scope: !2738)
!2753 = !DILocation(line: 444, column: 3, scope: !2738)
!2754 = distinct !{!2754, !2742, !2755}
!2755 = !DILocation(line: 445, column: 67, scope: !2735)
!2756 = !DILocation(line: 446, column: 2, scope: !2732)
!2757 = !DILocation(line: 448, column: 9, scope: !2585)
!2758 = !DILocation(line: 448, column: 2, scope: !2585)
!2759 = !DILocation(line: 449, column: 1, scope: !2585)
!2760 = distinct !DISubprogram(name: "acpi_fan_remove", scope: !3, file: !3, line: 451, type: !2472, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2761 = !DILocalVariable(name: "pdev", arg: 1, scope: !2760, file: !3, line: 451, type: !2474)
!2762 = !DILocation(line: 451, column: 52, scope: !2760)
!2763 = !DILocalVariable(name: "fan", scope: !2760, file: !3, line: 453, type: !2593)
!2764 = !DILocation(line: 453, column: 19, scope: !2760)
!2765 = !DILocation(line: 453, column: 46, scope: !2760)
!2766 = !DILocation(line: 453, column: 25, scope: !2760)
!2767 = !DILocation(line: 455, column: 6, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 455, column: 6)
!2769 = !DILocation(line: 455, column: 11, scope: !2768)
!2770 = !DILocation(line: 455, column: 6, scope: !2760)
!2771 = !DILocalVariable(name: "device", scope: !2772, file: !3, line: 456, type: !74)
!2772 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 455, column: 18)
!2773 = !DILocation(line: 456, column: 23, scope: !2772)
!2774 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2775, file: !3, line: 456, type: !88)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 456, column: 32)
!2776 = !DILocation(line: 456, column: 32, scope: !2775)
!2777 = !DILocalVariable(name: "__mptr", scope: !2778, file: !3, line: 456, type: !73)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 456, column: 32)
!2779 = !DILocation(line: 456, column: 32, scope: !2778)
!2780 = !DILocation(line: 456, column: 32, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 456, column: 32)
!2782 = !DILocalVariable(name: "i", scope: !2772, file: !3, line: 457, type: !79)
!2783 = !DILocation(line: 457, column: 7, scope: !2772)
!2784 = !DILocation(line: 459, column: 10, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 459, column: 3)
!2786 = !DILocation(line: 459, column: 8, scope: !2785)
!2787 = !DILocation(line: 459, column: 15, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 459, column: 3)
!2789 = !DILocation(line: 459, column: 19, scope: !2788)
!2790 = !DILocation(line: 459, column: 24, scope: !2788)
!2791 = !DILocation(line: 459, column: 17, scope: !2788)
!2792 = !DILocation(line: 459, column: 3, scope: !2785)
!2793 = !DILocation(line: 460, column: 23, scope: !2788)
!2794 = !DILocation(line: 460, column: 31, scope: !2788)
!2795 = !DILocation(line: 460, column: 35, scope: !2788)
!2796 = !DILocation(line: 460, column: 42, scope: !2788)
!2797 = !DILocation(line: 460, column: 47, scope: !2788)
!2798 = !DILocation(line: 460, column: 51, scope: !2788)
!2799 = !DILocation(line: 460, column: 54, scope: !2788)
!2800 = !DILocation(line: 460, column: 63, scope: !2788)
!2801 = !DILocation(line: 460, column: 4, scope: !2788)
!2802 = !DILocation(line: 459, column: 35, scope: !2788)
!2803 = !DILocation(line: 459, column: 3, scope: !2788)
!2804 = distinct !{!2804, !2792, !2805}
!2805 = !DILocation(line: 460, column: 67, scope: !2785)
!2806 = !DILocation(line: 461, column: 2, scope: !2772)
!2807 = !DILocation(line: 462, column: 21, scope: !2760)
!2808 = !DILocation(line: 462, column: 27, scope: !2760)
!2809 = !DILocation(line: 462, column: 31, scope: !2760)
!2810 = !DILocation(line: 462, column: 2, scope: !2760)
!2811 = !DILocation(line: 463, column: 21, scope: !2760)
!2812 = !DILocation(line: 463, column: 26, scope: !2760)
!2813 = !DILocation(line: 463, column: 32, scope: !2760)
!2814 = !DILocation(line: 463, column: 39, scope: !2760)
!2815 = !DILocation(line: 463, column: 2, scope: !2760)
!2816 = !DILocation(line: 464, column: 36, scope: !2760)
!2817 = !DILocation(line: 464, column: 41, scope: !2760)
!2818 = !DILocation(line: 464, column: 2, scope: !2760)
!2819 = !DILocation(line: 466, column: 2, scope: !2760)
!2820 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2821, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!73, !1626, !231, !1497}
!2823 = !DILocalVariable(name: "dev", arg: 1, scope: !2820, file: !30, line: 215, type: !1626)
!2824 = !DILocation(line: 215, column: 49, scope: !2820)
!2825 = !DILocalVariable(name: "size", arg: 2, scope: !2820, file: !30, line: 215, type: !231)
!2826 = !DILocation(line: 215, column: 61, scope: !2820)
!2827 = !DILocalVariable(name: "gfp", arg: 3, scope: !2820, file: !30, line: 215, type: !1497)
!2828 = !DILocation(line: 215, column: 73, scope: !2820)
!2829 = !DILocation(line: 217, column: 22, scope: !2820)
!2830 = !DILocation(line: 217, column: 27, scope: !2820)
!2831 = !DILocation(line: 217, column: 33, scope: !2820)
!2832 = !DILocation(line: 217, column: 37, scope: !2820)
!2833 = !DILocation(line: 217, column: 9, scope: !2820)
!2834 = !DILocation(line: 217, column: 2, scope: !2820)
!2835 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2468, file: !2468, line: 236, type: !2836, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2474, !73}
!2838 = !DILocalVariable(name: "pdev", arg: 1, scope: !2835, file: !2468, line: 236, type: !2474)
!2839 = !DILocation(line: 236, column: 65, scope: !2835)
!2840 = !DILocalVariable(name: "data", arg: 2, scope: !2835, file: !2468, line: 237, type: !73)
!2841 = !DILocation(line: 237, column: 12, scope: !2835)
!2842 = !DILocation(line: 239, column: 19, scope: !2835)
!2843 = !DILocation(line: 239, column: 25, scope: !2835)
!2844 = !DILocation(line: 239, column: 30, scope: !2835)
!2845 = !DILocation(line: 239, column: 2, scope: !2835)
!2846 = !DILocation(line: 240, column: 1, scope: !2835)
!2847 = distinct !DISubprogram(name: "acpi_fan_is_acpi4", scope: !3, file: !3, line: 228, type: !2848, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!106, !74}
!2850 = !DILocalVariable(name: "device", arg: 1, scope: !2847, file: !3, line: 228, type: !74)
!2851 = !DILocation(line: 228, column: 51, scope: !2847)
!2852 = !DILocation(line: 230, column: 25, scope: !2847)
!2853 = !DILocation(line: 230, column: 33, scope: !2847)
!2854 = !DILocation(line: 230, column: 9, scope: !2847)
!2855 = !DILocation(line: 230, column: 49, scope: !2847)
!2856 = !DILocation(line: 231, column: 25, scope: !2847)
!2857 = !DILocation(line: 231, column: 33, scope: !2847)
!2858 = !DILocation(line: 231, column: 9, scope: !2847)
!2859 = !DILocation(line: 231, column: 49, scope: !2847)
!2860 = !DILocation(line: 232, column: 25, scope: !2847)
!2861 = !DILocation(line: 232, column: 33, scope: !2847)
!2862 = !DILocation(line: 232, column: 9, scope: !2847)
!2863 = !DILocation(line: 232, column: 49, scope: !2847)
!2864 = !DILocation(line: 233, column: 25, scope: !2847)
!2865 = !DILocation(line: 233, column: 33, scope: !2847)
!2866 = !DILocation(line: 233, column: 9, scope: !2847)
!2867 = !DILocation(line: 0, scope: !2847)
!2868 = !DILocation(line: 230, column: 2, scope: !2847)
!2869 = distinct !DISubprogram(name: "acpi_fan_get_fif", scope: !3, file: !3, line: 236, type: !2369, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2870 = !DILocalVariable(name: "device", arg: 1, scope: !2869, file: !3, line: 236, type: !74)
!2871 = !DILocation(line: 236, column: 49, scope: !2869)
!2872 = !DILocalVariable(name: "buffer", scope: !2869, file: !3, line: 238, type: !2873)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !82, line: 969, size: 128, elements: !2874)
!2874 = !{!2875, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2873, file: !82, line: 970, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !82, line: 127, baseType: !303)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2873, file: !82, line: 971, baseType: !73, size: 64, offset: 64)
!2878 = !DILocation(line: 238, column: 21, scope: !2869)
!2879 = !DILocalVariable(name: "fan", scope: !2869, file: !3, line: 239, type: !2593)
!2880 = !DILocation(line: 239, column: 19, scope: !2869)
!2881 = !DILocation(line: 239, column: 42, scope: !2869)
!2882 = !DILocation(line: 239, column: 25, scope: !2869)
!2883 = !DILocalVariable(name: "format", scope: !2869, file: !3, line: 240, type: !2873)
!2884 = !DILocation(line: 240, column: 21, scope: !2869)
!2885 = !DILocalVariable(name: "fif", scope: !2869, file: !3, line: 241, type: !2873)
!2886 = !DILocation(line: 241, column: 21, scope: !2869)
!2887 = !DILocation(line: 241, column: 27, scope: !2869)
!2888 = !DILocation(line: 241, column: 48, scope: !2869)
!2889 = !DILocation(line: 241, column: 53, scope: !2869)
!2890 = !DILocation(line: 241, column: 47, scope: !2869)
!2891 = !DILocalVariable(name: "obj", scope: !2869, file: !3, line: 242, type: !2204)
!2892 = !DILocation(line: 242, column: 21, scope: !2869)
!2893 = !DILocalVariable(name: "status", scope: !2869, file: !3, line: 243, type: !2443)
!2894 = !DILocation(line: 243, column: 14, scope: !2869)
!2895 = !DILocation(line: 245, column: 32, scope: !2869)
!2896 = !DILocation(line: 245, column: 40, scope: !2869)
!2897 = !DILocation(line: 245, column: 11, scope: !2869)
!2898 = !DILocation(line: 245, column: 9, scope: !2869)
!2899 = !DILocation(line: 246, column: 6, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 246, column: 6)
!2901 = !DILocation(line: 246, column: 6, scope: !2869)
!2902 = !DILocation(line: 247, column: 10, scope: !2900)
!2903 = !DILocation(line: 247, column: 3, scope: !2900)
!2904 = !DILocation(line: 249, column: 15, scope: !2869)
!2905 = !DILocation(line: 249, column: 8, scope: !2869)
!2906 = !DILocation(line: 249, column: 6, scope: !2869)
!2907 = !DILocation(line: 250, column: 7, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 250, column: 6)
!2909 = !DILocation(line: 250, column: 11, scope: !2908)
!2910 = !DILocation(line: 250, column: 14, scope: !2908)
!2911 = !DILocation(line: 250, column: 19, scope: !2908)
!2912 = !DILocation(line: 250, column: 24, scope: !2908)
!2913 = !DILocation(line: 250, column: 6, scope: !2869)
!2914 = !DILocation(line: 251, column: 3, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 250, column: 46)
!2916 = !DILocation(line: 252, column: 10, scope: !2915)
!2917 = !DILocation(line: 253, column: 3, scope: !2915)
!2918 = !DILocation(line: 256, column: 32, scope: !2869)
!2919 = !DILocation(line: 256, column: 11, scope: !2869)
!2920 = !DILocation(line: 256, column: 9, scope: !2869)
!2921 = !DILocation(line: 257, column: 6, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 257, column: 6)
!2923 = !DILocation(line: 257, column: 6, scope: !2869)
!2924 = !DILocation(line: 258, column: 3, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 257, column: 28)
!2926 = !DILocation(line: 259, column: 10, scope: !2925)
!2927 = !DILocation(line: 260, column: 2, scope: !2925)
!2928 = !DILabel(scope: !2869, name: "err", file: !3, line: 262)
!2929 = !DILocation(line: 262, column: 1, scope: !2869)
!2930 = !DILocation(line: 263, column: 8, scope: !2869)
!2931 = !DILocation(line: 263, column: 2, scope: !2869)
!2932 = !DILocation(line: 264, column: 9, scope: !2869)
!2933 = !DILocation(line: 264, column: 2, scope: !2869)
!2934 = !DILocation(line: 265, column: 1, scope: !2869)
!2935 = distinct !DISubprogram(name: "acpi_fan_get_fps", scope: !3, file: !3, line: 307, type: !2369, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!2936 = !DILocalVariable(name: "device", arg: 1, scope: !2935, file: !3, line: 307, type: !74)
!2937 = !DILocation(line: 307, column: 49, scope: !2935)
!2938 = !DILocalVariable(name: "fan", scope: !2935, file: !3, line: 309, type: !2593)
!2939 = !DILocation(line: 309, column: 19, scope: !2935)
!2940 = !DILocation(line: 309, column: 42, scope: !2935)
!2941 = !DILocation(line: 309, column: 25, scope: !2935)
!2942 = !DILocalVariable(name: "buffer", scope: !2935, file: !3, line: 310, type: !2873)
!2943 = !DILocation(line: 310, column: 21, scope: !2935)
!2944 = !DILocalVariable(name: "obj", scope: !2935, file: !3, line: 311, type: !2204)
!2945 = !DILocation(line: 311, column: 21, scope: !2935)
!2946 = !DILocalVariable(name: "status", scope: !2935, file: !3, line: 312, type: !2443)
!2947 = !DILocation(line: 312, column: 14, scope: !2935)
!2948 = !DILocalVariable(name: "i", scope: !2935, file: !3, line: 313, type: !79)
!2949 = !DILocation(line: 313, column: 6, scope: !2935)
!2950 = !DILocation(line: 315, column: 32, scope: !2935)
!2951 = !DILocation(line: 315, column: 40, scope: !2935)
!2952 = !DILocation(line: 315, column: 11, scope: !2935)
!2953 = !DILocation(line: 315, column: 9, scope: !2935)
!2954 = !DILocation(line: 316, column: 6, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 316, column: 6)
!2956 = !DILocation(line: 316, column: 6, scope: !2935)
!2957 = !DILocation(line: 317, column: 10, scope: !2955)
!2958 = !DILocation(line: 317, column: 3, scope: !2955)
!2959 = !DILocation(line: 319, column: 15, scope: !2935)
!2960 = !DILocation(line: 319, column: 8, scope: !2935)
!2961 = !DILocation(line: 319, column: 6, scope: !2935)
!2962 = !DILocation(line: 320, column: 7, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 320, column: 6)
!2964 = !DILocation(line: 320, column: 11, scope: !2963)
!2965 = !DILocation(line: 320, column: 14, scope: !2963)
!2966 = !DILocation(line: 320, column: 19, scope: !2963)
!2967 = !DILocation(line: 320, column: 24, scope: !2963)
!2968 = !DILocation(line: 320, column: 45, scope: !2963)
!2969 = !DILocation(line: 320, column: 48, scope: !2963)
!2970 = !DILocation(line: 320, column: 53, scope: !2963)
!2971 = !DILocation(line: 320, column: 61, scope: !2963)
!2972 = !DILocation(line: 320, column: 67, scope: !2963)
!2973 = !DILocation(line: 320, column: 6, scope: !2935)
!2974 = !DILocation(line: 321, column: 3, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 320, column: 72)
!2976 = !DILocation(line: 322, column: 10, scope: !2975)
!2977 = !DILocation(line: 323, column: 3, scope: !2975)
!2978 = !DILocation(line: 326, column: 19, scope: !2935)
!2979 = !DILocation(line: 326, column: 24, scope: !2935)
!2980 = !DILocation(line: 326, column: 32, scope: !2935)
!2981 = !DILocation(line: 326, column: 38, scope: !2935)
!2982 = !DILocation(line: 326, column: 2, scope: !2935)
!2983 = !DILocation(line: 326, column: 7, scope: !2935)
!2984 = !DILocation(line: 326, column: 17, scope: !2935)
!2985 = !DILocation(line: 327, column: 27, scope: !2935)
!2986 = !DILocation(line: 327, column: 35, scope: !2935)
!2987 = !DILocation(line: 328, column: 5, scope: !2935)
!2988 = !DILocation(line: 328, column: 10, scope: !2935)
!2989 = !DILocation(line: 327, column: 13, scope: !2935)
!2990 = !DILocation(line: 327, column: 2, scope: !2935)
!2991 = !DILocation(line: 327, column: 7, scope: !2935)
!2992 = !DILocation(line: 327, column: 11, scope: !2935)
!2993 = !DILocation(line: 330, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 330, column: 6)
!2995 = !DILocation(line: 330, column: 12, scope: !2994)
!2996 = !DILocation(line: 330, column: 6, scope: !2935)
!2997 = !DILocation(line: 331, column: 3, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 330, column: 17)
!2999 = !DILocation(line: 332, column: 10, scope: !2998)
!3000 = !DILocation(line: 333, column: 3, scope: !2998)
!3001 = !DILocation(line: 335, column: 9, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 335, column: 2)
!3003 = !DILocation(line: 335, column: 7, scope: !3002)
!3004 = !DILocation(line: 335, column: 14, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 335, column: 2)
!3006 = !DILocation(line: 335, column: 18, scope: !3005)
!3007 = !DILocation(line: 335, column: 23, scope: !3005)
!3008 = !DILocation(line: 335, column: 16, scope: !3005)
!3009 = !DILocation(line: 335, column: 2, scope: !3002)
!3010 = !DILocalVariable(name: "format", scope: !3011, file: !3, line: 336, type: !2873)
!3011 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 335, column: 39)
!3012 = !DILocation(line: 336, column: 22, scope: !3011)
!3013 = !DILocalVariable(name: "fps", scope: !3011, file: !3, line: 337, type: !2873)
!3014 = !DILocation(line: 337, column: 22, scope: !3011)
!3015 = !DILocation(line: 337, column: 28, scope: !3011)
!3016 = !DILocation(line: 338, column: 8, scope: !3011)
!3017 = !DILocation(line: 338, column: 13, scope: !3011)
!3018 = !DILocation(line: 338, column: 17, scope: !3011)
!3019 = !DILocation(line: 338, column: 7, scope: !3011)
!3020 = !DILocation(line: 339, column: 34, scope: !3011)
!3021 = !DILocation(line: 339, column: 39, scope: !3011)
!3022 = !DILocation(line: 339, column: 47, scope: !3011)
!3023 = !DILocation(line: 339, column: 56, scope: !3011)
!3024 = !DILocation(line: 339, column: 58, scope: !3011)
!3025 = !DILocation(line: 339, column: 12, scope: !3011)
!3026 = !DILocation(line: 339, column: 10, scope: !3011)
!3027 = !DILocation(line: 341, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 341, column: 7)
!3029 = !DILocation(line: 341, column: 7, scope: !3011)
!3030 = !DILocation(line: 342, column: 4, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 341, column: 29)
!3032 = !DILocation(line: 343, column: 4, scope: !3031)
!3033 = !DILocation(line: 345, column: 2, scope: !3011)
!3034 = !DILocation(line: 335, column: 35, scope: !3005)
!3035 = !DILocation(line: 335, column: 2, scope: !3005)
!3036 = distinct !{!3036, !3009, !3037}
!3037 = !DILocation(line: 345, column: 2, scope: !3002)
!3038 = !DILocation(line: 348, column: 7, scope: !2935)
!3039 = !DILocation(line: 348, column: 12, scope: !2935)
!3040 = !DILocation(line: 348, column: 17, scope: !2935)
!3041 = !DILocation(line: 348, column: 22, scope: !2935)
!3042 = !DILocation(line: 348, column: 2, scope: !2935)
!3043 = !DILocation(line: 351, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 351, column: 2)
!3045 = !DILocation(line: 351, column: 7, scope: !3044)
!3046 = !DILocation(line: 351, column: 14, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 351, column: 2)
!3048 = !DILocation(line: 351, column: 18, scope: !3047)
!3049 = !DILocation(line: 351, column: 23, scope: !3047)
!3050 = !DILocation(line: 351, column: 16, scope: !3047)
!3051 = !DILocation(line: 351, column: 2, scope: !3044)
!3052 = !DILocalVariable(name: "fps", scope: !3053, file: !3, line: 352, type: !2421)
!3053 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 351, column: 39)
!3054 = !DILocation(line: 352, column: 24, scope: !3053)
!3055 = !DILocation(line: 352, column: 31, scope: !3053)
!3056 = !DILocation(line: 352, column: 36, scope: !3053)
!3057 = !DILocation(line: 352, column: 40, scope: !3053)
!3058 = !DILocation(line: 354, column: 12, scope: !3053)
!3059 = !DILocation(line: 354, column: 17, scope: !3053)
!3060 = !DILocation(line: 354, column: 53, scope: !3053)
!3061 = !DILocation(line: 354, column: 3, scope: !3053)
!3062 = !DILocation(line: 355, column: 3, scope: !3053)
!3063 = !DILocation(line: 355, column: 3, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 355, column: 3)
!3065 = !DILocation(line: 356, column: 3, scope: !3053)
!3066 = !DILocation(line: 356, column: 8, scope: !3053)
!3067 = !DILocation(line: 356, column: 17, scope: !3053)
!3068 = !DILocation(line: 356, column: 22, scope: !3053)
!3069 = !DILocation(line: 357, column: 3, scope: !3053)
!3070 = !DILocation(line: 357, column: 8, scope: !3053)
!3071 = !DILocation(line: 357, column: 17, scope: !3053)
!3072 = !DILocation(line: 357, column: 23, scope: !3053)
!3073 = !DILocation(line: 358, column: 29, scope: !3053)
!3074 = !DILocation(line: 358, column: 34, scope: !3053)
!3075 = !DILocation(line: 358, column: 3, scope: !3053)
!3076 = !DILocation(line: 358, column: 8, scope: !3053)
!3077 = !DILocation(line: 358, column: 17, scope: !3053)
!3078 = !DILocation(line: 358, column: 22, scope: !3053)
!3079 = !DILocation(line: 358, column: 27, scope: !3053)
!3080 = !DILocation(line: 359, column: 3, scope: !3053)
!3081 = !DILocation(line: 359, column: 8, scope: !3053)
!3082 = !DILocation(line: 359, column: 17, scope: !3053)
!3083 = !DILocation(line: 359, column: 22, scope: !3053)
!3084 = !DILocation(line: 359, column: 27, scope: !3053)
!3085 = !DILocation(line: 360, column: 31, scope: !3053)
!3086 = !DILocation(line: 360, column: 39, scope: !3053)
!3087 = !DILocation(line: 360, column: 43, scope: !3053)
!3088 = !DILocation(line: 360, column: 50, scope: !3053)
!3089 = !DILocation(line: 360, column: 55, scope: !3053)
!3090 = !DILocation(line: 360, column: 64, scope: !3053)
!3091 = !DILocation(line: 360, column: 12, scope: !3053)
!3092 = !DILocation(line: 360, column: 10, scope: !3053)
!3093 = !DILocation(line: 361, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 361, column: 7)
!3095 = !DILocation(line: 361, column: 7, scope: !3053)
!3096 = !DILocalVariable(name: "j", scope: !3097, file: !3, line: 362, type: !79)
!3097 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 361, column: 15)
!3098 = !DILocation(line: 362, column: 8, scope: !3097)
!3099 = !DILocation(line: 364, column: 11, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 364, column: 4)
!3101 = !DILocation(line: 364, column: 9, scope: !3100)
!3102 = !DILocation(line: 364, column: 16, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 364, column: 4)
!3104 = !DILocation(line: 364, column: 20, scope: !3103)
!3105 = !DILocation(line: 364, column: 18, scope: !3103)
!3106 = !DILocation(line: 364, column: 4, scope: !3100)
!3107 = !DILocation(line: 365, column: 24, scope: !3103)
!3108 = !DILocation(line: 365, column: 32, scope: !3103)
!3109 = !DILocation(line: 365, column: 36, scope: !3103)
!3110 = !DILocation(line: 365, column: 43, scope: !3103)
!3111 = !DILocation(line: 365, column: 48, scope: !3103)
!3112 = !DILocation(line: 365, column: 52, scope: !3103)
!3113 = !DILocation(line: 365, column: 55, scope: !3103)
!3114 = !DILocation(line: 365, column: 64, scope: !3103)
!3115 = !DILocation(line: 365, column: 5, scope: !3103)
!3116 = !DILocation(line: 364, column: 23, scope: !3103)
!3117 = !DILocation(line: 364, column: 4, scope: !3103)
!3118 = distinct !{!3118, !3106, !3119}
!3119 = !DILocation(line: 365, column: 68, scope: !3100)
!3120 = !DILocation(line: 366, column: 4, scope: !3097)
!3121 = !DILocation(line: 368, column: 2, scope: !3053)
!3122 = !DILocation(line: 351, column: 34, scope: !3047)
!3123 = !DILocation(line: 351, column: 2, scope: !3047)
!3124 = distinct !{!3124, !3051, !3125}
!3125 = !DILocation(line: 368, column: 2, scope: !3044)
!3126 = !DILabel(scope: !2935, name: "err", file: !3, line: 370)
!3127 = !DILocation(line: 370, column: 1, scope: !2935)
!3128 = !DILocation(line: 371, column: 8, scope: !2935)
!3129 = !DILocation(line: 371, column: 2, scope: !2935)
!3130 = !DILocation(line: 372, column: 9, scope: !2935)
!3131 = !DILocation(line: 372, column: 2, scope: !2935)
!3132 = !DILocation(line: 373, column: 1, scope: !2935)
!3133 = distinct !DISubprogram(name: "IS_ERR", scope: !3134, file: !3134, line: 34, type: !3135, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3134 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!106, !115}
!3137 = !DILocalVariable(name: "ptr", arg: 1, scope: !3133, file: !3134, line: 34, type: !115)
!3138 = !DILocation(line: 34, column: 60, scope: !3133)
!3139 = !DILocation(line: 36, column: 9, scope: !3133)
!3140 = !DILocation(line: 36, column: 2, scope: !3133)
!3141 = distinct !DISubprogram(name: "PTR_ERR", scope: !3134, file: !3134, line: 29, type: !3142, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!219, !115}
!3144 = !DILocalVariable(name: "ptr", arg: 1, scope: !3141, file: !3134, line: 29, type: !115)
!3145 = !DILocation(line: 29, column: 61, scope: !3141)
!3146 = !DILocation(line: 31, column: 16, scope: !3141)
!3147 = !DILocation(line: 31, column: 9, scope: !3141)
!3148 = !DILocation(line: 31, column: 2, scope: !3141)
!3149 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !209, file: !209, line: 602, type: !3150, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !136, !3152}
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!3154 = !DILocalVariable(name: "kobj", arg: 1, scope: !3149, file: !209, line: 602, type: !136)
!3155 = !DILocation(line: 602, column: 54, scope: !3149)
!3156 = !DILocalVariable(name: "attr", arg: 2, scope: !3149, file: !209, line: 603, type: !3152)
!3157 = !DILocation(line: 603, column: 34, scope: !3149)
!3158 = !DILocation(line: 605, column: 23, scope: !3149)
!3159 = !DILocation(line: 605, column: 29, scope: !3149)
!3160 = !DILocation(line: 605, column: 2, scope: !3149)
!3161 = !DILocation(line: 606, column: 1, scope: !3149)
!3162 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3163, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{null, !1626, !73}
!3165 = !DILocalVariable(name: "dev", arg: 1, scope: !3162, file: !30, line: 660, type: !1626)
!3166 = !DILocation(line: 660, column: 51, scope: !3162)
!3167 = !DILocalVariable(name: "data", arg: 2, scope: !3162, file: !30, line: 660, type: !73)
!3168 = !DILocation(line: 660, column: 62, scope: !3162)
!3169 = !DILocation(line: 662, column: 21, scope: !3162)
!3170 = !DILocation(line: 662, column: 2, scope: !3162)
!3171 = !DILocation(line: 662, column: 7, scope: !3162)
!3172 = !DILocation(line: 662, column: 19, scope: !3162)
!3173 = !DILocation(line: 663, column: 1, scope: !3162)
!3174 = distinct !DISubprogram(name: "acpi_driver_data", scope: !76, file: !76, line: 443, type: !3175, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!73, !74}
!3177 = !DILocalVariable(name: "d", arg: 1, scope: !3174, file: !76, line: 443, type: !74)
!3178 = !DILocation(line: 443, column: 58, scope: !3174)
!3179 = !DILocation(line: 445, column: 9, scope: !3174)
!3180 = !DILocation(line: 445, column: 12, scope: !3174)
!3181 = !DILocation(line: 445, column: 2, scope: !3174)
!3182 = distinct !DISubprogram(name: "devm_kcalloc", scope: !30, file: !30, line: 229, type: !3183, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!73, !1626, !231, !231, !1497}
!3185 = !DILocalVariable(name: "dev", arg: 1, scope: !3182, file: !30, line: 229, type: !1626)
!3186 = !DILocation(line: 229, column: 49, scope: !3182)
!3187 = !DILocalVariable(name: "n", arg: 2, scope: !3182, file: !30, line: 230, type: !231)
!3188 = !DILocation(line: 230, column: 13, scope: !3182)
!3189 = !DILocalVariable(name: "size", arg: 3, scope: !3182, file: !30, line: 230, type: !231)
!3190 = !DILocation(line: 230, column: 23, scope: !3182)
!3191 = !DILocalVariable(name: "flags", arg: 4, scope: !3182, file: !30, line: 230, type: !1497)
!3192 = !DILocation(line: 230, column: 35, scope: !3182)
!3193 = !DILocation(line: 232, column: 28, scope: !3182)
!3194 = !DILocation(line: 232, column: 33, scope: !3182)
!3195 = !DILocation(line: 232, column: 36, scope: !3182)
!3196 = !DILocation(line: 232, column: 42, scope: !3182)
!3197 = !DILocation(line: 232, column: 48, scope: !3182)
!3198 = !DILocation(line: 232, column: 9, scope: !3182)
!3199 = !DILocation(line: 232, column: 2, scope: !3182)
!3200 = distinct !DISubprogram(name: "acpi_fan_speed_cmp", scope: !3, file: !3, line: 267, type: !3201, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!79, !115, !115}
!3203 = !DILocalVariable(name: "a", arg: 1, scope: !3200, file: !3, line: 267, type: !115)
!3204 = !DILocation(line: 267, column: 43, scope: !3200)
!3205 = !DILocalVariable(name: "b", arg: 2, scope: !3200, file: !3, line: 267, type: !115)
!3206 = !DILocation(line: 267, column: 58, scope: !3200)
!3207 = !DILocalVariable(name: "fps1", scope: !3200, file: !3, line: 269, type: !3208)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!3210 = !DILocation(line: 269, column: 29, scope: !3200)
!3211 = !DILocation(line: 269, column: 36, scope: !3200)
!3212 = !DILocalVariable(name: "fps2", scope: !3200, file: !3, line: 270, type: !3208)
!3213 = !DILocation(line: 270, column: 29, scope: !3200)
!3214 = !DILocation(line: 270, column: 36, scope: !3200)
!3215 = !DILocation(line: 271, column: 9, scope: !3200)
!3216 = !DILocation(line: 271, column: 15, scope: !3200)
!3217 = !DILocation(line: 271, column: 23, scope: !3200)
!3218 = !DILocation(line: 271, column: 29, scope: !3200)
!3219 = !DILocation(line: 271, column: 21, scope: !3200)
!3220 = !DILocation(line: 271, column: 2, scope: !3200)
!3221 = distinct !DISubprogram(name: "show_state", scope: !3, file: !3, line: 274, type: !2436, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3222 = !DILocalVariable(name: "dev", arg: 1, scope: !3221, file: !3, line: 274, type: !1626)
!3223 = !DILocation(line: 274, column: 42, scope: !3221)
!3224 = !DILocalVariable(name: "attr", arg: 2, scope: !3221, file: !3, line: 274, type: !2438)
!3225 = !DILocation(line: 274, column: 72, scope: !3221)
!3226 = !DILocalVariable(name: "buf", arg: 3, scope: !3221, file: !3, line: 274, type: !184)
!3227 = !DILocation(line: 274, column: 84, scope: !3221)
!3228 = !DILocalVariable(name: "fps", scope: !3221, file: !3, line: 276, type: !2421)
!3229 = !DILocation(line: 276, column: 23, scope: !3221)
!3230 = !DILocalVariable(name: "__mptr", scope: !3231, file: !3, line: 276, type: !73)
!3231 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 276, column: 29)
!3232 = !DILocation(line: 276, column: 29, scope: !3231)
!3233 = !DILocation(line: 276, column: 29, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 276, column: 29)
!3235 = !DILocalVariable(name: "count", scope: !3221, file: !3, line: 277, type: !79)
!3236 = !DILocation(line: 277, column: 6, scope: !3221)
!3237 = !DILocation(line: 279, column: 6, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 279, column: 6)
!3239 = !DILocation(line: 279, column: 11, scope: !3238)
!3240 = !DILocation(line: 279, column: 19, scope: !3238)
!3241 = !DILocation(line: 279, column: 33, scope: !3238)
!3242 = !DILocation(line: 279, column: 36, scope: !3238)
!3243 = !DILocation(line: 279, column: 41, scope: !3238)
!3244 = !DILocation(line: 279, column: 49, scope: !3238)
!3245 = !DILocation(line: 279, column: 6, scope: !3221)
!3246 = !DILocation(line: 280, column: 21, scope: !3238)
!3247 = !DILocation(line: 280, column: 11, scope: !3238)
!3248 = !DILocation(line: 280, column: 9, scope: !3238)
!3249 = !DILocation(line: 280, column: 3, scope: !3238)
!3250 = !DILocation(line: 282, column: 21, scope: !3238)
!3251 = !DILocation(line: 282, column: 46, scope: !3238)
!3252 = !DILocation(line: 282, column: 51, scope: !3238)
!3253 = !DILocation(line: 282, column: 11, scope: !3238)
!3254 = !DILocation(line: 282, column: 9, scope: !3238)
!3255 = !DILocation(line: 284, column: 6, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 284, column: 6)
!3257 = !DILocation(line: 284, column: 11, scope: !3256)
!3258 = !DILocation(line: 284, column: 22, scope: !3256)
!3259 = !DILocation(line: 284, column: 36, scope: !3256)
!3260 = !DILocation(line: 284, column: 39, scope: !3256)
!3261 = !DILocation(line: 284, column: 44, scope: !3256)
!3262 = !DILocation(line: 284, column: 55, scope: !3256)
!3263 = !DILocation(line: 284, column: 6, scope: !3221)
!3264 = !DILocation(line: 285, column: 23, scope: !3256)
!3265 = !DILocation(line: 285, column: 27, scope: !3256)
!3266 = !DILocation(line: 285, column: 47, scope: !3256)
!3267 = !DILocation(line: 285, column: 45, scope: !3256)
!3268 = !DILocation(line: 285, column: 12, scope: !3256)
!3269 = !DILocation(line: 285, column: 9, scope: !3256)
!3270 = !DILocation(line: 285, column: 3, scope: !3256)
!3271 = !DILocation(line: 287, column: 23, scope: !3256)
!3272 = !DILocation(line: 287, column: 27, scope: !3256)
!3273 = !DILocation(line: 287, column: 47, scope: !3256)
!3274 = !DILocation(line: 287, column: 45, scope: !3256)
!3275 = !DILocation(line: 287, column: 63, scope: !3256)
!3276 = !DILocation(line: 287, column: 68, scope: !3256)
!3277 = !DILocation(line: 287, column: 12, scope: !3256)
!3278 = !DILocation(line: 287, column: 9, scope: !3256)
!3279 = !DILocation(line: 289, column: 6, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 289, column: 6)
!3281 = !DILocation(line: 289, column: 11, scope: !3280)
!3282 = !DILocation(line: 289, column: 17, scope: !3280)
!3283 = !DILocation(line: 289, column: 6, scope: !3221)
!3284 = !DILocation(line: 290, column: 23, scope: !3280)
!3285 = !DILocation(line: 290, column: 27, scope: !3280)
!3286 = !DILocation(line: 290, column: 47, scope: !3280)
!3287 = !DILocation(line: 290, column: 45, scope: !3280)
!3288 = !DILocation(line: 290, column: 12, scope: !3280)
!3289 = !DILocation(line: 290, column: 9, scope: !3280)
!3290 = !DILocation(line: 290, column: 3, scope: !3280)
!3291 = !DILocation(line: 292, column: 23, scope: !3280)
!3292 = !DILocation(line: 292, column: 27, scope: !3280)
!3293 = !DILocation(line: 292, column: 47, scope: !3280)
!3294 = !DILocation(line: 292, column: 45, scope: !3280)
!3295 = !DILocation(line: 292, column: 63, scope: !3280)
!3296 = !DILocation(line: 292, column: 68, scope: !3280)
!3297 = !DILocation(line: 292, column: 12, scope: !3280)
!3298 = !DILocation(line: 292, column: 9, scope: !3280)
!3299 = !DILocation(line: 294, column: 6, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 294, column: 6)
!3301 = !DILocation(line: 294, column: 11, scope: !3300)
!3302 = !DILocation(line: 294, column: 23, scope: !3300)
!3303 = !DILocation(line: 294, column: 6, scope: !3221)
!3304 = !DILocation(line: 295, column: 23, scope: !3300)
!3305 = !DILocation(line: 295, column: 27, scope: !3300)
!3306 = !DILocation(line: 295, column: 47, scope: !3300)
!3307 = !DILocation(line: 295, column: 45, scope: !3300)
!3308 = !DILocation(line: 295, column: 12, scope: !3300)
!3309 = !DILocation(line: 295, column: 9, scope: !3300)
!3310 = !DILocation(line: 295, column: 3, scope: !3300)
!3311 = !DILocation(line: 297, column: 23, scope: !3300)
!3312 = !DILocation(line: 297, column: 27, scope: !3300)
!3313 = !DILocation(line: 297, column: 47, scope: !3300)
!3314 = !DILocation(line: 297, column: 45, scope: !3300)
!3315 = !DILocation(line: 297, column: 63, scope: !3300)
!3316 = !DILocation(line: 297, column: 68, scope: !3300)
!3317 = !DILocation(line: 297, column: 80, scope: !3300)
!3318 = !DILocation(line: 297, column: 12, scope: !3300)
!3319 = !DILocation(line: 297, column: 9, scope: !3300)
!3320 = !DILocation(line: 299, column: 6, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 299, column: 6)
!3322 = !DILocation(line: 299, column: 11, scope: !3321)
!3323 = !DILocation(line: 299, column: 17, scope: !3321)
!3324 = !DILocation(line: 299, column: 6, scope: !3221)
!3325 = !DILocation(line: 300, column: 23, scope: !3321)
!3326 = !DILocation(line: 300, column: 27, scope: !3321)
!3327 = !DILocation(line: 300, column: 47, scope: !3321)
!3328 = !DILocation(line: 300, column: 45, scope: !3321)
!3329 = !DILocation(line: 300, column: 12, scope: !3321)
!3330 = !DILocation(line: 300, column: 9, scope: !3321)
!3331 = !DILocation(line: 300, column: 3, scope: !3321)
!3332 = !DILocation(line: 302, column: 23, scope: !3321)
!3333 = !DILocation(line: 302, column: 27, scope: !3321)
!3334 = !DILocation(line: 302, column: 47, scope: !3321)
!3335 = !DILocation(line: 302, column: 45, scope: !3321)
!3336 = !DILocation(line: 302, column: 64, scope: !3321)
!3337 = !DILocation(line: 302, column: 69, scope: !3321)
!3338 = !DILocation(line: 302, column: 12, scope: !3321)
!3339 = !DILocation(line: 302, column: 9, scope: !3321)
!3340 = !DILocation(line: 304, column: 9, scope: !3221)
!3341 = !DILocation(line: 304, column: 2, scope: !3221)
!3342 = distinct !DISubprogram(name: "sysfs_create_file", scope: !209, file: !209, line: 596, type: !3343, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!79, !136, !3152}
!3345 = !DILocalVariable(name: "kobj", arg: 1, scope: !3342, file: !209, line: 596, type: !136)
!3346 = !DILocation(line: 596, column: 66, scope: !3342)
!3347 = !DILocalVariable(name: "attr", arg: 2, scope: !3342, file: !209, line: 597, type: !3152)
!3348 = !DILocation(line: 597, column: 32, scope: !3342)
!3349 = !DILocation(line: 599, column: 30, scope: !3342)
!3350 = !DILocation(line: 599, column: 36, scope: !3342)
!3351 = !DILocation(line: 599, column: 9, scope: !3342)
!3352 = !DILocation(line: 599, column: 2, scope: !3342)
!3353 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !30, file: !30, line: 219, type: !3183, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3354 = !DILocalVariable(name: "dev", arg: 1, scope: !3353, file: !30, line: 219, type: !1626)
!3355 = !DILocation(line: 219, column: 55, scope: !3353)
!3356 = !DILocalVariable(name: "n", arg: 2, scope: !3353, file: !30, line: 220, type: !231)
!3357 = !DILocation(line: 220, column: 19, scope: !3353)
!3358 = !DILocalVariable(name: "size", arg: 3, scope: !3353, file: !30, line: 220, type: !231)
!3359 = !DILocation(line: 220, column: 29, scope: !3353)
!3360 = !DILocalVariable(name: "flags", arg: 4, scope: !3353, file: !30, line: 220, type: !1497)
!3361 = !DILocation(line: 220, column: 41, scope: !3353)
!3362 = !DILocalVariable(name: "bytes", scope: !3353, file: !30, line: 222, type: !231)
!3363 = !DILocation(line: 222, column: 9, scope: !3353)
!3364 = !DILocalVariable(name: "__a", scope: !3365, file: !30, line: 224, type: !231)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !30, line: 224, column: 6)
!3366 = distinct !DILexicalBlock(scope: !3353, file: !30, line: 224, column: 6)
!3367 = !DILocation(line: 224, column: 6, scope: !3365)
!3368 = !DILocalVariable(name: "__b", scope: !3365, file: !30, line: 224, type: !231)
!3369 = !DILocalVariable(name: "__d", scope: !3365, file: !30, line: 224, type: !3370)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!3371 = !DILocation(line: 224, column: 6, scope: !3366)
!3372 = !DILocation(line: 224, column: 6, scope: !3353)
!3373 = !DILocation(line: 225, column: 3, scope: !3366)
!3374 = !DILocation(line: 227, column: 22, scope: !3353)
!3375 = !DILocation(line: 227, column: 27, scope: !3353)
!3376 = !DILocation(line: 227, column: 34, scope: !3353)
!3377 = !DILocation(line: 227, column: 9, scope: !3353)
!3378 = !DILocation(line: 227, column: 2, scope: !3353)
!3379 = !DILocation(line: 228, column: 1, scope: !3353)
!3380 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3381, file: !3381, line: 52, type: !3382, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3381 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!106, !106}
!3384 = !DILocalVariable(name: "overflow", arg: 1, scope: !3380, file: !3381, line: 52, type: !106)
!3385 = !DILocation(line: 52, column: 60, scope: !3380)
!3386 = !DILocation(line: 54, column: 9, scope: !3380)
!3387 = !DILocation(line: 54, column: 2, scope: !3380)
!3388 = distinct !DISubprogram(name: "fan_get_max_state", scope: !3, file: !3, line: 87, type: !2532, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3389 = !DILocalVariable(name: "cdev", arg: 1, scope: !3388, file: !3, line: 87, type: !2534)
!3390 = !DILocation(line: 87, column: 61, scope: !3388)
!3391 = !DILocalVariable(name: "state", arg: 2, scope: !3388, file: !3, line: 88, type: !1973)
!3392 = !DILocation(line: 88, column: 10, scope: !3388)
!3393 = !DILocalVariable(name: "device", scope: !3388, file: !3, line: 90, type: !74)
!3394 = !DILocation(line: 90, column: 22, scope: !3388)
!3395 = !DILocation(line: 90, column: 31, scope: !3388)
!3396 = !DILocation(line: 90, column: 37, scope: !3388)
!3397 = !DILocalVariable(name: "fan", scope: !3388, file: !3, line: 91, type: !2593)
!3398 = !DILocation(line: 91, column: 19, scope: !3388)
!3399 = !DILocation(line: 91, column: 42, scope: !3388)
!3400 = !DILocation(line: 91, column: 25, scope: !3388)
!3401 = !DILocation(line: 93, column: 6, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 93, column: 6)
!3403 = !DILocation(line: 93, column: 11, scope: !3402)
!3404 = !DILocation(line: 93, column: 6, scope: !3388)
!3405 = !DILocation(line: 94, column: 12, scope: !3402)
!3406 = !DILocation(line: 94, column: 17, scope: !3402)
!3407 = !DILocation(line: 94, column: 27, scope: !3402)
!3408 = !DILocation(line: 94, column: 4, scope: !3402)
!3409 = !DILocation(line: 94, column: 10, scope: !3402)
!3410 = !DILocation(line: 94, column: 3, scope: !3402)
!3411 = !DILocation(line: 96, column: 4, scope: !3402)
!3412 = !DILocation(line: 96, column: 10, scope: !3402)
!3413 = !DILocation(line: 97, column: 2, scope: !3388)
!3414 = distinct !DISubprogram(name: "fan_get_cur_state", scope: !3, file: !3, line: 166, type: !2532, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3415 = !DILocalVariable(name: "cdev", arg: 1, scope: !3414, file: !3, line: 166, type: !2534)
!3416 = !DILocation(line: 166, column: 61, scope: !3414)
!3417 = !DILocalVariable(name: "state", arg: 2, scope: !3414, file: !3, line: 167, type: !1973)
!3418 = !DILocation(line: 167, column: 10, scope: !3414)
!3419 = !DILocalVariable(name: "device", scope: !3414, file: !3, line: 169, type: !74)
!3420 = !DILocation(line: 169, column: 22, scope: !3414)
!3421 = !DILocation(line: 169, column: 31, scope: !3414)
!3422 = !DILocation(line: 169, column: 37, scope: !3414)
!3423 = !DILocalVariable(name: "fan", scope: !3414, file: !3, line: 170, type: !2593)
!3424 = !DILocation(line: 170, column: 19, scope: !3414)
!3425 = !DILocation(line: 170, column: 42, scope: !3414)
!3426 = !DILocation(line: 170, column: 25, scope: !3414)
!3427 = !DILocation(line: 172, column: 6, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 172, column: 6)
!3429 = !DILocation(line: 172, column: 11, scope: !3428)
!3430 = !DILocation(line: 172, column: 6, scope: !3414)
!3431 = !DILocation(line: 173, column: 30, scope: !3428)
!3432 = !DILocation(line: 173, column: 38, scope: !3428)
!3433 = !DILocation(line: 173, column: 10, scope: !3428)
!3434 = !DILocation(line: 173, column: 3, scope: !3428)
!3435 = !DILocation(line: 175, column: 24, scope: !3428)
!3436 = !DILocation(line: 175, column: 32, scope: !3428)
!3437 = !DILocation(line: 175, column: 10, scope: !3428)
!3438 = !DILocation(line: 175, column: 3, scope: !3428)
!3439 = !DILocation(line: 176, column: 1, scope: !3414)
!3440 = distinct !DISubprogram(name: "fan_set_cur_state", scope: !3, file: !3, line: 206, type: !2552, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3441 = !DILocalVariable(name: "cdev", arg: 1, scope: !3440, file: !3, line: 206, type: !2534)
!3442 = !DILocation(line: 206, column: 50, scope: !3440)
!3443 = !DILocalVariable(name: "state", arg: 2, scope: !3440, file: !3, line: 206, type: !234)
!3444 = !DILocation(line: 206, column: 70, scope: !3440)
!3445 = !DILocalVariable(name: "device", scope: !3440, file: !3, line: 208, type: !74)
!3446 = !DILocation(line: 208, column: 22, scope: !3440)
!3447 = !DILocation(line: 208, column: 31, scope: !3440)
!3448 = !DILocation(line: 208, column: 37, scope: !3440)
!3449 = !DILocalVariable(name: "fan", scope: !3440, file: !3, line: 209, type: !2593)
!3450 = !DILocation(line: 209, column: 19, scope: !3440)
!3451 = !DILocation(line: 209, column: 42, scope: !3440)
!3452 = !DILocation(line: 209, column: 25, scope: !3440)
!3453 = !DILocation(line: 211, column: 6, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 211, column: 6)
!3455 = !DILocation(line: 211, column: 11, scope: !3454)
!3456 = !DILocation(line: 211, column: 6, scope: !3440)
!3457 = !DILocation(line: 212, column: 30, scope: !3454)
!3458 = !DILocation(line: 212, column: 38, scope: !3454)
!3459 = !DILocation(line: 212, column: 10, scope: !3454)
!3460 = !DILocation(line: 212, column: 3, scope: !3454)
!3461 = !DILocation(line: 214, column: 24, scope: !3454)
!3462 = !DILocation(line: 214, column: 32, scope: !3454)
!3463 = !DILocation(line: 214, column: 10, scope: !3454)
!3464 = !DILocation(line: 214, column: 3, scope: !3454)
!3465 = !DILocation(line: 215, column: 1, scope: !3440)
!3466 = distinct !DISubprogram(name: "fan_get_state_acpi4", scope: !3, file: !3, line: 100, type: !3467, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!79, !74, !1973}
!3469 = !DILocalVariable(name: "device", arg: 1, scope: !3466, file: !3, line: 100, type: !74)
!3470 = !DILocation(line: 100, column: 52, scope: !3466)
!3471 = !DILocalVariable(name: "state", arg: 2, scope: !3466, file: !3, line: 100, type: !1973)
!3472 = !DILocation(line: 100, column: 75, scope: !3466)
!3473 = !DILocalVariable(name: "buffer", scope: !3466, file: !3, line: 102, type: !2873)
!3474 = !DILocation(line: 102, column: 21, scope: !3466)
!3475 = !DILocalVariable(name: "fan", scope: !3466, file: !3, line: 103, type: !2593)
!3476 = !DILocation(line: 103, column: 19, scope: !3466)
!3477 = !DILocation(line: 103, column: 42, scope: !3466)
!3478 = !DILocation(line: 103, column: 25, scope: !3466)
!3479 = !DILocalVariable(name: "obj", scope: !3466, file: !3, line: 104, type: !2204)
!3480 = !DILocation(line: 104, column: 21, scope: !3466)
!3481 = !DILocalVariable(name: "status", scope: !3466, file: !3, line: 105, type: !2443)
!3482 = !DILocation(line: 105, column: 14, scope: !3466)
!3483 = !DILocalVariable(name: "control", scope: !3466, file: !3, line: 106, type: !79)
!3484 = !DILocation(line: 106, column: 6, scope: !3466)
!3485 = !DILocalVariable(name: "i", scope: !3466, file: !3, line: 106, type: !79)
!3486 = !DILocation(line: 106, column: 15, scope: !3466)
!3487 = !DILocation(line: 108, column: 32, scope: !3466)
!3488 = !DILocation(line: 108, column: 40, scope: !3466)
!3489 = !DILocation(line: 108, column: 11, scope: !3466)
!3490 = !DILocation(line: 108, column: 9, scope: !3466)
!3491 = !DILocation(line: 109, column: 6, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 109, column: 6)
!3493 = !DILocation(line: 109, column: 6, scope: !3466)
!3494 = !DILocation(line: 110, column: 3, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 109, column: 28)
!3496 = !DILocation(line: 111, column: 10, scope: !3495)
!3497 = !DILocation(line: 111, column: 3, scope: !3495)
!3498 = !DILocation(line: 114, column: 15, scope: !3466)
!3499 = !DILocation(line: 114, column: 8, scope: !3466)
!3500 = !DILocation(line: 114, column: 6, scope: !3466)
!3501 = !DILocation(line: 115, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 115, column: 6)
!3503 = !DILocation(line: 115, column: 11, scope: !3502)
!3504 = !DILocation(line: 115, column: 14, scope: !3502)
!3505 = !DILocation(line: 115, column: 19, scope: !3502)
!3506 = !DILocation(line: 115, column: 24, scope: !3502)
!3507 = !DILocation(line: 115, column: 45, scope: !3502)
!3508 = !DILocation(line: 116, column: 6, scope: !3502)
!3509 = !DILocation(line: 116, column: 11, scope: !3502)
!3510 = !DILocation(line: 116, column: 19, scope: !3502)
!3511 = !DILocation(line: 116, column: 25, scope: !3502)
!3512 = !DILocation(line: 116, column: 30, scope: !3502)
!3513 = !DILocation(line: 117, column: 6, scope: !3502)
!3514 = !DILocation(line: 117, column: 11, scope: !3502)
!3515 = !DILocation(line: 117, column: 19, scope: !3502)
!3516 = !DILocation(line: 117, column: 31, scope: !3502)
!3517 = !DILocation(line: 117, column: 36, scope: !3502)
!3518 = !DILocation(line: 115, column: 6, scope: !3466)
!3519 = !DILocation(line: 118, column: 3, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 117, column: 58)
!3521 = !DILocation(line: 119, column: 10, scope: !3520)
!3522 = !DILocation(line: 120, column: 3, scope: !3520)
!3523 = !DILocation(line: 123, column: 12, scope: !3466)
!3524 = !DILocation(line: 123, column: 17, scope: !3466)
!3525 = !DILocation(line: 123, column: 25, scope: !3466)
!3526 = !DILocation(line: 123, column: 37, scope: !3466)
!3527 = !DILocation(line: 123, column: 45, scope: !3466)
!3528 = !DILocation(line: 123, column: 10, scope: !3466)
!3529 = !DILocation(line: 124, column: 9, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 124, column: 2)
!3531 = !DILocation(line: 124, column: 7, scope: !3530)
!3532 = !DILocation(line: 124, column: 14, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 124, column: 2)
!3534 = !DILocation(line: 124, column: 18, scope: !3533)
!3535 = !DILocation(line: 124, column: 23, scope: !3533)
!3536 = !DILocation(line: 124, column: 16, scope: !3533)
!3537 = !DILocation(line: 124, column: 2, scope: !3530)
!3538 = !DILocation(line: 131, column: 7, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 131, column: 7)
!3540 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 124, column: 39)
!3541 = !DILocation(line: 131, column: 12, scope: !3539)
!3542 = !DILocation(line: 131, column: 16, scope: !3539)
!3543 = !DILocation(line: 131, column: 32, scope: !3539)
!3544 = !DILocation(line: 131, column: 35, scope: !3539)
!3545 = !DILocation(line: 131, column: 45, scope: !3539)
!3546 = !DILocation(line: 131, column: 50, scope: !3539)
!3547 = !DILocation(line: 131, column: 54, scope: !3539)
!3548 = !DILocation(line: 131, column: 57, scope: !3539)
!3549 = !DILocation(line: 131, column: 43, scope: !3539)
!3550 = !DILocation(line: 131, column: 7, scope: !3540)
!3551 = !DILocation(line: 132, column: 9, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 131, column: 66)
!3553 = !DILocation(line: 132, column: 11, scope: !3552)
!3554 = !DILocation(line: 132, column: 8, scope: !3552)
!3555 = !DILocation(line: 132, column: 18, scope: !3552)
!3556 = !DILocation(line: 132, column: 20, scope: !3552)
!3557 = !DILocation(line: 132, column: 6, scope: !3552)
!3558 = !DILocation(line: 133, column: 4, scope: !3552)
!3559 = !DILocation(line: 134, column: 14, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 134, column: 14)
!3561 = !DILocation(line: 134, column: 25, scope: !3560)
!3562 = !DILocation(line: 134, column: 30, scope: !3560)
!3563 = !DILocation(line: 134, column: 34, scope: !3560)
!3564 = !DILocation(line: 134, column: 37, scope: !3560)
!3565 = !DILocation(line: 134, column: 22, scope: !3560)
!3566 = !DILocation(line: 134, column: 14, scope: !3539)
!3567 = !DILocation(line: 135, column: 4, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 134, column: 46)
!3569 = !DILocation(line: 137, column: 2, scope: !3540)
!3570 = !DILocation(line: 124, column: 35, scope: !3533)
!3571 = !DILocation(line: 124, column: 2, scope: !3533)
!3572 = distinct !{!3572, !3537, !3573}
!3573 = !DILocation(line: 137, column: 2, scope: !3530)
!3574 = !DILocation(line: 138, column: 6, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 138, column: 6)
!3576 = !DILocation(line: 138, column: 11, scope: !3575)
!3577 = !DILocation(line: 138, column: 16, scope: !3575)
!3578 = !DILocation(line: 138, column: 8, scope: !3575)
!3579 = !DILocation(line: 138, column: 6, scope: !3466)
!3580 = !DILocation(line: 140, column: 10, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 138, column: 27)
!3582 = !DILocation(line: 141, column: 3, scope: !3581)
!3583 = !DILocation(line: 144, column: 11, scope: !3466)
!3584 = !DILocation(line: 144, column: 3, scope: !3466)
!3585 = !DILocation(line: 144, column: 9, scope: !3466)
!3586 = !DILocation(line: 144, column: 2, scope: !3466)
!3587 = !DILabel(scope: !3466, name: "err", file: !3, line: 146)
!3588 = !DILocation(line: 146, column: 1, scope: !3466)
!3589 = !DILocation(line: 147, column: 8, scope: !3466)
!3590 = !DILocation(line: 147, column: 2, scope: !3466)
!3591 = !DILocation(line: 148, column: 9, scope: !3466)
!3592 = !DILocation(line: 148, column: 2, scope: !3466)
!3593 = !DILocation(line: 149, column: 1, scope: !3466)
!3594 = distinct !DISubprogram(name: "fan_get_state", scope: !3, file: !3, line: 151, type: !3467, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3595 = !DILocalVariable(name: "device", arg: 1, scope: !3594, file: !3, line: 151, type: !74)
!3596 = !DILocation(line: 151, column: 46, scope: !3594)
!3597 = !DILocalVariable(name: "state", arg: 2, scope: !3594, file: !3, line: 151, type: !1973)
!3598 = !DILocation(line: 151, column: 69, scope: !3594)
!3599 = !DILocalVariable(name: "result", scope: !3594, file: !3, line: 153, type: !79)
!3600 = !DILocation(line: 153, column: 6, scope: !3594)
!3601 = !DILocalVariable(name: "acpi_state", scope: !3594, file: !3, line: 154, type: !79)
!3602 = !DILocation(line: 154, column: 6, scope: !3594)
!3603 = !DILocation(line: 156, column: 36, scope: !3594)
!3604 = !DILocation(line: 156, column: 11, scope: !3594)
!3605 = !DILocation(line: 156, column: 9, scope: !3594)
!3606 = !DILocation(line: 157, column: 6, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 157, column: 6)
!3608 = !DILocation(line: 157, column: 6, scope: !3594)
!3609 = !DILocation(line: 158, column: 10, scope: !3607)
!3610 = !DILocation(line: 158, column: 3, scope: !3607)
!3611 = !DILocation(line: 160, column: 11, scope: !3594)
!3612 = !DILocation(line: 160, column: 22, scope: !3594)
!3613 = !DILocation(line: 161, column: 4, scope: !3594)
!3614 = !DILocation(line: 161, column: 7, scope: !3594)
!3615 = !DILocation(line: 161, column: 18, scope: !3594)
!3616 = !DILocation(line: 162, column: 8, scope: !3594)
!3617 = !DILocation(line: 162, column: 19, scope: !3594)
!3618 = !DILocation(line: 160, column: 3, scope: !3594)
!3619 = !DILocation(line: 160, column: 9, scope: !3594)
!3620 = !DILocation(line: 163, column: 2, scope: !3594)
!3621 = !DILocation(line: 164, column: 1, scope: !3594)
!3622 = distinct !DISubprogram(name: "fan_set_state_acpi4", scope: !3, file: !3, line: 187, type: !3623, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!79, !74, !234}
!3625 = !DILocalVariable(name: "device", arg: 1, scope: !3622, file: !3, line: 187, type: !74)
!3626 = !DILocation(line: 187, column: 52, scope: !3622)
!3627 = !DILocalVariable(name: "state", arg: 2, scope: !3622, file: !3, line: 187, type: !234)
!3628 = !DILocation(line: 187, column: 74, scope: !3622)
!3629 = !DILocalVariable(name: "fan", scope: !3622, file: !3, line: 189, type: !2593)
!3630 = !DILocation(line: 189, column: 19, scope: !3622)
!3631 = !DILocation(line: 189, column: 42, scope: !3622)
!3632 = !DILocation(line: 189, column: 25, scope: !3622)
!3633 = !DILocalVariable(name: "status", scope: !3622, file: !3, line: 190, type: !2443)
!3634 = !DILocation(line: 190, column: 14, scope: !3622)
!3635 = !DILocation(line: 192, column: 6, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 192, column: 6)
!3637 = !DILocation(line: 192, column: 15, scope: !3636)
!3638 = !DILocation(line: 192, column: 20, scope: !3636)
!3639 = !DILocation(line: 192, column: 12, scope: !3636)
!3640 = !DILocation(line: 192, column: 6, scope: !3622)
!3641 = !DILocation(line: 193, column: 3, scope: !3636)
!3642 = !DILocation(line: 195, column: 38, scope: !3622)
!3643 = !DILocation(line: 195, column: 46, scope: !3622)
!3644 = !DILocation(line: 196, column: 10, scope: !3622)
!3645 = !DILocation(line: 196, column: 15, scope: !3622)
!3646 = !DILocation(line: 196, column: 19, scope: !3622)
!3647 = !DILocation(line: 196, column: 26, scope: !3622)
!3648 = !DILocation(line: 195, column: 11, scope: !3622)
!3649 = !DILocation(line: 195, column: 9, scope: !3622)
!3650 = !DILocation(line: 197, column: 6, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 197, column: 6)
!3652 = !DILocation(line: 197, column: 6, scope: !3622)
!3653 = !DILocation(line: 199, column: 10, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 197, column: 28)
!3655 = !DILocation(line: 199, column: 3, scope: !3654)
!3656 = !DILocation(line: 202, column: 2, scope: !3622)
!3657 = !DILocation(line: 203, column: 1, scope: !3622)
!3658 = distinct !DISubprogram(name: "fan_set_state", scope: !3, file: !3, line: 178, type: !3623, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3659 = !DILocalVariable(name: "device", arg: 1, scope: !3658, file: !3, line: 178, type: !74)
!3660 = !DILocation(line: 178, column: 46, scope: !3658)
!3661 = !DILocalVariable(name: "state", arg: 2, scope: !3658, file: !3, line: 178, type: !234)
!3662 = !DILocation(line: 178, column: 68, scope: !3658)
!3663 = !DILocation(line: 180, column: 6, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 180, column: 6)
!3665 = !DILocation(line: 180, column: 12, scope: !3664)
!3666 = !DILocation(line: 180, column: 17, scope: !3664)
!3667 = !DILocation(line: 180, column: 20, scope: !3664)
!3668 = !DILocation(line: 180, column: 26, scope: !3664)
!3669 = !DILocation(line: 180, column: 6, scope: !3658)
!3670 = !DILocation(line: 181, column: 3, scope: !3664)
!3671 = !DILocation(line: 183, column: 31, scope: !3658)
!3672 = !DILocation(line: 184, column: 10, scope: !3658)
!3673 = !DILocation(line: 183, column: 9, scope: !3658)
!3674 = !DILocation(line: 183, column: 2, scope: !3658)
!3675 = !DILocation(line: 185, column: 1, scope: !3658)
!3676 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2468, file: !2468, line: 231, type: !3677, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!73, !3679}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2475)
!3681 = !DILocalVariable(name: "pdev", arg: 1, scope: !3676, file: !2468, line: 231, type: !3679)
!3682 = !DILocation(line: 231, column: 72, scope: !3676)
!3683 = !DILocation(line: 233, column: 26, scope: !3676)
!3684 = !DILocation(line: 233, column: 32, scope: !3676)
!3685 = !DILocation(line: 233, column: 9, scope: !3676)
!3686 = !DILocation(line: 233, column: 2, scope: !3676)
!3687 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3688, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!73, !117}
!3690 = !DILocalVariable(name: "dev", arg: 1, scope: !3687, file: !30, line: 655, type: !117)
!3691 = !DILocation(line: 655, column: 58, scope: !3687)
!3692 = !DILocation(line: 657, column: 9, scope: !3687)
!3693 = !DILocation(line: 657, column: 14, scope: !3687)
!3694 = !DILocation(line: 657, column: 2, scope: !3687)
!3695 = distinct !DISubprogram(name: "acpi_fan_resume", scope: !3, file: !3, line: 481, type: !1658, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3696 = !DILocalVariable(name: "dev", arg: 1, scope: !3695, file: !3, line: 481, type: !1626)
!3697 = !DILocation(line: 481, column: 43, scope: !3695)
!3698 = !DILocalVariable(name: "result", scope: !3695, file: !3, line: 483, type: !79)
!3699 = !DILocation(line: 483, column: 6, scope: !3695)
!3700 = !DILocalVariable(name: "fan", scope: !3695, file: !3, line: 484, type: !2593)
!3701 = !DILocation(line: 484, column: 19, scope: !3695)
!3702 = !DILocation(line: 484, column: 41, scope: !3695)
!3703 = !DILocation(line: 484, column: 25, scope: !3695)
!3704 = !DILocation(line: 486, column: 6, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 486, column: 6)
!3706 = !DILocation(line: 486, column: 11, scope: !3705)
!3707 = !DILocation(line: 486, column: 6, scope: !3695)
!3708 = !DILocation(line: 487, column: 3, scope: !3705)
!3709 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3710, file: !3, line: 489, type: !88)
!3710 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 489, column: 36)
!3711 = !DILocation(line: 489, column: 36, scope: !3710)
!3712 = !DILocalVariable(name: "__mptr", scope: !3713, file: !3, line: 489, type: !73)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 489, column: 36)
!3714 = !DILocation(line: 489, column: 36, scope: !3713)
!3715 = !DILocation(line: 489, column: 36, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 489, column: 36)
!3717 = !DILocation(line: 489, column: 11, scope: !3695)
!3718 = !DILocation(line: 489, column: 9, scope: !3695)
!3719 = !DILocation(line: 490, column: 6, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 490, column: 6)
!3721 = !DILocation(line: 490, column: 6, scope: !3695)
!3722 = !DILocation(line: 491, column: 3, scope: !3720)
!3723 = !DILocation(line: 493, column: 9, scope: !3695)
!3724 = !DILocation(line: 493, column: 2, scope: !3695)
!3725 = !DILocation(line: 494, column: 1, scope: !3695)
!3726 = distinct !DISubprogram(name: "acpi_fan_suspend", scope: !3, file: !3, line: 470, type: !1658, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !157)
!3727 = !DILocalVariable(name: "dev", arg: 1, scope: !3726, file: !3, line: 470, type: !1626)
!3728 = !DILocation(line: 470, column: 44, scope: !3726)
!3729 = !DILocalVariable(name: "fan", scope: !3726, file: !3, line: 472, type: !2593)
!3730 = !DILocation(line: 472, column: 19, scope: !3726)
!3731 = !DILocation(line: 472, column: 41, scope: !3726)
!3732 = !DILocation(line: 472, column: 25, scope: !3726)
!3733 = !DILocation(line: 473, column: 6, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 473, column: 6)
!3735 = !DILocation(line: 473, column: 11, scope: !3734)
!3736 = !DILocation(line: 473, column: 6, scope: !3726)
!3737 = !DILocation(line: 474, column: 3, scope: !3734)
!3738 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3739, file: !3, line: 476, type: !88)
!3739 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 476, column: 24)
!3740 = !DILocation(line: 476, column: 24, scope: !3739)
!3741 = !DILocalVariable(name: "__mptr", scope: !3742, file: !3, line: 476, type: !73)
!3742 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 476, column: 24)
!3743 = !DILocation(line: 476, column: 24, scope: !3742)
!3744 = !DILocation(line: 476, column: 24, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 476, column: 24)
!3746 = !DILocation(line: 476, column: 2, scope: !3726)
!3747 = !DILocation(line: 478, column: 2, scope: !3726)
!3748 = !DILocation(line: 479, column: 1, scope: !3726)
