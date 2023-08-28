; ModuleID = '../bcout/drivers/char/hw_random/ks-sa-rng.llvm.bc'
source_filename = "drivers/char/hw_random/ks-sa-rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ks_sa_rng_driver_init6:\09\09\09"
module asm ".long\09ks_sa_rng_driver_init - .\09\09\09"
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
%struct.ks_sa_rng = type { %struct.device*, %struct.hwrng, %struct.clk*, %struct.regmap*, %struct.trng_regs*, i64, i32 }
%struct.hwrng = type { i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.clk = type opaque
%struct.regmap = type opaque
%struct.trng_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_ks_sa_rng_driver_init160 = internal global i8* bitcast (i32 ()* @ks_sa_rng_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ks_sa_rng_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @ks_sa_rng_probe, i32 (%struct.platform_device*)* @ks_sa_rng_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @ks_sa_rng_dt_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2082
@__exitcall_ks_sa_rng_driver_exit = internal global void ()* @ks_sa_rng_driver_exit, section ".exitcall.exit", align 8, !dbg !2055
@__UNIQUE_ID_description161 = internal constant [75 x i8] c"ks_sa_rng.description=Keystone NETCP SA H/W Random Number Generator driver\00", section ".modinfo", align 1, !dbg !2062
@__UNIQUE_ID_author162 = internal constant [51 x i8] c"ks_sa_rng.author=Vitaly Andrianov <vitalya@ti.com>\00", section ".modinfo", align 1, !dbg !2067
@__UNIQUE_ID_file163 = internal constant [48 x i8] c"ks_sa_rng.file=drivers/char/hw_random/ks-sa-rng\00", section ".modinfo", align 1, !dbg !2072
@__UNIQUE_ID_license164 = internal constant [22 x i8] c"ks_sa_rng.license=GPL\00", section ".modinfo", align 1, !dbg !2077
@.str = private unnamed_addr constant [10 x i8] c"ks-sa-rng\00", align 1
@ks_sa_rng_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2142
@.str.1 = private unnamed_addr constant [12 x i8] c"ks_sa_hwrng\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ti,syscon-sa-cfg\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"syscon_node_to_regmap failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to enable SA power-domain\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ks_sa_rng_driver_init160 to i8*), i8* bitcast (void ()* @ks_sa_rng_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ks_sa_rng_driver_exit to i8*), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_description161, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_author162, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_file163, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license164, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ks_sa_rng_driver_init() #0 section ".init.text" !dbg !2150 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @ks_sa_rng_driver, %struct.module* null) #6, !dbg !2153
  ret i32 %call, !dbg !2153
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ks_sa_rng_driver_exit() #0 section ".exit.text" !dbg !2154 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @ks_sa_rng_driver) #6, !dbg !2155
  ret void, !dbg !2155
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ks_sa_rng_probe(%struct.platform_device* %pdev) #2 !dbg !2156 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %ks_sa_rng = alloca %struct.ks_sa_rng*, align 8
  %dev = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.hwrng, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2157, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.declare(metadata %struct.ks_sa_rng** %ks_sa_rng, metadata !2159, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2217, metadata !DIExpression()), !dbg !2218
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2219
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2220
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2218
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2221, metadata !DIExpression()), !dbg !2222
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2223
  %call = call i8* @devm_kzalloc(%struct.device* %1, i64 160, i32 3264) #6, !dbg !2224
  %2 = bitcast i8* %call to %struct.ks_sa_rng*, !dbg !2224
  store %struct.ks_sa_rng* %2, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2225
  %3 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2226
  %tobool = icmp ne %struct.ks_sa_rng* %3, null, !dbg !2226
  br i1 %tobool, label %if.end, label %if.then, !dbg !2228

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2229
  br label %return, !dbg !2229

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2230
  %5 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2231
  %dev2 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %5, i32 0, i32 0, !dbg !2232
  store %struct.device* %4, %struct.device** %dev2, align 8, !dbg !2233
  %6 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2234
  %rng = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %6, i32 0, i32 1, !dbg !2235
  %name = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 0, !dbg !2236
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %name, align 8, !dbg !2236
  %init = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 1, !dbg !2236
  store i32 (%struct.hwrng*)* @ks_sa_rng_init, i32 (%struct.hwrng*)** %init, align 8, !dbg !2236
  %cleanup = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 2, !dbg !2236
  store void (%struct.hwrng*)* @ks_sa_rng_cleanup, void (%struct.hwrng*)** %cleanup, align 8, !dbg !2236
  %data_present = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 3, !dbg !2236
  store i32 (%struct.hwrng*, i32)* @ks_sa_rng_data_present, i32 (%struct.hwrng*, i32)** %data_present, align 8, !dbg !2236
  %data_read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 4, !dbg !2236
  store i32 (%struct.hwrng*, i32*)* @ks_sa_rng_data_read, i32 (%struct.hwrng*, i32*)** %data_read, align 8, !dbg !2236
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 5, !dbg !2236
  store i32 (%struct.hwrng*, i8*, i64, i1)* null, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !2236
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 6, !dbg !2236
  store i64 0, i64* %priv, align 8, !dbg !2236
  %quality = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 7, !dbg !2236
  store i16 0, i16* %quality, align 8, !dbg !2236
  %list = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 8, !dbg !2236
  %7 = bitcast %struct.list_head* %list to i8*, !dbg !2236
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false), !dbg !2236
  %ref = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 9, !dbg !2236
  %8 = bitcast %struct.kref* %ref to i8*, !dbg !2236
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 4, i1 false), !dbg !2236
  %cleanup_done = getelementptr inbounds %struct.hwrng, %struct.hwrng* %.compoundliteral, i32 0, i32 10, !dbg !2236
  %9 = bitcast %struct.completion* %cleanup_done to i8*, !dbg !2236
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false), !dbg !2236
  %10 = bitcast %struct.hwrng* %rng to i8*, !dbg !2237
  %11 = bitcast %struct.hwrng* %.compoundliteral to i8*, !dbg !2237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 112, i1 false), !dbg !2237
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2238
  %13 = ptrtoint %struct.device* %12 to i64, !dbg !2239
  %14 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2240
  %rng3 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %14, i32 0, i32 1, !dbg !2241
  %priv4 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng3, i32 0, i32 6, !dbg !2242
  store i64 %13, i64* %priv4, align 8, !dbg !2243
  %15 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2244
  %call5 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %15, i32 0) #6, !dbg !2245
  %16 = bitcast i8* %call5 to %struct.trng_regs*, !dbg !2245
  %17 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2246
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %17, i32 0, i32 4, !dbg !2247
  store %struct.trng_regs* %16, %struct.trng_regs** %reg_rng, align 8, !dbg !2248
  %18 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2249
  %reg_rng6 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %18, i32 0, i32 4, !dbg !2251
  %19 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng6, align 8, !dbg !2251
  %20 = bitcast %struct.trng_regs* %19 to i8*, !dbg !2249
  %call7 = call zeroext i1 @IS_ERR(i8* %20) #6, !dbg !2252
  br i1 %call7, label %if.then8, label %if.end11, !dbg !2253

if.then8:                                         ; preds = %if.end
  %21 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2254
  %reg_rng9 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %21, i32 0, i32 4, !dbg !2255
  %22 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng9, align 8, !dbg !2255
  %23 = bitcast %struct.trng_regs* %22 to i8*, !dbg !2254
  %call10 = call i64 @PTR_ERR(i8* %23) #6, !dbg !2256
  %conv = trunc i64 %call10 to i32, !dbg !2256
  store i32 %conv, i32* %retval, align 4, !dbg !2257
  br label %return, !dbg !2257

if.end11:                                         ; preds = %if.end
  %24 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2258
  %of_node = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 23, !dbg !2259
  %25 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2259
  %call12 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2260
  %26 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2261
  %regmap_cfg = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %26, i32 0, i32 3, !dbg !2262
  store %struct.regmap* %call12, %struct.regmap** %regmap_cfg, align 8, !dbg !2263
  %27 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2264
  %regmap_cfg13 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %27, i32 0, i32 3, !dbg !2266
  %28 = load %struct.regmap*, %struct.regmap** %regmap_cfg13, align 8, !dbg !2266
  %29 = bitcast %struct.regmap* %28 to i8*, !dbg !2264
  %call14 = call zeroext i1 @IS_ERR(i8* %29) #6, !dbg !2267
  br i1 %call14, label %if.then15, label %if.end16, !dbg !2268

if.then15:                                        ; preds = %if.end11
  %30 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2269
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !2269
  store i32 -22, i32* %retval, align 4, !dbg !2271
  br label %return, !dbg !2271

if.end16:                                         ; preds = %if.end11
  %31 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2272
  call void @pm_runtime_enable(%struct.device* %31) #6, !dbg !2273
  %32 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2274
  %call17 = call i32 @pm_runtime_get_sync(%struct.device* %32) #6, !dbg !2275
  store i32 %call17, i32* %ret, align 4, !dbg !2276
  %33 = load i32, i32* %ret, align 4, !dbg !2277
  %cmp = icmp slt i32 %33, 0, !dbg !2279
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !2280

if.then19:                                        ; preds = %if.end16
  %34 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2281
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !2281
  %35 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2283
  call void @pm_runtime_put_noidle(%struct.device* %35) #6, !dbg !2284
  %36 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2285
  call void @pm_runtime_disable(%struct.device* %36) #6, !dbg !2286
  %37 = load i32, i32* %ret, align 4, !dbg !2287
  store i32 %37, i32* %retval, align 4, !dbg !2288
  br label %return, !dbg !2288

if.end20:                                         ; preds = %if.end16
  %38 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2289
  %39 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2290
  %40 = bitcast %struct.ks_sa_rng* %39 to i8*, !dbg !2290
  call void @platform_set_drvdata(%struct.platform_device* %38, i8* %40) #6, !dbg !2291
  %41 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2292
  %dev21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 3, !dbg !2293
  %42 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2294
  %rng22 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %42, i32 0, i32 1, !dbg !2295
  %call23 = call i32 @devm_hwrng_register(%struct.device* %dev21, %struct.hwrng* %rng22) #6, !dbg !2296
  store i32 %call23, i32* %retval, align 4, !dbg !2297
  br label %return, !dbg !2297

return:                                           ; preds = %if.end20, %if.then19, %if.then15, %if.then8, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !2298
  ret i32 %43, !dbg !2298
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ks_sa_rng_remove(%struct.platform_device* %pdev) #2 !dbg !2299 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2300, metadata !DIExpression()), !dbg !2301
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2302
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2303
  %call = call i32 @pm_runtime_put_sync(%struct.device* %dev) #6, !dbg !2304
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2305
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %1, i32 0, i32 3, !dbg !2306
  call void @pm_runtime_disable(%struct.device* %dev1) #6, !dbg !2307
  ret i32 0, !dbg !2308
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2309 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2312, metadata !DIExpression()), !dbg !2313
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2314, metadata !DIExpression()), !dbg !2315
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2316, metadata !DIExpression()), !dbg !2317
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2318
  %1 = load i64, i64* %size.addr, align 8, !dbg !2319
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2320
  %or = or i32 %2, 256, !dbg !2321
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !2322
  ret i8* %call, !dbg !2323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ks_sa_rng_init(%struct.hwrng* %rng) #2 !dbg !2324 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %value = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %ks_sa_rng = alloca %struct.ks_sa_rng*, align 8
  %clk_rate = alloca i64, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2325, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.declare(metadata i32* %value, metadata !2327, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2329, metadata !DIExpression()), !dbg !2330
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2331
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 6, !dbg !2332
  %1 = load i64, i64* %priv, align 8, !dbg !2332
  %2 = inttoptr i64 %1 to %struct.device*, !dbg !2333
  store %struct.device* %2, %struct.device** %dev, align 8, !dbg !2330
  call void @llvm.dbg.declare(metadata %struct.ks_sa_rng** %ks_sa_rng, metadata !2334, metadata !DIExpression()), !dbg !2335
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2336
  %call = call i8* @dev_get_drvdata(%struct.device* %3) #6, !dbg !2337
  %4 = bitcast i8* %call to %struct.ks_sa_rng*, !dbg !2337
  store %struct.ks_sa_rng* %4, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2335
  call void @llvm.dbg.declare(metadata i64* %clk_rate, metadata !2338, metadata !DIExpression()), !dbg !2339
  %5 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2340
  %clk = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %5, i32 0, i32 2, !dbg !2341
  %6 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2341
  %call1 = call i64 @clk_get_rate(%struct.clk* %6) #6, !dbg !2342
  store i64 %call1, i64* %clk_rate, align 8, !dbg !2339
  %7 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2343
  %regmap_cfg = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %7, i32 0, i32 3, !dbg !2344
  %8 = load %struct.regmap*, %struct.regmap** %regmap_cfg, align 8, !dbg !2344
  %call2 = call i32 @regmap_write_bits(%struct.regmap* %8, i32 8, i32 8, i32 8) #6, !dbg !2345
  %9 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2346
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %9, i32 0, i32 4, !dbg !2347
  %10 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng, align 8, !dbg !2347
  %control = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %10, i32 0, i32 5, !dbg !2348
  %11 = bitcast i32* %control to i8*, !dbg !2349
  call void @writel(i32 0, i8* %11) #6, !dbg !2350
  store i32 0, i32* %value, align 4, !dbg !2351
  %12 = load i32, i32* %value, align 4, !dbg !2352
  %13 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2353
  %reg_rng3 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %13, i32 0, i32 4, !dbg !2354
  %14 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng3, align 8, !dbg !2354
  %control4 = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %14, i32 0, i32 5, !dbg !2355
  %15 = bitcast i32* %control4 to i8*, !dbg !2356
  call void @writel(i32 %12, i8* %15) #6, !dbg !2357
  store i32 1, i32* %value, align 4, !dbg !2358
  %16 = load i32, i32* %value, align 4, !dbg !2359
  %17 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2360
  %reg_rng5 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %17, i32 0, i32 4, !dbg !2361
  %18 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng5, align 8, !dbg !2361
  %config = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %18, i32 0, i32 6, !dbg !2362
  %19 = bitcast i32* %config to i8*, !dbg !2363
  call void @writel(i32 %16, i8* %19) #6, !dbg !2364
  %20 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2365
  %reg_rng6 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %20, i32 0, i32 4, !dbg !2366
  %21 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng6, align 8, !dbg !2366
  %intmask = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %21, i32 0, i32 3, !dbg !2367
  %22 = bitcast i32* %intmask to i8*, !dbg !2368
  call void @writel(i32 0, i8* %22) #6, !dbg !2369
  %23 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2370
  %reg_rng7 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %23, i32 0, i32 4, !dbg !2371
  %24 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng7, align 8, !dbg !2371
  %control8 = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %24, i32 0, i32 5, !dbg !2372
  %25 = bitcast i32* %control8 to i8*, !dbg !2373
  %call9 = call i32 @readl(i8* %25) #6, !dbg !2374
  store i32 %call9, i32* %value, align 4, !dbg !2375
  %26 = load i32, i32* %value, align 4, !dbg !2376
  %conv = zext i32 %26 to i64, !dbg !2376
  %or = or i64 %conv, 1024, !dbg !2376
  %conv10 = trunc i64 %or to i32, !dbg !2376
  store i32 %conv10, i32* %value, align 4, !dbg !2376
  %27 = load i32, i32* %value, align 4, !dbg !2377
  %28 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2378
  %reg_rng11 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %28, i32 0, i32 4, !dbg !2379
  %29 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng11, align 8, !dbg !2379
  %control12 = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %29, i32 0, i32 5, !dbg !2380
  %30 = bitcast i32* %control12 to i8*, !dbg !2381
  call void @writel(i32 %27, i8* %30) #6, !dbg !2382
  %31 = load i64, i64* %clk_rate, align 8, !dbg !2383
  %call13 = call i32 @refill_delay_ns(i64 %31) #6, !dbg !2384
  %32 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2385
  %refill_delay_ns = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %32, i32 0, i32 6, !dbg !2386
  store i32 %call13, i32* %refill_delay_ns, align 8, !dbg !2387
  %call14 = call i64 @ktime_get_ns() #6, !dbg !2388
  %33 = load i64, i64* %clk_rate, align 8, !dbg !2389
  %call15 = call i32 @startup_delay_ns(i64 %33) #6, !dbg !2390
  %conv16 = zext i32 %call15 to i64, !dbg !2390
  %add = add i64 %call14, %conv16, !dbg !2391
  %34 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2392
  %ready_ts = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %34, i32 0, i32 5, !dbg !2393
  store i64 %add, i64* %ready_ts, align 8, !dbg !2394
  ret i32 0, !dbg !2395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ks_sa_rng_cleanup(%struct.hwrng* %rng) #2 !dbg !2396 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %dev = alloca %struct.device*, align 8
  %ks_sa_rng = alloca %struct.ks_sa_rng*, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2399, metadata !DIExpression()), !dbg !2400
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2401
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 6, !dbg !2402
  %1 = load i64, i64* %priv, align 8, !dbg !2402
  %2 = inttoptr i64 %1 to %struct.device*, !dbg !2403
  store %struct.device* %2, %struct.device** %dev, align 8, !dbg !2400
  call void @llvm.dbg.declare(metadata %struct.ks_sa_rng** %ks_sa_rng, metadata !2404, metadata !DIExpression()), !dbg !2405
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2406
  %call = call i8* @dev_get_drvdata(%struct.device* %3) #6, !dbg !2407
  %4 = bitcast i8* %call to %struct.ks_sa_rng*, !dbg !2407
  store %struct.ks_sa_rng* %4, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2405
  %5 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2408
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %5, i32 0, i32 4, !dbg !2409
  %6 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng, align 8, !dbg !2409
  %control = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %6, i32 0, i32 5, !dbg !2410
  %7 = bitcast i32* %control to i8*, !dbg !2411
  call void @writel(i32 0, i8* %7) #6, !dbg !2412
  %8 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2413
  %regmap_cfg = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %8, i32 0, i32 3, !dbg !2414
  %9 = load %struct.regmap*, %struct.regmap** %regmap_cfg, align 8, !dbg !2414
  %call1 = call i32 @regmap_write_bits(%struct.regmap* %9, i32 8, i32 8, i32 0) #6, !dbg !2415
  ret void, !dbg !2416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ks_sa_rng_data_present(%struct.hwrng* %rng, i32 %wait) #2 !dbg !2417 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %wait.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %ks_sa_rng = alloca %struct.ks_sa_rng*, align 8
  %now = alloca i64, align 8
  %ready = alloca i32, align 4
  %j = alloca i32, align 4
  %min_delay = alloca i64, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2418, metadata !DIExpression()), !dbg !2419
  store i32 %wait, i32* %wait.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wait.addr, metadata !2420, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2422, metadata !DIExpression()), !dbg !2423
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2424
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 6, !dbg !2425
  %1 = load i64, i64* %priv, align 8, !dbg !2425
  %2 = inttoptr i64 %1 to %struct.device*, !dbg !2426
  store %struct.device* %2, %struct.device** %dev, align 8, !dbg !2423
  call void @llvm.dbg.declare(metadata %struct.ks_sa_rng** %ks_sa_rng, metadata !2427, metadata !DIExpression()), !dbg !2428
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2429
  %call = call i8* @dev_get_drvdata(%struct.device* %3) #6, !dbg !2430
  %4 = bitcast i8* %call to %struct.ks_sa_rng*, !dbg !2430
  store %struct.ks_sa_rng* %4, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2428
  call void @llvm.dbg.declare(metadata i64* %now, metadata !2431, metadata !DIExpression()), !dbg !2432
  %call1 = call i64 @ktime_get_ns() #6, !dbg !2433
  store i64 %call1, i64* %now, align 8, !dbg !2432
  call void @llvm.dbg.declare(metadata i32* %ready, metadata !2434, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2436, metadata !DIExpression()), !dbg !2437
  %5 = load i32, i32* %wait.addr, align 4, !dbg !2438
  %tobool = icmp ne i32 %5, 0, !dbg !2438
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2440

land.lhs.true:                                    ; preds = %entry
  %6 = load i64, i64* %now, align 8, !dbg !2441
  %7 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2442
  %ready_ts = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %7, i32 0, i32 5, !dbg !2443
  %8 = load i64, i64* %ready_ts, align 8, !dbg !2443
  %cmp = icmp ult i64 %6, %8, !dbg !2444
  br i1 %cmp, label %if.then, label %if.end, !dbg !2445

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i64* %min_delay, metadata !2446, metadata !DIExpression()), !dbg !2448
  %9 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2449
  %ready_ts2 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %9, i32 0, i32 5, !dbg !2449
  %10 = load i64, i64* %ready_ts2, align 8, !dbg !2449
  %11 = load i64, i64* %now, align 8, !dbg !2449
  %sub = sub i64 %10, %11, !dbg !2449
  %conv = trunc i64 %sub to i32, !dbg !2449
  %add = add i32 %conv, 1000, !dbg !2449
  %sub3 = sub i32 %add, 1, !dbg !2449
  %div = udiv i32 %sub3, 1000, !dbg !2449
  %conv4 = zext i32 %div to i64, !dbg !2449
  store i64 %conv4, i64* %min_delay, align 8, !dbg !2448
  %12 = load i64, i64* %min_delay, align 8, !dbg !2450
  %13 = load i64, i64* %min_delay, align 8, !dbg !2451
  %add5 = add i64 %13, 5, !dbg !2452
  call void @usleep_range(i64 %12, i64 %add5) #6, !dbg !2453
  br label %if.end, !dbg !2454

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %j, align 4, !dbg !2455
  br label %for.cond, !dbg !2457

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %j, align 4, !dbg !2458
  %cmp6 = icmp slt i32 %14, 5, !dbg !2460
  br i1 %cmp6, label %for.body, label %for.end, !dbg !2461

