; ModuleID = '../bcout/drivers/acpi/evged.llvm.bc'
source_filename = "drivers/acpi/evged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ged_driver_init6:\09\09\09"
module asm ".long\09ged_driver_init - .\09\09\09"
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
%struct.acpi_ged_device = type { %struct.device*, %struct.list_head }
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
%struct.acpi_ged_event = type { %struct.list_head, %struct.device*, i32, i32, i8* }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.acpi_resource_irq = type { i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.acpi_resource_extended_irq = type <{ i8, i8, i8, i8, i8, i8, %struct.acpi_resource_source, [1 x i32] }>
%struct.acpi_resource_source = type <{ i8, i16, i8* }>

@__UNIQUE_ID___addressable_ged_driver_init174 = internal global i8* bitcast (i32 ()* @ged_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ged_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @ged_probe, i32 (%struct.platform_device*)* @ged_remove, void (%struct.platform_device*)* @ged_shutdown, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @ged_acpi_ids, i32 0, i32 0), i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2438
@.str = private unnamed_addr constant [9 x i8] c"acpi-ged\00", align 1
@ged_acpi_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"ACPI0013\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2503
@.str.1 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to parse the _CRS record\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to parse IRQ resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_%c%02X\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_EVT\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"cannot locate _EVT method\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ACPI:Ged\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"failed to setup event handler for irq %u\0A\00", align 1
@acpi_ged_irq_handler.__print_once = internal global i8 0, section ".data..read_mostly", align 1, !dbg !2497
@.str.9 = private unnamed_addr constant [29 x i8] c"IRQ method execution failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ged_driver_init174 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ged_driver_init() #0 section ".init.text" !dbg !2511 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @ged_driver, %struct.module* null) #5, !dbg !2514
  ret i32 %call, !dbg !2514
}

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ged_probe(%struct.platform_device* %pdev) #2 !dbg !2515 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %geddev = alloca %struct.acpi_ged_device*, align 8
  %acpi_ret = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.acpi_ged_device** %geddev, metadata !2518, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.declare(metadata i32* %acpi_ret, metadata !2525, metadata !DIExpression()), !dbg !2526
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2527
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2528
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 24, i32 3264) #5, !dbg !2529
  %1 = bitcast i8* %call to %struct.acpi_ged_device*, !dbg !2529
  store %struct.acpi_ged_device* %1, %struct.acpi_ged_device** %geddev, align 8, !dbg !2530
  %2 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !2531
  %tobool = icmp ne %struct.acpi_ged_device* %2, null, !dbg !2531
  br i1 %tobool, label %if.end, label %if.then, !dbg !2533

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2534
  br label %return, !dbg !2534

if.end:                                           ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2535
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 3, !dbg !2536
  %4 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !2537
  %dev2 = getelementptr inbounds %struct.acpi_ged_device, %struct.acpi_ged_device* %4, i32 0, i32 0, !dbg !2538
  store %struct.device* %dev1, %struct.device** %dev2, align 8, !dbg !2539
  %5 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !2540
  %event_list = getelementptr inbounds %struct.acpi_ged_device, %struct.acpi_ged_device* %5, i32 0, i32 1, !dbg !2541
  call void @INIT_LIST_HEAD(%struct.list_head* %event_list) #5, !dbg !2542
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2543, metadata !DIExpression()), !dbg !2545
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2545
  %dev3 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 3, !dbg !2545
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 24, !dbg !2545
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2545
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2545
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2545
  %call4 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %8) #5, !dbg !2545
  br i1 %call4, label %cond.true, label %cond.false, !dbg !2545

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2546, metadata !DIExpression()), !dbg !2548
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2548
  %10 = bitcast %struct.fwnode_handle* %9 to i8*, !dbg !2548
  store i8* %10, i8** %__mptr, align 8, !dbg !2548
  br label %do.body, !dbg !2548

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2549

do.end:                                           ; preds = %do.body
  %11 = load i8*, i8** %__mptr, align 8, !dbg !2548
  %add.ptr = getelementptr i8, i8* %11, i64 -16, !dbg !2548
  %12 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2548
  store %struct.acpi_device* %12, %struct.acpi_device** %tmp5, align 8, !dbg !2549
  %13 = load %struct.acpi_device*, %struct.acpi_device** %tmp5, align 8, !dbg !2548
  br label %cond.end, !dbg !2545

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2545

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %13, %do.end ], [ null, %cond.false ], !dbg !2545
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2545
  %14 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2545
  %call6 = call i8* @acpi_device_handle(%struct.acpi_device* %14) #5, !dbg !2551
  %15 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !2552
  %16 = bitcast %struct.acpi_ged_device* %15 to i8*, !dbg !2552
  %call7 = call i32 @acpi_walk_resources(i8* %call6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 (%struct.acpi_resource*, i8*)* @acpi_ged_request_interrupt, i8* %16) #5, !dbg !2553
  store i32 %call7, i32* %acpi_ret, align 4, !dbg !2554
  %17 = load i32, i32* %acpi_ret, align 4, !dbg !2555
  %tobool8 = icmp ne i32 %17, 0, !dbg !2555
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !2557

if.then9:                                         ; preds = %cond.end
  %18 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2558
  %dev10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 3, !dbg !2558
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2558
  store i32 -22, i32* %retval, align 4, !dbg !2560
  br label %return, !dbg !2560

if.end11:                                         ; preds = %cond.end
  %19 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2561
  %20 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !2562
  %21 = bitcast %struct.acpi_ged_device* %20 to i8*, !dbg !2562
  call void @platform_set_drvdata(%struct.platform_device* %19, i8* %21) #5, !dbg !2563
  store i32 0, i32* %retval, align 4, !dbg !2564
  br label %return, !dbg !2564

return:                                           ; preds = %if.end11, %if.then9, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !2565
  ret i32 %22, !dbg !2565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ged_remove(%struct.platform_device* %pdev) #2 !dbg !2566 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2567, metadata !DIExpression()), !dbg !2568
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2569
  call void @ged_shutdown(%struct.platform_device* %0) #5, !dbg !2570
  ret i32 0, !dbg !2571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ged_shutdown(%struct.platform_device* %pdev) #2 !dbg !2572 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %geddev = alloca %struct.acpi_ged_device*, align 8
  %event = alloca %struct.acpi_ged_event*, align 8
  %next = alloca %struct.acpi_ged_event*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_ged_event*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.acpi_ged_event*, align 8
  %__mptr12 = alloca i8*, align 8
  %tmp17 = alloca %struct.acpi_ged_event*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2573, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.declare(metadata %struct.acpi_ged_device** %geddev, metadata !2575, metadata !DIExpression()), !dbg !2576
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2577
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !2578
  %1 = bitcast i8* %call to %struct.acpi_ged_device*, !dbg !2578
  store %struct.acpi_ged_device* %1, %struct.acpi_ged_device** %geddev, align 8, !dbg !2576
  call void @llvm.dbg.declare(metadata %struct.acpi_ged_event** %event, metadata !2579, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.declare(metadata %struct.acpi_ged_event** %next, metadata !2581, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2583, metadata !DIExpression()), !dbg !2586
  %2 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !2586
  %event_list = getelementptr inbounds %struct.acpi_ged_device, %struct.acpi_ged_device* %2, i32 0, i32 1, !dbg !2586
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %event_list, i32 0, i32 0, !dbg !2586
  %3 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !2586
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !2586
  store i8* %4, i8** %__mptr, align 8, !dbg !2586
  br label %do.body, !dbg !2586

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2587

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2586
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !2586
  %6 = bitcast i8* %add.ptr to %struct.acpi_ged_event*, !dbg !2586
  store %struct.acpi_ged_event* %6, %struct.acpi_ged_event** %tmp, align 8, !dbg !2587
  %7 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %tmp, align 8, !dbg !2586
  store %struct.acpi_ged_event* %7, %struct.acpi_ged_event** %event, align 8, !dbg !2589
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2590, metadata !DIExpression()), !dbg !2592
  %8 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !2592
  %node = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %8, i32 0, i32 0, !dbg !2592
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !2592
  %9 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !2592
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !2592
  store i8* %10, i8** %__mptr2, align 8, !dbg !2592
  br label %do.body4, !dbg !2592

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2593

do.end5:                                          ; preds = %do.body4
  %11 = load i8*, i8** %__mptr2, align 8, !dbg !2592
  %add.ptr7 = getelementptr i8, i8* %11, i64 0, !dbg !2592
  %12 = bitcast i8* %add.ptr7 to %struct.acpi_ged_event*, !dbg !2592
  store %struct.acpi_ged_event* %12, %struct.acpi_ged_event** %tmp6, align 8, !dbg !2593
  %13 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %tmp6, align 8, !dbg !2592
  store %struct.acpi_ged_event* %13, %struct.acpi_ged_event** %next, align 8, !dbg !2589
  br label %for.cond, !dbg !2589

for.cond:                                         ; preds = %do.end16, %do.end5
  %14 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !2595
  %node8 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %14, i32 0, i32 0, !dbg !2595
  %15 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !2595
  %event_list9 = getelementptr inbounds %struct.acpi_ged_device, %struct.acpi_ged_device* %15, i32 0, i32 1, !dbg !2595
  %cmp = icmp eq %struct.list_head* %node8, %event_list9, !dbg !2595
  %lnot = xor i1 %cmp, true, !dbg !2595
  br i1 %lnot, label %for.body, label %for.end, !dbg !2589

for.body:                                         ; preds = %for.cond
  %16 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !2597
  %irq = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %16, i32 0, i32 3, !dbg !2599
  %17 = load i32, i32* %irq, align 4, !dbg !2599
  %18 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !2600
  %19 = bitcast %struct.acpi_ged_event* %18 to i8*, !dbg !2600
  %call10 = call i8* @free_irq(i32 %17, i8* %19) #5, !dbg !2601
  %20 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !2602
  %node11 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %20, i32 0, i32 0, !dbg !2603
  call void @list_del(%struct.list_head* %node11) #5, !dbg !2604
  br label %for.inc, !dbg !2605

for.inc:                                          ; preds = %for.body
  %21 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %next, align 8, !dbg !2595
  store %struct.acpi_ged_event* %21, %struct.acpi_ged_event** %event, align 8, !dbg !2595
  call void @llvm.dbg.declare(metadata i8** %__mptr12, metadata !2606, metadata !DIExpression()), !dbg !2608
  %22 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %next, align 8, !dbg !2608
  %node13 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %22, i32 0, i32 0, !dbg !2608
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %node13, i32 0, i32 0, !dbg !2608
  %23 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !2608
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !2608
  store i8* %24, i8** %__mptr12, align 8, !dbg !2608
  br label %do.body15, !dbg !2608

do.body15:                                        ; preds = %for.inc
  br label %do.end16, !dbg !2609

do.end16:                                         ; preds = %do.body15
  %25 = load i8*, i8** %__mptr12, align 8, !dbg !2608
  %add.ptr18 = getelementptr i8, i8* %25, i64 0, !dbg !2608
  %26 = bitcast i8* %add.ptr18 to %struct.acpi_ged_event*, !dbg !2608
  store %struct.acpi_ged_event* %26, %struct.acpi_ged_event** %tmp17, align 8, !dbg !2609
  %27 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %tmp17, align 8, !dbg !2608
  store %struct.acpi_ged_event* %27, %struct.acpi_ged_event** %next, align 8, !dbg !2595
  br label %for.cond, !dbg !2595, !llvm.loop !2611

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2613
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2614 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2621, metadata !DIExpression()), !dbg !2622
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2623
  %1 = load i64, i64* %size.addr, align 8, !dbg !2624
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2625
  %or = or i32 %2, 256, !dbg !2626
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !2627
  ret i8* %call, !dbg !2628
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !2629 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  br label %do.body, !dbg !2635

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2636

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2638

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2636

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2640
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2640
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2640
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2640
  br label %do.end3, !dbg !2640

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2636

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2642
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2643
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2644
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2645
  ret void, !dbg !2646
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_resources(i8*, i8*, i32 (%struct.acpi_resource*, i8*)*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_device_handle(%struct.acpi_device* %adev) #2 !dbg !2647 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2651, metadata !DIExpression()), !dbg !2652
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2653
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !2653
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2653

cond.true:                                        ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2654
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !2655
  %2 = load i8*, i8** %handle, align 8, !dbg !2655
  br label %cond.end, !dbg !2653

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2653

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %cond.false ], !dbg !2653
  ret i8* %cond, !dbg !2656
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ged_request_interrupt(%struct.acpi_resource* %ares, i8* %context) #2 !dbg !2657 {
entry:
  %retval = alloca i32, align 4
  %ares.addr = alloca %struct.acpi_resource*, align 8
  %context.addr = alloca i8*, align 8
  %event = alloca %struct.acpi_ged_event*, align 8
  %irq = alloca i32, align 4
  %gsi = alloca i32, align 4
  %irqflags = alloca i32, align 4
  %geddev = alloca %struct.acpi_ged_device*, align 8
  %dev = alloca %struct.device*, align 8
  %handle = alloca i8*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  %evt_handle = alloca i8*, align 8
  %r = alloca %struct.resource, align 8
  %p = alloca %struct.acpi_resource_irq*, align 8
  %pext = alloca %struct.acpi_resource_extended_irq*, align 8
  %ev_name = alloca [5 x i8], align 1
  %trigger = alloca i8, align 1
  store %struct.acpi_resource* %ares, %struct.acpi_resource** %ares.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %ares.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.declare(metadata %struct.acpi_ged_event** %event, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.declare(metadata i32* %gsi, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.declare(metadata i32* %irqflags, metadata !3032, metadata !DIExpression()), !dbg !3033
  store i32 8192, i32* %irqflags, align 4, !dbg !3033
  call void @llvm.dbg.declare(metadata %struct.acpi_ged_device** %geddev, metadata !3034, metadata !DIExpression()), !dbg !3035
  %0 = load i8*, i8** %context.addr, align 8, !dbg !3036
  %1 = bitcast i8* %0 to %struct.acpi_ged_device*, !dbg !3036
  store %struct.acpi_ged_device* %1, %struct.acpi_ged_device** %geddev, align 8, !dbg !3035
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3037, metadata !DIExpression()), !dbg !3038
  %2 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !3039
  %dev1 = getelementptr inbounds %struct.acpi_ged_device, %struct.acpi_ged_device* %2, i32 0, i32 0, !dbg !3040
  %3 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !3040
  store %struct.device* %3, %struct.device** %dev, align 8, !dbg !3038
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3043, metadata !DIExpression()), !dbg !3045
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3045
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 24, !dbg !3045
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3045
  store %struct.fwnode_handle* %5, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3045
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3045
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %6) #5, !dbg !3045
  br i1 %call, label %cond.true, label %cond.false, !dbg !3045

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3046, metadata !DIExpression()), !dbg !3048
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3048
  %8 = bitcast %struct.fwnode_handle* %7 to i8*, !dbg !3048
  store i8* %8, i8** %__mptr, align 8, !dbg !3048
  br label %do.body, !dbg !3048

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3049

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !3048
  %add.ptr = getelementptr i8, i8* %9, i64 -16, !dbg !3048
  %10 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3048
  store %struct.acpi_device* %10, %struct.acpi_device** %tmp2, align 8, !dbg !3049
  %11 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !3048
  br label %cond.end, !dbg !3045

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3045

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %11, %do.end ], [ null, %cond.false ], !dbg !3045
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3045
  %12 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3045
  %call3 = call i8* @acpi_device_handle(%struct.acpi_device* %12) #5, !dbg !3051
  store i8* %call3, i8** %handle, align 8, !dbg !3042
  call void @llvm.dbg.declare(metadata i8** %evt_handle, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata %struct.resource* %r, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_irq** %p, metadata !3056, metadata !DIExpression()), !dbg !3058
  %13 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3059
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %13, i32 0, i32 2, !dbg !3060
  %irq4 = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_irq*, !dbg !3061
  store %struct.acpi_resource_irq* %irq4, %struct.acpi_resource_irq** %p, align 8, !dbg !3058
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_extended_irq** %pext, metadata !3062, metadata !DIExpression()), !dbg !3064
  %14 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3065
  %data5 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %14, i32 0, i32 2, !dbg !3066
  %extended_irq = bitcast %union.acpi_resource_data* %data5 to %struct.acpi_resource_extended_irq*, !dbg !3067
  store %struct.acpi_resource_extended_irq* %extended_irq, %struct.acpi_resource_extended_irq** %pext, align 8, !dbg !3064
  call void @llvm.dbg.declare(metadata [5 x i8]* %ev_name, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.declare(metadata i8* %trigger, metadata !3071, metadata !DIExpression()), !dbg !3072
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3073
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %15, i32 0, i32 0, !dbg !3075
  %16 = load i32, i32* %type, align 1, !dbg !3075
  %cmp = icmp eq i32 %16, 7, !dbg !3076
  br i1 %cmp, label %if.then, label %if.end, !dbg !3077

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !3078
  br label %return, !dbg !3078

if.end:                                           ; preds = %cond.end
  %17 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3079
  %call6 = call zeroext i1 @acpi_dev_resource_interrupt(%struct.acpi_resource* %17, i32 0, %struct.resource* %r) #5, !dbg !3081
  br i1 %call6, label %if.end8, label %if.then7, !dbg !3082

if.then7:                                         ; preds = %if.end
  %18 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3083
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3083
  store i32 1, i32* %retval, align 4, !dbg !3085
  br label %return, !dbg !3085

if.end8:                                          ; preds = %if.end
  %19 = load %struct.acpi_resource*, %struct.acpi_resource** %ares.addr, align 8, !dbg !3086
  %type9 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %19, i32 0, i32 0, !dbg !3088
  %20 = load i32, i32* %type9, align 1, !dbg !3088
  %cmp10 = icmp eq i32 %20, 0, !dbg !3089
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !3090

if.then11:                                        ; preds = %if.end8
  %21 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !3091
  %interrupts = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %21, i32 0, i32 6, !dbg !3093
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %interrupts, i64 0, i64 0, !dbg !3091
  %22 = load i8, i8* %arrayidx, align 1, !dbg !3091
  %conv = zext i8 %22 to i32, !dbg !3091
  store i32 %conv, i32* %gsi, align 4, !dbg !3094
  %23 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %p, align 8, !dbg !3095
  %triggering = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %23, i32 0, i32 1, !dbg !3096
  %24 = load i8, i8* %triggering, align 1, !dbg !3096
  store i8 %24, i8* %trigger, align 1, !dbg !3097
  br label %if.end15, !dbg !3098

if.else:                                          ; preds = %if.end8
  %25 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %pext, align 8, !dbg !3099
  %interrupts12 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %25, i32 0, i32 7, !dbg !3101
  %arrayidx13 = getelementptr [1 x i32], [1 x i32]* %interrupts12, i64 0, i64 0, !dbg !3099
  %26 = load i32, i32* %arrayidx13, align 1, !dbg !3099
  store i32 %26, i32* %gsi, align 4, !dbg !3102
  %27 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %pext, align 8, !dbg !3103
  %triggering14 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %27, i32 0, i32 1, !dbg !3104
  %28 = load i8, i8* %triggering14, align 1, !dbg !3104
  store i8 %28, i8* %trigger, align 1, !dbg !3105
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %start = getelementptr inbounds %struct.resource, %struct.resource* %r, i32 0, i32 0, !dbg !3106
  %29 = load i64, i64* %start, align 8, !dbg !3106
  %conv16 = trunc i64 %29 to i32, !dbg !3107
  store i32 %conv16, i32* %irq, align 4, !dbg !3108
  %30 = load i32, i32* %gsi, align 4, !dbg !3109
  switch i32 %30, label %sw.caserange [
  ], !dbg !3110

sw.bb:                                            ; preds = %sw.caserange
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %ev_name, i64 0, i64 0, !dbg !3111
  %31 = load i8, i8* %trigger, align 1, !dbg !3113
  %conv17 = zext i8 %31 to i32, !dbg !3113
  %cmp18 = icmp eq i32 %conv17, 1, !dbg !3114
  %32 = zext i1 %cmp18 to i64, !dbg !3113
  %cond20 = select i1 %cmp18, i32 69, i32 76, !dbg !3113
  %33 = load i32, i32* %gsi, align 4, !dbg !3115
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %cond20, i32 %33) #5, !dbg !3116
  %34 = load i8*, i8** %handle, align 8, !dbg !3117
  %arraydecay22 = getelementptr inbounds [5 x i8], [5 x i8]* %ev_name, i64 0, i64 0, !dbg !3117
  %call23 = call i32 @acpi_get_handle(i8* %34, i8* %arraydecay22, i8** %evt_handle) #5, !dbg !3117
  %tobool = icmp ne i32 %call23, 0, !dbg !3117
  br i1 %tobool, label %if.end25, label %if.then24, !dbg !3119

if.then24:                                        ; preds = %sw.bb
  br label %sw.epilog, !dbg !3120

sw.caserange:                                     ; preds = %if.end15
  %35 = sub i32 %30, 0, !dbg !3116
  %inbounds = icmp ule i32 %35, 255, !dbg !3116
  br i1 %inbounds, label %sw.bb, label %sw.default, !dbg !3116

if.end25:                                         ; preds = %sw.bb
  br label %sw.default, !dbg !3117

sw.default:                                       ; preds = %if.end25, %sw.caserange
  %36 = load i8*, i8** %handle, align 8, !dbg !3121
  %call26 = call i32 @acpi_get_handle(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %evt_handle) #5, !dbg !3121
  %tobool27 = icmp ne i32 %call26, 0, !dbg !3121
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !3123

if.then28:                                        ; preds = %sw.default
  br label %sw.epilog, !dbg !3124

if.end29:                                         ; preds = %sw.default
  %37 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3125
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3125
  store i32 1, i32* %retval, align 4, !dbg !3126
  br label %return, !dbg !3126

sw.epilog:                                        ; preds = %if.then28, %if.then24
  %38 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3127
  %call30 = call i8* @devm_kzalloc(%struct.device* %38, i64 40, i32 3264) #5, !dbg !3128
  %39 = bitcast i8* %call30 to %struct.acpi_ged_event*, !dbg !3128
  store %struct.acpi_ged_event* %39, %struct.acpi_ged_event** %event, align 8, !dbg !3129
  %40 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3130
  %tobool31 = icmp ne %struct.acpi_ged_event* %40, null, !dbg !3130
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !3132

if.then32:                                        ; preds = %sw.epilog
  store i32 1, i32* %retval, align 4, !dbg !3133
  br label %return, !dbg !3133

if.end33:                                         ; preds = %sw.epilog
  %41 = load i32, i32* %gsi, align 4, !dbg !3134
  %42 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3135
  %gsi34 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %42, i32 0, i32 2, !dbg !3136
  store i32 %41, i32* %gsi34, align 8, !dbg !3137
  %43 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3138
  %44 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3139
  %dev35 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %44, i32 0, i32 1, !dbg !3140
  store %struct.device* %43, %struct.device** %dev35, align 8, !dbg !3141
  %45 = load i32, i32* %irq, align 4, !dbg !3142
  %46 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3143
  %irq36 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %46, i32 0, i32 3, !dbg !3144
  store i32 %45, i32* %irq36, align 4, !dbg !3145
  %47 = load i8*, i8** %evt_handle, align 8, !dbg !3146
  %48 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3147
  %handle37 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %48, i32 0, i32 4, !dbg !3148
  store i8* %47, i8** %handle37, align 8, !dbg !3149
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %r, i32 0, i32 3, !dbg !3150
  %49 = load i64, i64* %flags, align 8, !dbg !3150
  %and = and i64 %49, 16, !dbg !3152
  %tobool38 = icmp ne i64 %and, 0, !dbg !3152
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !3153

if.then39:                                        ; preds = %if.end33
  %50 = load i32, i32* %irqflags, align 4, !dbg !3154
  %or = or i32 %50, 128, !dbg !3154
  store i32 %or, i32* %irqflags, align 4, !dbg !3154
  br label %if.end40, !dbg !3155

if.end40:                                         ; preds = %if.then39, %if.end33
  %51 = load i32, i32* %irq, align 4, !dbg !3156
  %52 = load i32, i32* %irqflags, align 4, !dbg !3158
  %conv41 = zext i32 %52 to i64, !dbg !3158
  %53 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3159
  %54 = bitcast %struct.acpi_ged_event* %53 to i8*, !dbg !3159
  %call42 = call i32 @request_threaded_irq(i32 %51, i32 (i32, i8*)* null, i32 (i32, i8*)* @acpi_ged_irq_handler, i64 %conv41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %54) #5, !dbg !3160
  %tobool43 = icmp ne i32 %call42, 0, !dbg !3160
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3161

if.then44:                                        ; preds = %if.end40
  %55 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3162
  %56 = load i32, i32* %irq, align 4, !dbg !3162
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %56) #6, !dbg !3162
  store i32 1, i32* %retval, align 4, !dbg !3164
  br label %return, !dbg !3164

if.end45:                                         ; preds = %if.end40
  %57 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3165
  %node = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %57, i32 0, i32 0, !dbg !3166
  %58 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %geddev, align 8, !dbg !3167
  %event_list = getelementptr inbounds %struct.acpi_ged_device, %struct.acpi_ged_device* %58, i32 0, i32 1, !dbg !3168
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %event_list) #5, !dbg !3169
  store i32 0, i32* %retval, align 4, !dbg !3170
  br label %return, !dbg !3170

return:                                           ; preds = %if.end45, %if.then44, %if.then32, %if.end29, %if.then7, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !3171
  ret i32 %59, !dbg !3171
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !3172 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3175, metadata !DIExpression()), !dbg !3176
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3177, metadata !DIExpression()), !dbg !3178
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3179
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3180
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3181
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !3182
  ret void, !dbg !3183
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_dev_resource_interrupt(%struct.acpi_resource*, i32, %struct.resource*) #1

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #1

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ged_irq_handler(i32 %irq, i8* %data) #2 !dbg !2499 {
entry:
  %irq.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %event = alloca %struct.acpi_ged_event*, align 8
  %acpi_ret = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3184, metadata !DIExpression()), !dbg !3185
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.declare(metadata %struct.acpi_ged_event** %event, metadata !3188, metadata !DIExpression()), !dbg !3189
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3190
  %1 = bitcast i8* %0 to %struct.acpi_ged_event*, !dbg !3190
  store %struct.acpi_ged_event* %1, %struct.acpi_ged_event** %event, align 8, !dbg !3189
  call void @llvm.dbg.declare(metadata i32* %acpi_ret, metadata !3191, metadata !DIExpression()), !dbg !3192
  %2 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3193
  %handle = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %2, i32 0, i32 4, !dbg !3194
  %3 = load i8*, i8** %handle, align 8, !dbg !3194
  %4 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3195
  %gsi = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %4, i32 0, i32 2, !dbg !3196
  %5 = load i32, i32* %gsi, align 8, !dbg !3196
  %conv = zext i32 %5 to i64, !dbg !3195
  %call = call i32 @acpi_execute_simple_method(i8* %3, i8* null, i64 %conv) #5, !dbg !3197
  store i32 %call, i32* %acpi_ret, align 4, !dbg !3198
  %6 = load i32, i32* %acpi_ret, align 4, !dbg !3199
  %tobool = icmp ne i32 %6, 0, !dbg !3199
  br i1 %tobool, label %if.then, label %if.end3, !dbg !3201

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3202

do.body:                                          ; preds = %if.then
  %7 = load i8, i8* @acpi_ged_irq_handler.__print_once, align 1, !dbg !3203
  %tobool1 = trunc i8 %7 to i1, !dbg !3203
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !3206

if.then2:                                         ; preds = %do.body
  store i8 1, i8* @acpi_ged_irq_handler.__print_once, align 1, !dbg !3207
  %8 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %event, align 8, !dbg !3207
  %dev = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %8, i32 0, i32 1, !dbg !3207
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3207
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3207
  br label %if.end, !dbg !3207

if.end:                                           ; preds = %if.then2, %do.body
  br label %do.end, !dbg !3206

do.end:                                           ; preds = %if.end
  br label %if.end3, !dbg !3206

if.end3:                                          ; preds = %do.end, %entry
  ret i32 1, !dbg !3209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #2 !dbg !3210 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3213, metadata !DIExpression()), !dbg !3214
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3215, metadata !DIExpression()), !dbg !3216
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3217
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3218
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3219
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3219
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3220
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #5, !dbg !3221
  ret void, !dbg !3222
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_execute_simple_method(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !3223 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3226, metadata !DIExpression()), !dbg !3227
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3228, metadata !DIExpression()), !dbg !3229
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3230, metadata !DIExpression()), !dbg !3231
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3232
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3234
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3235
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #5, !dbg !3236
  br i1 %call, label %if.end, label %if.then, !dbg !3237

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3238

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3239
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3240
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3241
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3242
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3243
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3244
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3245
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3246
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3247
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3248
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3249
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3250
  br label %do.body, !dbg !3251

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3252

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3254

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3252

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3256
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3256
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3256
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3256
  br label %do.end7, !dbg !3256

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3252

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !3259 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3262, metadata !DIExpression()), !dbg !3263
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3266, metadata !DIExpression()), !dbg !3267
  ret i1 true, !dbg !3268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3269 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3274, metadata !DIExpression()), !dbg !3275
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3276
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3277
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3278
  store i8* %0, i8** %driver_data, align 8, !dbg !3279
  ret void, !dbg !3280
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3281 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3286, metadata !DIExpression()), !dbg !3287
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3288
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3289
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !3290
  ret i8* %call, !dbg !3291
}

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #2 !dbg !3292 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3293, metadata !DIExpression()), !dbg !3294
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3295
  call void @__list_del_entry(%struct.list_head* %0) #5, !dbg !3296
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3297
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3298
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3299
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3300
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3301
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3302
  ret void, !dbg !3303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3304 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3307, metadata !DIExpression()), !dbg !3308
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3309
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3310
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3310
  ret i8* %1, !dbg !3311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #2 !dbg !3312 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3313, metadata !DIExpression()), !dbg !3314
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3315
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #5, !dbg !3317
  br i1 %call, label %if.end, label %if.then, !dbg !3318