for.body:                                         ; preds = %for.cond
  %15 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2462
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %15, i32 0, i32 4, !dbg !2464
  %16 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng, align 8, !dbg !2464
  %status = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %16, i32 0, i32 2, !dbg !2465
  %17 = bitcast i32* %status to i8*, !dbg !2466
  %call8 = call i32 @readl(i8* %17) #6, !dbg !2467
  store i32 %call8, i32* %ready, align 4, !dbg !2468
  %18 = load i32, i32* %ready, align 4, !dbg !2469
  %conv9 = zext i32 %18 to i64, !dbg !2469
  %and = and i64 %conv9, 1, !dbg !2469
  %conv10 = trunc i64 %and to i32, !dbg !2469
  store i32 %conv10, i32* %ready, align 4, !dbg !2469
  %19 = load i32, i32* %ready, align 4, !dbg !2470
  %tobool11 = icmp ne i32 %19, 0, !dbg !2470
  br i1 %tobool11, label %if.then13, label %lor.lhs.false, !dbg !2472

lor.lhs.false:                                    ; preds = %for.body
  %20 = load i32, i32* %wait.addr, align 4, !dbg !2473
  %tobool12 = icmp ne i32 %20, 0, !dbg !2473
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2474

if.then13:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.end, !dbg !2475

if.end14:                                         ; preds = %lor.lhs.false
  call void @__const_udelay(i64 21475) #6, !dbg !2476
  br label %for.inc, !dbg !2481

for.inc:                                          ; preds = %if.end14
  %21 = load i32, i32* %j, align 4, !dbg !2482
  %inc = add i32 %21, 1, !dbg !2482
  store i32 %inc, i32* %j, align 4, !dbg !2482
  br label %for.cond, !dbg !2483, !llvm.loop !2484

for.end:                                          ; preds = %if.then13, %for.cond
  %22 = load i32, i32* %ready, align 4, !dbg !2486
  ret i32 %22, !dbg !2487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ks_sa_rng_data_read(%struct.hwrng* %rng, i32* %data) #2 !dbg !2488 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %data.addr = alloca i32*, align 8
  %dev = alloca %struct.device*, align 8
  %ks_sa_rng = alloca %struct.ks_sa_rng*, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2489, metadata !DIExpression()), !dbg !2490
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2493, metadata !DIExpression()), !dbg !2494
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2495
  %priv = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 6, !dbg !2496
  %1 = load i64, i64* %priv, align 8, !dbg !2496
  %2 = inttoptr i64 %1 to %struct.device*, !dbg !2497
  store %struct.device* %2, %struct.device** %dev, align 8, !dbg !2494
  call void @llvm.dbg.declare(metadata %struct.ks_sa_rng** %ks_sa_rng, metadata !2498, metadata !DIExpression()), !dbg !2499
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2500
  %call = call i8* @dev_get_drvdata(%struct.device* %3) #6, !dbg !2501
  %4 = bitcast i8* %call to %struct.ks_sa_rng*, !dbg !2501
  store %struct.ks_sa_rng* %4, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2499
  %5 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2502
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %5, i32 0, i32 4, !dbg !2503
  %6 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng, align 8, !dbg !2503
  %output_l = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %6, i32 0, i32 0, !dbg !2504
  %7 = bitcast i32* %output_l to i8*, !dbg !2505
  %call1 = call i32 @readl(i8* %7) #6, !dbg !2506
  %8 = load i32*, i32** %data.addr, align 8, !dbg !2507
  %arrayidx = getelementptr i32, i32* %8, i64 0, !dbg !2507
  store i32 %call1, i32* %arrayidx, align 4, !dbg !2508
  %9 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2509
  %reg_rng2 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %9, i32 0, i32 4, !dbg !2510
  %10 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng2, align 8, !dbg !2510
  %output_h = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %10, i32 0, i32 1, !dbg !2511
  %11 = bitcast i32* %output_h to i8*, !dbg !2512
  %call3 = call i32 @readl(i8* %11) #6, !dbg !2513
  %12 = load i32*, i32** %data.addr, align 8, !dbg !2514
  %arrayidx4 = getelementptr i32, i32* %12, i64 1, !dbg !2514
  store i32 %call3, i32* %arrayidx4, align 4, !dbg !2515
  %13 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2516
  %reg_rng5 = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %13, i32 0, i32 4, !dbg !2517
  %14 = load %struct.trng_regs*, %struct.trng_regs** %reg_rng5, align 8, !dbg !2517
  %intack = getelementptr inbounds %struct.trng_regs, %struct.trng_regs* %14, i32 0, i32 4, !dbg !2518
  %15 = bitcast i32* %intack to i8*, !dbg !2519
  call void @writel(i32 1, i8* %15) #6, !dbg !2520
  %call6 = call i64 @ktime_get_ns() #6, !dbg !2521
  %16 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2522
  %refill_delay_ns = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %16, i32 0, i32 6, !dbg !2523
  %17 = load i32, i32* %refill_delay_ns, align 8, !dbg !2523
  %conv = zext i32 %17 to i64, !dbg !2522
  %add = add i64 %call6, %conv, !dbg !2524
  %18 = load %struct.ks_sa_rng*, %struct.ks_sa_rng** %ks_sa_rng, align 8, !dbg !2525
  %ready_ts = getelementptr inbounds %struct.ks_sa_rng, %struct.ks_sa_rng* %18, i32 0, i32 5, !dbg !2526
  store i64 %add, i64* %ready_ts, align 8, !dbg !2527
  ret i32 8, !dbg !2528
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2529 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2533, metadata !DIExpression()), !dbg !2534
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2535
  %1 = ptrtoint i8* %0 to i64, !dbg !2535
  %2 = inttoptr i64 %1 to i8*, !dbg !2535
  %3 = ptrtoint i8* %2 to i64, !dbg !2535
  %cmp = icmp uge i64 %3, -4095, !dbg !2535
  %lnot = xor i1 %cmp, true, !dbg !2535
  %lnot1 = xor i1 %lnot, true, !dbg !2535
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2535
  %conv = sext i32 %lnot.ext to i64, !dbg !2535
  %tobool = icmp ne i64 %conv, 0, !dbg !2535
  ret i1 %tobool, !dbg !2536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2537 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2542
  %1 = ptrtoint i8* %0 to i64, !dbg !2543
  ret i64 %1, !dbg !2544
}

; Function Attrs: noredzone
declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #2 !dbg !2545 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2549
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #6, !dbg !2550
  ret i32 %call, !dbg !2551
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #2 !dbg !2552 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !2553, metadata !DIExpression()), !dbg !2559
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !2573, metadata !DIExpression()), !dbg !2574
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !2575, metadata !DIExpression()), !dbg !2576
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !2577, metadata !DIExpression()), !dbg !2579
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !2580, metadata !DIExpression()), !dbg !2579
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !2581, metadata !DIExpression()), !dbg !2579
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !2582, metadata !DIExpression()), !dbg !2579
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !2583, metadata !DIExpression()), !dbg !2579
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !2584, metadata !DIExpression()), !dbg !2590
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !2592, metadata !DIExpression()), !dbg !2593
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !2594, metadata !DIExpression()), !dbg !2595
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !2596, metadata !DIExpression()), !dbg !2597
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !2598, metadata !DIExpression()), !dbg !2599
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2600, metadata !DIExpression()), !dbg !2601
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !2602, metadata !DIExpression()), !dbg !2603
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !2604, metadata !DIExpression()), !dbg !2605
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2606, metadata !DIExpression()), !dbg !2614
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2616, metadata !DIExpression()), !dbg !2617
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2618, metadata !DIExpression()), !dbg !2619
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !2620, metadata !DIExpression()), !dbg !2621
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !2622, metadata !DIExpression()), !dbg !2623
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2624, metadata !DIExpression()), !dbg !2625
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2626
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2627
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !2628
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2629
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !2629
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2630
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !2631
  %conv.i.i = trunc i64 %4 to i32, !dbg !2631
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #8, !dbg !2632
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2633
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2633
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !2633
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2634
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !2635
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !2636
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2637
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !2638
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !2639
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2640
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !2641
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !2641
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !2641
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !2599
  br label %do.body.i.i.i, !dbg !2642

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !2643
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !2643
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !2643
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !2643
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !2643
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !2643
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !2646

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !2647

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2648
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !2649
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !2650
  %add.i.i.i = add i32 %19, %20, !dbg !2651
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !2579
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !2579
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !2579
  %23 = load i32, i32* %22, align 4, !dbg !2579
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !2579
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !2579
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !2579
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !2579
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !2579
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !2579
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !2579
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !2579
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !2579
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #9, !dbg !2579, !srcloc !2652
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !2579
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !2579
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !2579
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !2579
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !2653
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !2653
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !2653
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !2653
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !2653
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !2653
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !2579

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !2653
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !2653
  store i32 %31, i32* %32, align 4, !dbg !2653
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !2653

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !2579
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !2579
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !2579
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !2579
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !2579
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !2653
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !2579
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !2655
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !2656
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !2657, !llvm.loop !2658

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !2660
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !2661
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !2662
  ret void, !dbg !2663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #2 !dbg !2664 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2665, metadata !DIExpression()), !dbg !2666
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2667
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #6, !dbg !2668
  ret void, !dbg !2669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2670 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2673, metadata !DIExpression()), !dbg !2674
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2675, metadata !DIExpression()), !dbg !2676
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2677
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2678
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2679
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !2680
  ret void, !dbg !2681
}

; Function Attrs: noredzone
declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.hwrng*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2682 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2687
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2688
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2688
  ret i8* %1, !dbg !2689
}

; Function Attrs: noredzone
declare dso_local i64 @clk_get_rate(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regmap_write_bits(%struct.regmap* %map, i32 %reg, i32 %mask, i32 %val) #2 !dbg !2690 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !2695, metadata !DIExpression()), !dbg !2696
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !2697, metadata !DIExpression()), !dbg !2698
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2699, metadata !DIExpression()), !dbg !2700
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !2701
  %1 = load i32, i32* %reg.addr, align 4, !dbg !2702
  %2 = load i32, i32* %mask.addr, align 4, !dbg !2703
  %3 = load i32, i32* %val.addr, align 4, !dbg !2704
  %call = call i32 @regmap_update_bits_base(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i8* null, i1 zeroext false, i1 zeroext true) #6, !dbg !2705
  ret i32 %call, !dbg !2706
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !2707 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2712, metadata !DIExpression()), !dbg !2713
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2714, metadata !DIExpression()), !dbg !2713
  %0 = load i32, i32* %val.addr, align 4, !dbg !2713
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2713
  %2 = bitcast i8* %1 to i32*, !dbg !2713
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #9, !dbg !2713, !srcloc !2715
  ret void, !dbg !2713
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !2716 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2721, metadata !DIExpression()), !dbg !2720
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2720
  %1 = bitcast i8* %0 to i32*, !dbg !2720
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #9, !dbg !2720, !srcloc !2722
  store i32 %2, i32* %ret, align 4, !dbg !2720
  %3 = load i32, i32* %ret, align 4, !dbg !2720
  ret i32 %3, !dbg !2720
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refill_delay_ns(i64 %clk_rate) #2 !dbg !2723 {
entry:
  %clk_rate.addr = alloca i64, align 8
  store i64 %clk_rate, i64* %clk_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %clk_rate.addr, metadata !2726, metadata !DIExpression()), !dbg !2727
  %0 = load i64, i64* %clk_rate.addr, align 8, !dbg !2728
  %call = call i32 @cycles_to_ns(i64 %0, i32 16777216) #6, !dbg !2730
  ret i32 %call, !dbg !2731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_get_ns() #2 !dbg !2732 {
entry:
  %call = call i64 @ktime_get() #6, !dbg !2736
  %call1 = call i64 @ktime_to_ns(i64 %call) #6, !dbg !2737
  ret i64 %call1, !dbg !2738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @startup_delay_ns(i64 %clk_rate) #2 !dbg !2739 {
entry:
  %clk_rate.addr = alloca i64, align 8
  store i64 %clk_rate, i64* %clk_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %clk_rate.addr, metadata !2740, metadata !DIExpression()), !dbg !2741
  %0 = load i64, i64* %clk_rate.addr, align 8, !dbg !2742
  %call = call i32 @cycles_to_ns(i64 %0, i32 16777216) #6, !dbg !2744
  ret i32 %call, !dbg !2745
}