if.then:                                          ; preds = %entry
  br label %return, !dbg !3319

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3320
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3321
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3321
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3322
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3323
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3323
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #5, !dbg !3324
  br label %return, !dbg !3325

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #2 !dbg !3326 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3329, metadata !DIExpression()), !dbg !3330
  ret i1 true, !dbg !3331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !3332 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3333, metadata !DIExpression()), !dbg !3334
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3335, metadata !DIExpression()), !dbg !3336
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3337
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3338
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3339
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3340
  br label %do.body, !dbg !3341

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3342

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3344

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3342

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3346
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3346
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3346
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3346
  br label %do.end5, !dbg !3346

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3342

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3348
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2506, !2507, !2508, !2509}
!llvm.ident = !{!2510}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ged_driver_init174", scope: !2, file: !3, line: 196, type: !81, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !75, globals: !2437, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/evged.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !70}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !65, line: 11, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 10, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74}
!73 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!75 = !{!76, !79, !81, !82, !2426, !2428, !601, !2429}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !78, line: 76, flags: DIFlagFwdDecl)
!78 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !80, line: 148, baseType: !7)
!80 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !84, line: 351, size: 10880, elements: !85)
!84 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!85 = !{!86, !88, !91, !2152, !2153, !2154, !2155, !2156, !2157, !2166, !2183, !2257, !2286, !2310, !2331, !2338, !2347, !2379, !2393, !2415, !2419, !2420, !2421, !2422, !2423, !2424, !2425}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !83, file: !84, line: 352, baseType: !87, size: 32)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !83, file: !84, line: 353, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !90, line: 424, baseType: !81)
!90 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !83, file: !84, line: 354, baseType: !92, size: 192, offset: 128)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !93, line: 17, size: 192, elements: !94)
!93 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !97, !2151}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !92, file: !93, line: 18, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !92, file: !93, line: 19, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !93, line: 110, size: 1152, elements: !101)
!101 = !{!102, !106, !110, !118, !2093, !2097, !2101, !2106, !2110, !2111, !2115, !2119, !2123, !2134, !2135, !2136, !2137, !2147}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !100, file: !93, line: 111, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!96, !96}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !100, file: !93, line: 112, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !96}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !100, file: !93, line: 113, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !80, line: 30, baseType: !115)
!115 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !100, file: !93, line: 114, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !116, !124}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !127)
!127 = !{!128, !1629, !1631, !1634, !1635, !1686, !1780, !1781, !1782, !1783, !1784, !1793, !1898, !1911, !2018, !2019, !2023, !2025, !2026, !2027, !2031, !2037, !2038, !2041, !2042, !2043, !2046, !2047, !2048, !2049, !2081, !2082, !2083, !2086, !2089, !2090, !2091, !2092}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !126, file: !30, line: 462, baseType: !129, size: 512)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !130, line: 64, size: 512, elements: !131)
!130 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !136, !142, !144, !204, !1466, !1619, !1624, !1625, !1626, !1627, !1628}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !130, line: 65, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !129, file: !130, line: 66, baseType: !137, size: 128, offset: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !80, line: 178, size: 128, elements: !138)
!138 = !{!139, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !80, line: 179, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !137, file: !80, line: 179, baseType: !140, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !129, file: !130, line: 67, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !129, file: !130, line: 68, baseType: !145, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !130, line: 192, size: 704, elements: !147)
!147 = !{!148, !149, !165, !166}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !146, file: !130, line: 193, baseType: !137, size: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !146, file: !130, line: 194, baseType: !150, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !151, line: 83, baseType: !152)
!151 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !151, line: 71, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !151, line: 72, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !151, line: 72, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !155, file: !151, line: 73, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !151, line: 20, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !158, file: !151, line: 21, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !162, line: 25, baseType: !163)
!162 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 25, elements: !164)
!164 = !{}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !146, file: !130, line: 195, baseType: !129, size: 512, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !146, file: !130, line: 196, baseType: !167, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !130, line: 156, size: 192, elements: !170)
!170 = !{!171, !176, !181}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !169, file: !130, line: 157, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!87, !145, !143}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !130, line: 158, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!133, !145, !143}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !169, file: !130, line: 159, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!87, !145, !143, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !130, line: 148, size: 20736, elements: !188)
!188 = !{!189, !194, !198, !199, !203}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !187, file: !130, line: 149, baseType: !190, size: 192)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 192, elements: !192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!192 = !{!193}
!193 = !DISubrange(count: 3)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !187, file: !130, line: 150, baseType: !195, size: 4096, offset: 192)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 4096, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !187, file: !130, line: 151, baseType: !87, size: 32, offset: 4288)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !187, file: !130, line: 152, baseType: !200, size: 16384, offset: 4320)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16384, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 2048)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !187, file: !130, line: 153, baseType: !87, size: 32, offset: 20704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !129, file: !130, line: 69, baseType: !205, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !130, line: 138, size: 448, elements: !207)
!207 = !{!208, !212, !242, !244, !1414, !1445, !1449}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !206, file: !130, line: 139, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !143}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !206, file: !130, line: 140, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !216, line: 230, size: 128, elements: !217)
!216 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !234}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !215, file: !216, line: 231, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !143, !227, !191}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !80, line: 60, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !224, line: 73, baseType: !225)
!224 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !224, line: 15, baseType: !226)
!226 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !216, line: 30, size: 128, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !216, line: 31, baseType: !133, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !228, file: !216, line: 32, baseType: !232, size: 16, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !80, line: 19, baseType: !233)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !215, file: !216, line: 232, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!222, !143, !227, !133, !238}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 55, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !224, line: 72, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !224, line: 16, baseType: !241)
!241 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !206, file: !130, line: 141, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !206, file: !130, line: 142, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !216, line: 84, size: 320, elements: !249)
!249 = !{!250, !251, !255, !1411, !1412}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !216, line: 85, baseType: !133, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !248, file: !216, line: 86, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!232, !143, !227, !87}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !248, file: !216, line: 88, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!232, !143, !259, !87}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !216, line: 168, size: 448, elements: !261)
!261 = !{!262, !263, !264, !265, !275, !276}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !260, file: !216, line: 169, baseType: !228, size: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !260, file: !216, line: 170, baseType: !238, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !260, file: !216, line: 171, baseType: !81, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !260, file: !216, line: 172, baseType: !266, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!222, !269, !143, !259, !191, !272, !238}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !271, line: 526, flags: DIFlagFwdDecl)
!271 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !80, line: 46, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !224, line: 88, baseType: !274)
!274 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !260, file: !216, line: 174, baseType: !266, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !260, file: !216, line: 176, baseType: !277, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!87, !269, !143, !259, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !282, line: 305, size: 1472, elements: !283)
!282 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!283 = !{!284, !285, !286, !287, !288, !296, !297, !1385, !1391, !1392, !1397, !1398, !1401, !1405, !1406, !1407, !1408, !1409}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !281, file: !282, line: 308, baseType: !241, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !281, file: !282, line: 309, baseType: !241, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !281, file: !282, line: 313, baseType: !280, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !281, file: !282, line: 313, baseType: !280, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !281, file: !282, line: 315, baseType: !289, size: 192, align: 64, offset: 256)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !290, line: 24, size: 192, align: 64, elements: !291)
!290 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !289, file: !290, line: 25, baseType: !241, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !289, file: !290, line: 26, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !289, file: !290, line: 27, baseType: !294, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !281, file: !282, line: 323, baseType: !241, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !281, file: !282, line: 327, baseType: !298, size: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !282, line: 388, size: 7296, elements: !300)
!300 = !{!301, !1381}
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !282, line: 389, baseType: !302, size: 7296)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !282, line: 389, size: 7296, elements: !303)
!303 = !{!304, !305, !309, !315, !319, !320, !321, !322, !323, !331, !336, !337, !338, !339, !348, !349, !350, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !385, !393, !396, !444, !445, !1351, !1352, !1355, !1359, !1360, !1363, !1364, !1365, !1368, !1380}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !302, file: !282, line: 390, baseType: !280, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !302, file: !282, line: 391, baseType: !306, size: 64, offset: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !290, line: 31, size: 64, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !306, file: !290, line: 32, baseType: !294, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !302, file: !282, line: 392, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !311, line: 23, baseType: !312)
!311 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !313, line: 31, baseType: !314)
!313 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!314 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !302, file: !282, line: 394, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!241, !269, !241, !241, !241, !241}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !302, file: !282, line: 398, baseType: !241, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !302, file: !282, line: 399, baseType: !241, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !302, file: !282, line: 405, baseType: !241, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !302, file: !282, line: 406, baseType: !241, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !302, file: !282, line: 407, baseType: !324, size: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !271, line: 286, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 286, size: 64, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !326, file: !271, line: 286, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !330, line: 18, baseType: !241)
!330 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!331 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !302, file: !282, line: 416, baseType: !332, size: 32, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !80, line: 168, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 166, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !333, file: !80, line: 167, baseType: !87, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !302, file: !282, line: 428, baseType: !332, size: 32, offset: 608)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !302, file: !282, line: 437, baseType: !332, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !302, file: !282, line: 447, baseType: !332, size: 32, offset: 672)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !302, file: !282, line: 450, baseType: !340, size: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !341, line: 13, baseType: !342)
!341 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !80, line: 175, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 173, size: 64, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !343, file: !80, line: 174, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !311, line: 22, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !313, line: 30, baseType: !274)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !302, file: !282, line: 452, baseType: !87, size: 32, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !302, file: !282, line: 454, baseType: !150, offset: 800)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !302, file: !282, line: 457, baseType: !351, size: 256, offset: 832)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !352, line: 35, size: 256, elements: !353)
!352 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !356, !358}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !351, file: !352, line: 36, baseType: !340, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !351, file: !352, line: 42, baseType: !340, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !351, file: !352, line: 46, baseType: !357, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !151, line: 29, baseType: !158)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !351, file: !352, line: 47, baseType: !137, size: 128, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !302, file: !282, line: 459, baseType: !137, size: 128, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !302, file: !282, line: 466, baseType: !241, size: 64, offset: 1216)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !302, file: !282, line: 467, baseType: !241, size: 64, offset: 1280)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !302, file: !282, line: 469, baseType: !241, size: 64, offset: 1344)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !302, file: !282, line: 470, baseType: !241, size: 64, offset: 1408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !302, file: !282, line: 471, baseType: !342, size: 64, offset: 1472)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !302, file: !282, line: 472, baseType: !241, size: 64, offset: 1536)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !302, file: !282, line: 473, baseType: !241, size: 64, offset: 1600)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !302, file: !282, line: 474, baseType: !241, size: 64, offset: 1664)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !302, file: !282, line: 475, baseType: !241, size: 64, offset: 1728)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !302, file: !282, line: 477, baseType: !150, offset: 1792)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !302, file: !282, line: 478, baseType: !241, size: 64, offset: 1792)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !302, file: !282, line: 478, baseType: !241, size: 64, offset: 1856)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !302, file: !282, line: 478, baseType: !241, size: 64, offset: 1920)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !302, file: !282, line: 478, baseType: !241, size: 64, offset: 1984)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !302, file: !282, line: 479, baseType: !241, size: 64, offset: 2048)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !302, file: !282, line: 479, baseType: !241, size: 64, offset: 2112)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !302, file: !282, line: 479, baseType: !241, size: 64, offset: 2176)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !302, file: !282, line: 480, baseType: !241, size: 64, offset: 2240)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !302, file: !282, line: 480, baseType: !241, size: 64, offset: 2304)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !302, file: !282, line: 480, baseType: !241, size: 64, offset: 2368)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !302, file: !282, line: 480, baseType: !241, size: 64, offset: 2432)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !302, file: !282, line: 482, baseType: !382, size: 2816, offset: 2496)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 2816, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 44)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !302, file: !282, line: 488, baseType: !386, size: 256, offset: 5312)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !387, line: 60, size: 256, elements: !388)
!387 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !386, file: !387, line: 61, baseType: !390, size: 256)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 4)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !302, file: !282, line: 490, baseType: !394, size: 64, offset: 5568)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !282, line: 490, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !302, file: !282, line: 493, baseType: !397, size: 896, offset: 5632)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !398, line: 53, baseType: !399)
!398 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 13, size: 896, elements: !400)
!400 = !{!401, !402, !403, !404, !407, !408, !415, !416, !436, !437, !440}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !399, file: !398, line: 18, baseType: !310, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !399, file: !398, line: 28, baseType: !342, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !399, file: !398, line: 31, baseType: !351, size: 256, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !399, file: !398, line: 32, baseType: !405, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !398, line: 32, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !399, file: !398, line: 37, baseType: !233, size: 16, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !399, file: !398, line: 40, baseType: !409, size: 192, offset: 512)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !410, line: 53, size: 192, elements: !411)
!410 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!411 = !{!412, !413, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !409, file: !410, line: 54, baseType: !340, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !409, file: !410, line: 55, baseType: !150, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !409, file: !410, line: 59, baseType: !137, size: 128, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !399, file: !398, line: 41, baseType: !81, size: 64, offset: 704)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !399, file: !398, line: 42, baseType: !417, size: 64, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !420, line: 13, size: 896, elements: !421)
!420 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !419, file: !420, line: 14, baseType: !81, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !419, file: !420, line: 15, baseType: !241, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !419, file: !420, line: 17, baseType: !241, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !419, file: !420, line: 17, baseType: !241, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !419, file: !420, line: 19, baseType: !226, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !419, file: !420, line: 21, baseType: !226, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !419, file: !420, line: 22, baseType: !226, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !419, file: !420, line: 23, baseType: !226, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !419, file: !420, line: 24, baseType: !226, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !419, file: !420, line: 25, baseType: !226, size: 64, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !419, file: !420, line: 26, baseType: !226, size: 64, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !419, file: !420, line: 27, baseType: !226, size: 64, offset: 704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !419, file: !420, line: 28, baseType: !226, size: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !419, file: !420, line: 29, baseType: !226, size: 64, offset: 832)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !399, file: !398, line: 44, baseType: !332, size: 32, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !399, file: !398, line: 50, baseType: !438, size: 16, offset: 864)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !311, line: 19, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !313, line: 24, baseType: !233)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !399, file: !398, line: 51, baseType: !441, size: 16, offset: 880)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !311, line: 18, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !313, line: 23, baseType: !443)
!443 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !282, line: 495, baseType: !241, size: 64, offset: 6528)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !302, file: !282, line: 497, baseType: !446, size: 64, offset: 6592)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !282, line: 381, size: 384, elements: !448)
!448 = !{!449, !450, !1350}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !447, file: !282, line: 382, baseType: !332, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !447, file: !282, line: 383, baseType: !451, size: 128, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !282, line: 376, size: 128, elements: !452)
!452 = !{!453, !1348}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !451, file: !282, line: 377, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !456, line: 640, size: 48640, elements: !457)
!456 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458, !466, !468, !469, !475, !476, !477, !478, !479, !480, !481, !482, !486, !504, !515, !610, !611, !612, !623, !624, !626, !627, !628, !629, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !708, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !764, !766, !767, !768, !780, !782, !783, !784, !785, !786, !792, !793, !794, !795, !796, !797, !798, !810, !815, !819, !820, !821, !824, !828, !831, !834, !837, !840, !843, !846, !849, !855, !856, !857, !863, !864, !865, !866, !867, !876, !877, !878, !879, !880, !885, !886, !887, !890, !891, !894, !897, !900, !903, !906, !909, !910, !990, !993, !996, !997, !1000, !1001, !1002, !1008, !1009, !1010, !1023, !1024, !1025, !1035, !1040, !1043, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !455, file: !456, line: 646, baseType: !459, size: 128)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !460, line: 56, size: 128, elements: !461)
!460 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !460, line: 57, baseType: !241, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !459, file: !460, line: 58, baseType: !464, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !311, line: 21, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !313, line: 27, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !455, file: !456, line: 649, baseType: !467, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !226)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !455, file: !456, line: 657, baseType: !81, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !455, file: !456, line: 658, baseType: !470, size: 32, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !471, line: 113, baseType: !472)
!471 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !471, line: 111, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !472, file: !471, line: 112, baseType: !332, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !456, line: 660, baseType: !7, size: 32, offset: 288)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !455, file: !456, line: 661, baseType: !7, size: 32, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !455, file: !456, line: 684, baseType: !87, size: 32, offset: 352)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !455, file: !456, line: 686, baseType: !87, size: 32, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !455, file: !456, line: 687, baseType: !87, size: 32, offset: 416)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !455, file: !456, line: 688, baseType: !87, size: 32, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !455, file: !456, line: 689, baseType: !7, size: 32, offset: 480)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !455, file: !456, line: 691, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !456, line: 691, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !455, file: !456, line: 692, baseType: !487, size: 832, offset: 576)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !456, line: 451, size: 832, elements: !488)
!488 = !{!489, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !487, file: !456, line: 453, baseType: !490, size: 128)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !456, line: 325, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !490, file: !456, line: 326, baseType: !241, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !490, file: !456, line: 327, baseType: !464, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !487, file: !456, line: 454, baseType: !289, size: 192, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !487, file: !456, line: 455, baseType: !137, size: 128, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !487, file: !456, line: 456, baseType: !7, size: 32, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !487, file: !456, line: 458, baseType: !310, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !487, file: !456, line: 459, baseType: !310, size: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !487, file: !456, line: 460, baseType: !310, size: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !487, file: !456, line: 461, baseType: !310, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !487, file: !456, line: 463, baseType: !310, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !487, file: !456, line: 465, baseType: !503, offset: 832)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !456, line: 415, elements: !164)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !455, file: !456, line: 693, baseType: !505, size: 384, offset: 1408)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !456, line: 489, size: 384, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !505, file: !456, line: 490, baseType: !137, size: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !505, file: !456, line: 491, baseType: !241, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !505, file: !456, line: 492, baseType: !241, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !505, file: !456, line: 493, baseType: !7, size: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !505, file: !456, line: 494, baseType: !233, size: 16, offset: 288)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !505, file: !456, line: 495, baseType: !233, size: 16, offset: 304)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !505, file: !456, line: 497, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !455, file: !456, line: 697, baseType: !516, size: 1792, offset: 1792)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !456, line: 507, size: 1792, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !607, !608}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !516, file: !456, line: 508, baseType: !289, size: 192, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !516, file: !456, line: 515, baseType: !310, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !516, file: !456, line: 516, baseType: !310, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !516, file: !456, line: 517, baseType: !310, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !516, file: !456, line: 518, baseType: !310, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !516, file: !456, line: 519, baseType: !310, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !516, file: !456, line: 526, baseType: !346, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !516, file: !456, line: 527, baseType: !310, size: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !456, line: 528, baseType: !7, size: 32, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !516, file: !456, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !516, file: !456, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !516, file: !456, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !516, file: !456, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !516, file: !456, line: 563, baseType: !532, size: 512, offset: 704)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !533)
!533 = !{!534, !542, !543, !548, !600, !604, !605, !606}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !6, line: 119, baseType: !535, size: 256)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !536, line: 9, size: 256, elements: !537)
!536 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !536, line: 10, baseType: !289, size: 192, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !535, file: !536, line: 11, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !541, line: 29, baseType: !346)
!541 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !532, file: !6, line: 120, baseType: !540, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !532, file: !6, line: 121, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!5, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !532, file: !6, line: 122, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !551)
!551 = !{!552, !572, !573, !576, !586, !587, !595, !599}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !550, file: !6, line: 160, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !554, file: !6, line: 215, baseType: !357)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !554, file: !6, line: 216, baseType: !7, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !554, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !554, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !554, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !554, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !554, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !554, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !554, file: !6, line: 233, baseType: !540, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !554, file: !6, line: 234, baseType: !547, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !554, file: !6, line: 235, baseType: !540, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !554, file: !6, line: 236, baseType: !547, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !554, file: !6, line: 237, baseType: !569, size: 4096, offset: 512)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 4096, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 8)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !550, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !550, file: !6, line: 162, baseType: !574, size: 32, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !80, line: 27, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !224, line: 96, baseType: !87)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !550, file: !6, line: 163, baseType: !577, size: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !578, line: 276, baseType: !579)
!578 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !578, line: 276, size: 32, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !579, file: !578, line: 276, baseType: !582, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !578, line: 70, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !578, line: 65, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !583, file: !578, line: 66, baseType: !7, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !550, file: !6, line: 164, baseType: !547, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !550, file: !6, line: 165, baseType: !588, size: 128, offset: 256)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !536, line: 14, size: 128, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !588, file: !536, line: 15, baseType: !591, size: 128)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !290, line: 125, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !591, file: !290, line: 126, baseType: !306, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !591, file: !290, line: 127, baseType: !294, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !550, file: !6, line: 166, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!540}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !550, file: !6, line: 167, baseType: !540, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !532, file: !6, line: 123, baseType: !601, size: 8, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !311, line: 17, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !313, line: 21, baseType: !603)
!603 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !532, file: !6, line: 124, baseType: !601, size: 8, offset: 456)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !532, file: !6, line: 125, baseType: !601, size: 8, offset: 464)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !532, file: !6, line: 126, baseType: !601, size: 8, offset: 472)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !516, file: !456, line: 572, baseType: !532, size: 512, offset: 1216)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !516, file: !456, line: 580, baseType: !609, size: 64, offset: 1728)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !455, file: !456, line: 721, baseType: !7, size: 32, offset: 3584)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !455, file: !456, line: 722, baseType: !87, size: 32, offset: 3616)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !455, file: !456, line: 723, baseType: !613, size: 64, offset: 3648)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !616, line: 17, baseType: !617)
!616 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !616, line: 17, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !617, file: !616, line: 17, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 64, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 1)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !455, file: !456, line: 724, baseType: !615, size: 64, offset: 3712)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !455, file: !456, line: 749, baseType: !625, offset: 3776)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !456, line: 290, elements: !164)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !455, file: !456, line: 751, baseType: !137, size: 128, offset: 3776)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !455, file: !456, line: 757, baseType: !298, size: 64, offset: 3904)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !455, file: !456, line: 758, baseType: !298, size: 64, offset: 3968)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !455, file: !456, line: 761, baseType: !630, size: 320, offset: 4032)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !387, line: 34, size: 320, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !630, file: !387, line: 35, baseType: !310, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !630, file: !387, line: 36, baseType: !634, size: 256, offset: 64)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 256, elements: !391)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !455, file: !456, line: 766, baseType: !87, size: 32, offset: 4352)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !455, file: !456, line: 767, baseType: !87, size: 32, offset: 4384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !455, file: !456, line: 768, baseType: !87, size: 32, offset: 4416)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !455, file: !456, line: 770, baseType: !87, size: 32, offset: 4448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !455, file: !456, line: 772, baseType: !241, size: 64, offset: 4480)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !455, file: !456, line: 775, baseType: !7, size: 32, offset: 4544)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !455, file: !456, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !455, file: !456, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !455, file: !456, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !455, file: !456, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !455, file: !456, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !455, file: !456, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !455, file: !456, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !455, file: !456, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !455, file: !456, line: 831, baseType: !241, size: 64, offset: 4672)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !455, file: !456, line: 833, baseType: !651, size: 384, offset: 4736)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !652)
!652 = !{!653, !658}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !651, file: !12, line: 26, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!226, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !12, line: 27, baseType: !659, size: 320, offset: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !12, line: 27, size: 320, elements: !660)
!660 = !{!661, !671, !698}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !659, file: !12, line: 36, baseType: !662, size: 320)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !12, line: 29, size: 320, elements: !663)
!663 = !{!664, !666, !667, !668, !669, !670}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !662, file: !12, line: 30, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !662, file: !12, line: 31, baseType: !464, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !12, line: 32, baseType: !464, size: 32, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !662, file: !12, line: 33, baseType: !464, size: 32, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !662, file: !12, line: 34, baseType: !310, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !662, file: !12, line: 35, baseType: !665, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !659, file: !12, line: 46, baseType: !672, size: 192)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !12, line: 38, size: 192, elements: !673)
!673 = !{!674, !675, !676, !697}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !672, file: !12, line: 39, baseType: !574, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !12, line: 41, baseType: !677, size: 64, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !12, line: 41, size: 64, elements: !678)
!678 = !{!679, !687}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !677, file: !12, line: 42, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !682, line: 7, size: 128, elements: !683)
!682 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684, !686}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !681, file: !682, line: 8, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !224, line: 93, baseType: !274)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !681, file: !682, line: 9, baseType: !274, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !677, file: !12, line: 43, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !690, line: 7, size: 64, elements: !691)
!690 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !696}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !689, file: !690, line: 8, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !690, line: 5, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !311, line: 20, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !313, line: 26, baseType: !87)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !689, file: !690, line: 9, baseType: !694, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !672, file: !12, line: 45, baseType: !310, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !659, file: !12, line: 54, baseType: !699, size: 256)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !12, line: 48, size: 256, elements: !700)
!700 = !{!701, !704, !705, !706, !707}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !699, file: !12, line: 49, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !699, file: !12, line: 50, baseType: !87, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !699, file: !12, line: 51, baseType: !87, size: 32, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !699, file: !12, line: 52, baseType: !241, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !699, file: !12, line: 53, baseType: !241, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !455, file: !456, line: 835, baseType: !709, size: 32, offset: 5120)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !80, line: 22, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !224, line: 28, baseType: !87)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !455, file: !456, line: 836, baseType: !709, size: 32, offset: 5152)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !455, file: !456, line: 840, baseType: !241, size: 64, offset: 5184)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !455, file: !456, line: 849, baseType: !454, size: 64, offset: 5248)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !455, file: !456, line: 852, baseType: !454, size: 64, offset: 5312)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !455, file: !456, line: 857, baseType: !137, size: 128, offset: 5376)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !455, file: !456, line: 858, baseType: !137, size: 128, offset: 5504)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !455, file: !456, line: 859, baseType: !454, size: 64, offset: 5632)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !455, file: !456, line: 867, baseType: !137, size: 128, offset: 5696)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !455, file: !456, line: 868, baseType: !137, size: 128, offset: 5824)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !455, file: !456, line: 871, baseType: !721, size: 64, offset: 5952)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !723, line: 59, size: 768, elements: !724)
!723 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !726, !727, !728, !739, !740, !747, !756}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !722, file: !723, line: 61, baseType: !470, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !722, file: !723, line: 62, baseType: !7, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !723, line: 63, baseType: !150, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !722, file: !723, line: 65, baseType: !729, size: 256, offset: 64)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !391)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !80, line: 182, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !730, file: !80, line: 183, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !80, line: 186, size: 128, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !80, line: 187, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !734, file: !80, line: 187, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !722, file: !723, line: 66, baseType: !730, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !722, file: !723, line: 68, baseType: !741, size: 128, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !742, line: 40, baseType: !743)
!742 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !742, line: 36, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !743, file: !742, line: 37, baseType: !150)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !743, file: !742, line: 38, baseType: !137, size: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !722, file: !723, line: 69, baseType: !748, size: 128, align: 64, offset: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !80, line: 216, size: 128, align: 64, elements: !749)
!749 = !{!750, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !80, line: 217, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !748, file: !80, line: 218, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !751}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !722, file: !723, line: 70, baseType: !757, size: 128, offset: 640)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 128, elements: !621)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !723, line: 54, size: 128, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !758, file: !723, line: 55, baseType: !87, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !758, file: !723, line: 56, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !723, line: 56, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !455, file: !456, line: 872, baseType: !765, size: 512, offset: 6016)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 512, elements: !391)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !455, file: !456, line: 873, baseType: !137, size: 128, offset: 6528)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !455, file: !456, line: 874, baseType: !137, size: 128, offset: 6656)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !455, file: !456, line: 876, baseType: !769, size: 64, offset: 6784)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !771, line: 26, size: 192, elements: !772)
!771 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !770, file: !771, line: 27, baseType: !7, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !770, file: !771, line: 28, baseType: !775, size: 128, offset: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !776, line: 43, size: 128, elements: !777)
!776 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !776, line: 44, baseType: !357)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !775, file: !776, line: 45, baseType: !137, size: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !455, file: !456, line: 879, baseType: !781, size: 64, offset: 6848)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !455, file: !456, line: 882, baseType: !781, size: 64, offset: 6912)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !455, file: !456, line: 884, baseType: !310, size: 64, offset: 6976)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !455, file: !456, line: 885, baseType: !310, size: 64, offset: 7040)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !455, file: !456, line: 890, baseType: !310, size: 64, offset: 7104)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !455, file: !456, line: 891, baseType: !787, size: 128, offset: 7168)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !456, line: 242, size: 128, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !787, file: !456, line: 244, baseType: !310, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !787, file: !456, line: 245, baseType: !310, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !787, file: !456, line: 246, baseType: !357, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !455, file: !456, line: 900, baseType: !241, size: 64, offset: 7296)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !455, file: !456, line: 901, baseType: !241, size: 64, offset: 7360)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !455, file: !456, line: 904, baseType: !310, size: 64, offset: 7424)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !455, file: !456, line: 907, baseType: !310, size: 64, offset: 7488)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !455, file: !456, line: 910, baseType: !241, size: 64, offset: 7552)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !455, file: !456, line: 911, baseType: !241, size: 64, offset: 7616)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !455, file: !456, line: 914, baseType: !799, size: 640, offset: 7680)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !800, line: 123, size: 640, elements: !801)
!800 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !808, !809}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !799, file: !800, line: 124, baseType: !803, size: 576)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 576, elements: !192)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !800, line: 108, size: 192, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !804, file: !800, line: 109, baseType: !310, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !804, file: !800, line: 110, baseType: !588, size: 128, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !799, file: !800, line: 125, baseType: !7, size: 32, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !799, file: !800, line: 126, baseType: !7, size: 32, offset: 608)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !455, file: !456, line: 917, baseType: !811, size: 192, offset: 8320)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !800, line: 134, size: 192, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !811, file: !800, line: 135, baseType: !748, size: 128, align: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !811, file: !800, line: 136, baseType: !7, size: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !455, file: !456, line: 923, baseType: !816, size: 64, offset: 8512)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !456, line: 923, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !455, file: !456, line: 926, baseType: !816, size: 64, offset: 8576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !455, file: !456, line: 929, baseType: !816, size: 64, offset: 8640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !455, file: !456, line: 933, baseType: !822, size: 64, offset: 8704)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !456, line: 933, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !455, file: !456, line: 943, baseType: !825, size: 128, offset: 8768)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 16)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !455, file: !456, line: 945, baseType: !829, size: 64, offset: 8896)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !456, line: 49, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !455, file: !456, line: 956, baseType: !832, size: 64, offset: 8960)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !456, line: 45, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !455, file: !456, line: 959, baseType: !835, size: 64, offset: 9024)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !456, line: 959, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !455, file: !456, line: 962, baseType: !838, size: 64, offset: 9088)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !456, line: 66, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !455, file: !456, line: 966, baseType: !841, size: 64, offset: 9152)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !456, line: 50, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !455, file: !456, line: 969, baseType: !844, size: 64, offset: 9216)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !800, line: 223, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !455, file: !456, line: 970, baseType: !847, size: 64, offset: 9280)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !456, line: 62, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !455, file: !456, line: 971, baseType: !850, size: 64, offset: 9344)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !851, line: 25, baseType: !852)
!851 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !851, line: 23, size: 64, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !852, file: !851, line: 24, baseType: !620, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !455, file: !456, line: 972, baseType: !850, size: 64, offset: 9408)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !455, file: !456, line: 974, baseType: !850, size: 64, offset: 9472)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !455, file: !456, line: 975, baseType: !858, size: 192, offset: 9536)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !859, line: 30, size: 192, elements: !860)
!859 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !858, file: !859, line: 31, baseType: !137, size: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !858, file: !859, line: 32, baseType: !850, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !455, file: !456, line: 976, baseType: !241, size: 64, offset: 9728)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !455, file: !456, line: 977, baseType: !238, size: 64, offset: 9792)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !455, file: !456, line: 978, baseType: !7, size: 32, offset: 9856)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !455, file: !456, line: 980, baseType: !751, size: 64, offset: 9920)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !455, file: !456, line: 989, baseType: !868, size: 128, offset: 9984)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !869, line: 35, size: 128, elements: !870)
!869 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!870 = !{!871, !872, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !868, file: !869, line: 36, baseType: !87, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !868, file: !869, line: 37, baseType: !332, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !868, file: !869, line: 38, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !869, line: 23, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !455, file: !456, line: 992, baseType: !310, size: 64, offset: 10112)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !455, file: !456, line: 993, baseType: !310, size: 64, offset: 10176)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !455, file: !456, line: 996, baseType: !150, offset: 10240)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !455, file: !456, line: 999, baseType: !357, offset: 10240)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !455, file: !456, line: 1001, baseType: !881, size: 64, offset: 10240)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !456, line: 636, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !456, line: 637, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !455, file: !456, line: 1005, baseType: !591, size: 128, offset: 10304)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !455, file: !456, line: 1007, baseType: !454, size: 64, offset: 10432)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !455, file: !456, line: 1009, baseType: !888, size: 64, offset: 10496)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !456, line: 1009, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !455, file: !456, line: 1043, baseType: !81, size: 64, offset: 10560)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !455, file: !456, line: 1046, baseType: !892, size: 64, offset: 10624)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !456, line: 41, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !455, file: !456, line: 1050, baseType: !895, size: 64, offset: 10688)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !456, line: 42, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !455, file: !456, line: 1054, baseType: !898, size: 64, offset: 10752)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !456, line: 55, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !455, file: !456, line: 1056, baseType: !901, size: 64, offset: 10816)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !456, line: 40, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !455, file: !456, line: 1058, baseType: !904, size: 64, offset: 10880)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !456, line: 47, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !455, file: !456, line: 1061, baseType: !907, size: 64, offset: 10944)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !456, line: 43, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !455, file: !456, line: 1064, baseType: !241, size: 64, offset: 11008)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !455, file: !456, line: 1065, baseType: !911, size: 64, offset: 11072)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !859, line: 14, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !859, line: 12, size: 384, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !859, line: 13, baseType: !916, size: 384)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !913, file: !859, line: 13, size: 384, elements: !917)
!917 = !{!918, !919, !920, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !916, file: !859, line: 13, baseType: !87, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !916, file: !859, line: 13, baseType: !87, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !916, file: !859, line: 13, baseType: !87, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !916, file: !859, line: 13, baseType: !922, size: 256, offset: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !923, line: 32, size: 256, elements: !924)
!923 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!924 = !{!925, !931, !944, !950, !959, !979, !984}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !922, file: !923, line: 37, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 34, size: 64, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !926, file: !923, line: 35, baseType: !710, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !926, file: !923, line: 36, baseType: !930, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !224, line: 49, baseType: !7)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !922, file: !923, line: 45, baseType: !932, size: 192)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 40, size: 192, elements: !933)
!933 = !{!934, !936, !937, !943}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !932, file: !923, line: 41, baseType: !935, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !224, line: 95, baseType: !87)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !932, file: !923, line: 42, baseType: !87, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !932, file: !923, line: 43, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !923, line: 11, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !923, line: 8, size: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !939, file: !923, line: 9, baseType: !87, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !939, file: !923, line: 10, baseType: !81, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !932, file: !923, line: 44, baseType: !87, size: 32, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !922, file: !923, line: 52, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 48, size: 128, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !945, file: !923, line: 49, baseType: !710, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !945, file: !923, line: 50, baseType: !930, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !945, file: !923, line: 51, baseType: !938, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !922, file: !923, line: 61, baseType: !951, size: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 55, size: 256, elements: !952)
!952 = !{!953, !954, !955, !956, !958}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !951, file: !923, line: 56, baseType: !710, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !951, file: !923, line: 57, baseType: !930, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !951, file: !923, line: 58, baseType: !87, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !951, file: !923, line: 59, baseType: !957, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !224, line: 94, baseType: !225)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !951, file: !923, line: 60, baseType: !957, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !922, file: !923, line: 95, baseType: !960, size: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 64, size: 256, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !960, file: !923, line: 65, baseType: !81, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !923, line: 77, baseType: !964, size: 192, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !923, line: 77, size: 192, elements: !965)
!965 = !{!966, !967, !974}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !964, file: !923, line: 82, baseType: !443, size: 16)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !964, file: !923, line: 88, baseType: !968, size: 192)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !923, line: 84, size: 192, elements: !969)
!969 = !{!970, !972, !973}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !968, file: !923, line: 85, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !570)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !968, file: !923, line: 86, baseType: !81, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !968, file: !923, line: 87, baseType: !81, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !964, file: !923, line: 93, baseType: !975, size: 96)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !923, line: 90, size: 96, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !975, file: !923, line: 91, baseType: !971, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !975, file: !923, line: 92, baseType: !465, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !922, file: !923, line: 101, baseType: !980, size: 128)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 98, size: 128, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !980, file: !923, line: 99, baseType: !226, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !980, file: !923, line: 100, baseType: !87, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !922, file: !923, line: 108, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !923, line: 104, size: 128, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !985, file: !923, line: 105, baseType: !81, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !985, file: !923, line: 106, baseType: !87, size: 32, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !985, file: !923, line: 107, baseType: !7, size: 32, offset: 96)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !455, file: !456, line: 1067, baseType: !991, offset: 11136)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !992, line: 12, elements: !164)
!992 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !455, file: !456, line: 1099, baseType: !994, size: 64, offset: 11136)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !456, line: 56, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !455, file: !456, line: 1103, baseType: !137, size: 128, offset: 11200)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !455, file: !456, line: 1104, baseType: !998, size: 64, offset: 11328)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !456, line: 46, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !455, file: !456, line: 1105, baseType: !409, size: 192, offset: 11392)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !455, file: !456, line: 1106, baseType: !7, size: 32, offset: 11584)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !455, file: !456, line: 1109, baseType: !1003, size: 128, offset: 11648)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 128, elements: !1006)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !456, line: 51, flags: DIFlagFwdDecl)
!1006 = !{!1007}
!1007 = !DISubrange(count: 2)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !455, file: !456, line: 1110, baseType: !409, size: 192, offset: 11776)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !455, file: !456, line: 1111, baseType: !137, size: 128, offset: 11968)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !455, file: !456, line: 1173, baseType: !1011, size: 64, offset: 12096)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1013, line: 62, size: 256, align: 256, elements: !1014)
!1013 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !{!1015, !1016, !1017, !1022}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1012, file: !1013, line: 75, baseType: !465, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1012, file: !1013, line: 90, baseType: !465, size: 32, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1012, file: !1013, line: 124, baseType: !1018, size: 64, offset: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !1013, line: 109, size: 64, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1018, file: !1013, line: 110, baseType: !312, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1018, file: !1013, line: 112, baseType: !312, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !1013, line: 144, baseType: !465, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !455, file: !456, line: 1174, baseType: !464, size: 32, offset: 12160)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !455, file: !456, line: 1179, baseType: !241, size: 64, offset: 12224)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !455, file: !456, line: 1182, baseType: !1026, size: 128, offset: 12288)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !387, line: 76, size: 128, elements: !1027)
!1027 = !{!1028, !1033, !1034}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1026, file: !387, line: 85, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1030, line: 7, size: 64, elements: !1031)
!1030 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1029, file: !1030, line: 12, baseType: !617, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1026, file: !387, line: 88, baseType: !114, size: 8, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1026, file: !387, line: 95, baseType: !114, size: 8, offset: 72)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 1184, baseType: !1036, size: 128, offset: 12416)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 1184, size: 128, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1036, file: !456, line: 1185, baseType: !470, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1036, file: !456, line: 1186, baseType: !748, size: 128, align: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !455, file: !456, line: 1190, baseType: !1041, size: 64, offset: 12544)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !456, line: 53, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !455, file: !456, line: 1192, baseType: !1044, size: 128, offset: 12608)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !387, line: 64, size: 128, elements: !1045)
!1045 = !{!1046, !1139, !1140}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1044, file: !387, line: 65, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !282, line: 68, size: 512, align: 128, elements: !1049)
!1049 = !{!1050, !1051, !1131, !1138}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !282, line: 69, baseType: !241, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !282, line: 77, baseType: !1052, size: 320, offset: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1048, file: !282, line: 77, size: 320, elements: !1053)
!1053 = !{!1054, !1063, !1068, !1096, !1104, !1110, !1123, !1130}
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !282, line: 78, baseType: !1055, size: 320)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !282, line: 78, size: 320, elements: !1056)
!1056 = !{!1057, !1058, !1061, !1062}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1055, file: !282, line: 84, baseType: !137, size: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1055, file: !282, line: 86, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !282, line: 26, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1055, file: !282, line: 87, baseType: !241, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1055, file: !282, line: 94, baseType: !241, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !282, line: 96, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !282, line: 96, size: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1064, file: !282, line: 101, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !80, line: 143, baseType: !310)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !282, line: 103, baseType: !1069, size: 320)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !282, line: 103, size: 320, elements: !1070)
!1070 = !{!1071, !1081, !1084, !1085}
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !282, line: 104, baseType: !1072, size: 128)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !282, line: 104, size: 128, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1072, file: !282, line: 105, baseType: !137, size: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !282, line: 106, baseType: !1076, size: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1072, file: !282, line: 106, size: 128, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1076, file: !282, line: 107, baseType: !1047, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1076, file: !282, line: 109, baseType: !87, size: 32, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1076, file: !282, line: 110, baseType: !87, size: 32, offset: 96)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1069, file: !282, line: 117, baseType: !1082, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !282, line: 117, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1069, file: !282, line: 119, baseType: !81, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !282, line: 120, baseType: !1086, size: 64, offset: 256)
!1086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !282, line: 120, size: 64, elements: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1086, file: !282, line: 121, baseType: !81, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1086, file: !282, line: 122, baseType: !241, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !282, line: 123, baseType: !1091, size: 32)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1086, file: !282, line: 123, size: 32, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1091, file: !282, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1091, file: !282, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1091, file: !282, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !282, line: 130, baseType: !1097, size: 192)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !282, line: 130, size: 192, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102, !1103}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1097, file: !282, line: 131, baseType: !241, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1097, file: !282, line: 134, baseType: !603, size: 8, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1097, file: !282, line: 135, baseType: !603, size: 8, offset: 72)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1097, file: !282, line: 136, baseType: !332, size: 32, offset: 96)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1097, file: !282, line: 137, baseType: !7, size: 32, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !282, line: 139, baseType: !1105, size: 256)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !282, line: 139, size: 256, elements: !1106)
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1105, file: !282, line: 140, baseType: !241, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1105, file: !282, line: 141, baseType: !332, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1105, file: !282, line: 143, baseType: !137, size: 128, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !282, line: 145, baseType: !1111, size: 256)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !282, line: 145, size: 256, elements: !1112)
!1112 = !{!1113, !1114, !1116, !1117, !1122}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1111, file: !282, line: 146, baseType: !241, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1111, file: !282, line: 147, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !271, line: 509, baseType: !1047)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1111, file: !282, line: 148, baseType: !241, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !282, line: 149, baseType: !1118, size: 64, offset: 192)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !282, line: 149, size: 64, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1118, file: !282, line: 150, baseType: !298, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1118, file: !282, line: 151, baseType: !332, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1111, file: !282, line: 156, baseType: !150, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !282, line: 159, baseType: !1124, size: 128)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !282, line: 159, size: 128, elements: !1125)
!1125 = !{!1126, !1129}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1124, file: !282, line: 161, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !282, line: 161, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1124, file: !282, line: 162, baseType: !81, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1052, file: !282, line: 176, baseType: !748, size: 128, align: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !282, line: 179, baseType: !1132, size: 32, offset: 384)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1048, file: !282, line: 179, size: 32, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1132, file: !282, line: 184, baseType: !332, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1132, file: !282, line: 192, baseType: !7, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1132, file: !282, line: 194, baseType: !7, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1132, file: !282, line: 195, baseType: !87, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1048, file: !282, line: 199, baseType: !332, size: 32, offset: 416)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1044, file: !387, line: 67, baseType: !465, size: 32, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1044, file: !387, line: 68, baseType: !465, size: 32, offset: 96)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !455, file: !456, line: 1206, baseType: !87, size: 32, offset: 12736)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !455, file: !456, line: 1207, baseType: !87, size: 32, offset: 12768)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !455, file: !456, line: 1209, baseType: !241, size: 64, offset: 12800)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !455, file: !456, line: 1219, baseType: !310, size: 64, offset: 12864)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !455, file: !456, line: 1220, baseType: !310, size: 64, offset: 12928)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !455, file: !456, line: 1317, baseType: !87, size: 32, offset: 12992)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !455, file: !456, line: 1319, baseType: !454, size: 64, offset: 13056)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !455, file: !456, line: 1322, baseType: !1149, size: 64, offset: 13120)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1151, line: 56, size: 512, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1159, !1160, !1162}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1150, file: !1151, line: 57, baseType: !1149, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1150, file: !1151, line: 58, baseType: !81, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1150, file: !1151, line: 59, baseType: !241, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1150, file: !1151, line: 60, baseType: !241, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1150, file: !1151, line: 61, baseType: !1158, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1150, file: !1151, line: 62, baseType: !7, size: 32, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1150, file: !1151, line: 63, baseType: !1161, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !80, line: 153, baseType: !310)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1150, file: !1151, line: 64, baseType: !122, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !455, file: !456, line: 1326, baseType: !470, size: 32, offset: 13184)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !455, file: !456, line: 1342, baseType: !81, size: 64, offset: 13248)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !455, file: !456, line: 1343, baseType: !312, size: 64, offset: 13312)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !455, file: !456, line: 1344, baseType: !310, size: 64, offset: 13376)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !455, file: !456, line: 1345, baseType: !312, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !455, file: !456, line: 1346, baseType: !312, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !455, file: !456, line: 1347, baseType: !312, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !455, file: !456, line: 1348, baseType: !748, size: 128, align: 64, offset: 13504)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !455, file: !456, line: 1358, baseType: !1172, size: 34816, offset: 13824)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1173, line: 485, size: 34816, elements: !1174)
!1173 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !{!1175, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1204, !1205, !1206, !1207, !1208, !1209, !1212, !1213, !1214}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1172, file: !1173, line: 487, baseType: !1176, size: 192)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 192, elements: !192)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1178, line: 16, size: 64, elements: !1179)
!1178 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1177, file: !1178, line: 17, baseType: !438, size: 16)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1177, file: !1178, line: 18, baseType: !438, size: 16, offset: 16)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1177, file: !1178, line: 19, baseType: !438, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1177, file: !1178, line: 19, baseType: !438, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1177, file: !1178, line: 19, baseType: !438, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1177, file: !1178, line: 19, baseType: !438, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1177, file: !1178, line: 19, baseType: !438, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1177, file: !1178, line: 20, baseType: !438, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1177, file: !1178, line: 20, baseType: !438, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1177, file: !1178, line: 20, baseType: !438, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1177, file: !1178, line: 20, baseType: !438, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1177, file: !1178, line: 20, baseType: !438, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1177, file: !1178, line: 20, baseType: !438, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1172, file: !1173, line: 491, baseType: !241, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1172, file: !1173, line: 495, baseType: !233, size: 16, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1172, file: !1173, line: 496, baseType: !233, size: 16, offset: 272)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1172, file: !1173, line: 497, baseType: !233, size: 16, offset: 288)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1172, file: !1173, line: 498, baseType: !233, size: 16, offset: 304)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1172, file: !1173, line: 502, baseType: !241, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1172, file: !1173, line: 503, baseType: !241, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1172, file: !1173, line: 514, baseType: !1201, size: 256, offset: 448)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1202, size: 256, elements: !391)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1173, line: 483, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1172, file: !1173, line: 516, baseType: !241, size: 64, offset: 704)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1172, file: !1173, line: 518, baseType: !241, size: 64, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1172, file: !1173, line: 520, baseType: !241, size: 64, offset: 832)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1172, file: !1173, line: 521, baseType: !241, size: 64, offset: 896)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1172, file: !1173, line: 522, baseType: !241, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1172, file: !1173, line: 528, baseType: !1210, size: 64, offset: 1024)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1173, line: 10, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1172, file: !1173, line: 535, baseType: !241, size: 64, offset: 1088)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1172, file: !1173, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1172, file: !1173, line: 540, baseType: !1215, size: 33280, offset: 1536)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1216, line: 317, size: 33280, elements: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1215, file: !1216, line: 330, baseType: !7, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1215, file: !1216, line: 337, baseType: !241, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1215, file: !1216, line: 348, baseType: !1221, size: 32768, offset: 512)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1216, line: 304, size: 32768, elements: !1222)
!1222 = !{!1223, !1238, !1277, !1327, !1344}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1221, file: !1216, line: 305, baseType: !1224, size: 896)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1216, line: 12, size: 896, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1237}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1224, file: !1216, line: 13, baseType: !464, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1224, file: !1216, line: 14, baseType: !464, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1224, file: !1216, line: 15, baseType: !464, size: 32, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1224, file: !1216, line: 16, baseType: !464, size: 32, offset: 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1224, file: !1216, line: 17, baseType: !464, size: 32, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1224, file: !1216, line: 18, baseType: !464, size: 32, offset: 160)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1224, file: !1216, line: 19, baseType: !464, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1224, file: !1216, line: 22, baseType: !1234, size: 640, offset: 224)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 640, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 20)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1224, file: !1216, line: 25, baseType: !464, size: 32, offset: 864)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1221, file: !1216, line: 306, baseType: !1239, size: 4096, align: 128)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1216, line: 34, size: 4096, align: 128, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1260, !1261, !1262, !1266, !1268, !1272}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1239, file: !1216, line: 35, baseType: !438, size: 16)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1239, file: !1216, line: 36, baseType: !438, size: 16, offset: 16)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1239, file: !1216, line: 37, baseType: !438, size: 16, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1239, file: !1216, line: 38, baseType: !438, size: 16, offset: 48)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !1216, line: 39, baseType: !1246, size: 128, offset: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1239, file: !1216, line: 39, size: 128, elements: !1247)
!1247 = !{!1248, !1253}
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1216, line: 40, baseType: !1249, size: 128)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !1216, line: 40, size: 128, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1249, file: !1216, line: 41, baseType: !310, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1249, file: !1216, line: 42, baseType: !310, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !1216, line: 44, baseType: !1254, size: 128)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !1216, line: 44, size: 128, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1254, file: !1216, line: 45, baseType: !464, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1254, file: !1216, line: 46, baseType: !464, size: 32, offset: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1254, file: !1216, line: 47, baseType: !464, size: 32, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1254, file: !1216, line: 48, baseType: !464, size: 32, offset: 96)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1239, file: !1216, line: 51, baseType: !464, size: 32, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1239, file: !1216, line: 52, baseType: !464, size: 32, offset: 224)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1239, file: !1216, line: 55, baseType: !1263, size: 1024, offset: 256)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1024, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1239, file: !1216, line: 58, baseType: !1267, size: 2048, offset: 1280)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 2048, elements: !196)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1239, file: !1216, line: 60, baseType: !1269, size: 384, offset: 3328)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !1270)
!1270 = !{!1271}
!1271 = !DISubrange(count: 12)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1239, file: !1216, line: 62, baseType: !1273, size: 384, offset: 3712)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1239, file: !1216, line: 62, size: 384, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1273, file: !1216, line: 63, baseType: !1269, size: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1273, file: !1216, line: 64, baseType: !1269, size: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1221, file: !1216, line: 307, baseType: !1278, size: 1088)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1216, line: 79, size: 1088, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1326}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1278, file: !1216, line: 80, baseType: !464, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1278, file: !1216, line: 81, baseType: !464, size: 32, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1278, file: !1216, line: 82, baseType: !464, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1278, file: !1216, line: 83, baseType: !464, size: 32, offset: 96)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1278, file: !1216, line: 84, baseType: !464, size: 32, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1278, file: !1216, line: 85, baseType: !464, size: 32, offset: 160)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1278, file: !1216, line: 86, baseType: !464, size: 32, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1278, file: !1216, line: 88, baseType: !1234, size: 640, offset: 224)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1278, file: !1216, line: 89, baseType: !601, size: 8, offset: 864)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1278, file: !1216, line: 90, baseType: !601, size: 8, offset: 872)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1278, file: !1216, line: 91, baseType: !601, size: 8, offset: 880)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1278, file: !1216, line: 92, baseType: !601, size: 8, offset: 888)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1278, file: !1216, line: 93, baseType: !601, size: 8, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1278, file: !1216, line: 94, baseType: !601, size: 8, offset: 904)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1278, file: !1216, line: 95, baseType: !1295, size: 64, offset: 960)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1297, line: 11, size: 128, elements: !1298)
!1297 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1296, file: !1297, line: 12, baseType: !226, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1296, file: !1297, line: 13, baseType: !1301, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1303, line: 56, size: 1344, elements: !1304)
!1303 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1302, file: !1303, line: 61, baseType: !241, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1302, file: !1303, line: 62, baseType: !241, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1302, file: !1303, line: 63, baseType: !241, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1302, file: !1303, line: 64, baseType: !241, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1302, file: !1303, line: 65, baseType: !241, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1302, file: !1303, line: 66, baseType: !241, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1302, file: !1303, line: 68, baseType: !241, size: 64, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1302, file: !1303, line: 69, baseType: !241, size: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1302, file: !1303, line: 70, baseType: !241, size: 64, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1302, file: !1303, line: 71, baseType: !241, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1302, file: !1303, line: 72, baseType: !241, size: 64, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1302, file: !1303, line: 73, baseType: !241, size: 64, offset: 704)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1302, file: !1303, line: 74, baseType: !241, size: 64, offset: 768)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1302, file: !1303, line: 75, baseType: !241, size: 64, offset: 832)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1302, file: !1303, line: 76, baseType: !241, size: 64, offset: 896)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1302, file: !1303, line: 81, baseType: !241, size: 64, offset: 960)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1302, file: !1303, line: 83, baseType: !241, size: 64, offset: 1024)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1302, file: !1303, line: 84, baseType: !241, size: 64, offset: 1088)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1302, file: !1303, line: 85, baseType: !241, size: 64, offset: 1152)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1302, file: !1303, line: 86, baseType: !241, size: 64, offset: 1216)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1302, file: !1303, line: 87, baseType: !241, size: 64, offset: 1280)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1278, file: !1216, line: 96, baseType: !464, size: 32, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1221, file: !1216, line: 308, baseType: !1328, size: 4608, align: 512)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1216, line: 289, size: 4608, align: 512, elements: !1329)
!1329 = !{!1330, !1331, !1340}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1328, file: !1216, line: 290, baseType: !1239, size: 4096, align: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1328, file: !1216, line: 291, baseType: !1332, size: 512, offset: 4096)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1216, line: 268, size: 512, elements: !1333)
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1332, file: !1216, line: 269, baseType: !310, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1332, file: !1216, line: 270, baseType: !310, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1332, file: !1216, line: 271, baseType: !1337, size: 384, offset: 128)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 384, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 6)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1328, file: !1216, line: 292, baseType: !1341, offset: 4608)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 0)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1221, file: !1216, line: 309, baseType: !1345, size: 32768)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 32768, elements: !1346)
!1346 = !{!1347}
!1347 = !DISubrange(count: 4096)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !282, line: 378, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !447, file: !282, line: 384, baseType: !770, size: 192, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !302, file: !282, line: 500, baseType: !150, offset: 6656)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !302, file: !282, line: 501, baseType: !1353, size: 64, offset: 6656)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !282, line: 387, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !302, file: !282, line: 516, baseType: !1356, size: 64, offset: 6720)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1358, line: 18, flags: DIFlagFwdDecl)
!1358 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !302, file: !282, line: 519, baseType: !269, size: 64, offset: 6784)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !302, file: !282, line: 521, baseType: !1361, size: 64, offset: 6848)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !282, line: 521, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !302, file: !282, line: 545, baseType: !332, size: 32, offset: 6912)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !302, file: !282, line: 548, baseType: !114, size: 8, offset: 6944)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !302, file: !282, line: 550, baseType: !1366, offset: 6952)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1367, line: 142, elements: !164)
!1367 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !302, file: !282, line: 554, baseType: !1369, size: 256, offset: 6976)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1370, line: 102, size: 256, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1369, file: !1370, line: 103, baseType: !340, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1369, file: !1370, line: 104, baseType: !137, size: 128, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1369, file: !1370, line: 105, baseType: !1375, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1370, line: 21, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !302, file: !282, line: 557, baseType: !464, size: 32, offset: 7232)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !299, file: !282, line: 565, baseType: !1382, offset: 7296)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, elements: !1383)
!1383 = !{!1384}
!1384 = !DISubrange(count: -1)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !281, file: !282, line: 333, baseType: !1386, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !271, line: 284, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !271, line: 284, size: 64, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1387, file: !271, line: 284, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !330, line: 19, baseType: !241)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !281, file: !282, line: 334, baseType: !241, size: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !281, file: !282, line: 343, baseType: !1393, size: 256, offset: 704)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !282, line: 340, size: 256, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1393, file: !282, line: 341, baseType: !289, size: 192, align: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1393, file: !282, line: 342, baseType: !241, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !281, file: !282, line: 351, baseType: !137, size: 128, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !281, file: !282, line: 353, baseType: !1399, size: 64, offset: 1088)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !282, line: 353, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !281, file: !282, line: 356, baseType: !1402, size: 64, offset: 1152)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !282, line: 356, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !281, file: !282, line: 359, baseType: !241, size: 64, offset: 1216)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !281, file: !282, line: 361, baseType: !269, size: 64, offset: 1280)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !281, file: !282, line: 362, baseType: !81, size: 64, offset: 1344)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !281, file: !282, line: 365, baseType: !340, size: 64, offset: 1408)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !281, file: !282, line: 373, baseType: !1410, offset: 1472)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !282, line: 296, elements: !164)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !248, file: !216, line: 90, baseType: !243, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !248, file: !216, line: 91, baseType: !1413, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !206, file: !130, line: 143, baseType: !1415, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1418, !143}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1421)
!1421 = !{!1422, !1423, !1427, !1431, !1437, !1441}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1420, file: !18, line: 40, baseType: !17, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1420, file: !18, line: 41, baseType: !1424, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!114}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1420, file: !18, line: 42, baseType: !1428, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!81}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1420, file: !18, line: 43, baseType: !1432, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!122, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1420, file: !18, line: 44, baseType: !1438, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!122}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1420, file: !18, line: 45, baseType: !1442, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !81}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !206, file: !130, line: 144, baseType: !1446, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!122, !143}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !206, file: !130, line: 145, baseType: !1450, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !143, !1453, !1459}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1358, line: 23, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1358, line: 21, size: 32, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1455, file: !1358, line: 22, baseType: !1458, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !80, line: 32, baseType: !930)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1358, line: 28, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1358, line: 26, size: 32, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1461, file: !1358, line: 27, baseType: !1464, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !80, line: 33, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !224, line: 50, baseType: !7)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !129, file: !130, line: 70, baseType: !1467, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1469, line: 123, size: 1024, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1612, !1613, !1614, !1615, !1616}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1468, file: !1469, line: 124, baseType: !332, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1468, file: !1469, line: 125, baseType: !332, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1468, file: !1469, line: 135, baseType: !1467, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1468, file: !1469, line: 136, baseType: !133, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1468, file: !1469, line: 138, baseType: !289, size: 192, align: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1468, file: !1469, line: 140, baseType: !122, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1468, file: !1469, line: 141, baseType: !7, size: 32, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 142, baseType: !1479, size: 256, offset: 512)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 142, size: 256, elements: !1480)
!1480 = !{!1481, !1535, !1539}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1479, file: !1469, line: 143, baseType: !1482, size: 192)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1469, line: 91, size: 192, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1482, file: !1469, line: 92, baseType: !241, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1482, file: !1469, line: 94, baseType: !306, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1482, file: !1469, line: 100, baseType: !1487, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1469, line: 180, size: 704, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1505, !1506, !1507, !1533, !1534}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1488, file: !1469, line: 182, baseType: !1467, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1488, file: !1469, line: 183, baseType: !7, size: 32, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1488, file: !1469, line: 186, baseType: !1493, size: 192, offset: 128)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1494, line: 19, size: 192, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1495 = !{!1496, !1503, !1504}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1493, file: !1494, line: 20, baseType: !1497, size: 128)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1498, line: 292, size: 128, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1497, file: !1498, line: 293, baseType: !150)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1497, file: !1498, line: 295, baseType: !79, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1497, file: !1498, line: 296, baseType: !81, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1493, file: !1494, line: 21, baseType: !7, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1493, file: !1494, line: 22, baseType: !7, size: 32, offset: 160)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1488, file: !1469, line: 187, baseType: !464, size: 32, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1488, file: !1469, line: 188, baseType: !464, size: 32, offset: 352)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1488, file: !1469, line: 189, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1469, line: 168, size: 320, elements: !1510)
!1510 = !{!1511, !1517, !1521, !1525, !1529}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1509, file: !1469, line: 169, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!87, !1515, !1487}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !271, line: 539, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1509, file: !1469, line: 171, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!87, !1467, !133, !232}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1509, file: !1469, line: 173, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!87, !1467}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1509, file: !1469, line: 174, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!87, !1467, !1467, !133}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1509, file: !1469, line: 176, baseType: !1530, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!87, !1515, !1467, !1487}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1488, file: !1469, line: 192, baseType: !137, size: 128, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1488, file: !1469, line: 194, baseType: !741, size: 128, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1479, file: !1469, line: 144, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1469, line: 103, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1536, file: !1469, line: 104, baseType: !1467, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1479, file: !1469, line: 145, baseType: !1540, size: 256)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1469, line: 107, size: 256, elements: !1541)
!1541 = !{!1542, !1607, !1610, !1611}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1540, file: !1469, line: 108, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1469, line: 217, size: 768, elements: !1546)
!1546 = !{!1547, !1567, !1571, !1575, !1580, !1584, !1588, !1592, !1593, !1594, !1595, !1603}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1545, file: !1469, line: 222, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!87, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1469, line: 197, size: 1088, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1552, file: !1469, line: 199, baseType: !1467, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1552, file: !1469, line: 200, baseType: !269, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1552, file: !1469, line: 201, baseType: !1515, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1552, file: !1469, line: 202, baseType: !81, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1552, file: !1469, line: 205, baseType: !409, size: 192, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1552, file: !1469, line: 206, baseType: !409, size: 192, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1552, file: !1469, line: 207, baseType: !87, size: 32, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1552, file: !1469, line: 208, baseType: !137, size: 128, offset: 704)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1552, file: !1469, line: 209, baseType: !191, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1552, file: !1469, line: 211, baseType: !238, size: 64, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1552, file: !1469, line: 212, baseType: !114, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1552, file: !1469, line: 213, baseType: !114, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1552, file: !1469, line: 214, baseType: !1402, size: 64, offset: 1024)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1545, file: !1469, line: 223, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1551}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1545, file: !1469, line: 236, baseType: !1572, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!87, !1515, !81}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1545, file: !1469, line: 238, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!81, !1515, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1545, file: !1469, line: 239, baseType: !1581, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!81, !1515, !81, !1579}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1545, file: !1469, line: 240, baseType: !1585, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1515, !81}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1545, file: !1469, line: 242, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!222, !1551, !191, !238, !272}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1545, file: !1469, line: 252, baseType: !238, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1545, file: !1469, line: 259, baseType: !114, size: 8, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1545, file: !1469, line: 260, baseType: !1589, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1545, file: !1469, line: 263, baseType: !1596, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1599, !1551, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1600, line: 52, baseType: !7)
!1600 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1469, line: 27, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1545, file: !1469, line: 266, baseType: !1604, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!87, !1551, !280}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1540, file: !1469, line: 109, baseType: !1608, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1469, line: 31, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1540, file: !1469, line: 110, baseType: !272, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1540, file: !1469, line: 111, baseType: !1467, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1468, file: !1469, line: 148, baseType: !81, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1468, file: !1469, line: 154, baseType: !310, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !1469, line: 156, baseType: !233, size: 16, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1468, file: !1469, line: 157, baseType: !232, size: 16, offset: 912)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1468, file: !1469, line: 158, baseType: !1617, size: 64, offset: 960)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1469, line: 32, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !129, file: !130, line: 71, baseType: !1620, size: 32, offset: 448)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1621, line: 19, size: 32, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1620, file: !1621, line: 20, baseType: !470, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !129, file: !130, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !129, file: !130, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !129, file: !130, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !129, file: !130, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !129, file: !130, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !126, file: !30, line: 463, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !126, file: !30, line: 465, baseType: !1632, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !126, file: !30, line: 467, baseType: !133, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !30, line: 468, baseType: !1636, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1646, !1651, !1655}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !30, line: 88, baseType: !133, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1638, file: !30, line: 89, baseType: !245, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1638, file: !30, line: 90, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!87, !1630, !186}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1638, file: !30, line: 91, baseType: !1647, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!191, !1630, !1650, !1453, !1459}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1638, file: !30, line: 93, baseType: !1652, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1630}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1638, file: !30, line: 95, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1659)
!1659 = !{!1660, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1658, file: !37, line: 279, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!87, !1630}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1658, file: !37, line: 280, baseType: !1652, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1658, file: !37, line: 281, baseType: !1661, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1658, file: !37, line: 282, baseType: !1661, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1658, file: !37, line: 283, baseType: !1661, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1658, file: !37, line: 284, baseType: !1661, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1658, file: !37, line: 285, baseType: !1661, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1658, file: !37, line: 286, baseType: !1661, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1658, file: !37, line: 287, baseType: !1661, size: 64, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1658, file: !37, line: 288, baseType: !1661, size: 64, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1658, file: !37, line: 289, baseType: !1661, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1658, file: !37, line: 290, baseType: !1661, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1658, file: !37, line: 291, baseType: !1661, size: 64, offset: 768)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1658, file: !37, line: 292, baseType: !1661, size: 64, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1658, file: !37, line: 293, baseType: !1661, size: 64, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1658, file: !37, line: 294, baseType: !1661, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1658, file: !37, line: 295, baseType: !1661, size: 64, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1658, file: !37, line: 296, baseType: !1661, size: 64, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1658, file: !37, line: 297, baseType: !1661, size: 64, offset: 1152)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1658, file: !37, line: 298, baseType: !1661, size: 64, offset: 1216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1658, file: !37, line: 299, baseType: !1661, size: 64, offset: 1280)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1658, file: !37, line: 300, baseType: !1661, size: 64, offset: 1344)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1658, file: !37, line: 301, baseType: !1661, size: 64, offset: 1408)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !126, file: !30, line: 470, baseType: !1687, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1689, line: 82, size: 1408, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1773, !1776, !1779}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1688, file: !1689, line: 83, baseType: !133, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1688, file: !1689, line: 84, baseType: !133, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1688, file: !1689, line: 85, baseType: !1630, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1688, file: !1689, line: 86, baseType: !245, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1688, file: !1689, line: 87, baseType: !245, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1688, file: !1689, line: 88, baseType: !245, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1688, file: !1689, line: 90, baseType: !1698, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!87, !1630, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1724, !1737, !1738, !1739, !1740, !1741, !1749, !1750, !1751, !1752, !1753, !1754}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1702, file: !24, line: 96, baseType: !133, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1702, file: !24, line: 97, baseType: !1687, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1702, file: !24, line: 99, baseType: !76, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1702, file: !24, line: 100, baseType: !133, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1702, file: !24, line: 102, baseType: !114, size: 8, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1702, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1702, file: !24, line: 105, baseType: !1711, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1714, line: 262, size: 1600, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !{!1716, !1718, !1719, !1723}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1713, file: !1714, line: 263, baseType: !1717, size: 256)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !1264)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1713, file: !1714, line: 264, baseType: !1717, size: 256, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1713, file: !1714, line: 265, baseType: !1720, size: 1024, offset: 512)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 1024, elements: !1721)
!1721 = !{!1722}
!1722 = !DISubrange(count: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1713, file: !1714, line: 266, baseType: !122, size: 64, offset: 1536)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1702, file: !24, line: 106, baseType: !1725, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1714, line: 210, size: 256, elements: !1728)
!1728 = !{!1729, !1733, !1735, !1736}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1727, file: !1714, line: 211, baseType: !1730, size: 72)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 72, elements: !1731)
!1731 = !{!1732}
!1732 = !DISubrange(count: 9)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1727, file: !1714, line: 212, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1714, line: 14, baseType: !241)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1727, file: !1714, line: 213, baseType: !465, size: 32, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1727, file: !1714, line: 214, baseType: !465, size: 32, offset: 224)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1702, file: !24, line: 108, baseType: !1661, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1702, file: !24, line: 109, baseType: !1652, size: 64, offset: 512)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1702, file: !24, line: 110, baseType: !1661, size: 64, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1702, file: !24, line: 111, baseType: !1652, size: 64, offset: 640)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1702, file: !24, line: 112, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!87, !1630, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1746, file: !37, line: 51, baseType: !87, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1702, file: !24, line: 113, baseType: !1661, size: 64, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1702, file: !24, line: 114, baseType: !245, size: 64, offset: 832)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1702, file: !24, line: 115, baseType: !245, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1702, file: !24, line: 117, baseType: !1656, size: 64, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1702, file: !24, line: 118, baseType: !1652, size: 64, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1702, file: !24, line: 120, baseType: !1755, size: 64, offset: 1088)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1688, file: !1689, line: 91, baseType: !1643, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1688, file: !1689, line: 92, baseType: !1661, size: 64, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1688, file: !1689, line: 93, baseType: !1652, size: 64, offset: 576)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1688, file: !1689, line: 94, baseType: !1661, size: 64, offset: 640)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1688, file: !1689, line: 95, baseType: !1652, size: 64, offset: 704)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1688, file: !1689, line: 97, baseType: !1661, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1688, file: !1689, line: 98, baseType: !1661, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1688, file: !1689, line: 100, baseType: !1742, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1688, file: !1689, line: 101, baseType: !1661, size: 64, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1688, file: !1689, line: 103, baseType: !1661, size: 64, offset: 1024)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1688, file: !1689, line: 105, baseType: !1661, size: 64, offset: 1088)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1688, file: !1689, line: 107, baseType: !1656, size: 64, offset: 1152)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1688, file: !1689, line: 109, baseType: !1770, size: 64, offset: 1216)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1772)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1689, line: 109, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1688, file: !1689, line: 111, baseType: !1774, size: 64, offset: 1280)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1689, line: 111, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1688, file: !1689, line: 112, baseType: !1777, offset: 1344)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1778, line: 187, elements: !164)
!1778 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1688, file: !1689, line: 114, baseType: !114, size: 8, offset: 1344)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !126, file: !30, line: 471, baseType: !1701, size: 64, offset: 832)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !126, file: !30, line: 473, baseType: !81, size: 64, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !126, file: !30, line: 475, baseType: !81, size: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !126, file: !30, line: 480, baseType: !409, size: 192, offset: 1024)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !126, file: !30, line: 484, baseType: !1785, size: 576, offset: 1216)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1785, file: !30, line: 362, baseType: !137, size: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1785, file: !30, line: 363, baseType: !137, size: 128, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1785, file: !30, line: 364, baseType: !137, size: 128, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1785, file: !30, line: 365, baseType: !137, size: 128, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1785, file: !30, line: 366, baseType: !114, size: 8, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1785, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !126, file: !30, line: 485, baseType: !1794, size: 2304, offset: 1792)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1891, !1895}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1794, file: !37, line: 566, baseType: !1745, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1794, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1794, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1794, file: !37, line: 569, baseType: !114, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1794, file: !37, line: 570, baseType: !114, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1794, file: !37, line: 571, baseType: !114, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1794, file: !37, line: 572, baseType: !114, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1794, file: !37, line: 573, baseType: !114, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1794, file: !37, line: 574, baseType: !114, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1794, file: !37, line: 575, baseType: !114, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1794, file: !37, line: 576, baseType: !114, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1794, file: !37, line: 577, baseType: !464, size: 32, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1794, file: !37, line: 578, baseType: !150, offset: 96)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1794, file: !37, line: 580, baseType: !137, size: 128, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1794, file: !37, line: 581, baseType: !770, size: 192, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1794, file: !37, line: 582, baseType: !1812, size: 64, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1814, line: 43, size: 1472, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1823, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1813, file: !1814, line: 44, baseType: !133, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1813, file: !1814, line: 45, baseType: !87, size: 32, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1813, file: !1814, line: 46, baseType: !137, size: 128, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1813, file: !1814, line: 47, baseType: !150, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1813, file: !1814, line: 48, baseType: !1821, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1813, file: !1814, line: 49, baseType: !1824, size: 320, offset: 320)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1825, line: 11, size: 320, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1828, !1829, !1834}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1824, file: !1825, line: 16, baseType: !734, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1824, file: !1825, line: 17, baseType: !241, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1824, file: !1825, line: 18, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1833}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1824, file: !1825, line: 19, baseType: !464, size: 32, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1813, file: !1814, line: 50, baseType: !241, size: 64, offset: 640)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1813, file: !1814, line: 51, baseType: !540, size: 64, offset: 704)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1813, file: !1814, line: 52, baseType: !540, size: 64, offset: 768)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1813, file: !1814, line: 53, baseType: !540, size: 64, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1813, file: !1814, line: 54, baseType: !540, size: 64, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1813, file: !1814, line: 55, baseType: !540, size: 64, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1813, file: !1814, line: 56, baseType: !241, size: 64, offset: 1024)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1813, file: !1814, line: 57, baseType: !241, size: 64, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1813, file: !1814, line: 58, baseType: !241, size: 64, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1813, file: !1814, line: 59, baseType: !241, size: 64, offset: 1216)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1813, file: !1814, line: 60, baseType: !241, size: 64, offset: 1280)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1813, file: !1814, line: 61, baseType: !1630, size: 64, offset: 1344)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1813, file: !1814, line: 62, baseType: !114, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1813, file: !1814, line: 63, baseType: !114, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1794, file: !37, line: 583, baseType: !114, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1794, file: !37, line: 584, baseType: !114, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1794, file: !37, line: 585, baseType: !114, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1794, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1794, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1794, file: !37, line: 592, baseType: !532, size: 512, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1794, file: !37, line: 593, baseType: !310, size: 64, offset: 1088)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1794, file: !37, line: 594, baseType: !1369, size: 256, offset: 1152)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1794, file: !37, line: 595, baseType: !741, size: 128, offset: 1408)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1794, file: !37, line: 596, baseType: !1821, size: 64, offset: 1536)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1794, file: !37, line: 597, baseType: !332, size: 32, offset: 1600)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1794, file: !37, line: 598, baseType: !332, size: 32, offset: 1632)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1794, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1794, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1794, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1794, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1794, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1794, file: !37, line: 604, baseType: !114, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1794, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1794, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1794, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1794, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1794, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1794, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1794, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1794, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1794, file: !37, line: 613, baseType: !87, size: 32, offset: 1792)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1794, file: !37, line: 614, baseType: !87, size: 32, offset: 1824)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1794, file: !37, line: 615, baseType: !310, size: 64, offset: 1856)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1794, file: !37, line: 616, baseType: !310, size: 64, offset: 1920)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1794, file: !37, line: 617, baseType: !310, size: 64, offset: 1984)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1794, file: !37, line: 618, baseType: !310, size: 64, offset: 2048)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1794, file: !37, line: 620, baseType: !1882, size: 64, offset: 2112)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1883, file: !37, line: 537, baseType: !150)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1883, file: !37, line: 538, baseType: !7, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1883, file: !37, line: 540, baseType: !137, size: 128, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1883, file: !37, line: 543, baseType: !1889, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1794, file: !37, line: 621, baseType: !1892, size: 64, offset: 2176)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1630, !694}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1794, file: !37, line: 622, baseType: !1896, size: 64, offset: 2240)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !126, file: !30, line: 486, baseType: !1899, size: 64, offset: 4096)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1908, !1909, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1900, file: !37, line: 643, baseType: !1658, size: 1472)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1900, file: !37, line: 644, baseType: !1661, size: 64, offset: 1472)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1900, file: !37, line: 645, baseType: !1905, size: 64, offset: 1536)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1630, !114}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1900, file: !37, line: 646, baseType: !1661, size: 64, offset: 1600)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1900, file: !37, line: 647, baseType: !1652, size: 64, offset: 1664)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1900, file: !37, line: 648, baseType: !1652, size: 64, offset: 1728)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !126, file: !30, line: 493, baseType: !1912, size: 64, offset: 4160)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1914)
!1914 = !{!1915, !1916, !1917, !2002, !2003, !2004, !2005, !2006, !2007, !2010, !2011, !2012, !2013, !2014, !2015, !2016}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1913, file: !51, line: 163, baseType: !137, size: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1913, file: !51, line: 164, baseType: !133, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1913, file: !51, line: 165, baseType: !1918, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1921)
!1921 = !{!1922, !1951, !1962, !1967, !1971, !1979, !1983, !1987, !1994, !1998}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1920, file: !51, line: 106, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!87, !1912, !1926, !50}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1928, line: 51, size: 1344, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1933, !1934, !1935, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1927, file: !1928, line: 52, baseType: !133, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1927, file: !1928, line: 53, baseType: !1932, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1928, line: 28, baseType: !464)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1927, file: !1928, line: 54, baseType: !133, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1927, file: !1928, line: 55, baseType: !92, size: 192, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1927, file: !1928, line: 57, baseType: !1936, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1928, line: 31, size: 704, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1943}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1937, file: !1928, line: 32, baseType: !191, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1937, file: !1928, line: 33, baseType: !87, size: 32, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1937, file: !1928, line: 34, baseType: !81, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1937, file: !1928, line: 35, baseType: !1936, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1937, file: !1928, line: 43, baseType: !260, size: 448, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1927, file: !1928, line: 58, baseType: !1936, size: 64, offset: 448)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1927, file: !1928, line: 59, baseType: !1926, size: 64, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1927, file: !1928, line: 60, baseType: !1926, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1927, file: !1928, line: 61, baseType: !1926, size: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1927, file: !1928, line: 63, baseType: !129, size: 512, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1927, file: !1928, line: 65, baseType: !241, size: 64, offset: 1216)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1928, line: 66, baseType: !81, size: 64, offset: 1280)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1920, file: !51, line: 108, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!87, !1912, !1955, !50}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1957)
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1956, file: !51, line: 64, baseType: !96, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1956, file: !51, line: 65, baseType: !87, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1956, file: !51, line: 66, baseType: !1961, size: 512, offset: 96)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 512, elements: !826)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1920, file: !51, line: 110, baseType: !1963, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!87, !1912, !7, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !80, line: 164, baseType: !241)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1920, file: !51, line: 111, baseType: !1968, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1912, !7}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1920, file: !51, line: 112, baseType: !1972, size: 64, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!87, !1912, !1926, !1975, !7, !1977, !1978}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1920, file: !51, line: 117, baseType: !1980, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!87, !1912, !7, !7, !81}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1920, file: !51, line: 119, baseType: !1984, size: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1912, !7, !7}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1920, file: !51, line: 121, baseType: !1988, size: 64, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!87, !1912, !1991, !114}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !1993, line: 11, flags: DIFlagFwdDecl)
!1993 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1920, file: !51, line: 122, baseType: !1995, size: 64, offset: 512)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !1912, !1991}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1920, file: !51, line: 123, baseType: !1999, size: 64, offset: 576)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!87, !1912, !1955, !1977, !1978}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1913, file: !51, line: 166, baseType: !81, size: 64, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1913, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1913, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1913, file: !51, line: 171, baseType: !96, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1913, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1913, file: !51, line: 173, baseType: !2008, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1913, file: !51, line: 175, baseType: !1912, size: 64, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1913, file: !51, line: 182, baseType: !1966, size: 64, offset: 640)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1913, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1913, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1913, file: !51, line: 185, baseType: !1497, size: 128, offset: 768)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1913, file: !51, line: 186, baseType: !409, size: 192, offset: 896)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1913, file: !51, line: 187, baseType: !2017, offset: 1088)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1383)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !126, file: !30, line: 499, baseType: !137, size: 128, offset: 4224)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !126, file: !30, line: 502, baseType: !2020, size: 64, offset: 4352)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !126, file: !30, line: 504, baseType: !2024, size: 64, offset: 4416)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !126, file: !30, line: 505, baseType: !310, size: 64, offset: 4480)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !126, file: !30, line: 510, baseType: !310, size: 64, offset: 4544)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !126, file: !30, line: 511, baseType: !2028, size: 64, offset: 4608)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !126, file: !30, line: 513, baseType: !2032, size: 64, offset: 4672)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2033, file: !30, line: 293, baseType: !7, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2033, file: !30, line: 294, baseType: !241, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !126, file: !30, line: 515, baseType: !137, size: 128, offset: 4736)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !126, file: !30, line: 526, baseType: !2039, offset: 4864)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2040, line: 5, elements: !164)
!2040 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !126, file: !30, line: 528, baseType: !1926, size: 64, offset: 4864)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !126, file: !30, line: 529, baseType: !96, size: 64, offset: 4928)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !126, file: !30, line: 534, baseType: !2044, size: 32, offset: 4992)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !80, line: 16, baseType: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !80, line: 13, baseType: !464)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !126, file: !30, line: 535, baseType: !464, size: 32, offset: 5024)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !126, file: !30, line: 537, baseType: !150, offset: 5056)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !126, file: !30, line: 538, baseType: !137, size: 128, offset: 5056)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !126, file: !30, line: 540, baseType: !2050, size: 64, offset: 5184)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2052, line: 54, size: 960, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2064, !2068, !2069, !2070, !2071, !2075, !2079, !2080}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2051, file: !2052, line: 55, baseType: !133, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2051, file: !2052, line: 56, baseType: !76, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2051, file: !2052, line: 58, baseType: !245, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2051, file: !2052, line: 59, baseType: !245, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2051, file: !2052, line: 60, baseType: !143, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2051, file: !2052, line: 62, baseType: !1643, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2051, file: !2052, line: 63, baseType: !2061, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!191, !1630, !1650}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2051, file: !2052, line: 65, baseType: !2065, size: 64, offset: 448)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !2050}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2051, file: !2052, line: 66, baseType: !1652, size: 64, offset: 512)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2051, file: !2052, line: 68, baseType: !1661, size: 64, offset: 576)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2051, file: !2052, line: 70, baseType: !1418, size: 64, offset: 640)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2051, file: !2052, line: 71, baseType: !2072, size: 64, offset: 704)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!122, !1630}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2051, file: !2052, line: 73, baseType: !2076, size: 64, offset: 768)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !1630, !1453, !1459}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2051, file: !2052, line: 75, baseType: !1656, size: 64, offset: 832)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2051, file: !2052, line: 77, baseType: !1774, size: 64, offset: 896)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !126, file: !30, line: 541, baseType: !245, size: 64, offset: 5248)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !126, file: !30, line: 543, baseType: !1652, size: 64, offset: 5312)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !126, file: !30, line: 544, baseType: !2084, size: 64, offset: 5376)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !126, file: !30, line: 545, baseType: !2087, size: 64, offset: 5440)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !126, file: !30, line: 547, baseType: !114, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !126, file: !30, line: 548, baseType: !114, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !126, file: !30, line: 549, baseType: !114, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !126, file: !30, line: 550, baseType: !114, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !100, file: !93, line: 116, baseType: !2094, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!114, !116, !133}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !100, file: !93, line: 118, baseType: !2098, size: 64, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!87, !116, !133, !7, !81, !238}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !100, file: !93, line: 123, baseType: !2102, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!87, !116, !133, !2105, !238}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !100, file: !93, line: 126, baseType: !2107, size: 64, offset: 448)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!133, !116}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !100, file: !93, line: 127, baseType: !2107, size: 64, offset: 512)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !100, file: !93, line: 128, baseType: !2112, size: 64, offset: 576)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!96, !116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !100, file: !93, line: 130, baseType: !2116, size: 64, offset: 640)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!96, !116, !96}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !100, file: !93, line: 133, baseType: !2120, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!96, !116, !133}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !100, file: !93, line: 135, baseType: !2124, size: 64, offset: 768)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!87, !116, !133, !133, !7, !7, !2127}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !93, line: 43, size: 640, elements: !2129)
!2129 = !{!2130, !2131, !2132}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2128, file: !93, line: 44, baseType: !96, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2128, file: !93, line: 45, baseType: !7, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2128, file: !93, line: 46, baseType: !2133, size: 512, offset: 128)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 512, elements: !570)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !100, file: !93, line: 140, baseType: !2116, size: 64, offset: 832)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !100, file: !93, line: 143, baseType: !2112, size: 64, offset: 896)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !100, file: !93, line: 145, baseType: !103, size: 64, offset: 960)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !100, file: !93, line: 146, baseType: !2138, size: 64, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!87, !116, !2141}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !93, line: 29, size: 128, elements: !2143)
!2143 = !{!2144, !2145, !2146}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2142, file: !93, line: 30, baseType: !7, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2142, file: !93, line: 31, baseType: !7, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2142, file: !93, line: 32, baseType: !116, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !100, file: !93, line: 148, baseType: !2148, size: 64, offset: 1088)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!87, !116, !1630}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !92, file: !93, line: 20, baseType: !1630, size: 64, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !83, file: !84, line: 355, baseType: !82, size: 64, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !83, file: !84, line: 356, baseType: !137, size: 128, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !84, line: 357, baseType: !137, size: 128, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !83, file: !84, line: 358, baseType: !137, size: 128, offset: 640)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !83, file: !84, line: 359, baseType: !137, size: 128, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !83, file: !84, line: 360, baseType: !2158, size: 32, offset: 896)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !84, line: 179, size: 32, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2158, file: !84, line: 180, baseType: !464, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2158, file: !84, line: 181, baseType: !464, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2158, file: !84, line: 182, baseType: !464, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2158, file: !84, line: 183, baseType: !464, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2158, file: !84, line: 184, baseType: !464, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2158, file: !84, line: 185, baseType: !464, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !84, line: 361, baseType: !2167, size: 32, offset: 928)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !84, line: 190, size: 32, elements: !2168)
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2167, file: !84, line: 191, baseType: !464, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2167, file: !84, line: 192, baseType: !464, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2167, file: !84, line: 193, baseType: !464, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2167, file: !84, line: 194, baseType: !464, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2167, file: !84, line: 195, baseType: !464, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2167, file: !84, line: 196, baseType: !464, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2167, file: !84, line: 197, baseType: !464, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2167, file: !84, line: 198, baseType: !464, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2167, file: !84, line: 199, baseType: !464, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2167, file: !84, line: 200, baseType: !464, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2167, file: !84, line: 201, baseType: !464, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2167, file: !84, line: 202, baseType: !464, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2167, file: !84, line: 203, baseType: !464, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2167, file: !84, line: 204, baseType: !464, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !83, file: !84, line: 362, baseType: !2184, size: 960, offset: 960)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !84, line: 234, size: 960, elements: !2185)
!2185 = !{!2186, !2188, !2195, !2197, !2198, !2199, !2204, !2207}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2184, file: !84, line: 235, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !84, line: 217, baseType: !971)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2184, file: !84, line: 236, baseType: !2189, size: 32, offset: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !84, line: 227, size: 32, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2189, file: !84, line: 228, baseType: !464, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2189, file: !84, line: 229, baseType: !464, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2189, file: !84, line: 230, baseType: !464, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2189, file: !84, line: 231, baseType: !464, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2184, file: !84, line: 237, baseType: !2196, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !84, line: 218, baseType: !310)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2184, file: !84, line: 238, baseType: !191, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2184, file: !84, line: 239, baseType: !137, size: 128, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2184, file: !84, line: 240, baseType: !2200, size: 320, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !84, line: 219, baseType: !2201)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 320, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 40)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2184, file: !84, line: 241, baseType: !2205, size: 160, offset: 704)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !84, line: 220, baseType: !2206)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 160, elements: !1235)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2184, file: !84, line: 242, baseType: !2208, size: 64, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !90, line: 899, size: 192, elements: !2210)
!2210 = !{!2211, !2213, !2218, !2224, !2231, !2237, !2243, !2251}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2209, file: !90, line: 900, baseType: !2212, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !90, line: 635, baseType: !464)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2209, file: !90, line: 904, baseType: !2214, size: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !90, line: 901, size: 128, elements: !2215)
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2214, file: !90, line: 902, baseType: !2212, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2214, file: !90, line: 903, baseType: !310, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2209, file: !90, line: 910, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !90, line: 906, size: 128, elements: !2220)
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2219, file: !90, line: 907, baseType: !2212, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2219, file: !90, line: 908, baseType: !464, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2219, file: !90, line: 909, baseType: !191, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2209, file: !90, line: 916, baseType: !2225, size: 128)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !90, line: 912, size: 128, elements: !2226)
!2226 = !{!2227, !2228, !2229}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2225, file: !90, line: 913, baseType: !2212, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2225, file: !90, line: 914, baseType: !464, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2225, file: !90, line: 915, baseType: !2230, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2209, file: !90, line: 922, baseType: !2232, size: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !90, line: 918, size: 128, elements: !2233)
!2233 = !{!2234, !2235, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2232, file: !90, line: 919, baseType: !2212, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2232, file: !90, line: 920, baseType: !464, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2232, file: !90, line: 921, baseType: !2208, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2209, file: !90, line: 928, baseType: !2238, size: 128)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !90, line: 924, size: 128, elements: !2239)
!2239 = !{!2240, !2241, !2242}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2238, file: !90, line: 925, baseType: !2212, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2238, file: !90, line: 926, baseType: !2212, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2238, file: !90, line: 927, baseType: !89, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2209, file: !90, line: 935, baseType: !2244, size: 192)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !90, line: 930, size: 192, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2250}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2244, file: !90, line: 931, baseType: !2212, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2244, file: !90, line: 932, baseType: !464, size: 32, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2244, file: !90, line: 933, baseType: !2249, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !90, line: 128, baseType: !310)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2244, file: !90, line: 934, baseType: !464, size: 32, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2209, file: !90, line: 941, baseType: !2252, size: 96)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !90, line: 937, size: 96, elements: !2253)
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2252, file: !90, line: 938, baseType: !2212, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2252, file: !90, line: 939, baseType: !464, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2252, file: !90, line: 940, baseType: !464, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !83, file: !84, line: 363, baseType: !2258, size: 1344, offset: 1920)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !84, line: 275, size: 1344, elements: !2259)
!2259 = !{!2260, !2261, !2271}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2258, file: !84, line: 276, baseType: !87, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2258, file: !84, line: 277, baseType: !2262, size: 32, offset: 32)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !84, line: 254, size: 32, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2269, !2270}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2262, file: !84, line: 255, baseType: !464, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2262, file: !84, line: 256, baseType: !464, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2262, file: !84, line: 257, baseType: !464, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2262, file: !84, line: 258, baseType: !464, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2262, file: !84, line: 259, baseType: !464, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2262, file: !84, line: 260, baseType: !464, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2262, file: !84, line: 261, baseType: !464, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2258, file: !84, line: 278, baseType: !2272, size: 1280, offset: 64)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2273, size: 1280, elements: !2284)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !84, line: 264, size: 256, elements: !2274)
!2274 = !{!2275, !2281, !2282, !2283}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !84, line: 269, baseType: !2276, size: 8)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2273, file: !84, line: 265, size: 8, elements: !2277)
!2277 = !{!2278, !2279, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2276, file: !84, line: 266, baseType: !601, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2276, file: !84, line: 267, baseType: !601, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2276, file: !84, line: 268, baseType: !601, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2273, file: !84, line: 270, baseType: !87, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2273, file: !84, line: 271, baseType: !87, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2273, file: !84, line: 272, baseType: !137, size: 128, offset: 128)
!2284 = !{!2285}
!2285 = !DISubrange(count: 5)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !83, file: !84, line: 364, baseType: !2287, size: 640, offset: 3264)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !84, line: 315, size: 640, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2298, !2307, !2308, !2309}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2287, file: !84, line: 316, baseType: !89, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2287, file: !84, line: 317, baseType: !310, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2287, file: !84, line: 318, baseType: !310, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2287, file: !84, line: 319, baseType: !137, size: 128, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2287, file: !84, line: 320, baseType: !2294, size: 8, offset: 320)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !84, line: 305, size: 8, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2294, file: !84, line: 306, baseType: !601, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2294, file: !84, line: 307, baseType: !601, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2287, file: !84, line: 321, baseType: !2299, size: 128, offset: 384)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !84, line: 310, size: 128, elements: !2300)
!2300 = !{!2301, !2306}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2299, file: !84, line: 311, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2299, file: !84, line: 312, baseType: !1630, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2287, file: !84, line: 322, baseType: !1812, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2287, file: !84, line: 323, baseType: !87, size: 32, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2287, file: !84, line: 324, baseType: !87, size: 32, offset: 608)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !83, file: !84, line: 365, baseType: !2311, size: 192, offset: 3904)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !84, line: 297, size: 192, elements: !2312)
!2312 = !{!2313, !2314, !2318, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2311, file: !84, line: 298, baseType: !87, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2311, file: !84, line: 299, baseType: !2315, size: 8, offset: 32)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !84, line: 283, size: 8, elements: !2316)
!2316 = !{!2317}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2315, file: !84, line: 284, baseType: !601, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2311, file: !84, line: 300, baseType: !87, size: 32, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2311, file: !84, line: 301, baseType: !2320, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !84, line: 287, size: 64, elements: !2322)
!2322 = !{!2323, !2328, !2329, !2330}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !84, line: 291, baseType: !2324, size: 8)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2321, file: !84, line: 288, size: 8, elements: !2325)
!2325 = !{!2326, !2327}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2324, file: !84, line: 289, baseType: !601, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2324, file: !84, line: 290, baseType: !601, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2321, file: !84, line: 292, baseType: !601, size: 8, offset: 8)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2321, file: !84, line: 293, baseType: !601, size: 8, offset: 16)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2321, file: !84, line: 294, baseType: !87, size: 32, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !83, file: !84, line: 366, baseType: !2332, size: 64, offset: 4096)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !84, line: 209, size: 64, elements: !2333)
!2333 = !{!2334}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2332, file: !84, line: 210, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2337, line: 123, flags: DIFlagFwdDecl)
!2337 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !83, file: !84, line: 367, baseType: !2339, size: 384, offset: 4160)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !84, line: 341, size: 384, elements: !2340)
!2340 = !{!2341, !2344, !2345, !2346}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2339, file: !84, line: 342, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2209)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2339, file: !84, line: 343, baseType: !137, size: 128, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2339, file: !84, line: 344, baseType: !2342, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2339, file: !84, line: 345, baseType: !137, size: 128, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !83, file: !84, line: 368, baseType: !2348, size: 64, offset: 4544)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !84, line: 122, size: 1216, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2358, !2362, !2366, !2367, !2368}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2349, file: !84, line: 123, baseType: !1725, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2349, file: !84, line: 124, baseType: !137, size: 128, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2349, file: !84, line: 125, baseType: !2354, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!114, !133, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2349, file: !84, line: 126, baseType: !2359, size: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!87, !82, !1725}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2349, file: !84, line: 127, baseType: !2363, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !82}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2349, file: !84, line: 128, baseType: !1652, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2349, file: !84, line: 129, baseType: !1652, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2349, file: !84, line: 130, baseType: !2369, size: 704, offset: 512)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !84, line: 108, size: 704, elements: !2370)
!2370 = !{!2371, !2372, !2376, !2377, !2378}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2369, file: !84, line: 109, baseType: !129, size: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2369, file: !84, line: 110, baseType: !2373, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!87, !82}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2369, file: !84, line: 111, baseType: !2363, size: 64, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2369, file: !84, line: 112, baseType: !114, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2369, file: !84, line: 113, baseType: !114, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !83, file: !84, line: 369, baseType: !2380, size: 64, offset: 4608)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !84, line: 138, size: 256, elements: !2382)
!2382 = !{!2383, !2384, !2388, !2392}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2381, file: !84, line: 139, baseType: !82, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2381, file: !84, line: 140, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!87, !82, !464}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2381, file: !84, line: 141, baseType: !2389, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !82, !464}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2381, file: !84, line: 142, baseType: !2363, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !83, file: !84, line: 370, baseType: !2394, size: 64, offset: 4672)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !84, line: 162, size: 2816, elements: !2396)
!2396 = !{!2397, !2401, !2402, !2403, !2404, !2413, !2414}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2395, file: !84, line: 163, baseType: !2398, size: 640)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 640, elements: !2399)
!2399 = !{!2400}
!2400 = !DISubrange(count: 80)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2395, file: !84, line: 164, baseType: !2398, size: 640, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2395, file: !84, line: 165, baseType: !1725, size: 64, offset: 1280)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2395, file: !84, line: 166, baseType: !7, size: 32, offset: 1344)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2395, file: !84, line: 167, baseType: !2405, size: 192, offset: 1408)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !84, line: 154, size: 192, elements: !2406)
!2406 = !{!2407, !2409, !2411}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2405, file: !84, line: 155, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !84, line: 150, baseType: !2373)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2405, file: !84, line: 156, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !84, line: 151, baseType: !2373)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2405, file: !84, line: 157, baseType: !2412, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !84, line: 152, baseType: !2389)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2395, file: !84, line: 168, baseType: !1702, size: 1152, offset: 1600)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2395, file: !84, line: 169, baseType: !76, size: 64, offset: 2752)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !83, file: !84, line: 371, baseType: !2416, size: 64, offset: 4736)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !84, line: 348, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !83, file: !84, line: 372, baseType: !81, size: 64, offset: 4800)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !83, file: !84, line: 373, baseType: !126, size: 5568, offset: 4864)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !83, file: !84, line: 374, baseType: !7, size: 32, offset: 10432)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !83, file: !84, line: 375, baseType: !7, size: 32, offset: 10464)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !83, file: !84, line: 376, baseType: !137, size: 128, offset: 10496)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !83, file: !84, line: 377, baseType: !409, size: 192, offset: 10624)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !83, file: !84, line: 378, baseType: !2363, size: 64, offset: 10816)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !140)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !90, line: 421, baseType: !464)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_ged_event", file: !3, line: 48, size: 320, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435, !2436}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2430, file: !3, line: 49, baseType: !137, size: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2430, file: !3, line: 50, baseType: !1630, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "gsi", scope: !2430, file: !3, line: 51, baseType: !7, size: 32, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2430, file: !3, line: 52, baseType: !7, size: 32, offset: 224)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2430, file: !3, line: 53, baseType: !89, size: 64, offset: 256)
!2437 = !{!0, !2438, !2497, !2503}
!2438 = !DIGlobalVariableExpression(var: !2439, expr: !DIExpression())
!2439 = distinct !DIGlobalVariable(name: "ged_driver", scope: !2, file: !3, line: 187, type: !2440, isLocal: true, isDefinition: true)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2441, line: 200, size: 1600, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !{!2443, !2484, !2485, !2489, !2493, !2494, !2495, !2496}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2440, file: !2441, line: 201, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!87, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2441, line: 22, size: 6208, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2471, !2478, !2479, !2482}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2448, file: !2441, line: 23, baseType: !133, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2448, file: !2441, line: 24, baseType: !87, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2448, file: !2441, line: 25, baseType: !114, size: 8, offset: 96)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2448, file: !2441, line: 26, baseType: !126, size: 5568, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2448, file: !2441, line: 27, baseType: !310, size: 64, offset: 5696)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2448, file: !2441, line: 28, baseType: !2033, size: 128, offset: 5760)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2448, file: !2441, line: 29, baseType: !464, size: 32, offset: 5888)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2448, file: !2441, line: 30, baseType: !2458, size: 64, offset: 5952)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2460, line: 20, size: 512, elements: !2461)
!2460 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2461 = !{!2462, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2459, file: !2460, line: 21, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !80, line: 158, baseType: !1161)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2459, file: !2460, line: 22, baseType: !2463, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2459, file: !2460, line: 23, baseType: !133, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2459, file: !2460, line: 24, baseType: !241, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2459, file: !2460, line: 25, baseType: !241, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2459, file: !2460, line: 26, baseType: !2458, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2459, file: !2460, line: 26, baseType: !2458, size: 64, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2459, file: !2460, line: 26, baseType: !2458, size: 64, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2448, file: !2441, line: 32, baseType: !2472, size: 64, offset: 6016)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2474)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1714, line: 586, size: 256, elements: !2475)
!2475 = !{!2476, !2477}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2474, file: !1714, line: 587, baseType: !2206, size: 160)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2474, file: !1714, line: 588, baseType: !1734, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2448, file: !2441, line: 33, baseType: !191, size: 64, offset: 6080)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2448, file: !2441, line: 36, baseType: !2480, size: 64, offset: 6144)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2441, line: 18, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2448, file: !2441, line: 39, baseType: !2483, offset: 6208)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2040, line: 8, elements: !164)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2440, file: !2441, line: 202, baseType: !2444, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2440, file: !2441, line: 203, baseType: !2486, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !2447}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2440, file: !2441, line: 204, baseType: !2490, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!87, !2447, !1745}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2440, file: !2441, line: 205, baseType: !2444, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2440, file: !2441, line: 206, baseType: !1702, size: 1152, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2440, file: !2441, line: 207, baseType: !2472, size: 64, offset: 1472)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2440, file: !2441, line: 208, baseType: !114, size: 8, offset: 1536)
!2497 = !DIGlobalVariableExpression(var: !2498, expr: !DIExpression())
!2498 = distinct !DIGlobalVariable(name: "__print_once", scope: !2499, file: !3, line: 63, type: !114, isLocal: true, isDefinition: true)
!2499 = distinct !DISubprogram(name: "acpi_ged_irq_handler", scope: !3, file: !3, line: 56, type: !2500, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2502, !87, !81}
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !65, line: 17, baseType: !64)
!2503 = !DIGlobalVariableExpression(var: !2504, expr: !DIExpression())
!2504 = distinct !DIGlobalVariable(name: "ged_acpi_ids", scope: !2, file: !3, line: 182, type: !2505, isLocal: true, isDefinition: true)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1726, size: 512, elements: !1006)
!2506 = !{i32 7, !"Dwarf Version", i32 4}
!2507 = !{i32 2, !"Debug Info Version", i32 3}
!2508 = !{i32 1, !"wchar_size", i32 2}
!2509 = !{i32 1, !"Code Model", i32 2}
!2510 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2511 = distinct !DISubprogram(name: "ged_driver_init", scope: !3, file: !3, line: 196, type: !2512, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!87}
!2514 = !DILocation(line: 196, column: 1, scope: !2511)
!2515 = distinct !DISubprogram(name: "ged_probe", scope: !3, file: !3, line: 141, type: !2445, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2516 = !DILocalVariable(name: "pdev", arg: 1, scope: !2515, file: !3, line: 141, type: !2447)
!2517 = !DILocation(line: 141, column: 46, scope: !2515)
!2518 = !DILocalVariable(name: "geddev", scope: !2515, file: !3, line: 143, type: !2519)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_ged_device", file: !3, line: 43, size: 192, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2520, file: !3, line: 44, baseType: !1630, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2520, file: !3, line: 45, baseType: !137, size: 128, offset: 64)
!2524 = !DILocation(line: 143, column: 26, scope: !2515)
!2525 = !DILocalVariable(name: "acpi_ret", scope: !2515, file: !3, line: 144, type: !2428)
!2526 = !DILocation(line: 144, column: 14, scope: !2515)
!2527 = !DILocation(line: 146, column: 25, scope: !2515)
!2528 = !DILocation(line: 146, column: 31, scope: !2515)
!2529 = !DILocation(line: 146, column: 11, scope: !2515)
!2530 = !DILocation(line: 146, column: 9, scope: !2515)
!2531 = !DILocation(line: 147, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 147, column: 6)
!2533 = !DILocation(line: 147, column: 6, scope: !2515)
!2534 = !DILocation(line: 148, column: 3, scope: !2532)
!2535 = !DILocation(line: 150, column: 17, scope: !2515)
!2536 = !DILocation(line: 150, column: 23, scope: !2515)
!2537 = !DILocation(line: 150, column: 2, scope: !2515)
!2538 = !DILocation(line: 150, column: 10, scope: !2515)
!2539 = !DILocation(line: 150, column: 14, scope: !2515)
!2540 = !DILocation(line: 151, column: 18, scope: !2515)
!2541 = !DILocation(line: 151, column: 26, scope: !2515)
!2542 = !DILocation(line: 151, column: 2, scope: !2515)
!2543 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2544, file: !3, line: 152, type: !96)
!2544 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 152, column: 33)
!2545 = !DILocation(line: 152, column: 33, scope: !2544)
!2546 = !DILocalVariable(name: "__mptr", scope: !2547, file: !3, line: 152, type: !81)
!2547 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 152, column: 33)
!2548 = !DILocation(line: 152, column: 33, scope: !2547)
!2549 = !DILocation(line: 152, column: 33, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 152, column: 33)
!2551 = !DILocation(line: 152, column: 33, scope: !2515)
!2552 = !DILocation(line: 153, column: 40, scope: !2515)
!2553 = !DILocation(line: 152, column: 13, scope: !2515)
!2554 = !DILocation(line: 152, column: 11, scope: !2515)
!2555 = !DILocation(line: 154, column: 6, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 154, column: 6)
!2557 = !DILocation(line: 154, column: 6, scope: !2515)
!2558 = !DILocation(line: 155, column: 3, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 154, column: 30)
!2560 = !DILocation(line: 156, column: 3, scope: !2559)
!2561 = !DILocation(line: 158, column: 23, scope: !2515)
!2562 = !DILocation(line: 158, column: 29, scope: !2515)
!2563 = !DILocation(line: 158, column: 2, scope: !2515)
!2564 = !DILocation(line: 160, column: 2, scope: !2515)
!2565 = !DILocation(line: 161, column: 1, scope: !2515)
!2566 = distinct !DISubprogram(name: "ged_remove", scope: !3, file: !3, line: 176, type: !2445, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2567 = !DILocalVariable(name: "pdev", arg: 1, scope: !2566, file: !3, line: 176, type: !2447)
!2568 = !DILocation(line: 176, column: 47, scope: !2566)
!2569 = !DILocation(line: 178, column: 15, scope: !2566)
!2570 = !DILocation(line: 178, column: 2, scope: !2566)
!2571 = !DILocation(line: 179, column: 2, scope: !2566)
!2572 = distinct !DISubprogram(name: "ged_shutdown", scope: !3, file: !3, line: 163, type: !2487, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2573 = !DILocalVariable(name: "pdev", arg: 1, scope: !2572, file: !3, line: 163, type: !2447)
!2574 = !DILocation(line: 163, column: 50, scope: !2572)
!2575 = !DILocalVariable(name: "geddev", scope: !2572, file: !3, line: 165, type: !2519)
!2576 = !DILocation(line: 165, column: 26, scope: !2572)
!2577 = !DILocation(line: 165, column: 56, scope: !2572)
!2578 = !DILocation(line: 165, column: 35, scope: !2572)
!2579 = !DILocalVariable(name: "event", scope: !2572, file: !3, line: 166, type: !2429)
!2580 = !DILocation(line: 166, column: 25, scope: !2572)
!2581 = !DILocalVariable(name: "next", scope: !2572, file: !3, line: 166, type: !2429)
!2582 = !DILocation(line: 166, column: 33, scope: !2572)
!2583 = !DILocalVariable(name: "__mptr", scope: !2584, file: !3, line: 168, type: !81)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 168, column: 2)
!2585 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 168, column: 2)
!2586 = !DILocation(line: 168, column: 2, scope: !2584)
!2587 = !DILocation(line: 168, column: 2, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 168, column: 2)
!2589 = !DILocation(line: 168, column: 2, scope: !2585)
!2590 = !DILocalVariable(name: "__mptr", scope: !2591, file: !3, line: 168, type: !81)
!2591 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 168, column: 2)
!2592 = !DILocation(line: 168, column: 2, scope: !2591)
!2593 = !DILocation(line: 168, column: 2, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 168, column: 2)
!2595 = !DILocation(line: 168, column: 2, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 168, column: 2)
!2597 = !DILocation(line: 169, column: 12, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 168, column: 67)
!2599 = !DILocation(line: 169, column: 19, scope: !2598)
!2600 = !DILocation(line: 169, column: 24, scope: !2598)
!2601 = !DILocation(line: 169, column: 3, scope: !2598)
!2602 = !DILocation(line: 170, column: 13, scope: !2598)
!2603 = !DILocation(line: 170, column: 20, scope: !2598)
!2604 = !DILocation(line: 170, column: 3, scope: !2598)
!2605 = !DILocation(line: 173, column: 2, scope: !2598)
!2606 = !DILocalVariable(name: "__mptr", scope: !2607, file: !3, line: 168, type: !81)
!2607 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 168, column: 2)
!2608 = !DILocation(line: 168, column: 2, scope: !2607)
!2609 = !DILocation(line: 168, column: 2, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 168, column: 2)
!2611 = distinct !{!2611, !2589, !2612}
!2612 = !DILocation(line: 173, column: 2, scope: !2585)
!2613 = !DILocation(line: 174, column: 1, scope: !2572)
!2614 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2615, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!81, !1630, !238, !79}
!2617 = !DILocalVariable(name: "dev", arg: 1, scope: !2614, file: !30, line: 215, type: !1630)
!2618 = !DILocation(line: 215, column: 49, scope: !2614)
!2619 = !DILocalVariable(name: "size", arg: 2, scope: !2614, file: !30, line: 215, type: !238)
!2620 = !DILocation(line: 215, column: 61, scope: !2614)
!2621 = !DILocalVariable(name: "gfp", arg: 3, scope: !2614, file: !30, line: 215, type: !79)
!2622 = !DILocation(line: 215, column: 73, scope: !2614)
!2623 = !DILocation(line: 217, column: 22, scope: !2614)
!2624 = !DILocation(line: 217, column: 27, scope: !2614)
!2625 = !DILocation(line: 217, column: 33, scope: !2614)
!2626 = !DILocation(line: 217, column: 37, scope: !2614)
!2627 = !DILocation(line: 217, column: 9, scope: !2614)
!2628 = !DILocation(line: 217, column: 2, scope: !2614)
!2629 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2630, file: !2630, line: 33, type: !2631, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2630 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !140}
!2633 = !DILocalVariable(name: "list", arg: 1, scope: !2629, file: !2630, line: 33, type: !140)
!2634 = !DILocation(line: 33, column: 53, scope: !2629)
!2635 = !DILocation(line: 35, column: 2, scope: !2629)
!2636 = !DILocation(line: 35, column: 2, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2629, file: !2630, line: 35, column: 2)
!2638 = !DILocation(line: 35, column: 2, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2637, file: !2630, line: 35, column: 2)
!2640 = !DILocation(line: 35, column: 2, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !2630, line: 35, column: 2)
!2642 = !DILocation(line: 36, column: 15, scope: !2629)
!2643 = !DILocation(line: 36, column: 2, scope: !2629)
!2644 = !DILocation(line: 36, column: 8, scope: !2629)
!2645 = !DILocation(line: 36, column: 13, scope: !2629)
!2646 = !DILocation(line: 37, column: 1, scope: !2629)
!2647 = distinct !DISubprogram(name: "acpi_device_handle", scope: !2648, file: !2648, line: 38, type: !2649, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2648 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!89, !82}
!2651 = !DILocalVariable(name: "adev", arg: 1, scope: !2647, file: !2648, line: 38, type: !82)
!2652 = !DILocation(line: 38, column: 66, scope: !2647)
!2653 = !DILocation(line: 40, column: 9, scope: !2647)
!2654 = !DILocation(line: 40, column: 16, scope: !2647)
!2655 = !DILocation(line: 40, column: 22, scope: !2647)
!2656 = !DILocation(line: 40, column: 2, scope: !2647)
!2657 = distinct !DISubprogram(name: "acpi_ged_request_interrupt", scope: !3, file: !3, line: 68, type: !2658, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!2428, !2660, !81}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !2662, line: 651, size: 544, elements: !2663)
!2662 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!2663 = !{!2664, !2665, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2661, file: !2662, line: 652, baseType: !464, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2661, file: !2662, line: 653, baseType: !464, size: 32, offset: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2661, file: !2662, line: 654, baseType: !2667, size: 480, offset: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !2662, line: 614, size: 480, elements: !2668)
!2668 = !{!2669, !2680, !2688, !2694, !2702, !2707, !2713, !2718, !2726, !2730, !2738, !2746, !2752, !2792, !2810, !2828, !2840, !2852, !2860, !2880, !2896, !2916, !2938, !2951, !2963, !2976, !2990, !3001, !3013}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2667, file: !2662, line: 615, baseType: !2670, size: 56)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !2662, line: 138, size: 56, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2670, file: !2662, line: 139, baseType: !601, size: 8)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2670, file: !2662, line: 140, baseType: !601, size: 8, offset: 8)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2670, file: !2662, line: 141, baseType: !601, size: 8, offset: 16)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2670, file: !2662, line: 142, baseType: !601, size: 8, offset: 24)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2670, file: !2662, line: 143, baseType: !601, size: 8, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2670, file: !2662, line: 144, baseType: !601, size: 8, offset: 40)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2670, file: !2662, line: 145, baseType: !2679, size: 8, offset: 48)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 8, elements: !621)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2667, file: !2662, line: 616, baseType: !2681, size: 40)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !2662, line: 148, size: 40, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2681, file: !2662, line: 149, baseType: !601, size: 8)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !2681, file: !2662, line: 150, baseType: !601, size: 8, offset: 8)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !2681, file: !2662, line: 151, baseType: !601, size: 8, offset: 16)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !2681, file: !2662, line: 152, baseType: !601, size: 8, offset: 24)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2681, file: !2662, line: 153, baseType: !2679, size: 8, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !2667, file: !2662, line: 617, baseType: !2689, size: 24)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !2662, line: 156, size: 24, elements: !2690)
!2690 = !{!2691, !2692, !2693}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2689, file: !2662, line: 157, baseType: !601, size: 8)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !2689, file: !2662, line: 158, baseType: !601, size: 8, offset: 8)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !2689, file: !2662, line: 159, baseType: !601, size: 8, offset: 16)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2667, file: !2662, line: 618, baseType: !2695, size: 56)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !2662, line: 167, size: 56, elements: !2696)
!2696 = !{!2697, !2698, !2699, !2700, !2701}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !2695, file: !2662, line: 168, baseType: !601, size: 8)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2695, file: !2662, line: 169, baseType: !601, size: 8, offset: 8)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2695, file: !2662, line: 170, baseType: !601, size: 8, offset: 16)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2695, file: !2662, line: 171, baseType: !438, size: 16, offset: 24)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2695, file: !2662, line: 172, baseType: !438, size: 16, offset: 40)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !2667, file: !2662, line: 619, baseType: !2703, size: 24)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !2662, line: 175, size: 24, elements: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2703, file: !2662, line: 176, baseType: !438, size: 16)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2703, file: !2662, line: 177, baseType: !601, size: 8, offset: 16)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !2667, file: !2662, line: 620, baseType: !2708, size: 40)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !2662, line: 180, size: 40, elements: !2709)
!2709 = !{!2710, !2711, !2712}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !2708, file: !2662, line: 181, baseType: !438, size: 16)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2708, file: !2662, line: 182, baseType: !438, size: 16, offset: 16)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2708, file: !2662, line: 183, baseType: !601, size: 8, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2667, file: !2662, line: 621, baseType: !2714, size: 24)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !2662, line: 195, size: 24, elements: !2715)
!2715 = !{!2716, !2717}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2714, file: !2662, line: 196, baseType: !438, size: 16)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2714, file: !2662, line: 197, baseType: !2679, size: 8, offset: 16)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !2667, file: !2662, line: 622, baseType: !2719, size: 160)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !2662, line: 202, size: 160, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2725}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2719, file: !2662, line: 203, baseType: !438, size: 16)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !2719, file: !2662, line: 204, baseType: !601, size: 8, offset: 16)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2719, file: !2662, line: 205, baseType: !2724, size: 128, offset: 24)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 128, elements: !826)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2719, file: !2662, line: 206, baseType: !2679, size: 8, offset: 152)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !2667, file: !2662, line: 623, baseType: !2727, size: 8)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !2662, line: 209, size: 8, elements: !2728)
!2728 = !{!2729}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2727, file: !2662, line: 210, baseType: !601, size: 8)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !2667, file: !2662, line: 624, baseType: !2731, size: 72)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !2662, line: 213, size: 72, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2731, file: !2662, line: 214, baseType: !601, size: 8)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2731, file: !2662, line: 215, baseType: !438, size: 16, offset: 8)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2731, file: !2662, line: 216, baseType: !438, size: 16, offset: 24)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2731, file: !2662, line: 217, baseType: !438, size: 16, offset: 40)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2731, file: !2662, line: 218, baseType: !438, size: 16, offset: 56)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !2667, file: !2662, line: 625, baseType: !2739, size: 136)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !2662, line: 221, size: 136, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744, !2745}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2739, file: !2662, line: 222, baseType: !601, size: 8)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2739, file: !2662, line: 223, baseType: !464, size: 32, offset: 8)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2739, file: !2662, line: 224, baseType: !464, size: 32, offset: 40)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2739, file: !2662, line: 225, baseType: !464, size: 32, offset: 72)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2739, file: !2662, line: 226, baseType: !464, size: 32, offset: 104)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !2667, file: !2662, line: 626, baseType: !2747, size: 72)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !2662, line: 229, size: 72, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2747, file: !2662, line: 230, baseType: !601, size: 8)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2747, file: !2662, line: 231, baseType: !464, size: 32, offset: 8)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2747, file: !2662, line: 232, baseType: !464, size: 32, offset: 40)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !2667, file: !2662, line: 627, baseType: !2753, size: 240)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !2662, line: 306, size: 240, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2758, !2759, !2760, !2778, !2786}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2753, file: !2662, line: 307, baseType: !601, size: 8)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2753, file: !2662, line: 307, baseType: !601, size: 8, offset: 8)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2753, file: !2662, line: 307, baseType: !601, size: 8, offset: 16)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2753, file: !2662, line: 307, baseType: !601, size: 8, offset: 24)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2753, file: !2662, line: 307, baseType: !601, size: 8, offset: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2753, file: !2662, line: 307, baseType: !2761, size: 32, offset: 40)
!2761 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !2662, line: 249, size: 32, elements: !2762)
!2762 = !{!2763, !2770, !2777}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2761, file: !2662, line: 250, baseType: !2764, size: 32)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !2662, line: 235, size: 32, elements: !2765)
!2765 = !{!2766, !2767, !2768, !2769}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2764, file: !2662, line: 236, baseType: !601, size: 8)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !2764, file: !2662, line: 237, baseType: !601, size: 8, offset: 8)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !2764, file: !2662, line: 238, baseType: !601, size: 8, offset: 16)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !2764, file: !2662, line: 239, baseType: !601, size: 8, offset: 24)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2761, file: !2662, line: 251, baseType: !2771, size: 32)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !2662, line: 242, size: 32, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !2771, file: !2662, line: 243, baseType: !601, size: 8)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !2771, file: !2662, line: 244, baseType: !601, size: 8, offset: 8)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !2771, file: !2662, line: 245, baseType: !601, size: 8, offset: 16)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2771, file: !2662, line: 246, baseType: !601, size: 8, offset: 24)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !2761, file: !2662, line: 255, baseType: !601, size: 8)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2753, file: !2662, line: 307, baseType: !2779, size: 80, offset: 72)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !2662, line: 279, size: 80, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784, !2785}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2779, file: !2662, line: 280, baseType: !438, size: 16)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2779, file: !2662, line: 281, baseType: !438, size: 16, offset: 16)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2779, file: !2662, line: 282, baseType: !438, size: 16, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2779, file: !2662, line: 283, baseType: !438, size: 16, offset: 48)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2779, file: !2662, line: 284, baseType: !438, size: 16, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2753, file: !2662, line: 308, baseType: !2787, size: 88, offset: 152)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !2662, line: 263, size: 88, elements: !2788)
!2788 = !{!2789, !2790, !2791}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2787, file: !2662, line: 264, baseType: !601, size: 8)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2787, file: !2662, line: 265, baseType: !438, size: 16, offset: 8)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2787, file: !2662, line: 266, baseType: !191, size: 64, offset: 24)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !2667, file: !2662, line: 628, baseType: !2793, size: 320)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !2662, line: 311, size: 320, elements: !2794)
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800, !2801, !2809}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2793, file: !2662, line: 312, baseType: !601, size: 8)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2793, file: !2662, line: 312, baseType: !601, size: 8, offset: 8)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2793, file: !2662, line: 312, baseType: !601, size: 8, offset: 16)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2793, file: !2662, line: 312, baseType: !601, size: 8, offset: 24)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2793, file: !2662, line: 312, baseType: !601, size: 8, offset: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2793, file: !2662, line: 312, baseType: !2761, size: 32, offset: 40)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2793, file: !2662, line: 312, baseType: !2802, size: 160, offset: 72)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !2662, line: 287, size: 160, elements: !2803)
!2803 = !{!2804, !2805, !2806, !2807, !2808}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2802, file: !2662, line: 288, baseType: !464, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2802, file: !2662, line: 289, baseType: !464, size: 32, offset: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2802, file: !2662, line: 290, baseType: !464, size: 32, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2802, file: !2662, line: 291, baseType: !464, size: 32, offset: 96)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2802, file: !2662, line: 292, baseType: !464, size: 32, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2793, file: !2662, line: 313, baseType: !2787, size: 88, offset: 232)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !2667, file: !2662, line: 629, baseType: !2811, size: 480)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !2662, line: 316, size: 480, elements: !2812)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819, !2827}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2811, file: !2662, line: 317, baseType: !601, size: 8)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2811, file: !2662, line: 317, baseType: !601, size: 8, offset: 8)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2811, file: !2662, line: 317, baseType: !601, size: 8, offset: 16)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2811, file: !2662, line: 317, baseType: !601, size: 8, offset: 24)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2811, file: !2662, line: 317, baseType: !601, size: 8, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2811, file: !2662, line: 317, baseType: !2761, size: 32, offset: 40)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2811, file: !2662, line: 317, baseType: !2820, size: 320, offset: 72)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !2662, line: 295, size: 320, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2820, file: !2662, line: 296, baseType: !310, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2820, file: !2662, line: 297, baseType: !310, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2820, file: !2662, line: 298, baseType: !310, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2820, file: !2662, line: 299, baseType: !310, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2820, file: !2662, line: 300, baseType: !310, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2811, file: !2662, line: 318, baseType: !2787, size: 88, offset: 392)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !2667, file: !2662, line: 630, baseType: !2829, size: 464)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !2662, line: 321, size: 464, elements: !2830)
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2829, file: !2662, line: 322, baseType: !601, size: 8)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2829, file: !2662, line: 322, baseType: !601, size: 8, offset: 8)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2829, file: !2662, line: 322, baseType: !601, size: 8, offset: 16)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2829, file: !2662, line: 322, baseType: !601, size: 8, offset: 24)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2829, file: !2662, line: 322, baseType: !601, size: 8, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2829, file: !2662, line: 322, baseType: !2761, size: 32, offset: 40)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !2829, file: !2662, line: 322, baseType: !601, size: 8, offset: 72)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2829, file: !2662, line: 323, baseType: !2820, size: 320, offset: 80)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !2829, file: !2662, line: 324, baseType: !310, size: 64, offset: 400)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !2667, file: !2662, line: 631, baseType: !2841, size: 168)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !2662, line: 327, size: 168, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2841, file: !2662, line: 328, baseType: !601, size: 8)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2841, file: !2662, line: 329, baseType: !601, size: 8, offset: 8)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2841, file: !2662, line: 330, baseType: !601, size: 8, offset: 16)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2841, file: !2662, line: 331, baseType: !601, size: 8, offset: 24)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2841, file: !2662, line: 332, baseType: !601, size: 8, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2841, file: !2662, line: 333, baseType: !601, size: 8, offset: 40)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2841, file: !2662, line: 334, baseType: !2787, size: 88, offset: 48)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2841, file: !2662, line: 335, baseType: !2851, size: 32, offset: 136)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 32, elements: !621)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !2667, file: !2662, line: 632, baseType: !2853, size: 96)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !2662, line: 338, size: 96, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858, !2859}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2853, file: !2662, line: 339, baseType: !601, size: 8)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !2853, file: !2662, line: 340, baseType: !601, size: 8, offset: 8)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2853, file: !2662, line: 341, baseType: !601, size: 8, offset: 16)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !2853, file: !2662, line: 342, baseType: !601, size: 8, offset: 24)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2853, file: !2662, line: 343, baseType: !310, size: 64, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !2667, file: !2662, line: 633, baseType: !2861, size: 352)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !2662, line: 346, size: 352, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2879}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2861, file: !2662, line: 347, baseType: !601, size: 8)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !2861, file: !2662, line: 348, baseType: !601, size: 8, offset: 8)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2861, file: !2662, line: 349, baseType: !601, size: 8, offset: 16)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2861, file: !2662, line: 350, baseType: !601, size: 8, offset: 24)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2861, file: !2662, line: 351, baseType: !601, size: 8, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2861, file: !2662, line: 352, baseType: !601, size: 8, offset: 40)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !2861, file: !2662, line: 353, baseType: !601, size: 8, offset: 48)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2861, file: !2662, line: 354, baseType: !601, size: 8, offset: 56)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2861, file: !2662, line: 355, baseType: !601, size: 8, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !2861, file: !2662, line: 356, baseType: !438, size: 16, offset: 72)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !2861, file: !2662, line: 357, baseType: !438, size: 16, offset: 88)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2861, file: !2662, line: 358, baseType: !438, size: 16, offset: 104)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2861, file: !2662, line: 359, baseType: !438, size: 16, offset: 120)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2861, file: !2662, line: 360, baseType: !2787, size: 88, offset: 136)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2861, file: !2662, line: 361, baseType: !2878, size: 64, offset: 224)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2861, file: !2662, line: 362, baseType: !2230, size: 64, offset: 288)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !2667, file: !2662, line: 634, baseType: !2881, size: 288)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !2662, line: 412, size: 288, elements: !2882)
!2882 = !{!2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2881, file: !2662, line: 413, baseType: !601, size: 8)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2881, file: !2662, line: 413, baseType: !601, size: 8, offset: 8)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2881, file: !2662, line: 413, baseType: !601, size: 8, offset: 16)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2881, file: !2662, line: 413, baseType: !601, size: 8, offset: 24)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2881, file: !2662, line: 413, baseType: !601, size: 8, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2881, file: !2662, line: 413, baseType: !601, size: 8, offset: 40)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2881, file: !2662, line: 413, baseType: !438, size: 16, offset: 48)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2881, file: !2662, line: 413, baseType: !438, size: 16, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2881, file: !2662, line: 413, baseType: !2787, size: 88, offset: 80)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2881, file: !2662, line: 413, baseType: !2230, size: 64, offset: 168)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !2881, file: !2662, line: 413, baseType: !601, size: 8, offset: 232)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !2881, file: !2662, line: 414, baseType: !438, size: 16, offset: 240)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2881, file: !2662, line: 415, baseType: !464, size: 32, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !2667, file: !2662, line: 635, baseType: !2897, size: 320)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !2662, line: 423, size: 320, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2897, file: !2662, line: 424, baseType: !601, size: 8)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2897, file: !2662, line: 424, baseType: !601, size: 8, offset: 8)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2897, file: !2662, line: 424, baseType: !601, size: 8, offset: 16)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2897, file: !2662, line: 424, baseType: !601, size: 8, offset: 24)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2897, file: !2662, line: 424, baseType: !601, size: 8, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2897, file: !2662, line: 424, baseType: !601, size: 8, offset: 40)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2897, file: !2662, line: 424, baseType: !438, size: 16, offset: 48)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2897, file: !2662, line: 424, baseType: !438, size: 16, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2897, file: !2662, line: 424, baseType: !2787, size: 88, offset: 80)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2897, file: !2662, line: 424, baseType: !2230, size: 64, offset: 168)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !2897, file: !2662, line: 424, baseType: !601, size: 8, offset: 232)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !2897, file: !2662, line: 425, baseType: !601, size: 8, offset: 240)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !2897, file: !2662, line: 426, baseType: !601, size: 8, offset: 248)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !2897, file: !2662, line: 427, baseType: !601, size: 8, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !2897, file: !2662, line: 428, baseType: !601, size: 8, offset: 264)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !2897, file: !2662, line: 429, baseType: !438, size: 16, offset: 272)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2897, file: !2662, line: 430, baseType: !464, size: 32, offset: 288)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !2667, file: !2662, line: 636, baseType: !2917, size: 344)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !2662, line: 453, size: 344, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2917, file: !2662, line: 454, baseType: !601, size: 8)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2917, file: !2662, line: 454, baseType: !601, size: 8, offset: 8)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2917, file: !2662, line: 454, baseType: !601, size: 8, offset: 16)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2917, file: !2662, line: 454, baseType: !601, size: 8, offset: 24)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2917, file: !2662, line: 454, baseType: !601, size: 8, offset: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2917, file: !2662, line: 454, baseType: !601, size: 8, offset: 40)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2917, file: !2662, line: 454, baseType: !438, size: 16, offset: 48)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2917, file: !2662, line: 454, baseType: !438, size: 16, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2917, file: !2662, line: 454, baseType: !2787, size: 88, offset: 80)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2917, file: !2662, line: 454, baseType: !2230, size: 64, offset: 168)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !2917, file: !2662, line: 454, baseType: !601, size: 8, offset: 232)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !2917, file: !2662, line: 455, baseType: !601, size: 8, offset: 240)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !2917, file: !2662, line: 456, baseType: !601, size: 8, offset: 248)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !2917, file: !2662, line: 457, baseType: !601, size: 8, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !2917, file: !2662, line: 458, baseType: !601, size: 8, offset: 264)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !2917, file: !2662, line: 459, baseType: !601, size: 8, offset: 272)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !2917, file: !2662, line: 460, baseType: !438, size: 16, offset: 280)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !2917, file: !2662, line: 461, baseType: !438, size: 16, offset: 296)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !2917, file: !2662, line: 462, baseType: !464, size: 32, offset: 312)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !2667, file: !2662, line: 637, baseType: !2939, size: 232)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !2662, line: 398, size: 232, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2939, file: !2662, line: 399, baseType: !601, size: 8)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2939, file: !2662, line: 399, baseType: !601, size: 8, offset: 8)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2939, file: !2662, line: 399, baseType: !601, size: 8, offset: 16)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2939, file: !2662, line: 399, baseType: !601, size: 8, offset: 24)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2939, file: !2662, line: 399, baseType: !601, size: 8, offset: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2939, file: !2662, line: 399, baseType: !601, size: 8, offset: 40)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2939, file: !2662, line: 399, baseType: !438, size: 16, offset: 48)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2939, file: !2662, line: 399, baseType: !438, size: 16, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2939, file: !2662, line: 399, baseType: !2787, size: 88, offset: 80)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2939, file: !2662, line: 399, baseType: !2230, size: 64, offset: 168)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !2667, file: !2662, line: 638, baseType: !2952, size: 288)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !2662, line: 508, size: 288, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2952, file: !2662, line: 509, baseType: !601, size: 8)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2952, file: !2662, line: 510, baseType: !601, size: 8, offset: 8)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2952, file: !2662, line: 511, baseType: !601, size: 8, offset: 16)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2952, file: !2662, line: 512, baseType: !438, size: 16, offset: 24)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2952, file: !2662, line: 513, baseType: !438, size: 16, offset: 40)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2952, file: !2662, line: 514, baseType: !438, size: 16, offset: 56)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2952, file: !2662, line: 515, baseType: !2787, size: 88, offset: 72)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2952, file: !2662, line: 516, baseType: !2878, size: 64, offset: 160)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2952, file: !2662, line: 517, baseType: !2230, size: 64, offset: 224)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2667, file: !2662, line: 639, baseType: !2964, size: 312)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !2662, line: 520, size: 312, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2964, file: !2662, line: 521, baseType: !601, size: 8)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2964, file: !2662, line: 522, baseType: !601, size: 8, offset: 8)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2964, file: !2662, line: 523, baseType: !601, size: 8, offset: 16)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !2964, file: !2662, line: 524, baseType: !601, size: 8, offset: 24)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !2964, file: !2662, line: 525, baseType: !464, size: 32, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2964, file: !2662, line: 526, baseType: !438, size: 16, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2964, file: !2662, line: 527, baseType: !438, size: 16, offset: 80)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2964, file: !2662, line: 528, baseType: !2787, size: 88, offset: 96)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2964, file: !2662, line: 529, baseType: !2878, size: 64, offset: 184)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2964, file: !2662, line: 530, baseType: !2230, size: 64, offset: 248)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !2667, file: !2662, line: 640, baseType: !2977, size: 256)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !2662, line: 550, size: 256, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2984, !2989}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2977, file: !2662, line: 551, baseType: !601, size: 8)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2977, file: !2662, line: 552, baseType: !601, size: 8, offset: 8)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2977, file: !2662, line: 553, baseType: !438, size: 16, offset: 16)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2977, file: !2662, line: 554, baseType: !438, size: 16, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2977, file: !2662, line: 555, baseType: !2878, size: 64, offset: 48)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !2977, file: !2662, line: 556, baseType: !2985, size: 80, offset: 112)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !2662, line: 258, size: 80, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2985, file: !2662, line: 259, baseType: !438, size: 16)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2985, file: !2662, line: 260, baseType: !191, size: 64, offset: 16)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2977, file: !2662, line: 557, baseType: !2230, size: 64, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !2667, file: !2662, line: 641, baseType: !2991, size: 288)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !2662, line: 560, size: 288, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2991, file: !2662, line: 561, baseType: !601, size: 8)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2991, file: !2662, line: 562, baseType: !601, size: 8, offset: 8)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2991, file: !2662, line: 563, baseType: !601, size: 8, offset: 16)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2991, file: !2662, line: 564, baseType: !438, size: 16, offset: 24)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2991, file: !2662, line: 565, baseType: !438, size: 16, offset: 40)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2991, file: !2662, line: 566, baseType: !2787, size: 88, offset: 56)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !2991, file: !2662, line: 567, baseType: !2985, size: 80, offset: 144)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2991, file: !2662, line: 568, baseType: !2230, size: 64, offset: 224)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !2667, file: !2662, line: 642, baseType: !3002, size: 312)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !2662, line: 571, size: 312, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !3002, file: !2662, line: 572, baseType: !601, size: 8)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !3002, file: !2662, line: 573, baseType: !601, size: 8, offset: 8)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !3002, file: !2662, line: 574, baseType: !601, size: 8, offset: 16)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !3002, file: !2662, line: 575, baseType: !601, size: 8, offset: 24)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !3002, file: !2662, line: 576, baseType: !464, size: 32, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !3002, file: !2662, line: 577, baseType: !438, size: 16, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !3002, file: !2662, line: 578, baseType: !2787, size: 88, offset: 80)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !3002, file: !2662, line: 579, baseType: !2985, size: 80, offset: 168)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !3002, file: !2662, line: 580, baseType: !2230, size: 64, offset: 248)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2667, file: !2662, line: 646, baseType: !3014, size: 72)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !2662, line: 303, size: 72, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !3014, file: !2662, line: 304, baseType: !601, size: 8)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !3014, file: !2662, line: 304, baseType: !601, size: 8, offset: 8)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !3014, file: !2662, line: 304, baseType: !601, size: 8, offset: 16)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !3014, file: !2662, line: 304, baseType: !601, size: 8, offset: 24)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !3014, file: !2662, line: 304, baseType: !601, size: 8, offset: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3014, file: !2662, line: 304, baseType: !2761, size: 32, offset: 40)
!3022 = !DILocalVariable(name: "ares", arg: 1, scope: !2657, file: !3, line: 68, type: !2660)
!3023 = !DILocation(line: 68, column: 69, scope: !2657)
!3024 = !DILocalVariable(name: "context", arg: 2, scope: !2657, file: !3, line: 69, type: !81)
!3025 = !DILocation(line: 69, column: 18, scope: !2657)
!3026 = !DILocalVariable(name: "event", scope: !2657, file: !3, line: 71, type: !2429)
!3027 = !DILocation(line: 71, column: 25, scope: !2657)
!3028 = !DILocalVariable(name: "irq", scope: !2657, file: !3, line: 72, type: !7)
!3029 = !DILocation(line: 72, column: 15, scope: !2657)
!3030 = !DILocalVariable(name: "gsi", scope: !2657, file: !3, line: 73, type: !7)
!3031 = !DILocation(line: 73, column: 15, scope: !2657)
!3032 = !DILocalVariable(name: "irqflags", scope: !2657, file: !3, line: 74, type: !7)
!3033 = !DILocation(line: 74, column: 15, scope: !2657)
!3034 = !DILocalVariable(name: "geddev", scope: !2657, file: !3, line: 75, type: !2519)
!3035 = !DILocation(line: 75, column: 26, scope: !2657)
!3036 = !DILocation(line: 75, column: 35, scope: !2657)
!3037 = !DILocalVariable(name: "dev", scope: !2657, file: !3, line: 76, type: !1630)
!3038 = !DILocation(line: 76, column: 17, scope: !2657)
!3039 = !DILocation(line: 76, column: 23, scope: !2657)
!3040 = !DILocation(line: 76, column: 31, scope: !2657)
!3041 = !DILocalVariable(name: "handle", scope: !2657, file: !3, line: 77, type: !89)
!3042 = !DILocation(line: 77, column: 14, scope: !2657)
!3043 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3044, file: !3, line: 77, type: !96)
!3044 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 77, column: 23)
!3045 = !DILocation(line: 77, column: 23, scope: !3044)
!3046 = !DILocalVariable(name: "__mptr", scope: !3047, file: !3, line: 77, type: !81)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 77, column: 23)
!3048 = !DILocation(line: 77, column: 23, scope: !3047)
!3049 = !DILocation(line: 77, column: 23, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 77, column: 23)
!3051 = !DILocation(line: 77, column: 23, scope: !2657)
!3052 = !DILocalVariable(name: "evt_handle", scope: !2657, file: !3, line: 78, type: !89)
!3053 = !DILocation(line: 78, column: 14, scope: !2657)
!3054 = !DILocalVariable(name: "r", scope: !2657, file: !3, line: 79, type: !2459)
!3055 = !DILocation(line: 79, column: 18, scope: !2657)
!3056 = !DILocalVariable(name: "p", scope: !2657, file: !3, line: 80, type: !3057)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!3058 = !DILocation(line: 80, column: 28, scope: !2657)
!3059 = !DILocation(line: 80, column: 33, scope: !2657)
!3060 = !DILocation(line: 80, column: 39, scope: !2657)
!3061 = !DILocation(line: 80, column: 44, scope: !2657)
!3062 = !DILocalVariable(name: "pext", scope: !2657, file: !3, line: 81, type: !3063)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!3064 = !DILocation(line: 81, column: 37, scope: !2657)
!3065 = !DILocation(line: 81, column: 45, scope: !2657)
!3066 = !DILocation(line: 81, column: 51, scope: !2657)
!3067 = !DILocation(line: 81, column: 56, scope: !2657)
!3068 = !DILocalVariable(name: "ev_name", scope: !2657, file: !3, line: 82, type: !3069)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 40, elements: !2284)
!3070 = !DILocation(line: 82, column: 7, scope: !2657)
!3071 = !DILocalVariable(name: "trigger", scope: !2657, file: !3, line: 83, type: !601)
!3072 = !DILocation(line: 83, column: 5, scope: !2657)
!3073 = !DILocation(line: 85, column: 6, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 85, column: 6)
!3075 = !DILocation(line: 85, column: 12, scope: !3074)
!3076 = !DILocation(line: 85, column: 17, scope: !3074)
!3077 = !DILocation(line: 85, column: 6, scope: !2657)
!3078 = !DILocation(line: 86, column: 3, scope: !3074)
!3079 = !DILocation(line: 88, column: 35, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 88, column: 6)
!3081 = !DILocation(line: 88, column: 7, scope: !3080)
!3082 = !DILocation(line: 88, column: 6, scope: !2657)
!3083 = !DILocation(line: 89, column: 3, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 88, column: 49)
!3085 = !DILocation(line: 90, column: 3, scope: !3084)
!3086 = !DILocation(line: 92, column: 6, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 92, column: 6)
!3088 = !DILocation(line: 92, column: 12, scope: !3087)
!3089 = !DILocation(line: 92, column: 17, scope: !3087)
!3090 = !DILocation(line: 92, column: 6, scope: !2657)
!3091 = !DILocation(line: 93, column: 9, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 92, column: 44)
!3093 = !DILocation(line: 93, column: 12, scope: !3092)
!3094 = !DILocation(line: 93, column: 7, scope: !3092)
!3095 = !DILocation(line: 94, column: 13, scope: !3092)
!3096 = !DILocation(line: 94, column: 16, scope: !3092)
!3097 = !DILocation(line: 94, column: 11, scope: !3092)
!3098 = !DILocation(line: 95, column: 2, scope: !3092)
!3099 = !DILocation(line: 96, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 95, column: 9)
!3101 = !DILocation(line: 96, column: 15, scope: !3100)
!3102 = !DILocation(line: 96, column: 7, scope: !3100)
!3103 = !DILocation(line: 97, column: 13, scope: !3100)
!3104 = !DILocation(line: 97, column: 19, scope: !3100)
!3105 = !DILocation(line: 97, column: 11, scope: !3100)
!3106 = !DILocation(line: 100, column: 10, scope: !2657)
!3107 = !DILocation(line: 100, column: 8, scope: !2657)
!3108 = !DILocation(line: 100, column: 6, scope: !2657)
!3109 = !DILocation(line: 102, column: 10, scope: !2657)
!3110 = !DILocation(line: 102, column: 2, scope: !2657)
!3111 = !DILocation(line: 104, column: 11, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 102, column: 15)
!3113 = !DILocation(line: 105, column: 4, scope: !3112)
!3114 = !DILocation(line: 105, column: 12, scope: !3112)
!3115 = !DILocation(line: 105, column: 48, scope: !3112)
!3116 = !DILocation(line: 104, column: 3, scope: !3112)
!3117 = !DILocation(line: 107, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 107, column: 7)
!3119 = !DILocation(line: 107, column: 7, scope: !3112)
!3120 = !DILocation(line: 108, column: 4, scope: !3118)
!3121 = !DILocation(line: 111, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 111, column: 7)
!3123 = !DILocation(line: 111, column: 7, scope: !3112)
!3124 = !DILocation(line: 112, column: 4, scope: !3122)
!3125 = !DILocation(line: 114, column: 3, scope: !3112)
!3126 = !DILocation(line: 115, column: 3, scope: !3112)
!3127 = !DILocation(line: 118, column: 23, scope: !2657)
!3128 = !DILocation(line: 118, column: 10, scope: !2657)
!3129 = !DILocation(line: 118, column: 8, scope: !2657)
!3130 = !DILocation(line: 119, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 119, column: 6)
!3132 = !DILocation(line: 119, column: 6, scope: !2657)
!3133 = !DILocation(line: 120, column: 3, scope: !3131)
!3134 = !DILocation(line: 122, column: 15, scope: !2657)
!3135 = !DILocation(line: 122, column: 2, scope: !2657)
!3136 = !DILocation(line: 122, column: 9, scope: !2657)
!3137 = !DILocation(line: 122, column: 13, scope: !2657)
!3138 = !DILocation(line: 123, column: 15, scope: !2657)
!3139 = !DILocation(line: 123, column: 2, scope: !2657)
!3140 = !DILocation(line: 123, column: 9, scope: !2657)
!3141 = !DILocation(line: 123, column: 13, scope: !2657)
!3142 = !DILocation(line: 124, column: 15, scope: !2657)
!3143 = !DILocation(line: 124, column: 2, scope: !2657)
!3144 = !DILocation(line: 124, column: 9, scope: !2657)
!3145 = !DILocation(line: 124, column: 13, scope: !2657)
!3146 = !DILocation(line: 125, column: 18, scope: !2657)
!3147 = !DILocation(line: 125, column: 2, scope: !2657)
!3148 = !DILocation(line: 125, column: 9, scope: !2657)
!3149 = !DILocation(line: 125, column: 16, scope: !2657)
!3150 = !DILocation(line: 127, column: 8, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 127, column: 6)
!3152 = !DILocation(line: 127, column: 14, scope: !3151)
!3153 = !DILocation(line: 127, column: 6, scope: !2657)
!3154 = !DILocation(line: 128, column: 12, scope: !3151)
!3155 = !DILocation(line: 128, column: 3, scope: !3151)
!3156 = !DILocation(line: 130, column: 27, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 130, column: 6)
!3158 = !DILocation(line: 131, column: 6, scope: !3157)
!3159 = !DILocation(line: 131, column: 28, scope: !3157)
!3160 = !DILocation(line: 130, column: 6, scope: !3157)
!3161 = !DILocation(line: 130, column: 6, scope: !2657)
!3162 = !DILocation(line: 132, column: 3, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 131, column: 36)
!3164 = !DILocation(line: 133, column: 3, scope: !3163)
!3165 = !DILocation(line: 137, column: 17, scope: !2657)
!3166 = !DILocation(line: 137, column: 24, scope: !2657)
!3167 = !DILocation(line: 137, column: 31, scope: !2657)
!3168 = !DILocation(line: 137, column: 39, scope: !2657)
!3169 = !DILocation(line: 137, column: 2, scope: !2657)
!3170 = !DILocation(line: 138, column: 2, scope: !2657)
!3171 = !DILocation(line: 139, column: 1, scope: !2657)
!3172 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2441, file: !2441, line: 236, type: !3173, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !2447, !81}
!3175 = !DILocalVariable(name: "pdev", arg: 1, scope: !3172, file: !2441, line: 236, type: !2447)
!3176 = !DILocation(line: 236, column: 65, scope: !3172)
!3177 = !DILocalVariable(name: "data", arg: 2, scope: !3172, file: !2441, line: 237, type: !81)
!3178 = !DILocation(line: 237, column: 12, scope: !3172)
!3179 = !DILocation(line: 239, column: 19, scope: !3172)
!3180 = !DILocation(line: 239, column: 25, scope: !3172)
!3181 = !DILocation(line: 239, column: 30, scope: !3172)
!3182 = !DILocation(line: 239, column: 2, scope: !3172)
!3183 = !DILocation(line: 240, column: 1, scope: !3172)
!3184 = !DILocalVariable(name: "irq", arg: 1, scope: !2499, file: !3, line: 56, type: !87)
!3185 = !DILocation(line: 56, column: 45, scope: !2499)
!3186 = !DILocalVariable(name: "data", arg: 2, scope: !2499, file: !3, line: 56, type: !81)
!3187 = !DILocation(line: 56, column: 56, scope: !2499)
!3188 = !DILocalVariable(name: "event", scope: !2499, file: !3, line: 58, type: !2429)
!3189 = !DILocation(line: 58, column: 25, scope: !2499)
!3190 = !DILocation(line: 58, column: 33, scope: !2499)
!3191 = !DILocalVariable(name: "acpi_ret", scope: !2499, file: !3, line: 59, type: !2428)
!3192 = !DILocation(line: 59, column: 14, scope: !2499)
!3193 = !DILocation(line: 61, column: 40, scope: !2499)
!3194 = !DILocation(line: 61, column: 47, scope: !2499)
!3195 = !DILocation(line: 61, column: 61, scope: !2499)
!3196 = !DILocation(line: 61, column: 68, scope: !2499)
!3197 = !DILocation(line: 61, column: 13, scope: !2499)
!3198 = !DILocation(line: 61, column: 11, scope: !2499)
!3199 = !DILocation(line: 62, column: 6, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 62, column: 6)
!3201 = !DILocation(line: 62, column: 6, scope: !2499)
!3202 = !DILocation(line: 63, column: 3, scope: !3200)
!3203 = !DILocation(line: 63, column: 3, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 63, column: 3)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 63, column: 3)
!3206 = !DILocation(line: 63, column: 3, scope: !3205)
!3207 = !DILocation(line: 63, column: 3, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 63, column: 3)
!3209 = !DILocation(line: 65, column: 2, scope: !2499)
!3210 = distinct !DISubprogram(name: "list_add_tail", scope: !2630, file: !2630, line: 98, type: !3211, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !140, !140}
!3213 = !DILocalVariable(name: "new", arg: 1, scope: !3210, file: !2630, line: 98, type: !140)
!3214 = !DILocation(line: 98, column: 52, scope: !3210)
!3215 = !DILocalVariable(name: "head", arg: 2, scope: !3210, file: !2630, line: 98, type: !140)
!3216 = !DILocation(line: 98, column: 75, scope: !3210)
!3217 = !DILocation(line: 100, column: 13, scope: !3210)
!3218 = !DILocation(line: 100, column: 18, scope: !3210)
!3219 = !DILocation(line: 100, column: 24, scope: !3210)
!3220 = !DILocation(line: 100, column: 30, scope: !3210)
!3221 = !DILocation(line: 100, column: 2, scope: !3210)
!3222 = !DILocation(line: 101, column: 1, scope: !3210)
!3223 = distinct !DISubprogram(name: "__list_add", scope: !2630, file: !2630, line: 63, type: !3224, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !140, !140, !140}
!3226 = !DILocalVariable(name: "new", arg: 1, scope: !3223, file: !2630, line: 63, type: !140)
!3227 = !DILocation(line: 63, column: 49, scope: !3223)
!3228 = !DILocalVariable(name: "prev", arg: 2, scope: !3223, file: !2630, line: 64, type: !140)
!3229 = !DILocation(line: 64, column: 28, scope: !3223)
!3230 = !DILocalVariable(name: "next", arg: 3, scope: !3223, file: !2630, line: 65, type: !140)
!3231 = !DILocation(line: 65, column: 28, scope: !3223)
!3232 = !DILocation(line: 67, column: 24, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3223, file: !2630, line: 67, column: 6)
!3234 = !DILocation(line: 67, column: 29, scope: !3233)
!3235 = !DILocation(line: 67, column: 35, scope: !3233)
!3236 = !DILocation(line: 67, column: 7, scope: !3233)
!3237 = !DILocation(line: 67, column: 6, scope: !3223)
!3238 = !DILocation(line: 68, column: 3, scope: !3233)
!3239 = !DILocation(line: 70, column: 15, scope: !3223)
!3240 = !DILocation(line: 70, column: 2, scope: !3223)
!3241 = !DILocation(line: 70, column: 8, scope: !3223)
!3242 = !DILocation(line: 70, column: 13, scope: !3223)
!3243 = !DILocation(line: 71, column: 14, scope: !3223)
!3244 = !DILocation(line: 71, column: 2, scope: !3223)
!3245 = !DILocation(line: 71, column: 7, scope: !3223)
!3246 = !DILocation(line: 71, column: 12, scope: !3223)
!3247 = !DILocation(line: 72, column: 14, scope: !3223)
!3248 = !DILocation(line: 72, column: 2, scope: !3223)
!3249 = !DILocation(line: 72, column: 7, scope: !3223)
!3250 = !DILocation(line: 72, column: 12, scope: !3223)
!3251 = !DILocation(line: 73, column: 2, scope: !3223)
!3252 = !DILocation(line: 73, column: 2, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3223, file: !2630, line: 73, column: 2)
!3254 = !DILocation(line: 73, column: 2, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3253, file: !2630, line: 73, column: 2)
!3256 = !DILocation(line: 73, column: 2, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !2630, line: 73, column: 2)
!3258 = !DILocation(line: 74, column: 1, scope: !3223)
!3259 = distinct !DISubprogram(name: "__list_add_valid", scope: !2630, file: !2630, line: 45, type: !3260, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!114, !140, !140, !140}
!3262 = !DILocalVariable(name: "new", arg: 1, scope: !3259, file: !2630, line: 45, type: !140)
!3263 = !DILocation(line: 45, column: 55, scope: !3259)
!3264 = !DILocalVariable(name: "prev", arg: 2, scope: !3259, file: !2630, line: 46, type: !140)
!3265 = !DILocation(line: 46, column: 23, scope: !3259)
!3266 = !DILocalVariable(name: "next", arg: 3, scope: !3259, file: !2630, line: 47, type: !140)
!3267 = !DILocation(line: 47, column: 23, scope: !3259)
!3268 = !DILocation(line: 49, column: 2, scope: !3259)
!3269 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3270, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{null, !1630, !81}
!3272 = !DILocalVariable(name: "dev", arg: 1, scope: !3269, file: !30, line: 660, type: !1630)
!3273 = !DILocation(line: 660, column: 51, scope: !3269)
!3274 = !DILocalVariable(name: "data", arg: 2, scope: !3269, file: !30, line: 660, type: !81)
!3275 = !DILocation(line: 660, column: 62, scope: !3269)
!3276 = !DILocation(line: 662, column: 21, scope: !3269)
!3277 = !DILocation(line: 662, column: 2, scope: !3269)
!3278 = !DILocation(line: 662, column: 7, scope: !3269)
!3279 = !DILocation(line: 662, column: 19, scope: !3269)
!3280 = !DILocation(line: 663, column: 1, scope: !3269)
!3281 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2441, file: !2441, line: 231, type: !3282, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!81, !3284}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!3286 = !DILocalVariable(name: "pdev", arg: 1, scope: !3281, file: !2441, line: 231, type: !3284)
!3287 = !DILocation(line: 231, column: 72, scope: !3281)
!3288 = !DILocation(line: 233, column: 26, scope: !3281)
!3289 = !DILocation(line: 233, column: 32, scope: !3281)
!3290 = !DILocation(line: 233, column: 9, scope: !3281)
!3291 = !DILocation(line: 233, column: 2, scope: !3281)
!3292 = distinct !DISubprogram(name: "list_del", scope: !2630, file: !2630, line: 144, type: !2631, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3293 = !DILocalVariable(name: "entry", arg: 1, scope: !3292, file: !2630, line: 144, type: !140)
!3294 = !DILocation(line: 144, column: 47, scope: !3292)
!3295 = !DILocation(line: 146, column: 19, scope: !3292)
!3296 = !DILocation(line: 146, column: 2, scope: !3292)
!3297 = !DILocation(line: 147, column: 2, scope: !3292)
!3298 = !DILocation(line: 147, column: 9, scope: !3292)
!3299 = !DILocation(line: 147, column: 14, scope: !3292)
!3300 = !DILocation(line: 148, column: 2, scope: !3292)
!3301 = !DILocation(line: 148, column: 9, scope: !3292)
!3302 = !DILocation(line: 148, column: 14, scope: !3292)
!3303 = !DILocation(line: 149, column: 1, scope: !3292)
!3304 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3305, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!81, !124}
!3307 = !DILocalVariable(name: "dev", arg: 1, scope: !3304, file: !30, line: 655, type: !124)
!3308 = !DILocation(line: 655, column: 58, scope: !3304)
!3309 = !DILocation(line: 657, column: 9, scope: !3304)
!3310 = !DILocation(line: 657, column: 14, scope: !3304)
!3311 = !DILocation(line: 657, column: 2, scope: !3304)
!3312 = distinct !DISubprogram(name: "__list_del_entry", scope: !2630, file: !2630, line: 130, type: !2631, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3313 = !DILocalVariable(name: "entry", arg: 1, scope: !3312, file: !2630, line: 130, type: !140)
!3314 = !DILocation(line: 130, column: 55, scope: !3312)
!3315 = !DILocation(line: 132, column: 30, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3312, file: !2630, line: 132, column: 6)
!3317 = !DILocation(line: 132, column: 7, scope: !3316)
!3318 = !DILocation(line: 132, column: 6, scope: !3312)
!3319 = !DILocation(line: 133, column: 3, scope: !3316)
!3320 = !DILocation(line: 135, column: 13, scope: !3312)
!3321 = !DILocation(line: 135, column: 20, scope: !3312)
!3322 = !DILocation(line: 135, column: 26, scope: !3312)
!3323 = !DILocation(line: 135, column: 33, scope: !3312)
!3324 = !DILocation(line: 135, column: 2, scope: !3312)
!3325 = !DILocation(line: 136, column: 1, scope: !3312)
!3326 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2630, file: !2630, line: 51, type: !3327, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!114, !140}
!3329 = !DILocalVariable(name: "entry", arg: 1, scope: !3326, file: !2630, line: 51, type: !140)
!3330 = !DILocation(line: 51, column: 61, scope: !3326)
!3331 = !DILocation(line: 53, column: 2, scope: !3326)
!3332 = distinct !DISubprogram(name: "__list_del", scope: !2630, file: !2630, line: 110, type: !3211, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3333 = !DILocalVariable(name: "prev", arg: 1, scope: !3332, file: !2630, line: 110, type: !140)
!3334 = !DILocation(line: 110, column: 50, scope: !3332)
!3335 = !DILocalVariable(name: "next", arg: 2, scope: !3332, file: !2630, line: 110, type: !140)
!3336 = !DILocation(line: 110, column: 75, scope: !3332)
!3337 = !DILocation(line: 112, column: 15, scope: !3332)
!3338 = !DILocation(line: 112, column: 2, scope: !3332)
!3339 = !DILocation(line: 112, column: 8, scope: !3332)
!3340 = !DILocation(line: 112, column: 13, scope: !3332)
!3341 = !DILocation(line: 113, column: 2, scope: !3332)
!3342 = !DILocation(line: 113, column: 2, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3332, file: !2630, line: 113, column: 2)
!3344 = !DILocation(line: 113, column: 2, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3343, file: !2630, line: 113, column: 2)
!3346 = !DILocation(line: 113, column: 2, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !2630, line: 113, column: 2)
!3348 = !DILocation(line: 114, column: 1, scope: !3332)