; Function Attrs: noredzone
declare dso_local i32 @regmap_update_bits_base(%struct.regmap*, i32, i32, i32, i8*, i1 zeroext, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cycles_to_ns(i64 %clk_rate, i32 %cycles) #2 !dbg !2746 {
entry:
  %clk_rate.addr = alloca i64, align 8
  %cycles.addr = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  store i64 %clk_rate, i64* %clk_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %clk_rate.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  store i32 %cycles, i32* %cycles.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cycles.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !2753, metadata !DIExpression()), !dbg !2755
  %0 = load i32, i32* %cycles.addr, align 4, !dbg !2755
  %conv = zext i32 %0 to i64, !dbg !2755
  %mul = mul i64 1000000000, %conv, !dbg !2755
  %1 = load i64, i64* %clk_rate.addr, align 8, !dbg !2755
  %add = add i64 %mul, %1, !dbg !2755
  %sub = sub i64 %add, 1, !dbg !2755
  store i64 %sub, i64* %_tmp, align 8, !dbg !2755
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2756, metadata !DIExpression()), !dbg !2759
  %2 = load i64, i64* %clk_rate.addr, align 8, !dbg !2759
  %conv1 = trunc i64 %2 to i32, !dbg !2759
  store i32 %conv1, i32* %__base, align 4, !dbg !2759
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2760, metadata !DIExpression()), !dbg !2759
  %3 = load i64, i64* %_tmp, align 8, !dbg !2759
  %4 = load i32, i32* %__base, align 4, !dbg !2759
  %conv2 = zext i32 %4 to i64, !dbg !2759
  %rem = urem i64 %3, %conv2, !dbg !2759
  %conv3 = trunc i64 %rem to i32, !dbg !2759
  store i32 %conv3, i32* %__rem, align 4, !dbg !2759
  %5 = load i64, i64* %_tmp, align 8, !dbg !2759
  %6 = load i32, i32* %__base, align 4, !dbg !2759
  %conv4 = zext i32 %6 to i64, !dbg !2759
  %div = udiv i64 %5, %conv4, !dbg !2759
  store i64 %div, i64* %_tmp, align 8, !dbg !2759
  %7 = load i32, i32* %__rem, align 4, !dbg !2759
  store i32 %7, i32* %tmp, align 4, !dbg !2759
  %8 = load i32, i32* %tmp, align 4, !dbg !2759
  %9 = load i64, i64* %_tmp, align 8, !dbg !2755
  store i64 %9, i64* %tmp5, align 8, !dbg !2755
  %10 = load i64, i64* %tmp5, align 8, !dbg !2755
  %conv6 = trunc i64 %10 to i32, !dbg !2761
  ret i32 %conv6, !dbg !2762
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_ns(i64 %kt) #2 !dbg !2763 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2767, metadata !DIExpression()), !dbg !2768
  %0 = load i64, i64* %kt.addr, align 8, !dbg !2769
  ret i64 %0, !dbg !2770
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #1

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !2771 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2775, metadata !DIExpression()), !dbg !2776
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2777, metadata !DIExpression()), !dbg !2778
  ret i1 true, !dbg !2779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !2780 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2786, metadata !DIExpression()), !dbg !2787
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2788, metadata !DIExpression()), !dbg !2789
  ret void, !dbg !2790
}

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2791 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2794, metadata !DIExpression()), !dbg !2795
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2796, metadata !DIExpression()), !dbg !2797
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2798
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2799
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2800
  store i8* %0, i8** %driver_data, align 8, !dbg !2801
  ret void, !dbg !2802
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync(%struct.device* %dev) #2 !dbg !2803 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2804, metadata !DIExpression()), !dbg !2805
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2806
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 4) #6, !dbg !2807
  ret i32 %call, !dbg !2808
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2145, !2146, !2147, !2148}
!llvm.ident = !{!2149}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ks_sa_rng_driver_init160", scope: !2, file: !3, line: 282, type: !202, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !2054, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/ks-sa-rng.c", directory: "/home/lizy2001/genbc/linux")
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
!55 = !{!56, !59, !61, !62, !2046, !252, !2048, !402, !202, !164, !2049, !719, !2052}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !58, line: 76, flags: DIFlagFwdDecl)
!58 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !60, line: 148, baseType: !7)
!60 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !64)
!64 = !{!65, !1573, !1574, !1577, !1578, !1629, !1723, !1724, !1725, !1726, !1727, !1736, !1841, !1854, !1857, !1858, !1862, !1864, !1865, !1866, !1870, !1876, !1877, !1880, !1995, !1996, !1999, !2000, !2001, !2002, !2034, !2035, !2036, !2039, !2042, !2043, !2044, !2045}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !63, file: !30, line: 462, baseType: !66, size: 512)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !67, line: 64, size: 512, elements: !68)
!67 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !73, !79, !81, !142, !1410, !1563, !1568, !1569, !1570, !1571, !1572}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !66, file: !67, line: 65, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !66, file: !67, line: 66, baseType: !74, size: 128, offset: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !60, line: 178, size: 128, elements: !75)
!75 = !{!76, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !74, file: !60, line: 179, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !74, file: !60, line: 179, baseType: !77, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !66, file: !67, line: 67, baseType: !80, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !66, file: !67, line: 68, baseType: !82, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !67, line: 192, size: 704, elements: !84)
!84 = !{!85, !86, !102, !103}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !83, file: !67, line: 193, baseType: !74, size: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !83, file: !67, line: 194, baseType: !87, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !88, line: 83, baseType: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !88, line: 71, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 72, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 72, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !92, file: !88, line: 73, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 20, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !95, file: !88, line: 21, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !99, line: 25, baseType: !100)
!99 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 25, elements: !101)
!101 = !{}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !83, file: !67, line: 195, baseType: !66, size: 512, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !83, file: !67, line: 196, baseType: !104, size: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !67, line: 156, size: 192, elements: !107)
!107 = !{!108, !114, !119}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !106, file: !67, line: 157, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !82, !80}
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !67, line: 158, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!70, !82, !80}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !106, file: !67, line: 159, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!113, !82, !80, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !67, line: 148, size: 20736, elements: !126)
!126 = !{!127, !132, !136, !137, !141}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !125, file: !67, line: 149, baseType: !128, size: 192)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 192, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!130 = !{!131}
!131 = !DISubrange(count: 3)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !125, file: !67, line: 150, baseType: !133, size: 4096, offset: 192)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 4096, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !125, file: !67, line: 151, baseType: !113, size: 32, offset: 4288)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !125, file: !67, line: 152, baseType: !138, size: 16384, offset: 4320)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 16384, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2048)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !125, file: !67, line: 153, baseType: !113, size: 32, offset: 20704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !66, file: !67, line: 69, baseType: !143, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !67, line: 138, size: 448, elements: !145)
!145 = !{!146, !150, !179, !181, !1358, !1389, !1393}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !144, file: !67, line: 139, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !80}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !144, file: !67, line: 140, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !154, line: 230, size: 128, elements: !155)
!154 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !172}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !153, file: !154, line: 231, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !80, !165, !129}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !60, line: 60, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !162, line: 73, baseType: !163)
!162 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !162, line: 15, baseType: !164)
!164 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !154, line: 30, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !154, line: 31, baseType: !70, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !166, file: !154, line: 32, baseType: !170, size: 16, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !60, line: 19, baseType: !171)
!171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !153, file: !154, line: 232, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!160, !80, !165, !70, !176}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 55, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !162, line: 72, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !162, line: 16, baseType: !61)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !144, file: !67, line: 141, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !144, file: !67, line: 142, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !154, line: 84, size: 320, elements: !186)
!186 = !{!187, !188, !192, !1355, !1356}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !154, line: 85, baseType: !70, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !185, file: !154, line: 86, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!170, !80, !165, !113}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !185, file: !154, line: 88, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!170, !80, !196, !113}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !154, line: 168, size: 448, elements: !198)
!198 = !{!199, !200, !201, !203, !213, !214}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !197, file: !154, line: 169, baseType: !166, size: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !197, file: !154, line: 170, baseType: !176, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !197, file: !154, line: 171, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !197, file: !154, line: 172, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!160, !207, !80, !196, !129, !210, !176}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !209, line: 526, flags: DIFlagFwdDecl)
!209 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !60, line: 46, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !162, line: 88, baseType: !212)
!212 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !197, file: !154, line: 174, baseType: !204, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !197, file: !154, line: 176, baseType: !215, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!113, !207, !80, !196, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !220, line: 305, size: 1472, elements: !221)
!220 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!221 = !{!222, !223, !224, !225, !226, !234, !235, !1329, !1335, !1336, !1341, !1342, !1345, !1349, !1350, !1351, !1352, !1353}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !219, file: !220, line: 308, baseType: !61, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !219, file: !220, line: 309, baseType: !61, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !219, file: !220, line: 313, baseType: !218, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !219, file: !220, line: 313, baseType: !218, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !219, file: !220, line: 315, baseType: !227, size: 192, align: 64, offset: 256)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !228, line: 24, size: 192, align: 64, elements: !229)
!228 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!229 = !{!230, !231, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !227, file: !228, line: 25, baseType: !61, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !227, file: !228, line: 26, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !227, file: !228, line: 27, baseType: !232, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !219, file: !220, line: 323, baseType: !61, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !219, file: !220, line: 327, baseType: !236, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !220, line: 388, size: 7296, elements: !238)
!238 = !{!239, !1325}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !220, line: 389, baseType: !240, size: 7296)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !220, line: 389, size: 7296, elements: !241)
!241 = !{!242, !243, !247, !253, !257, !258, !259, !260, !261, !269, !274, !275, !276, !277, !286, !287, !288, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !323, !331, !334, !382, !383, !1295, !1296, !1299, !1303, !1304, !1307, !1308, !1309, !1312, !1324}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !240, file: !220, line: 390, baseType: !218, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !240, file: !220, line: 391, baseType: !244, size: 64, offset: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !228, line: 31, size: 64, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !244, file: !228, line: 32, baseType: !232, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !240, file: !220, line: 392, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !249, line: 23, baseType: !250)
!249 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !251, line: 31, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!252 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !240, file: !220, line: 394, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!61, !207, !61, !61, !61, !61}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !240, file: !220, line: 398, baseType: !61, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !240, file: !220, line: 399, baseType: !61, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !240, file: !220, line: 405, baseType: !61, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !240, file: !220, line: 406, baseType: !61, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !240, file: !220, line: 407, baseType: !262, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !209, line: 286, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 286, size: 64, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !264, file: !209, line: 286, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !268, line: 18, baseType: !61)
!268 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !240, file: !220, line: 416, baseType: !270, size: 32, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !60, line: 168, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 166, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !271, file: !60, line: 167, baseType: !113, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !240, file: !220, line: 428, baseType: !270, size: 32, offset: 608)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !240, file: !220, line: 437, baseType: !270, size: 32, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !240, file: !220, line: 447, baseType: !270, size: 32, offset: 672)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !240, file: !220, line: 450, baseType: !278, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !279, line: 13, baseType: !280)
!279 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !60, line: 175, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 173, size: 64, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !281, file: !60, line: 174, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !249, line: 22, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !251, line: 30, baseType: !212)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !240, file: !220, line: 452, baseType: !113, size: 32, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !240, file: !220, line: 454, baseType: !87, offset: 800)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !240, file: !220, line: 457, baseType: !289, size: 256, offset: 832)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !290, line: 35, size: 256, elements: !291)
!290 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !294, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !289, file: !290, line: 36, baseType: !278, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !289, file: !290, line: 42, baseType: !278, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !289, file: !290, line: 46, baseType: !295, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 29, baseType: !95)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !289, file: !290, line: 47, baseType: !74, size: 128, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !240, file: !220, line: 459, baseType: !74, size: 128, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !240, file: !220, line: 466, baseType: !61, size: 64, offset: 1216)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !240, file: !220, line: 467, baseType: !61, size: 64, offset: 1280)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !240, file: !220, line: 469, baseType: !61, size: 64, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !240, file: !220, line: 470, baseType: !61, size: 64, offset: 1408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !240, file: !220, line: 471, baseType: !280, size: 64, offset: 1472)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !240, file: !220, line: 472, baseType: !61, size: 64, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !240, file: !220, line: 473, baseType: !61, size: 64, offset: 1600)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !240, file: !220, line: 474, baseType: !61, size: 64, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !240, file: !220, line: 475, baseType: !61, size: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !240, file: !220, line: 477, baseType: !87, offset: 1792)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !240, file: !220, line: 478, baseType: !61, size: 64, offset: 1792)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !240, file: !220, line: 478, baseType: !61, size: 64, offset: 1856)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !240, file: !220, line: 478, baseType: !61, size: 64, offset: 1920)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !240, file: !220, line: 478, baseType: !61, size: 64, offset: 1984)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !240, file: !220, line: 479, baseType: !61, size: 64, offset: 2048)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !240, file: !220, line: 479, baseType: !61, size: 64, offset: 2112)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !240, file: !220, line: 479, baseType: !61, size: 64, offset: 2176)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !240, file: !220, line: 480, baseType: !61, size: 64, offset: 2240)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !240, file: !220, line: 480, baseType: !61, size: 64, offset: 2304)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !240, file: !220, line: 480, baseType: !61, size: 64, offset: 2368)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !240, file: !220, line: 480, baseType: !61, size: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !240, file: !220, line: 482, baseType: !320, size: 2816, offset: 2496)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2816, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 44)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !240, file: !220, line: 488, baseType: !324, size: 256, offset: 5312)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !325, line: 60, size: 256, elements: !326)
!325 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !324, file: !325, line: 61, baseType: !328, size: 256)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 4)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !240, file: !220, line: 490, baseType: !332, size: 64, offset: 5568)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !220, line: 490, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !240, file: !220, line: 493, baseType: !335, size: 896, offset: 5632)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !336, line: 53, baseType: !337)
!336 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 13, size: 896, elements: !338)
!338 = !{!339, !340, !341, !342, !345, !346, !353, !354, !374, !375, !378}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !337, file: !336, line: 18, baseType: !248, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !337, file: !336, line: 28, baseType: !280, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !337, file: !336, line: 31, baseType: !289, size: 256, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !337, file: !336, line: 32, baseType: !343, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !336, line: 32, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !337, file: !336, line: 37, baseType: !171, size: 16, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !337, file: !336, line: 40, baseType: !347, size: 192, offset: 512)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !348, line: 53, size: 192, elements: !349)
!348 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !347, file: !348, line: 54, baseType: !278, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !347, file: !348, line: 55, baseType: !87, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !347, file: !348, line: 59, baseType: !74, size: 128, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !337, file: !336, line: 41, baseType: !202, size: 64, offset: 704)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !337, file: !336, line: 42, baseType: !355, size: 64, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !358, line: 13, size: 896, elements: !359)
!358 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !357, file: !358, line: 14, baseType: !202, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !358, line: 15, baseType: !61, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !357, file: !358, line: 17, baseType: !61, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !357, file: !358, line: 17, baseType: !61, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !357, file: !358, line: 19, baseType: !164, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !357, file: !358, line: 21, baseType: !164, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !357, file: !358, line: 22, baseType: !164, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !357, file: !358, line: 23, baseType: !164, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !357, file: !358, line: 24, baseType: !164, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !357, file: !358, line: 25, baseType: !164, size: 64, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !357, file: !358, line: 26, baseType: !164, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !357, file: !358, line: 27, baseType: !164, size: 64, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !357, file: !358, line: 28, baseType: !164, size: 64, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !357, file: !358, line: 29, baseType: !164, size: 64, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !337, file: !336, line: 44, baseType: !270, size: 32, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !337, file: !336, line: 50, baseType: !376, size: 16, offset: 864)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !249, line: 19, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !251, line: 24, baseType: !171)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !337, file: !336, line: 51, baseType: !379, size: 16, offset: 880)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !249, line: 18, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !251, line: 23, baseType: !381)
!381 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !220, line: 495, baseType: !61, size: 64, offset: 6528)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !240, file: !220, line: 497, baseType: !384, size: 64, offset: 6592)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !220, line: 381, size: 384, elements: !386)
!386 = !{!387, !388, !1294}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !385, file: !220, line: 382, baseType: !270, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !385, file: !220, line: 383, baseType: !389, size: 128, offset: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !220, line: 376, size: 128, elements: !390)
!390 = !{!391, !1292}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !389, file: !220, line: 377, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !394, line: 640, size: 48640, elements: !395)
!394 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!395 = !{!396, !404, !406, !407, !413, !414, !415, !416, !417, !418, !419, !420, !424, !442, !453, !548, !549, !550, !561, !562, !564, !565, !566, !567, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !646, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !702, !704, !705, !706, !718, !720, !721, !722, !723, !724, !730, !731, !732, !733, !734, !735, !736, !748, !753, !758, !759, !760, !763, !767, !770, !773, !776, !779, !783, !786, !789, !795, !796, !797, !803, !804, !805, !806, !807, !816, !817, !818, !819, !820, !825, !826, !827, !830, !831, !834, !837, !840, !843, !846, !849, !850, !930, !933, !936, !937, !940, !941, !942, !948, !949, !950, !963, !964, !965, !977, !982, !985, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !393, file: !394, line: 646, baseType: !397, size: 128)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !398, line: 56, size: 128, elements: !399)
!398 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !398, line: 57, baseType: !61, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !397, file: !398, line: 58, baseType: !402, size: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !249, line: 21, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !251, line: 27, baseType: !7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !393, file: !394, line: 649, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !164)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !393, file: !394, line: 657, baseType: !202, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !393, file: !394, line: 658, baseType: !408, size: 32, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !409, line: 113, baseType: !410)
!409 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !409, line: 111, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !410, file: !409, line: 112, baseType: !270, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !394, line: 660, baseType: !7, size: 32, offset: 288)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !393, file: !394, line: 661, baseType: !7, size: 32, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !393, file: !394, line: 684, baseType: !113, size: 32, offset: 352)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !393, file: !394, line: 686, baseType: !113, size: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !393, file: !394, line: 687, baseType: !113, size: 32, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !393, file: !394, line: 688, baseType: !113, size: 32, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !393, file: !394, line: 689, baseType: !7, size: 32, offset: 480)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !393, file: !394, line: 691, baseType: !421, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !394, line: 691, flags: DIFlagFwdDecl)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !393, file: !394, line: 692, baseType: !425, size: 832, offset: 576)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !394, line: 451, size: 832, elements: !426)
!426 = !{!427, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !425, file: !394, line: 453, baseType: !428, size: 128)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !394, line: 325, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !428, file: !394, line: 326, baseType: !61, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !428, file: !394, line: 327, baseType: !402, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !425, file: !394, line: 454, baseType: !227, size: 192, align: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !425, file: !394, line: 455, baseType: !74, size: 128, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !425, file: !394, line: 456, baseType: !7, size: 32, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !425, file: !394, line: 458, baseType: !248, size: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !425, file: !394, line: 459, baseType: !248, size: 64, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !425, file: !394, line: 460, baseType: !248, size: 64, offset: 640)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !425, file: !394, line: 461, baseType: !248, size: 64, offset: 704)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !425, file: !394, line: 463, baseType: !248, size: 64, offset: 768)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !425, file: !394, line: 465, baseType: !441, offset: 832)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !394, line: 415, elements: !101)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !393, file: !394, line: 693, baseType: !443, size: 384, offset: 1408)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !394, line: 489, size: 384, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !443, file: !394, line: 490, baseType: !74, size: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !443, file: !394, line: 491, baseType: !61, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !443, file: !394, line: 492, baseType: !61, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !443, file: !394, line: 493, baseType: !7, size: 32, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !443, file: !394, line: 494, baseType: !171, size: 16, offset: 288)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !443, file: !394, line: 495, baseType: !171, size: 16, offset: 304)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !443, file: !394, line: 497, baseType: !452, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !393, file: !394, line: 697, baseType: !454, size: 1792, offset: 1792)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !394, line: 507, size: 1792, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !545, !546}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !454, file: !394, line: 508, baseType: !227, size: 192, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !454, file: !394, line: 515, baseType: !248, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !454, file: !394, line: 516, baseType: !248, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !454, file: !394, line: 517, baseType: !248, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !454, file: !394, line: 518, baseType: !248, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !454, file: !394, line: 519, baseType: !248, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !454, file: !394, line: 526, baseType: !284, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !454, file: !394, line: 527, baseType: !248, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !394, line: 528, baseType: !7, size: 32, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !454, file: !394, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !454, file: !394, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !454, file: !394, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !454, file: !394, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !454, file: !394, line: 563, baseType: !470, size: 512, offset: 704)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !471)
!471 = !{!472, !480, !481, !486, !538, !542, !543, !544}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !470, file: !6, line: 119, baseType: !473, size: 256)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !474, line: 9, size: 256, elements: !475)
!474 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !474, line: 10, baseType: !227, size: 192, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !473, file: !474, line: 11, baseType: !478, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !479, line: 29, baseType: !284)
!479 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !470, file: !6, line: 120, baseType: !478, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !470, file: !6, line: 121, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!5, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !470, file: !6, line: 122, baseType: !487, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !489)
!489 = !{!490, !510, !511, !514, !524, !525, !533, !537}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !488, file: !6, line: 160, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !492, file: !6, line: 215, baseType: !295)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !492, file: !6, line: 216, baseType: !7, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !492, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !492, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !492, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !492, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !492, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !492, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !492, file: !6, line: 233, baseType: !478, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !492, file: !6, line: 234, baseType: !485, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !492, file: !6, line: 235, baseType: !478, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !492, file: !6, line: 236, baseType: !485, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !492, file: !6, line: 237, baseType: !507, size: 4096, offset: 512)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 4096, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 8)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !488, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !488, file: !6, line: 162, baseType: !512, size: 32, offset: 96)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !60, line: 27, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !162, line: 96, baseType: !113)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !488, file: !6, line: 163, baseType: !515, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !516, line: 276, baseType: !517)
!516 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !516, line: 276, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !517, file: !516, line: 276, baseType: !520, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !516, line: 70, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !516, line: 65, size: 32, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !521, file: !516, line: 66, baseType: !7, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !488, file: !6, line: 164, baseType: !485, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !488, file: !6, line: 165, baseType: !526, size: 128, offset: 256)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !474, line: 14, size: 128, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !526, file: !474, line: 15, baseType: !529, size: 128)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !228, line: 125, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !529, file: !228, line: 126, baseType: !244, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !529, file: !228, line: 127, baseType: !232, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !488, file: !6, line: 166, baseType: !534, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!478}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !488, file: !6, line: 167, baseType: !478, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !470, file: !6, line: 123, baseType: !539, size: 8, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !249, line: 17, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !251, line: 21, baseType: !541)
!541 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !470, file: !6, line: 124, baseType: !539, size: 8, offset: 456)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !470, file: !6, line: 125, baseType: !539, size: 8, offset: 464)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !470, file: !6, line: 126, baseType: !539, size: 8, offset: 472)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !454, file: !394, line: 572, baseType: !470, size: 512, offset: 1216)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !454, file: !394, line: 580, baseType: !547, size: 64, offset: 1728)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !393, file: !394, line: 721, baseType: !7, size: 32, offset: 3584)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !393, file: !394, line: 722, baseType: !113, size: 32, offset: 3616)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !393, file: !394, line: 723, baseType: !551, size: 64, offset: 3648)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !554, line: 17, baseType: !555)
!554 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !554, line: 17, size: 64, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !555, file: !554, line: 17, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 1)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !393, file: !394, line: 724, baseType: !553, size: 64, offset: 3712)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !393, file: !394, line: 749, baseType: !563, offset: 3776)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !394, line: 290, elements: !101)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !393, file: !394, line: 751, baseType: !74, size: 128, offset: 3776)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !393, file: !394, line: 757, baseType: !236, size: 64, offset: 3904)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !393, file: !394, line: 758, baseType: !236, size: 64, offset: 3968)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !393, file: !394, line: 761, baseType: !568, size: 320, offset: 4032)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !325, line: 34, size: 320, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !568, file: !325, line: 35, baseType: !248, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !568, file: !325, line: 36, baseType: !572, size: 256, offset: 64)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !329)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !393, file: !394, line: 766, baseType: !113, size: 32, offset: 4352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !393, file: !394, line: 767, baseType: !113, size: 32, offset: 4384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !393, file: !394, line: 768, baseType: !113, size: 32, offset: 4416)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !393, file: !394, line: 770, baseType: !113, size: 32, offset: 4448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !393, file: !394, line: 772, baseType: !61, size: 64, offset: 4480)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !393, file: !394, line: 775, baseType: !7, size: 32, offset: 4544)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !393, file: !394, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !393, file: !394, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !393, file: !394, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !393, file: !394, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !393, file: !394, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !393, file: !394, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !393, file: !394, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !393, file: !394, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !393, file: !394, line: 831, baseType: !61, size: 64, offset: 4672)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !393, file: !394, line: 833, baseType: !589, size: 384, offset: 4736)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !590)
!590 = !{!591, !596}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !589, file: !12, line: 26, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!164, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !12, line: 27, baseType: !597, size: 320, offset: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !589, file: !12, line: 27, size: 320, elements: !598)
!598 = !{!599, !609, !636}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !597, file: !12, line: 36, baseType: !600, size: 320)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !597, file: !12, line: 29, size: 320, elements: !601)
!601 = !{!602, !604, !605, !606, !607, !608}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !600, file: !12, line: 30, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !600, file: !12, line: 31, baseType: !402, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !12, line: 32, baseType: !402, size: 32, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !600, file: !12, line: 33, baseType: !402, size: 32, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !600, file: !12, line: 34, baseType: !248, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !600, file: !12, line: 35, baseType: !603, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !597, file: !12, line: 46, baseType: !610, size: 192)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !597, file: !12, line: 38, size: 192, elements: !611)
!611 = !{!612, !613, !614, !635}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !610, file: !12, line: 39, baseType: !512, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !12, line: 41, baseType: !615, size: 64, offset: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !12, line: 41, size: 64, elements: !616)
!616 = !{!617, !625}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !615, file: !12, line: 42, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !620, line: 7, size: 128, elements: !621)
!620 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!621 = !{!622, !624}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !619, file: !620, line: 8, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !162, line: 93, baseType: !212)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !619, file: !620, line: 9, baseType: !212, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !615, file: !12, line: 43, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !628, line: 7, size: 64, elements: !629)
!628 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!629 = !{!630, !634}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !627, file: !628, line: 8, baseType: !631, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !628, line: 5, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !249, line: 20, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !251, line: 26, baseType: !113)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !627, file: !628, line: 9, baseType: !632, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !610, file: !12, line: 45, baseType: !248, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !597, file: !12, line: 54, baseType: !637, size: 256)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !597, file: !12, line: 48, size: 256, elements: !638)
!638 = !{!639, !642, !643, !644, !645}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !637, file: !12, line: 49, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !637, file: !12, line: 50, baseType: !113, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !637, file: !12, line: 51, baseType: !113, size: 32, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !637, file: !12, line: 52, baseType: !61, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !637, file: !12, line: 53, baseType: !61, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !393, file: !394, line: 835, baseType: !647, size: 32, offset: 5120)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !60, line: 22, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !162, line: 28, baseType: !113)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !393, file: !394, line: 836, baseType: !647, size: 32, offset: 5152)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !393, file: !394, line: 840, baseType: !61, size: 64, offset: 5184)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !393, file: !394, line: 849, baseType: !392, size: 64, offset: 5248)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !393, file: !394, line: 852, baseType: !392, size: 64, offset: 5312)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !393, file: !394, line: 857, baseType: !74, size: 128, offset: 5376)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !393, file: !394, line: 858, baseType: !74, size: 128, offset: 5504)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !393, file: !394, line: 859, baseType: !392, size: 64, offset: 5632)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !393, file: !394, line: 867, baseType: !74, size: 128, offset: 5696)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !393, file: !394, line: 868, baseType: !74, size: 128, offset: 5824)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !393, file: !394, line: 871, baseType: !659, size: 64, offset: 5952)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !661, line: 59, size: 768, elements: !662)
!661 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!662 = !{!663, !664, !665, !666, !677, !678, !685, !694}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !660, file: !661, line: 61, baseType: !408, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !660, file: !661, line: 62, baseType: !7, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !660, file: !661, line: 63, baseType: !87, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !660, file: !661, line: 65, baseType: !667, size: 256, offset: 64)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 256, elements: !329)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !60, line: 182, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !668, file: !60, line: 183, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !60, line: 186, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !60, line: 187, baseType: !671, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !672, file: !60, line: 187, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !660, file: !661, line: 66, baseType: !668, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !660, file: !661, line: 68, baseType: !679, size: 128, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !680, line: 40, baseType: !681)
!680 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !680, line: 36, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !681, file: !680, line: 37, baseType: !87)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !681, file: !680, line: 38, baseType: !74, size: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !660, file: !661, line: 69, baseType: !686, size: 128, align: 64, offset: 512)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !60, line: 216, size: 128, align: 64, elements: !687)
!687 = !{!688, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !686, file: !60, line: 217, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !686, file: !60, line: 218, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !689}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !660, file: !661, line: 70, baseType: !695, size: 128, offset: 640)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 128, elements: !559)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !661, line: 54, size: 128, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !696, file: !661, line: 55, baseType: !113, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !696, file: !661, line: 56, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !661, line: 56, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !393, file: !394, line: 872, baseType: !703, size: 512, offset: 6016)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 512, elements: !329)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !393, file: !394, line: 873, baseType: !74, size: 128, offset: 6528)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !393, file: !394, line: 874, baseType: !74, size: 128, offset: 6656)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !393, file: !394, line: 876, baseType: !707, size: 64, offset: 6784)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !709, line: 26, size: 192, elements: !710)
!709 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !708, file: !709, line: 27, baseType: !7, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !708, file: !709, line: 28, baseType: !713, size: 128, offset: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !714, line: 43, size: 128, elements: !715)
!714 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !713, file: !714, line: 44, baseType: !295)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !713, file: !714, line: 45, baseType: !74, size: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !393, file: !394, line: 879, baseType: !719, size: 64, offset: 6848)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !393, file: !394, line: 882, baseType: !719, size: 64, offset: 6912)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !393, file: !394, line: 884, baseType: !248, size: 64, offset: 6976)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !393, file: !394, line: 885, baseType: !248, size: 64, offset: 7040)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !393, file: !394, line: 890, baseType: !248, size: 64, offset: 7104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !393, file: !394, line: 891, baseType: !725, size: 128, offset: 7168)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !394, line: 242, size: 128, elements: !726)
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !725, file: !394, line: 244, baseType: !248, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !725, file: !394, line: 245, baseType: !248, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !725, file: !394, line: 246, baseType: !295, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !393, file: !394, line: 900, baseType: !61, size: 64, offset: 7296)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !393, file: !394, line: 901, baseType: !61, size: 64, offset: 7360)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !393, file: !394, line: 904, baseType: !248, size: 64, offset: 7424)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !393, file: !394, line: 907, baseType: !248, size: 64, offset: 7488)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !393, file: !394, line: 910, baseType: !61, size: 64, offset: 7552)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !393, file: !394, line: 911, baseType: !61, size: 64, offset: 7616)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !393, file: !394, line: 914, baseType: !737, size: 640, offset: 7680)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !738, line: 123, size: 640, elements: !739)
!738 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !746, !747}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !737, file: !738, line: 124, baseType: !741, size: 576)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 576, elements: !130)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !738, line: 108, size: 192, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !742, file: !738, line: 109, baseType: !248, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !742, file: !738, line: 110, baseType: !526, size: 128, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !737, file: !738, line: 125, baseType: !7, size: 32, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !737, file: !738, line: 126, baseType: !7, size: 32, offset: 608)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !393, file: !394, line: 917, baseType: !749, size: 192, offset: 8320)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !738, line: 134, size: 192, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !749, file: !738, line: 135, baseType: !686, size: 128, align: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !749, file: !738, line: 136, baseType: !7, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !393, file: !394, line: 923, baseType: !754, size: 64, offset: 8512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !757, line: 11, flags: DIFlagFwdDecl)
!757 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!758 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !393, file: !394, line: 926, baseType: !754, size: 64, offset: 8576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !393, file: !394, line: 929, baseType: !754, size: 64, offset: 8640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !393, file: !394, line: 933, baseType: !761, size: 64, offset: 8704)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !394, line: 933, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !393, file: !394, line: 943, baseType: !764, size: 128, offset: 8768)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 128, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 16)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !393, file: !394, line: 945, baseType: !768, size: 64, offset: 8896)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !394, line: 49, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !393, file: !394, line: 956, baseType: !771, size: 64, offset: 8960)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !394, line: 45, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !393, file: !394, line: 959, baseType: !774, size: 64, offset: 9024)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !394, line: 959, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !393, file: !394, line: 962, baseType: !777, size: 64, offset: 9088)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !394, line: 66, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !393, file: !394, line: 966, baseType: !780, size: 64, offset: 9152)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !782, line: 35, flags: DIFlagFwdDecl)
!782 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!783 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !393, file: !394, line: 969, baseType: !784, size: 64, offset: 9216)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !738, line: 223, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !393, file: !394, line: 970, baseType: !787, size: 64, offset: 9280)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !394, line: 62, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !393, file: !394, line: 971, baseType: !790, size: 64, offset: 9344)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !791, line: 25, baseType: !792)
!791 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !791, line: 23, size: 64, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !792, file: !791, line: 24, baseType: !558, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !393, file: !394, line: 972, baseType: !790, size: 64, offset: 9408)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !393, file: !394, line: 974, baseType: !790, size: 64, offset: 9472)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !393, file: !394, line: 975, baseType: !798, size: 192, offset: 9536)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !799, line: 30, size: 192, elements: !800)
!799 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !798, file: !799, line: 31, baseType: !74, size: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !798, file: !799, line: 32, baseType: !790, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !393, file: !394, line: 976, baseType: !61, size: 64, offset: 9728)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !393, file: !394, line: 977, baseType: !176, size: 64, offset: 9792)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !393, file: !394, line: 978, baseType: !7, size: 32, offset: 9856)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !393, file: !394, line: 980, baseType: !689, size: 64, offset: 9920)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !393, file: !394, line: 989, baseType: !808, size: 128, offset: 9984)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !809, line: 35, size: 128, elements: !810)
!809 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !808, file: !809, line: 36, baseType: !113, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !808, file: !809, line: 37, baseType: !270, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !808, file: !809, line: 38, baseType: !814, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !809, line: 23, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !393, file: !394, line: 992, baseType: !248, size: 64, offset: 10112)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !393, file: !394, line: 993, baseType: !248, size: 64, offset: 10176)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !393, file: !394, line: 996, baseType: !87, offset: 10240)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !393, file: !394, line: 999, baseType: !295, offset: 10240)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !393, file: !394, line: 1001, baseType: !821, size: 64, offset: 10240)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !394, line: 636, size: 64, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !821, file: !394, line: 637, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !393, file: !394, line: 1005, baseType: !529, size: 128, offset: 10304)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !393, file: !394, line: 1007, baseType: !392, size: 64, offset: 10432)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !393, file: !394, line: 1009, baseType: !828, size: 64, offset: 10496)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !394, line: 1009, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !393, file: !394, line: 1043, baseType: !202, size: 64, offset: 10560)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !393, file: !394, line: 1046, baseType: !832, size: 64, offset: 10624)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !394, line: 41, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !393, file: !394, line: 1050, baseType: !835, size: 64, offset: 10688)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !394, line: 42, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !393, file: !394, line: 1054, baseType: !838, size: 64, offset: 10752)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !394, line: 55, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !393, file: !394, line: 1056, baseType: !841, size: 64, offset: 10816)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !394, line: 40, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !393, file: !394, line: 1058, baseType: !844, size: 64, offset: 10880)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !394, line: 47, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !393, file: !394, line: 1061, baseType: !847, size: 64, offset: 10944)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !394, line: 43, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !393, file: !394, line: 1064, baseType: !61, size: 64, offset: 11008)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !393, file: !394, line: 1065, baseType: !851, size: 64, offset: 11072)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !799, line: 14, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !799, line: 12, size: 384, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !799, line: 13, baseType: !856, size: 384)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !853, file: !799, line: 13, size: 384, elements: !857)
!857 = !{!858, !859, !860, !861}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !856, file: !799, line: 13, baseType: !113, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !856, file: !799, line: 13, baseType: !113, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !856, file: !799, line: 13, baseType: !113, size: 32, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !856, file: !799, line: 13, baseType: !862, size: 256, offset: 128)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !863, line: 32, size: 256, elements: !864)
!863 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!864 = !{!865, !871, !884, !890, !899, !919, !924}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !862, file: !863, line: 37, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !863, line: 34, size: 64, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !866, file: !863, line: 35, baseType: !648, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !866, file: !863, line: 36, baseType: !870, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !162, line: 49, baseType: !7)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !862, file: !863, line: 45, baseType: !872, size: 192)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !863, line: 40, size: 192, elements: !873)
!873 = !{!874, !876, !877, !883}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !872, file: !863, line: 41, baseType: !875, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !162, line: 95, baseType: !113)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !872, file: !863, line: 42, baseType: !113, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !872, file: !863, line: 43, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !863, line: 11, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !863, line: 8, size: 64, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !879, file: !863, line: 9, baseType: !113, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !879, file: !863, line: 10, baseType: !202, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !872, file: !863, line: 44, baseType: !113, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !862, file: !863, line: 52, baseType: !885, size: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !863, line: 48, size: 128, elements: !886)
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !885, file: !863, line: 49, baseType: !648, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !885, file: !863, line: 50, baseType: !870, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !885, file: !863, line: 51, baseType: !878, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !862, file: !863, line: 61, baseType: !891, size: 256)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !863, line: 55, size: 256, elements: !892)
!892 = !{!893, !894, !895, !896, !898}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !891, file: !863, line: 56, baseType: !648, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !891, file: !863, line: 57, baseType: !870, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !891, file: !863, line: 58, baseType: !113, size: 32, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !891, file: !863, line: 59, baseType: !897, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !162, line: 94, baseType: !163)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !891, file: !863, line: 60, baseType: !897, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !862, file: !863, line: 95, baseType: !900, size: 256)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !863, line: 64, size: 256, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !900, file: !863, line: 65, baseType: !202, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !863, line: 77, baseType: !904, size: 192, offset: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !863, line: 77, size: 192, elements: !905)
!905 = !{!906, !907, !914}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !904, file: !863, line: 82, baseType: !381, size: 16)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !904, file: !863, line: 88, baseType: !908, size: 192)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !904, file: !863, line: 84, size: 192, elements: !909)
!909 = !{!910, !912, !913}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !908, file: !863, line: 85, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, elements: !508)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !908, file: !863, line: 86, baseType: !202, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !908, file: !863, line: 87, baseType: !202, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !904, file: !863, line: 93, baseType: !915, size: 96)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !904, file: !863, line: 90, size: 96, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !915, file: !863, line: 91, baseType: !911, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !915, file: !863, line: 92, baseType: !403, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !862, file: !863, line: 101, baseType: !920, size: 128)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !863, line: 98, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !920, file: !863, line: 99, baseType: !164, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !920, file: !863, line: 100, baseType: !113, size: 32, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !862, file: !863, line: 108, baseType: !925, size: 128)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !863, line: 104, size: 128, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !925, file: !863, line: 105, baseType: !202, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !925, file: !863, line: 106, baseType: !113, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !925, file: !863, line: 107, baseType: !7, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !393, file: !394, line: 1067, baseType: !931, offset: 11136)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !932, line: 12, elements: !101)
!932 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!933 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !393, file: !394, line: 1099, baseType: !934, size: 64, offset: 11136)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !394, line: 56, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !393, file: !394, line: 1103, baseType: !74, size: 128, offset: 11200)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !393, file: !394, line: 1104, baseType: !938, size: 64, offset: 11328)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !394, line: 46, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !393, file: !394, line: 1105, baseType: !347, size: 192, offset: 11392)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !393, file: !394, line: 1106, baseType: !7, size: 32, offset: 11584)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !393, file: !394, line: 1109, baseType: !943, size: 128, offset: 11648)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 128, elements: !946)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !394, line: 51, flags: DIFlagFwdDecl)
!946 = !{!947}
!947 = !DISubrange(count: 2)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !393, file: !394, line: 1110, baseType: !347, size: 192, offset: 11776)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !393, file: !394, line: 1111, baseType: !74, size: 128, offset: 11968)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !393, file: !394, line: 1173, baseType: !951, size: 64, offset: 12096)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !953, line: 62, size: 256, align: 256, elements: !954)
!953 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!954 = !{!955, !956, !957, !962}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !952, file: !953, line: 75, baseType: !403, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !952, file: !953, line: 90, baseType: !403, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !952, file: !953, line: 124, baseType: !958, size: 64, offset: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !953, line: 109, size: 64, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !958, file: !953, line: 110, baseType: !250, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !958, file: !953, line: 112, baseType: !250, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !953, line: 144, baseType: !403, size: 32, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !393, file: !394, line: 1174, baseType: !402, size: 32, offset: 12160)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !393, file: !394, line: 1179, baseType: !61, size: 64, offset: 12224)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !393, file: !394, line: 1182, baseType: !966, size: 128, offset: 12288)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !325, line: 76, size: 128, elements: !967)
!967 = !{!968, !973, !976}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !966, file: !325, line: 85, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !970, line: 7, size: 64, elements: !971)
!970 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !969, file: !970, line: 12, baseType: !555, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !966, file: !325, line: 88, baseType: !974, size: 8, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !60, line: 30, baseType: !975)
!975 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !966, file: !325, line: 95, baseType: !974, size: 8, offset: 72)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 1184, baseType: !978, size: 128, offset: 12416)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 1184, size: 128, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !978, file: !394, line: 1185, baseType: !408, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !978, file: !394, line: 1186, baseType: !686, size: 128, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !393, file: !394, line: 1190, baseType: !983, size: 64, offset: 12544)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !394, line: 53, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !393, file: !394, line: 1192, baseType: !986, size: 128, offset: 12608)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !325, line: 64, size: 128, elements: !987)
!987 = !{!988, !1081, !1082}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !986, file: !325, line: 65, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !220, line: 68, size: 512, align: 128, elements: !991)
!991 = !{!992, !993, !1073, !1080}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !990, file: !220, line: 69, baseType: !61, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !220, line: 77, baseType: !994, size: 320, offset: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !220, line: 77, size: 320, elements: !995)
!995 = !{!996, !1005, !1010, !1038, !1046, !1052, !1065, !1072}
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !220, line: 78, baseType: !997, size: 320)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !220, line: 78, size: 320, elements: !998)
!998 = !{!999, !1000, !1003, !1004}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !997, file: !220, line: 84, baseType: !74, size: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !997, file: !220, line: 86, baseType: !1001, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !220, line: 26, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !997, file: !220, line: 87, baseType: !61, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !997, file: !220, line: 94, baseType: !61, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !220, line: 96, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !220, line: 96, size: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1006, file: !220, line: 101, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !60, line: 143, baseType: !248)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !220, line: 103, baseType: !1011, size: 320)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !220, line: 103, size: 320, elements: !1012)
!1012 = !{!1013, !1023, !1026, !1027}
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !220, line: 104, baseType: !1014, size: 128)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !220, line: 104, size: 128, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1014, file: !220, line: 105, baseType: !74, size: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !220, line: 106, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !220, line: 106, size: 128, elements: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1018, file: !220, line: 107, baseType: !989, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1018, file: !220, line: 109, baseType: !113, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1018, file: !220, line: 110, baseType: !113, size: 32, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1011, file: !220, line: 117, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !220, line: 117, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1011, file: !220, line: 119, baseType: !202, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !220, line: 120, baseType: !1028, size: 64, offset: 256)
!1028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !220, line: 120, size: 64, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1028, file: !220, line: 121, baseType: !202, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1028, file: !220, line: 122, baseType: !61, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !220, line: 123, baseType: !1033, size: 32)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1028, file: !220, line: 123, size: 32, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1033, file: !220, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1033, file: !220, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1033, file: !220, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !220, line: 130, baseType: !1039, size: 192)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !220, line: 130, size: 192, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1039, file: !220, line: 131, baseType: !61, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1039, file: !220, line: 134, baseType: !541, size: 8, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1039, file: !220, line: 135, baseType: !541, size: 8, offset: 72)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1039, file: !220, line: 136, baseType: !270, size: 32, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1039, file: !220, line: 137, baseType: !7, size: 32, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !220, line: 139, baseType: !1047, size: 256)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !220, line: 139, size: 256, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1047, file: !220, line: 140, baseType: !61, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1047, file: !220, line: 141, baseType: !270, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1047, file: !220, line: 143, baseType: !74, size: 128, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !220, line: 145, baseType: !1053, size: 256)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !220, line: 145, size: 256, elements: !1054)
!1054 = !{!1055, !1056, !1058, !1059, !1064}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1053, file: !220, line: 146, baseType: !61, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1053, file: !220, line: 147, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !209, line: 509, baseType: !989)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1053, file: !220, line: 148, baseType: !61, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !220, line: 149, baseType: !1060, size: 64, offset: 192)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !220, line: 149, size: 64, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1060, file: !220, line: 150, baseType: !236, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1060, file: !220, line: 151, baseType: !270, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1053, file: !220, line: 156, baseType: !87, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !220, line: 159, baseType: !1066, size: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !220, line: 159, size: 128, elements: !1067)
!1067 = !{!1068, !1071}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1066, file: !220, line: 161, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !220, line: 161, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1066, file: !220, line: 162, baseType: !202, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !994, file: !220, line: 176, baseType: !686, size: 128, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !220, line: 179, baseType: !1074, size: 32, offset: 384)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !220, line: 179, size: 32, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1074, file: !220, line: 184, baseType: !270, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1074, file: !220, line: 192, baseType: !7, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1074, file: !220, line: 194, baseType: !7, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1074, file: !220, line: 195, baseType: !113, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !990, file: !220, line: 199, baseType: !270, size: 32, offset: 416)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !986, file: !325, line: 67, baseType: !403, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !986, file: !325, line: 68, baseType: !403, size: 32, offset: 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !393, file: !394, line: 1206, baseType: !113, size: 32, offset: 12736)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !393, file: !394, line: 1207, baseType: !113, size: 32, offset: 12768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !393, file: !394, line: 1209, baseType: !61, size: 64, offset: 12800)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !393, file: !394, line: 1219, baseType: !248, size: 64, offset: 12864)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !393, file: !394, line: 1220, baseType: !248, size: 64, offset: 12928)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !393, file: !394, line: 1317, baseType: !113, size: 32, offset: 12992)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !393, file: !394, line: 1319, baseType: !392, size: 64, offset: 13056)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !393, file: !394, line: 1322, baseType: !1091, size: 64, offset: 13120)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1093, line: 56, size: 512, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1101, !1102, !1104}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1092, file: !1093, line: 57, baseType: !1091, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1092, file: !1093, line: 58, baseType: !202, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1092, file: !1093, line: 59, baseType: !61, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1092, file: !1093, line: 60, baseType: !61, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1092, file: !1093, line: 61, baseType: !1100, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1092, file: !1093, line: 62, baseType: !7, size: 32, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1092, file: !1093, line: 63, baseType: !1103, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !60, line: 153, baseType: !248)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1092, file: !1093, line: 64, baseType: !1105, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !393, file: !394, line: 1326, baseType: !408, size: 32, offset: 13184)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !393, file: !394, line: 1342, baseType: !202, size: 64, offset: 13248)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !393, file: !394, line: 1343, baseType: !250, size: 64, offset: 13312)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !393, file: !394, line: 1344, baseType: !248, size: 64, offset: 13376)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !393, file: !394, line: 1345, baseType: !250, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !393, file: !394, line: 1346, baseType: !250, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !393, file: !394, line: 1347, baseType: !250, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !393, file: !394, line: 1348, baseType: !686, size: 128, align: 64, offset: 13504)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !393, file: !394, line: 1358, baseType: !1116, size: 34816, offset: 13824)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1117, line: 485, size: 34816, elements: !1118)
!1117 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !{!1119, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1148, !1149, !1150, !1151, !1152, !1153, !1156, !1157, !1158}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1116, file: !1117, line: 487, baseType: !1120, size: 192)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1121, size: 192, elements: !130)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1122, line: 16, size: 64, elements: !1123)
!1122 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1121, file: !1122, line: 17, baseType: !376, size: 16)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1121, file: !1122, line: 18, baseType: !376, size: 16, offset: 16)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1121, file: !1122, line: 19, baseType: !376, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1121, file: !1122, line: 19, baseType: !376, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1121, file: !1122, line: 19, baseType: !376, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1121, file: !1122, line: 19, baseType: !376, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1121, file: !1122, line: 19, baseType: !376, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1121, file: !1122, line: 20, baseType: !376, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1121, file: !1122, line: 20, baseType: !376, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1121, file: !1122, line: 20, baseType: !376, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1121, file: !1122, line: 20, baseType: !376, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1121, file: !1122, line: 20, baseType: !376, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1121, file: !1122, line: 20, baseType: !376, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1116, file: !1117, line: 491, baseType: !61, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1116, file: !1117, line: 495, baseType: !171, size: 16, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1116, file: !1117, line: 496, baseType: !171, size: 16, offset: 272)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1116, file: !1117, line: 497, baseType: !171, size: 16, offset: 288)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1116, file: !1117, line: 498, baseType: !171, size: 16, offset: 304)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1116, file: !1117, line: 502, baseType: !61, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1116, file: !1117, line: 503, baseType: !61, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1116, file: !1117, line: 514, baseType: !1145, size: 256, offset: 448)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1146, size: 256, elements: !329)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1117, line: 483, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1116, file: !1117, line: 516, baseType: !61, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1116, file: !1117, line: 518, baseType: !61, size: 64, offset: 768)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1116, file: !1117, line: 520, baseType: !61, size: 64, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1116, file: !1117, line: 521, baseType: !61, size: 64, offset: 896)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1116, file: !1117, line: 522, baseType: !61, size: 64, offset: 960)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1116, file: !1117, line: 528, baseType: !1154, size: 64, offset: 1024)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1117, line: 10, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1116, file: !1117, line: 535, baseType: !61, size: 64, offset: 1088)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1116, file: !1117, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1116, file: !1117, line: 540, baseType: !1159, size: 33280, offset: 1536)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1160, line: 317, size: 33280, elements: !1161)
!1160 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1159, file: !1160, line: 330, baseType: !7, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1159, file: !1160, line: 337, baseType: !61, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1159, file: !1160, line: 348, baseType: !1165, size: 32768, offset: 512)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1160, line: 304, size: 32768, elements: !1166)
!1166 = !{!1167, !1182, !1221, !1271, !1288}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1165, file: !1160, line: 305, baseType: !1168, size: 896)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1160, line: 12, size: 896, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1181}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1168, file: !1160, line: 13, baseType: !402, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1168, file: !1160, line: 14, baseType: !402, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1168, file: !1160, line: 15, baseType: !402, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1168, file: !1160, line: 16, baseType: !402, size: 32, offset: 96)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1168, file: !1160, line: 17, baseType: !402, size: 32, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1168, file: !1160, line: 18, baseType: !402, size: 32, offset: 160)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1168, file: !1160, line: 19, baseType: !402, size: 32, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1168, file: !1160, line: 22, baseType: !1178, size: 640, offset: 224)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 640, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 20)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1168, file: !1160, line: 25, baseType: !402, size: 32, offset: 864)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1165, file: !1160, line: 306, baseType: !1183, size: 4096, align: 128)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1160, line: 34, size: 4096, align: 128, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1204, !1205, !1206, !1210, !1212, !1216}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1183, file: !1160, line: 35, baseType: !376, size: 16)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1183, file: !1160, line: 36, baseType: !376, size: 16, offset: 16)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1183, file: !1160, line: 37, baseType: !376, size: 16, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1183, file: !1160, line: 38, baseType: !376, size: 16, offset: 48)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1160, line: 39, baseType: !1190, size: 128, offset: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !1160, line: 39, size: 128, elements: !1191)
!1191 = !{!1192, !1197}
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1160, line: 40, baseType: !1193, size: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !1160, line: 40, size: 128, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1193, file: !1160, line: 41, baseType: !248, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1193, file: !1160, line: 42, baseType: !248, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1160, line: 44, baseType: !1198, size: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !1160, line: 44, size: 128, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1198, file: !1160, line: 45, baseType: !402, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1198, file: !1160, line: 46, baseType: !402, size: 32, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1198, file: !1160, line: 47, baseType: !402, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1198, file: !1160, line: 48, baseType: !402, size: 32, offset: 96)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1183, file: !1160, line: 51, baseType: !402, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1183, file: !1160, line: 52, baseType: !402, size: 32, offset: 224)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1183, file: !1160, line: 55, baseType: !1207, size: 1024, offset: 256)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 1024, elements: !1208)
!1208 = !{!1209}
!1209 = !DISubrange(count: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1183, file: !1160, line: 58, baseType: !1211, size: 2048, offset: 1280)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 2048, elements: !134)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1183, file: !1160, line: 60, baseType: !1213, size: 384, offset: 3328)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 384, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 12)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1160, line: 62, baseType: !1217, size: 384, offset: 3712)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !1160, line: 62, size: 384, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1217, file: !1160, line: 63, baseType: !1213, size: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1217, file: !1160, line: 64, baseType: !1213, size: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1165, file: !1160, line: 307, baseType: !1222, size: 1088)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1160, line: 79, size: 1088, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1270}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1222, file: !1160, line: 80, baseType: !402, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1222, file: !1160, line: 81, baseType: !402, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1222, file: !1160, line: 82, baseType: !402, size: 32, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1222, file: !1160, line: 83, baseType: !402, size: 32, offset: 96)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1222, file: !1160, line: 84, baseType: !402, size: 32, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1222, file: !1160, line: 85, baseType: !402, size: 32, offset: 160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1222, file: !1160, line: 86, baseType: !402, size: 32, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1222, file: !1160, line: 88, baseType: !1178, size: 640, offset: 224)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1222, file: !1160, line: 89, baseType: !539, size: 8, offset: 864)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1222, file: !1160, line: 90, baseType: !539, size: 8, offset: 872)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1222, file: !1160, line: 91, baseType: !539, size: 8, offset: 880)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1222, file: !1160, line: 92, baseType: !539, size: 8, offset: 888)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1222, file: !1160, line: 93, baseType: !539, size: 8, offset: 896)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1222, file: !1160, line: 94, baseType: !539, size: 8, offset: 904)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1222, file: !1160, line: 95, baseType: !1239, size: 64, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1241, line: 11, size: 128, elements: !1242)
!1241 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1240, file: !1241, line: 12, baseType: !164, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1240, file: !1241, line: 13, baseType: !1245, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1247, line: 56, size: 1344, elements: !1248)
!1247 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1246, file: !1247, line: 61, baseType: !61, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1246, file: !1247, line: 62, baseType: !61, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1246, file: !1247, line: 63, baseType: !61, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1246, file: !1247, line: 64, baseType: !61, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1246, file: !1247, line: 65, baseType: !61, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1246, file: !1247, line: 66, baseType: !61, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1246, file: !1247, line: 68, baseType: !61, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1246, file: !1247, line: 69, baseType: !61, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1246, file: !1247, line: 70, baseType: !61, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1246, file: !1247, line: 71, baseType: !61, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1246, file: !1247, line: 72, baseType: !61, size: 64, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1246, file: !1247, line: 73, baseType: !61, size: 64, offset: 704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1246, file: !1247, line: 74, baseType: !61, size: 64, offset: 768)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1246, file: !1247, line: 75, baseType: !61, size: 64, offset: 832)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1246, file: !1247, line: 76, baseType: !61, size: 64, offset: 896)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1246, file: !1247, line: 81, baseType: !61, size: 64, offset: 960)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1246, file: !1247, line: 83, baseType: !61, size: 64, offset: 1024)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1246, file: !1247, line: 84, baseType: !61, size: 64, offset: 1088)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1246, file: !1247, line: 85, baseType: !61, size: 64, offset: 1152)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1246, file: !1247, line: 86, baseType: !61, size: 64, offset: 1216)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1246, file: !1247, line: 87, baseType: !61, size: 64, offset: 1280)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1222, file: !1160, line: 96, baseType: !402, size: 32, offset: 1024)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1165, file: !1160, line: 308, baseType: !1272, size: 4608, align: 512)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1160, line: 289, size: 4608, align: 512, elements: !1273)
!1273 = !{!1274, !1275, !1284}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1272, file: !1160, line: 290, baseType: !1183, size: 4096, align: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1272, file: !1160, line: 291, baseType: !1276, size: 512, offset: 4096)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1160, line: 268, size: 512, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1276, file: !1160, line: 269, baseType: !248, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1276, file: !1160, line: 270, baseType: !248, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1276, file: !1160, line: 271, baseType: !1281, size: 384, offset: 128)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 384, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 6)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1272, file: !1160, line: 292, baseType: !1285, offset: 4608)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, elements: !1286)
!1286 = !{!1287}
!1287 = !DISubrange(count: 0)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1165, file: !1160, line: 309, baseType: !1289, size: 32768)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 32768, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 4096)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !220, line: 378, baseType: !1293, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !385, file: !220, line: 384, baseType: !708, size: 192, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !240, file: !220, line: 500, baseType: !87, offset: 6656)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !240, file: !220, line: 501, baseType: !1297, size: 64, offset: 6656)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !220, line: 387, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !240, file: !220, line: 516, baseType: !1300, size: 64, offset: 6720)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1302, line: 18, flags: DIFlagFwdDecl)
!1302 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !240, file: !220, line: 519, baseType: !207, size: 64, offset: 6784)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !240, file: !220, line: 521, baseType: !1305, size: 64, offset: 6848)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !220, line: 521, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !240, file: !220, line: 545, baseType: !270, size: 32, offset: 6912)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !240, file: !220, line: 548, baseType: !974, size: 8, offset: 6944)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !240, file: !220, line: 550, baseType: !1310, offset: 6952)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1311, line: 142, elements: !101)
!1311 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !240, file: !220, line: 554, baseType: !1313, size: 256, offset: 6976)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1314, line: 102, size: 256, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1313, file: !1314, line: 103, baseType: !278, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1313, file: !1314, line: 104, baseType: !74, size: 128, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1313, file: !1314, line: 105, baseType: !1319, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1314, line: 21, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !240, file: !220, line: 557, baseType: !402, size: 32, offset: 7232)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !237, file: !220, line: 565, baseType: !1326, offset: 7296)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: -1)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !219, file: !220, line: 333, baseType: !1330, size: 64, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !209, line: 284, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !209, line: 284, size: 64, elements: !1332)
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1331, file: !209, line: 284, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !268, line: 19, baseType: !61)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !219, file: !220, line: 334, baseType: !61, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !219, file: !220, line: 343, baseType: !1337, size: 256, offset: 704)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !219, file: !220, line: 340, size: 256, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1337, file: !220, line: 341, baseType: !227, size: 192, align: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1337, file: !220, line: 342, baseType: !61, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !219, file: !220, line: 351, baseType: !74, size: 128, offset: 960)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !219, file: !220, line: 353, baseType: !1343, size: 64, offset: 1088)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !220, line: 353, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !219, file: !220, line: 356, baseType: !1346, size: 64, offset: 1152)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1348)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !220, line: 356, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !219, file: !220, line: 359, baseType: !61, size: 64, offset: 1216)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !219, file: !220, line: 361, baseType: !207, size: 64, offset: 1280)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !219, file: !220, line: 362, baseType: !202, size: 64, offset: 1344)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !219, file: !220, line: 365, baseType: !278, size: 64, offset: 1408)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !219, file: !220, line: 373, baseType: !1354, offset: 1472)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !220, line: 296, elements: !101)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !185, file: !154, line: 90, baseType: !180, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !185, file: !154, line: 91, baseType: !1357, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !144, file: !67, line: 143, baseType: !1359, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1362, !80}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1365)
!1365 = !{!1366, !1367, !1371, !1375, !1381, !1385}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1364, file: !18, line: 40, baseType: !17, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1364, file: !18, line: 41, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!974}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1364, file: !18, line: 42, baseType: !1372, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!202}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1364, file: !18, line: 43, baseType: !1376, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1105, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1364, file: !18, line: 44, baseType: !1382, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1105}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1364, file: !18, line: 45, baseType: !1386, size: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !202}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !144, file: !67, line: 144, baseType: !1390, size: 64, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1105, !80}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !144, file: !67, line: 145, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !80, !1397, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1302, line: 23, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1302, line: 21, size: 32, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1399, file: !1302, line: 22, baseType: !1402, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !60, line: 32, baseType: !870)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1302, line: 28, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1302, line: 26, size: 32, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1405, file: !1302, line: 27, baseType: !1408, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !60, line: 33, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !162, line: 50, baseType: !7)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !66, file: !67, line: 70, baseType: !1411, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1413, line: 123, size: 1024, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1556, !1557, !1558, !1559, !1560}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1412, file: !1413, line: 124, baseType: !270, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1412, file: !1413, line: 125, baseType: !270, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1412, file: !1413, line: 135, baseType: !1411, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1412, file: !1413, line: 136, baseType: !70, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1412, file: !1413, line: 138, baseType: !227, size: 192, align: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1412, file: !1413, line: 140, baseType: !1105, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1412, file: !1413, line: 141, baseType: !7, size: 32, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1413, line: 142, baseType: !1423, size: 256, offset: 512)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1413, line: 142, size: 256, elements: !1424)
!1424 = !{!1425, !1479, !1483}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1423, file: !1413, line: 143, baseType: !1426, size: 192)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1413, line: 91, size: 192, elements: !1427)
!1427 = !{!1428, !1429, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1426, file: !1413, line: 92, baseType: !61, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1426, file: !1413, line: 94, baseType: !244, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1426, file: !1413, line: 100, baseType: !1431, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1413, line: 180, size: 704, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1449, !1450, !1451, !1477, !1478}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1432, file: !1413, line: 182, baseType: !1411, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1432, file: !1413, line: 183, baseType: !7, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1432, file: !1413, line: 186, baseType: !1437, size: 192, offset: 128)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1438, line: 19, size: 192, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1439 = !{!1440, !1447, !1448}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1437, file: !1438, line: 20, baseType: !1441, size: 128)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1442, line: 292, size: 128, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1445, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1441, file: !1442, line: 293, baseType: !87)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1441, file: !1442, line: 295, baseType: !59, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1441, file: !1442, line: 296, baseType: !202, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1437, file: !1438, line: 21, baseType: !7, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1437, file: !1438, line: 22, baseType: !7, size: 32, offset: 160)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1432, file: !1413, line: 187, baseType: !402, size: 32, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1432, file: !1413, line: 188, baseType: !402, size: 32, offset: 352)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1432, file: !1413, line: 189, baseType: !1452, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1413, line: 168, size: 320, elements: !1454)
!1454 = !{!1455, !1461, !1465, !1469, !1473}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1453, file: !1413, line: 169, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!113, !1459, !1431}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !209, line: 539, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1453, file: !1413, line: 171, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!113, !1411, !70, !170}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1453, file: !1413, line: 173, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!113, !1411}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1453, file: !1413, line: 174, baseType: !1470, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!113, !1411, !1411, !70}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1453, file: !1413, line: 176, baseType: !1474, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!113, !1459, !1411, !1431}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1432, file: !1413, line: 192, baseType: !74, size: 128, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1432, file: !1413, line: 194, baseType: !679, size: 128, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1423, file: !1413, line: 144, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1413, line: 103, size: 64, elements: !1481)
!1481 = !{!1482}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1480, file: !1413, line: 104, baseType: !1411, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1423, file: !1413, line: 145, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1413, line: 107, size: 256, elements: !1485)
!1485 = !{!1486, !1551, !1554, !1555}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1484, file: !1413, line: 108, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1413, line: 217, size: 768, elements: !1490)
!1490 = !{!1491, !1511, !1515, !1519, !1524, !1528, !1532, !1536, !1537, !1538, !1539, !1547}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1489, file: !1413, line: 222, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!113, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1413, line: 197, size: 1088, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1496, file: !1413, line: 199, baseType: !1411, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1496, file: !1413, line: 200, baseType: !207, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1496, file: !1413, line: 201, baseType: !1459, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1496, file: !1413, line: 202, baseType: !202, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1496, file: !1413, line: 205, baseType: !347, size: 192, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1496, file: !1413, line: 206, baseType: !347, size: 192, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1496, file: !1413, line: 207, baseType: !113, size: 32, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1496, file: !1413, line: 208, baseType: !74, size: 128, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1496, file: !1413, line: 209, baseType: !129, size: 64, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1496, file: !1413, line: 211, baseType: !176, size: 64, offset: 896)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1496, file: !1413, line: 212, baseType: !974, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1496, file: !1413, line: 213, baseType: !974, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1496, file: !1413, line: 214, baseType: !1346, size: 64, offset: 1024)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1489, file: !1413, line: 223, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !1495}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1489, file: !1413, line: 236, baseType: !1516, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!113, !1459, !202}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1489, file: !1413, line: 238, baseType: !1520, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!202, !1459, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1489, file: !1413, line: 239, baseType: !1525, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!202, !1459, !202, !1523}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1489, file: !1413, line: 240, baseType: !1529, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !1459, !202}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1489, file: !1413, line: 242, baseType: !1533, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!160, !1495, !129, !176, !210}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1489, file: !1413, line: 252, baseType: !176, size: 64, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1489, file: !1413, line: 259, baseType: !974, size: 8, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1489, file: !1413, line: 260, baseType: !1533, size: 64, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1489, file: !1413, line: 263, baseType: !1540, size: 64, offset: 640)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!1543, !1495, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1544, line: 52, baseType: !7)
!1544 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1413, line: 27, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1489, file: !1413, line: 266, baseType: !1548, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!113, !1495, !218}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1484, file: !1413, line: 109, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1413, line: 31, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1484, file: !1413, line: 110, baseType: !210, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1484, file: !1413, line: 111, baseType: !1411, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1412, file: !1413, line: 148, baseType: !202, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1412, file: !1413, line: 154, baseType: !248, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1412, file: !1413, line: 156, baseType: !171, size: 16, offset: 896)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1412, file: !1413, line: 157, baseType: !170, size: 16, offset: 912)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1412, file: !1413, line: 158, baseType: !1561, size: 64, offset: 960)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1413, line: 32, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !66, file: !67, line: 71, baseType: !1564, size: 32, offset: 448)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1565, line: 19, size: 32, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1564, file: !1565, line: 20, baseType: !408, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !66, file: !67, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !66, file: !67, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !66, file: !67, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !66, file: !67, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !66, file: !67, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !63, file: !30, line: 463, baseType: !62, size: 64, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !63, file: !30, line: 465, baseType: !1575, size: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !63, file: !30, line: 467, baseType: !70, size: 64, offset: 640)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !30, line: 468, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1589, !1594, !1598}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1581, file: !30, line: 88, baseType: !70, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1581, file: !30, line: 89, baseType: !182, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1581, file: !30, line: 90, baseType: !1586, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!113, !62, !124}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1581, file: !30, line: 91, baseType: !1590, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!129, !62, !1593, !1397, !1403}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1581, file: !30, line: 93, baseType: !1595, size: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !62}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1581, file: !30, line: 95, baseType: !1599, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1602)
!1602 = !{!1603, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1601, file: !37, line: 279, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!113, !62}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1601, file: !37, line: 280, baseType: !1595, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1601, file: !37, line: 281, baseType: !1604, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1601, file: !37, line: 282, baseType: !1604, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1601, file: !37, line: 283, baseType: !1604, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1601, file: !37, line: 284, baseType: !1604, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1601, file: !37, line: 285, baseType: !1604, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1601, file: !37, line: 286, baseType: !1604, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1601, file: !37, line: 287, baseType: !1604, size: 64, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1601, file: !37, line: 288, baseType: !1604, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1601, file: !37, line: 289, baseType: !1604, size: 64, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1601, file: !37, line: 290, baseType: !1604, size: 64, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1601, file: !37, line: 291, baseType: !1604, size: 64, offset: 768)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1601, file: !37, line: 292, baseType: !1604, size: 64, offset: 832)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1601, file: !37, line: 293, baseType: !1604, size: 64, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1601, file: !37, line: 294, baseType: !1604, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1601, file: !37, line: 295, baseType: !1604, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1601, file: !37, line: 296, baseType: !1604, size: 64, offset: 1088)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1601, file: !37, line: 297, baseType: !1604, size: 64, offset: 1152)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1601, file: !37, line: 298, baseType: !1604, size: 64, offset: 1216)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1601, file: !37, line: 299, baseType: !1604, size: 64, offset: 1280)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1601, file: !37, line: 300, baseType: !1604, size: 64, offset: 1344)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1601, file: !37, line: 301, baseType: !1604, size: 64, offset: 1408)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !63, file: !30, line: 470, baseType: !1630, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1632, line: 82, size: 1408, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1716, !1719, !1722}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1631, file: !1632, line: 83, baseType: !70, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1631, file: !1632, line: 84, baseType: !70, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1631, file: !1632, line: 85, baseType: !62, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1631, file: !1632, line: 86, baseType: !182, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1631, file: !1632, line: 87, baseType: !182, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1631, file: !1632, line: 88, baseType: !182, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1631, file: !1632, line: 90, baseType: !1641, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!113, !62, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1667, !1680, !1681, !1682, !1683, !1684, !1692, !1693, !1694, !1695, !1696, !1697}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1645, file: !24, line: 96, baseType: !70, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1645, file: !24, line: 97, baseType: !1630, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1645, file: !24, line: 99, baseType: !56, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1645, file: !24, line: 100, baseType: !70, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1645, file: !24, line: 102, baseType: !974, size: 8, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1645, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1645, file: !24, line: 105, baseType: !1654, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1657, line: 262, size: 1600, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1661, !1662, !1666}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1656, file: !1657, line: 263, baseType: !1660, size: 256)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !1208)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1656, file: !1657, line: 264, baseType: !1660, size: 256, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1656, file: !1657, line: 265, baseType: !1663, size: 1024, offset: 512)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1024, elements: !1664)
!1664 = !{!1665}
!1665 = !DISubrange(count: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1656, file: !1657, line: 266, baseType: !1105, size: 64, offset: 1536)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1645, file: !24, line: 106, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1657, line: 210, size: 256, elements: !1671)
!1671 = !{!1672, !1676, !1678, !1679}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1670, file: !1657, line: 211, baseType: !1673, size: 72)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 72, elements: !1674)
!1674 = !{!1675}
!1675 = !DISubrange(count: 9)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1670, file: !1657, line: 212, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1657, line: 14, baseType: !61)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1670, file: !1657, line: 213, baseType: !403, size: 32, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1670, file: !1657, line: 214, baseType: !403, size: 32, offset: 224)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1645, file: !24, line: 108, baseType: !1604, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1645, file: !24, line: 109, baseType: !1595, size: 64, offset: 512)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1645, file: !24, line: 110, baseType: !1604, size: 64, offset: 576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1645, file: !24, line: 111, baseType: !1595, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1645, file: !24, line: 112, baseType: !1685, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!113, !62, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1689, file: !37, line: 51, baseType: !113, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1645, file: !24, line: 113, baseType: !1604, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1645, file: !24, line: 114, baseType: !182, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1645, file: !24, line: 115, baseType: !182, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1645, file: !24, line: 117, baseType: !1599, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1645, file: !24, line: 118, baseType: !1595, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1645, file: !24, line: 120, baseType: !1698, size: 64, offset: 1088)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1631, file: !1632, line: 91, baseType: !1586, size: 64, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1631, file: !1632, line: 92, baseType: !1604, size: 64, offset: 512)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1631, file: !1632, line: 93, baseType: !1595, size: 64, offset: 576)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1631, file: !1632, line: 94, baseType: !1604, size: 64, offset: 640)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1631, file: !1632, line: 95, baseType: !1595, size: 64, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1631, file: !1632, line: 97, baseType: !1604, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1631, file: !1632, line: 98, baseType: !1604, size: 64, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1631, file: !1632, line: 100, baseType: !1685, size: 64, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1631, file: !1632, line: 101, baseType: !1604, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1631, file: !1632, line: 103, baseType: !1604, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1631, file: !1632, line: 105, baseType: !1604, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1631, file: !1632, line: 107, baseType: !1599, size: 64, offset: 1152)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1631, file: !1632, line: 109, baseType: !1713, size: 64, offset: 1216)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1632, line: 109, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1631, file: !1632, line: 111, baseType: !1717, size: 64, offset: 1280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1632, line: 111, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1631, file: !1632, line: 112, baseType: !1720, offset: 1344)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1721, line: 187, elements: !101)
!1721 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1631, file: !1632, line: 114, baseType: !974, size: 8, offset: 1344)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !63, file: !30, line: 471, baseType: !1644, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !63, file: !30, line: 473, baseType: !202, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !63, file: !30, line: 475, baseType: !202, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !63, file: !30, line: 480, baseType: !347, size: 192, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !63, file: !30, line: 484, baseType: !1728, size: 576, offset: 1216)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1728, file: !30, line: 362, baseType: !74, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1728, file: !30, line: 363, baseType: !74, size: 128, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1728, file: !30, line: 364, baseType: !74, size: 128, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1728, file: !30, line: 365, baseType: !74, size: 128, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1728, file: !30, line: 366, baseType: !974, size: 8, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1728, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !63, file: !30, line: 485, baseType: !1737, size: 2304, offset: 1792)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1834, !1838}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1737, file: !37, line: 566, baseType: !1688, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1737, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1737, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1737, file: !37, line: 569, baseType: !974, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1737, file: !37, line: 570, baseType: !974, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1737, file: !37, line: 571, baseType: !974, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1737, file: !37, line: 572, baseType: !974, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1737, file: !37, line: 573, baseType: !974, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1737, file: !37, line: 574, baseType: !974, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1737, file: !37, line: 575, baseType: !974, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1737, file: !37, line: 576, baseType: !974, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1737, file: !37, line: 577, baseType: !402, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1737, file: !37, line: 578, baseType: !87, offset: 96)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1737, file: !37, line: 580, baseType: !74, size: 128, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1737, file: !37, line: 581, baseType: !708, size: 192, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1737, file: !37, line: 582, baseType: !1755, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1757, line: 43, size: 1472, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1766, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1756, file: !1757, line: 44, baseType: !70, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1756, file: !1757, line: 45, baseType: !113, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1756, file: !1757, line: 46, baseType: !74, size: 128, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1756, file: !1757, line: 47, baseType: !87, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1756, file: !1757, line: 48, baseType: !1764, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1756, file: !1757, line: 49, baseType: !1767, size: 320, offset: 320)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1768, line: 11, size: 320, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770, !1771, !1772, !1777}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1767, file: !1768, line: 16, baseType: !672, size: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1767, file: !1768, line: 17, baseType: !61, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1767, file: !1768, line: 18, baseType: !1773, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !1768, line: 19, baseType: !402, size: 32, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1756, file: !1757, line: 50, baseType: !61, size: 64, offset: 640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1756, file: !1757, line: 51, baseType: !478, size: 64, offset: 704)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1756, file: !1757, line: 52, baseType: !478, size: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1756, file: !1757, line: 53, baseType: !478, size: 64, offset: 832)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1756, file: !1757, line: 54, baseType: !478, size: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1756, file: !1757, line: 55, baseType: !478, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1756, file: !1757, line: 56, baseType: !61, size: 64, offset: 1024)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1756, file: !1757, line: 57, baseType: !61, size: 64, offset: 1088)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1756, file: !1757, line: 58, baseType: !61, size: 64, offset: 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1756, file: !1757, line: 59, baseType: !61, size: 64, offset: 1216)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1756, file: !1757, line: 60, baseType: !61, size: 64, offset: 1280)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1756, file: !1757, line: 61, baseType: !62, size: 64, offset: 1344)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1756, file: !1757, line: 62, baseType: !974, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1756, file: !1757, line: 63, baseType: !974, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1737, file: !37, line: 583, baseType: !974, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1737, file: !37, line: 584, baseType: !974, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1737, file: !37, line: 585, baseType: !974, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1737, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1737, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1737, file: !37, line: 592, baseType: !470, size: 512, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1737, file: !37, line: 593, baseType: !248, size: 64, offset: 1088)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1737, file: !37, line: 594, baseType: !1313, size: 256, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1737, file: !37, line: 595, baseType: !679, size: 128, offset: 1408)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1737, file: !37, line: 596, baseType: !1764, size: 64, offset: 1536)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1737, file: !37, line: 597, baseType: !270, size: 32, offset: 1600)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1737, file: !37, line: 598, baseType: !270, size: 32, offset: 1632)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1737, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1737, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1737, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1737, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1737, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1737, file: !37, line: 604, baseType: !974, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1737, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1737, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1737, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1737, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1737, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1737, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1737, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1737, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1737, file: !37, line: 613, baseType: !113, size: 32, offset: 1792)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1737, file: !37, line: 614, baseType: !113, size: 32, offset: 1824)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1737, file: !37, line: 615, baseType: !248, size: 64, offset: 1856)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1737, file: !37, line: 616, baseType: !248, size: 64, offset: 1920)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1737, file: !37, line: 617, baseType: !248, size: 64, offset: 1984)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1737, file: !37, line: 618, baseType: !248, size: 64, offset: 2048)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1737, file: !37, line: 620, baseType: !1825, size: 64, offset: 2112)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1826, file: !37, line: 537, baseType: !87)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1826, file: !37, line: 538, baseType: !7, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1826, file: !37, line: 540, baseType: !74, size: 128, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1826, file: !37, line: 543, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1737, file: !37, line: 621, baseType: !1835, size: 64, offset: 2176)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !62, !632}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1737, file: !37, line: 622, baseType: !1839, size: 64, offset: 2240)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !63, file: !30, line: 486, baseType: !1842, size: 64, offset: 4096)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1851, !1852, !1853}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1843, file: !37, line: 643, baseType: !1601, size: 1472)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1843, file: !37, line: 644, baseType: !1604, size: 64, offset: 1472)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1843, file: !37, line: 645, baseType: !1848, size: 64, offset: 1536)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !62, !974}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1843, file: !37, line: 646, baseType: !1604, size: 64, offset: 1600)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1843, file: !37, line: 647, baseType: !1595, size: 64, offset: 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1843, file: !37, line: 648, baseType: !1595, size: 64, offset: 1728)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !63, file: !30, line: 493, baseType: !1855, size: 64, offset: 4160)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !63, file: !30, line: 499, baseType: !74, size: 128, offset: 4224)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !63, file: !30, line: 502, baseType: !1859, size: 64, offset: 4352)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !63, file: !30, line: 504, baseType: !1863, size: 64, offset: 4416)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !63, file: !30, line: 505, baseType: !248, size: 64, offset: 4480)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !63, file: !30, line: 510, baseType: !248, size: 64, offset: 4544)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !63, file: !30, line: 511, baseType: !1867, size: 64, offset: 4608)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1869)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !63, file: !30, line: 513, baseType: !1871, size: 64, offset: 4672)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1872, file: !30, line: 293, baseType: !7, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1872, file: !30, line: 294, baseType: !61, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !63, file: !30, line: 515, baseType: !74, size: 128, offset: 4736)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !63, file: !30, line: 526, baseType: !1878, offset: 4864)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1879, line: 5, elements: !101)
!1879 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !63, file: !30, line: 528, baseType: !1881, size: 64, offset: 4864)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1883, line: 51, size: 1344, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1886, !1888, !1889, !1979, !1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1882, file: !1883, line: 52, baseType: !70, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1882, file: !1883, line: 53, baseType: !1887, size: 32, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1883, line: 28, baseType: !402)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1882, file: !1883, line: 54, baseType: !70, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1882, file: !1883, line: 55, baseType: !1890, size: 192, offset: 192)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1891, line: 17, size: 192, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !{!1893, !1895, !1978}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1890, file: !1891, line: 18, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1890, file: !1891, line: 19, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1898)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1891, line: 110, size: 1152, elements: !1899)
!1899 = !{!1900, !1904, !1908, !1914, !1920, !1924, !1928, !1933, !1937, !1938, !1942, !1946, !1950, !1961, !1962, !1963, !1964, !1974}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1898, file: !1891, line: 111, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1894, !1894}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1898, file: !1891, line: 112, baseType: !1905, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1894}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1898, file: !1891, line: 113, baseType: !1909, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!974, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1898, file: !1891, line: 114, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1105, !1912, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1898, file: !1891, line: 116, baseType: !1921, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!974, !1912, !70}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1898, file: !1891, line: 118, baseType: !1925, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!113, !1912, !70, !7, !202, !176}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1898, file: !1891, line: 123, baseType: !1929, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!113, !1912, !70, !1932, !176}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1898, file: !1891, line: 126, baseType: !1934, size: 64, offset: 448)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!70, !1912}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1898, file: !1891, line: 127, baseType: !1934, size: 64, offset: 512)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1898, file: !1891, line: 128, baseType: !1939, size: 64, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1894, !1912}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1898, file: !1891, line: 130, baseType: !1943, size: 64, offset: 640)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!1894, !1912, !1894}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1898, file: !1891, line: 133, baseType: !1947, size: 64, offset: 704)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1894, !1912, !70}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1898, file: !1891, line: 135, baseType: !1951, size: 64, offset: 768)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!113, !1912, !70, !70, !7, !7, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1891, line: 43, size: 640, elements: !1956)
!1956 = !{!1957, !1958, !1959}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1955, file: !1891, line: 44, baseType: !1894, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1955, file: !1891, line: 45, baseType: !7, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1955, file: !1891, line: 46, baseType: !1960, size: 512, offset: 128)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 512, elements: !508)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1898, file: !1891, line: 140, baseType: !1943, size: 64, offset: 832)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1898, file: !1891, line: 143, baseType: !1939, size: 64, offset: 896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1898, file: !1891, line: 145, baseType: !1901, size: 64, offset: 960)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1898, file: !1891, line: 146, baseType: !1965, size: 64, offset: 1024)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!113, !1912, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1891, line: 29, size: 128, elements: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1969, file: !1891, line: 30, baseType: !7, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1969, file: !1891, line: 31, baseType: !7, size: 32, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1969, file: !1891, line: 32, baseType: !1912, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1898, file: !1891, line: 148, baseType: !1975, size: 64, offset: 1088)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!113, !1912, !62}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1890, file: !1891, line: 20, baseType: !62, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1882, file: !1883, line: 57, baseType: !1980, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1883, line: 31, size: 704, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1987}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1981, file: !1883, line: 32, baseType: !129, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1981, file: !1883, line: 33, baseType: !113, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1981, file: !1883, line: 34, baseType: !202, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1981, file: !1883, line: 35, baseType: !1980, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1981, file: !1883, line: 43, baseType: !197, size: 448, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1882, file: !1883, line: 58, baseType: !1980, size: 64, offset: 448)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1882, file: !1883, line: 59, baseType: !1881, size: 64, offset: 512)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1882, file: !1883, line: 60, baseType: !1881, size: 64, offset: 576)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1882, file: !1883, line: 61, baseType: !1881, size: 64, offset: 640)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1882, file: !1883, line: 63, baseType: !66, size: 512, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1882, file: !1883, line: 65, baseType: !61, size: 64, offset: 1216)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1882, file: !1883, line: 66, baseType: !202, size: 64, offset: 1280)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !63, file: !30, line: 529, baseType: !1894, size: 64, offset: 4928)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !63, file: !30, line: 534, baseType: !1997, size: 32, offset: 4992)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !60, line: 16, baseType: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !60, line: 13, baseType: !402)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !63, file: !30, line: 535, baseType: !402, size: 32, offset: 5024)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !63, file: !30, line: 537, baseType: !87, offset: 5056)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !63, file: !30, line: 538, baseType: !74, size: 128, offset: 5056)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !63, file: !30, line: 540, baseType: !2003, size: 64, offset: 5184)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2005, line: 54, size: 960, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2017, !2021, !2022, !2023, !2024, !2028, !2032, !2033}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !2005, line: 55, baseType: !70, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2004, file: !2005, line: 56, baseType: !56, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2004, file: !2005, line: 58, baseType: !182, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2004, file: !2005, line: 59, baseType: !182, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2004, file: !2005, line: 60, baseType: !80, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2004, file: !2005, line: 62, baseType: !1586, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2004, file: !2005, line: 63, baseType: !2014, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!129, !62, !1593}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2004, file: !2005, line: 65, baseType: !2018, size: 64, offset: 448)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !2003}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2004, file: !2005, line: 66, baseType: !1595, size: 64, offset: 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2004, file: !2005, line: 68, baseType: !1604, size: 64, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2004, file: !2005, line: 70, baseType: !1362, size: 64, offset: 640)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2004, file: !2005, line: 71, baseType: !2025, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!1105, !62}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2004, file: !2005, line: 73, baseType: !2029, size: 64, offset: 768)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !62, !1397, !1403}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2004, file: !2005, line: 75, baseType: !1599, size: 64, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2004, file: !2005, line: 77, baseType: !1717, size: 64, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !63, file: !30, line: 541, baseType: !182, size: 64, offset: 5248)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !63, file: !30, line: 543, baseType: !1595, size: 64, offset: 5312)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !63, file: !30, line: 544, baseType: !2037, size: 64, offset: 5376)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !63, file: !30, line: 545, baseType: !2040, size: 64, offset: 5440)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !63, file: !30, line: 547, baseType: !974, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !63, file: !30, line: 548, baseType: !974, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !63, file: !30, line: 549, baseType: !974, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !63, file: !30, line: 550, baseType: !974, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !60, line: 107, baseType: !248)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !402)
!2054 = !{!0, !2055, !2062, !2067, !2072, !2077, !2082, !2142}
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(name: "__exitcall_ks_sa_rng_driver_exit", scope: !2, file: !3, line: 282, type: !2057, isLocal: true, isDefinition: true)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2058, line: 117, baseType: !2059)
!2058 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null}
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description161", scope: !2, file: !3, line: 284, type: !2064, isLocal: true, isDefinition: true, align: 8)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 600, elements: !2065)
!2065 = !{!2066}
!2066 = !DISubrange(count: 75)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author162", scope: !2, file: !3, line: 285, type: !2069, isLocal: true, isDefinition: true, align: 8)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 408, elements: !2070)
!2070 = !{!2071}
!2071 = !DISubrange(count: 51)
!2072 = !DIGlobalVariableExpression(var: !2073, expr: !DIExpression())
!2073 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file163", scope: !2, file: !3, line: 286, type: !2074, isLocal: true, isDefinition: true, align: 8)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 384, elements: !2075)
!2075 = !{!2076}
!2076 = !DISubrange(count: 48)
!2077 = !DIGlobalVariableExpression(var: !2078, expr: !DIExpression())
!2078 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license164", scope: !2, file: !3, line: 286, type: !2079, isLocal: true, isDefinition: true, align: 8)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 176, elements: !2080)
!2080 = !{!2081}
!2081 = !DISubrange(count: 22)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(name: "ks_sa_rng_driver", scope: !2, file: !3, line: 273, type: !2084, isLocal: true, isDefinition: true)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2085, line: 200, size: 1600, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087, !2129, !2130, !2134, !2138, !2139, !2140, !2141}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2084, file: !2085, line: 201, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!113, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2085, line: 22, size: 6208, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2115, !2123, !2124, !2127}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2092, file: !2085, line: 23, baseType: !70, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2092, file: !2085, line: 24, baseType: !113, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2092, file: !2085, line: 25, baseType: !974, size: 8, offset: 96)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2092, file: !2085, line: 26, baseType: !63, size: 5568, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2092, file: !2085, line: 27, baseType: !248, size: 64, offset: 5696)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2092, file: !2085, line: 28, baseType: !1872, size: 128, offset: 5760)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2092, file: !2085, line: 29, baseType: !402, size: 32, offset: 5888)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2092, file: !2085, line: 30, baseType: !2102, size: 64, offset: 5952)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2104, line: 20, size: 512, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2105 = !{!2106, !2108, !2109, !2110, !2111, !2112, !2113, !2114}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2103, file: !2104, line: 21, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !60, line: 158, baseType: !1103)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2103, file: !2104, line: 22, baseType: !2107, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2103, file: !2104, line: 23, baseType: !70, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2104, line: 24, baseType: !61, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2103, file: !2104, line: 25, baseType: !61, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2103, file: !2104, line: 26, baseType: !2102, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2103, file: !2104, line: 26, baseType: !2102, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2103, file: !2104, line: 26, baseType: !2102, size: 64, offset: 448)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2092, file: !2085, line: 32, baseType: !2116, size: 64, offset: 6016)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2118)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1657, line: 586, size: 256, elements: !2119)
!2119 = !{!2120, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2118, file: !1657, line: 587, baseType: !2121, size: 160)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, elements: !1179)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2118, file: !1657, line: 588, baseType: !1677, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2092, file: !2085, line: 33, baseType: !129, size: 64, offset: 6080)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2092, file: !2085, line: 36, baseType: !2125, size: 64, offset: 6144)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2085, line: 18, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2092, file: !2085, line: 39, baseType: !2128, offset: 6208)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1879, line: 8, elements: !101)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2084, file: !2085, line: 202, baseType: !2088, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2084, file: !2085, line: 203, baseType: !2131, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !2091}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2084, file: !2085, line: 204, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!113, !2091, !1688}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2084, file: !2085, line: 205, baseType: !2088, size: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2084, file: !2085, line: 206, baseType: !1645, size: 1152, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2084, file: !2085, line: 207, baseType: !2116, size: 64, offset: 1472)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2084, file: !2085, line: 208, baseType: !974, size: 8, offset: 1536)
!2142 = !DIGlobalVariableExpression(var: !2143, expr: !DIExpression())
!2143 = distinct !DIGlobalVariable(name: "ks_sa_rng_dt_match", scope: !2, file: !3, line: 265, type: !2144, isLocal: true, isDefinition: true)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1655, size: 3200, elements: !946)
!2145 = !{i32 7, !"Dwarf Version", i32 4}
!2146 = !{i32 2, !"Debug Info Version", i32 3}
!2147 = !{i32 1, !"wchar_size", i32 2}
!2148 = !{i32 1, !"Code Model", i32 2}
!2149 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2150 = distinct !DISubprogram(name: "ks_sa_rng_driver_init", scope: !3, file: !3, line: 282, type: !2151, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!113}
!2153 = !DILocation(line: 282, column: 1, scope: !2150)
!2154 = distinct !DISubprogram(name: "ks_sa_rng_driver_exit", scope: !3, file: !3, line: 282, type: !2060, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2155 = !DILocation(line: 282, column: 1, scope: !2154)
!2156 = distinct !DISubprogram(name: "ks_sa_rng_probe", scope: !3, file: !3, line: 210, type: !2089, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2157 = !DILocalVariable(name: "pdev", arg: 1, scope: !2156, file: !3, line: 210, type: !2091)
!2158 = !DILocation(line: 210, column: 52, scope: !2156)
!2159 = !DILocalVariable(name: "ks_sa_rng", scope: !2156, file: !3, line: 212, type: !2160)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ks_sa_rng", file: !3, line: 83, size: 1280, elements: !2162)
!2162 = !{!2163, !2164, !2195, !2199, !2203, !2214, !2215}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2161, file: !3, line: 84, baseType: !62, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !2161, file: !3, line: 85, baseType: !2165, size: 896, offset: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !2166, line: 39, size: 896, elements: !2167)
!2166 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !{!2168, !2169, !2174, !2178, !2182, !2186, !2190, !2191, !2192, !2193, !2194}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2165, file: !2166, line: 40, baseType: !70, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2165, file: !2166, line: 41, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!113, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2165, file: !2166, line: 42, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2173}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !2165, file: !2166, line: 43, baseType: !2179, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!113, !2173, !113}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !2165, file: !2166, line: 44, baseType: !2183, size: 64, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!113, !2173, !603}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2165, file: !2166, line: 45, baseType: !2187, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!113, !2173, !202, !176, !974}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2165, file: !2166, line: 46, baseType: !61, size: 64, offset: 384)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !2165, file: !2166, line: 47, baseType: !171, size: 16, offset: 448)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2165, file: !2166, line: 50, baseType: !74, size: 128, offset: 512)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2165, file: !2166, line: 51, baseType: !1564, size: 32, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !2165, file: !2166, line: 52, baseType: !708, size: 192, offset: 704)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2161, file: !3, line: 86, baseType: !2196, size: 64, offset: 960)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2198, line: 17, flags: DIFlagFwdDecl)
!2198 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_cfg", scope: !2161, file: !3, line: 87, baseType: !2200, size: 64, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !2202, line: 33, flags: DIFlagFwdDecl)
!2202 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/lizy2001/genbc/linux")
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "reg_rng", scope: !2161, file: !3, line: 88, baseType: !2204, size: 64, offset: 1088)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trng_regs", file: !3, line: 73, size: 224, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "output_l", scope: !2205, file: !3, line: 74, baseType: !402, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "output_h", scope: !2205, file: !3, line: 75, baseType: !402, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2205, file: !3, line: 76, baseType: !402, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "intmask", scope: !2205, file: !3, line: 77, baseType: !402, size: 32, offset: 96)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "intack", scope: !2205, file: !3, line: 78, baseType: !402, size: 32, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2205, file: !3, line: 79, baseType: !402, size: 32, offset: 160)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2205, file: !3, line: 80, baseType: !402, size: 32, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ready_ts", scope: !2161, file: !3, line: 89, baseType: !248, size: 64, offset: 1152)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "refill_delay_ns", scope: !2161, file: !3, line: 90, baseType: !7, size: 32, offset: 1216)
!2216 = !DILocation(line: 212, column: 20, scope: !2156)
!2217 = !DILocalVariable(name: "dev", scope: !2156, file: !3, line: 213, type: !62)
!2218 = !DILocation(line: 213, column: 18, scope: !2156)
!2219 = !DILocation(line: 213, column: 25, scope: !2156)
!2220 = !DILocation(line: 213, column: 31, scope: !2156)
!2221 = !DILocalVariable(name: "ret", scope: !2156, file: !3, line: 214, type: !113)
!2222 = !DILocation(line: 214, column: 8, scope: !2156)
!2223 = !DILocation(line: 216, column: 27, scope: !2156)
!2224 = !DILocation(line: 216, column: 14, scope: !2156)
!2225 = !DILocation(line: 216, column: 12, scope: !2156)
!2226 = !DILocation(line: 217, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 217, column: 6)
!2228 = !DILocation(line: 217, column: 6, scope: !2156)
!2229 = !DILocation(line: 218, column: 3, scope: !2227)
!2230 = !DILocation(line: 220, column: 19, scope: !2156)
!2231 = !DILocation(line: 220, column: 2, scope: !2156)
!2232 = !DILocation(line: 220, column: 13, scope: !2156)
!2233 = !DILocation(line: 220, column: 17, scope: !2156)
!2234 = !DILocation(line: 221, column: 2, scope: !2156)
!2235 = !DILocation(line: 221, column: 13, scope: !2156)
!2236 = !DILocation(line: 221, column: 34, scope: !2156)
!2237 = !DILocation(line: 221, column: 19, scope: !2156)
!2238 = !DILocation(line: 228, column: 39, scope: !2156)
!2239 = !DILocation(line: 228, column: 24, scope: !2156)
!2240 = !DILocation(line: 228, column: 2, scope: !2156)
!2241 = !DILocation(line: 228, column: 13, scope: !2156)
!2242 = !DILocation(line: 228, column: 17, scope: !2156)
!2243 = !DILocation(line: 228, column: 22, scope: !2156)
!2244 = !DILocation(line: 230, column: 54, scope: !2156)
!2245 = !DILocation(line: 230, column: 23, scope: !2156)
!2246 = !DILocation(line: 230, column: 2, scope: !2156)
!2247 = !DILocation(line: 230, column: 13, scope: !2156)
!2248 = !DILocation(line: 230, column: 21, scope: !2156)
!2249 = !DILocation(line: 231, column: 13, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 231, column: 6)
!2251 = !DILocation(line: 231, column: 24, scope: !2250)
!2252 = !DILocation(line: 231, column: 6, scope: !2250)
!2253 = !DILocation(line: 231, column: 6, scope: !2156)
!2254 = !DILocation(line: 232, column: 18, scope: !2250)
!2255 = !DILocation(line: 232, column: 29, scope: !2250)
!2256 = !DILocation(line: 232, column: 10, scope: !2250)
!2257 = !DILocation(line: 232, column: 3, scope: !2250)
!2258 = !DILocation(line: 235, column: 35, scope: !2156)
!2259 = !DILocation(line: 235, column: 40, scope: !2156)
!2260 = !DILocation(line: 235, column: 3, scope: !2156)
!2261 = !DILocation(line: 234, column: 2, scope: !2156)
!2262 = !DILocation(line: 234, column: 13, scope: !2156)
!2263 = !DILocation(line: 234, column: 24, scope: !2156)
!2264 = !DILocation(line: 238, column: 13, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 238, column: 6)
!2266 = !DILocation(line: 238, column: 24, scope: !2265)
!2267 = !DILocation(line: 238, column: 6, scope: !2265)
!2268 = !DILocation(line: 238, column: 6, scope: !2156)
!2269 = !DILocation(line: 239, column: 3, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 238, column: 37)
!2271 = !DILocation(line: 240, column: 3, scope: !2270)
!2272 = !DILocation(line: 243, column: 20, scope: !2156)
!2273 = !DILocation(line: 243, column: 2, scope: !2156)
!2274 = !DILocation(line: 244, column: 28, scope: !2156)
!2275 = !DILocation(line: 244, column: 8, scope: !2156)
!2276 = !DILocation(line: 244, column: 6, scope: !2156)
!2277 = !DILocation(line: 245, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 245, column: 6)
!2279 = !DILocation(line: 245, column: 10, scope: !2278)
!2280 = !DILocation(line: 245, column: 6, scope: !2156)
!2281 = !DILocation(line: 246, column: 3, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 245, column: 15)
!2283 = !DILocation(line: 247, column: 25, scope: !2282)
!2284 = !DILocation(line: 247, column: 3, scope: !2282)
!2285 = !DILocation(line: 248, column: 22, scope: !2282)
!2286 = !DILocation(line: 248, column: 3, scope: !2282)
!2287 = !DILocation(line: 249, column: 10, scope: !2282)
!2288 = !DILocation(line: 249, column: 3, scope: !2282)
!2289 = !DILocation(line: 252, column: 23, scope: !2156)
!2290 = !DILocation(line: 252, column: 29, scope: !2156)
!2291 = !DILocation(line: 252, column: 2, scope: !2156)
!2292 = !DILocation(line: 254, column: 30, scope: !2156)
!2293 = !DILocation(line: 254, column: 36, scope: !2156)
!2294 = !DILocation(line: 254, column: 42, scope: !2156)
!2295 = !DILocation(line: 254, column: 53, scope: !2156)
!2296 = !DILocation(line: 254, column: 9, scope: !2156)
!2297 = !DILocation(line: 254, column: 2, scope: !2156)
!2298 = !DILocation(line: 255, column: 1, scope: !2156)
!2299 = distinct !DISubprogram(name: "ks_sa_rng_remove", scope: !3, file: !3, line: 257, type: !2089, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2300 = !DILocalVariable(name: "pdev", arg: 1, scope: !2299, file: !3, line: 257, type: !2091)
!2301 = !DILocation(line: 257, column: 53, scope: !2299)
!2302 = !DILocation(line: 259, column: 23, scope: !2299)
!2303 = !DILocation(line: 259, column: 29, scope: !2299)
!2304 = !DILocation(line: 259, column: 2, scope: !2299)
!2305 = !DILocation(line: 260, column: 22, scope: !2299)
!2306 = !DILocation(line: 260, column: 28, scope: !2299)
!2307 = !DILocation(line: 260, column: 2, scope: !2299)
!2308 = !DILocation(line: 262, column: 2, scope: !2299)
!2309 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2310, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!202, !62, !176, !59}
!2312 = !DILocalVariable(name: "dev", arg: 1, scope: !2309, file: !30, line: 215, type: !62)
!2313 = !DILocation(line: 215, column: 49, scope: !2309)
!2314 = !DILocalVariable(name: "size", arg: 2, scope: !2309, file: !30, line: 215, type: !176)
!2315 = !DILocation(line: 215, column: 61, scope: !2309)
!2316 = !DILocalVariable(name: "gfp", arg: 3, scope: !2309, file: !30, line: 215, type: !59)
!2317 = !DILocation(line: 215, column: 73, scope: !2309)
!2318 = !DILocation(line: 217, column: 22, scope: !2309)
!2319 = !DILocation(line: 217, column: 27, scope: !2309)
!2320 = !DILocation(line: 217, column: 33, scope: !2309)
!2321 = !DILocation(line: 217, column: 37, scope: !2309)
!2322 = !DILocation(line: 217, column: 9, scope: !2309)
!2323 = !DILocation(line: 217, column: 2, scope: !2309)
!2324 = distinct !DISubprogram(name: "ks_sa_rng_init", scope: !3, file: !3, line: 113, type: !2171, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2325 = !DILocalVariable(name: "rng", arg: 1, scope: !2324, file: !3, line: 113, type: !2173)
!2326 = !DILocation(line: 113, column: 41, scope: !2324)
!2327 = !DILocalVariable(name: "value", scope: !2324, file: !3, line: 115, type: !402)
!2328 = !DILocation(line: 115, column: 6, scope: !2324)
!2329 = !DILocalVariable(name: "dev", scope: !2324, file: !3, line: 116, type: !62)
!2330 = !DILocation(line: 116, column: 17, scope: !2324)
!2331 = !DILocation(line: 116, column: 40, scope: !2324)
!2332 = !DILocation(line: 116, column: 45, scope: !2324)
!2333 = !DILocation(line: 116, column: 23, scope: !2324)
!2334 = !DILocalVariable(name: "ks_sa_rng", scope: !2324, file: !3, line: 117, type: !2160)
!2335 = !DILocation(line: 117, column: 20, scope: !2324)
!2336 = !DILocation(line: 117, column: 48, scope: !2324)
!2337 = !DILocation(line: 117, column: 32, scope: !2324)
!2338 = !DILocalVariable(name: "clk_rate", scope: !2324, file: !3, line: 118, type: !61)
!2339 = !DILocation(line: 118, column: 16, scope: !2324)
!2340 = !DILocation(line: 118, column: 40, scope: !2324)
!2341 = !DILocation(line: 118, column: 51, scope: !2324)
!2342 = !DILocation(line: 118, column: 27, scope: !2324)
!2343 = !DILocation(line: 121, column: 20, scope: !2324)
!2344 = !DILocation(line: 121, column: 31, scope: !2324)
!2345 = !DILocation(line: 121, column: 2, scope: !2324)
!2346 = !DILocation(line: 126, column: 13, scope: !2324)
!2347 = !DILocation(line: 126, column: 24, scope: !2324)
!2348 = !DILocation(line: 126, column: 33, scope: !2324)
!2349 = !DILocation(line: 126, column: 12, scope: !2324)
!2350 = !DILocation(line: 126, column: 2, scope: !2324)
!2351 = !DILocation(line: 127, column: 8, scope: !2324)
!2352 = !DILocation(line: 128, column: 9, scope: !2324)
!2353 = !DILocation(line: 128, column: 17, scope: !2324)
!2354 = !DILocation(line: 128, column: 28, scope: !2324)
!2355 = !DILocation(line: 128, column: 37, scope: !2324)
!2356 = !DILocation(line: 128, column: 16, scope: !2324)
!2357 = !DILocation(line: 128, column: 2, scope: !2324)
!2358 = !DILocation(line: 130, column: 8, scope: !2324)
!2359 = !DILocation(line: 137, column: 9, scope: !2324)
!2360 = !DILocation(line: 137, column: 17, scope: !2324)
!2361 = !DILocation(line: 137, column: 28, scope: !2324)
!2362 = !DILocation(line: 137, column: 37, scope: !2324)
!2363 = !DILocation(line: 137, column: 16, scope: !2324)
!2364 = !DILocation(line: 137, column: 2, scope: !2324)
!2365 = !DILocation(line: 140, column: 13, scope: !2324)
!2366 = !DILocation(line: 140, column: 24, scope: !2324)
!2367 = !DILocation(line: 140, column: 33, scope: !2324)
!2368 = !DILocation(line: 140, column: 12, scope: !2324)
!2369 = !DILocation(line: 140, column: 2, scope: !2324)
!2370 = !DILocation(line: 143, column: 17, scope: !2324)
!2371 = !DILocation(line: 143, column: 28, scope: !2324)
!2372 = !DILocation(line: 143, column: 37, scope: !2324)
!2373 = !DILocation(line: 143, column: 16, scope: !2324)
!2374 = !DILocation(line: 143, column: 10, scope: !2324)
!2375 = !DILocation(line: 143, column: 8, scope: !2324)
!2376 = !DILocation(line: 144, column: 8, scope: !2324)
!2377 = !DILocation(line: 145, column: 9, scope: !2324)
!2378 = !DILocation(line: 145, column: 17, scope: !2324)
!2379 = !DILocation(line: 145, column: 28, scope: !2324)
!2380 = !DILocation(line: 145, column: 37, scope: !2324)
!2381 = !DILocation(line: 145, column: 16, scope: !2324)
!2382 = !DILocation(line: 145, column: 2, scope: !2324)
!2383 = !DILocation(line: 147, column: 47, scope: !2324)
!2384 = !DILocation(line: 147, column: 31, scope: !2324)
!2385 = !DILocation(line: 147, column: 2, scope: !2324)
!2386 = !DILocation(line: 147, column: 13, scope: !2324)
!2387 = !DILocation(line: 147, column: 29, scope: !2324)
!2388 = !DILocation(line: 148, column: 24, scope: !2324)
!2389 = !DILocation(line: 149, column: 27, scope: !2324)
!2390 = !DILocation(line: 149, column: 10, scope: !2324)
!2391 = !DILocation(line: 148, column: 39, scope: !2324)
!2392 = !DILocation(line: 148, column: 2, scope: !2324)
!2393 = !DILocation(line: 148, column: 13, scope: !2324)
!2394 = !DILocation(line: 148, column: 22, scope: !2324)
!2395 = !DILocation(line: 151, column: 2, scope: !2324)
!2396 = distinct !DISubprogram(name: "ks_sa_rng_cleanup", scope: !3, file: !3, line: 154, type: !2176, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2397 = !DILocalVariable(name: "rng", arg: 1, scope: !2396, file: !3, line: 154, type: !2173)
!2398 = !DILocation(line: 154, column: 45, scope: !2396)
!2399 = !DILocalVariable(name: "dev", scope: !2396, file: !3, line: 156, type: !62)
!2400 = !DILocation(line: 156, column: 17, scope: !2396)
!2401 = !DILocation(line: 156, column: 40, scope: !2396)
!2402 = !DILocation(line: 156, column: 45, scope: !2396)
!2403 = !DILocation(line: 156, column: 23, scope: !2396)
!2404 = !DILocalVariable(name: "ks_sa_rng", scope: !2396, file: !3, line: 157, type: !2160)
!2405 = !DILocation(line: 157, column: 20, scope: !2396)
!2406 = !DILocation(line: 157, column: 48, scope: !2396)
!2407 = !DILocation(line: 157, column: 32, scope: !2396)
!2408 = !DILocation(line: 160, column: 13, scope: !2396)
!2409 = !DILocation(line: 160, column: 24, scope: !2396)
!2410 = !DILocation(line: 160, column: 33, scope: !2396)
!2411 = !DILocation(line: 160, column: 12, scope: !2396)
!2412 = !DILocation(line: 160, column: 2, scope: !2396)
!2413 = !DILocation(line: 161, column: 20, scope: !2396)
!2414 = !DILocation(line: 161, column: 31, scope: !2396)
!2415 = !DILocation(line: 161, column: 2, scope: !2396)
!2416 = !DILocation(line: 163, column: 1, scope: !2396)
!2417 = distinct !DISubprogram(name: "ks_sa_rng_data_present", scope: !3, file: !3, line: 180, type: !2180, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2418 = !DILocalVariable(name: "rng", arg: 1, scope: !2417, file: !3, line: 180, type: !2173)
!2419 = !DILocation(line: 180, column: 49, scope: !2417)
!2420 = !DILocalVariable(name: "wait", arg: 2, scope: !2417, file: !3, line: 180, type: !113)
!2421 = !DILocation(line: 180, column: 58, scope: !2417)
!2422 = !DILocalVariable(name: "dev", scope: !2417, file: !3, line: 182, type: !62)
!2423 = !DILocation(line: 182, column: 17, scope: !2417)
!2424 = !DILocation(line: 182, column: 40, scope: !2417)
!2425 = !DILocation(line: 182, column: 45, scope: !2417)
!2426 = !DILocation(line: 182, column: 23, scope: !2417)
!2427 = !DILocalVariable(name: "ks_sa_rng", scope: !2417, file: !3, line: 183, type: !2160)
!2428 = !DILocation(line: 183, column: 20, scope: !2417)
!2429 = !DILocation(line: 183, column: 48, scope: !2417)
!2430 = !DILocation(line: 183, column: 32, scope: !2417)
!2431 = !DILocalVariable(name: "now", scope: !2417, file: !3, line: 184, type: !248)
!2432 = !DILocation(line: 184, column: 6, scope: !2417)
!2433 = !DILocation(line: 184, column: 12, scope: !2417)
!2434 = !DILocalVariable(name: "ready", scope: !2417, file: !3, line: 186, type: !402)
!2435 = !DILocation(line: 186, column: 6, scope: !2417)
!2436 = !DILocalVariable(name: "j", scope: !2417, file: !3, line: 187, type: !113)
!2437 = !DILocation(line: 187, column: 6, scope: !2417)
!2438 = !DILocation(line: 189, column: 6, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 189, column: 6)
!2440 = !DILocation(line: 189, column: 11, scope: !2439)
!2441 = !DILocation(line: 189, column: 14, scope: !2439)
!2442 = !DILocation(line: 189, column: 20, scope: !2439)
!2443 = !DILocation(line: 189, column: 31, scope: !2439)
!2444 = !DILocation(line: 189, column: 18, scope: !2439)
!2445 = !DILocation(line: 189, column: 6, scope: !2417)
!2446 = !DILocalVariable(name: "min_delay", scope: !2447, file: !3, line: 191, type: !61)
!2447 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 189, column: 41)
!2448 = !DILocation(line: 191, column: 17, scope: !2447)
!2449 = !DILocation(line: 192, column: 4, scope: !2447)
!2450 = !DILocation(line: 194, column: 16, scope: !2447)
!2451 = !DILocation(line: 194, column: 27, scope: !2447)
!2452 = !DILocation(line: 194, column: 37, scope: !2447)
!2453 = !DILocation(line: 194, column: 3, scope: !2447)
!2454 = !DILocation(line: 195, column: 2, scope: !2447)
!2455 = !DILocation(line: 197, column: 9, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 197, column: 2)
!2457 = !DILocation(line: 197, column: 7, scope: !2456)
!2458 = !DILocation(line: 197, column: 14, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 197, column: 2)
!2460 = !DILocation(line: 197, column: 16, scope: !2459)
!2461 = !DILocation(line: 197, column: 2, scope: !2456)
!2462 = !DILocation(line: 198, column: 18, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 197, column: 48)
!2464 = !DILocation(line: 198, column: 29, scope: !2463)
!2465 = !DILocation(line: 198, column: 38, scope: !2463)
!2466 = !DILocation(line: 198, column: 17, scope: !2463)
!2467 = !DILocation(line: 198, column: 11, scope: !2463)
!2468 = !DILocation(line: 198, column: 9, scope: !2463)
!2469 = !DILocation(line: 199, column: 9, scope: !2463)
!2470 = !DILocation(line: 201, column: 7, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 201, column: 7)
!2472 = !DILocation(line: 201, column: 13, scope: !2471)
!2473 = !DILocation(line: 201, column: 17, scope: !2471)
!2474 = !DILocation(line: 201, column: 7, scope: !2463)
!2475 = !DILocation(line: 202, column: 4, scope: !2471)
!2476 = !DILocation(line: 204, column: 3, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 204, column: 3)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 204, column: 3)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 204, column: 3)
!2480 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 204, column: 3)
!2481 = !DILocation(line: 205, column: 2, scope: !2463)
!2482 = !DILocation(line: 197, column: 44, scope: !2459)
!2483 = !DILocation(line: 197, column: 2, scope: !2459)
!2484 = distinct !{!2484, !2461, !2485}
!2485 = !DILocation(line: 205, column: 2, scope: !2456)
!2486 = !DILocation(line: 207, column: 9, scope: !2417)
!2487 = !DILocation(line: 207, column: 2, scope: !2417)
!2488 = distinct !DISubprogram(name: "ks_sa_rng_data_read", scope: !3, file: !3, line: 165, type: !2184, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2489 = !DILocalVariable(name: "rng", arg: 1, scope: !2488, file: !3, line: 165, type: !2173)
!2490 = !DILocation(line: 165, column: 46, scope: !2488)
!2491 = !DILocalVariable(name: "data", arg: 2, scope: !2488, file: !3, line: 165, type: !603)
!2492 = !DILocation(line: 165, column: 56, scope: !2488)
!2493 = !DILocalVariable(name: "dev", scope: !2488, file: !3, line: 167, type: !62)
!2494 = !DILocation(line: 167, column: 17, scope: !2488)
!2495 = !DILocation(line: 167, column: 40, scope: !2488)
!2496 = !DILocation(line: 167, column: 45, scope: !2488)
!2497 = !DILocation(line: 167, column: 23, scope: !2488)
!2498 = !DILocalVariable(name: "ks_sa_rng", scope: !2488, file: !3, line: 168, type: !2160)
!2499 = !DILocation(line: 168, column: 20, scope: !2488)
!2500 = !DILocation(line: 168, column: 48, scope: !2488)
!2501 = !DILocation(line: 168, column: 32, scope: !2488)
!2502 = !DILocation(line: 171, column: 19, scope: !2488)
!2503 = !DILocation(line: 171, column: 30, scope: !2488)
!2504 = !DILocation(line: 171, column: 39, scope: !2488)
!2505 = !DILocation(line: 171, column: 18, scope: !2488)
!2506 = !DILocation(line: 171, column: 12, scope: !2488)
!2507 = !DILocation(line: 171, column: 2, scope: !2488)
!2508 = !DILocation(line: 171, column: 10, scope: !2488)
!2509 = !DILocation(line: 172, column: 19, scope: !2488)
!2510 = !DILocation(line: 172, column: 30, scope: !2488)
!2511 = !DILocation(line: 172, column: 39, scope: !2488)
!2512 = !DILocation(line: 172, column: 18, scope: !2488)
!2513 = !DILocation(line: 172, column: 12, scope: !2488)
!2514 = !DILocation(line: 172, column: 2, scope: !2488)
!2515 = !DILocation(line: 172, column: 10, scope: !2488)
!2516 = !DILocation(line: 174, column: 33, scope: !2488)
!2517 = !DILocation(line: 174, column: 44, scope: !2488)
!2518 = !DILocation(line: 174, column: 53, scope: !2488)
!2519 = !DILocation(line: 174, column: 32, scope: !2488)
!2520 = !DILocation(line: 174, column: 2, scope: !2488)
!2521 = !DILocation(line: 175, column: 24, scope: !2488)
!2522 = !DILocation(line: 175, column: 41, scope: !2488)
!2523 = !DILocation(line: 175, column: 52, scope: !2488)
!2524 = !DILocation(line: 175, column: 39, scope: !2488)
!2525 = !DILocation(line: 175, column: 2, scope: !2488)
!2526 = !DILocation(line: 175, column: 13, scope: !2488)
!2527 = !DILocation(line: 175, column: 22, scope: !2488)
!2528 = !DILocation(line: 177, column: 2, scope: !2488)
!2529 = distinct !DISubprogram(name: "IS_ERR", scope: !2530, file: !2530, line: 34, type: !2531, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2530 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!974, !1105}
!2533 = !DILocalVariable(name: "ptr", arg: 1, scope: !2529, file: !2530, line: 34, type: !1105)
!2534 = !DILocation(line: 34, column: 60, scope: !2529)
!2535 = !DILocation(line: 36, column: 9, scope: !2529)
!2536 = !DILocation(line: 36, column: 2, scope: !2529)
!2537 = distinct !DISubprogram(name: "PTR_ERR", scope: !2530, file: !2530, line: 29, type: !2538, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!164, !1105}
!2540 = !DILocalVariable(name: "ptr", arg: 1, scope: !2537, file: !2530, line: 29, type: !1105)
!2541 = !DILocation(line: 29, column: 61, scope: !2537)
!2542 = !DILocation(line: 31, column: 16, scope: !2537)
!2543 = !DILocation(line: 31, column: 9, scope: !2537)
!2544 = !DILocation(line: 31, column: 2, scope: !2537)
!2545 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !2546, file: !2546, line: 384, type: !1605, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2546 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!2547 = !DILocalVariable(name: "dev", arg: 1, scope: !2545, file: !2546, line: 384, type: !62)
!2548 = !DILocation(line: 384, column: 54, scope: !2545)
!2549 = !DILocation(line: 386, column: 29, scope: !2545)
!2550 = !DILocation(line: 386, column: 9, scope: !2545)
!2551 = !DILocation(line: 386, column: 2, scope: !2545)
!2552 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !2546, file: !2546, line: 103, type: !1596, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2553 = !DILocalVariable(name: "v", arg: 1, scope: !2554, file: !2555, line: 200, type: !2558)
!2554 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !2555, file: !2555, line: 200, type: !2556, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2555 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!974, !2558, !719, !113}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!2559 = !DILocation(line: 200, column: 63, scope: !2554, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 1093, column: 12, scope: !2561, inlinedAt: !2565)
!2561 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !2562, file: !2562, line: 1086, type: !2563, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2562 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!113, !2558, !113, !113}
!2565 = distinct !DILocation(line: 1113, column: 9, scope: !2566, inlinedAt: !2569)
!2566 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !2562, file: !2562, line: 1111, type: !2567, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!974, !2558, !113, !113}
!2569 = distinct !DILocation(line: 789, column: 9, scope: !2570, inlinedAt: !2572)
!2570 = distinct !DISubprogram(name: "atomic_add_unless", scope: !2571, file: !2571, line: 786, type: !2567, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2571 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2572 = distinct !DILocation(line: 105, column: 2, scope: !2552)
!2573 = !DILocalVariable(name: "old", arg: 2, scope: !2554, file: !2555, line: 200, type: !719)
!2574 = !DILocation(line: 200, column: 71, scope: !2554, inlinedAt: !2560)
!2575 = !DILocalVariable(name: "new", arg: 3, scope: !2554, file: !2555, line: 200, type: !113)
!2576 = !DILocation(line: 200, column: 80, scope: !2554, inlinedAt: !2560)
!2577 = !DILocalVariable(name: "success", scope: !2578, file: !2555, line: 202, type: !974)
!2578 = distinct !DILexicalBlock(scope: !2554, file: !2555, line: 202, column: 9)
!2579 = !DILocation(line: 202, column: 9, scope: !2578, inlinedAt: !2560)
!2580 = !DILocalVariable(name: "_old", scope: !2578, file: !2555, line: 202, type: !719)
!2581 = !DILocalVariable(name: "__old", scope: !2578, file: !2555, line: 202, type: !113)
!2582 = !DILocalVariable(name: "__new", scope: !2578, file: !2555, line: 202, type: !113)
!2583 = !DILocalVariable(name: "__ptr", scope: !2578, file: !2555, line: 202, type: !2052)
!2584 = !DILocalVariable(name: "v", arg: 1, scope: !2585, file: !2555, line: 23, type: !2588)
!2585 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2555, file: !2555, line: 23, type: !2586, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!113, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!2590 = !DILocation(line: 23, column: 61, scope: !2585, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 1088, column: 10, scope: !2561, inlinedAt: !2565)
!2592 = !DILocalVariable(name: "v", arg: 1, scope: !2561, file: !2562, line: 1086, type: !2558)
!2593 = !DILocation(line: 1086, column: 40, scope: !2561, inlinedAt: !2565)
!2594 = !DILocalVariable(name: "a", arg: 2, scope: !2561, file: !2562, line: 1086, type: !113)
!2595 = !DILocation(line: 1086, column: 47, scope: !2561, inlinedAt: !2565)
!2596 = !DILocalVariable(name: "u", arg: 3, scope: !2561, file: !2562, line: 1086, type: !113)
!2597 = !DILocation(line: 1086, column: 54, scope: !2561, inlinedAt: !2565)
!2598 = !DILocalVariable(name: "c", scope: !2561, file: !2562, line: 1088, type: !113)
!2599 = !DILocation(line: 1088, column: 6, scope: !2561, inlinedAt: !2565)
!2600 = !DILocalVariable(name: "v", arg: 1, scope: !2566, file: !2562, line: 1111, type: !2558)
!2601 = !DILocation(line: 1111, column: 34, scope: !2566, inlinedAt: !2569)
!2602 = !DILocalVariable(name: "a", arg: 2, scope: !2566, file: !2562, line: 1111, type: !113)
!2603 = !DILocation(line: 1111, column: 41, scope: !2566, inlinedAt: !2569)
!2604 = !DILocalVariable(name: "u", arg: 3, scope: !2566, file: !2562, line: 1111, type: !113)
!2605 = !DILocation(line: 1111, column: 48, scope: !2566, inlinedAt: !2569)
!2606 = !DILocalVariable(name: "v", arg: 1, scope: !2607, file: !2608, line: 99, type: !2611)
!2607 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2608, file: !2608, line: 99, type: !2609, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2608 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !2611, !176}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2613)
!2613 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2614 = !DILocation(line: 99, column: 79, scope: !2607, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 788, column: 2, scope: !2570, inlinedAt: !2572)
!2616 = !DILocalVariable(name: "size", arg: 2, scope: !2607, file: !2608, line: 99, type: !176)
!2617 = !DILocation(line: 99, column: 89, scope: !2607, inlinedAt: !2615)
!2618 = !DILocalVariable(name: "v", arg: 1, scope: !2570, file: !2571, line: 786, type: !2558)
!2619 = !DILocation(line: 786, column: 29, scope: !2570, inlinedAt: !2572)
!2620 = !DILocalVariable(name: "a", arg: 2, scope: !2570, file: !2571, line: 786, type: !113)
!2621 = !DILocation(line: 786, column: 36, scope: !2570, inlinedAt: !2572)
!2622 = !DILocalVariable(name: "u", arg: 3, scope: !2570, file: !2571, line: 786, type: !113)
!2623 = !DILocation(line: 786, column: 43, scope: !2570, inlinedAt: !2572)
!2624 = !DILocalVariable(name: "dev", arg: 1, scope: !2552, file: !2546, line: 103, type: !62)
!2625 = !DILocation(line: 103, column: 57, scope: !2552)
!2626 = !DILocation(line: 105, column: 21, scope: !2552)
!2627 = !DILocation(line: 105, column: 26, scope: !2552)
!2628 = !DILocation(line: 105, column: 32, scope: !2552)
!2629 = !DILocation(line: 788, column: 31, scope: !2570, inlinedAt: !2572)
!2630 = !DILocation(line: 101, column: 20, scope: !2607, inlinedAt: !2615)
!2631 = !DILocation(line: 101, column: 23, scope: !2607, inlinedAt: !2615)
!2632 = !DILocation(line: 101, column: 2, scope: !2607, inlinedAt: !2615)
!2633 = !DILocation(line: 102, column: 2, scope: !2607, inlinedAt: !2615)
!2634 = !DILocation(line: 789, column: 32, scope: !2570, inlinedAt: !2572)
!2635 = !DILocation(line: 789, column: 35, scope: !2570, inlinedAt: !2572)
!2636 = !DILocation(line: 789, column: 38, scope: !2570, inlinedAt: !2572)
!2637 = !DILocation(line: 1113, column: 38, scope: !2566, inlinedAt: !2569)
!2638 = !DILocation(line: 1113, column: 41, scope: !2566, inlinedAt: !2569)
!2639 = !DILocation(line: 1113, column: 44, scope: !2566, inlinedAt: !2569)
!2640 = !DILocation(line: 1088, column: 27, scope: !2561, inlinedAt: !2565)
!2641 = !DILocation(line: 29, column: 9, scope: !2585, inlinedAt: !2591)
!2642 = !DILocation(line: 1090, column: 2, scope: !2561, inlinedAt: !2565)
!2643 = !DILocation(line: 1091, column: 7, scope: !2644, inlinedAt: !2565)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !2562, line: 1091, column: 7)
!2645 = distinct !DILexicalBlock(scope: !2561, file: !2562, line: 1090, column: 5)
!2646 = !DILocation(line: 1091, column: 7, scope: !2645, inlinedAt: !2565)
!2647 = !DILocation(line: 1092, column: 4, scope: !2644, inlinedAt: !2565)
!2648 = !DILocation(line: 1093, column: 36, scope: !2561, inlinedAt: !2565)
!2649 = !DILocation(line: 1093, column: 43, scope: !2561, inlinedAt: !2565)
!2650 = !DILocation(line: 1093, column: 47, scope: !2561, inlinedAt: !2565)
!2651 = !DILocation(line: 1093, column: 45, scope: !2561, inlinedAt: !2565)
!2652 = !{i32 -2146521703, i32 -2146521548}
!2653 = !DILocation(line: 202, column: 9, scope: !2654, inlinedAt: !2560)
!2654 = distinct !DILexicalBlock(scope: !2578, file: !2555, line: 202, column: 9)
!2655 = !DILocation(line: 202, column: 9, scope: !2554, inlinedAt: !2560)
!2656 = !DILocation(line: 1093, column: 11, scope: !2561, inlinedAt: !2565)
!2657 = !DILocation(line: 1093, column: 2, scope: !2645, inlinedAt: !2565)
!2658 = distinct !{!2658, !2642, !2659}
!2659 = !DILocation(line: 1093, column: 49, scope: !2561, inlinedAt: !2565)
!2660 = !DILocation(line: 1095, column: 9, scope: !2561, inlinedAt: !2565)
!2661 = !DILocation(line: 1113, column: 50, scope: !2566, inlinedAt: !2569)
!2662 = !DILocation(line: 1113, column: 47, scope: !2566, inlinedAt: !2569)
!2663 = !DILocation(line: 106, column: 1, scope: !2552)
!2664 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !2546, file: !2546, line: 524, type: !1596, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2665 = !DILocalVariable(name: "dev", arg: 1, scope: !2664, file: !2546, line: 524, type: !62)
!2666 = !DILocation(line: 524, column: 54, scope: !2664)
!2667 = !DILocation(line: 526, column: 23, scope: !2664)
!2668 = !DILocation(line: 526, column: 2, scope: !2664)
!2669 = !DILocation(line: 527, column: 1, scope: !2664)
!2670 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2085, file: !2085, line: 236, type: !2671, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2091, !202}
!2673 = !DILocalVariable(name: "pdev", arg: 1, scope: !2670, file: !2085, line: 236, type: !2091)
!2674 = !DILocation(line: 236, column: 65, scope: !2670)
!2675 = !DILocalVariable(name: "data", arg: 2, scope: !2670, file: !2085, line: 237, type: !202)
!2676 = !DILocation(line: 237, column: 12, scope: !2670)
!2677 = !DILocation(line: 239, column: 19, scope: !2670)
!2678 = !DILocation(line: 239, column: 25, scope: !2670)
!2679 = !DILocation(line: 239, column: 30, scope: !2670)
!2680 = !DILocation(line: 239, column: 2, scope: !2670)
!2681 = !DILocation(line: 240, column: 1, scope: !2670)
!2682 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2683, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!202, !1918}
!2685 = !DILocalVariable(name: "dev", arg: 1, scope: !2682, file: !30, line: 655, type: !1918)
!2686 = !DILocation(line: 655, column: 58, scope: !2682)
!2687 = !DILocation(line: 657, column: 9, scope: !2682)
!2688 = !DILocation(line: 657, column: 14, scope: !2682)
!2689 = !DILocation(line: 657, column: 2, scope: !2682)
!2690 = distinct !DISubprogram(name: "regmap_write_bits", scope: !2202, file: !2202, line: 1097, type: !2691, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!113, !2200, !7, !7, !7}
!2693 = !DILocalVariable(name: "map", arg: 1, scope: !2690, file: !2202, line: 1097, type: !2200)
!2694 = !DILocation(line: 1097, column: 52, scope: !2690)
!2695 = !DILocalVariable(name: "reg", arg: 2, scope: !2690, file: !2202, line: 1097, type: !7)
!2696 = !DILocation(line: 1097, column: 70, scope: !2690)
!2697 = !DILocalVariable(name: "mask", arg: 3, scope: !2690, file: !2202, line: 1098, type: !7)
!2698 = !DILocation(line: 1098, column: 22, scope: !2690)
!2699 = !DILocalVariable(name: "val", arg: 4, scope: !2690, file: !2202, line: 1098, type: !7)
!2700 = !DILocation(line: 1098, column: 41, scope: !2690)
!2701 = !DILocation(line: 1100, column: 33, scope: !2690)
!2702 = !DILocation(line: 1100, column: 38, scope: !2690)
!2703 = !DILocation(line: 1100, column: 43, scope: !2690)
!2704 = !DILocation(line: 1100, column: 49, scope: !2690)
!2705 = !DILocation(line: 1100, column: 9, scope: !2690)
!2706 = !DILocation(line: 1100, column: 2, scope: !2690)
!2707 = distinct !DISubprogram(name: "writel", scope: !2708, file: !2708, line: 67, type: !2709, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2708 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !7, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2712 = !DILocalVariable(name: "val", arg: 1, scope: !2707, file: !2708, line: 67, type: !7)
!2713 = !DILocation(line: 67, column: 1, scope: !2707)
!2714 = !DILocalVariable(name: "addr", arg: 2, scope: !2707, file: !2708, line: 67, type: !2711)
!2715 = !{i32 -2144315021}
!2716 = distinct !DISubprogram(name: "readl", scope: !2708, file: !2708, line: 59, type: !2717, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!7, !2611}
!2719 = !DILocalVariable(name: "addr", arg: 1, scope: !2716, file: !2708, line: 59, type: !2611)
!2720 = !DILocation(line: 59, column: 1, scope: !2716)
!2721 = !DILocalVariable(name: "ret", scope: !2716, file: !2708, line: 59, type: !7)
!2722 = !{i32 -2144317414}
!2723 = distinct !DISubprogram(name: "refill_delay_ns", scope: !3, file: !3, line: 106, type: !2724, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!7, !61}
!2726 = !DILocalVariable(name: "clk_rate", arg: 1, scope: !2723, file: !3, line: 106, type: !61)
!2727 = !DILocation(line: 106, column: 51, scope: !2723)
!2728 = !DILocation(line: 109, column: 23, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 108, column: 6)
!2730 = !DILocation(line: 109, column: 10, scope: !2729)
!2731 = !DILocation(line: 109, column: 3, scope: !2729)
!2732 = distinct !DISubprogram(name: "ktime_get_ns", scope: !2733, file: !2733, line: 152, type: !2734, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2733 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!248}
!2736 = !DILocation(line: 154, column: 21, scope: !2732)
!2737 = !DILocation(line: 154, column: 9, scope: !2732)
!2738 = !DILocation(line: 154, column: 2, scope: !2732)
!2739 = distinct !DISubprogram(name: "startup_delay_ns", scope: !3, file: !3, line: 99, type: !2724, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2740 = !DILocalVariable(name: "clk_rate", arg: 1, scope: !2739, file: !3, line: 99, type: !61)
!2741 = !DILocation(line: 99, column: 52, scope: !2739)
!2742 = !DILocation(line: 102, column: 23, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 101, column: 6)
!2744 = !DILocation(line: 102, column: 10, scope: !2743)
!2745 = !DILocation(line: 102, column: 3, scope: !2743)
!2746 = distinct !DISubprogram(name: "cycles_to_ns", scope: !3, file: !3, line: 93, type: !2747, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!7, !61, !7}
!2749 = !DILocalVariable(name: "clk_rate", arg: 1, scope: !2746, file: !3, line: 93, type: !61)
!2750 = !DILocation(line: 93, column: 48, scope: !2746)
!2751 = !DILocalVariable(name: "cycles", arg: 2, scope: !2746, file: !3, line: 93, type: !7)
!2752 = !DILocation(line: 93, column: 71, scope: !2746)
!2753 = !DILocalVariable(name: "_tmp", scope: !2754, file: !3, line: 95, type: !252)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 95, column: 9)
!2755 = !DILocation(line: 95, column: 9, scope: !2754)
!2756 = !DILocalVariable(name: "__base", scope: !2757, file: !3, line: 95, type: !2758)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 95, column: 9)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 104, baseType: !402)
!2759 = !DILocation(line: 95, column: 9, scope: !2757)
!2760 = !DILocalVariable(name: "__rem", scope: !2757, file: !3, line: 95, type: !2758)
!2761 = !DILocation(line: 95, column: 9, scope: !2746)
!2762 = !DILocation(line: 95, column: 2, scope: !2746)
!2763 = distinct !DISubprogram(name: "ktime_to_ns", scope: !479, file: !479, line: 80, type: !2764, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!284, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!2767 = !DILocalVariable(name: "kt", arg: 1, scope: !2763, file: !479, line: 80, type: !2766)
!2768 = !DILocation(line: 80, column: 45, scope: !2763)
!2769 = !DILocation(line: 82, column: 9, scope: !2763)
!2770 = !DILocation(line: 82, column: 2, scope: !2763)
!2771 = distinct !DISubprogram(name: "kasan_check_write", scope: !2772, file: !2772, line: 38, type: !2773, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2772 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!974, !2611, !7}
!2775 = !DILocalVariable(name: "p", arg: 1, scope: !2771, file: !2772, line: 38, type: !2611)
!2776 = !DILocation(line: 38, column: 59, scope: !2771)
!2777 = !DILocalVariable(name: "size", arg: 2, scope: !2771, file: !2772, line: 38, type: !7)
!2778 = !DILocation(line: 38, column: 75, scope: !2771)
!2779 = !DILocation(line: 40, column: 2, scope: !2771)
!2780 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2781, file: !2781, line: 178, type: !2782, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2781 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !2611, !176, !113}
!2784 = !DILocalVariable(name: "ptr", arg: 1, scope: !2780, file: !2781, line: 178, type: !2611)
!2785 = !DILocation(line: 178, column: 60, scope: !2780)
!2786 = !DILocalVariable(name: "size", arg: 2, scope: !2780, file: !2781, line: 178, type: !176)
!2787 = !DILocation(line: 178, column: 72, scope: !2780)
!2788 = !DILocalVariable(name: "type", arg: 3, scope: !2780, file: !2781, line: 179, type: !113)
!2789 = !DILocation(line: 179, column: 15, scope: !2780)
!2790 = !DILocation(line: 179, column: 23, scope: !2780)
!2791 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2792, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !62, !202}
!2794 = !DILocalVariable(name: "dev", arg: 1, scope: !2791, file: !30, line: 660, type: !62)
!2795 = !DILocation(line: 660, column: 51, scope: !2791)
!2796 = !DILocalVariable(name: "data", arg: 2, scope: !2791, file: !30, line: 660, type: !202)
!2797 = !DILocation(line: 660, column: 62, scope: !2791)
!2798 = !DILocation(line: 662, column: 21, scope: !2791)
!2799 = !DILocation(line: 662, column: 2, scope: !2791)
!2800 = !DILocation(line: 662, column: 7, scope: !2791)
!2801 = !DILocation(line: 662, column: 19, scope: !2791)
!2802 = !DILocation(line: 663, column: 1, scope: !2791)
!2803 = distinct !DISubprogram(name: "pm_runtime_put_sync", scope: !2546, file: !2546, line: 448, type: !1605, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2804 = !DILocalVariable(name: "dev", arg: 1, scope: !2803, file: !2546, line: 448, type: !62)
!2805 = !DILocation(line: 448, column: 54, scope: !2803)
!2806 = !DILocation(line: 450, column: 27, scope: !2803)
!2807 = !DILocation(line: 450, column: 9, scope: !2803)
!2808 = !DILocation(line: 450, column: 2, scope: !2803)
