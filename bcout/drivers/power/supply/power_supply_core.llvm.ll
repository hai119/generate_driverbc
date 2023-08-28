; ModuleID = '../bcout/drivers/power/supply/power_supply_core.llvm.bc'
source_filename = "drivers/power/supply/power_supply_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_power_supply_class_init4:\09\09\09"
module asm ".long\09power_supply_class_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
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
%struct.irq_domain = type opaque
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
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
%struct.workqueue_struct = type opaque
%struct.kmem_cache = type opaque
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.thermal_attr = type opaque
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.power_supply = type { %struct.power_supply_desc*, i8**, i64, i8**, i64, %struct.device_node*, i8*, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, %struct.thermal_zone_device*, %struct.thermal_cooling_device* }
%struct.power_supply_desc = type { i8*, i32, i32*, i64, i32*, i64, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32)*, {}*, {}*, i8, i32 }
%union.power_supply_propval = type { i8* }
%struct.psy_am_i_supplied_data = type { %struct.power_supply*, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x %struct.power_supply_battery_ocv_table*], [20 x i32], %struct.power_supply_resistance_temp_table*, i32 }
%struct.power_supply_battery_ocv_table = type { i32, i32 }
%struct.power_supply_resistance_temp_table = type { i32, i32 }
%struct.power_supply_config = type { %struct.device_node*, %struct.fwnode_handle*, i8*, %struct.attribute_group**, i8**, i64 }

@power_supply_notifier = dso_local global %struct.atomic_notifier_head { %struct.spinlock undef, %struct.notifier_block* null }, align 8, !dbg !0
@power_supply_class = dso_local global %struct.class* null, align 8, !dbg !2489
@__const.power_supply_set_input_current_limit_from_supplier.val = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@.str = private unnamed_addr constant [39 x i8] c"%s currently only supports devicetree\0A\00", align 1
@__func__.power_supply_get_battery_info = private unnamed_addr constant [30 x i8] c"power_supply_get_battery_info\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"monitored-battery\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"simple-battery\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"energy-full-design-microwatt-hours\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"charge-full-design-microamp-hours\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"voltage-min-design-microvolt\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"voltage-max-design-microvolt\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"trickle-charge-current-microamp\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"precharge-current-microamp\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"precharge-upper-limit-microvolt\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"charge-term-current-microamp\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"re-charge-voltage-microvolt\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"over-voltage-threshold-microvolt\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"constant-charge-current-max-microamp\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"constant-charge-voltage-max-microvolt\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"factory-internal-resistance-micro-ohms\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ambient-celsius\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"alert-celsius\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"operating-range-celsius\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"ocv-capacity-celsius\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Too many temperature values\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"ocv-capacity-table-%d\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"failed to get %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"resistance-temp-table\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"powers\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"drivers/power/supply/power_supply_core.c\00", align 1
@__UNIQUE_ID___addressable_power_supply_class_init167 = internal global i8* bitcast (i32 ()* @power_supply_class_init to i8*), section ".discard.addressable", align 8, !dbg !2460
@__exitcall_power_supply_class_exit = internal global void ()* @power_supply_class_exit, section ".exitcall.exit", align 8, !dbg !2462
@__UNIQUE_ID_description168 = internal constant [62 x i8] c"power_supply.description=Universal power supply monitor class\00", section ".modinfo", align 1, !dbg !2469
@__UNIQUE_ID_author169 = internal constant [96 x i8] c"power_supply.author=Ian Molton <spyro@f2s.com>, Szabolcs Gyurko, Anton Vorontsov <cbou@mail.ru>\00", section ".modinfo", align 1, !dbg !2474
@__UNIQUE_ID_file170 = internal constant [52 x i8] c"power_supply.file=drivers/power/supply/power_supply\00", section ".modinfo", align 1, !dbg !2479
@__UNIQUE_ID_license171 = internal constant [25 x i8] c"power_supply.license=GPL\00", section ".modinfo", align 1, !dbg !2484
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@__const.__power_supply_am_i_supplied.ret = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@__const.__power_supply_is_system_supplied.ret = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@__const.__power_supply_get_supplier_max_current.ret = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@.str.27 = private unnamed_addr constant [46 x i8] c"\014%s: Expected proper parent device for '%s'\0A\00", align 1
@__func__.__power_supply_register = private unnamed_addr constant [24 x i8] c"__power_supply_register\00", align 1
@power_supply_dev_type = internal global %struct.device_type zeroinitializer, align 8, !dbg !2491
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"Not all required supplies found, defer probe\0A\00", align 1
@system_power_efficient_wq = external dso_local global %struct.workqueue_struct*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.30 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@.str.31 = private unnamed_addr constant [15 x i8] c"power-supplies\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"%s: Found supply : %s\0A\00", align 1
@psy_tzd_ops = internal global %struct.thermal_zone_device_ops { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, i32*)* @power_supply_read_temp, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32*)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null }, align 8, !dbg !2493
@psy_tcd_ops = internal constant %struct.thermal_cooling_device_ops { i32 (%struct.thermal_cooling_device*, i64*)* @ps_get_max_charge_cntl_limit, i32 (%struct.thermal_cooling_device*, i64*)* @ps_get_cur_charge_cntl_limit, i32 (%struct.thermal_cooling_device*, i64)* @ps_set_cur_charge_cntl_limit, i32 (%struct.thermal_cooling_device*, i32*)* null, i32 (%struct.thermal_cooling_device*, i64, i32*)* null, i32 (%struct.thermal_cooling_device*, i32, i64*)* null }, align 8, !dbg !2495
@power_supply_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2497
@.str.33 = private unnamed_addr constant [13 x i8] c"power_supply\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @power_supply_class_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_power_supply_class_init167 to i8*), i8* bitcast (void ()** @__exitcall_power_supply_class_exit to i8*), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_description168, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__UNIQUE_ID_author169, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_file170, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license171, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @power_supply_changed(%struct.power_supply* %psy) #0 !dbg !2523 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !2524, metadata !DIExpression()), !dbg !2530
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2532, metadata !DIExpression()), !dbg !2533
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2534, metadata !DIExpression()), !dbg !2539
  %psy.addr = alloca %struct.power_supply*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2548, metadata !DIExpression()), !dbg !2549
  br label %do.body, !dbg !2550

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2551

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2555, metadata !DIExpression()), !dbg !2554
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2554
  %conv = zext i1 %cmp to i32, !dbg !2554
  store i32 1, i32* %tmp, align 4, !dbg !2554
  %0 = load i32, i32* %tmp, align 4, !dbg !2554
  br label %do.body2, !dbg !2556

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2557

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2558

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2564, metadata !DIExpression()), !dbg !2563
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2563
  %conv8 = zext i1 %cmp7 to i32, !dbg !2563
  store i32 1, i32* %tmp9, align 4, !dbg !2563
  %1 = load i32, i32* %tmp9, align 4, !dbg !2563
  %call = call i64 @arch_local_irq_save() #11, !dbg !2565
  store i64 %call, i64* %flags, align 8, !dbg !2565
  br label %do.end, !dbg !2565

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !2558

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !2557

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !2566, !srcloc !2567
  br label %do.body12, !dbg !2566

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2568
  %changed_lock = getelementptr inbounds %struct.power_supply, %struct.power_supply* %2, i32 0, i32 10, !dbg !2568
  store %struct.spinlock* %changed_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2569
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !2570
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !2570
  br label %do.end14, !dbg !2568

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !2566

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !2557

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2556

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2551

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2571
  %changed = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 11, !dbg !2572
  store i8 1, i8* %changed, align 8, !dbg !2573
  %6 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2574
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %6, i32 0, i32 7, !dbg !2575
  call void @pm_stay_awake(%struct.device* %dev) #11, !dbg !2576
  %7 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2577
  %changed_lock19 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 10, !dbg !2578
  %8 = load i64, i64* %flags, align 8, !dbg !2579
  store %struct.spinlock* %changed_lock19, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %8, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !339, metadata !2580, metadata !DIExpression()) #9, !dbg !2583
  call void @llvm.dbg.declare(metadata !339, metadata !2584, metadata !DIExpression()) #9, !dbg !2583
  store i32 1, i32* %tmp.i, align 4, !dbg !2583
  %9 = load i32, i32* %tmp.i, align 4, !dbg !2583
  call void @llvm.dbg.declare(metadata !339, metadata !2585, metadata !DIExpression()) #9, !dbg !2590
  call void @llvm.dbg.declare(metadata !339, metadata !2591, metadata !DIExpression()) #9, !dbg !2590
  store i32 1, i32* %tmp8.i, align 4, !dbg !2590
  %10 = load i32, i32* %tmp8.i, align 4, !dbg !2590
  %11 = load i64, i64* %flags.addr.i, align 8, !dbg !2592
  call void @arch_local_irq_restore(i64 %11) #12, !dbg !2592
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !2593, !srcloc !2595
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !2596
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !2596
  %rlock.i22 = bitcast %union.anon* %13 to %struct.raw_spinlock*, !dbg !2596
  %14 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2598
  %changed_work = getelementptr inbounds %struct.power_supply, %struct.power_supply* %14, i32 0, i32 8, !dbg !2599
  %call20 = call zeroext i1 @schedule_work(%struct.work_struct* %changed_work) #11, !dbg !2600
  ret void, !dbg !2601
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2602 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2606, metadata !DIExpression()), !dbg !2607
  %call = call i64 @arch_local_save_flags() #11, !dbg !2608
  store i64 %call, i64* %f, align 8, !dbg !2609
  call void @arch_local_irq_disable() #11, !dbg !2610
  %0 = load i64, i64* %f, align 8, !dbg !2611
  ret i64 %0, !dbg !2612
}

; Function Attrs: noredzone
declare dso_local void @pm_stay_awake(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !2613 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !2616, metadata !DIExpression()), !dbg !2617
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !2618
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !2619
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #11, !dbg !2620
  ret i1 %call, !dbg !2621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_am_i_supplied(%struct.power_supply* %psy) #0 !dbg !2622 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %data = alloca %struct.psy_am_i_supplied_data, align 8
  %error = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !2625, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.declare(metadata %struct.psy_am_i_supplied_data* %data, metadata !2627, metadata !DIExpression()), !dbg !2632
  %psy1 = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %data, i32 0, i32 0, !dbg !2633
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2634
  store %struct.power_supply* %0, %struct.power_supply** %psy1, align 8, !dbg !2633
  %count = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %data, i32 0, i32 1, !dbg !2633
  store i32 0, i32* %count, align 8, !dbg !2633
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2635, metadata !DIExpression()), !dbg !2636
  %1 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !2637
  %2 = bitcast %struct.psy_am_i_supplied_data* %data to i8*, !dbg !2638
  %call = call i32 @class_for_each_device(%struct.class* %1, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @__power_supply_am_i_supplied) #11, !dbg !2639
  store i32 %call, i32* %error, align 4, !dbg !2640
  %count2 = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %data, i32 0, i32 1, !dbg !2641
  %3 = load i32, i32* %count2, align 8, !dbg !2641
  %cmp = icmp eq i32 %3, 0, !dbg !2643
  br i1 %cmp, label %if.then, label %if.end, !dbg !2644

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2645
  br label %return, !dbg !2645

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %error, align 4, !dbg !2646
  store i32 %4, i32* %retval, align 4, !dbg !2647
  br label %return, !dbg !2647

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !2648
  ret i32 %5, !dbg !2648
}

; Function Attrs: noredzone
declare dso_local i32 @class_for_each_device(%struct.class*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__power_supply_am_i_supplied(%struct.device* %dev, i8* %_data) #0 !dbg !2649 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %_data.addr = alloca i8*, align 8
  %ret = alloca %union.power_supply_propval, align 8
  %epsy = alloca %struct.power_supply*, align 8
  %data = alloca %struct.psy_am_i_supplied_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2652, metadata !DIExpression()), !dbg !2653
  store i8* %_data, i8** %_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_data.addr, metadata !2654, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %ret, metadata !2656, metadata !DIExpression()), !dbg !2657
  %0 = bitcast %union.power_supply_propval* %ret to i8*, !dbg !2657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i32, [4 x i8] }* @__const.__power_supply_am_i_supplied.ret to i8*), i64 8, i1 false), !dbg !2657
  call void @llvm.dbg.declare(metadata %struct.power_supply** %epsy, metadata !2658, metadata !DIExpression()), !dbg !2659
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2660
  %call = call i8* @dev_get_drvdata(%struct.device* %1) #11, !dbg !2661
  %2 = bitcast i8* %call to %struct.power_supply*, !dbg !2661
  store %struct.power_supply* %2, %struct.power_supply** %epsy, align 8, !dbg !2659
  call void @llvm.dbg.declare(metadata %struct.psy_am_i_supplied_data** %data, metadata !2662, metadata !DIExpression()), !dbg !2664
  %3 = load i8*, i8** %_data.addr, align 8, !dbg !2665
  %4 = bitcast i8* %3 to %struct.psy_am_i_supplied_data*, !dbg !2665
  store %struct.psy_am_i_supplied_data* %4, %struct.psy_am_i_supplied_data** %data, align 8, !dbg !2664
  %5 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !2666
  %6 = load %struct.psy_am_i_supplied_data*, %struct.psy_am_i_supplied_data** %data, align 8, !dbg !2668
  %psy = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %6, i32 0, i32 0, !dbg !2669
  %7 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2669
  %call1 = call zeroext i1 @__power_supply_is_supplied_by(%struct.power_supply* %5, %struct.power_supply* %7) #11, !dbg !2670
  br i1 %call1, label %if.then, label %if.end4, !dbg !2671

if.then:                                          ; preds = %entry
  %8 = load %struct.psy_am_i_supplied_data*, %struct.psy_am_i_supplied_data** %data, align 8, !dbg !2672
  %count = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %8, i32 0, i32 1, !dbg !2674
  %9 = load i32, i32* %count, align 8, !dbg !2675
  %inc = add i32 %9, 1, !dbg !2675
  store i32 %inc, i32* %count, align 8, !dbg !2675
  %10 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !2676
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0, !dbg !2678
  %11 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2678
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %11, i32 0, i32 6, !dbg !2679
  %12 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8, !dbg !2679
  %13 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !2680
  %call2 = call i32 %12(%struct.power_supply* %13, i32 4, %union.power_supply_propval* %ret) #11, !dbg !2676
  %tobool = icmp ne i32 %call2, 0, !dbg !2676
  br i1 %tobool, label %if.end, label %if.then3, !dbg !2681

if.then3:                                         ; preds = %if.then
  %intval = bitcast %union.power_supply_propval* %ret to i32*, !dbg !2682
  %14 = load i32, i32* %intval, align 8, !dbg !2682
  store i32 %14, i32* %retval, align 4, !dbg !2683
  br label %return, !dbg !2683

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2684

if.end4:                                          ; preds = %if.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !2685
  br label %return, !dbg !2685

return:                                           ; preds = %if.end4, %if.then3
  %15 = load i32, i32* %retval, align 4, !dbg !2686
  ret i32 %15, !dbg !2686
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_is_system_supplied() #0 !dbg !2687 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  %count = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2688, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2690, metadata !DIExpression()), !dbg !2691
  store i32 0, i32* %count, align 4, !dbg !2691
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !2692
  %1 = bitcast i32* %count to i8*, !dbg !2693
  %call = call i32 @class_for_each_device(%struct.class* %0, %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @__power_supply_is_system_supplied) #11, !dbg !2694
  store i32 %call, i32* %error, align 4, !dbg !2695
  %2 = load i32, i32* %count, align 4, !dbg !2696
  %cmp = icmp eq i32 %2, 0, !dbg !2698
  br i1 %cmp, label %if.then, label %if.end, !dbg !2699

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2700
  br label %return, !dbg !2700

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %error, align 4, !dbg !2701
  store i32 %3, i32* %retval, align 4, !dbg !2702
  br label %return, !dbg !2702

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2703
  ret i32 %4, !dbg !2703
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__power_supply_is_system_supplied(%struct.device* %dev, i8* %data) #0 !dbg !2704 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %ret = alloca %union.power_supply_propval, align 8
  %psy = alloca %struct.power_supply*, align 8
  %count = alloca i32*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2705, metadata !DIExpression()), !dbg !2706
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %ret, metadata !2709, metadata !DIExpression()), !dbg !2710
  %0 = bitcast %union.power_supply_propval* %ret to i8*, !dbg !2710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i32, [4 x i8] }* @__const.__power_supply_is_system_supplied.ret to i8*), i64 8, i1 false), !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2711, metadata !DIExpression()), !dbg !2712
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2713
  %call = call i8* @dev_get_drvdata(%struct.device* %1) #11, !dbg !2714
  %2 = bitcast i8* %call to %struct.power_supply*, !dbg !2714
  store %struct.power_supply* %2, %struct.power_supply** %psy, align 8, !dbg !2712
  call void @llvm.dbg.declare(metadata i32** %count, metadata !2715, metadata !DIExpression()), !dbg !2717
  %3 = load i8*, i8** %data.addr, align 8, !dbg !2718
  %4 = bitcast i8* %3 to i32*, !dbg !2718
  store i32* %4, i32** %count, align 8, !dbg !2717
  %5 = load i32*, i32** %count, align 8, !dbg !2719
  %6 = load i32, i32* %5, align 4, !dbg !2720
  %inc = add i32 %6, 1, !dbg !2720
  store i32 %inc, i32* %5, align 4, !dbg !2720
  %7 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2721
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 0, !dbg !2723
  %8 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2723
  %type = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %8, i32 0, i32 1, !dbg !2724
  %9 = load i32, i32* %type, align 8, !dbg !2724
  %cmp = icmp ne i32 %9, 1, !dbg !2725
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2726

if.then:                                          ; preds = %entry
  %10 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2727
  %desc1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0, !dbg !2729
  %11 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc1, align 8, !dbg !2729
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %11, i32 0, i32 6, !dbg !2730
  %12 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8, !dbg !2730
  %13 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2731
  %call2 = call i32 %12(%struct.power_supply* %13, i32 4, %union.power_supply_propval* %ret) #11, !dbg !2727
  %tobool = icmp ne i32 %call2, 0, !dbg !2727
  br i1 %tobool, label %if.end, label %if.then3, !dbg !2732

if.then3:                                         ; preds = %if.then
  %intval = bitcast %union.power_supply_propval* %ret to i32*, !dbg !2733
  %14 = load i32, i32* %intval, align 8, !dbg !2733
  store i32 %14, i32* %retval, align 4, !dbg !2734
  br label %return, !dbg !2734

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2735

if.end4:                                          ; preds = %if.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !2736
  br label %return, !dbg !2736

return:                                           ; preds = %if.end4, %if.then3
  %15 = load i32, i32* %retval, align 4, !dbg !2737
  ret i32 %15, !dbg !2737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_set_input_current_limit_from_supplier(%struct.power_supply* %psy) #0 !dbg !2738 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %val = alloca %union.power_supply_propval, align 8
  %curr = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %val, metadata !2741, metadata !DIExpression()), !dbg !2742
  %0 = bitcast %union.power_supply_propval* %val to i8*, !dbg !2742
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i32, [4 x i8] }* @__const.power_supply_set_input_current_limit_from_supplier.val to i8*), i64 8, i1 false), !dbg !2742
  call void @llvm.dbg.declare(metadata i32* %curr, metadata !2743, metadata !DIExpression()), !dbg !2744
  %1 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2745
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %1, i32 0, i32 0, !dbg !2747
  %2 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2747
  %set_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i32 0, i32 7, !dbg !2748
  %3 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %set_property, align 8, !dbg !2748
  %tobool = icmp ne i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* %3, null, !dbg !2745
  br i1 %tobool, label %if.end, label %if.then, !dbg !2749

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2750
  br label %return, !dbg !2750

if.end:                                           ; preds = %entry
  %4 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !2751
  %5 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2752
  %6 = bitcast %struct.power_supply* %5 to i8*, !dbg !2752
  %call = call i32 @class_for_each_device(%struct.class* %4, %struct.device* null, i8* %6, i32 (%struct.device*, i8*)* @__power_supply_get_supplier_max_current) #11, !dbg !2753
  store i32 %call, i32* %curr, align 4, !dbg !2754
  %7 = load i32, i32* %curr, align 4, !dbg !2755
  %cmp = icmp sle i32 %7, 0, !dbg !2757
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !2758

if.then1:                                         ; preds = %if.end
  %8 = load i32, i32* %curr, align 4, !dbg !2759
  %cmp2 = icmp eq i32 %8, 0, !dbg !2760
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !2761

cond.true:                                        ; preds = %if.then1
  br label %cond.end, !dbg !2761

cond.false:                                       ; preds = %if.then1
  %9 = load i32, i32* %curr, align 4, !dbg !2762
  br label %cond.end, !dbg !2761

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -19, %cond.true ], [ %9, %cond.false ], !dbg !2761
  store i32 %cond, i32* %retval, align 4, !dbg !2763
  br label %return, !dbg !2763

if.end3:                                          ; preds = %if.end
  %10 = load i32, i32* %curr, align 4, !dbg !2764
  %intval = bitcast %union.power_supply_propval* %val to i32*, !dbg !2765
  store i32 %10, i32* %intval, align 8, !dbg !2766
  %11 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2767
  %desc4 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 0, !dbg !2768
  %12 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc4, align 8, !dbg !2768
  %set_property5 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %12, i32 0, i32 7, !dbg !2769
  %13 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %set_property5, align 8, !dbg !2769
  %14 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2770
  %call6 = call i32 %13(%struct.power_supply* %14, i32 37, %union.power_supply_propval* %val) #11, !dbg !2767
  store i32 %call6, i32* %retval, align 4, !dbg !2771
  br label %return, !dbg !2771

return:                                           ; preds = %if.end3, %cond.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2772
  ret i32 %15, !dbg !2772
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__power_supply_get_supplier_max_current(%struct.device* %dev, i8* %data) #0 !dbg !2773 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %ret = alloca %union.power_supply_propval, align 8
  %epsy = alloca %struct.power_supply*, align 8
  %psy = alloca %struct.power_supply*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2774, metadata !DIExpression()), !dbg !2775
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2776, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %ret, metadata !2778, metadata !DIExpression()), !dbg !2779
  %0 = bitcast %union.power_supply_propval* %ret to i8*, !dbg !2779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i32, [4 x i8] }* @__const.__power_supply_get_supplier_max_current.ret to i8*), i64 8, i1 false), !dbg !2779
  call void @llvm.dbg.declare(metadata %struct.power_supply** %epsy, metadata !2780, metadata !DIExpression()), !dbg !2781
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2782
  %call = call i8* @dev_get_drvdata(%struct.device* %1) #11, !dbg !2783
  %2 = bitcast i8* %call to %struct.power_supply*, !dbg !2783
  store %struct.power_supply* %2, %struct.power_supply** %epsy, align 8, !dbg !2781
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2784, metadata !DIExpression()), !dbg !2785
  %3 = load i8*, i8** %data.addr, align 8, !dbg !2786
  %4 = bitcast i8* %3 to %struct.power_supply*, !dbg !2786
  store %struct.power_supply* %4, %struct.power_supply** %psy, align 8, !dbg !2785
  %5 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !2787
  %6 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2789
  %call1 = call zeroext i1 @__power_supply_is_supplied_by(%struct.power_supply* %5, %struct.power_supply* %6) #11, !dbg !2790
  br i1 %call1, label %if.then, label %if.end4, !dbg !2791

if.then:                                          ; preds = %entry
  %7 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !2792
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 0, !dbg !2794
  %8 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2794
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %8, i32 0, i32 6, !dbg !2795
  %9 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8, !dbg !2795
  %10 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !2796
  %call2 = call i32 %9(%struct.power_supply* %10, i32 16, %union.power_supply_propval* %ret) #11, !dbg !2792
  %tobool = icmp ne i32 %call2, 0, !dbg !2792
  br i1 %tobool, label %if.end, label %if.then3, !dbg !2797

if.then3:                                         ; preds = %if.then
  %intval = bitcast %union.power_supply_propval* %ret to i32*, !dbg !2798
  %11 = load i32, i32* %intval, align 8, !dbg !2798
  store i32 %11, i32* %retval, align 4, !dbg !2799
  br label %return, !dbg !2799

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2800

if.end4:                                          ; preds = %if.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !2801
  br label %return, !dbg !2801

return:                                           ; preds = %if.end4, %if.then3
  %12 = load i32, i32* %retval, align 4, !dbg !2802
  ret i32 %12, !dbg !2802
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_set_battery_charged(%struct.power_supply* %psy) #0 !dbg !2803 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2804, metadata !DIExpression()), !dbg !2811
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2817, metadata !DIExpression()), !dbg !2825
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2827, metadata !DIExpression()), !dbg !2828
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2829, metadata !DIExpression()), !dbg !2830
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !2831, metadata !DIExpression()), !dbg !2832
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2833
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 14, !dbg !2834
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2835
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !2835
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2836
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !2837
  %conv.i.i = trunc i64 %4 to i32, !dbg !2837
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !2838
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2839
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2839
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !2839
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2840
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2841
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !2841
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !2841
  %cmp = icmp sge i32 %9, 0, !dbg !2842
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2843

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2844
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0, !dbg !2845
  %11 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2845
  %type = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %11, i32 0, i32 1, !dbg !2846
  %12 = load i32, i32* %type, align 8, !dbg !2846
  %cmp1 = icmp eq i32 %12, 1, !dbg !2847
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !2848

land.lhs.true2:                                   ; preds = %land.lhs.true
  %13 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2849
  %desc3 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 0, !dbg !2850
  %14 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc3, align 8, !dbg !2850
  %set_charged = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %14, i32 0, i32 10, !dbg !2851
  %set_charged4 = bitcast {}** %set_charged to void (%struct.power_supply*)**, !dbg !2851
  %15 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %set_charged4, align 8, !dbg !2851
  %tobool = icmp ne void (%struct.power_supply*)* %15, null, !dbg !2849
  br i1 %tobool, label %if.then, label %if.end, !dbg !2852

if.then:                                          ; preds = %land.lhs.true2
  %16 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2853
  %desc5 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 0, !dbg !2855
  %17 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc5, align 8, !dbg !2855
  %set_charged6 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %17, i32 0, i32 10, !dbg !2856
  %set_charged7 = bitcast {}** %set_charged6 to void (%struct.power_supply*)**, !dbg !2856
  %18 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %set_charged7, align 8, !dbg !2856
  %19 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2857
  call void %18(%struct.power_supply* %19) #11, !dbg !2853
  store i32 0, i32* %retval, align 4, !dbg !2858
  br label %return, !dbg !2858

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2859
  br label %return, !dbg !2859

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !2860
  ret i32 %20, !dbg !2860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.power_supply* @power_supply_get_by_name(i8* %name) #0 !dbg !2861 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2864, metadata !DIExpression()), !dbg !2869
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2875, metadata !DIExpression()), !dbg !2877
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2879, metadata !DIExpression()), !dbg !2880
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2881, metadata !DIExpression()), !dbg !2882
  %name.addr = alloca i8*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %dev = alloca %struct.device*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2883, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2885, metadata !DIExpression()), !dbg !2886
  store %struct.power_supply* null, %struct.power_supply** %psy, align 8, !dbg !2886
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2887, metadata !DIExpression()), !dbg !2888
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !2889
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2890
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @power_supply_match_device_by_name) #11, !dbg !2891
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2888
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2892
  %tobool = icmp ne %struct.device* %2, null, !dbg !2892
  br i1 %tobool, label %if.then, label %if.end, !dbg !2893

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2894
  %call1 = call i8* @dev_get_drvdata(%struct.device* %3) #11, !dbg !2895
  %4 = bitcast i8* %call1 to %struct.power_supply*, !dbg !2895
  store %struct.power_supply* %4, %struct.power_supply** %psy, align 8, !dbg !2896
  %5 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2897
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 14, !dbg !2898
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %6 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2899
  %7 = bitcast %struct.atomic_t* %6 to i8*, !dbg !2899
  store i8* %7, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %8 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2900
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !2901
  %conv.i.i = trunc i64 %9 to i32, !dbg !2901
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %8, i32 %conv.i.i) #12, !dbg !2902
  %10 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2903
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !2903
  call void @kcsan_check_access(i8* %10, i64 %11, i32 7) #12, !dbg !2903
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2904
  store %struct.atomic_t* %12, %struct.atomic_t** %v.addr.i1.i, align 8
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2905
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %13, i32 0, i32 0, !dbg !2906
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !2907, !srcloc !2908
  br label %if.end, !dbg !2909

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2910
  ret %struct.power_supply* %14, !dbg !2911
}

; Function Attrs: noredzone
declare dso_local %struct.device* @class_find_device(%struct.class*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_match_device_by_name(%struct.device* %dev, i8* %data) #0 !dbg !2912 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %psy = alloca %struct.power_supply*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.declare(metadata i8** %name, metadata !2919, metadata !DIExpression()), !dbg !2920
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2921
  store i8* %0, i8** %name, align 8, !dbg !2920
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2922, metadata !DIExpression()), !dbg !2923
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2924
  %call = call i8* @dev_get_drvdata(%struct.device* %1) #11, !dbg !2925
  %2 = bitcast i8* %call to %struct.power_supply*, !dbg !2925
  store %struct.power_supply* %2, %struct.power_supply** %psy, align 8, !dbg !2923
  %3 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !2926
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %3, i32 0, i32 0, !dbg !2927
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !2927
  %name1 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %4, i32 0, i32 0, !dbg !2928
  %5 = load i8*, i8** %name1, align 8, !dbg !2928
  %6 = load i8*, i8** %name, align 8, !dbg !2929
  %call2 = call i32 @strcmp(i8* %5, i8* %6) #11, !dbg !2930
  %cmp = icmp eq i32 %call2, 0, !dbg !2931
  %conv = zext i1 %cmp to i32, !dbg !2931
  ret i32 %conv, !dbg !2932
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2933 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2936, metadata !DIExpression()), !dbg !2937
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2938
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2939
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2939
  ret i8* %1, !dbg !2940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @power_supply_put(%struct.power_supply* %psy) #0 !dbg !2941 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2942, metadata !DIExpression()), !dbg !2944
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2875, metadata !DIExpression()), !dbg !2948
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2879, metadata !DIExpression()), !dbg !2950
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2951, metadata !DIExpression()), !dbg !2952
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  br label %do.body, !dbg !2955

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2956

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2958

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !2956

do.end2:                                          ; preds = %do.end
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2960
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 14, !dbg !2961
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2962
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !2962
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2963
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !2964
  %conv.i.i = trunc i64 %4 to i32, !dbg !2964
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #12, !dbg !2965
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2966
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2966
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #12, !dbg !2966
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2967
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2968
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !2969
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !2970, !srcloc !2971
  %9 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !2972
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 7, !dbg !2973
  call void @put_device(%struct.device* %dev) #11, !dbg !2974
  ret void, !dbg !2975
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.power_supply* @power_supply_get_by_phandle(%struct.device_node* %np, i8* %property) #0 !dbg !2976 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2864, metadata !DIExpression()), !dbg !2979
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2875, metadata !DIExpression()), !dbg !2984
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2879, metadata !DIExpression()), !dbg !2986
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2881, metadata !DIExpression()), !dbg !2987
  %retval = alloca %struct.power_supply*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %property.addr = alloca i8*, align 8
  %power_supply_np = alloca %struct.device_node*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2988, metadata !DIExpression()), !dbg !2989
  store i8* %property, i8** %property.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %property.addr, metadata !2990, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.declare(metadata %struct.device_node** %power_supply_np, metadata !2992, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !2994, metadata !DIExpression()), !dbg !2995
  store %struct.power_supply* null, %struct.power_supply** %psy, align 8, !dbg !2995
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2996, metadata !DIExpression()), !dbg !2997
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2998
  %1 = load i8*, i8** %property.addr, align 8, !dbg !2999
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %0, i8* %1, i32 0) #11, !dbg !3000
  store %struct.device_node* %call, %struct.device_node** %power_supply_np, align 8, !dbg !3001
  %2 = load %struct.device_node*, %struct.device_node** %power_supply_np, align 8, !dbg !3002
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !3002
  br i1 %tobool, label %if.end, label %if.then, !dbg !3004

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -19) #11, !dbg !3005
  %3 = bitcast i8* %call1 to %struct.power_supply*, !dbg !3005
  store %struct.power_supply* %3, %struct.power_supply** %retval, align 8, !dbg !3006
  br label %return, !dbg !3006

if.end:                                           ; preds = %entry
  %4 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !3007
  %5 = load %struct.device_node*, %struct.device_node** %power_supply_np, align 8, !dbg !3008
  %6 = bitcast %struct.device_node* %5 to i8*, !dbg !3008
  %call2 = call %struct.device* @class_find_device(%struct.class* %4, %struct.device* null, i8* %6, i32 (%struct.device*, i8*)* @power_supply_match_device_node) #11, !dbg !3009
  store %struct.device* %call2, %struct.device** %dev, align 8, !dbg !3010
  %7 = load %struct.device_node*, %struct.device_node** %power_supply_np, align 8, !dbg !3011
  call void @of_node_put(%struct.device_node* %7) #11, !dbg !3012
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3013
  %tobool3 = icmp ne %struct.device* %8, null, !dbg !3013
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !3014

if.then4:                                         ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3015
  %call5 = call i8* @dev_get_drvdata(%struct.device* %9) #11, !dbg !3016
  %10 = bitcast i8* %call5 to %struct.power_supply*, !dbg !3016
  store %struct.power_supply* %10, %struct.power_supply** %psy, align 8, !dbg !3017
  %11 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !3018
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 14, !dbg !3019
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3020
  %13 = bitcast %struct.atomic_t* %12 to i8*, !dbg !3020
  store i8* %13, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %14 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3021
  %15 = load i64, i64* %size.addr.i.i, align 8, !dbg !3022
  %conv.i.i = trunc i64 %15 to i32, !dbg !3022
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %14, i32 %conv.i.i) #12, !dbg !3023
  %16 = load i8*, i8** %v.addr.i.i, align 8, !dbg !3024
  %17 = load i64, i64* %size.addr.i.i, align 8, !dbg !3024
  call void @kcsan_check_access(i8* %16, i64 %17, i32 7) #12, !dbg !3024
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !3025
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i1.i, align 8
  %19 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !3026
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %19, i32 0, i32 0, !dbg !3027
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !3028, !srcloc !2908
  br label %if.end6, !dbg !3029

if.end6:                                          ; preds = %if.then4, %if.end
  %20 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !3030
  store %struct.power_supply* %20, %struct.power_supply** %retval, align 8, !dbg !3031
  br label %return, !dbg !3031

return:                                           ; preds = %if.end6, %if.then
  %21 = load %struct.power_supply*, %struct.power_supply** %retval, align 8, !dbg !3032
  ret %struct.power_supply* %21, !dbg !3032
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3033 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  %0 = load i64, i64* %error.addr, align 8, !dbg !3039
  %1 = inttoptr i64 %0 to i8*, !dbg !3040
  ret i8* %1, !dbg !3041
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_match_device_node(%struct.device* %dev, i8* %data) #0 !dbg !3042 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3043, metadata !DIExpression()), !dbg !3044
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3045, metadata !DIExpression()), !dbg !3046
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3047
  %parent = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 1, !dbg !3048
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3048
  %tobool = icmp ne %struct.device* %1, null, !dbg !3047
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3049

land.rhs:                                         ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3050
  %parent1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 1, !dbg !3051
  %3 = load %struct.device*, %struct.device** %parent1, align 8, !dbg !3051
  %of_node = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !3052
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3052
  %5 = load i8*, i8** %data.addr, align 8, !dbg !3053
  %6 = bitcast i8* %5 to %struct.device_node*, !dbg !3053
  %cmp = icmp eq %struct.device_node* %4, %6, !dbg !3054
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !3055
  %land.ext = zext i1 %7 to i32, !dbg !3049
  ret i32 %land.ext, !dbg !3056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !3057 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3060, metadata !DIExpression()), !dbg !3061
  ret void, !dbg !3062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.power_supply* @devm_power_supply_get_by_phandle(%struct.device* %dev, i8* %property) #0 !dbg !3063 {
entry:
  %retval = alloca %struct.power_supply*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %property.addr = alloca i8*, align 8
  %ptr = alloca %struct.power_supply**, align 8
  %psy = alloca %struct.power_supply*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3066, metadata !DIExpression()), !dbg !3067
  store i8* %property, i8** %property.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %property.addr, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.declare(metadata %struct.power_supply*** %ptr, metadata !3070, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !3073, metadata !DIExpression()), !dbg !3074
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3075
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !3077
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3077
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !3075
  br i1 %tobool, label %if.end, label %if.then, !dbg !3078

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -19) #11, !dbg !3079
  %2 = bitcast i8* %call to %struct.power_supply*, !dbg !3079
  store %struct.power_supply* %2, %struct.power_supply** %retval, align 8, !dbg !3080
  br label %return, !dbg !3080

if.end:                                           ; preds = %entry
  %call1 = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_power_supply_put, i64 8, i32 3264) #11, !dbg !3081
  %3 = bitcast i8* %call1 to %struct.power_supply**, !dbg !3081
  store %struct.power_supply** %3, %struct.power_supply*** %ptr, align 8, !dbg !3082
  %4 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !3083
  %tobool2 = icmp ne %struct.power_supply** %4, null, !dbg !3083
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3085

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @ERR_PTR(i64 -12) #11, !dbg !3086
  %5 = bitcast i8* %call4 to %struct.power_supply*, !dbg !3086
  store %struct.power_supply* %5, %struct.power_supply** %retval, align 8, !dbg !3087
  br label %return, !dbg !3087

if.end5:                                          ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3088
  %of_node6 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 23, !dbg !3089
  %7 = load %struct.device_node*, %struct.device_node** %of_node6, align 8, !dbg !3089
  %8 = load i8*, i8** %property.addr, align 8, !dbg !3090
  %call7 = call %struct.power_supply* @power_supply_get_by_phandle(%struct.device_node* %7, i8* %8) #11, !dbg !3091
  store %struct.power_supply* %call7, %struct.power_supply** %psy, align 8, !dbg !3092
  %9 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !3093
  %10 = bitcast %struct.power_supply* %9 to i8*, !dbg !3093
  %call8 = call zeroext i1 @IS_ERR_OR_NULL(i8* %10) #11, !dbg !3095
  br i1 %call8, label %if.then9, label %if.else, !dbg !3096

if.then9:                                         ; preds = %if.end5
  %11 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !3097
  %12 = bitcast %struct.power_supply** %11 to i8*, !dbg !3097
  call void @devres_free(i8* %12) #11, !dbg !3099
  br label %if.end10, !dbg !3100

if.else:                                          ; preds = %if.end5
  %13 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !3101
  %14 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !3103
  store %struct.power_supply* %13, %struct.power_supply** %14, align 8, !dbg !3104
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3105
  %16 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !3106
  %17 = bitcast %struct.power_supply** %16 to i8*, !dbg !3106
  call void @devres_add(%struct.device* %15, i8* %17) #11, !dbg !3107
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %18 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !3108
  store %struct.power_supply* %18, %struct.power_supply** %retval, align 8, !dbg !3109
  br label %return, !dbg !3109

return:                                           ; preds = %if.end10, %if.then3, %if.then
  %19 = load %struct.power_supply*, %struct.power_supply** %retval, align 8, !dbg !3110
  ret %struct.power_supply* %19, !dbg !3110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !3111 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !3118, metadata !DIExpression()), !dbg !3119
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3120, metadata !DIExpression()), !dbg !3121
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !3122, metadata !DIExpression()), !dbg !3123
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !3124
  %1 = load i64, i64* %size.addr, align 8, !dbg !3125
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !3126
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #11, !dbg !3127
  ret i8* %call, !dbg !3128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_power_supply_put(%struct.device* %dev, i8* %res) #0 !dbg !3129 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %psy = alloca %struct.power_supply**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3130, metadata !DIExpression()), !dbg !3131
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3132, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.declare(metadata %struct.power_supply*** %psy, metadata !3134, metadata !DIExpression()), !dbg !3135
  %0 = load i8*, i8** %res.addr, align 8, !dbg !3136
  %1 = bitcast i8* %0 to %struct.power_supply**, !dbg !3136
  store %struct.power_supply** %1, %struct.power_supply*** %psy, align 8, !dbg !3135
  %2 = load %struct.power_supply**, %struct.power_supply*** %psy, align 8, !dbg !3137
  %3 = load %struct.power_supply*, %struct.power_supply** %2, align 8, !dbg !3138
  call void @power_supply_put(%struct.power_supply* %3) #11, !dbg !3139
  ret void, !dbg !3140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !3141 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3144, metadata !DIExpression()), !dbg !3145
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3146
  %tobool = icmp ne i8* %0, null, !dbg !3146
  %lnot = xor i1 %tobool, true, !dbg !3146
  %lnot1 = xor i1 %lnot, true, !dbg !3146
  %lnot2 = xor i1 %lnot1, true, !dbg !3146
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3146
  %conv = sext i32 %lnot.ext to i64, !dbg !3146
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3146
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !3147

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !3148
  %2 = ptrtoint i8* %1 to i64, !dbg !3148
  %3 = inttoptr i64 %2 to i8*, !dbg !3148
  %4 = ptrtoint i8* %3 to i64, !dbg !3148
  %cmp = icmp uge i64 %4, -4095, !dbg !3148
  %lnot5 = xor i1 %cmp, true, !dbg !3148
  %lnot7 = xor i1 %lnot5, true, !dbg !3148
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3148
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !3148
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !3147
  br label %lor.end, !dbg !3147

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !3149
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_get_battery_info(%struct.power_supply* %psy, %struct.power_supply_battery_info* %info) #0 !dbg !3150 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %info.addr = alloca %struct.power_supply_battery_info*, align 8
  %resist_table = alloca %struct.power_supply_resistance_temp_table*, align 8
  %battery_np = alloca %struct.device_node*, align 8
  %value = alloca i8*, align 8
  %err = alloca i32, align 4
  %len = alloca i32, align 4
  %index = alloca i32, align 4
  %list = alloca i32*, align 8
  %table = alloca %struct.power_supply_battery_ocv_table*, align 8
  %propname = alloca i8*, align 8
  %i = alloca i32, align 4
  %tab_len = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !3192, metadata !DIExpression()), !dbg !3193
  store %struct.power_supply_battery_info* %info, %struct.power_supply_battery_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_battery_info** %info.addr, metadata !3194, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.declare(metadata %struct.power_supply_resistance_temp_table** %resist_table, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.declare(metadata %struct.device_node** %battery_np, metadata !3198, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.declare(metadata i8** %value, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3202, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.declare(metadata i32* %index, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.declare(metadata i32** %list, metadata !3208, metadata !DIExpression()), !dbg !3211
  %0 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3212
  %energy_full_design_uwh = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %0, i32 0, i32 0, !dbg !3213
  store i32 -22, i32* %energy_full_design_uwh, align 8, !dbg !3214
  %1 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3215
  %charge_full_design_uah = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %1, i32 0, i32 1, !dbg !3216
  store i32 -22, i32* %charge_full_design_uah, align 4, !dbg !3217
  %2 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3218
  %voltage_min_design_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %2, i32 0, i32 2, !dbg !3219
  store i32 -22, i32* %voltage_min_design_uv, align 8, !dbg !3220
  %3 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3221
  %voltage_max_design_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %3, i32 0, i32 3, !dbg !3222
  store i32 -22, i32* %voltage_max_design_uv, align 4, !dbg !3223
  %4 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3224
  %precharge_current_ua = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 5, !dbg !3225
  store i32 -22, i32* %precharge_current_ua, align 4, !dbg !3226
  %5 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3227
  %charge_term_current_ua = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %5, i32 0, i32 7, !dbg !3228
  store i32 -22, i32* %charge_term_current_ua, align 4, !dbg !3229
  %6 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3230
  %constant_charge_current_max_ua = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %6, i32 0, i32 10, !dbg !3231
  store i32 -22, i32* %constant_charge_current_max_ua, align 8, !dbg !3232
  %7 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3233
  %constant_charge_voltage_max_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %7, i32 0, i32 11, !dbg !3234
  store i32 -22, i32* %constant_charge_voltage_max_uv, align 4, !dbg !3235
  %8 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3236
  %temp_ambient_alert_min = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %8, i32 0, i32 14, !dbg !3237
  store i32 -2147483648, i32* %temp_ambient_alert_min, align 4, !dbg !3238
  %9 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3239
  %temp_ambient_alert_max = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %9, i32 0, i32 15, !dbg !3240
  store i32 2147483647, i32* %temp_ambient_alert_max, align 8, !dbg !3241
  %10 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3242
  %temp_alert_min = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %10, i32 0, i32 16, !dbg !3243
  store i32 -2147483648, i32* %temp_alert_min, align 4, !dbg !3244
  %11 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3245
  %temp_alert_max = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %11, i32 0, i32 17, !dbg !3246
  store i32 2147483647, i32* %temp_alert_max, align 8, !dbg !3247
  %12 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3248
  %temp_min = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %12, i32 0, i32 18, !dbg !3249
  store i32 -2147483648, i32* %temp_min, align 4, !dbg !3250
  %13 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3251
  %temp_max = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %13, i32 0, i32 19, !dbg !3252
  store i32 2147483647, i32* %temp_max, align 8, !dbg !3253
  %14 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3254
  %factory_internal_resistance_uohm = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %14, i32 0, i32 12, !dbg !3255
  store i32 -22, i32* %factory_internal_resistance_uohm, align 8, !dbg !3256
  %15 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3257
  %resist_table1 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %15, i32 0, i32 22, !dbg !3258
  store %struct.power_supply_resistance_temp_table* null, %struct.power_supply_resistance_temp_table** %resist_table1, align 8, !dbg !3259
  store i32 0, i32* %index, align 4, !dbg !3260
  br label %for.cond, !dbg !3262

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %index, align 4, !dbg !3263
  %cmp = icmp slt i32 %16, 20, !dbg !3265
  br i1 %cmp, label %for.body, label %for.end, !dbg !3266

for.body:                                         ; preds = %for.cond
  %17 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3267
  %ocv_table = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %17, i32 0, i32 20, !dbg !3269
  %18 = load i32, i32* %index, align 4, !dbg !3270
  %idxprom = sext i32 %18 to i64, !dbg !3267
  %arrayidx = getelementptr [20 x %struct.power_supply_battery_ocv_table*], [20 x %struct.power_supply_battery_ocv_table*]* %ocv_table, i64 0, i64 %idxprom, !dbg !3267
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %arrayidx, align 8, !dbg !3271
  %19 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3272
  %ocv_temp = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %19, i32 0, i32 13, !dbg !3273
  %20 = load i32, i32* %index, align 4, !dbg !3274
  %idxprom2 = sext i32 %20 to i64, !dbg !3272
  %arrayidx3 = getelementptr [20 x i32], [20 x i32]* %ocv_temp, i64 0, i64 %idxprom2, !dbg !3272
  store i32 -22, i32* %arrayidx3, align 4, !dbg !3275
  %21 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3276
  %ocv_table_size = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %21, i32 0, i32 21, !dbg !3277
  %22 = load i32, i32* %index, align 4, !dbg !3278
  %idxprom4 = sext i32 %22 to i64, !dbg !3276
  %arrayidx5 = getelementptr [20 x i32], [20 x i32]* %ocv_table_size, i64 0, i64 %idxprom4, !dbg !3276
  store i32 -22, i32* %arrayidx5, align 4, !dbg !3279
  br label %for.inc, !dbg !3280

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %index, align 4, !dbg !3281
  %inc = add i32 %23, 1, !dbg !3281
  store i32 %inc, i32* %index, align 4, !dbg !3281
  br label %for.cond, !dbg !3282, !llvm.loop !3283

for.end:                                          ; preds = %for.cond
  %24 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3285
  %of_node = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 5, !dbg !3287
  %25 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3287
  %tobool = icmp ne %struct.device_node* %25, null, !dbg !3285
  br i1 %tobool, label %if.end, label %if.then, !dbg !3288

if.then:                                          ; preds = %for.end
  %26 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3289
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %26, i32 0, i32 7, !dbg !3289
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.power_supply_get_battery_info, i64 0, i64 0)) #13, !dbg !3289
  store i32 -6, i32* %retval, align 4, !dbg !3291
  br label %return, !dbg !3291

if.end:                                           ; preds = %for.end
  %27 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3292
  %of_node6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %27, i32 0, i32 5, !dbg !3293
  %28 = load %struct.device_node*, %struct.device_node** %of_node6, align 8, !dbg !3293
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0) #11, !dbg !3294
  store %struct.device_node* %call, %struct.device_node** %battery_np, align 8, !dbg !3295
  %29 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3296
  %tobool7 = icmp ne %struct.device_node* %29, null, !dbg !3296
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3298

if.then8:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3299
  br label %return, !dbg !3299

if.end9:                                          ; preds = %if.end
  %30 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3300
  %call10 = call i32 @of_property_read_string(%struct.device_node* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %value) #11, !dbg !3301
  store i32 %call10, i32* %err, align 4, !dbg !3302
  %31 = load i32, i32* %err, align 4, !dbg !3303
  %tobool11 = icmp ne i32 %31, 0, !dbg !3303
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3305

if.then12:                                        ; preds = %if.end9
  br label %out_put_node, !dbg !3306

if.end13:                                         ; preds = %if.end9
  %32 = load i8*, i8** %value, align 8, !dbg !3307
  %call14 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %32) #11, !dbg !3309
  %tobool15 = icmp ne i32 %call14, 0, !dbg !3309
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3310

if.then16:                                        ; preds = %if.end13
  store i32 -19, i32* %err, align 4, !dbg !3311
  br label %out_put_node, !dbg !3313

if.end17:                                         ; preds = %if.end13
  %33 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3314
  %34 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3315
  %energy_full_design_uwh18 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %34, i32 0, i32 0, !dbg !3316
  %call19 = call i32 @of_property_read_u32(%struct.device_node* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32* %energy_full_design_uwh18) #11, !dbg !3317
  %35 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3318
  %36 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3319
  %charge_full_design_uah20 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %36, i32 0, i32 1, !dbg !3320
  %call21 = call i32 @of_property_read_u32(%struct.device_node* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32* %charge_full_design_uah20) #11, !dbg !3321
  %37 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3322
  %38 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3323
  %voltage_min_design_uv22 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %38, i32 0, i32 2, !dbg !3324
  %call23 = call i32 @of_property_read_u32(%struct.device_node* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32* %voltage_min_design_uv22) #11, !dbg !3325
  %39 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3326
  %40 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3327
  %voltage_max_design_uv24 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %40, i32 0, i32 3, !dbg !3328
  %call25 = call i32 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32* %voltage_max_design_uv24) #11, !dbg !3329
  %41 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3330
  %42 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3331
  %tricklecharge_current_ua = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %42, i32 0, i32 4, !dbg !3332
  %call26 = call i32 @of_property_read_u32(%struct.device_node* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32* %tricklecharge_current_ua) #11, !dbg !3333
  %43 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3334
  %44 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3335
  %precharge_current_ua27 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %44, i32 0, i32 5, !dbg !3336
  %call28 = call i32 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32* %precharge_current_ua27) #11, !dbg !3337
  %45 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3338
  %46 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3339
  %precharge_voltage_max_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %46, i32 0, i32 6, !dbg !3340
  %call29 = call i32 @of_property_read_u32(%struct.device_node* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32* %precharge_voltage_max_uv) #11, !dbg !3341
  %47 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3342
  %48 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3343
  %charge_term_current_ua30 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %48, i32 0, i32 7, !dbg !3344
  %call31 = call i32 @of_property_read_u32(%struct.device_node* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32* %charge_term_current_ua30) #11, !dbg !3345
  %49 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3346
  %50 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3347
  %charge_restart_voltage_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %50, i32 0, i32 8, !dbg !3348
  %call32 = call i32 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32* %charge_restart_voltage_uv) #11, !dbg !3349
  %51 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3350
  %52 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3351
  %overvoltage_limit_uv = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %52, i32 0, i32 9, !dbg !3352
  %call33 = call i32 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32* %overvoltage_limit_uv) #11, !dbg !3353
  %53 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3354
  %54 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3355
  %constant_charge_current_max_ua34 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %54, i32 0, i32 10, !dbg !3356
  %call35 = call i32 @of_property_read_u32(%struct.device_node* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32* %constant_charge_current_max_ua34) #11, !dbg !3357
  %55 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3358
  %56 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3359
  %constant_charge_voltage_max_uv36 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %56, i32 0, i32 11, !dbg !3360
  %call37 = call i32 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32* %constant_charge_voltage_max_uv36) #11, !dbg !3361
  %57 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3362
  %58 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3363
  %factory_internal_resistance_uohm38 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %58, i32 0, i32 12, !dbg !3364
  %call39 = call i32 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32* %factory_internal_resistance_uohm38) #11, !dbg !3365
  %59 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3366
  %60 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3367
  %temp_ambient_alert_min40 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %60, i32 0, i32 14, !dbg !3368
  %call41 = call i32 @of_property_read_u32_index(%struct.device_node* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 0, i32* %temp_ambient_alert_min40) #11, !dbg !3369
  %61 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3370
  %62 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3371
  %temp_ambient_alert_max42 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %62, i32 0, i32 15, !dbg !3372
  %call43 = call i32 @of_property_read_u32_index(%struct.device_node* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 1, i32* %temp_ambient_alert_max42) #11, !dbg !3373
  %63 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3374
  %64 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3375
  %temp_alert_min44 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %64, i32 0, i32 16, !dbg !3376
  %call45 = call i32 @of_property_read_u32_index(%struct.device_node* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 0, i32* %temp_alert_min44) #11, !dbg !3377
  %65 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3378
  %66 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3379
  %temp_alert_max46 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %66, i32 0, i32 17, !dbg !3380
  %call47 = call i32 @of_property_read_u32_index(%struct.device_node* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 1, i32* %temp_alert_max46) #11, !dbg !3381
  %67 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3382
  %68 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3383
  %temp_min48 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %68, i32 0, i32 18, !dbg !3384
  %call49 = call i32 @of_property_read_u32_index(%struct.device_node* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 0, i32* %temp_min48) #11, !dbg !3385
  %69 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3386
  %70 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3387
  %temp_max50 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %70, i32 0, i32 19, !dbg !3388
  %call51 = call i32 @of_property_read_u32_index(%struct.device_node* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 1, i32* %temp_max50) #11, !dbg !3389
  %71 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3390
  %call52 = call i32 @of_property_count_u32_elems(%struct.device_node* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !3391
  store i32 %call52, i32* %len, align 4, !dbg !3392
  %72 = load i32, i32* %len, align 4, !dbg !3393
  %cmp53 = icmp slt i32 %72, 0, !dbg !3395
  br i1 %cmp53, label %land.lhs.true, label %if.else, !dbg !3396

land.lhs.true:                                    ; preds = %if.end17
  %73 = load i32, i32* %len, align 4, !dbg !3397
  %cmp54 = icmp ne i32 %73, -22, !dbg !3398
  br i1 %cmp54, label %if.then55, label %if.else, !dbg !3399

if.then55:                                        ; preds = %land.lhs.true
  %74 = load i32, i32* %len, align 4, !dbg !3400
  store i32 %74, i32* %err, align 4, !dbg !3402
  br label %out_put_node, !dbg !3403

if.else:                                          ; preds = %land.lhs.true, %if.end17
  %75 = load i32, i32* %len, align 4, !dbg !3404
  %cmp56 = icmp sgt i32 %75, 20, !dbg !3406
  br i1 %cmp56, label %if.then57, label %if.else59, !dbg !3407

if.then57:                                        ; preds = %if.else
  %76 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3408
  %dev58 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %76, i32 0, i32 7, !dbg !3408
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #13, !dbg !3408
  store i32 -22, i32* %err, align 4, !dbg !3410
  br label %out_put_node, !dbg !3411

if.else59:                                        ; preds = %if.else
  %77 = load i32, i32* %len, align 4, !dbg !3412
  %cmp60 = icmp sgt i32 %77, 0, !dbg !3414
  br i1 %cmp60, label %if.then61, label %if.end64, !dbg !3415

if.then61:                                        ; preds = %if.else59
  %78 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3416
  %79 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3418
  %ocv_temp62 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %79, i32 0, i32 13, !dbg !3419
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %ocv_temp62, i64 0, i64 0, !dbg !3418
  %80 = load i32, i32* %len, align 4, !dbg !3420
  %conv = sext i32 %80 to i64, !dbg !3420
  %call63 = call i32 @of_property_read_u32_array(%struct.device_node* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32* %arraydecay, i64 %conv) #11, !dbg !3421
  br label %if.end64, !dbg !3422

if.end64:                                         ; preds = %if.then61, %if.else59
  br label %if.end65

if.end65:                                         ; preds = %if.end64
  br label %if.end66

if.end66:                                         ; preds = %if.end65
  store i32 0, i32* %index, align 4, !dbg !3423
  br label %for.cond67, !dbg !3425

for.cond67:                                       ; preds = %for.inc131, %if.end66
  %81 = load i32, i32* %index, align 4, !dbg !3426
  %82 = load i32, i32* %len, align 4, !dbg !3428
  %cmp68 = icmp slt i32 %81, %82, !dbg !3429
  br i1 %cmp68, label %for.body70, label %for.end133, !dbg !3430

for.body70:                                       ; preds = %for.cond67
  call void @llvm.dbg.declare(metadata %struct.power_supply_battery_ocv_table** %table, metadata !3431, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.declare(metadata i8** %propname, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.declare(metadata i32* %tab_len, metadata !3438, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.declare(metadata i32* %size, metadata !3440, metadata !DIExpression()), !dbg !3441
  %83 = load i32, i32* %index, align 4, !dbg !3442
  %call71 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %83) #11, !dbg !3443
  store i8* %call71, i8** %propname, align 8, !dbg !3444
  %84 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3445
  %85 = load i8*, i8** %propname, align 8, !dbg !3446
  %call72 = call i8* @of_get_property(%struct.device_node* %84, i8* %85, i32* %size) #11, !dbg !3447
  %86 = bitcast i8* %call72 to i32*, !dbg !3447
  store i32* %86, i32** %list, align 8, !dbg !3448
  %87 = load i32*, i32** %list, align 8, !dbg !3449
  %tobool73 = icmp ne i32* %87, null, !dbg !3449
  br i1 %tobool73, label %lor.lhs.false, label %if.then75, !dbg !3451

lor.lhs.false:                                    ; preds = %for.body70
  %88 = load i32, i32* %size, align 4, !dbg !3452
  %tobool74 = icmp ne i32 %88, 0, !dbg !3452
  br i1 %tobool74, label %if.end77, label %if.then75, !dbg !3453

if.then75:                                        ; preds = %lor.lhs.false, %for.body70
  %89 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3454
  %dev76 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %89, i32 0, i32 7, !dbg !3454
  %90 = load i8*, i8** %propname, align 8, !dbg !3454
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %90) #13, !dbg !3454
  %91 = load i8*, i8** %propname, align 8, !dbg !3456
  call void @kfree(i8* %91) #11, !dbg !3457
  %92 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3458
  %93 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3459
  call void @power_supply_put_battery_info(%struct.power_supply* %92, %struct.power_supply_battery_info* %93) #11, !dbg !3460
  store i32 -22, i32* %err, align 4, !dbg !3461
  br label %out_put_node, !dbg !3462

if.end77:                                         ; preds = %lor.lhs.false
  %94 = load i8*, i8** %propname, align 8, !dbg !3463
  call void @kfree(i8* %94) #11, !dbg !3464
  %95 = load i32, i32* %size, align 4, !dbg !3465
  %conv78 = sext i32 %95 to i64, !dbg !3465
  %div = udiv i64 %conv78, 8, !dbg !3466
  %conv79 = trunc i64 %div to i32, !dbg !3465
  store i32 %conv79, i32* %tab_len, align 4, !dbg !3467
  %96 = load i32, i32* %tab_len, align 4, !dbg !3468
  %97 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3469
  %ocv_table_size80 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %97, i32 0, i32 21, !dbg !3470
  %98 = load i32, i32* %index, align 4, !dbg !3471
  %idxprom81 = sext i32 %98 to i64, !dbg !3469
  %arrayidx82 = getelementptr [20 x i32], [20 x i32]* %ocv_table_size80, i64 0, i64 %idxprom81, !dbg !3469
  store i32 %96, i32* %arrayidx82, align 4, !dbg !3472
  %99 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3473
  %dev83 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %99, i32 0, i32 7, !dbg !3474
  %100 = load i32, i32* %tab_len, align 4, !dbg !3475
  %conv84 = sext i32 %100 to i64, !dbg !3475
  %call85 = call i8* @devm_kcalloc(%struct.device* %dev83, i64 %conv84, i64 8, i32 3264) #11, !dbg !3476
  %101 = bitcast i8* %call85 to %struct.power_supply_battery_ocv_table*, !dbg !3476
  %102 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3477
  %ocv_table86 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %102, i32 0, i32 20, !dbg !3478
  %103 = load i32, i32* %index, align 4, !dbg !3479
  %idxprom87 = sext i32 %103 to i64, !dbg !3477
  %arrayidx88 = getelementptr [20 x %struct.power_supply_battery_ocv_table*], [20 x %struct.power_supply_battery_ocv_table*]* %ocv_table86, i64 0, i64 %idxprom87, !dbg !3477
  store %struct.power_supply_battery_ocv_table* %101, %struct.power_supply_battery_ocv_table** %arrayidx88, align 8, !dbg !3480
  store %struct.power_supply_battery_ocv_table* %101, %struct.power_supply_battery_ocv_table** %table, align 8, !dbg !3481
  %104 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3482
  %ocv_table89 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %104, i32 0, i32 20, !dbg !3484
  %105 = load i32, i32* %index, align 4, !dbg !3485
  %idxprom90 = sext i32 %105 to i64, !dbg !3482
  %arrayidx91 = getelementptr [20 x %struct.power_supply_battery_ocv_table*], [20 x %struct.power_supply_battery_ocv_table*]* %ocv_table89, i64 0, i64 %idxprom90, !dbg !3482
  %106 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %arrayidx91, align 8, !dbg !3482
  %tobool92 = icmp ne %struct.power_supply_battery_ocv_table* %106, null, !dbg !3482
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !3486

if.then93:                                        ; preds = %if.end77
  %107 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3487
  %108 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3489
  call void @power_supply_put_battery_info(%struct.power_supply* %107, %struct.power_supply_battery_info* %108) #11, !dbg !3490
  store i32 -12, i32* %err, align 4, !dbg !3491
  br label %out_put_node, !dbg !3492

if.end94:                                         ; preds = %if.end77
  store i32 0, i32* %i, align 4, !dbg !3493
  br label %for.cond95, !dbg !3495

for.cond95:                                       ; preds = %for.inc128, %if.end94
  %109 = load i32, i32* %i, align 4, !dbg !3496
  %110 = load i32, i32* %tab_len, align 4, !dbg !3498
  %cmp96 = icmp slt i32 %109, %110, !dbg !3499
  br i1 %cmp96, label %for.body98, label %for.end130, !dbg !3500

for.body98:                                       ; preds = %for.cond95
  %111 = load i32*, i32** %list, align 8, !dbg !3501
  %112 = load i32, i32* %111, align 4, !dbg !3501
  %113 = call i1 @llvm.is.constant.i32(i32 %112), !dbg !3501
  br i1 %113, label %cond.true, label %cond.false, !dbg !3501

cond.true:                                        ; preds = %for.body98
  %114 = load i32*, i32** %list, align 8, !dbg !3501
  %115 = load i32, i32* %114, align 4, !dbg !3501
  %and = and i32 %115, 255, !dbg !3501
  %shl = shl i32 %and, 24, !dbg !3501
  %116 = load i32*, i32** %list, align 8, !dbg !3501
  %117 = load i32, i32* %116, align 4, !dbg !3501
  %and99 = and i32 %117, 65280, !dbg !3501
  %shl100 = shl i32 %and99, 8, !dbg !3501
  %or = or i32 %shl, %shl100, !dbg !3501
  %118 = load i32*, i32** %list, align 8, !dbg !3501
  %119 = load i32, i32* %118, align 4, !dbg !3501
  %and101 = and i32 %119, 16711680, !dbg !3501
  %shr = lshr i32 %and101, 8, !dbg !3501
  %or102 = or i32 %or, %shr, !dbg !3501
  %120 = load i32*, i32** %list, align 8, !dbg !3501
  %121 = load i32, i32* %120, align 4, !dbg !3501
  %and103 = and i32 %121, -16777216, !dbg !3501
  %shr104 = lshr i32 %and103, 24, !dbg !3501
  %or105 = or i32 %or102, %shr104, !dbg !3501
  br label %cond.end, !dbg !3501

cond.false:                                       ; preds = %for.body98
  %122 = load i32*, i32** %list, align 8, !dbg !3501
  %123 = load i32, i32* %122, align 4, !dbg !3501
  %call106 = call i32 @__fswab32(i32 %123) #14, !dbg !3501
  br label %cond.end, !dbg !3501

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or105, %cond.true ], [ %call106, %cond.false ], !dbg !3501
  %124 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table, align 8, !dbg !3503
  %125 = load i32, i32* %i, align 4, !dbg !3504
  %idxprom107 = sext i32 %125 to i64, !dbg !3503
  %arrayidx108 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %124, i64 %idxprom107, !dbg !3503
  %ocv = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx108, i32 0, i32 0, !dbg !3505
  store i32 %cond, i32* %ocv, align 4, !dbg !3506
  %126 = load i32*, i32** %list, align 8, !dbg !3507
  %incdec.ptr = getelementptr i32, i32* %126, i32 1, !dbg !3507
  store i32* %incdec.ptr, i32** %list, align 8, !dbg !3507
  %127 = load i32*, i32** %list, align 8, !dbg !3508
  %128 = load i32, i32* %127, align 4, !dbg !3508
  %129 = call i1 @llvm.is.constant.i32(i32 %128), !dbg !3508
  br i1 %129, label %cond.true109, label %cond.false121, !dbg !3508

cond.true109:                                     ; preds = %cond.end
  %130 = load i32*, i32** %list, align 8, !dbg !3508
  %131 = load i32, i32* %130, align 4, !dbg !3508
  %and110 = and i32 %131, 255, !dbg !3508
  %shl111 = shl i32 %and110, 24, !dbg !3508
  %132 = load i32*, i32** %list, align 8, !dbg !3508
  %133 = load i32, i32* %132, align 4, !dbg !3508
  %and112 = and i32 %133, 65280, !dbg !3508
  %shl113 = shl i32 %and112, 8, !dbg !3508
  %or114 = or i32 %shl111, %shl113, !dbg !3508
  %134 = load i32*, i32** %list, align 8, !dbg !3508
  %135 = load i32, i32* %134, align 4, !dbg !3508
  %and115 = and i32 %135, 16711680, !dbg !3508
  %shr116 = lshr i32 %and115, 8, !dbg !3508
  %or117 = or i32 %or114, %shr116, !dbg !3508
  %136 = load i32*, i32** %list, align 8, !dbg !3508
  %137 = load i32, i32* %136, align 4, !dbg !3508
  %and118 = and i32 %137, -16777216, !dbg !3508
  %shr119 = lshr i32 %and118, 24, !dbg !3508
  %or120 = or i32 %or117, %shr119, !dbg !3508
  br label %cond.end123, !dbg !3508

cond.false121:                                    ; preds = %cond.end
  %138 = load i32*, i32** %list, align 8, !dbg !3508
  %139 = load i32, i32* %138, align 4, !dbg !3508
  %call122 = call i32 @__fswab32(i32 %139) #14, !dbg !3508
  br label %cond.end123, !dbg !3508

cond.end123:                                      ; preds = %cond.false121, %cond.true109
  %cond124 = phi i32 [ %or120, %cond.true109 ], [ %call122, %cond.false121 ], !dbg !3508
  %140 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table, align 8, !dbg !3509
  %141 = load i32, i32* %i, align 4, !dbg !3510
  %idxprom125 = sext i32 %141 to i64, !dbg !3509
  %arrayidx126 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %140, i64 %idxprom125, !dbg !3509
  %capacity = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx126, i32 0, i32 1, !dbg !3511
  store i32 %cond124, i32* %capacity, align 4, !dbg !3512
  %142 = load i32*, i32** %list, align 8, !dbg !3513
  %incdec.ptr127 = getelementptr i32, i32* %142, i32 1, !dbg !3513
  store i32* %incdec.ptr127, i32** %list, align 8, !dbg !3513
  br label %for.inc128, !dbg !3514

for.inc128:                                       ; preds = %cond.end123
  %143 = load i32, i32* %i, align 4, !dbg !3515
  %inc129 = add i32 %143, 1, !dbg !3515
  store i32 %inc129, i32* %i, align 4, !dbg !3515
  br label %for.cond95, !dbg !3516, !llvm.loop !3517

for.end130:                                       ; preds = %for.cond95
  br label %for.inc131, !dbg !3519

for.inc131:                                       ; preds = %for.end130
  %144 = load i32, i32* %index, align 4, !dbg !3520
  %inc132 = add i32 %144, 1, !dbg !3520
  store i32 %inc132, i32* %index, align 4, !dbg !3520
  br label %for.cond67, !dbg !3521, !llvm.loop !3522

for.end133:                                       ; preds = %for.cond67
  %145 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3524
  %call134 = call i8* @of_get_property(%struct.device_node* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32* %len) #11, !dbg !3525
  %146 = bitcast i8* %call134 to i32*, !dbg !3525
  store i32* %146, i32** %list, align 8, !dbg !3526
  %147 = load i32*, i32** %list, align 8, !dbg !3527
  %tobool135 = icmp ne i32* %147, null, !dbg !3527
  br i1 %tobool135, label %lor.lhs.false136, label %if.then138, !dbg !3529

lor.lhs.false136:                                 ; preds = %for.end133
  %148 = load i32, i32* %len, align 4, !dbg !3530
  %tobool137 = icmp ne i32 %148, 0, !dbg !3530
  br i1 %tobool137, label %if.end139, label %if.then138, !dbg !3531

if.then138:                                       ; preds = %lor.lhs.false136, %for.end133
  br label %out_put_node, !dbg !3532

if.end139:                                        ; preds = %lor.lhs.false136
  %149 = load i32, i32* %len, align 4, !dbg !3533
  %conv140 = sext i32 %149 to i64, !dbg !3533
  %div141 = udiv i64 %conv140, 8, !dbg !3534
  %conv142 = trunc i64 %div141 to i32, !dbg !3533
  %150 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3535
  %resist_table_size = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %150, i32 0, i32 23, !dbg !3536
  store i32 %conv142, i32* %resist_table_size, align 8, !dbg !3537
  %151 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3538
  %dev143 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %151, i32 0, i32 7, !dbg !3539
  %152 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3540
  %resist_table_size144 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %152, i32 0, i32 23, !dbg !3541
  %153 = load i32, i32* %resist_table_size144, align 8, !dbg !3541
  %conv145 = sext i32 %153 to i64, !dbg !3540
  %call146 = call i8* @devm_kcalloc(%struct.device* %dev143, i64 %conv145, i64 8, i32 3264) #11, !dbg !3542
  %154 = bitcast i8* %call146 to %struct.power_supply_resistance_temp_table*, !dbg !3542
  %155 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3543
  %resist_table147 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %155, i32 0, i32 22, !dbg !3544
  store %struct.power_supply_resistance_temp_table* %154, %struct.power_supply_resistance_temp_table** %resist_table147, align 8, !dbg !3545
  store %struct.power_supply_resistance_temp_table* %154, %struct.power_supply_resistance_temp_table** %resist_table, align 8, !dbg !3546
  %156 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3547
  %resist_table148 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %156, i32 0, i32 22, !dbg !3549
  %157 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %resist_table148, align 8, !dbg !3549
  %tobool149 = icmp ne %struct.power_supply_resistance_temp_table* %157, null, !dbg !3547
  br i1 %tobool149, label %if.end151, label %if.then150, !dbg !3550

if.then150:                                       ; preds = %if.end139
  %158 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3551
  %159 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3553
  call void @power_supply_put_battery_info(%struct.power_supply* %158, %struct.power_supply_battery_info* %159) #11, !dbg !3554
  store i32 -12, i32* %err, align 4, !dbg !3555
  br label %out_put_node, !dbg !3556

if.end151:                                        ; preds = %if.end139
  store i32 0, i32* %index, align 4, !dbg !3557
  br label %for.cond152, !dbg !3559

for.cond152:                                      ; preds = %for.inc165, %if.end151
  %160 = load i32, i32* %index, align 4, !dbg !3560
  %161 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3562
  %resist_table_size153 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %161, i32 0, i32 23, !dbg !3563
  %162 = load i32, i32* %resist_table_size153, align 8, !dbg !3563
  %cmp154 = icmp slt i32 %160, %162, !dbg !3564
  br i1 %cmp154, label %for.body156, label %for.end167, !dbg !3565

for.body156:                                      ; preds = %for.cond152
  %163 = load i32*, i32** %list, align 8, !dbg !3566
  %incdec.ptr157 = getelementptr i32, i32* %163, i32 1, !dbg !3566
  store i32* %incdec.ptr157, i32** %list, align 8, !dbg !3566
  %164 = load i32, i32* %163, align 4, !dbg !3566
  %call158 = call i32 @__fswab32(i32 %164) #14, !dbg !3566
  %165 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %resist_table, align 8, !dbg !3568
  %166 = load i32, i32* %index, align 4, !dbg !3569
  %idxprom159 = sext i32 %166 to i64, !dbg !3568
  %arrayidx160 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %165, i64 %idxprom159, !dbg !3568
  %temp = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx160, i32 0, i32 0, !dbg !3570
  store i32 %call158, i32* %temp, align 4, !dbg !3571
  %167 = load i32*, i32** %list, align 8, !dbg !3572
  %incdec.ptr161 = getelementptr i32, i32* %167, i32 1, !dbg !3572
  store i32* %incdec.ptr161, i32** %list, align 8, !dbg !3572
  %168 = load i32, i32* %167, align 4, !dbg !3572
  %call162 = call i32 @__fswab32(i32 %168) #14, !dbg !3572
  %169 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %resist_table, align 8, !dbg !3573
  %170 = load i32, i32* %index, align 4, !dbg !3574
  %idxprom163 = sext i32 %170 to i64, !dbg !3573
  %arrayidx164 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %169, i64 %idxprom163, !dbg !3573
  %resistance = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx164, i32 0, i32 1, !dbg !3575
  store i32 %call162, i32* %resistance, align 4, !dbg !3576
  br label %for.inc165, !dbg !3577

for.inc165:                                       ; preds = %for.body156
  %171 = load i32, i32* %index, align 4, !dbg !3578
  %inc166 = add i32 %171, 1, !dbg !3578
  store i32 %inc166, i32* %index, align 4, !dbg !3578
  br label %for.cond152, !dbg !3579, !llvm.loop !3580

for.end167:                                       ; preds = %for.cond152
  br label %out_put_node, !dbg !3581

out_put_node:                                     ; preds = %for.end167, %if.then150, %if.then138, %if.then93, %if.then75, %if.then57, %if.then55, %if.then16, %if.then12
  call void @llvm.dbg.label(metadata !3582), !dbg !3583
  %172 = load %struct.device_node*, %struct.device_node** %battery_np, align 8, !dbg !3584
  call void @of_node_put(%struct.device_node* %172) #11, !dbg !3585
  %173 = load i32, i32* %err, align 4, !dbg !3586
  store i32 %173, i32* %retval, align 4, !dbg !3587
  br label %return, !dbg !3587

return:                                           ; preds = %out_put_node, %if.then8, %if.then
  %174 = load i32, i32* %retval, align 4, !dbg !3588
  ret i32 %174, !dbg !3588
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !3589 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3594, metadata !DIExpression()), !dbg !3595
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3600
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3601
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3602
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #11, !dbg !3603
  ret i32 %call, !dbg !3604
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_count_u32_elems(%struct.device_node* %np, i8* %propname) #0 !dbg !3605 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3608, metadata !DIExpression()), !dbg !3609
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3610, metadata !DIExpression()), !dbg !3611
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3612
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3613
  %call = call i32 @of_property_count_elems_of_size(%struct.device_node* %0, i8* %1, i32 4) #11, !dbg !3614
  ret i32 %call, !dbg !3615
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !3616 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3619, metadata !DIExpression()), !dbg !3620
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3621, metadata !DIExpression()), !dbg !3622
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3623, metadata !DIExpression()), !dbg !3624
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3625, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3627, metadata !DIExpression()), !dbg !3628
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3629
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3630
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3631
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3632
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #11, !dbg !3633
  store i32 %call, i32* %ret, align 4, !dbg !3628
  %4 = load i32, i32* %ret, align 4, !dbg !3634
  %cmp = icmp sge i32 %4, 0, !dbg !3636
  br i1 %cmp, label %if.then, label %if.else, !dbg !3637

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3638
  br label %return, !dbg !3638

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3639
  store i32 %5, i32* %retval, align 4, !dbg !3640
  br label %return, !dbg !3640

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3641
  ret i32 %6, !dbg !3641
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @power_supply_put_battery_info(%struct.power_supply* %psy, %struct.power_supply_battery_info* %info) #0 !dbg !3642 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  %info.addr = alloca %struct.power_supply_battery_info*, align 8
  %i = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !3645, metadata !DIExpression()), !dbg !3646
  store %struct.power_supply_battery_info* %info, %struct.power_supply_battery_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_battery_info** %info.addr, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3649, metadata !DIExpression()), !dbg !3650
  store i32 0, i32* %i, align 4, !dbg !3651
  br label %for.cond, !dbg !3653

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3654
  %cmp = icmp slt i32 %0, 20, !dbg !3656
  br i1 %cmp, label %for.body, label %for.end, !dbg !3657

for.body:                                         ; preds = %for.cond
  %1 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3658
  %ocv_table = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %1, i32 0, i32 20, !dbg !3661
  %2 = load i32, i32* %i, align 4, !dbg !3662
  %idxprom = sext i32 %2 to i64, !dbg !3658
  %arrayidx = getelementptr [20 x %struct.power_supply_battery_ocv_table*], [20 x %struct.power_supply_battery_ocv_table*]* %ocv_table, i64 0, i64 %idxprom, !dbg !3658
  %3 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %arrayidx, align 8, !dbg !3658
  %tobool = icmp ne %struct.power_supply_battery_ocv_table* %3, null, !dbg !3658
  br i1 %tobool, label %if.then, label %if.end, !dbg !3663

if.then:                                          ; preds = %for.body
  %4 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3664
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 7, !dbg !3665
  %5 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3666
  %ocv_table1 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %5, i32 0, i32 20, !dbg !3667
  %6 = load i32, i32* %i, align 4, !dbg !3668
  %idxprom2 = sext i32 %6 to i64, !dbg !3666
  %arrayidx3 = getelementptr [20 x %struct.power_supply_battery_ocv_table*], [20 x %struct.power_supply_battery_ocv_table*]* %ocv_table1, i64 0, i64 %idxprom2, !dbg !3666
  %7 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %arrayidx3, align 8, !dbg !3666
  %8 = bitcast %struct.power_supply_battery_ocv_table* %7 to i8*, !dbg !3666
  call void @devm_kfree(%struct.device* %dev, i8* %8) #11, !dbg !3669
  br label %if.end, !dbg !3669

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3670

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !3671
  %inc = add i32 %9, 1, !dbg !3671
  store i32 %inc, i32* %i, align 4, !dbg !3671
  br label %for.cond, !dbg !3672, !llvm.loop !3673

for.end:                                          ; preds = %for.cond
  %10 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3675
  %resist_table = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %10, i32 0, i32 22, !dbg !3677
  %11 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %resist_table, align 8, !dbg !3677
  %tobool4 = icmp ne %struct.power_supply_resistance_temp_table* %11, null, !dbg !3675
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !3678

if.then5:                                         ; preds = %for.end
  %12 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3679
  %dev6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 7, !dbg !3680
  %13 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3681
  %resist_table7 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %13, i32 0, i32 22, !dbg !3682
  %14 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %resist_table7, align 8, !dbg !3682
  %15 = bitcast %struct.power_supply_resistance_temp_table* %14 to i8*, !dbg !3681
  call void @devm_kfree(%struct.device* %dev6, i8* %15) #11, !dbg !3683
  br label %if.end8, !dbg !3683

if.end8:                                          ; preds = %if.then5, %for.end
  ret void, !dbg !3684
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kcalloc(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #0 !dbg !3685 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3688, metadata !DIExpression()), !dbg !3689
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3690, metadata !DIExpression()), !dbg !3691
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3692, metadata !DIExpression()), !dbg !3693
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3694, metadata !DIExpression()), !dbg !3695
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3696
  %1 = load i64, i64* %n.addr, align 8, !dbg !3697
  %2 = load i64, i64* %size.addr, align 8, !dbg !3698
  %3 = load i32, i32* %flags.addr, align 4, !dbg !3699
  %or = or i32 %3, 256, !dbg !3700
  %call = call i8* @devm_kmalloc_array(%struct.device* %0, i64 %1, i64 %2, i32 %or) #11, !dbg !3701
  ret i8* %call, !dbg !3702
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #6 !dbg !3703 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3707, metadata !DIExpression()), !dbg !3708
  %0 = load i32, i32* %val.addr, align 4, !dbg !3709
  %call = call i32 @__arch_swab32(i32 %0) #14, !dbg !3710
  ret i32 %call, !dbg !3711
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @devm_kfree(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_temp2resist_simple(%struct.power_supply_resistance_temp_table* %table, i32 %table_len, i32 %temp) #0 !dbg !3712 {
entry:
  %table.addr = alloca %struct.power_supply_resistance_temp_table*, align 8
  %table_len.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %resist = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.power_supply_resistance_temp_table* %table, %struct.power_supply_resistance_temp_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_resistance_temp_table** %table.addr, metadata !3715, metadata !DIExpression()), !dbg !3716
  store i32 %table_len, i32* %table_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_len.addr, metadata !3717, metadata !DIExpression()), !dbg !3718
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3721, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.declare(metadata i32* %resist, metadata !3723, metadata !DIExpression()), !dbg !3724
  store i32 0, i32* %i, align 4, !dbg !3725
  br label %for.cond, !dbg !3727

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3728
  %1 = load i32, i32* %table_len.addr, align 4, !dbg !3730
  %cmp = icmp slt i32 %0, %1, !dbg !3731
  br i1 %cmp, label %for.body, label %for.end, !dbg !3732

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %temp.addr, align 4, !dbg !3733
  %3 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3735
  %4 = load i32, i32* %i, align 4, !dbg !3736
  %idxprom = sext i32 %4 to i64, !dbg !3735
  %arrayidx = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %3, i64 %idxprom, !dbg !3735
  %temp1 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx, i32 0, i32 0, !dbg !3737
  %5 = load i32, i32* %temp1, align 4, !dbg !3737
  %cmp2 = icmp sgt i32 %2, %5, !dbg !3738
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3739

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3740

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3737

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !3741
  %inc = add i32 %6, 1, !dbg !3741
  store i32 %inc, i32* %i, align 4, !dbg !3741
  br label %for.cond, !dbg !3742, !llvm.loop !3743

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !3745
  %cmp3 = icmp sgt i32 %7, 0, !dbg !3747
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !3748

land.lhs.true:                                    ; preds = %for.end
  %8 = load i32, i32* %i, align 4, !dbg !3749
  %9 = load i32, i32* %table_len.addr, align 4, !dbg !3750
  %cmp4 = icmp slt i32 %8, %9, !dbg !3751
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !3752

if.then5:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3753, metadata !DIExpression()), !dbg !3755
  %10 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3756
  %11 = load i32, i32* %i, align 4, !dbg !3757
  %sub = sub i32 %11, 1, !dbg !3758
  %idxprom6 = sext i32 %sub to i64, !dbg !3756
  %arrayidx7 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %10, i64 %idxprom6, !dbg !3756
  %resistance = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx7, i32 0, i32 1, !dbg !3759
  %12 = load i32, i32* %resistance, align 4, !dbg !3759
  %13 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3760
  %14 = load i32, i32* %i, align 4, !dbg !3761
  %idxprom8 = sext i32 %14 to i64, !dbg !3760
  %arrayidx9 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %13, i64 %idxprom8, !dbg !3760
  %resistance10 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx9, i32 0, i32 1, !dbg !3762
  %15 = load i32, i32* %resistance10, align 4, !dbg !3762
  %sub11 = sub i32 %12, %15, !dbg !3763
  %16 = load i32, i32* %temp.addr, align 4, !dbg !3764
  %17 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3765
  %18 = load i32, i32* %i, align 4, !dbg !3766
  %idxprom12 = sext i32 %18 to i64, !dbg !3765
  %arrayidx13 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %17, i64 %idxprom12, !dbg !3765
  %temp14 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx13, i32 0, i32 0, !dbg !3767
  %19 = load i32, i32* %temp14, align 4, !dbg !3767
  %sub15 = sub i32 %16, %19, !dbg !3768
  %mul = mul i32 %sub11, %sub15, !dbg !3769
  store i32 %mul, i32* %tmp, align 4, !dbg !3770
  %20 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3771
  %21 = load i32, i32* %i, align 4, !dbg !3772
  %sub16 = sub i32 %21, 1, !dbg !3773
  %idxprom17 = sext i32 %sub16 to i64, !dbg !3771
  %arrayidx18 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %20, i64 %idxprom17, !dbg !3771
  %temp19 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx18, i32 0, i32 0, !dbg !3774
  %22 = load i32, i32* %temp19, align 4, !dbg !3774
  %23 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3775
  %24 = load i32, i32* %i, align 4, !dbg !3776
  %idxprom20 = sext i32 %24 to i64, !dbg !3775
  %arrayidx21 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %23, i64 %idxprom20, !dbg !3775
  %temp22 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx21, i32 0, i32 0, !dbg !3777
  %25 = load i32, i32* %temp22, align 4, !dbg !3777
  %sub23 = sub i32 %22, %25, !dbg !3778
  %26 = load i32, i32* %tmp, align 4, !dbg !3779
  %div = sdiv i32 %26, %sub23, !dbg !3779
  store i32 %div, i32* %tmp, align 4, !dbg !3779
  %27 = load i32, i32* %tmp, align 4, !dbg !3780
  %28 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3781
  %29 = load i32, i32* %i, align 4, !dbg !3782
  %idxprom24 = sext i32 %29 to i64, !dbg !3781
  %arrayidx25 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %28, i64 %idxprom24, !dbg !3781
  %resistance26 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx25, i32 0, i32 1, !dbg !3783
  %30 = load i32, i32* %resistance26, align 4, !dbg !3783
  %add = add i32 %27, %30, !dbg !3784
  store i32 %add, i32* %resist, align 4, !dbg !3785
  br label %if.end37, !dbg !3786

if.else:                                          ; preds = %land.lhs.true, %for.end
  %31 = load i32, i32* %i, align 4, !dbg !3787
  %cmp27 = icmp eq i32 %31, 0, !dbg !3789
  br i1 %cmp27, label %if.then28, label %if.else31, !dbg !3790

if.then28:                                        ; preds = %if.else
  %32 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3791
  %arrayidx29 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %32, i64 0, !dbg !3791
  %resistance30 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx29, i32 0, i32 1, !dbg !3793
  %33 = load i32, i32* %resistance30, align 4, !dbg !3793
  store i32 %33, i32* %resist, align 4, !dbg !3794
  br label %if.end36, !dbg !3795

if.else31:                                        ; preds = %if.else
  %34 = load %struct.power_supply_resistance_temp_table*, %struct.power_supply_resistance_temp_table** %table.addr, align 8, !dbg !3796
  %35 = load i32, i32* %table_len.addr, align 4, !dbg !3798
  %sub32 = sub i32 %35, 1, !dbg !3799
  %idxprom33 = sext i32 %sub32 to i64, !dbg !3796
  %arrayidx34 = getelementptr %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %34, i64 %idxprom33, !dbg !3796
  %resistance35 = getelementptr inbounds %struct.power_supply_resistance_temp_table, %struct.power_supply_resistance_temp_table* %arrayidx34, i32 0, i32 1, !dbg !3800
  %36 = load i32, i32* %resistance35, align 4, !dbg !3800
  store i32 %36, i32* %resist, align 4, !dbg !3801
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then28
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then5
  %37 = load i32, i32* %resist, align 4, !dbg !3802
  ret i32 %37, !dbg !3803
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_ocv2cap_simple(%struct.power_supply_battery_ocv_table* %table, i32 %table_len, i32 %ocv) #0 !dbg !3804 {
entry:
  %table.addr = alloca %struct.power_supply_battery_ocv_table*, align 8
  %table_len.addr = alloca i32, align 4
  %ocv.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cap = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.power_supply_battery_ocv_table* %table, %struct.power_supply_battery_ocv_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_battery_ocv_table** %table.addr, metadata !3807, metadata !DIExpression()), !dbg !3808
  store i32 %table_len, i32* %table_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_len.addr, metadata !3809, metadata !DIExpression()), !dbg !3810
  store i32 %ocv, i32* %ocv.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ocv.addr, metadata !3811, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3813, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.declare(metadata i32* %cap, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !3817, metadata !DIExpression()), !dbg !3818
  store i32 0, i32* %i, align 4, !dbg !3819
  br label %for.cond, !dbg !3821

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3822
  %1 = load i32, i32* %table_len.addr, align 4, !dbg !3824
  %cmp = icmp slt i32 %0, %1, !dbg !3825
  br i1 %cmp, label %for.body, label %for.end, !dbg !3826

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ocv.addr, align 4, !dbg !3827
  %3 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3829
  %4 = load i32, i32* %i, align 4, !dbg !3830
  %idxprom = sext i32 %4 to i64, !dbg !3829
  %arrayidx = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %3, i64 %idxprom, !dbg !3829
  %ocv1 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx, i32 0, i32 0, !dbg !3831
  %5 = load i32, i32* %ocv1, align 4, !dbg !3831
  %cmp2 = icmp sgt i32 %2, %5, !dbg !3832
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3833

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3834

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3831

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !3835
  %inc = add i32 %6, 1, !dbg !3835
  store i32 %inc, i32* %i, align 4, !dbg !3835
  br label %for.cond, !dbg !3836, !llvm.loop !3837

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !3839
  %cmp3 = icmp sgt i32 %7, 0, !dbg !3841
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !3842

land.lhs.true:                                    ; preds = %for.end
  %8 = load i32, i32* %i, align 4, !dbg !3843
  %9 = load i32, i32* %table_len.addr, align 4, !dbg !3844
  %cmp4 = icmp slt i32 %8, %9, !dbg !3845
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !3846

if.then5:                                         ; preds = %land.lhs.true
  %10 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3847
  %11 = load i32, i32* %i, align 4, !dbg !3849
  %sub = sub i32 %11, 1, !dbg !3850
  %idxprom6 = sext i32 %sub to i64, !dbg !3847
  %arrayidx7 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %10, i64 %idxprom6, !dbg !3847
  %capacity = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx7, i32 0, i32 1, !dbg !3851
  %12 = load i32, i32* %capacity, align 4, !dbg !3851
  %13 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3852
  %14 = load i32, i32* %i, align 4, !dbg !3853
  %idxprom8 = sext i32 %14 to i64, !dbg !3852
  %arrayidx9 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %13, i64 %idxprom8, !dbg !3852
  %capacity10 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx9, i32 0, i32 1, !dbg !3854
  %15 = load i32, i32* %capacity10, align 4, !dbg !3854
  %sub11 = sub i32 %12, %15, !dbg !3855
  %16 = load i32, i32* %ocv.addr, align 4, !dbg !3856
  %17 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3857
  %18 = load i32, i32* %i, align 4, !dbg !3858
  %idxprom12 = sext i32 %18 to i64, !dbg !3857
  %arrayidx13 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %17, i64 %idxprom12, !dbg !3857
  %ocv14 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx13, i32 0, i32 0, !dbg !3859
  %19 = load i32, i32* %ocv14, align 4, !dbg !3859
  %sub15 = sub i32 %16, %19, !dbg !3860
  %mul = mul i32 %sub11, %sub15, !dbg !3861
  store i32 %mul, i32* %tmp, align 4, !dbg !3862
  %20 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3863
  %21 = load i32, i32* %i, align 4, !dbg !3864
  %sub16 = sub i32 %21, 1, !dbg !3865
  %idxprom17 = sext i32 %sub16 to i64, !dbg !3863
  %arrayidx18 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %20, i64 %idxprom17, !dbg !3863
  %ocv19 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx18, i32 0, i32 0, !dbg !3866
  %22 = load i32, i32* %ocv19, align 4, !dbg !3866
  %23 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3867
  %24 = load i32, i32* %i, align 4, !dbg !3868
  %idxprom20 = sext i32 %24 to i64, !dbg !3867
  %arrayidx21 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %23, i64 %idxprom20, !dbg !3867
  %ocv22 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx21, i32 0, i32 0, !dbg !3869
  %25 = load i32, i32* %ocv22, align 4, !dbg !3869
  %sub23 = sub i32 %22, %25, !dbg !3870
  %26 = load i32, i32* %tmp, align 4, !dbg !3871
  %div = sdiv i32 %26, %sub23, !dbg !3871
  store i32 %div, i32* %tmp, align 4, !dbg !3871
  %27 = load i32, i32* %tmp, align 4, !dbg !3872
  %28 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3873
  %29 = load i32, i32* %i, align 4, !dbg !3874
  %idxprom24 = sext i32 %29 to i64, !dbg !3873
  %arrayidx25 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %28, i64 %idxprom24, !dbg !3873
  %capacity26 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx25, i32 0, i32 1, !dbg !3875
  %30 = load i32, i32* %capacity26, align 4, !dbg !3875
  %add = add i32 %27, %30, !dbg !3876
  store i32 %add, i32* %cap, align 4, !dbg !3877
  br label %if.end37, !dbg !3878

if.else:                                          ; preds = %land.lhs.true, %for.end
  %31 = load i32, i32* %i, align 4, !dbg !3879
  %cmp27 = icmp eq i32 %31, 0, !dbg !3881
  br i1 %cmp27, label %if.then28, label %if.else31, !dbg !3882

if.then28:                                        ; preds = %if.else
  %32 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3883
  %arrayidx29 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %32, i64 0, !dbg !3883
  %capacity30 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx29, i32 0, i32 1, !dbg !3885
  %33 = load i32, i32* %capacity30, align 4, !dbg !3885
  store i32 %33, i32* %cap, align 4, !dbg !3886
  br label %if.end36, !dbg !3887

if.else31:                                        ; preds = %if.else
  %34 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table.addr, align 8, !dbg !3888
  %35 = load i32, i32* %table_len.addr, align 4, !dbg !3890
  %sub32 = sub i32 %35, 1, !dbg !3891
  %idxprom33 = sext i32 %sub32 to i64, !dbg !3888
  %arrayidx34 = getelementptr %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %34, i64 %idxprom33, !dbg !3888
  %capacity35 = getelementptr inbounds %struct.power_supply_battery_ocv_table, %struct.power_supply_battery_ocv_table* %arrayidx34, i32 0, i32 1, !dbg !3892
  %36 = load i32, i32* %capacity35, align 4, !dbg !3892
  store i32 %36, i32* %cap, align 4, !dbg !3893
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then28
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then5
  %37 = load i32, i32* %cap, align 4, !dbg !3894
  ret i32 %37, !dbg !3895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info* %info, i32 %temp, i32* %table_len) #0 !dbg !3896 {
entry:
  %retval = alloca %struct.power_supply_battery_ocv_table*, align 8
  %info.addr = alloca %struct.power_supply_battery_info*, align 8
  %temp.addr = alloca i32, align 4
  %table_len.addr = alloca i32*, align 8
  %best_temp_diff = alloca i32, align 4
  %temp_diff = alloca i32, align 4
  %i = alloca i8, align 1
  %best_index = alloca i8, align 1
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.power_supply_battery_info* %info, %struct.power_supply_battery_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_battery_info** %info.addr, metadata !3899, metadata !DIExpression()), !dbg !3900
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3901, metadata !DIExpression()), !dbg !3902
  store i32* %table_len, i32** %table_len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_len.addr, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.declare(metadata i32* %best_temp_diff, metadata !3905, metadata !DIExpression()), !dbg !3906
  store i32 2147483647, i32* %best_temp_diff, align 4, !dbg !3906
  call void @llvm.dbg.declare(metadata i32* %temp_diff, metadata !3907, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.declare(metadata i8* %i, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.declare(metadata i8* %best_index, metadata !3911, metadata !DIExpression()), !dbg !3912
  store i8 0, i8* %best_index, align 1, !dbg !3912
  %0 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3913
  %ocv_table = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %0, i32 0, i32 20, !dbg !3915
  %arrayidx = getelementptr [20 x %struct.power_supply_battery_ocv_table*], [20 x %struct.power_supply_battery_ocv_table*]* %ocv_table, i64 0, i64 0, !dbg !3913
  %1 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %arrayidx, align 8, !dbg !3913
  %tobool = icmp ne %struct.power_supply_battery_ocv_table* %1, null, !dbg !3913
  br i1 %tobool, label %if.end, label %if.then, !dbg !3916

if.then:                                          ; preds = %entry
  store %struct.power_supply_battery_ocv_table* null, %struct.power_supply_battery_ocv_table** %retval, align 8, !dbg !3917
  br label %return, !dbg !3917

if.end:                                           ; preds = %entry
  store i8 0, i8* %i, align 1, !dbg !3918
  br label %for.cond, !dbg !3920

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8, i8* %i, align 1, !dbg !3921
  %conv = zext i8 %2 to i32, !dbg !3921
  %cmp = icmp slt i32 %conv, 20, !dbg !3923
  br i1 %cmp, label %for.body, label %for.end, !dbg !3924

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !3925, metadata !DIExpression()), !dbg !3928
  %3 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3928
  %ocv_temp = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %3, i32 0, i32 13, !dbg !3928
  %4 = load i8, i8* %i, align 1, !dbg !3928
  %idxprom = zext i8 %4 to i64, !dbg !3928
  %arrayidx2 = getelementptr [20 x i32], [20 x i32]* %ocv_temp, i64 0, i64 %idxprom, !dbg !3928
  %5 = load i32, i32* %arrayidx2, align 4, !dbg !3928
  %6 = load i32, i32* %temp.addr, align 4, !dbg !3928
  %sub = sub i32 %5, %6, !dbg !3928
  store i32 %sub, i32* %__x, align 4, !dbg !3928
  %7 = load i32, i32* %__x, align 4, !dbg !3928
  %cmp3 = icmp slt i32 %7, 0, !dbg !3928
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !3928

cond.true:                                        ; preds = %for.body
  %8 = load i32, i32* %__x, align 4, !dbg !3928
  %sub5 = sub i32 0, %8, !dbg !3928
  br label %cond.end, !dbg !3928

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %__x, align 4, !dbg !3928
  br label %cond.end, !dbg !3928

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %9, %cond.false ], !dbg !3928
  store i32 %cond, i32* %tmp, align 4, !dbg !3928
  %10 = load i32, i32* %tmp, align 4, !dbg !3928
  store i32 %10, i32* %temp_diff, align 4, !dbg !3929
  %11 = load i32, i32* %temp_diff, align 4, !dbg !3930
  %12 = load i32, i32* %best_temp_diff, align 4, !dbg !3932
  %cmp6 = icmp slt i32 %11, %12, !dbg !3933
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !3934

if.then8:                                         ; preds = %cond.end
  %13 = load i32, i32* %temp_diff, align 4, !dbg !3935
  store i32 %13, i32* %best_temp_diff, align 4, !dbg !3937
  %14 = load i8, i8* %i, align 1, !dbg !3938
  store i8 %14, i8* %best_index, align 1, !dbg !3939
  br label %if.end9, !dbg !3940

if.end9:                                          ; preds = %if.then8, %cond.end
  br label %for.inc, !dbg !3941

for.inc:                                          ; preds = %if.end9
  %15 = load i8, i8* %i, align 1, !dbg !3942
  %inc = add i8 %15, 1, !dbg !3942
  store i8 %inc, i8* %i, align 1, !dbg !3942
  br label %for.cond, !dbg !3943, !llvm.loop !3944

for.end:                                          ; preds = %for.cond
  %16 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3946
  %ocv_table_size = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %16, i32 0, i32 21, !dbg !3947
  %17 = load i8, i8* %best_index, align 1, !dbg !3948
  %idxprom10 = zext i8 %17 to i64, !dbg !3946
  %arrayidx11 = getelementptr [20 x i32], [20 x i32]* %ocv_table_size, i64 0, i64 %idxprom10, !dbg !3946
  %18 = load i32, i32* %arrayidx11, align 4, !dbg !3946
  %19 = load i32*, i32** %table_len.addr, align 8, !dbg !3949
  store i32 %18, i32* %19, align 4, !dbg !3950
  %20 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3951
  %ocv_table12 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %20, i32 0, i32 20, !dbg !3952
  %21 = load i8, i8* %best_index, align 1, !dbg !3953
  %idxprom13 = zext i8 %21 to i64, !dbg !3951
  %arrayidx14 = getelementptr [20 x %struct.power_supply_battery_ocv_table*], [20 x %struct.power_supply_battery_ocv_table*]* %ocv_table12, i64 0, i64 %idxprom13, !dbg !3951
  %22 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %arrayidx14, align 8, !dbg !3951
  store %struct.power_supply_battery_ocv_table* %22, %struct.power_supply_battery_ocv_table** %retval, align 8, !dbg !3954
  br label %return, !dbg !3954

return:                                           ; preds = %for.end, %if.then
  %23 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %retval, align 8, !dbg !3955
  ret %struct.power_supply_battery_ocv_table* %23, !dbg !3955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_batinfo_ocv2cap(%struct.power_supply_battery_info* %info, i32 %ocv, i32 %temp) #0 !dbg !3956 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.power_supply_battery_info*, align 8
  %ocv.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %table = alloca %struct.power_supply_battery_ocv_table*, align 8
  %table_len = alloca i32, align 4
  store %struct.power_supply_battery_info* %info, %struct.power_supply_battery_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_battery_info** %info.addr, metadata !3959, metadata !DIExpression()), !dbg !3960
  store i32 %ocv, i32* %ocv.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ocv.addr, metadata !3961, metadata !DIExpression()), !dbg !3962
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.declare(metadata %struct.power_supply_battery_ocv_table** %table, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.declare(metadata i32* %table_len, metadata !3967, metadata !DIExpression()), !dbg !3968
  %0 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %info.addr, align 8, !dbg !3969
  %1 = load i32, i32* %temp.addr, align 4, !dbg !3970
  %call = call %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info* %0, i32 %1, i32* %table_len) #11, !dbg !3971
  store %struct.power_supply_battery_ocv_table* %call, %struct.power_supply_battery_ocv_table** %table, align 8, !dbg !3972
  %2 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table, align 8, !dbg !3973
  %tobool = icmp ne %struct.power_supply_battery_ocv_table* %2, null, !dbg !3973
  br i1 %tobool, label %if.end, label %if.then, !dbg !3975

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3976
  br label %return, !dbg !3976

if.end:                                           ; preds = %entry
  %3 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %table, align 8, !dbg !3977
  %4 = load i32, i32* %table_len, align 4, !dbg !3978
  %5 = load i32, i32* %ocv.addr, align 4, !dbg !3979
  %call1 = call i32 @power_supply_ocv2cap_simple(%struct.power_supply_battery_ocv_table* %3, i32 %4, i32 %5) #11, !dbg !3980
  store i32 %call1, i32* %retval, align 4, !dbg !3981
  br label %return, !dbg !3981

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3982
  ret i32 %6, !dbg !3982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_get_property(%struct.power_supply* %psy, i32 %psp, %union.power_supply_propval* %val) #0 !dbg !3983 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2804, metadata !DIExpression()), !dbg !3984
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2817, metadata !DIExpression()), !dbg !3988
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2827, metadata !DIExpression()), !dbg !3990
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2829, metadata !DIExpression()), !dbg !3991
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %psp.addr = alloca i32, align 4
  %val.addr = alloca %union.power_supply_propval*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !3992, metadata !DIExpression()), !dbg !3993
  store i32 %psp, i32* %psp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %psp.addr, metadata !3994, metadata !DIExpression()), !dbg !3995
  store %union.power_supply_propval* %val, %union.power_supply_propval** %val.addr, align 8
  call void @llvm.dbg.declare(metadata %union.power_supply_propval** %val.addr, metadata !3996, metadata !DIExpression()), !dbg !3997
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !3998
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 14, !dbg !3999
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4000
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !4000
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4001
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !4002
  %conv.i.i = trunc i64 %4 to i32, !dbg !4002
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !4003
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4004
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4004
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4004
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4005
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4006
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !4006
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !4006
  %cmp = icmp sle i32 %9, 0, !dbg !4007
  br i1 %cmp, label %if.then, label %if.end2, !dbg !4008

if.then:                                          ; preds = %entry
  %10 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4009
  %initialized = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 12, !dbg !4012
  %11 = load i8, i8* %initialized, align 1, !dbg !4012
  %tobool = trunc i8 %11 to i1, !dbg !4012
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4013

if.then1:                                         ; preds = %if.then
  store i32 -11, i32* %retval, align 4, !dbg !4014
  br label %return, !dbg !4014

if.end:                                           ; preds = %if.then
  store i32 -19, i32* %retval, align 4, !dbg !4015
  br label %return, !dbg !4015

if.end2:                                          ; preds = %entry
  %12 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4016
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 0, !dbg !4017
  %13 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !4017
  %get_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %13, i32 0, i32 6, !dbg !4018
  %14 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %get_property, align 8, !dbg !4018
  %15 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4019
  %16 = load i32, i32* %psp.addr, align 4, !dbg !4020
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %val.addr, align 8, !dbg !4021
  %call3 = call i32 %14(%struct.power_supply* %15, i32 %16, %union.power_supply_propval* %17) #11, !dbg !4016
  store i32 %call3, i32* %retval, align 4, !dbg !4022
  br label %return, !dbg !4022

return:                                           ; preds = %if.end2, %if.end, %if.then1
  %18 = load i32, i32* %retval, align 4, !dbg !4023
  ret i32 %18, !dbg !4023
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_set_property(%struct.power_supply* %psy, i32 %psp, %union.power_supply_propval* %val) #0 !dbg !4024 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2804, metadata !DIExpression()), !dbg !4025
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2817, metadata !DIExpression()), !dbg !4029
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2827, metadata !DIExpression()), !dbg !4031
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2829, metadata !DIExpression()), !dbg !4032
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %psp.addr = alloca i32, align 4
  %val.addr = alloca %union.power_supply_propval*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i32 %psp, i32* %psp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %psp.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  store %union.power_supply_propval* %val, %union.power_supply_propval** %val.addr, align 8
  call void @llvm.dbg.declare(metadata %union.power_supply_propval** %val.addr, metadata !4037, metadata !DIExpression()), !dbg !4038
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4039
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 14, !dbg !4040
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4041
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !4041
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4042
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !4043
  %conv.i.i = trunc i64 %4 to i32, !dbg !4043
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !4044
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4045
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4045
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4045
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4046
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4047
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !4047
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !4047
  %cmp = icmp sle i32 %9, 0, !dbg !4048
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4049

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4050
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0, !dbg !4051
  %11 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !4051
  %set_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %11, i32 0, i32 7, !dbg !4052
  %12 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %set_property, align 8, !dbg !4052
  %tobool = icmp ne i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* %12, null, !dbg !4050
  br i1 %tobool, label %if.end, label %if.then, !dbg !4053

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !4054
  br label %return, !dbg !4054

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4055
  %desc1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 0, !dbg !4056
  %14 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc1, align 8, !dbg !4056
  %set_property2 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %14, i32 0, i32 7, !dbg !4057
  %15 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %set_property2, align 8, !dbg !4057
  %16 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4058
  %17 = load i32, i32* %psp.addr, align 4, !dbg !4059
  %18 = load %union.power_supply_propval*, %union.power_supply_propval** %val.addr, align 8, !dbg !4060
  %call3 = call i32 %15(%struct.power_supply* %16, i32 %17, %union.power_supply_propval* %18) #11, !dbg !4055
  store i32 %call3, i32* %retval, align 4, !dbg !4061
  br label %return, !dbg !4061

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !4062
  ret i32 %19, !dbg !4062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_property_is_writeable(%struct.power_supply* %psy, i32 %psp) #0 !dbg !4063 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2804, metadata !DIExpression()), !dbg !4064
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2817, metadata !DIExpression()), !dbg !4068
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2827, metadata !DIExpression()), !dbg !4070
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2829, metadata !DIExpression()), !dbg !4071
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %psp.addr = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4072, metadata !DIExpression()), !dbg !4073
  store i32 %psp, i32* %psp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %psp.addr, metadata !4074, metadata !DIExpression()), !dbg !4075
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4076
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 14, !dbg !4077
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4078
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !4078
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4079
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !4080
  %conv.i.i = trunc i64 %4 to i32, !dbg !4080
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !4081
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4082
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4082
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4082
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4083
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4084
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !4084
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !4084
  %cmp = icmp sle i32 %9, 0, !dbg !4085
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4086

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4087
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0, !dbg !4088
  %11 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !4088
  %property_is_writeable = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %11, i32 0, i32 8, !dbg !4089
  %12 = load i32 (%struct.power_supply*, i32)*, i32 (%struct.power_supply*, i32)** %property_is_writeable, align 8, !dbg !4089
  %tobool = icmp ne i32 (%struct.power_supply*, i32)* %12, null, !dbg !4087
  br i1 %tobool, label %if.end, label %if.then, !dbg !4090

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !4091
  br label %return, !dbg !4091

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4092
  %desc1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 0, !dbg !4093
  %14 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc1, align 8, !dbg !4093
  %property_is_writeable2 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %14, i32 0, i32 8, !dbg !4094
  %15 = load i32 (%struct.power_supply*, i32)*, i32 (%struct.power_supply*, i32)** %property_is_writeable2, align 8, !dbg !4094
  %16 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4095
  %17 = load i32, i32* %psp.addr, align 4, !dbg !4096
  %call3 = call i32 %15(%struct.power_supply* %16, i32 %17) #11, !dbg !4092
  store i32 %call3, i32* %retval, align 4, !dbg !4097
  br label %return, !dbg !4097

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4098
  ret i32 %18, !dbg !4098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @power_supply_external_power_changed(%struct.power_supply* %psy) #0 !dbg !4099 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2804, metadata !DIExpression()), !dbg !4100
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2817, metadata !DIExpression()), !dbg !4104
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2827, metadata !DIExpression()), !dbg !4106
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2829, metadata !DIExpression()), !dbg !4107
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4108, metadata !DIExpression()), !dbg !4109
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4110
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 14, !dbg !4111
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4112
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !4112
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4113
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !4114
  %conv.i.i = trunc i64 %4 to i32, !dbg !4114
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !4115
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4116
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4116
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4116
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4117
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4118
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !4118
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !4118
  %cmp = icmp sle i32 %9, 0, !dbg !4119
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4120

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4121
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0, !dbg !4122
  %11 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !4122
  %external_power_changed = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %11, i32 0, i32 9, !dbg !4123
  %external_power_changed1 = bitcast {}** %external_power_changed to void (%struct.power_supply*)**, !dbg !4123
  %12 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %external_power_changed1, align 8, !dbg !4123
  %tobool = icmp ne void (%struct.power_supply*)* %12, null, !dbg !4121
  br i1 %tobool, label %if.end, label %if.then, !dbg !4124

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !4125

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4126
  %desc2 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 0, !dbg !4127
  %14 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc2, align 8, !dbg !4127
  %external_power_changed3 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %14, i32 0, i32 9, !dbg !4128
  %external_power_changed4 = bitcast {}** %external_power_changed3 to void (%struct.power_supply*)**, !dbg !4128
  %15 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %external_power_changed4, align 8, !dbg !4128
  %16 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4129
  call void %15(%struct.power_supply* %16) #11, !dbg !4126
  br label %return, !dbg !4130

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4130
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_powers(%struct.power_supply* %psy, %struct.device* %dev) #0 !dbg !4131 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4134, metadata !DIExpression()), !dbg !4135
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4136, metadata !DIExpression()), !dbg !4137
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4138
  %dev1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 7, !dbg !4139
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 0, !dbg !4140
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4141
  %kobj2 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 0, !dbg !4142
  %call = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !4143
  ret i32 %call, !dbg !4144
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @power_supply_reg_notifier(%struct.notifier_block* %nb) #0 !dbg !4145 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !4148, metadata !DIExpression()), !dbg !4149
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !4150
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* @power_supply_notifier, %struct.notifier_block* %0) #11, !dbg !4151
  ret i32 %call, !dbg !4152
}

; Function Attrs: noredzone
declare dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @power_supply_unreg_notifier(%struct.notifier_block* %nb) #0 !dbg !4153 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !4158
  %call = call i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* @power_supply_notifier, %struct.notifier_block* %0) #11, !dbg !4159
  ret void, !dbg !4160
}

; Function Attrs: noredzone
declare dso_local i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.power_supply* @power_supply_register(%struct.device* %parent, %struct.power_supply_desc* %desc, %struct.power_supply_config* %cfg) #0 !dbg !4161 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %desc.addr = alloca %struct.power_supply_desc*, align 8
  %cfg.addr = alloca %struct.power_supply_config*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4174, metadata !DIExpression()), !dbg !4175
  store %struct.power_supply_desc* %desc, %struct.power_supply_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_desc** %desc.addr, metadata !4176, metadata !DIExpression()), !dbg !4177
  store %struct.power_supply_config* %cfg, %struct.power_supply_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_config** %cfg.addr, metadata !4178, metadata !DIExpression()), !dbg !4179
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4180
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4181
  %2 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4182
  %call = call %struct.power_supply* @__power_supply_register(%struct.device* %0, %struct.power_supply_desc* %1, %struct.power_supply_config* %2, i1 zeroext true) #11, !dbg !4183
  ret %struct.power_supply* %call, !dbg !4184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.power_supply* @__power_supply_register(%struct.device* %parent, %struct.power_supply_desc* %desc, %struct.power_supply_config* %cfg, i1 zeroext %ws) #0 !dbg !4185 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4188, metadata !DIExpression()), !dbg !4194
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2864, metadata !DIExpression()), !dbg !4196
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2875, metadata !DIExpression()), !dbg !4199
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2879, metadata !DIExpression()), !dbg !4201
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2881, metadata !DIExpression()), !dbg !4202
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2534, metadata !DIExpression()), !dbg !4203
  %retval = alloca %struct.power_supply*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %desc.addr = alloca %struct.power_supply_desc*, align 8
  %cfg.addr = alloca %struct.power_supply_config*, align 8
  %ws.addr = alloca i8, align 1
  %dev = alloca %struct.device*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp38 = alloca %struct.device_node*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %.compoundliteral62 = alloca %struct.atomic64_t, align 8
  %.compoundliteral80 = alloca %struct.spinlock, align 1
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4206, metadata !DIExpression()), !dbg !4207
  store %struct.power_supply_desc* %desc, %struct.power_supply_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_desc** %desc.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  store %struct.power_supply_config* %cfg, %struct.power_supply_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_config** %cfg.addr, metadata !4210, metadata !DIExpression()), !dbg !4211
  %frombool = zext i1 %ws to i8
  store i8 %frombool, i8* %ws.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ws.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !4216, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4218, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4220, metadata !DIExpression()), !dbg !4221
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4222
  %tobool = icmp ne %struct.device* %0, null, !dbg !4222
  br i1 %tobool, label %if.end, label %if.then, !dbg !4224

if.then:                                          ; preds = %entry
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4225
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %1, i32 0, i32 0, !dbg !4225
  %2 = load i8*, i8** %name, align 8, !dbg !4225
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.__power_supply_register, i64 0, i64 0), i8* %2) #13, !dbg !4225
  br label %if.end, !dbg !4225

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4226
  %tobool1 = icmp ne %struct.power_supply_desc* %3, null, !dbg !4226
  br i1 %tobool1, label %lor.lhs.false, label %if.then8, !dbg !4228

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4229
  %name2 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %4, i32 0, i32 0, !dbg !4230
  %5 = load i8*, i8** %name2, align 8, !dbg !4230
  %tobool3 = icmp ne i8* %5, null, !dbg !4229
  br i1 %tobool3, label %lor.lhs.false4, label %if.then8, !dbg !4231

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4232
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %6, i32 0, i32 4, !dbg !4233
  %7 = load i32*, i32** %properties, align 8, !dbg !4233
  %tobool5 = icmp ne i32* %7, null, !dbg !4232
  br i1 %tobool5, label %lor.lhs.false6, label %if.then8, !dbg !4234

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %8 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4235
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %8, i32 0, i32 5, !dbg !4236
  %9 = load i64, i64* %num_properties, align 8, !dbg !4236
  %tobool7 = icmp ne i64 %9, 0, !dbg !4235
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !4237

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false, %if.end
  %call9 = call i8* @ERR_PTR(i64 -22) #11, !dbg !4238
  %10 = bitcast i8* %call9 to %struct.power_supply*, !dbg !4238
  store %struct.power_supply* %10, %struct.power_supply** %retval, align 8, !dbg !4239
  br label %return, !dbg !4239

if.end10:                                         ; preds = %lor.lhs.false6
  store i32 0, i32* %i, align 4, !dbg !4240
  br label %for.cond, !dbg !4242

for.cond:                                         ; preds = %for.inc, %if.end10
  %11 = load i32, i32* %i, align 4, !dbg !4243
  %conv = sext i32 %11 to i64, !dbg !4243
  %12 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4245
  %num_properties11 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %12, i32 0, i32 5, !dbg !4246
  %13 = load i64, i64* %num_properties11, align 8, !dbg !4246
  %cmp = icmp ult i64 %conv, %13, !dbg !4247
  br i1 %cmp, label %for.body, label %for.end, !dbg !4248

for.body:                                         ; preds = %for.cond
  %14 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4249
  %properties13 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %14, i32 0, i32 4, !dbg !4252
  %15 = load i32*, i32** %properties13, align 8, !dbg !4252
  %16 = load i32, i32* %i, align 4, !dbg !4253
  %idxprom = sext i32 %16 to i64, !dbg !4249
  %arrayidx = getelementptr i32, i32* %15, i64 %idxprom, !dbg !4249
  %17 = load i32, i32* %arrayidx, align 4, !dbg !4249
  %cmp14 = icmp eq i32 %17, 64, !dbg !4254
  br i1 %cmp14, label %land.lhs.true, label %if.end21, !dbg !4255

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4256
  %usb_types = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %18, i32 0, i32 2, !dbg !4257
  %19 = load i32*, i32** %usb_types, align 8, !dbg !4257
  %tobool16 = icmp ne i32* %19, null, !dbg !4256
  br i1 %tobool16, label %lor.lhs.false17, label %if.then19, !dbg !4258

lor.lhs.false17:                                  ; preds = %land.lhs.true
  %20 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4259
  %num_usb_types = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %20, i32 0, i32 3, !dbg !4260
  %21 = load i64, i64* %num_usb_types, align 8, !dbg !4260
  %tobool18 = icmp ne i64 %21, 0, !dbg !4259
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !4261

if.then19:                                        ; preds = %lor.lhs.false17, %land.lhs.true
  %call20 = call i8* @ERR_PTR(i64 -22) #11, !dbg !4262
  %22 = bitcast i8* %call20 to %struct.power_supply*, !dbg !4262
  store %struct.power_supply* %22, %struct.power_supply** %retval, align 8, !dbg !4263
  br label %return, !dbg !4263

if.end21:                                         ; preds = %lor.lhs.false17, %for.body
  br label %for.inc, !dbg !4264

for.inc:                                          ; preds = %if.end21
  %23 = load i32, i32* %i, align 4, !dbg !4265
  %inc = add i32 %23, 1, !dbg !4265
  store i32 %inc, i32* %i, align 4, !dbg !4265
  br label %for.cond, !dbg !4266, !llvm.loop !4267

for.end:                                          ; preds = %for.cond
  %call22 = call i8* @kzalloc(i64 896, i32 3264) #11, !dbg !4269
  %24 = bitcast i8* %call22 to %struct.power_supply*, !dbg !4269
  store %struct.power_supply* %24, %struct.power_supply** %psy, align 8, !dbg !4270
  %25 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4271
  %tobool23 = icmp ne %struct.power_supply* %25, null, !dbg !4271
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !4273

if.then24:                                        ; preds = %for.end
  %call25 = call i8* @ERR_PTR(i64 -12) #11, !dbg !4274
  %26 = bitcast i8* %call25 to %struct.power_supply*, !dbg !4274
  store %struct.power_supply* %26, %struct.power_supply** %retval, align 8, !dbg !4275
  br label %return, !dbg !4275

if.end26:                                         ; preds = %for.end
  %27 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4276
  %dev27 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %27, i32 0, i32 7, !dbg !4277
  store %struct.device* %dev27, %struct.device** %dev, align 8, !dbg !4278
  %28 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4279
  call void @device_initialize(%struct.device* %28) #11, !dbg !4280
  %29 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !4281
  %30 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4282
  %class = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 29, !dbg !4283
  store %struct.class* %29, %struct.class** %class, align 8, !dbg !4284
  %31 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4285
  %type = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 4, !dbg !4286
  store %struct.device_type* @power_supply_dev_type, %struct.device_type** %type, align 8, !dbg !4287
  %32 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4288
  %33 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4289
  %parent28 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 1, !dbg !4290
  store %struct.device* %32, %struct.device** %parent28, align 8, !dbg !4291
  %34 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4292
  %release = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 31, !dbg !4293
  store void (%struct.device*)* @power_supply_dev_release, void (%struct.device*)** %release, align 8, !dbg !4294
  %35 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4295
  %36 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4296
  %37 = bitcast %struct.power_supply* %36 to i8*, !dbg !4296
  call void @dev_set_drvdata(%struct.device* %35, i8* %37) #11, !dbg !4297
  %38 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4298
  %39 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4299
  %desc29 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %39, i32 0, i32 0, !dbg !4300
  store %struct.power_supply_desc* %38, %struct.power_supply_desc** %desc29, align 8, !dbg !4301
  %40 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4302
  %tobool30 = icmp ne %struct.power_supply_config* %40, null, !dbg !4302
  br i1 %tobool30, label %if.then31, label %if.end45, !dbg !4304

if.then31:                                        ; preds = %if.end26
  %41 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4305
  %attr_grp = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %41, i32 0, i32 3, !dbg !4307
  %42 = load %struct.attribute_group**, %struct.attribute_group*** %attr_grp, align 8, !dbg !4307
  %43 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4308
  %groups = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 30, !dbg !4309
  store %struct.attribute_group** %42, %struct.attribute_group*** %groups, align 8, !dbg !4310
  %44 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4311
  %drv_data = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %44, i32 0, i32 2, !dbg !4312
  %45 = load i8*, i8** %drv_data, align 8, !dbg !4312
  %46 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4313
  %drv_data32 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %46, i32 0, i32 6, !dbg !4314
  store i8* %45, i8** %drv_data32, align 8, !dbg !4315
  %47 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4316
  %fwnode = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %47, i32 0, i32 1, !dbg !4317
  %48 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4317
  %tobool33 = icmp ne %struct.fwnode_handle* %48, null, !dbg !4316
  br i1 %tobool33, label %cond.true, label %cond.false39, !dbg !4316

cond.true:                                        ; preds = %if.then31
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !4318, metadata !DIExpression()), !dbg !4321
  %49 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4321
  %fwnode34 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %49, i32 0, i32 1, !dbg !4321
  %50 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode34, align 8, !dbg !4321
  store %struct.fwnode_handle* %50, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !4321
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !4321
  %call35 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %51) #11, !dbg !4321
  br i1 %call35, label %cond.true37, label %cond.false, !dbg !4321

cond.true37:                                      ; preds = %cond.true
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4322, metadata !DIExpression()), !dbg !4324
  %52 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !4324
  %53 = bitcast %struct.fwnode_handle* %52 to i8*, !dbg !4324
  store i8* %53, i8** %__mptr, align 8, !dbg !4324
  br label %do.body, !dbg !4324

do.body:                                          ; preds = %cond.true37
  br label %do.end, !dbg !4325

do.end:                                           ; preds = %do.body
  %54 = load i8*, i8** %__mptr, align 8, !dbg !4324
  %add.ptr = getelementptr i8, i8* %54, i64 -24, !dbg !4324
  %55 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !4324
  store %struct.device_node* %55, %struct.device_node** %tmp38, align 8, !dbg !4325
  %56 = load %struct.device_node*, %struct.device_node** %tmp38, align 8, !dbg !4324
  br label %cond.end, !dbg !4321

cond.false:                                       ; preds = %cond.true
  br label %cond.end, !dbg !4321

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %56, %do.end ], [ null, %cond.false ], !dbg !4321
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !4321
  %57 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !4321
  br label %cond.end40, !dbg !4316

cond.false39:                                     ; preds = %if.then31
  %58 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4327
  %of_node = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %58, i32 0, i32 0, !dbg !4328
  %59 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4328
  br label %cond.end40, !dbg !4316

cond.end40:                                       ; preds = %cond.false39, %cond.end
  %cond41 = phi %struct.device_node* [ %57, %cond.end ], [ %59, %cond.false39 ], !dbg !4316
  %60 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4329
  %of_node42 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %60, i32 0, i32 5, !dbg !4330
  store %struct.device_node* %cond41, %struct.device_node** %of_node42, align 8, !dbg !4331
  %61 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4332
  %supplied_to = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %61, i32 0, i32 4, !dbg !4333
  %62 = load i8**, i8*** %supplied_to, align 8, !dbg !4333
  %63 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4334
  %supplied_to43 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %63, i32 0, i32 1, !dbg !4335
  store i8** %62, i8*** %supplied_to43, align 8, !dbg !4336
  %64 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4337
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %64, i32 0, i32 5, !dbg !4338
  %65 = load i64, i64* %num_supplicants, align 8, !dbg !4338
  %66 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4339
  %num_supplicants44 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %66, i32 0, i32 2, !dbg !4340
  store i64 %65, i64* %num_supplicants44, align 8, !dbg !4341
  br label %if.end45, !dbg !4342

if.end45:                                         ; preds = %cond.end40, %if.end26
  %67 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4343
  %68 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4344
  %name46 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %68, i32 0, i32 0, !dbg !4345
  %69 = load i8*, i8** %name46, align 8, !dbg !4345
  %call47 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %69) #11, !dbg !4346
  store i32 %call47, i32* %rc, align 4, !dbg !4347
  %70 = load i32, i32* %rc, align 4, !dbg !4348
  %tobool48 = icmp ne i32 %70, 0, !dbg !4348
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4350

if.then49:                                        ; preds = %if.end45
  br label %dev_set_name_failed, !dbg !4351

if.end50:                                         ; preds = %if.end45
  br label %do.body51, !dbg !4352

do.body51:                                        ; preds = %if.end50
  %71 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4353
  %changed_work = getelementptr inbounds %struct.power_supply, %struct.power_supply* %71, i32 0, i32 8, !dbg !4353
  call void @__init_work(%struct.work_struct* %changed_work, i32 0) #11, !dbg !4353
  %72 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4353
  %changed_work52 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %72, i32 0, i32 8, !dbg !4353
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %changed_work52, i32 0, i32 0, !dbg !4353
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4353
  store i64 68719476704, i64* %counter, align 8, !dbg !4353
  %73 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4353
  %74 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false), !dbg !4353
  %75 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4353
  %changed_work53 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %75, i32 0, i32 8, !dbg !4353
  %entry54 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %changed_work53, i32 0, i32 1, !dbg !4353
  call void @INIT_LIST_HEAD(%struct.list_head* %entry54) #11, !dbg !4353
  %76 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4353
  %changed_work55 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %76, i32 0, i32 8, !dbg !4353
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %changed_work55, i32 0, i32 2, !dbg !4353
  store void (%struct.work_struct*)* @power_supply_changed_work, void (%struct.work_struct*)** %func, align 8, !dbg !4353
  br label %do.end56, !dbg !4353

do.end56:                                         ; preds = %do.body51
  br label %do.body57, !dbg !4355

do.body57:                                        ; preds = %do.end56
  br label %do.body58, !dbg !4356

do.body58:                                        ; preds = %do.body57
  %77 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4358
  %deferred_register_work = getelementptr inbounds %struct.power_supply, %struct.power_supply* %77, i32 0, i32 9, !dbg !4358
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %deferred_register_work, i32 0, i32 0, !dbg !4358
  call void @__init_work(%struct.work_struct* %work, i32 0) #11, !dbg !4358
  %78 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4358
  %deferred_register_work59 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %78, i32 0, i32 9, !dbg !4358
  %work60 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %deferred_register_work59, i32 0, i32 0, !dbg !4358
  %data61 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work60, i32 0, i32 0, !dbg !4358
  %counter63 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral62, i32 0, i32 0, !dbg !4358
  store i64 68719476704, i64* %counter63, align 8, !dbg !4358
  %79 = bitcast %struct.atomic64_t* %data61 to i8*, !dbg !4358
  %80 = bitcast %struct.atomic64_t* %.compoundliteral62 to i8*, !dbg !4358
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 8, i1 false), !dbg !4358
  %81 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4358
  %deferred_register_work64 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %81, i32 0, i32 9, !dbg !4358
  %work65 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %deferred_register_work64, i32 0, i32 0, !dbg !4358
  %entry66 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work65, i32 0, i32 1, !dbg !4358
  call void @INIT_LIST_HEAD(%struct.list_head* %entry66) #11, !dbg !4358
  %82 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4358
  %deferred_register_work67 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %82, i32 0, i32 9, !dbg !4358
  %work68 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %deferred_register_work67, i32 0, i32 0, !dbg !4358
  %func69 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work68, i32 0, i32 2, !dbg !4358
  store void (%struct.work_struct*)* @power_supply_deferred_register_work, void (%struct.work_struct*)** %func69, align 8, !dbg !4358
  br label %do.end70, !dbg !4358

do.end70:                                         ; preds = %do.body58
  %83 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4356
  %deferred_register_work71 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %83, i32 0, i32 9, !dbg !4356
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %deferred_register_work71, i32 0, i32 1, !dbg !4356
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #11, !dbg !4356
  br label %do.end72, !dbg !4356

do.end72:                                         ; preds = %do.end70
  %84 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4360
  %call73 = call i32 @power_supply_check_supplies(%struct.power_supply* %84) #11, !dbg !4361
  store i32 %call73, i32* %rc, align 4, !dbg !4362
  %85 = load i32, i32* %rc, align 4, !dbg !4363
  %tobool74 = icmp ne i32 %85, 0, !dbg !4363
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !4365

if.then75:                                        ; preds = %do.end72
  %86 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4366
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0)) #13, !dbg !4366
  br label %check_supplies_failed, !dbg !4368

if.end76:                                         ; preds = %do.end72
  br label %do.body77, !dbg !4369

do.body77:                                        ; preds = %if.end76
  %87 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4370
  %changed_lock = getelementptr inbounds %struct.power_supply, %struct.power_supply* %87, i32 0, i32 10, !dbg !4370
  store %struct.spinlock* %changed_lock, %struct.spinlock** %lock.addr.i, align 8
  %88 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4371
  %89 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %88, i32 0, i32 0, !dbg !4372
  %rlock.i = bitcast %union.anon* %89 to %struct.raw_spinlock*, !dbg !4372
  %90 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4370
  %changed_lock79 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %90, i32 0, i32 10, !dbg !4370
  %91 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral80, i32 0, i32 0, !dbg !4370
  %rlock = bitcast %union.anon* %91 to %struct.raw_spinlock*, !dbg !4370
  %92 = bitcast %struct.spinlock* %changed_lock79 to i8*, !dbg !4370
  %93 = bitcast %struct.spinlock* %.compoundliteral80 to i8*, !dbg !4370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 1 %93, i64 0, i1 false), !dbg !4370
  br label %do.end81, !dbg !4370

do.end81:                                         ; preds = %do.body77
  %94 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4373
  %call82 = call i32 @device_add(%struct.device* %94) #11, !dbg !4374
  store i32 %call82, i32* %rc, align 4, !dbg !4375
  %95 = load i32, i32* %rc, align 4, !dbg !4376
  %tobool83 = icmp ne i32 %95, 0, !dbg !4376
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !4378

if.then84:                                        ; preds = %do.end81
  br label %device_add_failed, !dbg !4379

if.end85:                                         ; preds = %do.end81
  %96 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4380
  %97 = load i8, i8* %ws.addr, align 1, !dbg !4381
  %tobool86 = trunc i8 %97 to i1, !dbg !4381
  %call87 = call i32 @device_init_wakeup(%struct.device* %96, i1 zeroext %tobool86) #11, !dbg !4382
  store i32 %call87, i32* %rc, align 4, !dbg !4383
  %98 = load i32, i32* %rc, align 4, !dbg !4384
  %tobool88 = icmp ne i32 %98, 0, !dbg !4384
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !4386

if.then89:                                        ; preds = %if.end85
  br label %wakeup_init_failed, !dbg !4387

if.end90:                                         ; preds = %if.end85
  %99 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4388
  %call91 = call i32 @psy_register_thermal(%struct.power_supply* %99) #11, !dbg !4389
  store i32 %call91, i32* %rc, align 4, !dbg !4390
  %100 = load i32, i32* %rc, align 4, !dbg !4391
  %tobool92 = icmp ne i32 %100, 0, !dbg !4391
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !4393

if.then93:                                        ; preds = %if.end90
  br label %register_thermal_failed, !dbg !4394

if.end94:                                         ; preds = %if.end90
  %101 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4395
  %call95 = call i32 @psy_register_cooler(%struct.power_supply* %101) #11, !dbg !4396
  store i32 %call95, i32* %rc, align 4, !dbg !4397
  %102 = load i32, i32* %rc, align 4, !dbg !4398
  %tobool96 = icmp ne i32 %102, 0, !dbg !4398
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !4400

if.then97:                                        ; preds = %if.end94
  br label %register_cooler_failed, !dbg !4401

if.end98:                                         ; preds = %if.end94
  %103 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4402
  %call99 = call i32 @power_supply_create_triggers(%struct.power_supply* %103) #11, !dbg !4403
  store i32 %call99, i32* %rc, align 4, !dbg !4404
  %104 = load i32, i32* %rc, align 4, !dbg !4405
  %tobool100 = icmp ne i32 %104, 0, !dbg !4405
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !4407

if.then101:                                       ; preds = %if.end98
  br label %create_triggers_failed, !dbg !4408

if.end102:                                        ; preds = %if.end98
  %105 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4409
  %call103 = call i32 @power_supply_add_hwmon_sysfs(%struct.power_supply* %105) #11, !dbg !4410
  store i32 %call103, i32* %rc, align 4, !dbg !4411
  %106 = load i32, i32* %rc, align 4, !dbg !4412
  %tobool104 = icmp ne i32 %106, 0, !dbg !4412
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !4414

if.then105:                                       ; preds = %if.end102
  br label %add_hwmon_sysfs_failed, !dbg !4415

if.end106:                                        ; preds = %if.end102
  %107 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4416
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %107, i32 0, i32 14, !dbg !4417
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %108 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4418
  %109 = bitcast %struct.atomic_t* %108 to i8*, !dbg !4418
  store i8* %109, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %110 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4419
  %111 = load i64, i64* %size.addr.i.i, align 8, !dbg !4420
  %conv.i.i = trunc i64 %111 to i32, !dbg !4420
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %110, i32 %conv.i.i) #12, !dbg !4421
  %112 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4422
  %113 = load i64, i64* %size.addr.i.i, align 8, !dbg !4422
  call void @kcsan_check_access(i8* %112, i64 %113, i32 7) #12, !dbg !4422
  %114 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4423
  store %struct.atomic_t* %114, %struct.atomic_t** %v.addr.i1.i, align 8
  %115 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4424
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %115, i32 0, i32 0, !dbg !4425
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !4426, !srcloc !2908
  %116 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4427
  %initialized = getelementptr inbounds %struct.power_supply, %struct.power_supply* %116, i32 0, i32 12, !dbg !4428
  store i8 1, i8* %initialized, align 1, !dbg !4429
  %117 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_power_efficient_wq, align 8, !dbg !4430
  %118 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4431
  %deferred_register_work107 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %118, i32 0, i32 9, !dbg !4432
  store i32 10, i32* %m.addr.i, align 4
  %119 = load i32, i32* %m.addr.i, align 4, !dbg !4433
  %120 = call i1 @llvm.is.constant.i32(i32 %119) #9, !dbg !4435
  br i1 %120, label %if.then.i, label %if.else.i, !dbg !4436

if.then.i:                                        ; preds = %if.end106
  %121 = load i32, i32* %m.addr.i, align 4, !dbg !4437
  %cmp.i = icmp slt i32 %121, 0, !dbg !4440
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4441

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4442
  br label %msecs_to_jiffies.exit, !dbg !4442

if.end.i:                                         ; preds = %if.then.i
  %122 = load i32, i32* %m.addr.i, align 4, !dbg !4443
  %call.i = call i64 @_msecs_to_jiffies(i32 %122) #12, !dbg !4444
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4445
  br label %msecs_to_jiffies.exit, !dbg !4445

if.else.i:                                        ; preds = %if.end106
  %123 = load i32, i32* %m.addr.i, align 4, !dbg !4446
  %call2.i = call i64 @__msecs_to_jiffies(i32 %123) #12, !dbg !4448
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4449
  br label %msecs_to_jiffies.exit, !dbg !4449

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %124 = load i64, i64* %retval.i, align 8, !dbg !4450
  %call109 = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %117, %struct.delayed_work* %deferred_register_work107, i64 %124) #11, !dbg !4451
  %125 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4452
  store %struct.power_supply* %125, %struct.power_supply** %retval, align 8, !dbg !4453
  br label %return, !dbg !4453

add_hwmon_sysfs_failed:                           ; preds = %if.then105
  call void @llvm.dbg.label(metadata !4454), !dbg !4455
  %126 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4456
  call void @power_supply_remove_triggers(%struct.power_supply* %126) #11, !dbg !4457
  br label %create_triggers_failed, !dbg !4457

create_triggers_failed:                           ; preds = %add_hwmon_sysfs_failed, %if.then101
  call void @llvm.dbg.label(metadata !4458), !dbg !4459
  %127 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4460
  call void @psy_unregister_cooler(%struct.power_supply* %127) #11, !dbg !4461
  br label %register_cooler_failed, !dbg !4461

register_cooler_failed:                           ; preds = %create_triggers_failed, %if.then97
  call void @llvm.dbg.label(metadata !4462), !dbg !4463
  %128 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4464
  call void @psy_unregister_thermal(%struct.power_supply* %128) #11, !dbg !4465
  br label %register_thermal_failed, !dbg !4465

register_thermal_failed:                          ; preds = %register_cooler_failed, %if.then93
  call void @llvm.dbg.label(metadata !4466), !dbg !4467
  %129 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4468
  call void @device_del(%struct.device* %129) #11, !dbg !4469
  br label %wakeup_init_failed, !dbg !4469

wakeup_init_failed:                               ; preds = %register_thermal_failed, %if.then89
  call void @llvm.dbg.label(metadata !4470), !dbg !4471
  br label %device_add_failed, !dbg !4469

device_add_failed:                                ; preds = %wakeup_init_failed, %if.then84
  call void @llvm.dbg.label(metadata !4472), !dbg !4473
  br label %check_supplies_failed, !dbg !4469

check_supplies_failed:                            ; preds = %device_add_failed, %if.then75
  call void @llvm.dbg.label(metadata !4474), !dbg !4475
  br label %dev_set_name_failed, !dbg !4469

dev_set_name_failed:                              ; preds = %check_supplies_failed, %if.then49
  call void @llvm.dbg.label(metadata !4476), !dbg !4477
  %130 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4478
  call void @put_device(%struct.device* %130) #11, !dbg !4479
  %131 = load i32, i32* %rc, align 4, !dbg !4480
  %conv110 = sext i32 %131 to i64, !dbg !4480
  %call111 = call i8* @ERR_PTR(i64 %conv110) #11, !dbg !4481
  %132 = bitcast i8* %call111 to %struct.power_supply*, !dbg !4481
  store %struct.power_supply* %132, %struct.power_supply** %retval, align 8, !dbg !4482
  br label %return, !dbg !4482

return:                                           ; preds = %dev_set_name_failed, %msecs_to_jiffies.exit, %if.then24, %if.then19, %if.then8
  %133 = load %struct.power_supply*, %struct.power_supply** %retval, align 8, !dbg !4483
  ret %struct.power_supply* %133, !dbg !4483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.power_supply* @power_supply_register_no_ws(%struct.device* %parent, %struct.power_supply_desc* %desc, %struct.power_supply_config* %cfg) #0 !dbg !4484 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %desc.addr = alloca %struct.power_supply_desc*, align 8
  %cfg.addr = alloca %struct.power_supply_config*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  store %struct.power_supply_desc* %desc, %struct.power_supply_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_desc** %desc.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  store %struct.power_supply_config* %cfg, %struct.power_supply_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_config** %cfg.addr, metadata !4489, metadata !DIExpression()), !dbg !4490
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4491
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4492
  %2 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4493
  %call = call %struct.power_supply* @__power_supply_register(%struct.device* %0, %struct.power_supply_desc* %1, %struct.power_supply_config* %2, i1 zeroext false) #11, !dbg !4494
  ret %struct.power_supply* %call, !dbg !4495
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.power_supply* @devm_power_supply_register(%struct.device* %parent, %struct.power_supply_desc* %desc, %struct.power_supply_config* %cfg) #0 !dbg !4496 {
entry:
  %retval = alloca %struct.power_supply*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %desc.addr = alloca %struct.power_supply_desc*, align 8
  %cfg.addr = alloca %struct.power_supply_config*, align 8
  %ptr = alloca %struct.power_supply**, align 8
  %psy = alloca %struct.power_supply*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4497, metadata !DIExpression()), !dbg !4498
  store %struct.power_supply_desc* %desc, %struct.power_supply_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_desc** %desc.addr, metadata !4499, metadata !DIExpression()), !dbg !4500
  store %struct.power_supply_config* %cfg, %struct.power_supply_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_config** %cfg.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata %struct.power_supply*** %ptr, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !4505, metadata !DIExpression()), !dbg !4506
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_power_supply_release, i64 8, i32 3264) #11, !dbg !4507
  %0 = bitcast i8* %call to %struct.power_supply**, !dbg !4507
  store %struct.power_supply** %0, %struct.power_supply*** %ptr, align 8, !dbg !4508
  %1 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !4509
  %tobool = icmp ne %struct.power_supply** %1, null, !dbg !4509
  br i1 %tobool, label %if.end, label %if.then, !dbg !4511

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #11, !dbg !4512
  %2 = bitcast i8* %call1 to %struct.power_supply*, !dbg !4512
  store %struct.power_supply* %2, %struct.power_supply** %retval, align 8, !dbg !4513
  br label %return, !dbg !4513

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4514
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4515
  %5 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4516
  %call2 = call %struct.power_supply* @__power_supply_register(%struct.device* %3, %struct.power_supply_desc* %4, %struct.power_supply_config* %5, i1 zeroext true) #11, !dbg !4517
  store %struct.power_supply* %call2, %struct.power_supply** %psy, align 8, !dbg !4518
  %6 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4519
  %7 = bitcast %struct.power_supply* %6 to i8*, !dbg !4519
  %call3 = call zeroext i1 @IS_ERR(i8* %7) #11, !dbg !4521
  br i1 %call3, label %if.then4, label %if.else, !dbg !4522

if.then4:                                         ; preds = %if.end
  %8 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !4523
  %9 = bitcast %struct.power_supply** %8 to i8*, !dbg !4523
  call void @devres_free(i8* %9) #11, !dbg !4525
  br label %if.end5, !dbg !4526

if.else:                                          ; preds = %if.end
  %10 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4527
  %11 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !4529
  store %struct.power_supply* %10, %struct.power_supply** %11, align 8, !dbg !4530
  %12 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4531
  %13 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !4532
  %14 = bitcast %struct.power_supply** %13 to i8*, !dbg !4532
  call void @devres_add(%struct.device* %12, i8* %14) #11, !dbg !4533
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %15 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4534
  store %struct.power_supply* %15, %struct.power_supply** %retval, align 8, !dbg !4535
  br label %return, !dbg !4535

return:                                           ; preds = %if.end5, %if.then
  %16 = load %struct.power_supply*, %struct.power_supply** %retval, align 8, !dbg !4536
  ret %struct.power_supply* %16, !dbg !4536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_power_supply_release(%struct.device* %dev, i8* %res) #0 !dbg !4537 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %psy = alloca %struct.power_supply**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.declare(metadata %struct.power_supply*** %psy, metadata !4542, metadata !DIExpression()), !dbg !4543
  %0 = load i8*, i8** %res.addr, align 8, !dbg !4544
  %1 = bitcast i8* %0 to %struct.power_supply**, !dbg !4544
  store %struct.power_supply** %1, %struct.power_supply*** %psy, align 8, !dbg !4543
  %2 = load %struct.power_supply**, %struct.power_supply*** %psy, align 8, !dbg !4545
  %3 = load %struct.power_supply*, %struct.power_supply** %2, align 8, !dbg !4546
  call void @power_supply_unregister(%struct.power_supply* %3) #11, !dbg !4547
  ret void, !dbg !4548
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4549 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4552
  %1 = ptrtoint i8* %0 to i64, !dbg !4552
  %2 = inttoptr i64 %1 to i8*, !dbg !4552
  %3 = ptrtoint i8* %2 to i64, !dbg !4552
  %cmp = icmp uge i64 %3, -4095, !dbg !4552
  %lnot = xor i1 %cmp, true, !dbg !4552
  %lnot1 = xor i1 %lnot, true, !dbg !4552
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4552
  %conv = sext i32 %lnot.ext to i64, !dbg !4552
  %tobool = icmp ne i64 %conv, 0, !dbg !4552
  ret i1 %tobool, !dbg !4553
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.power_supply* @devm_power_supply_register_no_ws(%struct.device* %parent, %struct.power_supply_desc* %desc, %struct.power_supply_config* %cfg) #0 !dbg !4554 {
entry:
  %retval = alloca %struct.power_supply*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %desc.addr = alloca %struct.power_supply_desc*, align 8
  %cfg.addr = alloca %struct.power_supply_config*, align 8
  %ptr = alloca %struct.power_supply**, align 8
  %psy = alloca %struct.power_supply*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  store %struct.power_supply_desc* %desc, %struct.power_supply_desc** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_desc** %desc.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  store %struct.power_supply_config* %cfg, %struct.power_supply_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply_config** %cfg.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.declare(metadata %struct.power_supply*** %ptr, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !4563, metadata !DIExpression()), !dbg !4564
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_power_supply_release, i64 8, i32 3264) #11, !dbg !4565
  %0 = bitcast i8* %call to %struct.power_supply**, !dbg !4565
  store %struct.power_supply** %0, %struct.power_supply*** %ptr, align 8, !dbg !4566
  %1 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !4567
  %tobool = icmp ne %struct.power_supply** %1, null, !dbg !4567
  br i1 %tobool, label %if.end, label %if.then, !dbg !4569

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #11, !dbg !4570
  %2 = bitcast i8* %call1 to %struct.power_supply*, !dbg !4570
  store %struct.power_supply* %2, %struct.power_supply** %retval, align 8, !dbg !4571
  br label %return, !dbg !4571

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4572
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc.addr, align 8, !dbg !4573
  %5 = load %struct.power_supply_config*, %struct.power_supply_config** %cfg.addr, align 8, !dbg !4574
  %call2 = call %struct.power_supply* @__power_supply_register(%struct.device* %3, %struct.power_supply_desc* %4, %struct.power_supply_config* %5, i1 zeroext false) #11, !dbg !4575
  store %struct.power_supply* %call2, %struct.power_supply** %psy, align 8, !dbg !4576
  %6 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4577
  %7 = bitcast %struct.power_supply* %6 to i8*, !dbg !4577
  %call3 = call zeroext i1 @IS_ERR(i8* %7) #11, !dbg !4579
  br i1 %call3, label %if.then4, label %if.else, !dbg !4580

if.then4:                                         ; preds = %if.end
  %8 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !4581
  %9 = bitcast %struct.power_supply** %8 to i8*, !dbg !4581
  call void @devres_free(i8* %9) #11, !dbg !4583
  br label %if.end5, !dbg !4584

if.else:                                          ; preds = %if.end
  %10 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4585
  %11 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !4587
  store %struct.power_supply* %10, %struct.power_supply** %11, align 8, !dbg !4588
  %12 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4589
  %13 = load %struct.power_supply**, %struct.power_supply*** %ptr, align 8, !dbg !4590
  %14 = bitcast %struct.power_supply** %13 to i8*, !dbg !4590
  call void @devres_add(%struct.device* %12, i8* %14) #11, !dbg !4591
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %15 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !4592
  store %struct.power_supply* %15, %struct.power_supply** %retval, align 8, !dbg !4593
  br label %return, !dbg !4593

return:                                           ; preds = %if.end5, %if.then
  %16 = load %struct.power_supply*, %struct.power_supply** %retval, align 8, !dbg !4594
  ret %struct.power_supply* %16, !dbg !4594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @power_supply_unregister(%struct.power_supply* %psy) #0 !dbg !4595 {
entry:
  %i.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i.i, metadata !4596, metadata !DIExpression()), !dbg !4600
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !4612, metadata !DIExpression()), !dbg !4613
  %__ret.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i.i, metadata !4614, metadata !DIExpression()), !dbg !4616
  %tmp.i.i.i.i = alloca i32, align 4
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !4617, metadata !DIExpression()), !dbg !4618
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !4619, metadata !DIExpression()), !dbg !4620
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4621, metadata !DIExpression()), !dbg !4622
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2875, metadata !DIExpression()), !dbg !4623
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2879, metadata !DIExpression()), !dbg !4625
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4626, metadata !DIExpression()), !dbg !4627
  %psy.addr = alloca %struct.power_supply*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4628, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4630, metadata !DIExpression()), !dbg !4631
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4631
  %use_cnt = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 14, !dbg !4631
  store %struct.atomic_t* %use_cnt, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4632
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !4632
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4633
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !4634
  %conv.i.i = trunc i64 %4 to i32, !dbg !4634
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #12, !dbg !4635
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4636
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4636
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #12, !dbg !4636
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4637
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4638
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i.i.i, align 8
  %9 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !4639
  %sub.i.i.i = sub i32 0, %9, !dbg !4640
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !4641
  store i32 %sub.i.i.i, i32* %i.addr.i.i.i.i, align 4
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %11 = load i32, i32* %i.addr.i.i.i.i, align 4, !dbg !4642
  %12 = load i32, i32* %i.addr.i.i.i.i, align 4, !dbg !4616
  store i32 %12, i32* %__ret.i.i.i.i, align 4, !dbg !4616
  %13 = load i32, i32* %__ret.i.i.i.i, align 4, !dbg !4616
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !4616
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !4616
  %15 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i.i, i32 %13, i32* %counter.i.i.i.i) #9, !dbg !4616, !srcloc !4643
  store i32 %15, i32* %__ret.i.i.i.i, align 4, !dbg !4616
  %16 = load i32, i32* %__ret.i.i.i.i, align 4, !dbg !4616
  store i32 %16, i32* %tmp.i.i.i.i, align 4, !dbg !4616
  %17 = load i32, i32* %tmp.i.i.i.i, align 4, !dbg !4616
  %add.i.i.i.i = add i32 %11, %17, !dbg !4644
  %tobool = icmp ne i32 %add.i.i.i.i, 0, !dbg !4631
  %lnot = xor i1 %tobool, true, !dbg !4631
  %lnot1 = xor i1 %lnot, true, !dbg !4631
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4631
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4631
  %18 = load i32, i32* %__ret_warn_on, align 4, !dbg !4645
  %tobool2 = icmp ne i32 %18, 0, !dbg !4645
  %lnot3 = xor i1 %tobool2, true, !dbg !4645
  %lnot5 = xor i1 %lnot3, true, !dbg !4645
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4645
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4645
  %tobool7 = icmp ne i64 %conv, 0, !dbg !4645
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4631

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4645

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !4647

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4649

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4647

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i32 1342, i32 2305, i64 12) #9, !dbg !4651, !srcloc !4653
  br label %do.end10, !dbg !4651

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 166) #9, !dbg !4654, !srcloc !4656
  br label %do.body11, !dbg !4647

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4657

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4647

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !4647

if.end:                                           ; preds = %do.end13, %entry
  %19 = load i32, i32* %__ret_warn_on, align 4, !dbg !4631
  %tobool14 = icmp ne i32 %19, 0, !dbg !4631
  %lnot15 = xor i1 %tobool14, true, !dbg !4631
  %lnot17 = xor i1 %lnot15, true, !dbg !4631
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4631
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4631
  store i64 %conv19, i64* %tmp, align 8, !dbg !4645
  %20 = load i64, i64* %tmp, align 8, !dbg !4631
  %21 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4659
  %removing = getelementptr inbounds %struct.power_supply, %struct.power_supply* %21, i32 0, i32 13, !dbg !4660
  store i8 1, i8* %removing, align 2, !dbg !4661
  %22 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4662
  %changed_work = getelementptr inbounds %struct.power_supply, %struct.power_supply* %22, i32 0, i32 8, !dbg !4663
  %call20 = call zeroext i1 @cancel_work_sync(%struct.work_struct* %changed_work) #11, !dbg !4664
  %23 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4665
  %deferred_register_work = getelementptr inbounds %struct.power_supply, %struct.power_supply* %23, i32 0, i32 9, !dbg !4666
  %call21 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %deferred_register_work) #11, !dbg !4667
  %24 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4668
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 7, !dbg !4669
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !4670
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !4671
  %25 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4672
  call void @power_supply_remove_hwmon_sysfs(%struct.power_supply* %25) #11, !dbg !4673
  %26 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4674
  call void @power_supply_remove_triggers(%struct.power_supply* %26) #11, !dbg !4675
  %27 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4676
  call void @psy_unregister_cooler(%struct.power_supply* %27) #11, !dbg !4677
  %28 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4678
  call void @psy_unregister_thermal(%struct.power_supply* %28) #11, !dbg !4679
  %29 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4680
  %dev22 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %29, i32 0, i32 7, !dbg !4681
  %call23 = call i32 @device_init_wakeup(%struct.device* %dev22, i1 zeroext false) #11, !dbg !4682
  %30 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4683
  %dev24 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %30, i32 0, i32 7, !dbg !4684
  call void @device_unregister(%struct.device* %dev24) #11, !dbg !4685
  ret void, !dbg !4686
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_work_sync(%struct.work_struct*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) #2

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @power_supply_remove_hwmon_sysfs(%struct.power_supply*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @power_supply_remove_triggers(%struct.power_supply* %psy) #0 !dbg !4687 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  ret void, !dbg !4691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @psy_unregister_cooler(%struct.power_supply* %psy) #0 !dbg !4692 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4695
  %tcd = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 16, !dbg !4697
  %1 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tcd, align 8, !dbg !4697
  %2 = bitcast %struct.thermal_cooling_device* %1 to i8*, !dbg !4695
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %2) #11, !dbg !4698
  br i1 %call, label %if.then, label %if.end, !dbg !4699

if.then:                                          ; preds = %entry
  br label %return, !dbg !4700

if.end:                                           ; preds = %entry
  %3 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4701
  %tcd1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %3, i32 0, i32 16, !dbg !4702
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tcd1, align 8, !dbg !4702
  call void @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %4) #11, !dbg !4703
  br label %return, !dbg !4704

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @psy_unregister_thermal(%struct.power_supply* %psy) #0 !dbg !4705 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4708
  %tzd = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 15, !dbg !4710
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !4710
  %2 = bitcast %struct.thermal_zone_device* %1 to i8*, !dbg !4708
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %2) #11, !dbg !4711
  br i1 %call, label %if.then, label %if.end, !dbg !4712

if.then:                                          ; preds = %entry
  br label %return, !dbg !4713

if.end:                                           ; preds = %entry
  %3 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4714
  %tzd1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %3, i32 0, i32 15, !dbg !4715
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd1, align 8, !dbg !4715
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %4) #11, !dbg !4716
  br label %return, !dbg !4717

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4717
}

; Function Attrs: noredzone
declare dso_local i32 @device_init_wakeup(%struct.device*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @power_supply_get_drvdata(%struct.power_supply* %psy) #0 !dbg !4718 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !4723
  %drv_data = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 6, !dbg !4724
  %1 = load i8*, i8** %drv_data, align 8, !dbg !4724
  ret i8* %1, !dbg !4725
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @power_supply_class_exit() #7 section ".exit.text" !dbg !4726 {
entry:
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !4727
  call void @class_destroy(%struct.class* %0) #11, !dbg !4728
  ret void, !dbg !4729
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_class_init() #7 section ".init.text" !dbg !2499 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  %call = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), %struct.lock_class_key* @power_supply_class_init.__key) #11, !dbg !4730
  store %struct.class* %call, %struct.class** %tmp, align 8, !dbg !4730
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !4730
  store %struct.class* %0, %struct.class** @power_supply_class, align 8, !dbg !4732
  %1 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !4733
  %2 = bitcast %struct.class* %1 to i8*, !dbg !4733
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #11, !dbg !4735
  br i1 %call1, label %if.then, label %if.end, !dbg !4736

if.then:                                          ; preds = %entry
  %3 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !4737
  %4 = bitcast %struct.class* %3 to i8*, !dbg !4737
  %call2 = call i64 @PTR_ERR(i8* %4) #11, !dbg !4738
  %conv = trunc i64 %call2 to i32, !dbg !4738
  store i32 %conv, i32* %retval, align 4, !dbg !4739
  br label %return, !dbg !4739

if.end:                                           ; preds = %entry
  %5 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !4740
  %dev_uevent = getelementptr inbounds %struct.class, %struct.class* %5, i32 0, i32 5, !dbg !4741
  store i32 (%struct.device*, %struct.kobj_uevent_env*)* @power_supply_uevent, i32 (%struct.device*, %struct.kobj_uevent_env*)** %dev_uevent, align 8, !dbg !4742
  call void @power_supply_init_attrs(%struct.device_type* @power_supply_dev_type) #11, !dbg !4743
  store i32 0, i32* %retval, align 4, !dbg !4744
  br label %return, !dbg !4744

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4745
  ret i32 %6, !dbg !4745
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !4746 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4747, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4750, metadata !DIExpression()), !dbg !4749
  %0 = load i64, i64* %__edi, align 8, !dbg !4749
  store i64 %0, i64* %__edi, align 8, !dbg !4749
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4751, metadata !DIExpression()), !dbg !4749
  %1 = load i64, i64* %__esi, align 8, !dbg !4749
  store i64 %1, i64* %__esi, align 8, !dbg !4749
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4752, metadata !DIExpression()), !dbg !4749
  %2 = load i64, i64* %__edx, align 8, !dbg !4749
  store i64 %2, i64* %__edx, align 8, !dbg !4749
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4753, metadata !DIExpression()), !dbg !4749
  %3 = load i64, i64* %__ecx, align 8, !dbg !4749
  store i64 %3, i64* %__ecx, align 8, !dbg !4749
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4754, metadata !DIExpression()), !dbg !4749
  %4 = load i64, i64* %__eax, align 8, !dbg !4749
  store i64 %4, i64* %__eax, align 8, !dbg !4749
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4749
  %6 = call i64 @llvm.read_register.i64(metadata !2517), !dbg !4755
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !4755, !srcloc !4758
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4755
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4755
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4755
  call void @llvm.write_register.i64(metadata !2517, i64 %asmresult1), !dbg !4755
  %8 = load i64, i64* %__eax, align 8, !dbg !4755
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4759, metadata !DIExpression()), !dbg !4761
  store i64 -1, i64* %__mask, align 8, !dbg !4761
  %9 = load i64, i64* %__mask, align 8, !dbg !4761
  store i64 %9, i64* %tmp, align 8, !dbg !4761
  %10 = load i64, i64* %tmp, align 8, !dbg !4761
  %and = and i64 %8, %10, !dbg !4755
  store i64 %and, i64* %__ret, align 8, !dbg !4755
  %11 = load i64, i64* %__ret, align 8, !dbg !4749
  store i64 %11, i64* %tmp2, align 8, !dbg !4762
  %12 = load i64, i64* %tmp2, align 8, !dbg !4749
  ret i64 %12, !dbg !4763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4764 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4765, metadata !DIExpression()), !dbg !4767
  %0 = load i64, i64* %__edi, align 8, !dbg !4767
  store i64 %0, i64* %__edi, align 8, !dbg !4767
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4768, metadata !DIExpression()), !dbg !4767
  %1 = load i64, i64* %__esi, align 8, !dbg !4767
  store i64 %1, i64* %__esi, align 8, !dbg !4767
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4769, metadata !DIExpression()), !dbg !4767
  %2 = load i64, i64* %__edx, align 8, !dbg !4767
  store i64 %2, i64* %__edx, align 8, !dbg !4767
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4770, metadata !DIExpression()), !dbg !4767
  %3 = load i64, i64* %__ecx, align 8, !dbg !4767
  store i64 %3, i64* %__ecx, align 8, !dbg !4767
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4771, metadata !DIExpression()), !dbg !4767
  %4 = load i64, i64* %__eax, align 8, !dbg !4767
  store i64 %4, i64* %__eax, align 8, !dbg !4767
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4767
  %6 = call i64 @llvm.read_register.i64(metadata !2517), !dbg !4767
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !4767, !srcloc !4772
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4767
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4767
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4767
  call void @llvm.write_register.i64(metadata !2517, i64 %asmresult1), !dbg !4767
  ret void, !dbg !4773
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !4774 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4779, metadata !DIExpression()), !dbg !4781
  %0 = load i64, i64* %__edi, align 8, !dbg !4781
  store i64 %0, i64* %__edi, align 8, !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4782, metadata !DIExpression()), !dbg !4781
  %1 = load i64, i64* %__esi, align 8, !dbg !4781
  store i64 %1, i64* %__esi, align 8, !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4783, metadata !DIExpression()), !dbg !4781
  %2 = load i64, i64* %__edx, align 8, !dbg !4781
  store i64 %2, i64* %__edx, align 8, !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4784, metadata !DIExpression()), !dbg !4781
  %3 = load i64, i64* %__ecx, align 8, !dbg !4781
  store i64 %3, i64* %__ecx, align 8, !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4785, metadata !DIExpression()), !dbg !4781
  %4 = load i64, i64* %__eax, align 8, !dbg !4781
  store i64 %4, i64* %__eax, align 8, !dbg !4781
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !4781
  %6 = call i64 @llvm.read_register.i64(metadata !2517), !dbg !4781
  %7 = load i64, i64* %f.addr, align 8, !dbg !4781
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !4781, !srcloc !4786
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !4781
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !4781
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4781
  call void @llvm.write_register.i64(metadata !2517, i64 %asmresult1), !dbg !4781
  ret void, !dbg !4787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !4788 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !4795
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4796
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #11, !dbg !4797
  ret i1 %call, !dbg !4798
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__power_supply_is_supplied_by(%struct.power_supply* %supplier, %struct.power_supply* %supply) #0 !dbg !4799 {
entry:
  %retval = alloca i1, align 1
  %supplier.addr = alloca %struct.power_supply*, align 8
  %supply.addr = alloca %struct.power_supply*, align 8
  %i = alloca i32, align 4
  store %struct.power_supply* %supplier, %struct.power_supply** %supplier.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %supplier.addr, metadata !4802, metadata !DIExpression()), !dbg !4803
  store %struct.power_supply* %supply, %struct.power_supply** %supply.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %supply.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4806, metadata !DIExpression()), !dbg !4807
  %0 = load %struct.power_supply*, %struct.power_supply** %supply.addr, align 8, !dbg !4808
  %supplied_from = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 3, !dbg !4810
  %1 = load i8**, i8*** %supplied_from, align 8, !dbg !4810
  %tobool = icmp ne i8** %1, null, !dbg !4808
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4811

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.power_supply*, %struct.power_supply** %supplier.addr, align 8, !dbg !4812
  %supplied_to = getelementptr inbounds %struct.power_supply, %struct.power_supply* %2, i32 0, i32 1, !dbg !4813
  %3 = load i8**, i8*** %supplied_to, align 8, !dbg !4813
  %tobool1 = icmp ne i8** %3, null, !dbg !4812
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4814

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !4815
  br label %return, !dbg !4815

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.power_supply*, %struct.power_supply** %supply.addr, align 8, !dbg !4816
  %supplied_from2 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 3, !dbg !4818
  %5 = load i8**, i8*** %supplied_from2, align 8, !dbg !4818
  %tobool3 = icmp ne i8** %5, null, !dbg !4816
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !4819

if.then4:                                         ; preds = %if.end
  %6 = load %struct.power_supply*, %struct.power_supply** %supplier.addr, align 8, !dbg !4820
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %6, i32 0, i32 0, !dbg !4823
  %7 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !4823
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %7, i32 0, i32 0, !dbg !4824
  %8 = load i8*, i8** %name, align 8, !dbg !4824
  %tobool5 = icmp ne i8* %8, null, !dbg !4820
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4825

if.then6:                                         ; preds = %if.then4
  store i1 false, i1* %retval, align 1, !dbg !4826
  br label %return, !dbg !4826

if.end7:                                          ; preds = %if.then4
  store i32 0, i32* %i, align 4, !dbg !4827
  br label %for.cond, !dbg !4829

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, i32* %i, align 4, !dbg !4830
  %conv = sext i32 %9 to i64, !dbg !4830
  %10 = load %struct.power_supply*, %struct.power_supply** %supply.addr, align 8, !dbg !4832
  %num_supplies = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 4, !dbg !4833
  %11 = load i64, i64* %num_supplies, align 8, !dbg !4833
  %cmp = icmp ult i64 %conv, %11, !dbg !4834
  br i1 %cmp, label %for.body, label %for.end, !dbg !4835

for.body:                                         ; preds = %for.cond
  %12 = load %struct.power_supply*, %struct.power_supply** %supplier.addr, align 8, !dbg !4836
  %desc9 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 0, !dbg !4838
  %13 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc9, align 8, !dbg !4838
  %name10 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %13, i32 0, i32 0, !dbg !4839
  %14 = load i8*, i8** %name10, align 8, !dbg !4839
  %15 = load %struct.power_supply*, %struct.power_supply** %supply.addr, align 8, !dbg !4840
  %supplied_from11 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 3, !dbg !4841
  %16 = load i8**, i8*** %supplied_from11, align 8, !dbg !4841
  %17 = load i32, i32* %i, align 4, !dbg !4842
  %idxprom = sext i32 %17 to i64, !dbg !4840
  %arrayidx = getelementptr i8*, i8** %16, i64 %idxprom, !dbg !4840
  %18 = load i8*, i8** %arrayidx, align 8, !dbg !4840
  %call = call i32 @strcmp(i8* %14, i8* %18) #11, !dbg !4843
  %tobool12 = icmp ne i32 %call, 0, !dbg !4843
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4844

if.then13:                                        ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !4845
  br label %return, !dbg !4845

if.end14:                                         ; preds = %for.body
  br label %for.inc, !dbg !4846

for.inc:                                          ; preds = %if.end14
  %19 = load i32, i32* %i, align 4, !dbg !4847
  %inc = add i32 %19, 1, !dbg !4847
  store i32 %inc, i32* %i, align 4, !dbg !4847
  br label %for.cond, !dbg !4848, !llvm.loop !4849

for.end:                                          ; preds = %for.cond
  br label %if.end37, !dbg !4851

if.else:                                          ; preds = %if.end
  %20 = load %struct.power_supply*, %struct.power_supply** %supply.addr, align 8, !dbg !4852
  %desc15 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %20, i32 0, i32 0, !dbg !4855
  %21 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc15, align 8, !dbg !4855
  %name16 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %21, i32 0, i32 0, !dbg !4856
  %22 = load i8*, i8** %name16, align 8, !dbg !4856
  %tobool17 = icmp ne i8* %22, null, !dbg !4852
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4857

if.then18:                                        ; preds = %if.else
  store i1 false, i1* %retval, align 1, !dbg !4858
  br label %return, !dbg !4858

if.end19:                                         ; preds = %if.else
  store i32 0, i32* %i, align 4, !dbg !4859
  br label %for.cond20, !dbg !4861

for.cond20:                                       ; preds = %for.inc34, %if.end19
  %23 = load i32, i32* %i, align 4, !dbg !4862
  %conv21 = sext i32 %23 to i64, !dbg !4862
  %24 = load %struct.power_supply*, %struct.power_supply** %supplier.addr, align 8, !dbg !4864
  %num_supplicants = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 2, !dbg !4865
  %25 = load i64, i64* %num_supplicants, align 8, !dbg !4865
  %cmp22 = icmp ult i64 %conv21, %25, !dbg !4866
  br i1 %cmp22, label %for.body24, label %for.end36, !dbg !4867

for.body24:                                       ; preds = %for.cond20
  %26 = load %struct.power_supply*, %struct.power_supply** %supplier.addr, align 8, !dbg !4868
  %supplied_to25 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %26, i32 0, i32 1, !dbg !4870
  %27 = load i8**, i8*** %supplied_to25, align 8, !dbg !4870
  %28 = load i32, i32* %i, align 4, !dbg !4871
  %idxprom26 = sext i32 %28 to i64, !dbg !4868
  %arrayidx27 = getelementptr i8*, i8** %27, i64 %idxprom26, !dbg !4868
  %29 = load i8*, i8** %arrayidx27, align 8, !dbg !4868
  %30 = load %struct.power_supply*, %struct.power_supply** %supply.addr, align 8, !dbg !4872
  %desc28 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %30, i32 0, i32 0, !dbg !4873
  %31 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc28, align 8, !dbg !4873
  %name29 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %31, i32 0, i32 0, !dbg !4874
  %32 = load i8*, i8** %name29, align 8, !dbg !4874
  %call30 = call i32 @strcmp(i8* %29, i8* %32) #11, !dbg !4875
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4875
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !4876

if.then32:                                        ; preds = %for.body24
  store i1 true, i1* %retval, align 1, !dbg !4877
  br label %return, !dbg !4877

if.end33:                                         ; preds = %for.body24
  br label %for.inc34, !dbg !4878

for.inc34:                                        ; preds = %if.end33
  %33 = load i32, i32* %i, align 4, !dbg !4879
  %inc35 = add i32 %33, 1, !dbg !4879
  store i32 %inc35, i32* %i, align 4, !dbg !4879
  br label %for.cond20, !dbg !4880, !llvm.loop !4881

for.end36:                                        ; preds = %for.cond20
  br label %if.end37

if.end37:                                         ; preds = %for.end36, %for.end
  store i1 false, i1* %retval, align 1, !dbg !4883
  br label %return, !dbg !4883

return:                                           ; preds = %if.end37, %if.then32, %if.then18, %if.then13, %if.then6, %if.then
  %34 = load i1, i1* %retval, align 1, !dbg !4884
  ret i1 %34, !dbg !4884
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4885 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4889, metadata !DIExpression()), !dbg !4890
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  ret i1 true, !dbg !4893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4894 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  ret void, !dbg !4904
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4905 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4908, metadata !DIExpression()), !dbg !4909
  ret i1 true, !dbg !4910
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kmalloc_array(%struct.device* %dev, i64 %n, i64 %size, i32 %flags) #0 !dbg !4911 {
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
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4920, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4922, metadata !DIExpression()), !dbg !4925
  %0 = load i64, i64* %n.addr, align 8, !dbg !4925
  store i64 %0, i64* %__a, align 8, !dbg !4925
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4926, metadata !DIExpression()), !dbg !4925
  %1 = load i64, i64* %size.addr, align 8, !dbg !4925
  store i64 %1, i64* %__b, align 8, !dbg !4925
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4927, metadata !DIExpression()), !dbg !4925
  store i64* %bytes, i64** %__d, align 8, !dbg !4925
  %cmp = icmp eq i64* %__a, %__b, !dbg !4925
  %conv = zext i1 %cmp to i32, !dbg !4925
  %2 = load i64*, i64** %__d, align 8, !dbg !4925
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4925
  %conv2 = zext i1 %cmp1 to i32, !dbg !4925
  %3 = load i64, i64* %__a, align 8, !dbg !4925
  %4 = load i64, i64* %__b, align 8, !dbg !4925
  %5 = load i64*, i64** %__d, align 8, !dbg !4925
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4925
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4925
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4925
  store i64 %8, i64* %5, align 8, !dbg !4925
  %frombool = zext i1 %7 to i8, !dbg !4925
  store i8 %frombool, i8* %tmp, align 1, !dbg !4925
  %9 = load i8, i8* %tmp, align 1, !dbg !4925
  %tobool = trunc i8 %9 to i1, !dbg !4925
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #11, !dbg !4929
  %lnot = xor i1 %call, true, !dbg !4929
  %lnot3 = xor i1 %lnot, true, !dbg !4929
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4929
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4929
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4929
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4930

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4931
  br label %return, !dbg !4931

if.end:                                           ; preds = %entry
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4932
  %11 = load i64, i64* %bytes, align 8, !dbg !4933
  %12 = load i32, i32* %flags.addr, align 4, !dbg !4934
  %call6 = call noalias i8* @devm_kmalloc(%struct.device* %10, i64 %11, i32 %12) #11, !dbg !4935
  store i8* %call6, i8** %retval, align 8, !dbg !4936
  br label %return, !dbg !4936

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !4937
  ret i8* %13, !dbg !4937
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4938 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4942, metadata !DIExpression()), !dbg !4943
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4944
  %tobool = trunc i8 %0 to i1, !dbg !4944
  %lnot = xor i1 %tobool, true, !dbg !4944
  %lnot1 = xor i1 %lnot, true, !dbg !4944
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4944
  %conv = sext i32 %lnot.ext to i64, !dbg !4944
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4944
  ret i1 %tobool2, !dbg !4945
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #6 !dbg !4946 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4948, metadata !DIExpression()), !dbg !4949
  %0 = load i32, i32* %val.addr, align 4, !dbg !4950
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #15, !dbg !4951, !srcloc !4952
  store i32 %1, i32* %val.addr, align 4, !dbg !4951
  %2 = load i32, i32* %val.addr, align 4, !dbg !4953
  ret i32 %2, !dbg !4954
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4955 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4958, metadata !DIExpression()), !dbg !4962
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4968, metadata !DIExpression()), !dbg !4969
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4970, metadata !DIExpression()), !dbg !4971
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4972, metadata !DIExpression()), !dbg !4973
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4974, metadata !DIExpression()), !dbg !4978
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4980, metadata !DIExpression()), !dbg !4984
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4986, metadata !DIExpression()), !dbg !4990
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4995, metadata !DIExpression()), !dbg !4996
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4997, metadata !DIExpression()), !dbg !4998
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4999, metadata !DIExpression()), !dbg !5000
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5001, metadata !DIExpression()), !dbg !5002
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5003, metadata !DIExpression()), !dbg !5004
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5005, metadata !DIExpression()), !dbg !5006
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5007, metadata !DIExpression()), !dbg !5008
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5009, metadata !DIExpression()), !dbg !5010
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load i64, i64* %size.addr, align 8, !dbg !5015
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5016
  %or = or i32 %1, 256, !dbg !5017
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5018
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !5019
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5020

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5021
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5022
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5023

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5024
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5025
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5026
  %call.i.i = call i32 @get_order(i64 %7) #14, !dbg !5027
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5004
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5028
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5029
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5030
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5031
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5032
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5033
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5034
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5034
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5034
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5034
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5034
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5035
  br label %kmalloc.exit, !dbg !5035

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5036
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5037
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5037
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5039

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5040
  br label %kmalloc_index.exit.i, !dbg !5040

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5041
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5043
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5044

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5045
  br label %kmalloc_index.exit.i, !dbg !5045

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5046
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5048
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5049

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5050
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5051
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5052

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5053
  br label %kmalloc_index.exit.i, !dbg !5053

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5054
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5056
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5057

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5058
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5059
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5060

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5061
  br label %kmalloc_index.exit.i, !dbg !5061

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5062
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5064
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5065

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5066
  br label %kmalloc_index.exit.i, !dbg !5066

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5067
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5069
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5070

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5071
  br label %kmalloc_index.exit.i, !dbg !5071

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5072
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5074
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5075

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5076
  br label %kmalloc_index.exit.i, !dbg !5076

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5077
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5079
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5080

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5081
  br label %kmalloc_index.exit.i, !dbg !5081

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5082
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5084
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5085

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5086
  br label %kmalloc_index.exit.i, !dbg !5086

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5087
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5089
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5090

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5091
  br label %kmalloc_index.exit.i, !dbg !5091

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5092
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5094
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5095

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5096
  br label %kmalloc_index.exit.i, !dbg !5096

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5097
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5099
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5100

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5101
  br label %kmalloc_index.exit.i, !dbg !5101

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5102
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5104
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5105

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5106
  br label %kmalloc_index.exit.i, !dbg !5106

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5107
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5109
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5110

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5111
  br label %kmalloc_index.exit.i, !dbg !5111

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5112
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5114
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5115

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5116
  br label %kmalloc_index.exit.i, !dbg !5116

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5117
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5119
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5120

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5121
  br label %kmalloc_index.exit.i, !dbg !5121

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5122
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5124
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5125

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5126
  br label %kmalloc_index.exit.i, !dbg !5126

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5127
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5129
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5130

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5131
  br label %kmalloc_index.exit.i, !dbg !5131

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5132
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5134
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5135

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5136
  br label %kmalloc_index.exit.i, !dbg !5136

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5137
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5139
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5140

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5141
  br label %kmalloc_index.exit.i, !dbg !5141

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5142
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5144
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5145

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5146
  br label %kmalloc_index.exit.i, !dbg !5146

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5147
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5149
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5150

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5151
  br label %kmalloc_index.exit.i, !dbg !5151

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5152
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5154
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5155

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5156
  br label %kmalloc_index.exit.i, !dbg !5156

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5157
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5159
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5160

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5161
  br label %kmalloc_index.exit.i, !dbg !5161

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5162
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5164
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5165

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5166
  br label %kmalloc_index.exit.i, !dbg !5166

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5167
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5169
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5170

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5171
  br label %kmalloc_index.exit.i, !dbg !5171

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5172
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5174
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5175

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5176
  br label %kmalloc_index.exit.i, !dbg !5176

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5177
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5179
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5180

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5181
  br label %kmalloc_index.exit.i, !dbg !5181

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5182, !srcloc !5185
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !5186, !srcloc !5189
  unreachable, !dbg !5190

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5191
  store i32 %45, i32* %index.i, align 4, !dbg !5192
  %46 = load i32, i32* %index.i, align 4, !dbg !5193
  %tobool.i = icmp ne i32 %46, 0, !dbg !5193
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5195

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5196
  br label %kmalloc.exit, !dbg !5196

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5197
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5198
  %and.i.i = and i32 %48, 17, !dbg !5198
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5198
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5198
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5198
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5198
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5200

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5201
  br label %kmalloc_type.exit.i, !dbg !5201

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5202
  %and2.i.i = and i32 %49, 1, !dbg !5203
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5202
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5202
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5202
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5204
  br label %kmalloc_type.exit.i, !dbg !5204

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5205
  %idxprom.i = zext i32 %51 to i64, !dbg !5206
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5206
  %52 = load i32, i32* %index.i, align 4, !dbg !5207
  %idxprom6.i = zext i32 %52 to i64, !dbg !5206
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5206
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5206
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5208
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5209
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5210
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5211
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5212
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5212
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5212
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5212
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5212
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4973
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5213
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5214
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5215
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5216
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5217
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5218
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5219
  store i8* %62, i8** %retval.i, align 8, !dbg !5220
  br label %kmalloc.exit, !dbg !5220

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5221
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5222
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5223
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5223
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5223
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5223
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5223
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5224
  br label %kmalloc.exit, !dbg !5224

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5225
  ret i8* %65, !dbg !5226
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @power_supply_dev_release(%struct.device* %dev) #0 !dbg !5227 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.power_supply*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !5230, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5232, metadata !DIExpression()), !dbg !5234
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5234
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5234
  store i8* %1, i8** %__mptr, align 8, !dbg !5234
  br label %do.body, !dbg !5234

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5235

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5234
  %add.ptr = getelementptr i8, i8* %2, i64 -56, !dbg !5234
  %3 = bitcast i8* %add.ptr to %struct.power_supply*, !dbg !5234
  store %struct.power_supply* %3, %struct.power_supply** %tmp, align 8, !dbg !5235
  %4 = load %struct.power_supply*, %struct.power_supply** %tmp, align 8, !dbg !5234
  store %struct.power_supply* %4, %struct.power_supply** %psy, align 8, !dbg !5231
  %5 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5237
  %6 = bitcast %struct.power_supply* %5 to i8*, !dbg !5237
  call void @kfree(i8* %6) #11, !dbg !5238
  ret void, !dbg !5239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5240 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5241, metadata !DIExpression()), !dbg !5242
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5245
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5246
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5247
  store i8* %0, i8** %driver_data, align 8, !dbg !5248
  ret void, !dbg !5249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_of_node(%struct.fwnode_handle* %fwnode) #0 !dbg !5250 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5253
  %1 = bitcast %struct.fwnode_handle* %0 to i8*, !dbg !5253
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #11, !dbg !5254
  br i1 %call, label %land.end, label %land.rhs, !dbg !5255

land.rhs:                                         ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5256
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %2, i32 0, i32 1, !dbg !5257
  %3 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8, !dbg !5257
  %cmp = icmp eq %struct.fwnode_operations* %3, @of_fwnode_ops, !dbg !5258
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5259
  ret i1 %4, !dbg !5260
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !5261 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  ret void, !dbg !5268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5269 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  br label %do.body, !dbg !5275

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5276

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5278

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5276

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5280
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5280
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5280
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5280
  br label %do.end3, !dbg !5280

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5276

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5282
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5283
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5284
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5285
  ret void, !dbg !5286
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @power_supply_changed_work(%struct.work_struct* %work) #0 !dbg !5287 {
entry:
  %lock.addr.i78 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i78, metadata !2534, metadata !DIExpression()), !dbg !5288
  %lock.addr.i73 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i73, metadata !2524, metadata !DIExpression()), !dbg !5297
  %flags.addr.i74 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i74, metadata !2532, metadata !DIExpression()), !dbg !5299
  %tmp.i75 = alloca i32, align 4
  %tmp8.i76 = alloca i32, align 4
  %lock.addr.i71 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i71, metadata !2524, metadata !DIExpression()), !dbg !5300
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2532, metadata !DIExpression()), !dbg !5302
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2534, metadata !DIExpression()), !dbg !5303
  %work.addr = alloca %struct.work_struct*, align 8
  %flags = alloca i64, align 8
  %psy = alloca %struct.power_supply*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.power_supply*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %__dummy32 = alloca i64, align 8
  %__dummy233 = alloca i64, align 8
  %tmp36 = alloca i32, align 4
  %__dummy40 = alloca i64, align 8
  %__dummy241 = alloca i64, align 8
  %tmp44 = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5312, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !5314, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5316, metadata !DIExpression()), !dbg !5318
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5318
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !5318
  store i8* %1, i8** %__mptr, align 8, !dbg !5318
  br label %do.body, !dbg !5318

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5319

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5318
  %add.ptr = getelementptr i8, i8* %2, i64 -752, !dbg !5318
  %3 = bitcast i8* %add.ptr to %struct.power_supply*, !dbg !5318
  store %struct.power_supply* %3, %struct.power_supply** %tmp, align 8, !dbg !5319
  %4 = load %struct.power_supply*, %struct.power_supply** %tmp, align 8, !dbg !5318
  store %struct.power_supply* %4, %struct.power_supply** %psy, align 8, !dbg !5315
  br label %do.body1, !dbg !5321

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !5322

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5323, metadata !DIExpression()), !dbg !5325
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5326, metadata !DIExpression()), !dbg !5325
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5325
  %conv = zext i1 %cmp to i32, !dbg !5325
  store i32 1, i32* %tmp3, align 4, !dbg !5325
  %5 = load i32, i32* %tmp3, align 4, !dbg !5325
  br label %do.body4, !dbg !5327

do.body4:                                         ; preds = %do.body2
  br label %do.body5, !dbg !5328

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !5329

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !5331, metadata !DIExpression()), !dbg !5334
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !5335, metadata !DIExpression()), !dbg !5334
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !5334
  %conv10 = zext i1 %cmp9 to i32, !dbg !5334
  store i32 1, i32* %tmp11, align 4, !dbg !5334
  %6 = load i32, i32* %tmp11, align 4, !dbg !5334
  %call = call i64 @arch_local_irq_save() #11, !dbg !5336
  store i64 %call, i64* %flags, align 8, !dbg !5336
  br label %do.end12, !dbg !5336

do.end12:                                         ; preds = %do.body6
  br label %do.end13, !dbg !5329

do.end13:                                         ; preds = %do.end12
  br label %do.body14, !dbg !5328

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5337, !srcloc !5338
  br label %do.body15, !dbg !5337

do.body15:                                        ; preds = %do.body14
  %7 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5339
  %changed_lock = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 10, !dbg !5339
  store %struct.spinlock* %changed_lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5340
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5341
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !5341
  br label %do.end17, !dbg !5339

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !5337

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5328

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5327

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5322

do.end21:                                         ; preds = %do.end20
  %10 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5342
  %changed = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 11, !dbg !5342
  %11 = load i8, i8* %changed, align 8, !dbg !5342
  %tobool = trunc i8 %11 to i1, !dbg !5342
  %lnot = xor i1 %tobool, true, !dbg !5342
  %lnot22 = xor i1 %lnot, true, !dbg !5342
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !5342
  %conv23 = sext i32 %lnot.ext to i64, !dbg !5342
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !5342
  br i1 %tobool24, label %if.then, label %if.end, !dbg !5343

if.then:                                          ; preds = %do.end21
  %12 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5344
  %changed25 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 11, !dbg !5345
  store i8 0, i8* %changed25, align 8, !dbg !5346
  %13 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5347
  %changed_lock26 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 10, !dbg !5348
  %14 = load i64, i64* %flags, align 8, !dbg !5349
  store %struct.spinlock* %changed_lock26, %struct.spinlock** %lock.addr.i73, align 8
  store i64 %14, i64* %flags.addr.i74, align 8
  call void @llvm.dbg.declare(metadata !339, metadata !2580, metadata !DIExpression()) #9, !dbg !5350
  call void @llvm.dbg.declare(metadata !339, metadata !2584, metadata !DIExpression()) #9, !dbg !5350
  store i32 1, i32* %tmp.i75, align 4, !dbg !5350
  %15 = load i32, i32* %tmp.i75, align 4, !dbg !5350
  call void @llvm.dbg.declare(metadata !339, metadata !2585, metadata !DIExpression()) #9, !dbg !5351
  call void @llvm.dbg.declare(metadata !339, metadata !2591, metadata !DIExpression()) #9, !dbg !5351
  store i32 1, i32* %tmp8.i76, align 4, !dbg !5351
  %16 = load i32, i32* %tmp8.i76, align 4, !dbg !5351
  %17 = load i64, i64* %flags.addr.i74, align 8, !dbg !5352
  call void @arch_local_irq_restore(i64 %17) #12, !dbg !5352
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5353, !srcloc !2595
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i73, align 8, !dbg !5354
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !5354
  %rlock.i77 = bitcast %union.anon* %19 to %struct.raw_spinlock*, !dbg !5354
  %20 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !5355
  %21 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5356
  %22 = bitcast %struct.power_supply* %21 to i8*, !dbg !5356
  %call27 = call i32 @class_for_each_device(%struct.class* %20, %struct.device* null, i8* %22, i32 (%struct.device*, i8*)* @__power_supply_changed_work) #11, !dbg !5357
  %23 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5358
  call void @power_supply_update_leds(%struct.power_supply* %23) #11, !dbg !5359
  %24 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5360
  %25 = bitcast %struct.power_supply* %24 to i8*, !dbg !5360
  %call28 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* @power_supply_notifier, i64 0, i8* %25) #11, !dbg !5361
  %26 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5362
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %26, i32 0, i32 7, !dbg !5363
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !5364
  %call29 = call i32 @kobject_uevent(%struct.kobject* %kobj, i32 2) #11, !dbg !5365
  br label %do.body30, !dbg !5366

do.body30:                                        ; preds = %if.then
  br label %do.body31, !dbg !5367

do.body31:                                        ; preds = %do.body30
  call void @llvm.dbg.declare(metadata i64* %__dummy32, metadata !5368, metadata !DIExpression()), !dbg !5370
  call void @llvm.dbg.declare(metadata i64* %__dummy233, metadata !5371, metadata !DIExpression()), !dbg !5370
  %cmp34 = icmp eq i64* %__dummy32, %__dummy233, !dbg !5370
  %conv35 = zext i1 %cmp34 to i32, !dbg !5370
  store i32 1, i32* %tmp36, align 4, !dbg !5370
  %27 = load i32, i32* %tmp36, align 4, !dbg !5370
  br label %do.body37, !dbg !5372

do.body37:                                        ; preds = %do.body31
  br label %do.body38, !dbg !5373

do.body38:                                        ; preds = %do.body37
  br label %do.body39, !dbg !5374

do.body39:                                        ; preds = %do.body38
  call void @llvm.dbg.declare(metadata i64* %__dummy40, metadata !5376, metadata !DIExpression()), !dbg !5379
  call void @llvm.dbg.declare(metadata i64* %__dummy241, metadata !5380, metadata !DIExpression()), !dbg !5379
  %cmp42 = icmp eq i64* %__dummy40, %__dummy241, !dbg !5379
  %conv43 = zext i1 %cmp42 to i32, !dbg !5379
  store i32 1, i32* %tmp44, align 4, !dbg !5379
  %28 = load i32, i32* %tmp44, align 4, !dbg !5379
  %call45 = call i64 @arch_local_irq_save() #11, !dbg !5381
  store i64 %call45, i64* %flags, align 8, !dbg !5381
  br label %do.end46, !dbg !5381

do.end46:                                         ; preds = %do.body39
  br label %do.end47, !dbg !5374

do.end47:                                         ; preds = %do.end46
  br label %do.body48, !dbg !5373

do.body48:                                        ; preds = %do.end47
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5382, !srcloc !5383
  br label %do.body49, !dbg !5382

do.body49:                                        ; preds = %do.body48
  %29 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5384
  %changed_lock50 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %29, i32 0, i32 10, !dbg !5384
  store %struct.spinlock* %changed_lock50, %struct.spinlock** %lock.addr.i78, align 8
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i78, align 8, !dbg !5385
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !5386
  %rlock.i79 = bitcast %union.anon* %31 to %struct.raw_spinlock*, !dbg !5386
  br label %do.end52, !dbg !5384

do.end52:                                         ; preds = %do.body49
  br label %do.end53, !dbg !5382

do.end53:                                         ; preds = %do.end52
  br label %do.end54, !dbg !5373

do.end54:                                         ; preds = %do.end53
  br label %do.end55, !dbg !5372

do.end55:                                         ; preds = %do.end54
  br label %do.end56, !dbg !5367

do.end56:                                         ; preds = %do.end55
  br label %if.end, !dbg !5387

if.end:                                           ; preds = %do.end56, %do.end21
  %32 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5388
  %changed57 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %32, i32 0, i32 11, !dbg !5388
  %33 = load i8, i8* %changed57, align 8, !dbg !5388
  %tobool58 = trunc i8 %33 to i1, !dbg !5388
  %lnot59 = xor i1 %tobool58, true, !dbg !5388
  %lnot61 = xor i1 %lnot59, true, !dbg !5388
  %lnot63 = xor i1 %lnot61, true, !dbg !5388
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !5388
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !5388
  %tobool66 = icmp ne i64 %conv65, 0, !dbg !5388
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !5390

if.then67:                                        ; preds = %if.end
  %34 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5391
  %dev68 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %34, i32 0, i32 7, !dbg !5392
  call void @pm_relax(%struct.device* %dev68) #11, !dbg !5393
  br label %if.end69, !dbg !5393

if.end69:                                         ; preds = %if.then67, %if.end
  %35 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5394
  %changed_lock70 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %35, i32 0, i32 10, !dbg !5395
  %36 = load i64, i64* %flags, align 8, !dbg !5396
  store %struct.spinlock* %changed_lock70, %struct.spinlock** %lock.addr.i71, align 8
  store i64 %36, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !339, metadata !2580, metadata !DIExpression()) #9, !dbg !5397
  call void @llvm.dbg.declare(metadata !339, metadata !2584, metadata !DIExpression()) #9, !dbg !5397
  store i32 1, i32* %tmp.i, align 4, !dbg !5397
  %37 = load i32, i32* %tmp.i, align 4, !dbg !5397
  call void @llvm.dbg.declare(metadata !339, metadata !2585, metadata !DIExpression()) #9, !dbg !5398
  call void @llvm.dbg.declare(metadata !339, metadata !2591, metadata !DIExpression()) #9, !dbg !5398
  store i32 1, i32* %tmp8.i, align 4, !dbg !5398
  %38 = load i32, i32* %tmp8.i, align 4, !dbg !5398
  %39 = load i64, i64* %flags.addr.i, align 8, !dbg !5399
  call void @arch_local_irq_restore(i64 %39) #12, !dbg !5399
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5400, !srcloc !2595
  %40 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i71, align 8, !dbg !5401
  %41 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %40, i32 0, i32 0, !dbg !5401
  %rlock.i72 = bitcast %union.anon* %41 to %struct.raw_spinlock*, !dbg !5401
  ret void, !dbg !5402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @power_supply_deferred_register_work(%struct.work_struct* %work) #0 !dbg !5403 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.power_supply*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5404, metadata !DIExpression()), !dbg !5405
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !5406, metadata !DIExpression()), !dbg !5407
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5408, metadata !DIExpression()), !dbg !5410
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5410
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !5410
  store i8* %1, i8** %__mptr, align 8, !dbg !5410
  br label %do.body, !dbg !5410

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5411

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5410
  %add.ptr = getelementptr i8, i8* %2, i64 -784, !dbg !5410
  %3 = bitcast i8* %add.ptr to %struct.power_supply*, !dbg !5410
  store %struct.power_supply* %3, %struct.power_supply** %tmp, align 8, !dbg !5411
  %4 = load %struct.power_supply*, %struct.power_supply** %tmp, align 8, !dbg !5410
  store %struct.power_supply* %4, %struct.power_supply** %psy, align 8, !dbg !5407
  %5 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5413
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 7, !dbg !5415
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5416
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5416
  %tobool = icmp ne %struct.device* %6, null, !dbg !5413
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5417

if.then:                                          ; preds = %do.end
  br label %while.cond, !dbg !5418

while.cond:                                       ; preds = %if.end, %if.then
  %7 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5420
  %dev1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 7, !dbg !5421
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 1, !dbg !5422
  %8 = load %struct.device*, %struct.device** %parent2, align 8, !dbg !5422
  %mutex = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 9, !dbg !5423
  %call = call i32 @mutex_trylock(%struct.mutex* %mutex) #11, !dbg !5424
  %tobool3 = icmp ne i32 %call, 0, !dbg !5425
  %lnot = xor i1 %tobool3, true, !dbg !5425
  br i1 %lnot, label %while.body, label %while.end, !dbg !5418

while.body:                                       ; preds = %while.cond
  %9 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5426
  %removing = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 13, !dbg !5429
  %10 = load i8, i8* %removing, align 2, !dbg !5429
  %tobool4 = trunc i8 %10 to i1, !dbg !5429
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5430

if.then5:                                         ; preds = %while.body
  br label %if.end14, !dbg !5431

if.end:                                           ; preds = %while.body
  call void @msleep(i32 10) #11, !dbg !5432
  br label %while.cond, !dbg !5418, !llvm.loop !5433

while.end:                                        ; preds = %while.cond
  br label %if.end6, !dbg !5435

if.end6:                                          ; preds = %while.end, %do.end
  %11 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5436
  call void @power_supply_changed(%struct.power_supply* %11) #11, !dbg !5437
  %12 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5438
  %dev7 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 7, !dbg !5440
  %parent8 = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 1, !dbg !5441
  %13 = load %struct.device*, %struct.device** %parent8, align 8, !dbg !5441
  %tobool9 = icmp ne %struct.device* %13, null, !dbg !5438
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !5442

if.then10:                                        ; preds = %if.end6
  %14 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5443
  %dev11 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %14, i32 0, i32 7, !dbg !5444
  %parent12 = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 1, !dbg !5445
  %15 = load %struct.device*, %struct.device** %parent12, align 8, !dbg !5445
  %mutex13 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 9, !dbg !5446
  call void @mutex_unlock(%struct.mutex* %mutex13) #11, !dbg !5447
  br label %if.end14, !dbg !5447

if.end14:                                         ; preds = %if.then5, %if.then10, %if.end6
  ret void, !dbg !5448
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_check_supplies(%struct.power_supply* %psy) #0 !dbg !5449 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %np = alloca %struct.device_node*, align 8
  %cnt = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !5454, metadata !DIExpression()), !dbg !5455
  store i32 0, i32* %cnt, align 4, !dbg !5455
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5456
  %supplied_from = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 3, !dbg !5458
  %1 = load i8**, i8*** %supplied_from, align 8, !dbg !5458
  %tobool = icmp ne i8** %1, null, !dbg !5456
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5459

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5460
  %num_supplies = getelementptr inbounds %struct.power_supply, %struct.power_supply* %2, i32 0, i32 4, !dbg !5461
  %3 = load i64, i64* %num_supplies, align 8, !dbg !5461
  %cmp = icmp ugt i64 %3, 0, !dbg !5462
  br i1 %cmp, label %if.then, label %if.end, !dbg !5463

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5465
  %of_node = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 5, !dbg !5467
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5467
  %tobool1 = icmp ne %struct.device_node* %5, null, !dbg !5465
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5468

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5469
  br label %return, !dbg !5469

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !5470

do.body:                                          ; preds = %do.cond, %if.end3
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5471, metadata !DIExpression()), !dbg !5473
  %6 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5474
  %of_node4 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %6, i32 0, i32 5, !dbg !5475
  %7 = load %struct.device_node*, %struct.device_node** %of_node4, align 8, !dbg !5475
  %8 = load i32, i32* %cnt, align 4, !dbg !5476
  %inc = add i32 %8, 1, !dbg !5476
  store i32 %inc, i32* %cnt, align 4, !dbg !5476
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32 %8) #11, !dbg !5477
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !5478
  %9 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5479
  %tobool5 = icmp ne %struct.device_node* %9, null, !dbg !5479
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5481

if.then6:                                         ; preds = %do.body
  br label %do.end, !dbg !5482

if.end7:                                          ; preds = %do.body
  %10 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5483
  %call8 = call i32 @power_supply_find_supply_from_node(%struct.device_node* %10) #11, !dbg !5484
  store i32 %call8, i32* %ret, align 4, !dbg !5485
  %11 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5486
  call void @of_node_put(%struct.device_node* %11) #11, !dbg !5487
  %12 = load i32, i32* %ret, align 4, !dbg !5488
  %tobool9 = icmp ne i32 %12, 0, !dbg !5488
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5490

if.then10:                                        ; preds = %if.end7
  %13 = load i32, i32* %ret, align 4, !dbg !5491
  store i32 %13, i32* %retval, align 4, !dbg !5493
  br label %return, !dbg !5493

if.end11:                                         ; preds = %if.end7
  br label %do.cond, !dbg !5494

do.cond:                                          ; preds = %if.end11
  %14 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5495
  %tobool12 = icmp ne %struct.device_node* %14, null, !dbg !5494
  br i1 %tobool12, label %do.body, label %do.end, !dbg !5494, !llvm.loop !5496

do.end:                                           ; preds = %do.cond, %if.then6
  %15 = load i32, i32* %cnt, align 4, !dbg !5498
  %cmp13 = icmp eq i32 %15, 1, !dbg !5500
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !5501

if.then14:                                        ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5502
  br label %return, !dbg !5502

if.end15:                                         ; preds = %do.end
  %16 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5503
  %dev = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 7, !dbg !5504
  %call16 = call i8* @devm_kzalloc(%struct.device* %dev, i64 8, i32 3264) #11, !dbg !5505
  %17 = bitcast i8* %call16 to i8**, !dbg !5505
  %18 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5506
  %supplied_from17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %18, i32 0, i32 3, !dbg !5507
  store i8** %17, i8*** %supplied_from17, align 8, !dbg !5508
  %19 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5509
  %supplied_from18 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %19, i32 0, i32 3, !dbg !5511
  %20 = load i8**, i8*** %supplied_from18, align 8, !dbg !5511
  %tobool19 = icmp ne i8** %20, null, !dbg !5509
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !5512

if.then20:                                        ; preds = %if.end15
  store i32 -12, i32* %retval, align 4, !dbg !5513
  br label %return, !dbg !5513

if.end21:                                         ; preds = %if.end15
  %21 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5514
  %dev22 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %21, i32 0, i32 7, !dbg !5515
  %22 = load i32, i32* %cnt, align 4, !dbg !5516
  %sub = sub i32 %22, 1, !dbg !5517
  %conv = sext i32 %sub to i64, !dbg !5516
  %call23 = call i8* @devm_kcalloc(%struct.device* %dev22, i64 %conv, i64 8, i32 3264) #11, !dbg !5518
  %23 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5519
  %supplied_from24 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %23, i32 0, i32 3, !dbg !5520
  %24 = load i8**, i8*** %supplied_from24, align 8, !dbg !5520
  store i8* %call23, i8** %24, align 8, !dbg !5521
  %25 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5522
  %supplied_from25 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %25, i32 0, i32 3, !dbg !5524
  %26 = load i8**, i8*** %supplied_from25, align 8, !dbg !5524
  %27 = load i8*, i8** %26, align 8, !dbg !5525
  %tobool26 = icmp ne i8* %27, null, !dbg !5525
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !5526

if.then27:                                        ; preds = %if.end21
  store i32 -12, i32* %retval, align 4, !dbg !5527
  br label %return, !dbg !5527

if.end28:                                         ; preds = %if.end21
  %28 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5528
  %call29 = call i32 @power_supply_populate_supplied_from(%struct.power_supply* %28) #11, !dbg !5529
  store i32 %call29, i32* %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

return:                                           ; preds = %if.end28, %if.then27, %if.then20, %if.then14, %if.then10, %if.then2, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !5531
  ret i32 %29, !dbg !5531
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @psy_register_thermal(%struct.power_supply* %psy) #0 !dbg !5532 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5535, metadata !DIExpression()), !dbg !5536
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5537, metadata !DIExpression()), !dbg !5538
  %0 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5539
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %0, i32 0, i32 0, !dbg !5541
  %1 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !5541
  %no_thermal = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %1, i32 0, i32 11, !dbg !5542
  %2 = load i8, i8* %no_thermal, align 8, !dbg !5542
  %tobool = trunc i8 %2 to i1, !dbg !5542
  br i1 %tobool, label %if.then, label %if.end, !dbg !5543

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5544
  br label %return, !dbg !5544

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5545
  br label %for.cond, !dbg !5547

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !5548
  %conv = sext i32 %3 to i64, !dbg !5548
  %4 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5550
  %desc1 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 0, !dbg !5551
  %5 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc1, align 8, !dbg !5551
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %5, i32 0, i32 5, !dbg !5552
  %6 = load i64, i64* %num_properties, align 8, !dbg !5552
  %cmp = icmp ult i64 %conv, %6, !dbg !5553
  br i1 %cmp, label %for.body, label %for.end, !dbg !5554

for.body:                                         ; preds = %for.cond
  %7 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5555
  %desc3 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 0, !dbg !5558
  %8 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc3, align 8, !dbg !5558
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %8, i32 0, i32 4, !dbg !5559
  %9 = load i32*, i32** %properties, align 8, !dbg !5559
  %10 = load i32, i32* %i, align 4, !dbg !5560
  %idxprom = sext i32 %10 to i64, !dbg !5555
  %arrayidx = getelementptr i32, i32* %9, i64 %idxprom, !dbg !5555
  %11 = load i32, i32* %arrayidx, align 4, !dbg !5555
  %cmp4 = icmp eq i32 %11, 51, !dbg !5561
  br i1 %cmp4, label %if.then6, label %if.end21, !dbg !5562

if.then6:                                         ; preds = %for.body
  %12 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5563
  %desc7 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 0, !dbg !5565
  %13 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc7, align 8, !dbg !5565
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %13, i32 0, i32 0, !dbg !5566
  %14 = load i8*, i8** %name, align 8, !dbg !5566
  %15 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5567
  %16 = bitcast %struct.power_supply* %15 to i8*, !dbg !5567
  %call = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* %14, i32 0, i32 0, i8* %16, %struct.thermal_zone_device_ops* @psy_tzd_ops, %struct.thermal_zone_params* null, i32 0, i32 0) #11, !dbg !5568
  %17 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5569
  %tzd = getelementptr inbounds %struct.power_supply, %struct.power_supply* %17, i32 0, i32 15, !dbg !5570
  store %struct.thermal_zone_device* %call, %struct.thermal_zone_device** %tzd, align 8, !dbg !5571
  %18 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5572
  %tzd8 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %18, i32 0, i32 15, !dbg !5574
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd8, align 8, !dbg !5574
  %20 = bitcast %struct.thermal_zone_device* %19 to i8*, !dbg !5572
  %call9 = call zeroext i1 @IS_ERR(i8* %20) #11, !dbg !5575
  br i1 %call9, label %if.then10, label %if.end14, !dbg !5576

if.then10:                                        ; preds = %if.then6
  %21 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5577
  %tzd11 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %21, i32 0, i32 15, !dbg !5578
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd11, align 8, !dbg !5578
  %23 = bitcast %struct.thermal_zone_device* %22 to i8*, !dbg !5577
  %call12 = call i64 @PTR_ERR(i8* %23) #11, !dbg !5579
  %conv13 = trunc i64 %call12 to i32, !dbg !5579
  store i32 %conv13, i32* %retval, align 4, !dbg !5580
  br label %return, !dbg !5580

if.end14:                                         ; preds = %if.then6
  %24 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5581
  %tzd15 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 15, !dbg !5582
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd15, align 8, !dbg !5582
  %call16 = call i32 @thermal_zone_device_enable(%struct.thermal_zone_device* %25) #11, !dbg !5583
  store i32 %call16, i32* %ret, align 4, !dbg !5584
  %26 = load i32, i32* %ret, align 4, !dbg !5585
  %tobool17 = icmp ne i32 %26, 0, !dbg !5585
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !5587

if.then18:                                        ; preds = %if.end14
  %27 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5588
  %tzd19 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %27, i32 0, i32 15, !dbg !5589
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd19, align 8, !dbg !5589
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %28) #11, !dbg !5590
  br label %if.end20, !dbg !5590

if.end20:                                         ; preds = %if.then18, %if.end14
  %29 = load i32, i32* %ret, align 4, !dbg !5591
  store i32 %29, i32* %retval, align 4, !dbg !5592
  br label %return, !dbg !5592

if.end21:                                         ; preds = %for.body
  br label %for.inc, !dbg !5593

for.inc:                                          ; preds = %if.end21
  %30 = load i32, i32* %i, align 4, !dbg !5594
  %inc = add i32 %30, 1, !dbg !5594
  store i32 %inc, i32* %i, align 4, !dbg !5594
  br label %for.cond, !dbg !5595, !llvm.loop !5596

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5598
  br label %return, !dbg !5598

return:                                           ; preds = %for.end, %if.end20, %if.then10, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !5599
  ret i32 %31, !dbg !5599
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @psy_register_cooler(%struct.power_supply* %psy) #0 !dbg !5600 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca %struct.power_supply*, align 8
  %i = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5603, metadata !DIExpression()), !dbg !5604
  store i32 0, i32* %i, align 4, !dbg !5605
  br label %for.cond, !dbg !5607

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5608
  %conv = sext i32 %0 to i64, !dbg !5608
  %1 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5610
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %1, i32 0, i32 0, !dbg !5611
  %2 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !5611
  %num_properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %2, i32 0, i32 5, !dbg !5612
  %3 = load i64, i64* %num_properties, align 8, !dbg !5612
  %cmp = icmp ult i64 %conv, %3, !dbg !5613
  br i1 %cmp, label %for.body, label %for.end, !dbg !5614

for.body:                                         ; preds = %for.cond
  %4 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5615
  %desc2 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 0, !dbg !5618
  %5 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc2, align 8, !dbg !5618
  %properties = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %5, i32 0, i32 4, !dbg !5619
  %6 = load i32*, i32** %properties, align 8, !dbg !5619
  %7 = load i32, i32* %i, align 4, !dbg !5620
  %idxprom = sext i32 %7 to i64, !dbg !5615
  %arrayidx = getelementptr i32, i32* %6, i64 %idxprom, !dbg !5615
  %8 = load i32, i32* %arrayidx, align 4, !dbg !5615
  %cmp3 = icmp eq i32 %8, 33, !dbg !5621
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5622

if.then:                                          ; preds = %for.body
  %9 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5623
  %desc5 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0, !dbg !5625
  %10 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc5, align 8, !dbg !5625
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %10, i32 0, i32 0, !dbg !5626
  %11 = load i8*, i8** %name, align 8, !dbg !5626
  %12 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5627
  %13 = bitcast %struct.power_supply* %12 to i8*, !dbg !5627
  %call = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* %11, i8* %13, %struct.thermal_cooling_device_ops* @psy_tcd_ops) #11, !dbg !5628
  %14 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5629
  %tcd = getelementptr inbounds %struct.power_supply, %struct.power_supply* %14, i32 0, i32 16, !dbg !5630
  store %struct.thermal_cooling_device* %call, %struct.thermal_cooling_device** %tcd, align 8, !dbg !5631
  %15 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5632
  %tcd6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 16, !dbg !5633
  %16 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tcd6, align 8, !dbg !5633
  %17 = bitcast %struct.thermal_cooling_device* %16 to i8*, !dbg !5632
  %call7 = call i32 @PTR_ERR_OR_ZERO(i8* %17) #11, !dbg !5634
  store i32 %call7, i32* %retval, align 4, !dbg !5635
  br label %return, !dbg !5635

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5636

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !dbg !5637
  %inc = add i32 %18, 1, !dbg !5637
  store i32 %inc, i32* %i, align 4, !dbg !5637
  br label %for.cond, !dbg !5638, !llvm.loop !5639

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5641
  br label %return, !dbg !5641

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5642
  ret i32 %19, !dbg !5642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_create_triggers(%struct.power_supply* %psy) #0 !dbg !5643 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  ret i32 0, !dbg !5646
}

; Function Attrs: noredzone
declare dso_local i32 @power_supply_add_hwmon_sysfs(%struct.power_supply*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #0 !dbg !5647 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !5653, metadata !DIExpression()), !dbg !5654
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !5657
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !5658
  %2 = load i64, i64* %delay.addr, align 8, !dbg !5659
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #11, !dbg !5660
  ret i1 %call, !dbg !5661
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #10

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5662 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5666, metadata !DIExpression()), !dbg !5671
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5673, metadata !DIExpression()), !dbg !5674
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5675, metadata !DIExpression()), !dbg !5676
  %0 = load i64, i64* %size.addr, align 8, !dbg !5677
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5679
  br i1 %1, label %if.then, label %if.end447, !dbg !5680

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5681
  %tobool = icmp ne i64 %2, 0, !dbg !5681
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5684

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5685
  br label %return, !dbg !5685

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5686
  %cmp = icmp ult i64 %3, 4096, !dbg !5688
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5689

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5690
  br label %return, !dbg !5690

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub = sub i64 %4, 1, !dbg !5691
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5691
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5691

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub4 = sub i64 %6, 1, !dbg !5691
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5691
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5691

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub6 = sub i64 %8, 1, !dbg !5691
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5691
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5691

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5691

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub9 = sub i64 %9, 1, !dbg !5691
  %and = and i64 %sub9, -9223372036854775808, !dbg !5691
  %tobool10 = icmp ne i64 %and, 0, !dbg !5691
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5691

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5691

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub13 = sub i64 %10, 1, !dbg !5691
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5691
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5691
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5691

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5691

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub18 = sub i64 %11, 1, !dbg !5691
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5691
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5691
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5691

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5691

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub23 = sub i64 %12, 1, !dbg !5691
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5691
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5691
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5691

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5691

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub28 = sub i64 %13, 1, !dbg !5691
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5691
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5691
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5691

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5691

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub33 = sub i64 %14, 1, !dbg !5691
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5691
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5691
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5691

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5691

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub38 = sub i64 %15, 1, !dbg !5691
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5691
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5691
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5691

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5691

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub43 = sub i64 %16, 1, !dbg !5691
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5691
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5691
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5691

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5691

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub48 = sub i64 %17, 1, !dbg !5691
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5691
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5691
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5691

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5691

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub53 = sub i64 %18, 1, !dbg !5691
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5691
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5691
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5691

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5691

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub58 = sub i64 %19, 1, !dbg !5691
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5691
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5691
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5691

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5691

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub63 = sub i64 %20, 1, !dbg !5691
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5691
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5691
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5691

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5691

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub68 = sub i64 %21, 1, !dbg !5691
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5691
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5691
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5691

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5691

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub73 = sub i64 %22, 1, !dbg !5691
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5691
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5691
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5691

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5691

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub78 = sub i64 %23, 1, !dbg !5691
  %and79 = and i64 %sub78, 562949953421312, !dbg !5691
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5691
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5691

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5691

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub83 = sub i64 %24, 1, !dbg !5691
  %and84 = and i64 %sub83, 281474976710656, !dbg !5691
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5691
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5691

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5691

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub88 = sub i64 %25, 1, !dbg !5691
  %and89 = and i64 %sub88, 140737488355328, !dbg !5691
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5691
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5691

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5691

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub93 = sub i64 %26, 1, !dbg !5691
  %and94 = and i64 %sub93, 70368744177664, !dbg !5691
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5691
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5691

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5691

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub98 = sub i64 %27, 1, !dbg !5691
  %and99 = and i64 %sub98, 35184372088832, !dbg !5691
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5691
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5691

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5691

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub103 = sub i64 %28, 1, !dbg !5691
  %and104 = and i64 %sub103, 17592186044416, !dbg !5691
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5691
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5691

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5691

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub108 = sub i64 %29, 1, !dbg !5691
  %and109 = and i64 %sub108, 8796093022208, !dbg !5691
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5691
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5691

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5691

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub113 = sub i64 %30, 1, !dbg !5691
  %and114 = and i64 %sub113, 4398046511104, !dbg !5691
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5691
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5691

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5691

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub118 = sub i64 %31, 1, !dbg !5691
  %and119 = and i64 %sub118, 2199023255552, !dbg !5691
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5691
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5691

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5691

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub123 = sub i64 %32, 1, !dbg !5691
  %and124 = and i64 %sub123, 1099511627776, !dbg !5691
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5691
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5691

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5691

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub128 = sub i64 %33, 1, !dbg !5691
  %and129 = and i64 %sub128, 549755813888, !dbg !5691
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5691
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5691

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5691

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub133 = sub i64 %34, 1, !dbg !5691
  %and134 = and i64 %sub133, 274877906944, !dbg !5691
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5691
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5691

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5691

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub138 = sub i64 %35, 1, !dbg !5691
  %and139 = and i64 %sub138, 137438953472, !dbg !5691
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5691
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5691

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5691

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub143 = sub i64 %36, 1, !dbg !5691
  %and144 = and i64 %sub143, 68719476736, !dbg !5691
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5691
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5691

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5691

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub148 = sub i64 %37, 1, !dbg !5691
  %and149 = and i64 %sub148, 34359738368, !dbg !5691
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5691
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5691

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5691

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub153 = sub i64 %38, 1, !dbg !5691
  %and154 = and i64 %sub153, 17179869184, !dbg !5691
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5691
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5691

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5691

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub158 = sub i64 %39, 1, !dbg !5691
  %and159 = and i64 %sub158, 8589934592, !dbg !5691
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5691
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5691

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5691

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub163 = sub i64 %40, 1, !dbg !5691
  %and164 = and i64 %sub163, 4294967296, !dbg !5691
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5691
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5691

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5691

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub168 = sub i64 %41, 1, !dbg !5691
  %and169 = and i64 %sub168, 2147483648, !dbg !5691
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5691
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5691

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5691

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub173 = sub i64 %42, 1, !dbg !5691
  %and174 = and i64 %sub173, 1073741824, !dbg !5691
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5691
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5691

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5691

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub178 = sub i64 %43, 1, !dbg !5691
  %and179 = and i64 %sub178, 536870912, !dbg !5691
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5691
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5691

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5691

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub183 = sub i64 %44, 1, !dbg !5691
  %and184 = and i64 %sub183, 268435456, !dbg !5691
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5691
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5691

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5691

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub188 = sub i64 %45, 1, !dbg !5691
  %and189 = and i64 %sub188, 134217728, !dbg !5691
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5691
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5691

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5691

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub193 = sub i64 %46, 1, !dbg !5691
  %and194 = and i64 %sub193, 67108864, !dbg !5691
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5691
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5691

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5691

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub198 = sub i64 %47, 1, !dbg !5691
  %and199 = and i64 %sub198, 33554432, !dbg !5691
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5691
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5691

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5691

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub203 = sub i64 %48, 1, !dbg !5691
  %and204 = and i64 %sub203, 16777216, !dbg !5691
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5691
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5691

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5691

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub208 = sub i64 %49, 1, !dbg !5691
  %and209 = and i64 %sub208, 8388608, !dbg !5691
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5691
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5691

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5691

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub213 = sub i64 %50, 1, !dbg !5691
  %and214 = and i64 %sub213, 4194304, !dbg !5691
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5691
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5691

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5691

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub218 = sub i64 %51, 1, !dbg !5691
  %and219 = and i64 %sub218, 2097152, !dbg !5691
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5691
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5691

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5691

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub223 = sub i64 %52, 1, !dbg !5691
  %and224 = and i64 %sub223, 1048576, !dbg !5691
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5691
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5691

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5691

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub228 = sub i64 %53, 1, !dbg !5691
  %and229 = and i64 %sub228, 524288, !dbg !5691
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5691
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5691

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5691

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub233 = sub i64 %54, 1, !dbg !5691
  %and234 = and i64 %sub233, 262144, !dbg !5691
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5691
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5691

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5691

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub238 = sub i64 %55, 1, !dbg !5691
  %and239 = and i64 %sub238, 131072, !dbg !5691
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5691
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5691

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5691

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub243 = sub i64 %56, 1, !dbg !5691
  %and244 = and i64 %sub243, 65536, !dbg !5691
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5691
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5691

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5691

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub248 = sub i64 %57, 1, !dbg !5691
  %and249 = and i64 %sub248, 32768, !dbg !5691
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5691
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5691

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5691

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub253 = sub i64 %58, 1, !dbg !5691
  %and254 = and i64 %sub253, 16384, !dbg !5691
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5691
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5691

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5691

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub258 = sub i64 %59, 1, !dbg !5691
  %and259 = and i64 %sub258, 8192, !dbg !5691
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5691
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5691

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5691

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub263 = sub i64 %60, 1, !dbg !5691
  %and264 = and i64 %sub263, 4096, !dbg !5691
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5691
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5691

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5691

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub268 = sub i64 %61, 1, !dbg !5691
  %and269 = and i64 %sub268, 2048, !dbg !5691
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5691
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5691

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5691

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub273 = sub i64 %62, 1, !dbg !5691
  %and274 = and i64 %sub273, 1024, !dbg !5691
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5691
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5691

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5691

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub278 = sub i64 %63, 1, !dbg !5691
  %and279 = and i64 %sub278, 512, !dbg !5691
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5691
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5691

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5691

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub283 = sub i64 %64, 1, !dbg !5691
  %and284 = and i64 %sub283, 256, !dbg !5691
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5691
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5691

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5691

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub288 = sub i64 %65, 1, !dbg !5691
  %and289 = and i64 %sub288, 128, !dbg !5691
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5691
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5691

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5691

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub293 = sub i64 %66, 1, !dbg !5691
  %and294 = and i64 %sub293, 64, !dbg !5691
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5691
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5691

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5691

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub298 = sub i64 %67, 1, !dbg !5691
  %and299 = and i64 %sub298, 32, !dbg !5691
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5691
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5691

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5691

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub303 = sub i64 %68, 1, !dbg !5691
  %and304 = and i64 %sub303, 16, !dbg !5691
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5691
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5691

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5691

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub308 = sub i64 %69, 1, !dbg !5691
  %and309 = and i64 %sub308, 8, !dbg !5691
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5691
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5691

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5691

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub313 = sub i64 %70, 1, !dbg !5691
  %and314 = and i64 %sub313, 4, !dbg !5691
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5691
  %71 = zext i1 %tobool315 to i64, !dbg !5691
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5691
  br label %cond.end, !dbg !5691

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5691
  br label %cond.end317, !dbg !5691

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5691
  br label %cond.end319, !dbg !5691

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5691
  br label %cond.end321, !dbg !5691

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5691
  br label %cond.end323, !dbg !5691

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5691
  br label %cond.end325, !dbg !5691

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5691
  br label %cond.end327, !dbg !5691

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5691
  br label %cond.end329, !dbg !5691

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5691
  br label %cond.end331, !dbg !5691

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5691
  br label %cond.end333, !dbg !5691

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5691
  br label %cond.end335, !dbg !5691

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5691
  br label %cond.end337, !dbg !5691

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5691
  br label %cond.end339, !dbg !5691

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5691
  br label %cond.end341, !dbg !5691

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5691
  br label %cond.end343, !dbg !5691

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5691
  br label %cond.end345, !dbg !5691

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5691
  br label %cond.end347, !dbg !5691

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5691
  br label %cond.end349, !dbg !5691

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5691
  br label %cond.end351, !dbg !5691

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5691
  br label %cond.end353, !dbg !5691

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5691
  br label %cond.end355, !dbg !5691

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5691
  br label %cond.end357, !dbg !5691

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5691
  br label %cond.end359, !dbg !5691

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5691
  br label %cond.end361, !dbg !5691

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5691
  br label %cond.end363, !dbg !5691

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5691
  br label %cond.end365, !dbg !5691

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5691
  br label %cond.end367, !dbg !5691

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5691
  br label %cond.end369, !dbg !5691

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5691
  br label %cond.end371, !dbg !5691

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5691
  br label %cond.end373, !dbg !5691

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5691
  br label %cond.end375, !dbg !5691

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5691
  br label %cond.end377, !dbg !5691

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5691
  br label %cond.end379, !dbg !5691

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5691
  br label %cond.end381, !dbg !5691

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5691
  br label %cond.end383, !dbg !5691

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5691
  br label %cond.end385, !dbg !5691

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5691
  br label %cond.end387, !dbg !5691

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5691
  br label %cond.end389, !dbg !5691

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5691
  br label %cond.end391, !dbg !5691

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5691
  br label %cond.end393, !dbg !5691

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5691
  br label %cond.end395, !dbg !5691

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5691
  br label %cond.end397, !dbg !5691

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5691
  br label %cond.end399, !dbg !5691

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5691
  br label %cond.end401, !dbg !5691

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5691
  br label %cond.end403, !dbg !5691

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5691
  br label %cond.end405, !dbg !5691

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5691
  br label %cond.end407, !dbg !5691

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5691
  br label %cond.end409, !dbg !5691

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5691
  br label %cond.end411, !dbg !5691

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5691
  br label %cond.end413, !dbg !5691

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5691
  br label %cond.end415, !dbg !5691

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5691
  br label %cond.end417, !dbg !5691

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5691
  br label %cond.end419, !dbg !5691

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5691
  br label %cond.end421, !dbg !5691

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5691
  br label %cond.end423, !dbg !5691

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5691
  br label %cond.end425, !dbg !5691

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5691
  br label %cond.end427, !dbg !5691

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5691
  br label %cond.end429, !dbg !5691

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5691
  br label %cond.end431, !dbg !5691

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5691
  br label %cond.end433, !dbg !5691

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5691
  br label %cond.end435, !dbg !5691

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5691
  br label %cond.end437, !dbg !5691

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5691
  br label %cond.end440, !dbg !5691

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5691

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5691
  br label %cond.end444, !dbg !5691

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5691
  %sub443 = sub i64 %72, 1, !dbg !5691
  %call = call i32 @__ilog2_u64(i64 %sub443) #14, !dbg !5691
  br label %cond.end444, !dbg !5691

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5691
  %sub446 = sub i32 %cond445, 12, !dbg !5692
  %add = add i32 %sub446, 1, !dbg !5693
  store i32 %add, i32* %retval, align 4, !dbg !5694
  br label %return, !dbg !5694

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5695
  %dec = add i64 %73, -1, !dbg !5695
  store i64 %dec, i64* %size.addr, align 8, !dbg !5695
  %74 = load i64, i64* %size.addr, align 8, !dbg !5696
  %shr = lshr i64 %74, 12, !dbg !5696
  store i64 %shr, i64* %size.addr, align 8, !dbg !5696
  %75 = load i64, i64* %size.addr, align 8, !dbg !5697
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5674
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5698
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5699
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !5698, !srcloc !5700
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5698
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5701
  %add.i = add i32 %79, 1, !dbg !5702
  store i32 %add.i, i32* %retval, align 4, !dbg !5703
  br label %return, !dbg !5703

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5704
  ret i32 %80, !dbg !5704
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5705 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5666, metadata !DIExpression()), !dbg !5709
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5673, metadata !DIExpression()), !dbg !5711
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5712, metadata !DIExpression()), !dbg !5713
  %0 = load i64, i64* %n.addr, align 8, !dbg !5714
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5711
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5715
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5716
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !5715, !srcloc !5700
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5715
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5717
  %add.i = add i32 %4, 1, !dbg !5718
  %sub = sub i32 %add.i, 1, !dbg !5719
  ret i32 %sub, !dbg !5720
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5721 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5726, metadata !DIExpression()), !dbg !5727
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5728, metadata !DIExpression()), !dbg !5729
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5730, metadata !DIExpression()), !dbg !5731
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5732
  ret i8* %0, !dbg !5733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__power_supply_changed_work(%struct.device* %dev, i8* %data) #0 !dbg !5734 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %pst = alloca %struct.power_supply*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5737, metadata !DIExpression()), !dbg !5738
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5741
  %1 = bitcast i8* %0 to %struct.power_supply*, !dbg !5741
  store %struct.power_supply* %1, %struct.power_supply** %psy, align 8, !dbg !5740
  call void @llvm.dbg.declare(metadata %struct.power_supply** %pst, metadata !5742, metadata !DIExpression()), !dbg !5743
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5744
  %call = call i8* @dev_get_drvdata(%struct.device* %2) #11, !dbg !5745
  %3 = bitcast i8* %call to %struct.power_supply*, !dbg !5745
  store %struct.power_supply* %3, %struct.power_supply** %pst, align 8, !dbg !5743
  %4 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5746
  %5 = load %struct.power_supply*, %struct.power_supply** %pst, align 8, !dbg !5748
  %call1 = call zeroext i1 @__power_supply_is_supplied_by(%struct.power_supply* %4, %struct.power_supply* %5) #11, !dbg !5749
  br i1 %call1, label %if.then, label %if.end7, !dbg !5750

if.then:                                          ; preds = %entry
  %6 = load %struct.power_supply*, %struct.power_supply** %pst, align 8, !dbg !5751
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %6, i32 0, i32 0, !dbg !5754
  %7 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !5754
  %external_power_changed = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %7, i32 0, i32 9, !dbg !5755
  %external_power_changed2 = bitcast {}** %external_power_changed to void (%struct.power_supply*)**, !dbg !5755
  %8 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %external_power_changed2, align 8, !dbg !5755
  %tobool = icmp ne void (%struct.power_supply*)* %8, null, !dbg !5751
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5756

if.then3:                                         ; preds = %if.then
  %9 = load %struct.power_supply*, %struct.power_supply** %pst, align 8, !dbg !5757
  %desc4 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0, !dbg !5758
  %10 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc4, align 8, !dbg !5758
  %external_power_changed5 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %10, i32 0, i32 9, !dbg !5759
  %external_power_changed6 = bitcast {}** %external_power_changed5 to void (%struct.power_supply*)**, !dbg !5759
  %11 = load void (%struct.power_supply*)*, void (%struct.power_supply*)** %external_power_changed6, align 8, !dbg !5759
  %12 = load %struct.power_supply*, %struct.power_supply** %pst, align 8, !dbg !5760
  call void %11(%struct.power_supply* %12) #11, !dbg !5757
  br label %if.end, !dbg !5757

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end7, !dbg !5761

if.end7:                                          ; preds = %if.end, %entry
  ret i32 0, !dbg !5762
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @power_supply_update_leds(%struct.power_supply* %psy) #0 !dbg !5763 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  ret void, !dbg !5766
}

; Function Attrs: noredzone
declare dso_local i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head*, i64, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #2

; Function Attrs: noredzone
declare dso_local void @pm_relax(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @mutex_trylock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_find_supply_from_node(%struct.device_node* %supply_node) #0 !dbg !5767 {
entry:
  %supply_node.addr = alloca %struct.device_node*, align 8
  %error = alloca i32, align 4
  store %struct.device_node* %supply_node, %struct.device_node** %supply_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %supply_node.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !5774
  %1 = load %struct.device_node*, %struct.device_node** %supply_node.addr, align 8, !dbg !5775
  %2 = bitcast %struct.device_node* %1 to i8*, !dbg !5775
  %call = call i32 @class_for_each_device(%struct.class* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @__power_supply_find_supply_from_node) #11, !dbg !5776
  store i32 %call, i32* %error, align 4, !dbg !5777
  %3 = load i32, i32* %error, align 4, !dbg !5778
  %tobool = icmp ne i32 %3, 0, !dbg !5778
  br i1 %tobool, label %cond.true, label %cond.false2, !dbg !5778

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %error, align 4, !dbg !5779
  %cmp = icmp eq i32 %4, 1, !dbg !5780
  br i1 %cmp, label %cond.true1, label %cond.false, !dbg !5779

cond.true1:                                       ; preds = %cond.true
  br label %cond.end, !dbg !5779

cond.false:                                       ; preds = %cond.true
  %5 = load i32, i32* %error, align 4, !dbg !5781
  br label %cond.end, !dbg !5779

cond.end:                                         ; preds = %cond.false, %cond.true1
  %cond = phi i32 [ 0, %cond.true1 ], [ %5, %cond.false ], !dbg !5779
  br label %cond.end3, !dbg !5778

cond.false2:                                      ; preds = %entry
  br label %cond.end3, !dbg !5778

cond.end3:                                        ; preds = %cond.false2, %cond.end
  %cond4 = phi i32 [ %cond, %cond.end ], [ -517, %cond.false2 ], !dbg !5778
  ret i32 %cond4, !dbg !5782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !5783 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5792
  %1 = load i64, i64* %size.addr, align 8, !dbg !5793
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5794
  %or = or i32 %2, 256, !dbg !5795
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #11, !dbg !5796
  ret i8* %call, !dbg !5797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_populate_supplied_from(%struct.power_supply* %psy) #0 !dbg !5798 {
entry:
  %psy.addr = alloca %struct.power_supply*, align 8
  %error = alloca i32, align 4
  store %struct.power_supply* %psy, %struct.power_supply** %psy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5801, metadata !DIExpression()), !dbg !5802
  %0 = load %struct.class*, %struct.class** @power_supply_class, align 8, !dbg !5803
  %1 = load %struct.power_supply*, %struct.power_supply** %psy.addr, align 8, !dbg !5804
  %2 = bitcast %struct.power_supply* %1 to i8*, !dbg !5804
  %call = call i32 @class_for_each_device(%struct.class* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @__power_supply_populate_supplied_from) #11, !dbg !5805
  store i32 %call, i32* %error, align 4, !dbg !5806
  %3 = load i32, i32* %error, align 4, !dbg !5807
  ret i32 %3, !dbg !5808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__power_supply_find_supply_from_node(%struct.device* %dev, i8* %data) #0 !dbg !5809 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %np = alloca %struct.device_node*, align 8
  %epsy = alloca %struct.power_supply*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5810, metadata !DIExpression()), !dbg !5811
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !5814, metadata !DIExpression()), !dbg !5815
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5816
  %1 = bitcast i8* %0 to %struct.device_node*, !dbg !5816
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !5815
  call void @llvm.dbg.declare(metadata %struct.power_supply** %epsy, metadata !5817, metadata !DIExpression()), !dbg !5818
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5819
  %call = call i8* @dev_get_drvdata(%struct.device* %2) #11, !dbg !5820
  %3 = bitcast i8* %call to %struct.power_supply*, !dbg !5820
  store %struct.power_supply* %3, %struct.power_supply** %epsy, align 8, !dbg !5818
  %4 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !5821
  %of_node = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 5, !dbg !5823
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5823
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5824
  %cmp = icmp eq %struct.device_node* %5, %6, !dbg !5825
  br i1 %cmp, label %if.then, label %if.end, !dbg !5826

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5828
  br label %return, !dbg !5828

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5829
  ret i32 %7, !dbg !5829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__power_supply_populate_supplied_from(%struct.device* %dev, i8* %data) #0 !dbg !5830 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %epsy = alloca %struct.power_supply*, align 8
  %np = alloca %struct.device_node*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !5835, metadata !DIExpression()), !dbg !5836
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5837
  %1 = bitcast i8* %0 to %struct.power_supply*, !dbg !5837
  store %struct.power_supply* %1, %struct.power_supply** %psy, align 8, !dbg !5836
  call void @llvm.dbg.declare(metadata %struct.power_supply** %epsy, metadata !5838, metadata !DIExpression()), !dbg !5839
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5840
  %call = call i8* @dev_get_drvdata(%struct.device* %2) #11, !dbg !5841
  %3 = bitcast i8* %call to %struct.power_supply*, !dbg !5841
  store %struct.power_supply* %3, %struct.power_supply** %epsy, align 8, !dbg !5839
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !5842, metadata !DIExpression()), !dbg !5843
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5844, metadata !DIExpression()), !dbg !5845
  store i32 0, i32* %i, align 4, !dbg !5845
  br label %do.body, !dbg !5846

do.body:                                          ; preds = %do.cond, %entry
  %4 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5847
  %of_node = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 5, !dbg !5849
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5849
  %6 = load i32, i32* %i, align 4, !dbg !5850
  %inc = add i32 %6, 1, !dbg !5850
  store i32 %inc, i32* %i, align 4, !dbg !5850
  %call1 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32 %6) #11, !dbg !5851
  store %struct.device_node* %call1, %struct.device_node** %np, align 8, !dbg !5852
  %7 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5853
  %tobool = icmp ne %struct.device_node* %7, null, !dbg !5853
  br i1 %tobool, label %if.end, label %if.then, !dbg !5855

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !5856

if.end:                                           ; preds = %do.body
  %8 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5857
  %9 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !5859
  %of_node2 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 5, !dbg !5860
  %10 = load %struct.device_node*, %struct.device_node** %of_node2, align 8, !dbg !5860
  %cmp = icmp eq %struct.device_node* %8, %10, !dbg !5861
  br i1 %cmp, label %if.then3, label %if.end10, !dbg !5862

if.then3:                                         ; preds = %if.end
  %11 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5863
  %dev4 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 7, !dbg !5863
  %12 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5863
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 0, !dbg !5863
  %13 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !5863
  %name = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %13, i32 0, i32 0, !dbg !5863
  %14 = load i8*, i8** %name, align 8, !dbg !5863
  %15 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !5863
  %desc5 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 0, !dbg !5863
  %16 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc5, align 8, !dbg !5863
  %name6 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %16, i32 0, i32 0, !dbg !5863
  %17 = load i8*, i8** %name6, align 8, !dbg !5863
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i8* %14, i8* %17) #13, !dbg !5863
  %18 = load %struct.power_supply*, %struct.power_supply** %epsy, align 8, !dbg !5865
  %desc7 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %18, i32 0, i32 0, !dbg !5866
  %19 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc7, align 8, !dbg !5866
  %name8 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %19, i32 0, i32 0, !dbg !5867
  %20 = load i8*, i8** %name8, align 8, !dbg !5867
  %21 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5868
  %supplied_from = getelementptr inbounds %struct.power_supply, %struct.power_supply* %21, i32 0, i32 3, !dbg !5869
  %22 = load i8**, i8*** %supplied_from, align 8, !dbg !5869
  %23 = load i32, i32* %i, align 4, !dbg !5870
  %sub = sub i32 %23, 1, !dbg !5871
  %idxprom = sext i32 %sub to i64, !dbg !5868
  %arrayidx = getelementptr i8*, i8** %22, i64 %idxprom, !dbg !5868
  store i8* %20, i8** %arrayidx, align 8, !dbg !5872
  %24 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5873
  %num_supplies = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 4, !dbg !5874
  %25 = load i64, i64* %num_supplies, align 8, !dbg !5875
  %inc9 = add i64 %25, 1, !dbg !5875
  store i64 %inc9, i64* %num_supplies, align 8, !dbg !5875
  %26 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5876
  call void @of_node_put(%struct.device_node* %26) #11, !dbg !5877
  br label %do.end, !dbg !5878

if.end10:                                         ; preds = %if.end
  %27 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5879
  call void @of_node_put(%struct.device_node* %27) #11, !dbg !5880
  br label %do.cond, !dbg !5881

do.cond:                                          ; preds = %if.end10
  %28 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5882
  %tobool11 = icmp ne %struct.device_node* %28, null, !dbg !5881
  br i1 %tobool11, label %do.body, label %do.end, !dbg !5881, !llvm.loop !5883

do.end:                                           ; preds = %do.cond, %if.then3, %if.then
  ret i32 0, !dbg !5885
}

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, i8*, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5886 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5891
  %1 = ptrtoint i8* %0 to i64, !dbg !5892
  ret i64 %1, !dbg !5893
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_enable(%struct.thermal_zone_device*) #2

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_unregister(%struct.thermal_zone_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @power_supply_read_temp(%struct.thermal_zone_device* %tzd, i32* %temp) #0 !dbg !5894 {
entry:
  %retval = alloca i32, align 4
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %val = alloca %union.power_supply_propval, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !5899, metadata !DIExpression()), !dbg !5900
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %val, metadata !5901, metadata !DIExpression()), !dbg !5902
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5903, metadata !DIExpression()), !dbg !5904
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5905, metadata !DIExpression()), !dbg !5907
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !5907
  %cmp = icmp eq %struct.thermal_zone_device* %0, null, !dbg !5907
  %lnot = xor i1 %cmp, true, !dbg !5907
  %lnot1 = xor i1 %lnot, true, !dbg !5907
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5907
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5907
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !5908
  %tobool = icmp ne i32 %1, 0, !dbg !5908
  %lnot2 = xor i1 %tobool, true, !dbg !5908
  %lnot4 = xor i1 %lnot2, true, !dbg !5908
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5908
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5908
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5908
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5907

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5908

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !5910

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !5912

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !5910

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i32 943, i32 2305, i64 12) #9, !dbg !5914, !srcloc !5916
  br label %do.end9, !dbg !5914

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #9, !dbg !5917, !srcloc !5919
  br label %do.body10, !dbg !5910

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5920

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !5910

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !5910

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5907
  %tobool13 = icmp ne i32 %2, 0, !dbg !5907
  %lnot14 = xor i1 %tobool13, true, !dbg !5907
  %lnot16 = xor i1 %lnot14, true, !dbg !5907
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5907
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5907
  store i64 %conv18, i64* %tmp, align 8, !dbg !5908
  %3 = load i64, i64* %tmp, align 8, !dbg !5907
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !5922
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %4, i32 0, i32 8, !dbg !5923
  %5 = load i8*, i8** %devdata, align 8, !dbg !5923
  %6 = bitcast i8* %5 to %struct.power_supply*, !dbg !5922
  store %struct.power_supply* %6, %struct.power_supply** %psy, align 8, !dbg !5924
  %7 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5925
  %call = call i32 @power_supply_get_property(%struct.power_supply* %7, i32 51, %union.power_supply_propval* %val) #11, !dbg !5926
  store i32 %call, i32* %ret, align 4, !dbg !5927
  %8 = load i32, i32* %ret, align 4, !dbg !5928
  %tobool19 = icmp ne i32 %8, 0, !dbg !5928
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5930

if.then20:                                        ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !5931
  store i32 %9, i32* %retval, align 4, !dbg !5932
  br label %return, !dbg !5932

if.end21:                                         ; preds = %if.end
  %intval = bitcast %union.power_supply_propval* %val to i32*, !dbg !5933
  %10 = load i32, i32* %intval, align 8, !dbg !5933
  %mul = mul i32 %10, 100, !dbg !5934
  %11 = load i32*, i32** %temp.addr, align 8, !dbg !5935
  store i32 %mul, i32* %11, align 4, !dbg !5936
  %12 = load i32, i32* %ret, align 4, !dbg !5937
  store i32 %12, i32* %retval, align 4, !dbg !5938
  br label %return, !dbg !5938

return:                                           ; preds = %if.end21, %if.then20
  %13 = load i32, i32* %retval, align 4, !dbg !5939
  ret i32 %13, !dbg !5939
}

; Function Attrs: noredzone
declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, i8*, %struct.thermal_cooling_device_ops*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #0 !dbg !5940 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5943, metadata !DIExpression()), !dbg !5944
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5945
  %call = call zeroext i1 @IS_ERR(i8* %0) #11, !dbg !5947
  br i1 %call, label %if.then, label %if.else, !dbg !5948

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !5949
  %call1 = call i64 @PTR_ERR(i8* %1) #11, !dbg !5950
  %conv = trunc i64 %call1 to i32, !dbg !5950
  store i32 %conv, i32* %retval, align 4, !dbg !5951
  br label %return, !dbg !5951

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5952
  br label %return, !dbg !5952

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5953
  ret i32 %2, !dbg !5953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ps_get_max_charge_cntl_limit(%struct.thermal_cooling_device* %tcd, i64* %state) #0 !dbg !5954 {
entry:
  %retval = alloca i32, align 4
  %tcd.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %val = alloca %union.power_supply_propval, align 8
  %ret = alloca i32, align 4
  store %struct.thermal_cooling_device* %tcd, %struct.thermal_cooling_device** %tcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %tcd.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  store i64* %state, i64** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %state.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !5959, metadata !DIExpression()), !dbg !5960
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %val, metadata !5961, metadata !DIExpression()), !dbg !5962
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5963, metadata !DIExpression()), !dbg !5964
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tcd.addr, align 8, !dbg !5965
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !5966
  %1 = load i8*, i8** %devdata, align 8, !dbg !5966
  %2 = bitcast i8* %1 to %struct.power_supply*, !dbg !5965
  store %struct.power_supply* %2, %struct.power_supply** %psy, align 8, !dbg !5967
  %3 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5968
  %call = call i32 @power_supply_get_property(%struct.power_supply* %3, i32 34, %union.power_supply_propval* %val) #11, !dbg !5969
  store i32 %call, i32* %ret, align 4, !dbg !5970
  %4 = load i32, i32* %ret, align 4, !dbg !5971
  %tobool = icmp ne i32 %4, 0, !dbg !5971
  br i1 %tobool, label %if.then, label %if.end, !dbg !5973

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5974
  store i32 %5, i32* %retval, align 4, !dbg !5975
  br label %return, !dbg !5975

if.end:                                           ; preds = %entry
  %intval = bitcast %union.power_supply_propval* %val to i32*, !dbg !5976
  %6 = load i32, i32* %intval, align 8, !dbg !5976
  %conv = sext i32 %6 to i64, !dbg !5977
  %7 = load i64*, i64** %state.addr, align 8, !dbg !5978
  store i64 %conv, i64* %7, align 8, !dbg !5979
  %8 = load i32, i32* %ret, align 4, !dbg !5980
  store i32 %8, i32* %retval, align 4, !dbg !5981
  br label %return, !dbg !5981

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5982
  ret i32 %9, !dbg !5982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ps_get_cur_charge_cntl_limit(%struct.thermal_cooling_device* %tcd, i64* %state) #0 !dbg !5983 {
entry:
  %retval = alloca i32, align 4
  %tcd.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64*, align 8
  %psy = alloca %struct.power_supply*, align 8
  %val = alloca %union.power_supply_propval, align 8
  %ret = alloca i32, align 4
  store %struct.thermal_cooling_device* %tcd, %struct.thermal_cooling_device** %tcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %tcd.addr, metadata !5984, metadata !DIExpression()), !dbg !5985
  store i64* %state, i64** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %state.addr, metadata !5986, metadata !DIExpression()), !dbg !5987
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !5988, metadata !DIExpression()), !dbg !5989
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %val, metadata !5990, metadata !DIExpression()), !dbg !5991
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5992, metadata !DIExpression()), !dbg !5993
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tcd.addr, align 8, !dbg !5994
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !5995
  %1 = load i8*, i8** %devdata, align 8, !dbg !5995
  %2 = bitcast i8* %1 to %struct.power_supply*, !dbg !5994
  store %struct.power_supply* %2, %struct.power_supply** %psy, align 8, !dbg !5996
  %3 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !5997
  %call = call i32 @power_supply_get_property(%struct.power_supply* %3, i32 33, %union.power_supply_propval* %val) #11, !dbg !5998
  store i32 %call, i32* %ret, align 4, !dbg !5999
  %4 = load i32, i32* %ret, align 4, !dbg !6000
  %tobool = icmp ne i32 %4, 0, !dbg !6000
  br i1 %tobool, label %if.then, label %if.end, !dbg !6002

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !6003
  store i32 %5, i32* %retval, align 4, !dbg !6004
  br label %return, !dbg !6004

if.end:                                           ; preds = %entry
  %intval = bitcast %union.power_supply_propval* %val to i32*, !dbg !6005
  %6 = load i32, i32* %intval, align 8, !dbg !6005
  %conv = sext i32 %6 to i64, !dbg !6006
  %7 = load i64*, i64** %state.addr, align 8, !dbg !6007
  store i64 %conv, i64* %7, align 8, !dbg !6008
  %8 = load i32, i32* %ret, align 4, !dbg !6009
  store i32 %8, i32* %retval, align 4, !dbg !6010
  br label %return, !dbg !6010

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !6011
  ret i32 %9, !dbg !6011
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ps_set_cur_charge_cntl_limit(%struct.thermal_cooling_device* %tcd, i64 %state) #0 !dbg !6012 {
entry:
  %tcd.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64, align 8
  %psy = alloca %struct.power_supply*, align 8
  %val = alloca %union.power_supply_propval, align 8
  %ret = alloca i32, align 4
  store %struct.thermal_cooling_device* %tcd, %struct.thermal_cooling_device** %tcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %tcd.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  store i64 %state, i64* %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %state.addr, metadata !6015, metadata !DIExpression()), !dbg !6016
  call void @llvm.dbg.declare(metadata %struct.power_supply** %psy, metadata !6017, metadata !DIExpression()), !dbg !6018
  call void @llvm.dbg.declare(metadata %union.power_supply_propval* %val, metadata !6019, metadata !DIExpression()), !dbg !6020
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6021, metadata !DIExpression()), !dbg !6022
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %tcd.addr, align 8, !dbg !6023
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !6024
  %1 = load i8*, i8** %devdata, align 8, !dbg !6024
  %2 = bitcast i8* %1 to %struct.power_supply*, !dbg !6023
  store %struct.power_supply* %2, %struct.power_supply** %psy, align 8, !dbg !6025
  %3 = load i64, i64* %state.addr, align 8, !dbg !6026
  %conv = trunc i64 %3 to i32, !dbg !6026
  %intval = bitcast %union.power_supply_propval* %val to i32*, !dbg !6027
  store i32 %conv, i32* %intval, align 8, !dbg !6028
  %4 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !6029
  %desc = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 0, !dbg !6030
  %5 = load %struct.power_supply_desc*, %struct.power_supply_desc** %desc, align 8, !dbg !6030
  %set_property = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %5, i32 0, i32 7, !dbg !6031
  %6 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %set_property, align 8, !dbg !6031
  %7 = load %struct.power_supply*, %struct.power_supply** %psy, align 8, !dbg !6032
  %call = call i32 %6(%struct.power_supply* %7, i32 33, %union.power_supply_propval* %val) #11, !dbg !6029
  store i32 %call, i32* %ret, align 4, !dbg !6033
  %8 = load i32, i32* %ret, align 4, !dbg !6034
  ret i32 %8, !dbg !6035
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !6036 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  %0 = load i32, i32* %m.addr, align 4, !dbg !6039
  %conv = zext i32 %0 to i64, !dbg !6039
  %add = add i64 %conv, 4, !dbg !6040
  %sub = sub i64 %add, 1, !dbg !6041
  %div = sdiv i64 %sub, 4, !dbg !6042
  ret i64 %div, !dbg !6043
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noredzone
declare dso_local void @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #2

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @power_supply_uevent(%struct.device*, %struct.kobj_uevent_env*) #2

; Function Attrs: noredzone
declare dso_local void @power_supply_init_attrs(%struct.device_type*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone nounwind readnone }
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2517}
!llvm.module.flags = !{!2518, !2519, !2520, !2521}
!llvm.ident = !{!2522}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "power_supply_notifier", scope: !2, file: !3, line: 30, type: !2502, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !244, globals: !2459, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/power/supply/power_supply_core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !22, !34, !111, !116, !122, !128, !134, !141, !149, !155, !160, !166, !174, !185, !190, !223, !230, !233}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_type", file: !6, line: 176, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/power_supply.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!9 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_BATTERY", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UPS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_MAINS", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_DCP", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_CDP", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_ACA", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_TYPE_C", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD_DRP", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_APPLE_BRICK_ID", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_WIRELESS", value: 12, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_usb_type", file: !6, line: 192, baseType: !7, size: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!24 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_UNKNOWN", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_SDP", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_DCP", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_CDP", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_ACA", value: 4, isUnsigned: true)
!29 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_C", value: 5, isUnsigned: true)
!30 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD", value: 6, isUnsigned: true)
!31 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_DRP", value: 7, isUnsigned: true)
!32 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_PPS", value: 8, isUnsigned: true)
!33 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID", value: 9, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_property", file: !6, line: 96, baseType: !7, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!36 = !DIEnumerator(name: "POWER_SUPPLY_PROP_STATUS", value: 0, isUnsigned: true)
!37 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TYPE", value: 1, isUnsigned: true)
!38 = !DIEnumerator(name: "POWER_SUPPLY_PROP_HEALTH", value: 2, isUnsigned: true)
!39 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRESENT", value: 3, isUnsigned: true)
!40 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ONLINE", value: 4, isUnsigned: true)
!41 = !DIEnumerator(name: "POWER_SUPPLY_PROP_AUTHENTIC", value: 5, isUnsigned: true)
!42 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TECHNOLOGY", value: 6, isUnsigned: true)
!43 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CYCLE_COUNT", value: 7, isUnsigned: true)
!44 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX", value: 8, isUnsigned: true)
!45 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN", value: 9, isUnsigned: true)
!46 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN", value: 10, isUnsigned: true)
!47 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN", value: 11, isUnsigned: true)
!48 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_NOW", value: 12, isUnsigned: true)
!49 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_AVG", value: 13, isUnsigned: true)
!50 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_OCV", value: 14, isUnsigned: true)
!51 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_BOOT", value: 15, isUnsigned: true)
!52 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_MAX", value: 16, isUnsigned: true)
!53 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_NOW", value: 17, isUnsigned: true)
!54 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_AVG", value: 18, isUnsigned: true)
!55 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_BOOT", value: 19, isUnsigned: true)
!56 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_NOW", value: 20, isUnsigned: true)
!57 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_AVG", value: 21, isUnsigned: true)
!58 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN", value: 22, isUnsigned: true)
!59 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN", value: 23, isUnsigned: true)
!60 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL", value: 24, isUnsigned: true)
!61 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY", value: 25, isUnsigned: true)
!62 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_NOW", value: 26, isUnsigned: true)
!63 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_AVG", value: 27, isUnsigned: true)
!64 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_COUNTER", value: 28, isUnsigned: true)
!65 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT", value: 29, isUnsigned: true)
!66 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX", value: 30, isUnsigned: true)
!67 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE", value: 31, isUnsigned: true)
!68 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX", value: 32, isUnsigned: true)
!69 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT", value: 33, isUnsigned: true)
!70 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX", value: 34, isUnsigned: true)
!71 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD", value: 35, isUnsigned: true)
!72 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD", value: 36, isUnsigned: true)
!73 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT", value: 37, isUnsigned: true)
!74 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT", value: 38, isUnsigned: true)
!75 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_POWER_LIMIT", value: 39, isUnsigned: true)
!76 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN", value: 40, isUnsigned: true)
!77 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN", value: 41, isUnsigned: true)
!78 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL", value: 42, isUnsigned: true)
!79 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY", value: 43, isUnsigned: true)
!80 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_NOW", value: 44, isUnsigned: true)
!81 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_AVG", value: 45, isUnsigned: true)
!82 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY", value: 46, isUnsigned: true)
!83 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN", value: 47, isUnsigned: true)
!84 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX", value: 48, isUnsigned: true)
!85 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ERROR_MARGIN", value: 49, isUnsigned: true)
!86 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_LEVEL", value: 50, isUnsigned: true)
!87 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP", value: 51, isUnsigned: true)
!88 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MAX", value: 52, isUnsigned: true)
!89 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MIN", value: 53, isUnsigned: true)
!90 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MIN", value: 54, isUnsigned: true)
!91 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MAX", value: 55, isUnsigned: true)
!92 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT", value: 56, isUnsigned: true)
!93 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN", value: 57, isUnsigned: true)
!94 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX", value: 58, isUnsigned: true)
!95 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW", value: 59, isUnsigned: true)
!96 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG", value: 60, isUnsigned: true)
!97 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_NOW", value: 61, isUnsigned: true)
!98 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_AVG", value: 62, isUnsigned: true)
!99 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TYPE", value: 63, isUnsigned: true)
!100 = !DIEnumerator(name: "POWER_SUPPLY_PROP_USB_TYPE", value: 64, isUnsigned: true)
!101 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SCOPE", value: 65, isUnsigned: true)
!102 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRECHARGE_CURRENT", value: 66, isUnsigned: true)
!103 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT", value: 67, isUnsigned: true)
!104 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CALIBRATE", value: 68, isUnsigned: true)
!105 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_YEAR", value: 69, isUnsigned: true)
!106 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_MONTH", value: 70, isUnsigned: true)
!107 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_DAY", value: 71, isUnsigned: true)
!108 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MODEL_NAME", value: 72, isUnsigned: true)
!109 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURER", value: 73, isUnsigned: true)
!110 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SERIAL_NUMBER", value: 74, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !112, line: 65, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115}
!114 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !117, line: 16, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !123, line: 26, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !129, line: 44, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !135, line: 343, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !142, line: 524, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!147 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!148 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !142, line: 502, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154}
!151 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !156, line: 7, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !156, line: 12, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!163 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !167, line: 40, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!173 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !167, line: 49, baseType: !7, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184}
!176 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!180 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!181 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!182 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!183 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!184 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 10, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !189}
!188 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !191, line: 30, baseType: !192, size: 64, elements: !193)
!191 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!194 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!195 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!196 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!197 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!198 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!199 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!200 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!201 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!202 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!203 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!204 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!205 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!206 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!207 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!208 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!209 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!210 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!211 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!212 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!213 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!214 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!215 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!216 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!217 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!218 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!219 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!220 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!221 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!222 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !224, line: 305, baseType: !7, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !227, !228, !229}
!226 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!227 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!228 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!229 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_notifier_events", file: !6, line: 205, baseType: !7, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIEnumerator(name: "PSY_EVENT_PROP_CHANGED", value: 0, isUnsigned: true)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !234, line: 53, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243}
!236 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!237 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!238 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!239 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!240 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!241 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!242 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!243 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!244 = !{!245, !247, !248, !250, !252, !253, !256, !257, !2225, !2457, !366, !192, !1865}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !246, line: 148, baseType: !7)
!246 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!247 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !249, line: 27, baseType: !7)
!249 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !251, line: 32, baseType: !248)
!251 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!252 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !247)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !259, line: 51, size: 1344, elements: !260)
!259 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !265, !269, !270, !2209, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !259, line: 52, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !258, file: !259, line: 53, baseType: !266, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !259, line: 28, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !268, line: 21, baseType: !248)
!268 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !258, file: !259, line: 54, baseType: !262, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !258, file: !259, line: 55, baseType: !271, size: 192, offset: 192)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !272, line: 17, size: 192, elements: !273)
!272 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274, !276, !2208}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !271, file: !272, line: 18, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !271, file: !272, line: 19, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !272, line: 110, size: 1152, elements: !280)
!280 = !{!281, !285, !289, !297, !2150, !2154, !2158, !2163, !2167, !2168, !2172, !2176, !2180, !2191, !2192, !2193, !2194, !2204}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !279, file: !272, line: 111, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!275, !275}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !279, file: !272, line: 112, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !275}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !279, file: !272, line: 113, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !295}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !246, line: 30, baseType: !294)
!294 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !279, file: !272, line: 114, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !295, !303}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !135, line: 461, size: 5568, elements: !306)
!306 = !{!307, !1787, !1789, !1792, !1793, !1844, !1941, !1942, !1943, !1944, !1945, !1954, !2059, !2072, !2075, !2076, !2080, !2082, !2083, !2084, !2088, !2094, !2095, !2098, !2099, !2100, !2103, !2104, !2105, !2106, !2138, !2139, !2140, !2143, !2146, !2147, !2148, !2149}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !305, file: !135, line: 462, baseType: !308, size: 512)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !234, line: 64, size: 512, elements: !309)
!309 = !{!310, !311, !317, !319, !379, !1625, !1777, !1782, !1783, !1784, !1785, !1786}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !234, line: 65, baseType: !262, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !308, file: !234, line: 66, baseType: !312, size: 128, offset: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !246, line: 178, size: 128, elements: !313)
!313 = !{!314, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !246, line: 179, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !312, file: !246, line: 179, baseType: !315, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !308, file: !234, line: 67, baseType: !318, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !308, file: !234, line: 68, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !234, line: 192, size: 704, elements: !322)
!322 = !{!323, !324, !340, !341}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !321, file: !234, line: 193, baseType: !312, size: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !321, file: !234, line: 194, baseType: !325, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !326, line: 83, baseType: !327)
!326 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !326, line: 71, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !326, line: 72, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !326, line: 72, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !330, file: !326, line: 73, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !326, line: 20, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !333, file: !326, line: 21, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !337, line: 25, baseType: !338)
!337 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 25, elements: !339)
!339 = !{}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !321, file: !234, line: 195, baseType: !308, size: 512, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !321, file: !234, line: 196, baseType: !342, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !234, line: 156, size: 192, elements: !345)
!345 = !{!346, !351, !356}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !344, file: !234, line: 157, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!247, !320, !318}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !234, line: 158, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!262, !320, !318}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !344, file: !234, line: 159, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!247, !320, !318, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !234, line: 148, size: 20736, elements: !363)
!363 = !{!364, !369, !373, !374, !378}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !362, file: !234, line: 149, baseType: !365, size: 192)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 192, elements: !367)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!367 = !{!368}
!368 = !DISubrange(count: 3)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !362, file: !234, line: 150, baseType: !370, size: 4096, offset: 192)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 4096, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !362, file: !234, line: 151, baseType: !247, size: 32, offset: 4288)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !362, file: !234, line: 152, baseType: !375, size: 16384, offset: 4320)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 16384, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 2048)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !362, file: !234, line: 153, baseType: !247, size: 32, offset: 20704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !308, file: !234, line: 69, baseType: !380, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !234, line: 138, size: 448, elements: !382)
!382 = !{!383, !387, !415, !417, !1573, !1604, !1608}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !381, file: !234, line: 139, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !318}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !381, file: !234, line: 140, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !391, line: 230, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !408}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !390, file: !391, line: 231, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !318, !401, !366}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !246, line: 60, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !399, line: 73, baseType: !400)
!399 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !399, line: 15, baseType: !192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !391, line: 30, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !402, file: !391, line: 31, baseType: !262, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !402, file: !391, line: 32, baseType: !406, size: 16, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !246, line: 19, baseType: !407)
!407 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !390, file: !391, line: 232, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!397, !318, !401, !262, !412}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !246, line: 55, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !399, line: 72, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !399, line: 16, baseType: !252)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !381, file: !234, line: 141, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !381, file: !234, line: 142, baseType: !418, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !391, line: 84, size: 320, elements: !422)
!422 = !{!423, !424, !428, !1570, !1571}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !391, line: 85, baseType: !262, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !421, file: !391, line: 86, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!406, !318, !401, !247}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !421, file: !391, line: 88, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!406, !318, !432, !247}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !391, line: 168, size: 448, elements: !434)
!434 = !{!435, !436, !437, !438, !448, !449}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !433, file: !391, line: 169, baseType: !402, size: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !433, file: !391, line: 170, baseType: !412, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !433, file: !391, line: 171, baseType: !256, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !433, file: !391, line: 172, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!397, !442, !318, !432, !366, !445, !412}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !444, line: 526, flags: DIFlagFwdDecl)
!444 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !246, line: 46, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !399, line: 88, baseType: !447)
!447 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !433, file: !391, line: 174, baseType: !439, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !433, file: !391, line: 176, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!247, !442, !318, !432, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !455, line: 305, size: 1472, elements: !456)
!455 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !458, !459, !460, !461, !469, !470, !1544, !1550, !1551, !1556, !1557, !1560, !1564, !1565, !1566, !1567, !1568}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !454, file: !455, line: 308, baseType: !252, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !454, file: !455, line: 309, baseType: !252, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !454, file: !455, line: 313, baseType: !453, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !454, file: !455, line: 313, baseType: !453, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !454, file: !455, line: 315, baseType: !462, size: 192, align: 64, offset: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !463, line: 24, size: 192, align: 64, elements: !464)
!463 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!464 = !{!465, !466, !468}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !462, file: !463, line: 25, baseType: !252, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !462, file: !463, line: 26, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !462, file: !463, line: 27, baseType: !467, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !454, file: !455, line: 323, baseType: !252, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !454, file: !455, line: 327, baseType: !471, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !455, line: 388, size: 7296, elements: !473)
!473 = !{!474, !1540}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !455, line: 389, baseType: !475, size: 7296)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !455, line: 389, size: 7296, elements: !476)
!476 = !{!477, !478, !482, !486, !490, !491, !492, !493, !494, !502, !507, !508, !509, !510, !519, !520, !521, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !556, !564, !567, !615, !616, !1511, !1512, !1515, !1519, !1520, !1523, !1524, !1525, !1528, !1539}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !475, file: !455, line: 390, baseType: !453, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !475, file: !455, line: 391, baseType: !479, size: 64, offset: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !463, line: 31, size: 64, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !479, file: !463, line: 32, baseType: !467, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !475, file: !455, line: 392, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !268, line: 23, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !249, line: 31, baseType: !485)
!485 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !475, file: !455, line: 394, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!252, !442, !252, !252, !252, !252}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !475, file: !455, line: 398, baseType: !252, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !475, file: !455, line: 399, baseType: !252, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !475, file: !455, line: 405, baseType: !252, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !475, file: !455, line: 406, baseType: !252, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !475, file: !455, line: 407, baseType: !495, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !444, line: 286, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 286, size: 64, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !497, file: !444, line: 286, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !501, line: 18, baseType: !252)
!501 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !475, file: !455, line: 416, baseType: !503, size: 32, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !246, line: 168, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 166, size: 32, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !504, file: !246, line: 167, baseType: !247, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !475, file: !455, line: 428, baseType: !503, size: 32, offset: 608)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !475, file: !455, line: 437, baseType: !503, size: 32, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !475, file: !455, line: 447, baseType: !503, size: 32, offset: 672)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !475, file: !455, line: 450, baseType: !511, size: 64, offset: 704)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !512, line: 13, baseType: !513)
!512 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !246, line: 175, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 173, size: 64, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !514, file: !246, line: 174, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !268, line: 22, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !249, line: 30, baseType: !447)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !475, file: !455, line: 452, baseType: !247, size: 32, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !475, file: !455, line: 454, baseType: !325, offset: 800)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !475, file: !455, line: 457, baseType: !522, size: 256, offset: 832)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !523, line: 35, size: 256, elements: !524)
!523 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!524 = !{!525, !526, !527, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !522, file: !523, line: 36, baseType: !511, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !522, file: !523, line: 42, baseType: !511, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !522, file: !523, line: 46, baseType: !528, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !326, line: 29, baseType: !333)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !522, file: !523, line: 47, baseType: !312, size: 128, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !475, file: !455, line: 459, baseType: !312, size: 128, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !475, file: !455, line: 466, baseType: !252, size: 64, offset: 1216)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !475, file: !455, line: 467, baseType: !252, size: 64, offset: 1280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !475, file: !455, line: 469, baseType: !252, size: 64, offset: 1344)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !475, file: !455, line: 470, baseType: !252, size: 64, offset: 1408)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !475, file: !455, line: 471, baseType: !513, size: 64, offset: 1472)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !475, file: !455, line: 472, baseType: !252, size: 64, offset: 1536)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !475, file: !455, line: 473, baseType: !252, size: 64, offset: 1600)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !475, file: !455, line: 474, baseType: !252, size: 64, offset: 1664)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !475, file: !455, line: 475, baseType: !252, size: 64, offset: 1728)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !475, file: !455, line: 477, baseType: !325, offset: 1792)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !475, file: !455, line: 478, baseType: !252, size: 64, offset: 1792)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !475, file: !455, line: 478, baseType: !252, size: 64, offset: 1856)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !475, file: !455, line: 478, baseType: !252, size: 64, offset: 1920)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !475, file: !455, line: 478, baseType: !252, size: 64, offset: 1984)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !475, file: !455, line: 479, baseType: !252, size: 64, offset: 2048)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !475, file: !455, line: 479, baseType: !252, size: 64, offset: 2112)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !475, file: !455, line: 479, baseType: !252, size: 64, offset: 2176)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !475, file: !455, line: 480, baseType: !252, size: 64, offset: 2240)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !475, file: !455, line: 480, baseType: !252, size: 64, offset: 2304)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !475, file: !455, line: 480, baseType: !252, size: 64, offset: 2368)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !475, file: !455, line: 480, baseType: !252, size: 64, offset: 2432)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !475, file: !455, line: 482, baseType: !553, size: 2816, offset: 2496)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 2816, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 44)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !475, file: !455, line: 488, baseType: !557, size: 256, offset: 5312)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !558, line: 60, size: 256, elements: !559)
!558 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !557, file: !558, line: 61, baseType: !561, size: 256)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 256, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 4)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !475, file: !455, line: 490, baseType: !565, size: 64, offset: 5568)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !455, line: 490, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !475, file: !455, line: 493, baseType: !568, size: 896, offset: 5632)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !569, line: 53, baseType: !570)
!569 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 13, size: 896, elements: !571)
!571 = !{!572, !573, !574, !575, !578, !579, !586, !587, !607, !608, !611}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !570, file: !569, line: 18, baseType: !483, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !570, file: !569, line: 28, baseType: !513, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !570, file: !569, line: 31, baseType: !522, size: 256, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !570, file: !569, line: 32, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !569, line: 32, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !570, file: !569, line: 37, baseType: !407, size: 16, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !570, file: !569, line: 40, baseType: !580, size: 192, offset: 512)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !581, line: 53, size: 192, elements: !582)
!581 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!582 = !{!583, !584, !585}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !580, file: !581, line: 54, baseType: !511, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !580, file: !581, line: 55, baseType: !325, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !580, file: !581, line: 59, baseType: !312, size: 128, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !570, file: !569, line: 41, baseType: !256, size: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !570, file: !569, line: 42, baseType: !588, size: 64, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !591, line: 13, size: 896, elements: !592)
!591 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !590, file: !591, line: 14, baseType: !256, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !590, file: !591, line: 15, baseType: !252, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !590, file: !591, line: 17, baseType: !252, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !590, file: !591, line: 17, baseType: !252, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !590, file: !591, line: 19, baseType: !192, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !590, file: !591, line: 21, baseType: !192, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !590, file: !591, line: 22, baseType: !192, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !590, file: !591, line: 23, baseType: !192, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !590, file: !591, line: 24, baseType: !192, size: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !590, file: !591, line: 25, baseType: !192, size: 64, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !590, file: !591, line: 26, baseType: !192, size: 64, offset: 640)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !590, file: !591, line: 27, baseType: !192, size: 64, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !590, file: !591, line: 28, baseType: !192, size: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !590, file: !591, line: 29, baseType: !192, size: 64, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !570, file: !569, line: 44, baseType: !503, size: 32, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !570, file: !569, line: 50, baseType: !609, size: 16, offset: 864)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !268, line: 19, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !249, line: 24, baseType: !407)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !570, file: !569, line: 51, baseType: !612, size: 16, offset: 880)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !268, line: 18, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !249, line: 23, baseType: !614)
!614 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !455, line: 495, baseType: !252, size: 64, offset: 6528)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !475, file: !455, line: 497, baseType: !617, size: 64, offset: 6592)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !455, line: 381, size: 384, elements: !619)
!619 = !{!620, !621, !1510}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !618, file: !455, line: 382, baseType: !503, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !618, file: !455, line: 383, baseType: !622, size: 128, offset: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !455, line: 376, size: 128, elements: !623)
!623 = !{!624, !1508}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !622, file: !455, line: 377, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !627, line: 640, size: 48640, elements: !628)
!627 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!628 = !{!629, !635, !637, !638, !644, !645, !646, !647, !648, !649, !650, !651, !655, !673, !684, !779, !780, !781, !792, !793, !795, !796, !797, !798, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !877, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !933, !935, !936, !937, !949, !951, !952, !953, !954, !955, !961, !962, !963, !964, !965, !966, !967, !979, !984, !989, !990, !991, !994, !998, !1001, !1004, !1007, !1010, !1014, !1017, !1020, !1026, !1027, !1028, !1034, !1035, !1036, !1037, !1038, !1047, !1048, !1049, !1050, !1051, !1056, !1057, !1058, !1061, !1062, !1065, !1068, !1071, !1074, !1077, !1080, !1081, !1161, !1164, !1167, !1168, !1171, !1172, !1173, !1179, !1180, !1181, !1194, !1195, !1196, !1206, !1211, !1214, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !626, file: !627, line: 646, baseType: !630, size: 128)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !631, line: 56, size: 128, elements: !632)
!631 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !631, line: 57, baseType: !252, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !630, file: !631, line: 58, baseType: !267, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !626, file: !627, line: 649, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !626, file: !627, line: 657, baseType: !256, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !626, file: !627, line: 658, baseType: !639, size: 32, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !640, line: 113, baseType: !641)
!640 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !640, line: 111, size: 32, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !641, file: !640, line: 112, baseType: !503, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !627, line: 660, baseType: !7, size: 32, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !626, file: !627, line: 661, baseType: !7, size: 32, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !626, file: !627, line: 684, baseType: !247, size: 32, offset: 352)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !626, file: !627, line: 686, baseType: !247, size: 32, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !626, file: !627, line: 687, baseType: !247, size: 32, offset: 416)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !626, file: !627, line: 688, baseType: !247, size: 32, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !626, file: !627, line: 689, baseType: !7, size: 32, offset: 480)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !626, file: !627, line: 691, baseType: !652, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !627, line: 691, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !626, file: !627, line: 692, baseType: !656, size: 832, offset: 576)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !627, line: 451, size: 832, elements: !657)
!657 = !{!658, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !656, file: !627, line: 453, baseType: !659, size: 128)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !627, line: 325, size: 128, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !659, file: !627, line: 326, baseType: !252, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !659, file: !627, line: 327, baseType: !267, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !656, file: !627, line: 454, baseType: !462, size: 192, align: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !656, file: !627, line: 455, baseType: !312, size: 128, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !656, file: !627, line: 456, baseType: !7, size: 32, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !656, file: !627, line: 458, baseType: !483, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !656, file: !627, line: 459, baseType: !483, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !656, file: !627, line: 460, baseType: !483, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !656, file: !627, line: 461, baseType: !483, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !656, file: !627, line: 463, baseType: !483, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !656, file: !627, line: 465, baseType: !672, offset: 832)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !627, line: 415, elements: !339)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !626, file: !627, line: 693, baseType: !674, size: 384, offset: 1408)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !627, line: 489, size: 384, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !674, file: !627, line: 490, baseType: !312, size: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !674, file: !627, line: 491, baseType: !252, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !674, file: !627, line: 492, baseType: !252, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !674, file: !627, line: 493, baseType: !7, size: 32, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !674, file: !627, line: 494, baseType: !407, size: 16, offset: 288)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !674, file: !627, line: 495, baseType: !407, size: 16, offset: 304)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !674, file: !627, line: 497, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !626, file: !627, line: 697, baseType: !685, size: 1792, offset: 1792)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !627, line: 507, size: 1792, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !776, !777}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !685, file: !627, line: 508, baseType: !462, size: 192, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !685, file: !627, line: 515, baseType: !483, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !685, file: !627, line: 516, baseType: !483, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !685, file: !627, line: 517, baseType: !483, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !685, file: !627, line: 518, baseType: !483, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !685, file: !627, line: 519, baseType: !483, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !685, file: !627, line: 526, baseType: !517, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !685, file: !627, line: 527, baseType: !483, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !627, line: 528, baseType: !7, size: 32, offset: 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !685, file: !627, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !685, file: !627, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !685, file: !627, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !685, file: !627, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !685, file: !627, line: 563, baseType: !701, size: 512, offset: 704)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !112, line: 118, size: 512, elements: !702)
!702 = !{!703, !711, !712, !717, !769, !773, !774, !775}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !112, line: 119, baseType: !704, size: 256)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !705, line: 9, size: 256, elements: !706)
!705 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !705, line: 10, baseType: !462, size: 192, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !704, file: !705, line: 11, baseType: !709, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !710, line: 29, baseType: !517)
!710 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !701, file: !112, line: 120, baseType: !709, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !701, file: !112, line: 121, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!111, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !701, file: !112, line: 122, baseType: !718, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !112, line: 159, size: 512, align: 512, elements: !720)
!720 = !{!721, !741, !742, !745, !755, !756, !764, !768}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !719, file: !112, line: 160, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !112, line: 214, size: 4608, align: 512, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !723, file: !112, line: 215, baseType: !528)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !723, file: !112, line: 216, baseType: !7, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !723, file: !112, line: 217, baseType: !7, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !723, file: !112, line: 218, baseType: !7, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !723, file: !112, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !723, file: !112, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !723, file: !112, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !723, file: !112, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !723, file: !112, line: 233, baseType: !709, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !723, file: !112, line: 234, baseType: !716, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !723, file: !112, line: 235, baseType: !709, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !723, file: !112, line: 236, baseType: !716, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !723, file: !112, line: 237, baseType: !738, size: 4096, offset: 512)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 4096, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 8)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !719, file: !112, line: 161, baseType: !7, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !719, file: !112, line: 162, baseType: !743, size: 32, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !246, line: 27, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !399, line: 96, baseType: !247)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !719, file: !112, line: 163, baseType: !746, size: 32, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !747, line: 276, baseType: !748)
!747 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !747, line: 276, size: 32, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !748, file: !747, line: 276, baseType: !751, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !747, line: 70, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !747, line: 65, size: 32, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !752, file: !747, line: 66, baseType: !7, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !719, file: !112, line: 164, baseType: !716, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !719, file: !112, line: 165, baseType: !757, size: 128, offset: 256)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !705, line: 14, size: 128, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !757, file: !705, line: 15, baseType: !760, size: 128)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !463, line: 125, size: 128, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !760, file: !463, line: 126, baseType: !479, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !760, file: !463, line: 127, baseType: !467, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !719, file: !112, line: 166, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!709}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !719, file: !112, line: 167, baseType: !709, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !701, file: !112, line: 123, baseType: !770, size: 8, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !268, line: 17, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !249, line: 21, baseType: !772)
!772 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !701, file: !112, line: 124, baseType: !770, size: 8, offset: 456)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !701, file: !112, line: 125, baseType: !770, size: 8, offset: 464)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !701, file: !112, line: 126, baseType: !770, size: 8, offset: 472)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !685, file: !627, line: 572, baseType: !701, size: 512, offset: 1216)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !685, file: !627, line: 580, baseType: !778, size: 64, offset: 1728)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !626, file: !627, line: 721, baseType: !7, size: 32, offset: 3584)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !626, file: !627, line: 722, baseType: !247, size: 32, offset: 3616)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !626, file: !627, line: 723, baseType: !782, size: 64, offset: 3648)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !785, line: 17, baseType: !786)
!785 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !785, line: 17, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !786, file: !785, line: 17, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 64, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 1)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !626, file: !627, line: 724, baseType: !784, size: 64, offset: 3712)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !626, file: !627, line: 749, baseType: !794, offset: 3776)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !627, line: 290, elements: !339)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !626, file: !627, line: 751, baseType: !312, size: 128, offset: 3776)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !626, file: !627, line: 757, baseType: !471, size: 64, offset: 3904)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !626, file: !627, line: 758, baseType: !471, size: 64, offset: 3968)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !626, file: !627, line: 761, baseType: !799, size: 320, offset: 4032)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !558, line: 34, size: 320, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !799, file: !558, line: 35, baseType: !483, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !799, file: !558, line: 36, baseType: !803, size: 256, offset: 64)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 256, elements: !562)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !626, file: !627, line: 766, baseType: !247, size: 32, offset: 4352)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !626, file: !627, line: 767, baseType: !247, size: 32, offset: 4384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !626, file: !627, line: 768, baseType: !247, size: 32, offset: 4416)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !626, file: !627, line: 770, baseType: !247, size: 32, offset: 4448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !626, file: !627, line: 772, baseType: !252, size: 64, offset: 4480)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !626, file: !627, line: 775, baseType: !7, size: 32, offset: 4544)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !626, file: !627, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !626, file: !627, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !626, file: !627, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !626, file: !627, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !626, file: !627, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !626, file: !627, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !626, file: !627, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !626, file: !627, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !626, file: !627, line: 831, baseType: !252, size: 64, offset: 4672)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !626, file: !627, line: 833, baseType: !820, size: 384, offset: 4736)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !117, line: 25, size: 384, elements: !821)
!821 = !{!822, !827}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !820, file: !117, line: 26, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!192, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !117, line: 27, baseType: !828, size: 320, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !117, line: 27, size: 320, elements: !829)
!829 = !{!830, !840, !867}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !828, file: !117, line: 36, baseType: !831, size: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !117, line: 29, size: 320, elements: !832)
!832 = !{!833, !835, !836, !837, !838, !839}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !831, file: !117, line: 30, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !831, file: !117, line: 31, baseType: !267, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !117, line: 32, baseType: !267, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !831, file: !117, line: 33, baseType: !267, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !831, file: !117, line: 34, baseType: !483, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !831, file: !117, line: 35, baseType: !834, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !828, file: !117, line: 46, baseType: !841, size: 192)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !117, line: 38, size: 192, elements: !842)
!842 = !{!843, !844, !845, !866}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !841, file: !117, line: 39, baseType: !743, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !841, file: !117, line: 40, baseType: !116, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !117, line: 41, baseType: !846, size: 64, offset: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !117, line: 41, size: 64, elements: !847)
!847 = !{!848, !856}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !846, file: !117, line: 42, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !851, line: 7, size: 128, elements: !852)
!851 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!852 = !{!853, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !850, file: !851, line: 8, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !399, line: 93, baseType: !447)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !850, file: !851, line: 9, baseType: !447, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !846, file: !117, line: 43, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !859, line: 7, size: 64, elements: !860)
!859 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !865}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !858, file: !859, line: 8, baseType: !862, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !859, line: 5, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !268, line: 20, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !249, line: 26, baseType: !247)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !858, file: !859, line: 9, baseType: !863, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !841, file: !117, line: 45, baseType: !483, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !828, file: !117, line: 54, baseType: !868, size: 256)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !117, line: 48, size: 256, elements: !869)
!869 = !{!870, !873, !874, !875, !876}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !868, file: !117, line: 49, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !117, line: 14, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !868, file: !117, line: 50, baseType: !247, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !868, file: !117, line: 51, baseType: !247, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !868, file: !117, line: 52, baseType: !252, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !868, file: !117, line: 53, baseType: !252, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !626, file: !627, line: 835, baseType: !878, size: 32, offset: 5120)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !246, line: 22, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !399, line: 28, baseType: !247)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !626, file: !627, line: 836, baseType: !878, size: 32, offset: 5152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !626, file: !627, line: 840, baseType: !252, size: 64, offset: 5184)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !626, file: !627, line: 849, baseType: !625, size: 64, offset: 5248)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !626, file: !627, line: 852, baseType: !625, size: 64, offset: 5312)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !626, file: !627, line: 857, baseType: !312, size: 128, offset: 5376)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !626, file: !627, line: 858, baseType: !312, size: 128, offset: 5504)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !626, file: !627, line: 859, baseType: !625, size: 64, offset: 5632)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !626, file: !627, line: 867, baseType: !312, size: 128, offset: 5696)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !626, file: !627, line: 868, baseType: !312, size: 128, offset: 5824)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !626, file: !627, line: 871, baseType: !890, size: 64, offset: 5952)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !892, line: 59, size: 768, elements: !893)
!892 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!893 = !{!894, !895, !896, !897, !908, !909, !916, !925}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !891, file: !892, line: 61, baseType: !639, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !891, file: !892, line: 62, baseType: !7, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !891, file: !892, line: 63, baseType: !325, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !891, file: !892, line: 65, baseType: !898, size: 256, offset: 64)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 256, elements: !562)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !246, line: 182, size: 64, elements: !900)
!900 = !{!901}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !899, file: !246, line: 183, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !246, line: 186, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !246, line: 187, baseType: !902, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !903, file: !246, line: 187, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !891, file: !892, line: 66, baseType: !899, size: 64, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !891, file: !892, line: 68, baseType: !910, size: 128, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !911, line: 40, baseType: !912)
!911 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !911, line: 36, size: 128, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !912, file: !911, line: 37, baseType: !325)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !912, file: !911, line: 38, baseType: !312, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !891, file: !892, line: 69, baseType: !917, size: 128, align: 64, offset: 512)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !246, line: 216, size: 128, align: 64, elements: !918)
!918 = !{!919, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !917, file: !246, line: 217, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !917, file: !246, line: 218, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !920}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !891, file: !892, line: 70, baseType: !926, size: 128, offset: 640)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 128, elements: !790)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !892, line: 54, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !927, file: !892, line: 55, baseType: !247, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !927, file: !892, line: 56, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !892, line: 56, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !626, file: !627, line: 872, baseType: !934, size: 512, offset: 6016)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 512, elements: !562)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !626, file: !627, line: 873, baseType: !312, size: 128, offset: 6528)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !626, file: !627, line: 874, baseType: !312, size: 128, offset: 6656)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !626, file: !627, line: 876, baseType: !938, size: 64, offset: 6784)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !940, line: 26, size: 192, elements: !941)
!940 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !939, file: !940, line: 27, baseType: !7, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !939, file: !940, line: 28, baseType: !944, size: 128, offset: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !945, line: 43, size: 128, elements: !946)
!945 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !944, file: !945, line: 44, baseType: !528)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !944, file: !945, line: 45, baseType: !312, size: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !626, file: !627, line: 879, baseType: !950, size: 64, offset: 6848)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !626, file: !627, line: 882, baseType: !950, size: 64, offset: 6912)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !626, file: !627, line: 884, baseType: !483, size: 64, offset: 6976)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !626, file: !627, line: 885, baseType: !483, size: 64, offset: 7040)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !626, file: !627, line: 890, baseType: !483, size: 64, offset: 7104)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !626, file: !627, line: 891, baseType: !956, size: 128, offset: 7168)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !627, line: 242, size: 128, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !956, file: !627, line: 244, baseType: !483, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !956, file: !627, line: 245, baseType: !483, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !956, file: !627, line: 246, baseType: !528, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !626, file: !627, line: 900, baseType: !252, size: 64, offset: 7296)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !626, file: !627, line: 901, baseType: !252, size: 64, offset: 7360)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !626, file: !627, line: 904, baseType: !483, size: 64, offset: 7424)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !626, file: !627, line: 907, baseType: !483, size: 64, offset: 7488)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !626, file: !627, line: 910, baseType: !252, size: 64, offset: 7552)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !626, file: !627, line: 911, baseType: !252, size: 64, offset: 7616)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !626, file: !627, line: 914, baseType: !968, size: 640, offset: 7680)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !969, line: 123, size: 640, elements: !970)
!969 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!970 = !{!971, !977, !978}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !968, file: !969, line: 124, baseType: !972, size: 576)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !973, size: 576, elements: !367)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !969, line: 108, size: 192, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !973, file: !969, line: 109, baseType: !483, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !973, file: !969, line: 110, baseType: !757, size: 128, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !968, file: !969, line: 125, baseType: !7, size: 32, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !968, file: !969, line: 126, baseType: !7, size: 32, offset: 608)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !626, file: !627, line: 917, baseType: !980, size: 192, offset: 8320)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !969, line: 134, size: 192, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !980, file: !969, line: 135, baseType: !917, size: 128, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !980, file: !969, line: 136, baseType: !7, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !626, file: !627, line: 923, baseType: !985, size: 64, offset: 8512)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !988, line: 11, flags: DIFlagFwdDecl)
!988 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!989 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !626, file: !627, line: 926, baseType: !985, size: 64, offset: 8576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !626, file: !627, line: 929, baseType: !985, size: 64, offset: 8640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !626, file: !627, line: 933, baseType: !992, size: 64, offset: 8704)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !627, line: 933, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !626, file: !627, line: 943, baseType: !995, size: 128, offset: 8768)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 128, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 16)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !626, file: !627, line: 945, baseType: !999, size: 64, offset: 8896)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !627, line: 49, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !626, file: !627, line: 956, baseType: !1002, size: 64, offset: 8960)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !627, line: 45, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !626, file: !627, line: 959, baseType: !1005, size: 64, offset: 9024)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !627, line: 959, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !626, file: !627, line: 962, baseType: !1008, size: 64, offset: 9088)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !627, line: 66, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !626, file: !627, line: 966, baseType: !1011, size: 64, offset: 9152)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1013, line: 35, flags: DIFlagFwdDecl)
!1013 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !626, file: !627, line: 969, baseType: !1015, size: 64, offset: 9216)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !969, line: 223, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !626, file: !627, line: 970, baseType: !1018, size: 64, offset: 9280)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !627, line: 62, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !626, file: !627, line: 971, baseType: !1021, size: 64, offset: 9344)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1022, line: 25, baseType: !1023)
!1022 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1022, line: 23, size: 64, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1023, file: !1022, line: 24, baseType: !789, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !626, file: !627, line: 972, baseType: !1021, size: 64, offset: 9408)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !626, file: !627, line: 974, baseType: !1021, size: 64, offset: 9472)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !626, file: !627, line: 975, baseType: !1029, size: 192, offset: 9536)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1030, line: 30, size: 192, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1029, file: !1030, line: 31, baseType: !312, size: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1029, file: !1030, line: 32, baseType: !1021, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !626, file: !627, line: 976, baseType: !252, size: 64, offset: 9728)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !626, file: !627, line: 977, baseType: !412, size: 64, offset: 9792)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !626, file: !627, line: 978, baseType: !7, size: 32, offset: 9856)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !626, file: !627, line: 980, baseType: !920, size: 64, offset: 9920)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !626, file: !627, line: 989, baseType: !1039, size: 128, offset: 9984)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1040, line: 35, size: 128, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1039, file: !1040, line: 36, baseType: !247, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1039, file: !1040, line: 37, baseType: !503, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1039, file: !1040, line: 38, baseType: !1045, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1040, line: 23, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !626, file: !627, line: 992, baseType: !483, size: 64, offset: 10112)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !626, file: !627, line: 993, baseType: !483, size: 64, offset: 10176)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !626, file: !627, line: 996, baseType: !325, offset: 10240)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !626, file: !627, line: 999, baseType: !528, offset: 10240)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !626, file: !627, line: 1001, baseType: !1052, size: 64, offset: 10240)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !627, line: 636, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1052, file: !627, line: 637, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !626, file: !627, line: 1005, baseType: !760, size: 128, offset: 10304)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !626, file: !627, line: 1007, baseType: !625, size: 64, offset: 10432)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !626, file: !627, line: 1009, baseType: !1059, size: 64, offset: 10496)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !627, line: 1009, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !626, file: !627, line: 1043, baseType: !256, size: 64, offset: 10560)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !626, file: !627, line: 1046, baseType: !1063, size: 64, offset: 10624)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !627, line: 41, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !626, file: !627, line: 1050, baseType: !1066, size: 64, offset: 10688)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !627, line: 42, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !626, file: !627, line: 1054, baseType: !1069, size: 64, offset: 10752)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !627, line: 55, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !626, file: !627, line: 1056, baseType: !1072, size: 64, offset: 10816)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !627, line: 40, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !626, file: !627, line: 1058, baseType: !1075, size: 64, offset: 10880)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !627, line: 47, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !626, file: !627, line: 1061, baseType: !1078, size: 64, offset: 10944)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !627, line: 43, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !626, file: !627, line: 1064, baseType: !252, size: 64, offset: 11008)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !626, file: !627, line: 1065, baseType: !1082, size: 64, offset: 11072)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1030, line: 14, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1030, line: 12, size: 384, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !1030, line: 13, baseType: !1087, size: 384)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !1030, line: 13, size: 384, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1087, file: !1030, line: 13, baseType: !247, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1087, file: !1030, line: 13, baseType: !247, size: 32, offset: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1087, file: !1030, line: 13, baseType: !247, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1087, file: !1030, line: 13, baseType: !1093, size: 256, offset: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1094, line: 32, size: 256, elements: !1095)
!1094 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !{!1096, !1102, !1115, !1121, !1130, !1150, !1155}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1093, file: !1094, line: 37, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 34, size: 64, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1097, file: !1094, line: 35, baseType: !879, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1097, file: !1094, line: 36, baseType: !1101, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !399, line: 49, baseType: !7)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1093, file: !1094, line: 45, baseType: !1103, size: 192)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 40, size: 192, elements: !1104)
!1104 = !{!1105, !1107, !1108, !1114}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1103, file: !1094, line: 41, baseType: !1106, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !399, line: 95, baseType: !247)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1103, file: !1094, line: 42, baseType: !247, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1103, file: !1094, line: 43, baseType: !1109, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1094, line: 11, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1094, line: 8, size: 64, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1110, file: !1094, line: 9, baseType: !247, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1110, file: !1094, line: 10, baseType: !256, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1103, file: !1094, line: 44, baseType: !247, size: 32, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1093, file: !1094, line: 52, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 48, size: 128, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1116, file: !1094, line: 49, baseType: !879, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1116, file: !1094, line: 50, baseType: !1101, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1116, file: !1094, line: 51, baseType: !1109, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1093, file: !1094, line: 61, baseType: !1122, size: 256)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 55, size: 256, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1129}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1122, file: !1094, line: 56, baseType: !879, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1122, file: !1094, line: 57, baseType: !1101, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1122, file: !1094, line: 58, baseType: !247, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1122, file: !1094, line: 59, baseType: !1128, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !399, line: 94, baseType: !400)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1122, file: !1094, line: 60, baseType: !1128, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1093, file: !1094, line: 95, baseType: !1131, size: 256)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 64, size: 256, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1131, file: !1094, line: 65, baseType: !256, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !1094, line: 77, baseType: !1135, size: 192, offset: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1131, file: !1094, line: 77, size: 192, elements: !1136)
!1136 = !{!1137, !1138, !1145}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1135, file: !1094, line: 82, baseType: !614, size: 16)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1135, file: !1094, line: 88, baseType: !1139, size: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1094, line: 84, size: 192, elements: !1140)
!1140 = !{!1141, !1143, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1139, file: !1094, line: 85, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 64, elements: !739)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1139, file: !1094, line: 86, baseType: !256, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1139, file: !1094, line: 87, baseType: !256, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1135, file: !1094, line: 93, baseType: !1146, size: 96)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1094, line: 90, size: 96, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1146, file: !1094, line: 91, baseType: !1142, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1146, file: !1094, line: 92, baseType: !248, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1093, file: !1094, line: 101, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 98, size: 128, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1151, file: !1094, line: 99, baseType: !192, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1151, file: !1094, line: 100, baseType: !247, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1093, file: !1094, line: 108, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 104, size: 128, elements: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1156, file: !1094, line: 105, baseType: !256, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1156, file: !1094, line: 106, baseType: !247, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1156, file: !1094, line: 107, baseType: !7, size: 32, offset: 96)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !626, file: !627, line: 1067, baseType: !1162, offset: 11136)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1163, line: 12, elements: !339)
!1163 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !626, file: !627, line: 1099, baseType: !1165, size: 64, offset: 11136)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !627, line: 56, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !626, file: !627, line: 1103, baseType: !312, size: 128, offset: 11200)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !626, file: !627, line: 1104, baseType: !1169, size: 64, offset: 11328)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !627, line: 46, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !626, file: !627, line: 1105, baseType: !580, size: 192, offset: 11392)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !626, file: !627, line: 1106, baseType: !7, size: 32, offset: 11584)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !626, file: !627, line: 1109, baseType: !1174, size: 128, offset: 11648)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 128, elements: !1177)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !627, line: 51, flags: DIFlagFwdDecl)
!1177 = !{!1178}
!1178 = !DISubrange(count: 2)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !626, file: !627, line: 1110, baseType: !580, size: 192, offset: 11776)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !626, file: !627, line: 1111, baseType: !312, size: 128, offset: 11968)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !626, file: !627, line: 1173, baseType: !1182, size: 64, offset: 12096)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1184, line: 62, size: 256, align: 256, elements: !1185)
!1184 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !{!1186, !1187, !1188, !1193}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1183, file: !1184, line: 75, baseType: !248, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1183, file: !1184, line: 90, baseType: !248, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1183, file: !1184, line: 124, baseType: !1189, size: 64, offset: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !1184, line: 109, size: 64, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1189, file: !1184, line: 110, baseType: !484, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1189, file: !1184, line: 112, baseType: !484, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1184, line: 144, baseType: !248, size: 32, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !626, file: !627, line: 1174, baseType: !267, size: 32, offset: 12160)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !626, file: !627, line: 1179, baseType: !252, size: 64, offset: 12224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !626, file: !627, line: 1182, baseType: !1197, size: 128, offset: 12288)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !558, line: 76, size: 128, elements: !1198)
!1198 = !{!1199, !1204, !1205}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1197, file: !558, line: 85, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1201, line: 7, size: 64, elements: !1202)
!1201 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1200, file: !1201, line: 12, baseType: !786, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1197, file: !558, line: 88, baseType: !293, size: 8, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1197, file: !558, line: 95, baseType: !293, size: 8, offset: 72)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !627, line: 1184, baseType: !1207, size: 128, offset: 12416)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !627, line: 1184, size: 128, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1207, file: !627, line: 1185, baseType: !639, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1207, file: !627, line: 1186, baseType: !917, size: 128, align: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !626, file: !627, line: 1190, baseType: !1212, size: 64, offset: 12544)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !627, line: 53, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !626, file: !627, line: 1192, baseType: !1215, size: 128, offset: 12608)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !558, line: 64, size: 128, elements: !1216)
!1216 = !{!1217, !1310, !1311}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1215, file: !558, line: 65, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !455, line: 68, size: 512, align: 128, elements: !1220)
!1220 = !{!1221, !1222, !1302, !1309}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1219, file: !455, line: 69, baseType: !252, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !455, line: 77, baseType: !1223, size: 320, offset: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1219, file: !455, line: 77, size: 320, elements: !1224)
!1224 = !{!1225, !1234, !1239, !1267, !1275, !1281, !1294, !1301}
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !455, line: 78, baseType: !1226, size: 320)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !455, line: 78, size: 320, elements: !1227)
!1227 = !{!1228, !1229, !1232, !1233}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1226, file: !455, line: 84, baseType: !312, size: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1226, file: !455, line: 86, baseType: !1230, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !455, line: 26, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1226, file: !455, line: 87, baseType: !252, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1226, file: !455, line: 94, baseType: !252, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !455, line: 96, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !455, line: 96, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1235, file: !455, line: 101, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !246, line: 143, baseType: !483)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !455, line: 103, baseType: !1240, size: 320)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !455, line: 103, size: 320, elements: !1241)
!1241 = !{!1242, !1252, !1255, !1256}
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !455, line: 104, baseType: !1243, size: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !455, line: 104, size: 128, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1243, file: !455, line: 105, baseType: !312, size: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !455, line: 106, baseType: !1247, size: 128)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !455, line: 106, size: 128, elements: !1248)
!1248 = !{!1249, !1250, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !455, line: 107, baseType: !1218, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1247, file: !455, line: 109, baseType: !247, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1247, file: !455, line: 110, baseType: !247, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1240, file: !455, line: 117, baseType: !1253, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !455, line: 117, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1240, file: !455, line: 119, baseType: !256, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !455, line: 120, baseType: !1257, size: 64, offset: 256)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !455, line: 120, size: 64, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1257, file: !455, line: 121, baseType: !256, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1257, file: !455, line: 122, baseType: !252, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !455, line: 123, baseType: !1262, size: 32)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !455, line: 123, size: 32, elements: !1263)
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1262, file: !455, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1262, file: !455, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1262, file: !455, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !455, line: 130, baseType: !1268, size: 192)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !455, line: 130, size: 192, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1268, file: !455, line: 131, baseType: !252, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1268, file: !455, line: 134, baseType: !772, size: 8, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1268, file: !455, line: 135, baseType: !772, size: 8, offset: 72)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1268, file: !455, line: 136, baseType: !503, size: 32, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1268, file: !455, line: 137, baseType: !7, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !455, line: 139, baseType: !1276, size: 256)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !455, line: 139, size: 256, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1276, file: !455, line: 140, baseType: !252, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1276, file: !455, line: 141, baseType: !503, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1276, file: !455, line: 143, baseType: !312, size: 128, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !455, line: 145, baseType: !1282, size: 256)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !455, line: 145, size: 256, elements: !1283)
!1283 = !{!1284, !1285, !1287, !1288, !1293}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1282, file: !455, line: 146, baseType: !252, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1282, file: !455, line: 147, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !444, line: 509, baseType: !1218)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1282, file: !455, line: 148, baseType: !252, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !455, line: 149, baseType: !1289, size: 64, offset: 192)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !455, line: 149, size: 64, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1289, file: !455, line: 150, baseType: !471, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1289, file: !455, line: 151, baseType: !503, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1282, file: !455, line: 156, baseType: !325, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !455, line: 159, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !455, line: 159, size: 128, elements: !1296)
!1296 = !{!1297, !1300}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1295, file: !455, line: 161, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !455, line: 161, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1295, file: !455, line: 162, baseType: !256, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1223, file: !455, line: 176, baseType: !917, size: 128, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !455, line: 179, baseType: !1303, size: 32, offset: 384)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1219, file: !455, line: 179, size: 32, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1303, file: !455, line: 184, baseType: !503, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1303, file: !455, line: 192, baseType: !7, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1303, file: !455, line: 194, baseType: !7, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1303, file: !455, line: 195, baseType: !247, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1219, file: !455, line: 199, baseType: !503, size: 32, offset: 416)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1215, file: !558, line: 67, baseType: !248, size: 32, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1215, file: !558, line: 68, baseType: !248, size: 32, offset: 96)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !626, file: !627, line: 1206, baseType: !247, size: 32, offset: 12736)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !626, file: !627, line: 1207, baseType: !247, size: 32, offset: 12768)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !626, file: !627, line: 1209, baseType: !252, size: 64, offset: 12800)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !626, file: !627, line: 1219, baseType: !483, size: 64, offset: 12864)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !626, file: !627, line: 1220, baseType: !483, size: 64, offset: 12928)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !626, file: !627, line: 1317, baseType: !247, size: 32, offset: 12992)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !626, file: !627, line: 1319, baseType: !625, size: 64, offset: 13056)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !626, file: !627, line: 1322, baseType: !1320, size: 64, offset: 13120)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1322, line: 9, flags: DIFlagFwdDecl)
!1322 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !626, file: !627, line: 1326, baseType: !639, size: 32, offset: 13184)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !626, file: !627, line: 1342, baseType: !256, size: 64, offset: 13248)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !626, file: !627, line: 1343, baseType: !484, size: 64, offset: 13312)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !626, file: !627, line: 1344, baseType: !483, size: 64, offset: 13376)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !626, file: !627, line: 1345, baseType: !484, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !626, file: !627, line: 1346, baseType: !484, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !626, file: !627, line: 1347, baseType: !484, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !626, file: !627, line: 1348, baseType: !917, size: 128, align: 64, offset: 13504)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !626, file: !627, line: 1358, baseType: !1332, size: 34816, offset: 13824)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1333, line: 485, size: 34816, elements: !1334)
!1333 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1364, !1365, !1366, !1367, !1368, !1369, !1372, !1373, !1374}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1332, file: !1333, line: 487, baseType: !1336, size: 192)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 192, elements: !367)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1338, line: 16, size: 64, elements: !1339)
!1338 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1337, file: !1338, line: 17, baseType: !609, size: 16)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1337, file: !1338, line: 18, baseType: !609, size: 16, offset: 16)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1337, file: !1338, line: 19, baseType: !609, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1337, file: !1338, line: 19, baseType: !609, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1337, file: !1338, line: 19, baseType: !609, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1337, file: !1338, line: 19, baseType: !609, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1337, file: !1338, line: 19, baseType: !609, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1337, file: !1338, line: 20, baseType: !609, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1337, file: !1338, line: 20, baseType: !609, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1337, file: !1338, line: 20, baseType: !609, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1337, file: !1338, line: 20, baseType: !609, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1337, file: !1338, line: 20, baseType: !609, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1337, file: !1338, line: 20, baseType: !609, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1332, file: !1333, line: 491, baseType: !252, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1332, file: !1333, line: 495, baseType: !407, size: 16, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1332, file: !1333, line: 496, baseType: !407, size: 16, offset: 272)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1332, file: !1333, line: 497, baseType: !407, size: 16, offset: 288)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1332, file: !1333, line: 498, baseType: !407, size: 16, offset: 304)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1332, file: !1333, line: 502, baseType: !252, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1332, file: !1333, line: 503, baseType: !252, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1332, file: !1333, line: 514, baseType: !1361, size: 256, offset: 448)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1362, size: 256, elements: !562)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1333, line: 483, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1332, file: !1333, line: 516, baseType: !252, size: 64, offset: 704)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1332, file: !1333, line: 518, baseType: !252, size: 64, offset: 768)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1332, file: !1333, line: 520, baseType: !252, size: 64, offset: 832)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1332, file: !1333, line: 521, baseType: !252, size: 64, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1332, file: !1333, line: 522, baseType: !252, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1332, file: !1333, line: 528, baseType: !1370, size: 64, offset: 1024)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1333, line: 10, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1332, file: !1333, line: 535, baseType: !252, size: 64, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1332, file: !1333, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1332, file: !1333, line: 540, baseType: !1375, size: 33280, offset: 1536)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1376, line: 317, size: 33280, elements: !1377)
!1376 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !{!1378, !1379, !1380}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1375, file: !1376, line: 330, baseType: !7, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1375, file: !1376, line: 337, baseType: !252, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1375, file: !1376, line: 348, baseType: !1381, size: 32768, offset: 512)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1376, line: 304, size: 32768, elements: !1382)
!1382 = !{!1383, !1398, !1437, !1487, !1504}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1381, file: !1376, line: 305, baseType: !1384, size: 896)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1376, line: 12, size: 896, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1397}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1384, file: !1376, line: 13, baseType: !267, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1384, file: !1376, line: 14, baseType: !267, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1384, file: !1376, line: 15, baseType: !267, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1384, file: !1376, line: 16, baseType: !267, size: 32, offset: 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1384, file: !1376, line: 17, baseType: !267, size: 32, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1384, file: !1376, line: 18, baseType: !267, size: 32, offset: 160)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1384, file: !1376, line: 19, baseType: !267, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1384, file: !1376, line: 22, baseType: !1394, size: 640, offset: 224)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 640, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 20)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1384, file: !1376, line: 25, baseType: !267, size: 32, offset: 864)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1381, file: !1376, line: 306, baseType: !1399, size: 4096, align: 128)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1376, line: 34, size: 4096, align: 128, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1420, !1421, !1422, !1426, !1428, !1432}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1399, file: !1376, line: 35, baseType: !609, size: 16)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1399, file: !1376, line: 36, baseType: !609, size: 16, offset: 16)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1399, file: !1376, line: 37, baseType: !609, size: 16, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1399, file: !1376, line: 38, baseType: !609, size: 16, offset: 48)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1376, line: 39, baseType: !1406, size: 128, offset: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !1376, line: 39, size: 128, elements: !1407)
!1407 = !{!1408, !1413}
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1376, line: 40, baseType: !1409, size: 128)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !1376, line: 40, size: 128, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1409, file: !1376, line: 41, baseType: !483, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1409, file: !1376, line: 42, baseType: !483, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1376, line: 44, baseType: !1414, size: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !1376, line: 44, size: 128, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1414, file: !1376, line: 45, baseType: !267, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1414, file: !1376, line: 46, baseType: !267, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1414, file: !1376, line: 47, baseType: !267, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1414, file: !1376, line: 48, baseType: !267, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1399, file: !1376, line: 51, baseType: !267, size: 32, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1399, file: !1376, line: 52, baseType: !267, size: 32, offset: 224)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1399, file: !1376, line: 55, baseType: !1423, size: 1024, offset: 256)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 1024, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1399, file: !1376, line: 58, baseType: !1427, size: 2048, offset: 1280)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 2048, elements: !371)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1399, file: !1376, line: 60, baseType: !1429, size: 384, offset: 3328)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 384, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 12)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1376, line: 62, baseType: !1433, size: 384, offset: 3712)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !1376, line: 62, size: 384, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1433, file: !1376, line: 63, baseType: !1429, size: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1433, file: !1376, line: 64, baseType: !1429, size: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1381, file: !1376, line: 307, baseType: !1438, size: 1088)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1376, line: 79, size: 1088, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1486}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1438, file: !1376, line: 80, baseType: !267, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1438, file: !1376, line: 81, baseType: !267, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1438, file: !1376, line: 82, baseType: !267, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1438, file: !1376, line: 83, baseType: !267, size: 32, offset: 96)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1438, file: !1376, line: 84, baseType: !267, size: 32, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1438, file: !1376, line: 85, baseType: !267, size: 32, offset: 160)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1438, file: !1376, line: 86, baseType: !267, size: 32, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1438, file: !1376, line: 88, baseType: !1394, size: 640, offset: 224)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1438, file: !1376, line: 89, baseType: !770, size: 8, offset: 864)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1438, file: !1376, line: 90, baseType: !770, size: 8, offset: 872)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1438, file: !1376, line: 91, baseType: !770, size: 8, offset: 880)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1438, file: !1376, line: 92, baseType: !770, size: 8, offset: 888)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1438, file: !1376, line: 93, baseType: !770, size: 8, offset: 896)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1438, file: !1376, line: 94, baseType: !770, size: 8, offset: 904)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1438, file: !1376, line: 95, baseType: !1455, size: 64, offset: 960)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1457, line: 11, size: 128, elements: !1458)
!1457 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1456, file: !1457, line: 12, baseType: !192, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1456, file: !1457, line: 13, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1463, line: 56, size: 1344, elements: !1464)
!1463 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1462, file: !1463, line: 61, baseType: !252, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1462, file: !1463, line: 62, baseType: !252, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1462, file: !1463, line: 63, baseType: !252, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1462, file: !1463, line: 64, baseType: !252, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1462, file: !1463, line: 65, baseType: !252, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1462, file: !1463, line: 66, baseType: !252, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1462, file: !1463, line: 68, baseType: !252, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1462, file: !1463, line: 69, baseType: !252, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1462, file: !1463, line: 70, baseType: !252, size: 64, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1462, file: !1463, line: 71, baseType: !252, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1462, file: !1463, line: 72, baseType: !252, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1462, file: !1463, line: 73, baseType: !252, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1462, file: !1463, line: 74, baseType: !252, size: 64, offset: 768)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1462, file: !1463, line: 75, baseType: !252, size: 64, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1462, file: !1463, line: 76, baseType: !252, size: 64, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1462, file: !1463, line: 81, baseType: !252, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1462, file: !1463, line: 83, baseType: !252, size: 64, offset: 1024)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1462, file: !1463, line: 84, baseType: !252, size: 64, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !1463, line: 85, baseType: !252, size: 64, offset: 1152)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1462, file: !1463, line: 86, baseType: !252, size: 64, offset: 1216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1462, file: !1463, line: 87, baseType: !252, size: 64, offset: 1280)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1438, file: !1376, line: 96, baseType: !267, size: 32, offset: 1024)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1381, file: !1376, line: 308, baseType: !1488, size: 4608, align: 512)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1376, line: 289, size: 4608, align: 512, elements: !1489)
!1489 = !{!1490, !1491, !1500}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1488, file: !1376, line: 290, baseType: !1399, size: 4096, align: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1488, file: !1376, line: 291, baseType: !1492, size: 512, offset: 4096)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1376, line: 268, size: 512, elements: !1493)
!1493 = !{!1494, !1495, !1496}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1492, file: !1376, line: 269, baseType: !483, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1492, file: !1376, line: 270, baseType: !483, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1492, file: !1376, line: 271, baseType: !1497, size: 384, offset: 128)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 384, elements: !1498)
!1498 = !{!1499}
!1499 = !DISubrange(count: 6)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1488, file: !1376, line: 292, baseType: !1501, offset: 4608)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, elements: !1502)
!1502 = !{!1503}
!1503 = !DISubrange(count: 0)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1381, file: !1376, line: 309, baseType: !1505, size: 32768)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 32768, elements: !1506)
!1506 = !{!1507}
!1507 = !DISubrange(count: 4096)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !622, file: !455, line: 378, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !618, file: !455, line: 384, baseType: !939, size: 192, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !475, file: !455, line: 500, baseType: !325, offset: 6656)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !475, file: !455, line: 501, baseType: !1513, size: 64, offset: 6656)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !455, line: 387, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !475, file: !455, line: 516, baseType: !1516, size: 64, offset: 6720)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1518, line: 18, flags: DIFlagFwdDecl)
!1518 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !475, file: !455, line: 519, baseType: !442, size: 64, offset: 6784)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !475, file: !455, line: 521, baseType: !1521, size: 64, offset: 6848)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !455, line: 521, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !475, file: !455, line: 545, baseType: !503, size: 32, offset: 6912)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !475, file: !455, line: 548, baseType: !293, size: 8, offset: 6944)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !475, file: !455, line: 550, baseType: !1526, offset: 6952)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1527, line: 142, elements: !339)
!1527 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !475, file: !455, line: 554, baseType: !1529, size: 256, offset: 6976)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !191, line: 102, size: 256, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1529, file: !191, line: 103, baseType: !511, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1529, file: !191, line: 104, baseType: !312, size: 128, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1529, file: !191, line: 105, baseType: !1534, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !191, line: 21, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !475, file: !455, line: 557, baseType: !267, size: 32, offset: 7232)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !472, file: !455, line: 565, baseType: !1541, offset: 7296)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, elements: !1542)
!1542 = !{!1543}
!1543 = !DISubrange(count: -1)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !454, file: !455, line: 333, baseType: !1545, size: 64, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !444, line: 284, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !444, line: 284, size: 64, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1546, file: !444, line: 284, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !501, line: 19, baseType: !252)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !454, file: !455, line: 334, baseType: !252, size: 64, offset: 640)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !454, file: !455, line: 343, baseType: !1552, size: 256, offset: 704)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !455, line: 340, size: 256, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1552, file: !455, line: 341, baseType: !462, size: 192, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1552, file: !455, line: 342, baseType: !252, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !454, file: !455, line: 351, baseType: !312, size: 128, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !454, file: !455, line: 353, baseType: !1558, size: 64, offset: 1088)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !455, line: 353, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !454, file: !455, line: 356, baseType: !1561, size: 64, offset: 1152)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !455, line: 356, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !454, file: !455, line: 359, baseType: !252, size: 64, offset: 1216)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !454, file: !455, line: 361, baseType: !442, size: 64, offset: 1280)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !454, file: !455, line: 362, baseType: !256, size: 64, offset: 1344)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !454, file: !455, line: 365, baseType: !511, size: 64, offset: 1408)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !454, file: !455, line: 373, baseType: !1569, offset: 1472)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !455, line: 296, elements: !339)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !421, file: !391, line: 90, baseType: !416, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !421, file: !391, line: 91, baseType: !1572, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !381, file: !234, line: 143, baseType: !1574, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!1577, !318}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !123, line: 39, size: 384, elements: !1580)
!1580 = !{!1581, !1582, !1586, !1590, !1596, !1600}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1579, file: !123, line: 40, baseType: !122, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1579, file: !123, line: 41, baseType: !1583, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!293}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1579, file: !123, line: 42, baseType: !1587, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!256}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1579, file: !123, line: 43, baseType: !1591, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!301, !1594}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !123, line: 19, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1579, file: !123, line: 44, baseType: !1597, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!301}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1579, file: !123, line: 45, baseType: !1601, size: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !256}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !381, file: !234, line: 144, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!301, !318}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !381, file: !234, line: 145, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !318, !1612, !1618}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1518, line: 23, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1518, line: 21, size: 32, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1614, file: !1518, line: 22, baseType: !1617, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !246, line: 32, baseType: !1101)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1518, line: 28, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1518, line: 26, size: 32, elements: !1621)
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1620, file: !1518, line: 27, baseType: !1623, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !246, line: 33, baseType: !1624)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !399, line: 50, baseType: !7)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !308, file: !234, line: 70, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1628, line: 123, size: 1024, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1770, !1771, !1772, !1773, !1774}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1627, file: !1628, line: 124, baseType: !503, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1627, file: !1628, line: 125, baseType: !503, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1627, file: !1628, line: 135, baseType: !1626, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1627, file: !1628, line: 136, baseType: !262, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1627, file: !1628, line: 138, baseType: !462, size: 192, align: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1627, file: !1628, line: 140, baseType: !301, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1627, file: !1628, line: 141, baseType: !7, size: 32, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1628, line: 142, baseType: !1638, size: 256, offset: 512)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !1628, line: 142, size: 256, elements: !1639)
!1639 = !{!1640, !1694, !1698}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1638, file: !1628, line: 143, baseType: !1641, size: 192)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1628, line: 91, size: 192, elements: !1642)
!1642 = !{!1643, !1644, !1645}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1641, file: !1628, line: 92, baseType: !252, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1641, file: !1628, line: 94, baseType: !479, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1641, file: !1628, line: 100, baseType: !1646, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1628, line: 180, size: 704, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1664, !1665, !1666, !1692, !1693}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1647, file: !1628, line: 182, baseType: !1626, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1647, file: !1628, line: 183, baseType: !7, size: 32, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1647, file: !1628, line: 186, baseType: !1652, size: 192, offset: 128)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1653, line: 19, size: 192, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1654 = !{!1655, !1662, !1663}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1652, file: !1653, line: 20, baseType: !1656, size: 128)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1657, line: 292, size: 128, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1660, !1661}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1656, file: !1657, line: 293, baseType: !325)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1656, file: !1657, line: 295, baseType: !245, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1656, file: !1657, line: 296, baseType: !256, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1652, file: !1653, line: 21, baseType: !7, size: 32, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1652, file: !1653, line: 22, baseType: !7, size: 32, offset: 160)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1647, file: !1628, line: 187, baseType: !267, size: 32, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1647, file: !1628, line: 188, baseType: !267, size: 32, offset: 352)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1647, file: !1628, line: 189, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1628, line: 168, size: 320, elements: !1669)
!1669 = !{!1670, !1676, !1680, !1684, !1688}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1668, file: !1628, line: 169, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!247, !1674, !1646}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !444, line: 539, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1668, file: !1628, line: 171, baseType: !1677, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!247, !1626, !262, !406}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1668, file: !1628, line: 173, baseType: !1681, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!247, !1626}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1668, file: !1628, line: 174, baseType: !1685, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!247, !1626, !1626, !262}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1668, file: !1628, line: 176, baseType: !1689, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!247, !1674, !1626, !1646}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1647, file: !1628, line: 192, baseType: !312, size: 128, offset: 448)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1647, file: !1628, line: 194, baseType: !910, size: 128, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1638, file: !1628, line: 144, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1628, line: 103, size: 64, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1695, file: !1628, line: 104, baseType: !1626, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1638, file: !1628, line: 145, baseType: !1699, size: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1628, line: 107, size: 256, elements: !1700)
!1700 = !{!1701, !1765, !1768, !1769}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1699, file: !1628, line: 108, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1628, line: 217, size: 768, elements: !1705)
!1705 = !{!1706, !1726, !1730, !1734, !1739, !1743, !1747, !1751, !1752, !1753, !1754, !1761}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1704, file: !1628, line: 222, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!247, !1710}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1628, line: 197, size: 1088, elements: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1711, file: !1628, line: 199, baseType: !1626, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1711, file: !1628, line: 200, baseType: !442, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1711, file: !1628, line: 201, baseType: !1674, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1711, file: !1628, line: 202, baseType: !256, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1711, file: !1628, line: 205, baseType: !580, size: 192, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1711, file: !1628, line: 206, baseType: !580, size: 192, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1711, file: !1628, line: 207, baseType: !247, size: 32, offset: 640)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1711, file: !1628, line: 208, baseType: !312, size: 128, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1711, file: !1628, line: 209, baseType: !366, size: 64, offset: 832)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1711, file: !1628, line: 211, baseType: !412, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1711, file: !1628, line: 212, baseType: !293, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1711, file: !1628, line: 213, baseType: !293, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1711, file: !1628, line: 214, baseType: !1561, size: 64, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1704, file: !1628, line: 223, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1710}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1704, file: !1628, line: 236, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!247, !1674, !256}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1704, file: !1628, line: 238, baseType: !1735, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!256, !1674, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1704, file: !1628, line: 239, baseType: !1740, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!256, !1674, !256, !1738}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1704, file: !1628, line: 240, baseType: !1744, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1674, !256}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1704, file: !1628, line: 242, baseType: !1748, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!397, !1710, !366, !412, !445}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1704, file: !1628, line: 252, baseType: !412, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1704, file: !1628, line: 259, baseType: !293, size: 8, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1704, file: !1628, line: 260, baseType: !1748, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1704, file: !1628, line: 263, baseType: !1755, size: 64, offset: 640)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1758, !1710, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !251, line: 52, baseType: !7)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1628, line: 27, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1704, file: !1628, line: 266, baseType: !1762, size: 64, offset: 704)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!247, !1710, !453}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1699, file: !1628, line: 109, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1628, line: 31, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1699, file: !1628, line: 110, baseType: !445, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1699, file: !1628, line: 111, baseType: !1626, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1627, file: !1628, line: 148, baseType: !256, size: 64, offset: 768)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1627, file: !1628, line: 154, baseType: !483, size: 64, offset: 832)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1627, file: !1628, line: 156, baseType: !407, size: 16, offset: 896)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1627, file: !1628, line: 157, baseType: !406, size: 16, offset: 912)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1627, file: !1628, line: 158, baseType: !1775, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1628, line: 32, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !308, file: !234, line: 71, baseType: !1778, size: 32, offset: 448)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1779, line: 19, size: 32, elements: !1780)
!1779 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !{!1781}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1778, file: !1779, line: 20, baseType: !639, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !308, file: !234, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !308, file: !234, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !308, file: !234, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !308, file: !234, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !308, file: !234, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !305, file: !135, line: 463, baseType: !1788, size: 64, offset: 512)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !305, file: !135, line: 465, baseType: !1790, size: 64, offset: 576)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !135, line: 36, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !305, file: !135, line: 467, baseType: !262, size: 64, offset: 640)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !305, file: !135, line: 468, baseType: !1794, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !135, line: 87, size: 384, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1804, !1809, !1813}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1796, file: !135, line: 88, baseType: !262, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1796, file: !135, line: 89, baseType: !418, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1796, file: !135, line: 90, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!247, !1788, !361}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1796, file: !135, line: 91, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!366, !1788, !1808, !1612, !1618}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1796, file: !135, line: 93, baseType: !1810, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !1788}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1796, file: !135, line: 95, baseType: !1814, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !142, line: 278, size: 1472, elements: !1817)
!1817 = !{!1818, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1816, file: !142, line: 279, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!247, !1788}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1816, file: !142, line: 280, baseType: !1810, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1816, file: !142, line: 281, baseType: !1819, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1816, file: !142, line: 282, baseType: !1819, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1816, file: !142, line: 283, baseType: !1819, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1816, file: !142, line: 284, baseType: !1819, size: 64, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1816, file: !142, line: 285, baseType: !1819, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1816, file: !142, line: 286, baseType: !1819, size: 64, offset: 448)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1816, file: !142, line: 287, baseType: !1819, size: 64, offset: 512)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1816, file: !142, line: 288, baseType: !1819, size: 64, offset: 576)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1816, file: !142, line: 289, baseType: !1819, size: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1816, file: !142, line: 290, baseType: !1819, size: 64, offset: 704)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1816, file: !142, line: 291, baseType: !1819, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1816, file: !142, line: 292, baseType: !1819, size: 64, offset: 832)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1816, file: !142, line: 293, baseType: !1819, size: 64, offset: 896)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1816, file: !142, line: 294, baseType: !1819, size: 64, offset: 960)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1816, file: !142, line: 295, baseType: !1819, size: 64, offset: 1024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1816, file: !142, line: 296, baseType: !1819, size: 64, offset: 1088)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1816, file: !142, line: 297, baseType: !1819, size: 64, offset: 1152)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1816, file: !142, line: 298, baseType: !1819, size: 64, offset: 1216)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1816, file: !142, line: 299, baseType: !1819, size: 64, offset: 1280)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1816, file: !142, line: 300, baseType: !1819, size: 64, offset: 1344)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1816, file: !142, line: 301, baseType: !1819, size: 64, offset: 1408)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !305, file: !135, line: 470, baseType: !1845, size: 64, offset: 768)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1847, line: 82, size: 1408, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1934, !1937, !1940}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1846, file: !1847, line: 83, baseType: !262, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1846, file: !1847, line: 84, baseType: !262, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1846, file: !1847, line: 85, baseType: !1788, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1846, file: !1847, line: 86, baseType: !418, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1846, file: !1847, line: 87, baseType: !418, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1846, file: !1847, line: 88, baseType: !418, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1846, file: !1847, line: 90, baseType: !1856, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!247, !1788, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !129, line: 95, size: 1152, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1868, !1869, !1870, !1871, !1885, !1898, !1899, !1900, !1901, !1902, !1910, !1911, !1912, !1913, !1914, !1915}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1860, file: !129, line: 96, baseType: !262, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1860, file: !129, line: 97, baseType: !1845, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1860, file: !129, line: 99, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1867, line: 76, flags: DIFlagFwdDecl)
!1867 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1860, file: !129, line: 100, baseType: !262, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1860, file: !129, line: 102, baseType: !293, size: 8, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1860, file: !129, line: 103, baseType: !128, size: 32, offset: 288)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1860, file: !129, line: 105, baseType: !1872, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1875, line: 262, size: 1600, elements: !1876)
!1875 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !{!1877, !1879, !1880, !1884}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1874, file: !1875, line: 263, baseType: !1878, size: 256)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !1424)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1874, file: !1875, line: 264, baseType: !1878, size: 256, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1874, file: !1875, line: 265, baseType: !1881, size: 1024, offset: 512)
!1881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 1024, elements: !1882)
!1882 = !{!1883}
!1883 = !DISubrange(count: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1874, file: !1875, line: 266, baseType: !301, size: 64, offset: 1536)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1860, file: !129, line: 106, baseType: !1886, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1875, line: 210, size: 256, elements: !1889)
!1889 = !{!1890, !1894, !1896, !1897}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1888, file: !1875, line: 211, baseType: !1891, size: 72)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 72, elements: !1892)
!1892 = !{!1893}
!1893 = !DISubrange(count: 9)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1888, file: !1875, line: 212, baseType: !1895, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1875, line: 14, baseType: !252)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1888, file: !1875, line: 213, baseType: !248, size: 32, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1888, file: !1875, line: 214, baseType: !248, size: 32, offset: 224)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1860, file: !129, line: 108, baseType: !1819, size: 64, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1860, file: !129, line: 109, baseType: !1810, size: 64, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1860, file: !129, line: 110, baseType: !1819, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1860, file: !129, line: 111, baseType: !1810, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1860, file: !129, line: 112, baseType: !1903, size: 64, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!247, !1788, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !142, line: 52, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !142, line: 50, size: 32, elements: !1908)
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1907, file: !142, line: 51, baseType: !247, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1860, file: !129, line: 113, baseType: !1819, size: 64, offset: 768)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1860, file: !129, line: 114, baseType: !418, size: 64, offset: 832)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1860, file: !129, line: 115, baseType: !418, size: 64, offset: 896)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1860, file: !129, line: 117, baseType: !1814, size: 64, offset: 960)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1860, file: !129, line: 118, baseType: !1810, size: 64, offset: 1024)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1860, file: !129, line: 120, baseType: !1916, size: 64, offset: 1088)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !129, line: 120, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1846, file: !1847, line: 91, baseType: !1801, size: 64, offset: 448)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1846, file: !1847, line: 92, baseType: !1819, size: 64, offset: 512)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1846, file: !1847, line: 93, baseType: !1810, size: 64, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1846, file: !1847, line: 94, baseType: !1819, size: 64, offset: 640)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1846, file: !1847, line: 95, baseType: !1810, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1846, file: !1847, line: 97, baseType: !1819, size: 64, offset: 768)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1846, file: !1847, line: 98, baseType: !1819, size: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1846, file: !1847, line: 100, baseType: !1903, size: 64, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1846, file: !1847, line: 101, baseType: !1819, size: 64, offset: 960)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1846, file: !1847, line: 103, baseType: !1819, size: 64, offset: 1024)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1846, file: !1847, line: 105, baseType: !1819, size: 64, offset: 1088)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1846, file: !1847, line: 107, baseType: !1814, size: 64, offset: 1152)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1846, file: !1847, line: 109, baseType: !1931, size: 64, offset: 1216)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1933)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1847, line: 109, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1846, file: !1847, line: 111, baseType: !1935, size: 64, offset: 1280)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1847, line: 111, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1846, file: !1847, line: 112, baseType: !1938, offset: 1344)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1939, line: 187, elements: !339)
!1939 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1846, file: !1847, line: 114, baseType: !293, size: 8, offset: 1344)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !305, file: !135, line: 471, baseType: !1859, size: 64, offset: 832)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !305, file: !135, line: 473, baseType: !256, size: 64, offset: 896)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !305, file: !135, line: 475, baseType: !256, size: 64, offset: 960)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !305, file: !135, line: 480, baseType: !580, size: 192, offset: 1024)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !305, file: !135, line: 484, baseType: !1946, size: 576, offset: 1216)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !135, line: 361, size: 576, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1946, file: !135, line: 362, baseType: !312, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1946, file: !135, line: 363, baseType: !312, size: 128, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1946, file: !135, line: 364, baseType: !312, size: 128, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1946, file: !135, line: 365, baseType: !312, size: 128, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1946, file: !135, line: 366, baseType: !293, size: 8, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1946, file: !135, line: 367, baseType: !134, size: 32, offset: 544)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !305, file: !135, line: 485, baseType: !1955, size: 2304, offset: 1792)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !142, line: 565, size: 2304, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2052, !2056}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1955, file: !142, line: 566, baseType: !1906, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1955, file: !142, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1955, file: !142, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1955, file: !142, line: 569, baseType: !293, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1955, file: !142, line: 570, baseType: !293, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1955, file: !142, line: 571, baseType: !293, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1955, file: !142, line: 572, baseType: !293, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1955, file: !142, line: 573, baseType: !293, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1955, file: !142, line: 574, baseType: !293, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1955, file: !142, line: 575, baseType: !293, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1955, file: !142, line: 576, baseType: !293, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1955, file: !142, line: 577, baseType: !267, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1955, file: !142, line: 578, baseType: !325, offset: 96)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1955, file: !142, line: 580, baseType: !312, size: 128, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1955, file: !142, line: 581, baseType: !939, size: 192, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1955, file: !142, line: 582, baseType: !1973, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1975, line: 43, size: 1472, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1984, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1974, file: !1975, line: 44, baseType: !262, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1974, file: !1975, line: 45, baseType: !247, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1974, file: !1975, line: 46, baseType: !312, size: 128, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1974, file: !1975, line: 47, baseType: !325, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1974, file: !1975, line: 48, baseType: !1982, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !142, line: 533, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1974, file: !1975, line: 49, baseType: !1985, size: 320, offset: 320)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1986, line: 11, size: 320, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988, !1989, !1990, !1995}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1985, file: !1986, line: 16, baseType: !903, size: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1985, file: !1986, line: 17, baseType: !252, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1985, file: !1986, line: 18, baseType: !1991, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1986, line: 19, baseType: !267, size: 32, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1974, file: !1975, line: 50, baseType: !252, size: 64, offset: 640)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1974, file: !1975, line: 51, baseType: !709, size: 64, offset: 704)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1974, file: !1975, line: 52, baseType: !709, size: 64, offset: 768)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1974, file: !1975, line: 53, baseType: !709, size: 64, offset: 832)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1974, file: !1975, line: 54, baseType: !709, size: 64, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1974, file: !1975, line: 55, baseType: !709, size: 64, offset: 960)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1974, file: !1975, line: 56, baseType: !252, size: 64, offset: 1024)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1974, file: !1975, line: 57, baseType: !252, size: 64, offset: 1088)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1974, file: !1975, line: 58, baseType: !252, size: 64, offset: 1152)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1974, file: !1975, line: 59, baseType: !252, size: 64, offset: 1216)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1974, file: !1975, line: 60, baseType: !252, size: 64, offset: 1280)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1974, file: !1975, line: 61, baseType: !1788, size: 64, offset: 1344)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1974, file: !1975, line: 62, baseType: !293, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1974, file: !1975, line: 63, baseType: !293, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1955, file: !142, line: 583, baseType: !293, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1955, file: !142, line: 584, baseType: !293, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1955, file: !142, line: 585, baseType: !293, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1955, file: !142, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1955, file: !142, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1955, file: !142, line: 592, baseType: !701, size: 512, offset: 576)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1955, file: !142, line: 593, baseType: !483, size: 64, offset: 1088)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1955, file: !142, line: 594, baseType: !1529, size: 256, offset: 1152)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1955, file: !142, line: 595, baseType: !910, size: 128, offset: 1408)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1955, file: !142, line: 596, baseType: !1982, size: 64, offset: 1536)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1955, file: !142, line: 597, baseType: !503, size: 32, offset: 1600)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1955, file: !142, line: 598, baseType: !503, size: 32, offset: 1632)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1955, file: !142, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1955, file: !142, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1955, file: !142, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1955, file: !142, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1955, file: !142, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1955, file: !142, line: 604, baseType: !293, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1955, file: !142, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1955, file: !142, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1955, file: !142, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1955, file: !142, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1955, file: !142, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1955, file: !142, line: 610, baseType: !7, size: 32, offset: 1696)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1955, file: !142, line: 611, baseType: !141, size: 32, offset: 1728)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1955, file: !142, line: 612, baseType: !149, size: 32, offset: 1760)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1955, file: !142, line: 613, baseType: !247, size: 32, offset: 1792)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1955, file: !142, line: 614, baseType: !247, size: 32, offset: 1824)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1955, file: !142, line: 615, baseType: !483, size: 64, offset: 1856)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1955, file: !142, line: 616, baseType: !483, size: 64, offset: 1920)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1955, file: !142, line: 617, baseType: !483, size: 64, offset: 1984)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1955, file: !142, line: 618, baseType: !483, size: 64, offset: 2048)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1955, file: !142, line: 620, baseType: !2043, size: 64, offset: 2112)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !142, line: 536, size: 256, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2044, file: !142, line: 537, baseType: !325)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2044, file: !142, line: 538, baseType: !7, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2044, file: !142, line: 540, baseType: !312, size: 128, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2044, file: !142, line: 543, baseType: !2050, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !142, line: 534, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1955, file: !142, line: 621, baseType: !2053, size: 64, offset: 2176)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{null, !1788, !863}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1955, file: !142, line: 622, baseType: !2057, size: 64, offset: 2240)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !142, line: 622, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !305, file: !135, line: 486, baseType: !2060, size: 64, offset: 4096)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !142, line: 642, size: 1792, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2069, !2070, !2071}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2061, file: !142, line: 643, baseType: !1816, size: 1472)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2061, file: !142, line: 644, baseType: !1819, size: 64, offset: 1472)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2061, file: !142, line: 645, baseType: !2066, size: 64, offset: 1536)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !1788, !293}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2061, file: !142, line: 646, baseType: !1819, size: 64, offset: 1600)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2061, file: !142, line: 647, baseType: !1810, size: 64, offset: 1664)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2061, file: !142, line: 648, baseType: !1810, size: 64, offset: 1728)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !305, file: !135, line: 493, baseType: !2073, size: 64, offset: 4160)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !135, line: 493, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !305, file: !135, line: 499, baseType: !312, size: 128, offset: 4224)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !305, file: !135, line: 502, baseType: !2077, size: 64, offset: 4352)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !135, line: 502, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !305, file: !135, line: 504, baseType: !2081, size: 64, offset: 4416)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !305, file: !135, line: 505, baseType: !483, size: 64, offset: 4480)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !305, file: !135, line: 510, baseType: !483, size: 64, offset: 4544)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !305, file: !135, line: 511, baseType: !2085, size: 64, offset: 4608)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2087)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !135, line: 511, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !305, file: !135, line: 513, baseType: !2089, size: 64, offset: 4672)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !135, line: 288, size: 128, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2090, file: !135, line: 293, baseType: !7, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2090, file: !135, line: 294, baseType: !252, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !305, file: !135, line: 515, baseType: !312, size: 128, offset: 4736)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !305, file: !135, line: 526, baseType: !2096, offset: 4864)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2097, line: 5, elements: !339)
!2097 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !305, file: !135, line: 528, baseType: !257, size: 64, offset: 4864)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !305, file: !135, line: 529, baseType: !275, size: 64, offset: 4928)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !305, file: !135, line: 534, baseType: !2101, size: 32, offset: 4992)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !246, line: 16, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !246, line: 13, baseType: !267)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !305, file: !135, line: 535, baseType: !267, size: 32, offset: 5024)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !305, file: !135, line: 537, baseType: !325, offset: 5056)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !305, file: !135, line: 538, baseType: !312, size: 128, offset: 5056)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !305, file: !135, line: 540, baseType: !2107, size: 64, offset: 5184)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2109, line: 54, size: 960, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117, !2121, !2125, !2126, !2127, !2128, !2132, !2136, !2137}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2108, file: !2109, line: 55, baseType: !262, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2108, file: !2109, line: 56, baseType: !1865, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2108, file: !2109, line: 58, baseType: !418, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2108, file: !2109, line: 59, baseType: !418, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2108, file: !2109, line: 60, baseType: !318, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2108, file: !2109, line: 62, baseType: !1801, size: 64, offset: 320)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2108, file: !2109, line: 63, baseType: !2118, size: 64, offset: 384)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!366, !1788, !1808}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2108, file: !2109, line: 65, baseType: !2122, size: 64, offset: 448)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !2107}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2108, file: !2109, line: 66, baseType: !1810, size: 64, offset: 512)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2108, file: !2109, line: 68, baseType: !1819, size: 64, offset: 576)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2108, file: !2109, line: 70, baseType: !1577, size: 64, offset: 640)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2108, file: !2109, line: 71, baseType: !2129, size: 64, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!301, !1788}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2108, file: !2109, line: 73, baseType: !2133, size: 64, offset: 768)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !1788, !1612, !1618}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2108, file: !2109, line: 75, baseType: !1814, size: 64, offset: 832)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2108, file: !2109, line: 77, baseType: !1935, size: 64, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !305, file: !135, line: 541, baseType: !418, size: 64, offset: 5248)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !305, file: !135, line: 543, baseType: !1810, size: 64, offset: 5312)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !305, file: !135, line: 544, baseType: !2141, size: 64, offset: 5376)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !135, line: 45, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !305, file: !135, line: 545, baseType: !2144, size: 64, offset: 5440)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !135, line: 47, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !305, file: !135, line: 547, baseType: !293, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !305, file: !135, line: 548, baseType: !293, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !305, file: !135, line: 549, baseType: !293, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !305, file: !135, line: 550, baseType: !293, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !279, file: !272, line: 116, baseType: !2151, size: 64, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!293, !295, !262}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !279, file: !272, line: 118, baseType: !2155, size: 64, offset: 320)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!247, !295, !262, !7, !256, !412}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !279, file: !272, line: 123, baseType: !2159, size: 64, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!247, !295, !262, !2162, !412}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !279, file: !272, line: 126, baseType: !2164, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!262, !295}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !279, file: !272, line: 127, baseType: !2164, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !279, file: !272, line: 128, baseType: !2169, size: 64, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!275, !295}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !279, file: !272, line: 130, baseType: !2173, size: 64, offset: 640)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!275, !295, !275}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !279, file: !272, line: 133, baseType: !2177, size: 64, offset: 704)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!275, !295, !262}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !279, file: !272, line: 135, baseType: !2181, size: 64, offset: 768)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!247, !295, !262, !262, !7, !7, !2184}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !272, line: 43, size: 640, elements: !2186)
!2186 = !{!2187, !2188, !2189}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2185, file: !272, line: 44, baseType: !275, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2185, file: !272, line: 45, baseType: !7, size: 32, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2185, file: !272, line: 46, baseType: !2190, size: 512, offset: 128)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 512, elements: !739)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !279, file: !272, line: 140, baseType: !2173, size: 64, offset: 832)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !279, file: !272, line: 143, baseType: !2169, size: 64, offset: 896)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !279, file: !272, line: 145, baseType: !282, size: 64, offset: 960)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !279, file: !272, line: 146, baseType: !2195, size: 64, offset: 1024)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!247, !295, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !272, line: 29, size: 128, elements: !2200)
!2200 = !{!2201, !2202, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2199, file: !272, line: 30, baseType: !7, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2199, file: !272, line: 31, baseType: !7, size: 32, offset: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2199, file: !272, line: 32, baseType: !295, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !279, file: !272, line: 148, baseType: !2205, size: 64, offset: 1088)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!247, !295, !1788}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !271, file: !272, line: 20, baseType: !1788, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !258, file: !259, line: 57, baseType: !2210, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !259, line: 31, size: 704, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2216, !2217}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2211, file: !259, line: 32, baseType: !366, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2211, file: !259, line: 33, baseType: !247, size: 32, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2211, file: !259, line: 34, baseType: !256, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2211, file: !259, line: 35, baseType: !2210, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2211, file: !259, line: 43, baseType: !433, size: 448, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !258, file: !259, line: 58, baseType: !2210, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !258, file: !259, line: 59, baseType: !257, size: 64, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !258, file: !259, line: 60, baseType: !257, size: 64, offset: 576)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !258, file: !259, line: 61, baseType: !257, size: 64, offset: 640)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !258, file: !259, line: 63, baseType: !308, size: 512, offset: 704)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !258, file: !259, line: 65, baseType: !252, size: 64, offset: 1216)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !258, file: !259, line: 66, baseType: !256, size: 64, offset: 1280)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply", file: !6, line: 273, size: 7168, elements: !2227)
!2227 = !{!2228, !2269, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2287, !2288, !2289, !2290, !2291, !2292, !2456}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2226, file: !6, line: 274, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_desc", file: !6, line: 233, size: 768, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2238, !2239, !2242, !2243, !2252, !2258, !2262, !2266, !2267, !2268}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2231, file: !6, line: 234, baseType: !262, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2231, file: !6, line: 235, baseType: !5, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "usb_types", scope: !2231, file: !6, line: 236, baseType: !2236, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "num_usb_types", scope: !2231, file: !6, line: 237, baseType: !412, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2231, file: !6, line: 238, baseType: !2240, size: 64, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "num_properties", scope: !2231, file: !6, line: 239, baseType: !412, size: 64, offset: 320)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "get_property", scope: !2231, file: !6, line: 247, baseType: !2244, size: 64, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!247, !2225, !34, !2247}
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "power_supply_propval", file: !6, line: 209, size: 64, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !2248, file: !6, line: 210, baseType: !247, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "strval", scope: !2248, file: !6, line: 211, baseType: !262, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !2231, file: !6, line: 250, baseType: !2253, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!247, !2225, !34, !2256}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2248)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "property_is_writeable", scope: !2231, file: !6, line: 258, baseType: !2259, size: 64, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!247, !2225, !34}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "external_power_changed", scope: !2231, file: !6, line: 260, baseType: !2263, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !2225}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "set_charged", scope: !2231, file: !6, line: 261, baseType: !2263, size: 64, offset: 640)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "no_thermal", scope: !2231, file: !6, line: 268, baseType: !293, size: 8, offset: 704)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "use_for_apm", scope: !2231, file: !6, line: 270, baseType: !247, size: 32, offset: 736)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !2226, file: !6, line: 276, baseType: !2270, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !2226, file: !6, line: 277, baseType: !412, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_from", scope: !2226, file: !6, line: 279, baseType: !2270, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplies", scope: !2226, file: !6, line: 280, baseType: !412, size: 64, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2226, file: !6, line: 281, baseType: !257, size: 64, offset: 320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !2226, file: !6, line: 284, baseType: !256, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2226, file: !6, line: 287, baseType: !305, size: 5568, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "changed_work", scope: !2226, file: !6, line: 288, baseType: !1529, size: 256, offset: 6016)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_register_work", scope: !2226, file: !6, line: 289, baseType: !2279, size: 704, offset: 6272)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !191, line: 115, size: 704, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2286}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2279, file: !191, line: 116, baseType: !1529, size: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2279, file: !191, line: 117, baseType: !1985, size: 320, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2279, file: !191, line: 120, baseType: !2284, size: 64, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !191, line: 18, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2279, file: !191, line: 121, baseType: !247, size: 32, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "changed_lock", scope: !2226, file: !6, line: 290, baseType: !325, offset: 6976)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2226, file: !6, line: 291, baseType: !293, size: 8, offset: 6976)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2226, file: !6, line: 292, baseType: !293, size: 8, offset: 6984)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "removing", scope: !2226, file: !6, line: 293, baseType: !293, size: 8, offset: 6992)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "use_cnt", scope: !2226, file: !6, line: 294, baseType: !503, size: 32, offset: 7008)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tzd", scope: !2226, file: !6, line: 296, baseType: !2293, size: 64, offset: 7040)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !167, line: 150, size: 8448, elements: !2295)
!2295 = !{!2296, !2297, !2299, !2300, !2301, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2407, !2431, !2446, !2447, !2448, !2452, !2453, !2454, !2455}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2294, file: !167, line: 151, baseType: !247, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2294, file: !167, line: 152, baseType: !2298, size: 160, offset: 32)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 160, elements: !1395)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2294, file: !167, line: 153, baseType: !305, size: 5568, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2294, file: !167, line: 154, baseType: !421, size: 320, offset: 5760)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2294, file: !167, line: 155, baseType: !2302, size: 64, offset: 6080)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !167, line: 38, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2294, file: !167, line: 156, baseType: !2302, size: 64, offset: 6144)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2294, file: !167, line: 157, baseType: !2302, size: 64, offset: 6208)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2294, file: !167, line: 158, baseType: !155, size: 32, offset: 6272)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2294, file: !167, line: 159, baseType: !256, size: 64, offset: 6336)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2294, file: !167, line: 160, baseType: !247, size: 32, offset: 6400)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2294, file: !167, line: 161, baseType: !252, size: 64, offset: 6464)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2294, file: !167, line: 162, baseType: !247, size: 32, offset: 6528)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2294, file: !167, line: 163, baseType: !247, size: 32, offset: 6560)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2294, file: !167, line: 164, baseType: !247, size: 32, offset: 6592)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2294, file: !167, line: 165, baseType: !247, size: 32, offset: 6624)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2294, file: !167, line: 166, baseType: !247, size: 32, offset: 6656)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2294, file: !167, line: 167, baseType: !247, size: 32, offset: 6688)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2294, file: !167, line: 168, baseType: !247, size: 32, offset: 6720)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2294, file: !167, line: 169, baseType: !247, size: 32, offset: 6752)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !2294, file: !167, line: 170, baseType: !7, size: 32, offset: 6784)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2294, file: !167, line: 171, baseType: !503, size: 32, offset: 6816)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2294, file: !167, line: 172, baseType: !2321, size: 64, offset: 6848)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !167, line: 61, size: 896, elements: !2323)
!2323 = !{!2324, !2368, !2369, !2373, !2377, !2381, !2386, !2390, !2391, !2392, !2393, !2394, !2398, !2403}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2322, file: !167, line: 62, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!247, !2293, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !167, line: 93, size: 6528, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337, !2364, !2365, !2366, !2367}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2329, file: !167, line: 94, baseType: !247, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2329, file: !167, line: 95, baseType: !2298, size: 160, offset: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2329, file: !167, line: 96, baseType: !305, size: 5568, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2329, file: !167, line: 97, baseType: !257, size: 64, offset: 5760)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2329, file: !167, line: 98, baseType: !256, size: 64, offset: 5824)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2329, file: !167, line: 99, baseType: !256, size: 64, offset: 5888)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2329, file: !167, line: 100, baseType: !2338, size: 64, offset: 5952)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2340)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !167, line: 84, size: 384, elements: !2341)
!2341 = !{!2342, !2347, !2348, !2352, !2356, !2360}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2340, file: !167, line: 85, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!247, !2328, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2340, file: !167, line: 86, baseType: !2343, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2340, file: !167, line: 87, baseType: !2349, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!247, !2328, !252}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2340, file: !167, line: 88, baseType: !2353, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!247, !2328, !834}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2340, file: !167, line: 89, baseType: !2357, size: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!247, !2328, !252, !834}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2340, file: !167, line: 90, baseType: !2361, size: 64, offset: 320)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!247, !2328, !267, !2346}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2329, file: !167, line: 101, baseType: !293, size: 8, offset: 6016)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2329, file: !167, line: 102, baseType: !580, size: 192, offset: 6080)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2329, file: !167, line: 103, baseType: !312, size: 128, offset: 6272)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2329, file: !167, line: 104, baseType: !312, size: 128, offset: 6400)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2322, file: !167, line: 64, baseType: !2325, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2322, file: !167, line: 66, baseType: !2370, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!247, !2293, !950}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2322, file: !167, line: 67, baseType: !2374, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!247, !2293, !247, !247}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2322, file: !167, line: 68, baseType: !2378, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!247, !2293, !155}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2322, file: !167, line: 70, baseType: !2382, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!247, !2293, !247, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2322, file: !167, line: 72, baseType: !2387, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!247, !2293, !247, !950}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2322, file: !167, line: 73, baseType: !2374, size: 64, offset: 448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2322, file: !167, line: 74, baseType: !2387, size: 64, offset: 512)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2322, file: !167, line: 75, baseType: !2374, size: 64, offset: 576)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2322, file: !167, line: 76, baseType: !2370, size: 64, offset: 640)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2322, file: !167, line: 77, baseType: !2395, size: 64, offset: 704)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!247, !2293, !247}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2322, file: !167, line: 78, baseType: !2399, size: 64, offset: 768)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!247, !2293, !247, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2322, file: !167, line: 80, baseType: !2404, size: 64, offset: 832)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!247, !2293, !247, !160}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2294, file: !167, line: 173, baseType: !2408, size: 64, offset: 6912)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !167, line: 240, size: 576, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2409, file: !167, line: 241, baseType: !2298, size: 160)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2409, file: !167, line: 248, baseType: !293, size: 8, offset: 160)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2409, file: !167, line: 250, baseType: !247, size: 32, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2409, file: !167, line: 251, baseType: !2415, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !167, line: 205, size: 256, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2416, file: !167, line: 206, baseType: !2328, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2416, file: !167, line: 217, baseType: !247, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2416, file: !167, line: 224, baseType: !247, size: 32, offset: 96)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2416, file: !167, line: 234, baseType: !2346, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2416, file: !167, line: 235, baseType: !2325, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2409, file: !167, line: 257, baseType: !267, size: 32, offset: 320)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2409, file: !167, line: 263, baseType: !863, size: 32, offset: 352)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2409, file: !167, line: 269, baseType: !863, size: 32, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2409, file: !167, line: 272, baseType: !863, size: 32, offset: 416)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2409, file: !167, line: 275, baseType: !863, size: 32, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2409, file: !167, line: 278, baseType: !863, size: 32, offset: 480)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2409, file: !167, line: 284, baseType: !247, size: 32, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2409, file: !167, line: 289, baseType: !247, size: 32, offset: 544)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2294, file: !167, line: 174, baseType: !2432, size: 64, offset: 6976)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !167, line: 196, size: 512, elements: !2434)
!2434 = !{!2435, !2436, !2440, !2444, !2445}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2433, file: !167, line: 197, baseType: !2298, size: 160)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2433, file: !167, line: 198, baseType: !2437, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!247, !2293}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2433, file: !167, line: 199, baseType: !2441, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !2293}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2433, file: !167, line: 200, baseType: !2395, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2433, file: !167, line: 201, baseType: !312, size: 128, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2294, file: !167, line: 175, baseType: !256, size: 64, offset: 7040)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2294, file: !167, line: 176, baseType: !312, size: 128, offset: 7104)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2294, file: !167, line: 177, baseType: !2449, size: 128, offset: 7232)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1653, line: 244, size: 128, elements: !2450)
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2449, file: !1653, line: 245, baseType: !1656, size: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2294, file: !167, line: 178, baseType: !580, size: 192, offset: 7360)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2294, file: !167, line: 179, baseType: !312, size: 128, offset: 7552)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2294, file: !167, line: 180, baseType: !2279, size: 704, offset: 7680)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2294, file: !167, line: 181, baseType: !174, size: 32, offset: 8384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "tcd", scope: !2226, file: !6, line: 297, baseType: !2328, size: 64, offset: 7104)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !315)
!2459 = !{!0, !2460, !2462, !2469, !2474, !2479, !2484, !2489, !2491, !2493, !2495, !2497}
!2460 = !DIGlobalVariableExpression(var: !2461, expr: !DIExpression())
!2461 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_power_supply_class_init167", scope: !2, file: !3, line: 1380, type: !256, isLocal: true, isDefinition: true)
!2462 = !DIGlobalVariableExpression(var: !2463, expr: !DIExpression())
!2463 = distinct !DIGlobalVariable(name: "__exitcall_power_supply_class_exit", scope: !2, file: !3, line: 1381, type: !2464, isLocal: true, isDefinition: true)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2465, line: 117, baseType: !2466)
!2465 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null}
!2469 = !DIGlobalVariableExpression(var: !2470, expr: !DIExpression())
!2470 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description168", scope: !2, file: !3, line: 1383, type: !2471, isLocal: true, isDefinition: true, align: 8)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 496, elements: !2472)
!2472 = !{!2473}
!2473 = !DISubrange(count: 62)
!2474 = !DIGlobalVariableExpression(var: !2475, expr: !DIExpression())
!2475 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author169", scope: !2, file: !3, line: 1384, type: !2476, isLocal: true, isDefinition: true, align: 8)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 768, elements: !2477)
!2477 = !{!2478}
!2478 = !DISubrange(count: 96)
!2479 = !DIGlobalVariableExpression(var: !2480, expr: !DIExpression())
!2480 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file170", scope: !2, file: !3, line: 1387, type: !2481, isLocal: true, isDefinition: true, align: 8)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 416, elements: !2482)
!2482 = !{!2483}
!2483 = !DISubrange(count: 52)
!2484 = !DIGlobalVariableExpression(var: !2485, expr: !DIExpression())
!2485 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license171", scope: !2, file: !3, line: 1387, type: !2486, isLocal: true, isDefinition: true, align: 8)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 200, elements: !2487)
!2487 = !{!2488}
!2488 = !DISubrange(count: 25)
!2489 = !DIGlobalVariableExpression(var: !2490, expr: !DIExpression())
!2490 = distinct !DIGlobalVariable(name: "power_supply_class", scope: !2, file: !3, line: 27, type: !2107, isLocal: false, isDefinition: true)
!2491 = !DIGlobalVariableExpression(var: !2492, expr: !DIExpression())
!2492 = distinct !DIGlobalVariable(name: "power_supply_dev_type", scope: !2, file: !3, line: 33, type: !1796, isLocal: true, isDefinition: true)
!2493 = !DIGlobalVariableExpression(var: !2494, expr: !DIExpression())
!2494 = distinct !DIGlobalVariable(name: "psy_tzd_ops", scope: !2, file: !3, line: 955, type: !2322, isLocal: true, isDefinition: true)
!2495 = !DIGlobalVariableExpression(var: !2496, expr: !DIExpression())
!2496 = distinct !DIGlobalVariable(name: "psy_tcd_ops", scope: !2, file: !3, line: 1041, type: !2339, isLocal: true, isDefinition: true)
!2497 = !DIGlobalVariableExpression(var: !2498, expr: !DIExpression())
!2498 = distinct !DIGlobalVariable(name: "__key", scope: !2499, file: !3, line: 1364, type: !1938, isLocal: true, isDefinition: true)
!2499 = distinct !DISubprogram(name: "power_supply_class_init", scope: !3, file: !3, line: 1362, type: !2500, scopeLine: 1363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!247}
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !2503, line: 60, size: 64, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2502, file: !2503, line: 61, baseType: !325)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2502, file: !2503, line: 62, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2503, line: 54, size: 192, elements: !2509)
!2509 = !{!2510, !2515, !2516}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2508, file: !2503, line: 55, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2503, line: 51, baseType: !2512)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!247, !2507, !252, !256}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2508, file: !2503, line: 56, baseType: !2507, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2508, file: !2503, line: 57, baseType: !247, size: 32, offset: 128)
!2517 = !{!"rsp"}
!2518 = !{i32 7, !"Dwarf Version", i32 4}
!2519 = !{i32 2, !"Debug Info Version", i32 3}
!2520 = !{i32 1, !"wchar_size", i32 2}
!2521 = !{i32 1, !"Code Model", i32 2}
!2522 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2523 = distinct !DISubprogram(name: "power_supply_changed", scope: !3, file: !3, line: 114, type: !2264, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2524 = !DILocalVariable(name: "lock", arg: 1, scope: !2525, file: !2526, line: 407, type: !2529)
!2525 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2526, file: !2526, line: 407, type: !2527, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2526 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null, !2529, !252}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2530 = !DILocation(line: 407, column: 64, scope: !2525, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 123, column: 2, scope: !2523)
!2532 = !DILocalVariable(name: "flags", arg: 2, scope: !2525, file: !2526, line: 407, type: !252)
!2533 = !DILocation(line: 407, column: 84, scope: !2525, inlinedAt: !2531)
!2534 = !DILocalVariable(name: "lock", arg: 1, scope: !2535, file: !2526, line: 327, type: !2529)
!2535 = distinct !DISubprogram(name: "spinlock_check", scope: !2526, file: !2526, line: 327, type: !2536, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!2538, !2529}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!2539 = !DILocation(line: 327, column: 67, scope: !2535, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 120, column: 2, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 120, column: 2)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 120, column: 2)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 120, column: 2)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 120, column: 2)
!2545 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 120, column: 2)
!2546 = !DILocalVariable(name: "psy", arg: 1, scope: !2523, file: !3, line: 114, type: !2225)
!2547 = !DILocation(line: 114, column: 48, scope: !2523)
!2548 = !DILocalVariable(name: "flags", scope: !2523, file: !3, line: 116, type: !252)
!2549 = !DILocation(line: 116, column: 16, scope: !2523)
!2550 = !DILocation(line: 120, column: 2, scope: !2523)
!2551 = !DILocation(line: 120, column: 2, scope: !2545)
!2552 = !DILocalVariable(name: "__dummy", scope: !2553, file: !3, line: 120, type: !252)
!2553 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 120, column: 2)
!2554 = !DILocation(line: 120, column: 2, scope: !2553)
!2555 = !DILocalVariable(name: "__dummy2", scope: !2553, file: !3, line: 120, type: !252)
!2556 = !DILocation(line: 120, column: 2, scope: !2544)
!2557 = !DILocation(line: 120, column: 2, scope: !2543)
!2558 = !DILocation(line: 120, column: 2, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 120, column: 2)
!2560 = !DILocalVariable(name: "__dummy", scope: !2561, file: !3, line: 120, type: !252)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 120, column: 2)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 120, column: 2)
!2563 = !DILocation(line: 120, column: 2, scope: !2561)
!2564 = !DILocalVariable(name: "__dummy2", scope: !2561, file: !3, line: 120, type: !252)
!2565 = !DILocation(line: 120, column: 2, scope: !2562)
!2566 = !DILocation(line: 120, column: 2, scope: !2542)
!2567 = !{i32 -2143343205}
!2568 = !DILocation(line: 120, column: 2, scope: !2541)
!2569 = !DILocation(line: 329, column: 10, scope: !2535, inlinedAt: !2540)
!2570 = !DILocation(line: 329, column: 16, scope: !2535, inlinedAt: !2540)
!2571 = !DILocation(line: 121, column: 2, scope: !2523)
!2572 = !DILocation(line: 121, column: 7, scope: !2523)
!2573 = !DILocation(line: 121, column: 15, scope: !2523)
!2574 = !DILocation(line: 122, column: 17, scope: !2523)
!2575 = !DILocation(line: 122, column: 22, scope: !2523)
!2576 = !DILocation(line: 122, column: 2, scope: !2523)
!2577 = !DILocation(line: 123, column: 26, scope: !2523)
!2578 = !DILocation(line: 123, column: 31, scope: !2523)
!2579 = !DILocation(line: 123, column: 45, scope: !2523)
!2580 = !DILocalVariable(name: "__dummy", scope: !2581, file: !2526, line: 409, type: !252)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !2526, line: 409, column: 2)
!2582 = distinct !DILexicalBlock(scope: !2525, file: !2526, line: 409, column: 2)
!2583 = !DILocation(line: 409, column: 2, scope: !2581, inlinedAt: !2531)
!2584 = !DILocalVariable(name: "__dummy2", scope: !2581, file: !2526, line: 409, type: !252)
!2585 = !DILocalVariable(name: "__dummy", scope: !2586, file: !2526, line: 409, type: !252)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !2526, line: 409, column: 2)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !2526, line: 409, column: 2)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !2526, line: 409, column: 2)
!2589 = distinct !DILexicalBlock(scope: !2582, file: !2526, line: 409, column: 2)
!2590 = !DILocation(line: 409, column: 2, scope: !2586, inlinedAt: !2531)
!2591 = !DILocalVariable(name: "__dummy2", scope: !2586, file: !2526, line: 409, type: !252)
!2592 = !DILocation(line: 409, column: 2, scope: !2587, inlinedAt: !2531)
!2593 = !DILocation(line: 409, column: 2, scope: !2594, inlinedAt: !2531)
!2594 = distinct !DILexicalBlock(scope: !2589, file: !2526, line: 409, column: 2)
!2595 = !{i32 -2145440140}
!2596 = !DILocation(line: 409, column: 2, scope: !2597, inlinedAt: !2531)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !2526, line: 409, column: 2)
!2598 = !DILocation(line: 124, column: 17, scope: !2523)
!2599 = !DILocation(line: 124, column: 22, scope: !2523)
!2600 = !DILocation(line: 124, column: 2, scope: !2523)
!2601 = !DILocation(line: 125, column: 1, scope: !2523)
!2602 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2603, file: !2603, line: 666, type: !2604, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2603 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!252}
!2606 = !DILocalVariable(name: "f", scope: !2602, file: !2603, line: 668, type: !252)
!2607 = !DILocation(line: 668, column: 16, scope: !2602)
!2608 = !DILocation(line: 670, column: 6, scope: !2602)
!2609 = !DILocation(line: 670, column: 4, scope: !2602)
!2610 = !DILocation(line: 671, column: 2, scope: !2602)
!2611 = !DILocation(line: 672, column: 9, scope: !2602)
!2612 = !DILocation(line: 672, column: 2, scope: !2602)
!2613 = distinct !DISubprogram(name: "schedule_work", scope: !191, file: !191, line: 566, type: !2614, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!293, !1538}
!2616 = !DILocalVariable(name: "work", arg: 1, scope: !2613, file: !191, line: 566, type: !1538)
!2617 = !DILocation(line: 566, column: 54, scope: !2613)
!2618 = !DILocation(line: 568, column: 20, scope: !2613)
!2619 = !DILocation(line: 568, column: 31, scope: !2613)
!2620 = !DILocation(line: 568, column: 9, scope: !2613)
!2621 = !DILocation(line: 568, column: 2, scope: !2613)
!2622 = distinct !DISubprogram(name: "power_supply_am_i_supplied", scope: !3, file: !3, line: 327, type: !2623, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!247, !2225}
!2625 = !DILocalVariable(name: "psy", arg: 1, scope: !2622, file: !3, line: 327, type: !2225)
!2626 = !DILocation(line: 327, column: 53, scope: !2622)
!2627 = !DILocalVariable(name: "data", scope: !2622, file: !3, line: 329, type: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psy_am_i_supplied_data", file: !3, line: 306, size: 128, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "psy", scope: !2628, file: !3, line: 307, baseType: !2225, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2628, file: !3, line: 308, baseType: !7, size: 32, offset: 64)
!2632 = !DILocation(line: 329, column: 32, scope: !2622)
!2633 = !DILocation(line: 329, column: 39, scope: !2622)
!2634 = !DILocation(line: 329, column: 41, scope: !2622)
!2635 = !DILocalVariable(name: "error", scope: !2622, file: !3, line: 330, type: !247)
!2636 = !DILocation(line: 330, column: 6, scope: !2622)
!2637 = !DILocation(line: 332, column: 32, scope: !2622)
!2638 = !DILocation(line: 332, column: 58, scope: !2622)
!2639 = !DILocation(line: 332, column: 10, scope: !2622)
!2640 = !DILocation(line: 332, column: 8, scope: !2622)
!2641 = !DILocation(line: 337, column: 11, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 337, column: 6)
!2643 = !DILocation(line: 337, column: 17, scope: !2642)
!2644 = !DILocation(line: 337, column: 6, scope: !2622)
!2645 = !DILocation(line: 338, column: 3, scope: !2642)
!2646 = !DILocation(line: 340, column: 9, scope: !2622)
!2647 = !DILocation(line: 340, column: 2, scope: !2622)
!2648 = !DILocation(line: 341, column: 1, scope: !2622)
!2649 = distinct !DISubprogram(name: "__power_supply_am_i_supplied", scope: !3, file: !3, line: 311, type: !2650, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!247, !1788, !256}
!2652 = !DILocalVariable(name: "dev", arg: 1, scope: !2649, file: !3, line: 311, type: !1788)
!2653 = !DILocation(line: 311, column: 56, scope: !2649)
!2654 = !DILocalVariable(name: "_data", arg: 2, scope: !2649, file: !3, line: 311, type: !256)
!2655 = !DILocation(line: 311, column: 67, scope: !2649)
!2656 = !DILocalVariable(name: "ret", scope: !2649, file: !3, line: 313, type: !2248)
!2657 = !DILocation(line: 313, column: 29, scope: !2649)
!2658 = !DILocalVariable(name: "epsy", scope: !2649, file: !3, line: 314, type: !2225)
!2659 = !DILocation(line: 314, column: 23, scope: !2649)
!2660 = !DILocation(line: 314, column: 46, scope: !2649)
!2661 = !DILocation(line: 314, column: 30, scope: !2649)
!2662 = !DILocalVariable(name: "data", scope: !2649, file: !3, line: 315, type: !2663)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2664 = !DILocation(line: 315, column: 33, scope: !2649)
!2665 = !DILocation(line: 315, column: 40, scope: !2649)
!2666 = !DILocation(line: 317, column: 36, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 317, column: 6)
!2668 = !DILocation(line: 317, column: 42, scope: !2667)
!2669 = !DILocation(line: 317, column: 48, scope: !2667)
!2670 = !DILocation(line: 317, column: 6, scope: !2667)
!2671 = !DILocation(line: 317, column: 6, scope: !2649)
!2672 = !DILocation(line: 318, column: 3, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 317, column: 54)
!2674 = !DILocation(line: 318, column: 9, scope: !2673)
!2675 = !DILocation(line: 318, column: 14, scope: !2673)
!2676 = !DILocation(line: 319, column: 8, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 319, column: 7)
!2678 = !DILocation(line: 319, column: 14, scope: !2677)
!2679 = !DILocation(line: 319, column: 20, scope: !2677)
!2680 = !DILocation(line: 319, column: 33, scope: !2677)
!2681 = !DILocation(line: 319, column: 7, scope: !2673)
!2682 = !DILocation(line: 321, column: 15, scope: !2677)
!2683 = !DILocation(line: 321, column: 4, scope: !2677)
!2684 = !DILocation(line: 322, column: 2, scope: !2673)
!2685 = !DILocation(line: 324, column: 2, scope: !2649)
!2686 = !DILocation(line: 325, column: 1, scope: !2649)
!2687 = distinct !DISubprogram(name: "power_supply_is_system_supplied", scope: !3, file: !3, line: 359, type: !2500, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2688 = !DILocalVariable(name: "error", scope: !2687, file: !3, line: 361, type: !247)
!2689 = !DILocation(line: 361, column: 6, scope: !2687)
!2690 = !DILocalVariable(name: "count", scope: !2687, file: !3, line: 362, type: !7)
!2691 = !DILocation(line: 362, column: 15, scope: !2687)
!2692 = !DILocation(line: 364, column: 32, scope: !2687)
!2693 = !DILocation(line: 364, column: 58, scope: !2687)
!2694 = !DILocation(line: 364, column: 10, scope: !2687)
!2695 = !DILocation(line: 364, column: 8, scope: !2687)
!2696 = !DILocation(line: 371, column: 6, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 371, column: 6)
!2698 = !DILocation(line: 371, column: 12, scope: !2697)
!2699 = !DILocation(line: 371, column: 6, scope: !2687)
!2700 = !DILocation(line: 372, column: 3, scope: !2697)
!2701 = !DILocation(line: 374, column: 9, scope: !2687)
!2702 = !DILocation(line: 374, column: 2, scope: !2687)
!2703 = !DILocation(line: 375, column: 1, scope: !2687)
!2704 = distinct !DISubprogram(name: "__power_supply_is_system_supplied", scope: !3, file: !3, line: 344, type: !2650, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2705 = !DILocalVariable(name: "dev", arg: 1, scope: !2704, file: !3, line: 344, type: !1788)
!2706 = !DILocation(line: 344, column: 61, scope: !2704)
!2707 = !DILocalVariable(name: "data", arg: 2, scope: !2704, file: !3, line: 344, type: !256)
!2708 = !DILocation(line: 344, column: 72, scope: !2704)
!2709 = !DILocalVariable(name: "ret", scope: !2704, file: !3, line: 346, type: !2248)
!2710 = !DILocation(line: 346, column: 29, scope: !2704)
!2711 = !DILocalVariable(name: "psy", scope: !2704, file: !3, line: 347, type: !2225)
!2712 = !DILocation(line: 347, column: 23, scope: !2704)
!2713 = !DILocation(line: 347, column: 45, scope: !2704)
!2714 = !DILocation(line: 347, column: 29, scope: !2704)
!2715 = !DILocalVariable(name: "count", scope: !2704, file: !3, line: 348, type: !2716)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2717 = !DILocation(line: 348, column: 16, scope: !2704)
!2718 = !DILocation(line: 348, column: 24, scope: !2704)
!2719 = !DILocation(line: 350, column: 4, scope: !2704)
!2720 = !DILocation(line: 350, column: 10, scope: !2704)
!2721 = !DILocation(line: 351, column: 6, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 351, column: 6)
!2723 = !DILocation(line: 351, column: 11, scope: !2722)
!2724 = !DILocation(line: 351, column: 17, scope: !2722)
!2725 = !DILocation(line: 351, column: 22, scope: !2722)
!2726 = !DILocation(line: 351, column: 6, scope: !2704)
!2727 = !DILocation(line: 352, column: 8, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 352, column: 7)
!2729 = !DILocation(line: 352, column: 13, scope: !2728)
!2730 = !DILocation(line: 352, column: 19, scope: !2728)
!2731 = !DILocation(line: 352, column: 32, scope: !2728)
!2732 = !DILocation(line: 352, column: 7, scope: !2722)
!2733 = !DILocation(line: 354, column: 15, scope: !2728)
!2734 = !DILocation(line: 354, column: 4, scope: !2728)
!2735 = !DILocation(line: 353, column: 10, scope: !2728)
!2736 = !DILocation(line: 356, column: 2, scope: !2704)
!2737 = !DILocation(line: 357, column: 1, scope: !2704)
!2738 = distinct !DISubprogram(name: "power_supply_set_input_current_limit_from_supplier", scope: !3, file: !3, line: 394, type: !2623, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2739 = !DILocalVariable(name: "psy", arg: 1, scope: !2738, file: !3, line: 394, type: !2225)
!2740 = !DILocation(line: 394, column: 77, scope: !2738)
!2741 = !DILocalVariable(name: "val", scope: !2738, file: !3, line: 396, type: !2248)
!2742 = !DILocation(line: 396, column: 29, scope: !2738)
!2743 = !DILocalVariable(name: "curr", scope: !2738, file: !3, line: 397, type: !247)
!2744 = !DILocation(line: 397, column: 6, scope: !2738)
!2745 = !DILocation(line: 399, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 399, column: 6)
!2747 = !DILocation(line: 399, column: 12, scope: !2746)
!2748 = !DILocation(line: 399, column: 18, scope: !2746)
!2749 = !DILocation(line: 399, column: 6, scope: !2738)
!2750 = !DILocation(line: 400, column: 3, scope: !2746)
!2751 = !DILocation(line: 407, column: 31, scope: !2738)
!2752 = !DILocation(line: 407, column: 57, scope: !2738)
!2753 = !DILocation(line: 407, column: 9, scope: !2738)
!2754 = !DILocation(line: 407, column: 7, scope: !2738)
!2755 = !DILocation(line: 409, column: 6, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 409, column: 6)
!2757 = !DILocation(line: 409, column: 11, scope: !2756)
!2758 = !DILocation(line: 409, column: 6, scope: !2738)
!2759 = !DILocation(line: 410, column: 11, scope: !2756)
!2760 = !DILocation(line: 410, column: 16, scope: !2756)
!2761 = !DILocation(line: 410, column: 10, scope: !2756)
!2762 = !DILocation(line: 410, column: 34, scope: !2756)
!2763 = !DILocation(line: 410, column: 3, scope: !2756)
!2764 = !DILocation(line: 412, column: 15, scope: !2738)
!2765 = !DILocation(line: 412, column: 6, scope: !2738)
!2766 = !DILocation(line: 412, column: 13, scope: !2738)
!2767 = !DILocation(line: 414, column: 9, scope: !2738)
!2768 = !DILocation(line: 414, column: 14, scope: !2738)
!2769 = !DILocation(line: 414, column: 20, scope: !2738)
!2770 = !DILocation(line: 414, column: 33, scope: !2738)
!2771 = !DILocation(line: 414, column: 2, scope: !2738)
!2772 = !DILocation(line: 416, column: 1, scope: !2738)
!2773 = distinct !DISubprogram(name: "__power_supply_get_supplier_max_current", scope: !3, file: !3, line: 378, type: !2650, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2774 = !DILocalVariable(name: "dev", arg: 1, scope: !2773, file: !3, line: 378, type: !1788)
!2775 = !DILocation(line: 378, column: 67, scope: !2773)
!2776 = !DILocalVariable(name: "data", arg: 2, scope: !2773, file: !3, line: 379, type: !256)
!2777 = !DILocation(line: 379, column: 16, scope: !2773)
!2778 = !DILocalVariable(name: "ret", scope: !2773, file: !3, line: 381, type: !2248)
!2779 = !DILocation(line: 381, column: 29, scope: !2773)
!2780 = !DILocalVariable(name: "epsy", scope: !2773, file: !3, line: 382, type: !2225)
!2781 = !DILocation(line: 382, column: 23, scope: !2773)
!2782 = !DILocation(line: 382, column: 46, scope: !2773)
!2783 = !DILocation(line: 382, column: 30, scope: !2773)
!2784 = !DILocalVariable(name: "psy", scope: !2773, file: !3, line: 383, type: !2225)
!2785 = !DILocation(line: 383, column: 23, scope: !2773)
!2786 = !DILocation(line: 383, column: 29, scope: !2773)
!2787 = !DILocation(line: 385, column: 36, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 385, column: 6)
!2789 = !DILocation(line: 385, column: 42, scope: !2788)
!2790 = !DILocation(line: 385, column: 6, scope: !2788)
!2791 = !DILocation(line: 385, column: 6, scope: !2773)
!2792 = !DILocation(line: 386, column: 8, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 386, column: 7)
!2794 = !DILocation(line: 386, column: 14, scope: !2793)
!2795 = !DILocation(line: 386, column: 20, scope: !2793)
!2796 = !DILocation(line: 386, column: 33, scope: !2793)
!2797 = !DILocation(line: 386, column: 7, scope: !2788)
!2798 = !DILocation(line: 389, column: 15, scope: !2793)
!2799 = !DILocation(line: 389, column: 4, scope: !2793)
!2800 = !DILocation(line: 388, column: 16, scope: !2793)
!2801 = !DILocation(line: 391, column: 2, scope: !2773)
!2802 = !DILocation(line: 392, column: 1, scope: !2773)
!2803 = distinct !DISubprogram(name: "power_supply_set_battery_charged", scope: !3, file: !3, line: 419, type: !2623, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2804 = !DILocalVariable(name: "v", arg: 1, scope: !2805, file: !2806, line: 23, type: !2809)
!2805 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2806, file: !2806, line: 23, type: !2807, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2806 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!247, !2809}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!2811 = !DILocation(line: 23, column: 61, scope: !2805, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 28, column: 9, scope: !2813, inlinedAt: !2815)
!2813 = distinct !DISubprogram(name: "atomic_read", scope: !2814, file: !2814, line: 25, type: !2807, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2814 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2815 = distinct !DILocation(line: 421, column: 6, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 421, column: 6)
!2817 = !DILocalVariable(name: "v", arg: 1, scope: !2818, file: !2819, line: 69, type: !2822)
!2818 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2819, file: !2819, line: 69, type: !2820, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2819 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !2822, !412}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2824)
!2824 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2825 = !DILocation(line: 69, column: 73, scope: !2818, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 27, column: 2, scope: !2813, inlinedAt: !2815)
!2827 = !DILocalVariable(name: "size", arg: 2, scope: !2818, file: !2819, line: 69, type: !412)
!2828 = !DILocation(line: 69, column: 83, scope: !2818, inlinedAt: !2826)
!2829 = !DILocalVariable(name: "v", arg: 1, scope: !2813, file: !2814, line: 25, type: !2809)
!2830 = !DILocation(line: 25, column: 29, scope: !2813, inlinedAt: !2815)
!2831 = !DILocalVariable(name: "psy", arg: 1, scope: !2803, file: !3, line: 419, type: !2225)
!2832 = !DILocation(line: 419, column: 59, scope: !2803)
!2833 = !DILocation(line: 421, column: 19, scope: !2816)
!2834 = !DILocation(line: 421, column: 24, scope: !2816)
!2835 = !DILocation(line: 27, column: 25, scope: !2813, inlinedAt: !2815)
!2836 = !DILocation(line: 71, column: 19, scope: !2818, inlinedAt: !2826)
!2837 = !DILocation(line: 71, column: 22, scope: !2818, inlinedAt: !2826)
!2838 = !DILocation(line: 71, column: 2, scope: !2818, inlinedAt: !2826)
!2839 = !DILocation(line: 72, column: 2, scope: !2818, inlinedAt: !2826)
!2840 = !DILocation(line: 28, column: 26, scope: !2813, inlinedAt: !2815)
!2841 = !DILocation(line: 29, column: 9, scope: !2805, inlinedAt: !2812)
!2842 = !DILocation(line: 421, column: 33, scope: !2816)
!2843 = !DILocation(line: 421, column: 38, scope: !2816)
!2844 = !DILocation(line: 422, column: 4, scope: !2816)
!2845 = !DILocation(line: 422, column: 9, scope: !2816)
!2846 = !DILocation(line: 422, column: 15, scope: !2816)
!2847 = !DILocation(line: 422, column: 20, scope: !2816)
!2848 = !DILocation(line: 422, column: 49, scope: !2816)
!2849 = !DILocation(line: 423, column: 4, scope: !2816)
!2850 = !DILocation(line: 423, column: 9, scope: !2816)
!2851 = !DILocation(line: 423, column: 15, scope: !2816)
!2852 = !DILocation(line: 421, column: 6, scope: !2803)
!2853 = !DILocation(line: 424, column: 3, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 423, column: 28)
!2855 = !DILocation(line: 424, column: 8, scope: !2854)
!2856 = !DILocation(line: 424, column: 14, scope: !2854)
!2857 = !DILocation(line: 424, column: 26, scope: !2854)
!2858 = !DILocation(line: 425, column: 3, scope: !2854)
!2859 = !DILocation(line: 428, column: 2, scope: !2803)
!2860 = !DILocation(line: 429, column: 1, scope: !2803)
!2861 = distinct !DISubprogram(name: "power_supply_get_by_name", scope: !3, file: !3, line: 451, type: !2862, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!2225, !262}
!2864 = !DILocalVariable(name: "v", arg: 1, scope: !2865, file: !2806, line: 93, type: !2868)
!2865 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !2806, file: !2806, line: 93, type: !2866, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!2869 = !DILocation(line: 93, column: 55, scope: !2865, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 241, column: 2, scope: !2871, inlinedAt: !2872)
!2871 = distinct !DISubprogram(name: "atomic_inc", scope: !2814, file: !2814, line: 238, type: !2866, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2872 = distinct !DILocation(line: 459, column: 3, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 457, column: 11)
!2874 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 457, column: 6)
!2875 = !DILocalVariable(name: "v", arg: 1, scope: !2876, file: !2819, line: 99, type: !2822)
!2876 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2819, file: !2819, line: 99, type: !2820, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2877 = !DILocation(line: 99, column: 79, scope: !2876, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 240, column: 2, scope: !2871, inlinedAt: !2872)
!2879 = !DILocalVariable(name: "size", arg: 2, scope: !2876, file: !2819, line: 99, type: !412)
!2880 = !DILocation(line: 99, column: 89, scope: !2876, inlinedAt: !2878)
!2881 = !DILocalVariable(name: "v", arg: 1, scope: !2871, file: !2814, line: 238, type: !2868)
!2882 = !DILocation(line: 238, column: 22, scope: !2871, inlinedAt: !2872)
!2883 = !DILocalVariable(name: "name", arg: 1, scope: !2861, file: !3, line: 451, type: !262)
!2884 = !DILocation(line: 451, column: 59, scope: !2861)
!2885 = !DILocalVariable(name: "psy", scope: !2861, file: !3, line: 453, type: !2225)
!2886 = !DILocation(line: 453, column: 23, scope: !2861)
!2887 = !DILocalVariable(name: "dev", scope: !2861, file: !3, line: 454, type: !1788)
!2888 = !DILocation(line: 454, column: 17, scope: !2861)
!2889 = !DILocation(line: 454, column: 41, scope: !2861)
!2890 = !DILocation(line: 454, column: 67, scope: !2861)
!2891 = !DILocation(line: 454, column: 23, scope: !2861)
!2892 = !DILocation(line: 457, column: 6, scope: !2874)
!2893 = !DILocation(line: 457, column: 6, scope: !2861)
!2894 = !DILocation(line: 458, column: 25, scope: !2873)
!2895 = !DILocation(line: 458, column: 9, scope: !2873)
!2896 = !DILocation(line: 458, column: 7, scope: !2873)
!2897 = !DILocation(line: 459, column: 15, scope: !2873)
!2898 = !DILocation(line: 459, column: 20, scope: !2873)
!2899 = !DILocation(line: 240, column: 31, scope: !2871, inlinedAt: !2872)
!2900 = !DILocation(line: 101, column: 20, scope: !2876, inlinedAt: !2878)
!2901 = !DILocation(line: 101, column: 23, scope: !2876, inlinedAt: !2878)
!2902 = !DILocation(line: 101, column: 2, scope: !2876, inlinedAt: !2878)
!2903 = !DILocation(line: 102, column: 2, scope: !2876, inlinedAt: !2878)
!2904 = !DILocation(line: 241, column: 18, scope: !2871, inlinedAt: !2872)
!2905 = !DILocation(line: 96, column: 16, scope: !2865, inlinedAt: !2870)
!2906 = !DILocation(line: 96, column: 19, scope: !2865, inlinedAt: !2870)
!2907 = !DILocation(line: 95, column: 2, scope: !2865, inlinedAt: !2870)
!2908 = !{i32 -2146593847}
!2909 = !DILocation(line: 460, column: 2, scope: !2873)
!2910 = !DILocation(line: 462, column: 9, scope: !2861)
!2911 = !DILocation(line: 462, column: 2, scope: !2861)
!2912 = distinct !DISubprogram(name: "power_supply_match_device_by_name", scope: !3, file: !3, line: 432, type: !2913, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!247, !1788, !301}
!2915 = !DILocalVariable(name: "dev", arg: 1, scope: !2912, file: !3, line: 432, type: !1788)
!2916 = !DILocation(line: 432, column: 61, scope: !2912)
!2917 = !DILocalVariable(name: "data", arg: 2, scope: !2912, file: !3, line: 432, type: !301)
!2918 = !DILocation(line: 432, column: 78, scope: !2912)
!2919 = !DILocalVariable(name: "name", scope: !2912, file: !3, line: 434, type: !262)
!2920 = !DILocation(line: 434, column: 14, scope: !2912)
!2921 = !DILocation(line: 434, column: 21, scope: !2912)
!2922 = !DILocalVariable(name: "psy", scope: !2912, file: !3, line: 435, type: !2225)
!2923 = !DILocation(line: 435, column: 23, scope: !2912)
!2924 = !DILocation(line: 435, column: 45, scope: !2912)
!2925 = !DILocation(line: 435, column: 29, scope: !2912)
!2926 = !DILocation(line: 437, column: 16, scope: !2912)
!2927 = !DILocation(line: 437, column: 21, scope: !2912)
!2928 = !DILocation(line: 437, column: 27, scope: !2912)
!2929 = !DILocation(line: 437, column: 33, scope: !2912)
!2930 = !DILocation(line: 437, column: 9, scope: !2912)
!2931 = !DILocation(line: 437, column: 39, scope: !2912)
!2932 = !DILocation(line: 437, column: 2, scope: !2912)
!2933 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !135, file: !135, line: 655, type: !2934, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!256, !303}
!2936 = !DILocalVariable(name: "dev", arg: 1, scope: !2933, file: !135, line: 655, type: !303)
!2937 = !DILocation(line: 655, column: 58, scope: !2933)
!2938 = !DILocation(line: 657, column: 9, scope: !2933)
!2939 = !DILocation(line: 657, column: 14, scope: !2933)
!2940 = !DILocation(line: 657, column: 2, scope: !2933)
!2941 = distinct !DISubprogram(name: "power_supply_put", scope: !3, file: !3, line: 473, type: !2264, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2942 = !DILocalVariable(name: "v", arg: 1, scope: !2943, file: !2806, line: 106, type: !2868)
!2943 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !2806, file: !2806, line: 106, type: !2866, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2944 = !DILocation(line: 106, column: 55, scope: !2943, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 331, column: 2, scope: !2946, inlinedAt: !2947)
!2946 = distinct !DISubprogram(name: "atomic_dec", scope: !2814, file: !2814, line: 328, type: !2866, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2947 = distinct !DILocation(line: 477, column: 2, scope: !2941)
!2948 = !DILocation(line: 99, column: 79, scope: !2876, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 330, column: 2, scope: !2946, inlinedAt: !2947)
!2950 = !DILocation(line: 99, column: 89, scope: !2876, inlinedAt: !2949)
!2951 = !DILocalVariable(name: "v", arg: 1, scope: !2946, file: !2814, line: 328, type: !2868)
!2952 = !DILocation(line: 328, column: 22, scope: !2946, inlinedAt: !2947)
!2953 = !DILocalVariable(name: "psy", arg: 1, scope: !2941, file: !3, line: 473, type: !2225)
!2954 = !DILocation(line: 473, column: 44, scope: !2941)
!2955 = !DILocation(line: 475, column: 2, scope: !2941)
!2956 = !DILocation(line: 475, column: 2, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 475, column: 2)
!2958 = !DILocation(line: 475, column: 2, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 475, column: 2)
!2960 = !DILocation(line: 477, column: 14, scope: !2941)
!2961 = !DILocation(line: 477, column: 19, scope: !2941)
!2962 = !DILocation(line: 330, column: 31, scope: !2946, inlinedAt: !2947)
!2963 = !DILocation(line: 101, column: 20, scope: !2876, inlinedAt: !2949)
!2964 = !DILocation(line: 101, column: 23, scope: !2876, inlinedAt: !2949)
!2965 = !DILocation(line: 101, column: 2, scope: !2876, inlinedAt: !2949)
!2966 = !DILocation(line: 102, column: 2, scope: !2876, inlinedAt: !2949)
!2967 = !DILocation(line: 331, column: 18, scope: !2946, inlinedAt: !2947)
!2968 = !DILocation(line: 109, column: 16, scope: !2943, inlinedAt: !2945)
!2969 = !DILocation(line: 109, column: 19, scope: !2943, inlinedAt: !2945)
!2970 = !DILocation(line: 108, column: 2, scope: !2943, inlinedAt: !2945)
!2971 = !{i32 -2146593637}
!2972 = !DILocation(line: 478, column: 14, scope: !2941)
!2973 = !DILocation(line: 478, column: 19, scope: !2941)
!2974 = !DILocation(line: 478, column: 2, scope: !2941)
!2975 = !DILocation(line: 479, column: 1, scope: !2941)
!2976 = distinct !DISubprogram(name: "power_supply_get_by_phandle", scope: !3, file: !3, line: 500, type: !2977, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2225, !257, !262}
!2979 = !DILocation(line: 93, column: 55, scope: !2865, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 241, column: 2, scope: !2871, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 518, column: 3, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 516, column: 11)
!2983 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 516, column: 6)
!2984 = !DILocation(line: 99, column: 79, scope: !2876, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 240, column: 2, scope: !2871, inlinedAt: !2981)
!2986 = !DILocation(line: 99, column: 89, scope: !2876, inlinedAt: !2985)
!2987 = !DILocation(line: 238, column: 22, scope: !2871, inlinedAt: !2981)
!2988 = !DILocalVariable(name: "np", arg: 1, scope: !2976, file: !3, line: 500, type: !257)
!2989 = !DILocation(line: 500, column: 70, scope: !2976)
!2990 = !DILocalVariable(name: "property", arg: 2, scope: !2976, file: !3, line: 501, type: !262)
!2991 = !DILocation(line: 501, column: 20, scope: !2976)
!2992 = !DILocalVariable(name: "power_supply_np", scope: !2976, file: !3, line: 503, type: !257)
!2993 = !DILocation(line: 503, column: 22, scope: !2976)
!2994 = !DILocalVariable(name: "psy", scope: !2976, file: !3, line: 504, type: !2225)
!2995 = !DILocation(line: 504, column: 23, scope: !2976)
!2996 = !DILocalVariable(name: "dev", scope: !2976, file: !3, line: 505, type: !1788)
!2997 = !DILocation(line: 505, column: 17, scope: !2976)
!2998 = !DILocation(line: 507, column: 37, scope: !2976)
!2999 = !DILocation(line: 507, column: 41, scope: !2976)
!3000 = !DILocation(line: 507, column: 20, scope: !2976)
!3001 = !DILocation(line: 507, column: 18, scope: !2976)
!3002 = !DILocation(line: 508, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 508, column: 6)
!3004 = !DILocation(line: 508, column: 6, scope: !2976)
!3005 = !DILocation(line: 509, column: 10, scope: !3003)
!3006 = !DILocation(line: 509, column: 3, scope: !3003)
!3007 = !DILocation(line: 511, column: 26, scope: !2976)
!3008 = !DILocation(line: 511, column: 52, scope: !2976)
!3009 = !DILocation(line: 511, column: 8, scope: !2976)
!3010 = !DILocation(line: 511, column: 6, scope: !2976)
!3011 = !DILocation(line: 514, column: 14, scope: !2976)
!3012 = !DILocation(line: 514, column: 2, scope: !2976)
!3013 = !DILocation(line: 516, column: 6, scope: !2983)
!3014 = !DILocation(line: 516, column: 6, scope: !2976)
!3015 = !DILocation(line: 517, column: 25, scope: !2982)
!3016 = !DILocation(line: 517, column: 9, scope: !2982)
!3017 = !DILocation(line: 517, column: 7, scope: !2982)
!3018 = !DILocation(line: 518, column: 15, scope: !2982)
!3019 = !DILocation(line: 518, column: 20, scope: !2982)
!3020 = !DILocation(line: 240, column: 31, scope: !2871, inlinedAt: !2981)
!3021 = !DILocation(line: 101, column: 20, scope: !2876, inlinedAt: !2985)
!3022 = !DILocation(line: 101, column: 23, scope: !2876, inlinedAt: !2985)
!3023 = !DILocation(line: 101, column: 2, scope: !2876, inlinedAt: !2985)
!3024 = !DILocation(line: 102, column: 2, scope: !2876, inlinedAt: !2985)
!3025 = !DILocation(line: 241, column: 18, scope: !2871, inlinedAt: !2981)
!3026 = !DILocation(line: 96, column: 16, scope: !2865, inlinedAt: !2980)
!3027 = !DILocation(line: 96, column: 19, scope: !2865, inlinedAt: !2980)
!3028 = !DILocation(line: 95, column: 2, scope: !2865, inlinedAt: !2980)
!3029 = !DILocation(line: 519, column: 2, scope: !2982)
!3030 = !DILocation(line: 521, column: 9, scope: !2976)
!3031 = !DILocation(line: 521, column: 2, scope: !2976)
!3032 = !DILocation(line: 522, column: 1, scope: !2976)
!3033 = distinct !DISubprogram(name: "ERR_PTR", scope: !3034, file: !3034, line: 24, type: !3035, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3034 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!256, !192}
!3037 = !DILocalVariable(name: "error", arg: 1, scope: !3033, file: !3034, line: 24, type: !192)
!3038 = !DILocation(line: 24, column: 48, scope: !3033)
!3039 = !DILocation(line: 26, column: 18, scope: !3033)
!3040 = !DILocation(line: 26, column: 9, scope: !3033)
!3041 = !DILocation(line: 26, column: 2, scope: !3033)
!3042 = distinct !DISubprogram(name: "power_supply_match_device_node", scope: !3, file: !3, line: 483, type: !2913, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3043 = !DILocalVariable(name: "dev", arg: 1, scope: !3042, file: !3, line: 483, type: !1788)
!3044 = !DILocation(line: 483, column: 58, scope: !3042)
!3045 = !DILocalVariable(name: "data", arg: 2, scope: !3042, file: !3, line: 483, type: !301)
!3046 = !DILocation(line: 483, column: 75, scope: !3042)
!3047 = !DILocation(line: 485, column: 9, scope: !3042)
!3048 = !DILocation(line: 485, column: 14, scope: !3042)
!3049 = !DILocation(line: 485, column: 21, scope: !3042)
!3050 = !DILocation(line: 485, column: 24, scope: !3042)
!3051 = !DILocation(line: 485, column: 29, scope: !3042)
!3052 = !DILocation(line: 485, column: 37, scope: !3042)
!3053 = !DILocation(line: 485, column: 48, scope: !3042)
!3054 = !DILocation(line: 485, column: 45, scope: !3042)
!3055 = !DILocation(line: 0, scope: !3042)
!3056 = !DILocation(line: 485, column: 2, scope: !3042)
!3057 = distinct !DISubprogram(name: "of_node_put", scope: !259, file: !259, line: 129, type: !3058, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !257}
!3060 = !DILocalVariable(name: "node", arg: 1, scope: !3057, file: !259, line: 129, type: !257)
!3061 = !DILocation(line: 129, column: 52, scope: !3057)
!3062 = !DILocation(line: 129, column: 60, scope: !3057)
!3063 = distinct !DISubprogram(name: "devm_power_supply_get_by_phandle", scope: !3, file: !3, line: 541, type: !3064, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!2225, !1788, !262}
!3066 = !DILocalVariable(name: "dev", arg: 1, scope: !3063, file: !3, line: 541, type: !1788)
!3067 = !DILocation(line: 541, column: 70, scope: !3063)
!3068 = !DILocalVariable(name: "property", arg: 2, scope: !3063, file: !3, line: 542, type: !262)
!3069 = !DILocation(line: 542, column: 25, scope: !3063)
!3070 = !DILocalVariable(name: "ptr", scope: !3063, file: !3, line: 544, type: !3071)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!3072 = !DILocation(line: 544, column: 24, scope: !3063)
!3073 = !DILocalVariable(name: "psy", scope: !3063, file: !3, line: 544, type: !2225)
!3074 = !DILocation(line: 544, column: 30, scope: !3063)
!3075 = !DILocation(line: 546, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 546, column: 6)
!3077 = !DILocation(line: 546, column: 12, scope: !3076)
!3078 = !DILocation(line: 546, column: 6, scope: !3063)
!3079 = !DILocation(line: 547, column: 10, scope: !3076)
!3080 = !DILocation(line: 547, column: 3, scope: !3076)
!3081 = !DILocation(line: 549, column: 8, scope: !3063)
!3082 = !DILocation(line: 549, column: 6, scope: !3063)
!3083 = !DILocation(line: 550, column: 7, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 550, column: 6)
!3085 = !DILocation(line: 550, column: 6, scope: !3063)
!3086 = !DILocation(line: 551, column: 10, scope: !3084)
!3087 = !DILocation(line: 551, column: 3, scope: !3084)
!3088 = !DILocation(line: 553, column: 36, scope: !3063)
!3089 = !DILocation(line: 553, column: 41, scope: !3063)
!3090 = !DILocation(line: 553, column: 50, scope: !3063)
!3091 = !DILocation(line: 553, column: 8, scope: !3063)
!3092 = !DILocation(line: 553, column: 6, scope: !3063)
!3093 = !DILocation(line: 554, column: 21, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 554, column: 6)
!3095 = !DILocation(line: 554, column: 6, scope: !3094)
!3096 = !DILocation(line: 554, column: 6, scope: !3063)
!3097 = !DILocation(line: 555, column: 15, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 554, column: 27)
!3099 = !DILocation(line: 555, column: 3, scope: !3098)
!3100 = !DILocation(line: 556, column: 2, scope: !3098)
!3101 = !DILocation(line: 557, column: 10, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 556, column: 9)
!3103 = !DILocation(line: 557, column: 4, scope: !3102)
!3104 = !DILocation(line: 557, column: 8, scope: !3102)
!3105 = !DILocation(line: 558, column: 14, scope: !3102)
!3106 = !DILocation(line: 558, column: 19, scope: !3102)
!3107 = !DILocation(line: 558, column: 3, scope: !3102)
!3108 = !DILocation(line: 560, column: 9, scope: !3063)
!3109 = !DILocation(line: 560, column: 2, scope: !3063)
!3110 = !DILocation(line: 561, column: 1, scope: !3063)
!3111 = distinct !DISubprogram(name: "devres_alloc", scope: !135, file: !135, line: 178, type: !3112, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!256, !3114, !412, !245}
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !135, line: 165, baseType: !3115)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !1788, !256}
!3118 = !DILocalVariable(name: "release", arg: 1, scope: !3111, file: !135, line: 178, type: !3114)
!3119 = !DILocation(line: 178, column: 47, scope: !3111)
!3120 = !DILocalVariable(name: "size", arg: 2, scope: !3111, file: !135, line: 178, type: !412)
!3121 = !DILocation(line: 178, column: 63, scope: !3111)
!3122 = !DILocalVariable(name: "gfp", arg: 3, scope: !3111, file: !135, line: 178, type: !245)
!3123 = !DILocation(line: 178, column: 75, scope: !3111)
!3124 = !DILocation(line: 180, column: 27, scope: !3111)
!3125 = !DILocation(line: 180, column: 36, scope: !3111)
!3126 = !DILocation(line: 180, column: 42, scope: !3111)
!3127 = !DILocation(line: 180, column: 9, scope: !3111)
!3128 = !DILocation(line: 180, column: 2, scope: !3111)
!3129 = distinct !DISubprogram(name: "devm_power_supply_put", scope: !3, file: !3, line: 525, type: !3116, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3130 = !DILocalVariable(name: "dev", arg: 1, scope: !3129, file: !3, line: 525, type: !1788)
!3131 = !DILocation(line: 525, column: 50, scope: !3129)
!3132 = !DILocalVariable(name: "res", arg: 2, scope: !3129, file: !3, line: 525, type: !256)
!3133 = !DILocation(line: 525, column: 61, scope: !3129)
!3134 = !DILocalVariable(name: "psy", scope: !3129, file: !3, line: 527, type: !3071)
!3135 = !DILocation(line: 527, column: 24, scope: !3129)
!3136 = !DILocation(line: 527, column: 30, scope: !3129)
!3137 = !DILocation(line: 529, column: 20, scope: !3129)
!3138 = !DILocation(line: 529, column: 19, scope: !3129)
!3139 = !DILocation(line: 529, column: 2, scope: !3129)
!3140 = !DILocation(line: 530, column: 1, scope: !3129)
!3141 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !3034, file: !3034, line: 39, type: !3142, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!293, !301}
!3144 = !DILocalVariable(name: "ptr", arg: 1, scope: !3141, file: !3034, line: 39, type: !301)
!3145 = !DILocation(line: 39, column: 68, scope: !3141)
!3146 = !DILocation(line: 41, column: 9, scope: !3141)
!3147 = !DILocation(line: 41, column: 24, scope: !3141)
!3148 = !DILocation(line: 41, column: 27, scope: !3141)
!3149 = !DILocation(line: 41, column: 2, scope: !3141)
!3150 = distinct !DISubprogram(name: "power_supply_get_battery_info", scope: !3, file: !3, line: 565, type: !3151, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!247, !2225, !3153}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_battery_info", file: !6, line: 354, size: 3328, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3184, !3185, !3191}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "energy_full_design_uwh", scope: !3154, file: !6, line: 355, baseType: !247, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "charge_full_design_uah", scope: !3154, file: !6, line: 356, baseType: !247, size: 32, offset: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_min_design_uv", scope: !3154, file: !6, line: 357, baseType: !247, size: 32, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_max_design_uv", scope: !3154, file: !6, line: 358, baseType: !247, size: 32, offset: 96)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "tricklecharge_current_ua", scope: !3154, file: !6, line: 359, baseType: !247, size: 32, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "precharge_current_ua", scope: !3154, file: !6, line: 360, baseType: !247, size: 32, offset: 160)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "precharge_voltage_max_uv", scope: !3154, file: !6, line: 361, baseType: !247, size: 32, offset: 192)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "charge_term_current_ua", scope: !3154, file: !6, line: 362, baseType: !247, size: 32, offset: 224)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "charge_restart_voltage_uv", scope: !3154, file: !6, line: 363, baseType: !247, size: 32, offset: 256)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "overvoltage_limit_uv", scope: !3154, file: !6, line: 364, baseType: !247, size: 32, offset: 288)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "constant_charge_current_max_ua", scope: !3154, file: !6, line: 365, baseType: !247, size: 32, offset: 320)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "constant_charge_voltage_max_uv", scope: !3154, file: !6, line: 366, baseType: !247, size: 32, offset: 352)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "factory_internal_resistance_uohm", scope: !3154, file: !6, line: 367, baseType: !247, size: 32, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_temp", scope: !3154, file: !6, line: 368, baseType: !3170, size: 640, offset: 416)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 640, elements: !1395)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "temp_ambient_alert_min", scope: !3154, file: !6, line: 369, baseType: !247, size: 32, offset: 1056)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "temp_ambient_alert_max", scope: !3154, file: !6, line: 370, baseType: !247, size: 32, offset: 1088)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "temp_alert_min", scope: !3154, file: !6, line: 371, baseType: !247, size: 32, offset: 1120)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "temp_alert_max", scope: !3154, file: !6, line: 372, baseType: !247, size: 32, offset: 1152)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "temp_min", scope: !3154, file: !6, line: 373, baseType: !247, size: 32, offset: 1184)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "temp_max", scope: !3154, file: !6, line: 374, baseType: !247, size: 32, offset: 1216)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_table", scope: !3154, file: !6, line: 375, baseType: !3178, size: 1280, offset: 1280)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3179, size: 1280, elements: !1395)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_battery_ocv_table", file: !6, line: 333, size: 64, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ocv", scope: !3180, file: !6, line: 334, baseType: !247, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !3180, file: !6, line: 335, baseType: !247, size: 32, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_table_size", scope: !3154, file: !6, line: 376, baseType: !3170, size: 640, offset: 2560)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "resist_table", scope: !3154, file: !6, line: 377, baseType: !3186, size: 64, offset: 3200)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_resistance_temp_table", file: !6, line: 338, size: 64, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3187, file: !6, line: 339, baseType: !247, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "resistance", scope: !3187, file: !6, line: 340, baseType: !247, size: 32, offset: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "resist_table_size", scope: !3154, file: !6, line: 378, baseType: !247, size: 32, offset: 3264)
!3192 = !DILocalVariable(name: "psy", arg: 1, scope: !3150, file: !3, line: 565, type: !2225)
!3193 = !DILocation(line: 565, column: 56, scope: !3150)
!3194 = !DILocalVariable(name: "info", arg: 2, scope: !3150, file: !3, line: 566, type: !3153)
!3195 = !DILocation(line: 566, column: 41, scope: !3150)
!3196 = !DILocalVariable(name: "resist_table", scope: !3150, file: !3, line: 568, type: !3186)
!3197 = !DILocation(line: 568, column: 45, scope: !3150)
!3198 = !DILocalVariable(name: "battery_np", scope: !3150, file: !3, line: 569, type: !257)
!3199 = !DILocation(line: 569, column: 22, scope: !3150)
!3200 = !DILocalVariable(name: "value", scope: !3150, file: !3, line: 570, type: !262)
!3201 = !DILocation(line: 570, column: 14, scope: !3150)
!3202 = !DILocalVariable(name: "err", scope: !3150, file: !3, line: 571, type: !247)
!3203 = !DILocation(line: 571, column: 6, scope: !3150)
!3204 = !DILocalVariable(name: "len", scope: !3150, file: !3, line: 571, type: !247)
!3205 = !DILocation(line: 571, column: 11, scope: !3150)
!3206 = !DILocalVariable(name: "index", scope: !3150, file: !3, line: 571, type: !247)
!3207 = !DILocation(line: 571, column: 16, scope: !3150)
!3208 = !DILocalVariable(name: "list", scope: !3150, file: !3, line: 572, type: !3209)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!3211 = !DILocation(line: 572, column: 16, scope: !3150)
!3212 = !DILocation(line: 574, column: 2, scope: !3150)
!3213 = !DILocation(line: 574, column: 8, scope: !3150)
!3214 = !DILocation(line: 574, column: 39, scope: !3150)
!3215 = !DILocation(line: 575, column: 2, scope: !3150)
!3216 = !DILocation(line: 575, column: 8, scope: !3150)
!3217 = !DILocation(line: 575, column: 39, scope: !3150)
!3218 = !DILocation(line: 576, column: 2, scope: !3150)
!3219 = !DILocation(line: 576, column: 8, scope: !3150)
!3220 = !DILocation(line: 576, column: 39, scope: !3150)
!3221 = !DILocation(line: 577, column: 2, scope: !3150)
!3222 = !DILocation(line: 577, column: 8, scope: !3150)
!3223 = !DILocation(line: 577, column: 39, scope: !3150)
!3224 = !DILocation(line: 578, column: 2, scope: !3150)
!3225 = !DILocation(line: 578, column: 8, scope: !3150)
!3226 = !DILocation(line: 578, column: 39, scope: !3150)
!3227 = !DILocation(line: 579, column: 2, scope: !3150)
!3228 = !DILocation(line: 579, column: 8, scope: !3150)
!3229 = !DILocation(line: 579, column: 39, scope: !3150)
!3230 = !DILocation(line: 580, column: 2, scope: !3150)
!3231 = !DILocation(line: 580, column: 8, scope: !3150)
!3232 = !DILocation(line: 580, column: 39, scope: !3150)
!3233 = !DILocation(line: 581, column: 2, scope: !3150)
!3234 = !DILocation(line: 581, column: 8, scope: !3150)
!3235 = !DILocation(line: 581, column: 39, scope: !3150)
!3236 = !DILocation(line: 582, column: 2, scope: !3150)
!3237 = !DILocation(line: 582, column: 8, scope: !3150)
!3238 = !DILocation(line: 582, column: 39, scope: !3150)
!3239 = !DILocation(line: 583, column: 2, scope: !3150)
!3240 = !DILocation(line: 583, column: 8, scope: !3150)
!3241 = !DILocation(line: 583, column: 39, scope: !3150)
!3242 = !DILocation(line: 584, column: 2, scope: !3150)
!3243 = !DILocation(line: 584, column: 8, scope: !3150)
!3244 = !DILocation(line: 584, column: 39, scope: !3150)
!3245 = !DILocation(line: 585, column: 2, scope: !3150)
!3246 = !DILocation(line: 585, column: 8, scope: !3150)
!3247 = !DILocation(line: 585, column: 39, scope: !3150)
!3248 = !DILocation(line: 586, column: 2, scope: !3150)
!3249 = !DILocation(line: 586, column: 8, scope: !3150)
!3250 = !DILocation(line: 586, column: 39, scope: !3150)
!3251 = !DILocation(line: 587, column: 2, scope: !3150)
!3252 = !DILocation(line: 587, column: 8, scope: !3150)
!3253 = !DILocation(line: 587, column: 39, scope: !3150)
!3254 = !DILocation(line: 588, column: 2, scope: !3150)
!3255 = !DILocation(line: 588, column: 8, scope: !3150)
!3256 = !DILocation(line: 588, column: 42, scope: !3150)
!3257 = !DILocation(line: 589, column: 2, scope: !3150)
!3258 = !DILocation(line: 589, column: 8, scope: !3150)
!3259 = !DILocation(line: 589, column: 21, scope: !3150)
!3260 = !DILocation(line: 591, column: 13, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 591, column: 2)
!3262 = !DILocation(line: 591, column: 7, scope: !3261)
!3263 = !DILocation(line: 591, column: 18, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 591, column: 2)
!3265 = !DILocation(line: 591, column: 24, scope: !3264)
!3266 = !DILocation(line: 591, column: 2, scope: !3261)
!3267 = !DILocation(line: 592, column: 3, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 591, column: 62)
!3269 = !DILocation(line: 592, column: 9, scope: !3268)
!3270 = !DILocation(line: 592, column: 19, scope: !3268)
!3271 = !DILocation(line: 592, column: 32, scope: !3268)
!3272 = !DILocation(line: 593, column: 3, scope: !3268)
!3273 = !DILocation(line: 593, column: 9, scope: !3268)
!3274 = !DILocation(line: 593, column: 18, scope: !3268)
!3275 = !DILocation(line: 593, column: 32, scope: !3268)
!3276 = !DILocation(line: 594, column: 3, scope: !3268)
!3277 = !DILocation(line: 594, column: 9, scope: !3268)
!3278 = !DILocation(line: 594, column: 24, scope: !3268)
!3279 = !DILocation(line: 594, column: 32, scope: !3268)
!3280 = !DILocation(line: 595, column: 2, scope: !3268)
!3281 = !DILocation(line: 591, column: 58, scope: !3264)
!3282 = !DILocation(line: 591, column: 2, scope: !3264)
!3283 = distinct !{!3283, !3266, !3284}
!3284 = !DILocation(line: 595, column: 2, scope: !3261)
!3285 = !DILocation(line: 597, column: 7, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 597, column: 6)
!3287 = !DILocation(line: 597, column: 12, scope: !3286)
!3288 = !DILocation(line: 597, column: 6, scope: !3150)
!3289 = !DILocation(line: 598, column: 3, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 597, column: 21)
!3291 = !DILocation(line: 600, column: 3, scope: !3290)
!3292 = !DILocation(line: 603, column: 32, scope: !3150)
!3293 = !DILocation(line: 603, column: 37, scope: !3150)
!3294 = !DILocation(line: 603, column: 15, scope: !3150)
!3295 = !DILocation(line: 603, column: 13, scope: !3150)
!3296 = !DILocation(line: 604, column: 7, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 604, column: 6)
!3298 = !DILocation(line: 604, column: 6, scope: !3150)
!3299 = !DILocation(line: 605, column: 3, scope: !3297)
!3300 = !DILocation(line: 607, column: 32, scope: !3150)
!3301 = !DILocation(line: 607, column: 8, scope: !3150)
!3302 = !DILocation(line: 607, column: 6, scope: !3150)
!3303 = !DILocation(line: 608, column: 6, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 608, column: 6)
!3305 = !DILocation(line: 608, column: 6, scope: !3150)
!3306 = !DILocation(line: 609, column: 3, scope: !3304)
!3307 = !DILocation(line: 611, column: 31, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 611, column: 6)
!3309 = !DILocation(line: 611, column: 6, scope: !3308)
!3310 = !DILocation(line: 611, column: 6, scope: !3150)
!3311 = !DILocation(line: 612, column: 7, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 611, column: 39)
!3313 = !DILocation(line: 613, column: 3, scope: !3312)
!3314 = !DILocation(line: 621, column: 23, scope: !3150)
!3315 = !DILocation(line: 622, column: 10, scope: !3150)
!3316 = !DILocation(line: 622, column: 16, scope: !3150)
!3317 = !DILocation(line: 621, column: 2, scope: !3150)
!3318 = !DILocation(line: 623, column: 23, scope: !3150)
!3319 = !DILocation(line: 624, column: 10, scope: !3150)
!3320 = !DILocation(line: 624, column: 16, scope: !3150)
!3321 = !DILocation(line: 623, column: 2, scope: !3150)
!3322 = !DILocation(line: 625, column: 23, scope: !3150)
!3323 = !DILocation(line: 626, column: 10, scope: !3150)
!3324 = !DILocation(line: 626, column: 16, scope: !3150)
!3325 = !DILocation(line: 625, column: 2, scope: !3150)
!3326 = !DILocation(line: 627, column: 23, scope: !3150)
!3327 = !DILocation(line: 628, column: 10, scope: !3150)
!3328 = !DILocation(line: 628, column: 16, scope: !3150)
!3329 = !DILocation(line: 627, column: 2, scope: !3150)
!3330 = !DILocation(line: 629, column: 23, scope: !3150)
!3331 = !DILocation(line: 630, column: 10, scope: !3150)
!3332 = !DILocation(line: 630, column: 16, scope: !3150)
!3333 = !DILocation(line: 629, column: 2, scope: !3150)
!3334 = !DILocation(line: 631, column: 23, scope: !3150)
!3335 = !DILocation(line: 632, column: 10, scope: !3150)
!3336 = !DILocation(line: 632, column: 16, scope: !3150)
!3337 = !DILocation(line: 631, column: 2, scope: !3150)
!3338 = !DILocation(line: 633, column: 23, scope: !3150)
!3339 = !DILocation(line: 634, column: 10, scope: !3150)
!3340 = !DILocation(line: 634, column: 16, scope: !3150)
!3341 = !DILocation(line: 633, column: 2, scope: !3150)
!3342 = !DILocation(line: 635, column: 23, scope: !3150)
!3343 = !DILocation(line: 636, column: 10, scope: !3150)
!3344 = !DILocation(line: 636, column: 16, scope: !3150)
!3345 = !DILocation(line: 635, column: 2, scope: !3150)
!3346 = !DILocation(line: 637, column: 23, scope: !3150)
!3347 = !DILocation(line: 638, column: 10, scope: !3150)
!3348 = !DILocation(line: 638, column: 16, scope: !3150)
!3349 = !DILocation(line: 637, column: 2, scope: !3150)
!3350 = !DILocation(line: 639, column: 23, scope: !3150)
!3351 = !DILocation(line: 640, column: 10, scope: !3150)
!3352 = !DILocation(line: 640, column: 16, scope: !3150)
!3353 = !DILocation(line: 639, column: 2, scope: !3150)
!3354 = !DILocation(line: 641, column: 23, scope: !3150)
!3355 = !DILocation(line: 642, column: 10, scope: !3150)
!3356 = !DILocation(line: 642, column: 16, scope: !3150)
!3357 = !DILocation(line: 641, column: 2, scope: !3150)
!3358 = !DILocation(line: 643, column: 23, scope: !3150)
!3359 = !DILocation(line: 644, column: 10, scope: !3150)
!3360 = !DILocation(line: 644, column: 16, scope: !3150)
!3361 = !DILocation(line: 643, column: 2, scope: !3150)
!3362 = !DILocation(line: 645, column: 23, scope: !3150)
!3363 = !DILocation(line: 646, column: 10, scope: !3150)
!3364 = !DILocation(line: 646, column: 16, scope: !3150)
!3365 = !DILocation(line: 645, column: 2, scope: !3150)
!3366 = !DILocation(line: 648, column: 29, scope: !3150)
!3367 = !DILocation(line: 649, column: 12, scope: !3150)
!3368 = !DILocation(line: 649, column: 18, scope: !3150)
!3369 = !DILocation(line: 648, column: 2, scope: !3150)
!3370 = !DILocation(line: 650, column: 29, scope: !3150)
!3371 = !DILocation(line: 651, column: 12, scope: !3150)
!3372 = !DILocation(line: 651, column: 18, scope: !3150)
!3373 = !DILocation(line: 650, column: 2, scope: !3150)
!3374 = !DILocation(line: 652, column: 29, scope: !3150)
!3375 = !DILocation(line: 653, column: 12, scope: !3150)
!3376 = !DILocation(line: 653, column: 18, scope: !3150)
!3377 = !DILocation(line: 652, column: 2, scope: !3150)
!3378 = !DILocation(line: 654, column: 29, scope: !3150)
!3379 = !DILocation(line: 655, column: 12, scope: !3150)
!3380 = !DILocation(line: 655, column: 18, scope: !3150)
!3381 = !DILocation(line: 654, column: 2, scope: !3150)
!3382 = !DILocation(line: 656, column: 29, scope: !3150)
!3383 = !DILocation(line: 657, column: 12, scope: !3150)
!3384 = !DILocation(line: 657, column: 18, scope: !3150)
!3385 = !DILocation(line: 656, column: 2, scope: !3150)
!3386 = !DILocation(line: 658, column: 29, scope: !3150)
!3387 = !DILocation(line: 659, column: 12, scope: !3150)
!3388 = !DILocation(line: 659, column: 18, scope: !3150)
!3389 = !DILocation(line: 658, column: 2, scope: !3150)
!3390 = !DILocation(line: 661, column: 36, scope: !3150)
!3391 = !DILocation(line: 661, column: 8, scope: !3150)
!3392 = !DILocation(line: 661, column: 6, scope: !3150)
!3393 = !DILocation(line: 662, column: 6, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 662, column: 6)
!3395 = !DILocation(line: 662, column: 10, scope: !3394)
!3396 = !DILocation(line: 662, column: 14, scope: !3394)
!3397 = !DILocation(line: 662, column: 17, scope: !3394)
!3398 = !DILocation(line: 662, column: 21, scope: !3394)
!3399 = !DILocation(line: 662, column: 6, scope: !3150)
!3400 = !DILocation(line: 663, column: 9, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 662, column: 33)
!3402 = !DILocation(line: 663, column: 7, scope: !3401)
!3403 = !DILocation(line: 664, column: 3, scope: !3401)
!3404 = !DILocation(line: 665, column: 13, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 665, column: 13)
!3406 = !DILocation(line: 665, column: 17, scope: !3405)
!3407 = !DILocation(line: 665, column: 13, scope: !3394)
!3408 = !DILocation(line: 666, column: 3, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 665, column: 46)
!3410 = !DILocation(line: 667, column: 7, scope: !3409)
!3411 = !DILocation(line: 668, column: 3, scope: !3409)
!3412 = !DILocation(line: 669, column: 13, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 669, column: 13)
!3414 = !DILocation(line: 669, column: 17, scope: !3413)
!3415 = !DILocation(line: 669, column: 13, scope: !3405)
!3416 = !DILocation(line: 670, column: 30, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 669, column: 22)
!3418 = !DILocation(line: 671, column: 9, scope: !3417)
!3419 = !DILocation(line: 671, column: 15, scope: !3417)
!3420 = !DILocation(line: 671, column: 25, scope: !3417)
!3421 = !DILocation(line: 670, column: 3, scope: !3417)
!3422 = !DILocation(line: 672, column: 2, scope: !3417)
!3423 = !DILocation(line: 674, column: 13, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 674, column: 2)
!3425 = !DILocation(line: 674, column: 7, scope: !3424)
!3426 = !DILocation(line: 674, column: 18, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 674, column: 2)
!3428 = !DILocation(line: 674, column: 26, scope: !3427)
!3429 = !DILocation(line: 674, column: 24, scope: !3427)
!3430 = !DILocation(line: 674, column: 2, scope: !3424)
!3431 = !DILocalVariable(name: "table", scope: !3432, file: !3, line: 675, type: !3179)
!3432 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 674, column: 40)
!3433 = !DILocation(line: 675, column: 42, scope: !3432)
!3434 = !DILocalVariable(name: "propname", scope: !3432, file: !3, line: 676, type: !366)
!3435 = !DILocation(line: 676, column: 9, scope: !3432)
!3436 = !DILocalVariable(name: "i", scope: !3432, file: !3, line: 677, type: !247)
!3437 = !DILocation(line: 677, column: 7, scope: !3432)
!3438 = !DILocalVariable(name: "tab_len", scope: !3432, file: !3, line: 677, type: !247)
!3439 = !DILocation(line: 677, column: 10, scope: !3432)
!3440 = !DILocalVariable(name: "size", scope: !3432, file: !3, line: 677, type: !247)
!3441 = !DILocation(line: 677, column: 19, scope: !3432)
!3442 = !DILocation(line: 679, column: 61, scope: !3432)
!3443 = !DILocation(line: 679, column: 14, scope: !3432)
!3444 = !DILocation(line: 679, column: 12, scope: !3432)
!3445 = !DILocation(line: 680, column: 26, scope: !3432)
!3446 = !DILocation(line: 680, column: 38, scope: !3432)
!3447 = !DILocation(line: 680, column: 10, scope: !3432)
!3448 = !DILocation(line: 680, column: 8, scope: !3432)
!3449 = !DILocation(line: 681, column: 8, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 681, column: 7)
!3451 = !DILocation(line: 681, column: 13, scope: !3450)
!3452 = !DILocation(line: 681, column: 17, scope: !3450)
!3453 = !DILocation(line: 681, column: 7, scope: !3432)
!3454 = !DILocation(line: 682, column: 4, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 681, column: 23)
!3456 = !DILocation(line: 683, column: 10, scope: !3455)
!3457 = !DILocation(line: 683, column: 4, scope: !3455)
!3458 = !DILocation(line: 684, column: 34, scope: !3455)
!3459 = !DILocation(line: 684, column: 39, scope: !3455)
!3460 = !DILocation(line: 684, column: 4, scope: !3455)
!3461 = !DILocation(line: 685, column: 8, scope: !3455)
!3462 = !DILocation(line: 686, column: 4, scope: !3455)
!3463 = !DILocation(line: 689, column: 9, scope: !3432)
!3464 = !DILocation(line: 689, column: 3, scope: !3432)
!3465 = !DILocation(line: 690, column: 13, scope: !3432)
!3466 = !DILocation(line: 690, column: 18, scope: !3432)
!3467 = !DILocation(line: 690, column: 11, scope: !3432)
!3468 = !DILocation(line: 691, column: 33, scope: !3432)
!3469 = !DILocation(line: 691, column: 3, scope: !3432)
!3470 = !DILocation(line: 691, column: 9, scope: !3432)
!3471 = !DILocation(line: 691, column: 24, scope: !3432)
!3472 = !DILocation(line: 691, column: 31, scope: !3432)
!3473 = !DILocation(line: 694, column: 18, scope: !3432)
!3474 = !DILocation(line: 694, column: 23, scope: !3432)
!3475 = !DILocation(line: 694, column: 28, scope: !3432)
!3476 = !DILocation(line: 694, column: 4, scope: !3432)
!3477 = !DILocation(line: 693, column: 11, scope: !3432)
!3478 = !DILocation(line: 693, column: 17, scope: !3432)
!3479 = !DILocation(line: 693, column: 27, scope: !3432)
!3480 = !DILocation(line: 693, column: 34, scope: !3432)
!3481 = !DILocation(line: 693, column: 9, scope: !3432)
!3482 = !DILocation(line: 695, column: 8, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 695, column: 7)
!3484 = !DILocation(line: 695, column: 14, scope: !3483)
!3485 = !DILocation(line: 695, column: 24, scope: !3483)
!3486 = !DILocation(line: 695, column: 7, scope: !3432)
!3487 = !DILocation(line: 696, column: 34, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 695, column: 32)
!3489 = !DILocation(line: 696, column: 39, scope: !3488)
!3490 = !DILocation(line: 696, column: 4, scope: !3488)
!3491 = !DILocation(line: 697, column: 8, scope: !3488)
!3492 = !DILocation(line: 698, column: 4, scope: !3488)
!3493 = !DILocation(line: 701, column: 10, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 701, column: 3)
!3495 = !DILocation(line: 701, column: 8, scope: !3494)
!3496 = !DILocation(line: 701, column: 15, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 701, column: 3)
!3498 = !DILocation(line: 701, column: 19, scope: !3497)
!3499 = !DILocation(line: 701, column: 17, scope: !3497)
!3500 = !DILocation(line: 701, column: 3, scope: !3494)
!3501 = !DILocation(line: 702, column: 19, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 701, column: 33)
!3503 = !DILocation(line: 702, column: 4, scope: !3502)
!3504 = !DILocation(line: 702, column: 10, scope: !3502)
!3505 = !DILocation(line: 702, column: 13, scope: !3502)
!3506 = !DILocation(line: 702, column: 17, scope: !3502)
!3507 = !DILocation(line: 703, column: 8, scope: !3502)
!3508 = !DILocation(line: 704, column: 24, scope: !3502)
!3509 = !DILocation(line: 704, column: 4, scope: !3502)
!3510 = !DILocation(line: 704, column: 10, scope: !3502)
!3511 = !DILocation(line: 704, column: 13, scope: !3502)
!3512 = !DILocation(line: 704, column: 22, scope: !3502)
!3513 = !DILocation(line: 705, column: 8, scope: !3502)
!3514 = !DILocation(line: 706, column: 3, scope: !3502)
!3515 = !DILocation(line: 701, column: 29, scope: !3497)
!3516 = !DILocation(line: 701, column: 3, scope: !3497)
!3517 = distinct !{!3517, !3500, !3518}
!3518 = !DILocation(line: 706, column: 3, scope: !3494)
!3519 = !DILocation(line: 707, column: 2, scope: !3432)
!3520 = !DILocation(line: 674, column: 36, scope: !3427)
!3521 = !DILocation(line: 674, column: 2, scope: !3427)
!3522 = distinct !{!3522, !3430, !3523}
!3523 = !DILocation(line: 707, column: 2, scope: !3424)
!3524 = !DILocation(line: 709, column: 25, scope: !3150)
!3525 = !DILocation(line: 709, column: 9, scope: !3150)
!3526 = !DILocation(line: 709, column: 7, scope: !3150)
!3527 = !DILocation(line: 710, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 710, column: 6)
!3529 = !DILocation(line: 710, column: 12, scope: !3528)
!3530 = !DILocation(line: 710, column: 16, scope: !3528)
!3531 = !DILocation(line: 710, column: 6, scope: !3150)
!3532 = !DILocation(line: 711, column: 3, scope: !3528)
!3533 = !DILocation(line: 713, column: 28, scope: !3150)
!3534 = !DILocation(line: 713, column: 32, scope: !3150)
!3535 = !DILocation(line: 713, column: 2, scope: !3150)
!3536 = !DILocation(line: 713, column: 8, scope: !3150)
!3537 = !DILocation(line: 713, column: 26, scope: !3150)
!3538 = !DILocation(line: 714, column: 52, scope: !3150)
!3539 = !DILocation(line: 714, column: 57, scope: !3150)
!3540 = !DILocation(line: 715, column: 9, scope: !3150)
!3541 = !DILocation(line: 715, column: 15, scope: !3150)
!3542 = !DILocation(line: 714, column: 38, scope: !3150)
!3543 = !DILocation(line: 714, column: 17, scope: !3150)
!3544 = !DILocation(line: 714, column: 23, scope: !3150)
!3545 = !DILocation(line: 714, column: 36, scope: !3150)
!3546 = !DILocation(line: 714, column: 15, scope: !3150)
!3547 = !DILocation(line: 718, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 718, column: 6)
!3549 = !DILocation(line: 718, column: 13, scope: !3548)
!3550 = !DILocation(line: 718, column: 6, scope: !3150)
!3551 = !DILocation(line: 719, column: 33, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 718, column: 27)
!3553 = !DILocation(line: 719, column: 38, scope: !3552)
!3554 = !DILocation(line: 719, column: 3, scope: !3552)
!3555 = !DILocation(line: 720, column: 7, scope: !3552)
!3556 = !DILocation(line: 721, column: 3, scope: !3552)
!3557 = !DILocation(line: 724, column: 13, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 724, column: 2)
!3559 = !DILocation(line: 724, column: 7, scope: !3558)
!3560 = !DILocation(line: 724, column: 18, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 724, column: 2)
!3562 = !DILocation(line: 724, column: 26, scope: !3561)
!3563 = !DILocation(line: 724, column: 32, scope: !3561)
!3564 = !DILocation(line: 724, column: 24, scope: !3561)
!3565 = !DILocation(line: 724, column: 2, scope: !3558)
!3566 = !DILocation(line: 725, column: 30, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 724, column: 60)
!3568 = !DILocation(line: 725, column: 3, scope: !3567)
!3569 = !DILocation(line: 725, column: 16, scope: !3567)
!3570 = !DILocation(line: 725, column: 23, scope: !3567)
!3571 = !DILocation(line: 725, column: 28, scope: !3567)
!3572 = !DILocation(line: 726, column: 36, scope: !3567)
!3573 = !DILocation(line: 726, column: 3, scope: !3567)
!3574 = !DILocation(line: 726, column: 16, scope: !3567)
!3575 = !DILocation(line: 726, column: 23, scope: !3567)
!3576 = !DILocation(line: 726, column: 34, scope: !3567)
!3577 = !DILocation(line: 727, column: 2, scope: !3567)
!3578 = !DILocation(line: 724, column: 56, scope: !3561)
!3579 = !DILocation(line: 724, column: 2, scope: !3561)
!3580 = distinct !{!3580, !3565, !3581}
!3581 = !DILocation(line: 727, column: 2, scope: !3558)
!3582 = !DILabel(scope: !3150, name: "out_put_node", file: !3, line: 729)
!3583 = !DILocation(line: 729, column: 1, scope: !3150)
!3584 = !DILocation(line: 730, column: 14, scope: !3150)
!3585 = !DILocation(line: 730, column: 2, scope: !3150)
!3586 = !DILocation(line: 731, column: 9, scope: !3150)
!3587 = !DILocation(line: 731, column: 2, scope: !3150)
!3588 = !DILocation(line: 732, column: 1, scope: !3150)
!3589 = distinct !DISubprogram(name: "of_property_read_u32", scope: !259, file: !259, line: 1214, type: !3590, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!247, !3592, !262, !834}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!3594 = !DILocalVariable(name: "np", arg: 1, scope: !3589, file: !259, line: 1214, type: !3592)
!3595 = !DILocation(line: 1214, column: 66, scope: !3589)
!3596 = !DILocalVariable(name: "propname", arg: 2, scope: !3589, file: !259, line: 1215, type: !262)
!3597 = !DILocation(line: 1215, column: 24, scope: !3589)
!3598 = !DILocalVariable(name: "out_value", arg: 3, scope: !3589, file: !259, line: 1216, type: !834)
!3599 = !DILocation(line: 1216, column: 17, scope: !3589)
!3600 = !DILocation(line: 1218, column: 36, scope: !3589)
!3601 = !DILocation(line: 1218, column: 40, scope: !3589)
!3602 = !DILocation(line: 1218, column: 50, scope: !3589)
!3603 = !DILocation(line: 1218, column: 9, scope: !3589)
!3604 = !DILocation(line: 1218, column: 2, scope: !3589)
!3605 = distinct !DISubprogram(name: "of_property_count_u32_elems", scope: !259, file: !259, line: 1097, type: !3606, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!247, !3592, !262}
!3608 = !DILocalVariable(name: "np", arg: 1, scope: !3605, file: !259, line: 1097, type: !3592)
!3609 = !DILocation(line: 1097, column: 73, scope: !3605)
!3610 = !DILocalVariable(name: "propname", arg: 2, scope: !3605, file: !259, line: 1098, type: !262)
!3611 = !DILocation(line: 1098, column: 17, scope: !3605)
!3612 = !DILocation(line: 1100, column: 41, scope: !3605)
!3613 = !DILocation(line: 1100, column: 45, scope: !3605)
!3614 = !DILocation(line: 1100, column: 9, scope: !3605)
!3615 = !DILocation(line: 1100, column: 2, scope: !3605)
!3616 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !259, file: !259, line: 494, type: !3617, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!247, !3592, !262, !834, !412}
!3619 = !DILocalVariable(name: "np", arg: 1, scope: !3616, file: !259, line: 494, type: !3592)
!3620 = !DILocation(line: 494, column: 72, scope: !3616)
!3621 = !DILocalVariable(name: "propname", arg: 2, scope: !3616, file: !259, line: 495, type: !262)
!3622 = !DILocation(line: 495, column: 23, scope: !3616)
!3623 = !DILocalVariable(name: "out_values", arg: 3, scope: !3616, file: !259, line: 496, type: !834)
!3624 = !DILocation(line: 496, column: 16, scope: !3616)
!3625 = !DILocalVariable(name: "sz", arg: 4, scope: !3616, file: !259, line: 496, type: !412)
!3626 = !DILocation(line: 496, column: 35, scope: !3616)
!3627 = !DILocalVariable(name: "ret", scope: !3616, file: !259, line: 498, type: !247)
!3628 = !DILocation(line: 498, column: 6, scope: !3616)
!3629 = !DILocation(line: 498, column: 48, scope: !3616)
!3630 = !DILocation(line: 498, column: 52, scope: !3616)
!3631 = !DILocation(line: 498, column: 62, scope: !3616)
!3632 = !DILocation(line: 499, column: 13, scope: !3616)
!3633 = !DILocation(line: 498, column: 12, scope: !3616)
!3634 = !DILocation(line: 500, column: 6, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3616, file: !259, line: 500, column: 6)
!3636 = !DILocation(line: 500, column: 10, scope: !3635)
!3637 = !DILocation(line: 500, column: 6, scope: !3616)
!3638 = !DILocation(line: 501, column: 3, scope: !3635)
!3639 = !DILocation(line: 503, column: 10, scope: !3635)
!3640 = !DILocation(line: 503, column: 3, scope: !3635)
!3641 = !DILocation(line: 504, column: 1, scope: !3616)
!3642 = distinct !DISubprogram(name: "power_supply_put_battery_info", scope: !3, file: !3, line: 735, type: !3643, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !2225, !3153}
!3645 = !DILocalVariable(name: "psy", arg: 1, scope: !3642, file: !3, line: 735, type: !2225)
!3646 = !DILocation(line: 735, column: 57, scope: !3642)
!3647 = !DILocalVariable(name: "info", arg: 2, scope: !3642, file: !3, line: 736, type: !3153)
!3648 = !DILocation(line: 736, column: 42, scope: !3642)
!3649 = !DILocalVariable(name: "i", scope: !3642, file: !3, line: 738, type: !247)
!3650 = !DILocation(line: 738, column: 6, scope: !3642)
!3651 = !DILocation(line: 740, column: 9, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 740, column: 2)
!3653 = !DILocation(line: 740, column: 7, scope: !3652)
!3654 = !DILocation(line: 740, column: 14, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 740, column: 2)
!3656 = !DILocation(line: 740, column: 16, scope: !3655)
!3657 = !DILocation(line: 740, column: 2, scope: !3652)
!3658 = !DILocation(line: 741, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 741, column: 7)
!3660 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 740, column: 50)
!3661 = !DILocation(line: 741, column: 13, scope: !3659)
!3662 = !DILocation(line: 741, column: 23, scope: !3659)
!3663 = !DILocation(line: 741, column: 7, scope: !3660)
!3664 = !DILocation(line: 742, column: 16, scope: !3659)
!3665 = !DILocation(line: 742, column: 21, scope: !3659)
!3666 = !DILocation(line: 742, column: 26, scope: !3659)
!3667 = !DILocation(line: 742, column: 32, scope: !3659)
!3668 = !DILocation(line: 742, column: 42, scope: !3659)
!3669 = !DILocation(line: 742, column: 4, scope: !3659)
!3670 = !DILocation(line: 743, column: 2, scope: !3660)
!3671 = !DILocation(line: 740, column: 46, scope: !3655)
!3672 = !DILocation(line: 740, column: 2, scope: !3655)
!3673 = distinct !{!3673, !3657, !3674}
!3674 = !DILocation(line: 743, column: 2, scope: !3652)
!3675 = !DILocation(line: 745, column: 6, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 745, column: 6)
!3677 = !DILocation(line: 745, column: 12, scope: !3676)
!3678 = !DILocation(line: 745, column: 6, scope: !3642)
!3679 = !DILocation(line: 746, column: 15, scope: !3676)
!3680 = !DILocation(line: 746, column: 20, scope: !3676)
!3681 = !DILocation(line: 746, column: 25, scope: !3676)
!3682 = !DILocation(line: 746, column: 31, scope: !3676)
!3683 = !DILocation(line: 746, column: 3, scope: !3676)
!3684 = !DILocation(line: 747, column: 1, scope: !3642)
!3685 = distinct !DISubprogram(name: "devm_kcalloc", scope: !135, file: !135, line: 229, type: !3686, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!256, !1788, !412, !412, !245}
!3688 = !DILocalVariable(name: "dev", arg: 1, scope: !3685, file: !135, line: 229, type: !1788)
!3689 = !DILocation(line: 229, column: 49, scope: !3685)
!3690 = !DILocalVariable(name: "n", arg: 2, scope: !3685, file: !135, line: 230, type: !412)
!3691 = !DILocation(line: 230, column: 13, scope: !3685)
!3692 = !DILocalVariable(name: "size", arg: 3, scope: !3685, file: !135, line: 230, type: !412)
!3693 = !DILocation(line: 230, column: 23, scope: !3685)
!3694 = !DILocalVariable(name: "flags", arg: 4, scope: !3685, file: !135, line: 230, type: !245)
!3695 = !DILocation(line: 230, column: 35, scope: !3685)
!3696 = !DILocation(line: 232, column: 28, scope: !3685)
!3697 = !DILocation(line: 232, column: 33, scope: !3685)
!3698 = !DILocation(line: 232, column: 36, scope: !3685)
!3699 = !DILocation(line: 232, column: 42, scope: !3685)
!3700 = !DILocation(line: 232, column: 48, scope: !3685)
!3701 = !DILocation(line: 232, column: 9, scope: !3685)
!3702 = !DILocation(line: 232, column: 2, scope: !3685)
!3703 = distinct !DISubprogram(name: "__fswab32", scope: !3704, file: !3704, line: 57, type: !3705, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3704 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!248, !248}
!3707 = !DILocalVariable(name: "val", arg: 1, scope: !3703, file: !3704, line: 57, type: !248)
!3708 = !DILocation(line: 57, column: 57, scope: !3703)
!3709 = !DILocation(line: 60, column: 23, scope: !3703)
!3710 = !DILocation(line: 60, column: 9, scope: !3703)
!3711 = !DILocation(line: 60, column: 2, scope: !3703)
!3712 = distinct !DISubprogram(name: "power_supply_temp2resist_simple", scope: !3, file: !3, line: 764, type: !3713, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!247, !3186, !247, !247}
!3715 = !DILocalVariable(name: "table", arg: 1, scope: !3712, file: !3, line: 764, type: !3186)
!3716 = !DILocation(line: 764, column: 80, scope: !3712)
!3717 = !DILocalVariable(name: "table_len", arg: 2, scope: !3712, file: !3, line: 765, type: !247)
!3718 = !DILocation(line: 765, column: 13, scope: !3712)
!3719 = !DILocalVariable(name: "temp", arg: 3, scope: !3712, file: !3, line: 765, type: !247)
!3720 = !DILocation(line: 765, column: 28, scope: !3712)
!3721 = !DILocalVariable(name: "i", scope: !3712, file: !3, line: 767, type: !247)
!3722 = !DILocation(line: 767, column: 6, scope: !3712)
!3723 = !DILocalVariable(name: "resist", scope: !3712, file: !3, line: 767, type: !247)
!3724 = !DILocation(line: 767, column: 9, scope: !3712)
!3725 = !DILocation(line: 769, column: 9, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 769, column: 2)
!3727 = !DILocation(line: 769, column: 7, scope: !3726)
!3728 = !DILocation(line: 769, column: 14, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 769, column: 2)
!3730 = !DILocation(line: 769, column: 18, scope: !3729)
!3731 = !DILocation(line: 769, column: 16, scope: !3729)
!3732 = !DILocation(line: 769, column: 2, scope: !3726)
!3733 = !DILocation(line: 770, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 770, column: 7)
!3735 = !DILocation(line: 770, column: 14, scope: !3734)
!3736 = !DILocation(line: 770, column: 20, scope: !3734)
!3737 = !DILocation(line: 770, column: 23, scope: !3734)
!3738 = !DILocation(line: 770, column: 12, scope: !3734)
!3739 = !DILocation(line: 770, column: 7, scope: !3729)
!3740 = !DILocation(line: 771, column: 4, scope: !3734)
!3741 = !DILocation(line: 769, column: 30, scope: !3729)
!3742 = !DILocation(line: 769, column: 2, scope: !3729)
!3743 = distinct !{!3743, !3732, !3744}
!3744 = !DILocation(line: 771, column: 4, scope: !3726)
!3745 = !DILocation(line: 773, column: 6, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 773, column: 6)
!3747 = !DILocation(line: 773, column: 8, scope: !3746)
!3748 = !DILocation(line: 773, column: 12, scope: !3746)
!3749 = !DILocation(line: 773, column: 15, scope: !3746)
!3750 = !DILocation(line: 773, column: 19, scope: !3746)
!3751 = !DILocation(line: 773, column: 17, scope: !3746)
!3752 = !DILocation(line: 773, column: 6, scope: !3712)
!3753 = !DILocalVariable(name: "tmp", scope: !3754, file: !3, line: 774, type: !247)
!3754 = distinct !DILexicalBlock(scope: !3746, file: !3, line: 773, column: 30)
!3755 = !DILocation(line: 774, column: 7, scope: !3754)
!3756 = !DILocation(line: 776, column: 10, scope: !3754)
!3757 = !DILocation(line: 776, column: 16, scope: !3754)
!3758 = !DILocation(line: 776, column: 18, scope: !3754)
!3759 = !DILocation(line: 776, column: 23, scope: !3754)
!3760 = !DILocation(line: 776, column: 36, scope: !3754)
!3761 = !DILocation(line: 776, column: 42, scope: !3754)
!3762 = !DILocation(line: 776, column: 45, scope: !3754)
!3763 = !DILocation(line: 776, column: 34, scope: !3754)
!3764 = !DILocation(line: 777, column: 5, scope: !3754)
!3765 = !DILocation(line: 777, column: 12, scope: !3754)
!3766 = !DILocation(line: 777, column: 18, scope: !3754)
!3767 = !DILocation(line: 777, column: 21, scope: !3754)
!3768 = !DILocation(line: 777, column: 10, scope: !3754)
!3769 = !DILocation(line: 776, column: 57, scope: !3754)
!3770 = !DILocation(line: 776, column: 7, scope: !3754)
!3771 = !DILocation(line: 778, column: 10, scope: !3754)
!3772 = !DILocation(line: 778, column: 16, scope: !3754)
!3773 = !DILocation(line: 778, column: 18, scope: !3754)
!3774 = !DILocation(line: 778, column: 23, scope: !3754)
!3775 = !DILocation(line: 778, column: 30, scope: !3754)
!3776 = !DILocation(line: 778, column: 36, scope: !3754)
!3777 = !DILocation(line: 778, column: 39, scope: !3754)
!3778 = !DILocation(line: 778, column: 28, scope: !3754)
!3779 = !DILocation(line: 778, column: 7, scope: !3754)
!3780 = !DILocation(line: 779, column: 12, scope: !3754)
!3781 = !DILocation(line: 779, column: 18, scope: !3754)
!3782 = !DILocation(line: 779, column: 24, scope: !3754)
!3783 = !DILocation(line: 779, column: 27, scope: !3754)
!3784 = !DILocation(line: 779, column: 16, scope: !3754)
!3785 = !DILocation(line: 779, column: 10, scope: !3754)
!3786 = !DILocation(line: 780, column: 2, scope: !3754)
!3787 = !DILocation(line: 780, column: 13, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3746, file: !3, line: 780, column: 13)
!3789 = !DILocation(line: 780, column: 15, scope: !3788)
!3790 = !DILocation(line: 780, column: 13, scope: !3746)
!3791 = !DILocation(line: 781, column: 12, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 780, column: 21)
!3793 = !DILocation(line: 781, column: 21, scope: !3792)
!3794 = !DILocation(line: 781, column: 10, scope: !3792)
!3795 = !DILocation(line: 782, column: 2, scope: !3792)
!3796 = !DILocation(line: 783, column: 12, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 782, column: 9)
!3798 = !DILocation(line: 783, column: 18, scope: !3797)
!3799 = !DILocation(line: 783, column: 28, scope: !3797)
!3800 = !DILocation(line: 783, column: 33, scope: !3797)
!3801 = !DILocation(line: 783, column: 10, scope: !3797)
!3802 = !DILocation(line: 786, column: 9, scope: !3712)
!3803 = !DILocation(line: 786, column: 2, scope: !3712)
!3804 = distinct !DISubprogram(name: "power_supply_ocv2cap_simple", scope: !3, file: !3, line: 802, type: !3805, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!247, !3179, !247, !247}
!3807 = !DILocalVariable(name: "table", arg: 1, scope: !3804, file: !3, line: 802, type: !3179)
!3808 = !DILocation(line: 802, column: 72, scope: !3804)
!3809 = !DILocalVariable(name: "table_len", arg: 2, scope: !3804, file: !3, line: 803, type: !247)
!3810 = !DILocation(line: 803, column: 9, scope: !3804)
!3811 = !DILocalVariable(name: "ocv", arg: 3, scope: !3804, file: !3, line: 803, type: !247)
!3812 = !DILocation(line: 803, column: 24, scope: !3804)
!3813 = !DILocalVariable(name: "i", scope: !3804, file: !3, line: 805, type: !247)
!3814 = !DILocation(line: 805, column: 6, scope: !3804)
!3815 = !DILocalVariable(name: "cap", scope: !3804, file: !3, line: 805, type: !247)
!3816 = !DILocation(line: 805, column: 9, scope: !3804)
!3817 = !DILocalVariable(name: "tmp", scope: !3804, file: !3, line: 805, type: !247)
!3818 = !DILocation(line: 805, column: 14, scope: !3804)
!3819 = !DILocation(line: 807, column: 9, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 807, column: 2)
!3821 = !DILocation(line: 807, column: 7, scope: !3820)
!3822 = !DILocation(line: 807, column: 14, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 807, column: 2)
!3824 = !DILocation(line: 807, column: 18, scope: !3823)
!3825 = !DILocation(line: 807, column: 16, scope: !3823)
!3826 = !DILocation(line: 807, column: 2, scope: !3820)
!3827 = !DILocation(line: 808, column: 7, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 808, column: 7)
!3829 = !DILocation(line: 808, column: 13, scope: !3828)
!3830 = !DILocation(line: 808, column: 19, scope: !3828)
!3831 = !DILocation(line: 808, column: 22, scope: !3828)
!3832 = !DILocation(line: 808, column: 11, scope: !3828)
!3833 = !DILocation(line: 808, column: 7, scope: !3823)
!3834 = !DILocation(line: 809, column: 4, scope: !3828)
!3835 = !DILocation(line: 807, column: 30, scope: !3823)
!3836 = !DILocation(line: 807, column: 2, scope: !3823)
!3837 = distinct !{!3837, !3826, !3838}
!3838 = !DILocation(line: 809, column: 4, scope: !3820)
!3839 = !DILocation(line: 811, column: 6, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 811, column: 6)
!3841 = !DILocation(line: 811, column: 8, scope: !3840)
!3842 = !DILocation(line: 811, column: 12, scope: !3840)
!3843 = !DILocation(line: 811, column: 15, scope: !3840)
!3844 = !DILocation(line: 811, column: 19, scope: !3840)
!3845 = !DILocation(line: 811, column: 17, scope: !3840)
!3846 = !DILocation(line: 811, column: 6, scope: !3804)
!3847 = !DILocation(line: 812, column: 10, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 811, column: 30)
!3849 = !DILocation(line: 812, column: 16, scope: !3848)
!3850 = !DILocation(line: 812, column: 18, scope: !3848)
!3851 = !DILocation(line: 812, column: 23, scope: !3848)
!3852 = !DILocation(line: 812, column: 34, scope: !3848)
!3853 = !DILocation(line: 812, column: 40, scope: !3848)
!3854 = !DILocation(line: 812, column: 43, scope: !3848)
!3855 = !DILocation(line: 812, column: 32, scope: !3848)
!3856 = !DILocation(line: 813, column: 5, scope: !3848)
!3857 = !DILocation(line: 813, column: 11, scope: !3848)
!3858 = !DILocation(line: 813, column: 17, scope: !3848)
!3859 = !DILocation(line: 813, column: 20, scope: !3848)
!3860 = !DILocation(line: 813, column: 9, scope: !3848)
!3861 = !DILocation(line: 812, column: 53, scope: !3848)
!3862 = !DILocation(line: 812, column: 7, scope: !3848)
!3863 = !DILocation(line: 814, column: 10, scope: !3848)
!3864 = !DILocation(line: 814, column: 16, scope: !3848)
!3865 = !DILocation(line: 814, column: 18, scope: !3848)
!3866 = !DILocation(line: 814, column: 23, scope: !3848)
!3867 = !DILocation(line: 814, column: 29, scope: !3848)
!3868 = !DILocation(line: 814, column: 35, scope: !3848)
!3869 = !DILocation(line: 814, column: 38, scope: !3848)
!3870 = !DILocation(line: 814, column: 27, scope: !3848)
!3871 = !DILocation(line: 814, column: 7, scope: !3848)
!3872 = !DILocation(line: 815, column: 9, scope: !3848)
!3873 = !DILocation(line: 815, column: 15, scope: !3848)
!3874 = !DILocation(line: 815, column: 21, scope: !3848)
!3875 = !DILocation(line: 815, column: 24, scope: !3848)
!3876 = !DILocation(line: 815, column: 13, scope: !3848)
!3877 = !DILocation(line: 815, column: 7, scope: !3848)
!3878 = !DILocation(line: 816, column: 2, scope: !3848)
!3879 = !DILocation(line: 816, column: 13, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 816, column: 13)
!3881 = !DILocation(line: 816, column: 15, scope: !3880)
!3882 = !DILocation(line: 816, column: 13, scope: !3840)
!3883 = !DILocation(line: 817, column: 9, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 816, column: 21)
!3885 = !DILocation(line: 817, column: 18, scope: !3884)
!3886 = !DILocation(line: 817, column: 7, scope: !3884)
!3887 = !DILocation(line: 818, column: 2, scope: !3884)
!3888 = !DILocation(line: 819, column: 9, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 818, column: 9)
!3890 = !DILocation(line: 819, column: 15, scope: !3889)
!3891 = !DILocation(line: 819, column: 25, scope: !3889)
!3892 = !DILocation(line: 819, column: 30, scope: !3889)
!3893 = !DILocation(line: 819, column: 7, scope: !3889)
!3894 = !DILocation(line: 822, column: 9, scope: !3804)
!3895 = !DILocation(line: 822, column: 2, scope: !3804)
!3896 = distinct !DISubprogram(name: "power_supply_find_ocv2cap_table", scope: !3, file: !3, line: 827, type: !3897, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!3179, !3153, !247, !950}
!3899 = !DILocalVariable(name: "info", arg: 1, scope: !3896, file: !3, line: 827, type: !3153)
!3900 = !DILocation(line: 827, column: 67, scope: !3896)
!3901 = !DILocalVariable(name: "temp", arg: 2, scope: !3896, file: !3, line: 828, type: !247)
!3902 = !DILocation(line: 828, column: 9, scope: !3896)
!3903 = !DILocalVariable(name: "table_len", arg: 3, scope: !3896, file: !3, line: 828, type: !950)
!3904 = !DILocation(line: 828, column: 20, scope: !3896)
!3905 = !DILocalVariable(name: "best_temp_diff", scope: !3896, file: !3, line: 830, type: !247)
!3906 = !DILocation(line: 830, column: 6, scope: !3896)
!3907 = !DILocalVariable(name: "temp_diff", scope: !3896, file: !3, line: 830, type: !247)
!3908 = !DILocation(line: 830, column: 32, scope: !3896)
!3909 = !DILocalVariable(name: "i", scope: !3896, file: !3, line: 831, type: !770)
!3910 = !DILocation(line: 831, column: 5, scope: !3896)
!3911 = !DILocalVariable(name: "best_index", scope: !3896, file: !3, line: 831, type: !770)
!3912 = !DILocation(line: 831, column: 8, scope: !3896)
!3913 = !DILocation(line: 833, column: 7, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 833, column: 6)
!3915 = !DILocation(line: 833, column: 13, scope: !3914)
!3916 = !DILocation(line: 833, column: 6, scope: !3896)
!3917 = !DILocation(line: 834, column: 3, scope: !3914)
!3918 = !DILocation(line: 836, column: 9, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 836, column: 2)
!3920 = !DILocation(line: 836, column: 7, scope: !3919)
!3921 = !DILocation(line: 836, column: 14, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 836, column: 2)
!3923 = !DILocation(line: 836, column: 16, scope: !3922)
!3924 = !DILocation(line: 836, column: 2, scope: !3919)
!3925 = !DILocalVariable(name: "__x", scope: !3926, file: !3, line: 837, type: !247)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 837, column: 15)
!3927 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 836, column: 50)
!3928 = !DILocation(line: 837, column: 15, scope: !3926)
!3929 = !DILocation(line: 837, column: 13, scope: !3927)
!3930 = !DILocation(line: 839, column: 7, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 839, column: 7)
!3932 = !DILocation(line: 839, column: 19, scope: !3931)
!3933 = !DILocation(line: 839, column: 17, scope: !3931)
!3934 = !DILocation(line: 839, column: 7, scope: !3927)
!3935 = !DILocation(line: 840, column: 21, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 839, column: 35)
!3937 = !DILocation(line: 840, column: 19, scope: !3936)
!3938 = !DILocation(line: 841, column: 17, scope: !3936)
!3939 = !DILocation(line: 841, column: 15, scope: !3936)
!3940 = !DILocation(line: 842, column: 3, scope: !3936)
!3941 = !DILocation(line: 843, column: 2, scope: !3927)
!3942 = !DILocation(line: 836, column: 46, scope: !3922)
!3943 = !DILocation(line: 836, column: 2, scope: !3922)
!3944 = distinct !{!3944, !3924, !3945}
!3945 = !DILocation(line: 843, column: 2, scope: !3919)
!3946 = !DILocation(line: 845, column: 15, scope: !3896)
!3947 = !DILocation(line: 845, column: 21, scope: !3896)
!3948 = !DILocation(line: 845, column: 36, scope: !3896)
!3949 = !DILocation(line: 845, column: 3, scope: !3896)
!3950 = !DILocation(line: 845, column: 13, scope: !3896)
!3951 = !DILocation(line: 846, column: 9, scope: !3896)
!3952 = !DILocation(line: 846, column: 15, scope: !3896)
!3953 = !DILocation(line: 846, column: 25, scope: !3896)
!3954 = !DILocation(line: 846, column: 2, scope: !3896)
!3955 = !DILocation(line: 847, column: 1, scope: !3896)
!3956 = distinct !DISubprogram(name: "power_supply_batinfo_ocv2cap", scope: !3, file: !3, line: 850, type: !3957, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!247, !3153, !247, !247}
!3959 = !DILocalVariable(name: "info", arg: 1, scope: !3956, file: !3, line: 850, type: !3153)
!3960 = !DILocation(line: 850, column: 68, scope: !3956)
!3961 = !DILocalVariable(name: "ocv", arg: 2, scope: !3956, file: !3, line: 851, type: !247)
!3962 = !DILocation(line: 851, column: 10, scope: !3956)
!3963 = !DILocalVariable(name: "temp", arg: 3, scope: !3956, file: !3, line: 851, type: !247)
!3964 = !DILocation(line: 851, column: 19, scope: !3956)
!3965 = !DILocalVariable(name: "table", scope: !3956, file: !3, line: 853, type: !3179)
!3966 = !DILocation(line: 853, column: 41, scope: !3956)
!3967 = !DILocalVariable(name: "table_len", scope: !3956, file: !3, line: 854, type: !247)
!3968 = !DILocation(line: 854, column: 6, scope: !3956)
!3969 = !DILocation(line: 856, column: 42, scope: !3956)
!3970 = !DILocation(line: 856, column: 48, scope: !3956)
!3971 = !DILocation(line: 856, column: 10, scope: !3956)
!3972 = !DILocation(line: 856, column: 8, scope: !3956)
!3973 = !DILocation(line: 857, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 857, column: 6)
!3975 = !DILocation(line: 857, column: 6, scope: !3956)
!3976 = !DILocation(line: 858, column: 3, scope: !3974)
!3977 = !DILocation(line: 860, column: 37, scope: !3956)
!3978 = !DILocation(line: 860, column: 44, scope: !3956)
!3979 = !DILocation(line: 860, column: 55, scope: !3956)
!3980 = !DILocation(line: 860, column: 9, scope: !3956)
!3981 = !DILocation(line: 860, column: 2, scope: !3956)
!3982 = !DILocation(line: 861, column: 1, scope: !3956)
!3983 = distinct !DISubprogram(name: "power_supply_get_property", scope: !3, file: !3, line: 864, type: !2245, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!3984 = !DILocation(line: 23, column: 61, scope: !2805, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 28, column: 9, scope: !2813, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 868, column: 6, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 868, column: 6)
!3988 = !DILocation(line: 69, column: 73, scope: !2818, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 27, column: 2, scope: !2813, inlinedAt: !3986)
!3990 = !DILocation(line: 69, column: 83, scope: !2818, inlinedAt: !3989)
!3991 = !DILocation(line: 25, column: 29, scope: !2813, inlinedAt: !3986)
!3992 = !DILocalVariable(name: "psy", arg: 1, scope: !3983, file: !3, line: 864, type: !2225)
!3993 = !DILocation(line: 864, column: 52, scope: !3983)
!3994 = !DILocalVariable(name: "psp", arg: 2, scope: !3983, file: !3, line: 865, type: !34)
!3995 = !DILocation(line: 865, column: 35, scope: !3983)
!3996 = !DILocalVariable(name: "val", arg: 3, scope: !3983, file: !3, line: 866, type: !2247)
!3997 = !DILocation(line: 866, column: 36, scope: !3983)
!3998 = !DILocation(line: 868, column: 19, scope: !3987)
!3999 = !DILocation(line: 868, column: 24, scope: !3987)
!4000 = !DILocation(line: 27, column: 25, scope: !2813, inlinedAt: !3986)
!4001 = !DILocation(line: 71, column: 19, scope: !2818, inlinedAt: !3989)
!4002 = !DILocation(line: 71, column: 22, scope: !2818, inlinedAt: !3989)
!4003 = !DILocation(line: 71, column: 2, scope: !2818, inlinedAt: !3989)
!4004 = !DILocation(line: 72, column: 2, scope: !2818, inlinedAt: !3989)
!4005 = !DILocation(line: 28, column: 26, scope: !2813, inlinedAt: !3986)
!4006 = !DILocation(line: 29, column: 9, scope: !2805, inlinedAt: !3985)
!4007 = !DILocation(line: 868, column: 33, scope: !3987)
!4008 = !DILocation(line: 868, column: 6, scope: !3983)
!4009 = !DILocation(line: 869, column: 8, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 869, column: 7)
!4011 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 868, column: 39)
!4012 = !DILocation(line: 869, column: 13, scope: !4010)
!4013 = !DILocation(line: 869, column: 7, scope: !4011)
!4014 = !DILocation(line: 870, column: 4, scope: !4010)
!4015 = !DILocation(line: 871, column: 3, scope: !4011)
!4016 = !DILocation(line: 874, column: 9, scope: !3983)
!4017 = !DILocation(line: 874, column: 14, scope: !3983)
!4018 = !DILocation(line: 874, column: 20, scope: !3983)
!4019 = !DILocation(line: 874, column: 33, scope: !3983)
!4020 = !DILocation(line: 874, column: 38, scope: !3983)
!4021 = !DILocation(line: 874, column: 43, scope: !3983)
!4022 = !DILocation(line: 874, column: 2, scope: !3983)
!4023 = !DILocation(line: 875, column: 1, scope: !3983)
!4024 = distinct !DISubprogram(name: "power_supply_set_property", scope: !3, file: !3, line: 878, type: !2254, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4025 = !DILocation(line: 23, column: 61, scope: !2805, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 28, column: 9, scope: !2813, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 882, column: 6, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 882, column: 6)
!4029 = !DILocation(line: 69, column: 73, scope: !2818, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 27, column: 2, scope: !2813, inlinedAt: !4027)
!4031 = !DILocation(line: 69, column: 83, scope: !2818, inlinedAt: !4030)
!4032 = !DILocation(line: 25, column: 29, scope: !2813, inlinedAt: !4027)
!4033 = !DILocalVariable(name: "psy", arg: 1, scope: !4024, file: !3, line: 878, type: !2225)
!4034 = !DILocation(line: 878, column: 52, scope: !4024)
!4035 = !DILocalVariable(name: "psp", arg: 2, scope: !4024, file: !3, line: 879, type: !34)
!4036 = !DILocation(line: 879, column: 35, scope: !4024)
!4037 = !DILocalVariable(name: "val", arg: 3, scope: !4024, file: !3, line: 880, type: !2256)
!4038 = !DILocation(line: 880, column: 42, scope: !4024)
!4039 = !DILocation(line: 882, column: 19, scope: !4028)
!4040 = !DILocation(line: 882, column: 24, scope: !4028)
!4041 = !DILocation(line: 27, column: 25, scope: !2813, inlinedAt: !4027)
!4042 = !DILocation(line: 71, column: 19, scope: !2818, inlinedAt: !4030)
!4043 = !DILocation(line: 71, column: 22, scope: !2818, inlinedAt: !4030)
!4044 = !DILocation(line: 71, column: 2, scope: !2818, inlinedAt: !4030)
!4045 = !DILocation(line: 72, column: 2, scope: !2818, inlinedAt: !4030)
!4046 = !DILocation(line: 28, column: 26, scope: !2813, inlinedAt: !4027)
!4047 = !DILocation(line: 29, column: 9, scope: !2805, inlinedAt: !4026)
!4048 = !DILocation(line: 882, column: 33, scope: !4028)
!4049 = !DILocation(line: 882, column: 38, scope: !4028)
!4050 = !DILocation(line: 882, column: 42, scope: !4028)
!4051 = !DILocation(line: 882, column: 47, scope: !4028)
!4052 = !DILocation(line: 882, column: 53, scope: !4028)
!4053 = !DILocation(line: 882, column: 6, scope: !4024)
!4054 = !DILocation(line: 883, column: 3, scope: !4028)
!4055 = !DILocation(line: 885, column: 9, scope: !4024)
!4056 = !DILocation(line: 885, column: 14, scope: !4024)
!4057 = !DILocation(line: 885, column: 20, scope: !4024)
!4058 = !DILocation(line: 885, column: 33, scope: !4024)
!4059 = !DILocation(line: 885, column: 38, scope: !4024)
!4060 = !DILocation(line: 885, column: 43, scope: !4024)
!4061 = !DILocation(line: 885, column: 2, scope: !4024)
!4062 = !DILocation(line: 886, column: 1, scope: !4024)
!4063 = distinct !DISubprogram(name: "power_supply_property_is_writeable", scope: !3, file: !3, line: 889, type: !2260, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4064 = !DILocation(line: 23, column: 61, scope: !2805, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 28, column: 9, scope: !2813, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 892, column: 6, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 892, column: 6)
!4068 = !DILocation(line: 69, column: 73, scope: !2818, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 27, column: 2, scope: !2813, inlinedAt: !4066)
!4070 = !DILocation(line: 69, column: 83, scope: !2818, inlinedAt: !4069)
!4071 = !DILocation(line: 25, column: 29, scope: !2813, inlinedAt: !4066)
!4072 = !DILocalVariable(name: "psy", arg: 1, scope: !4063, file: !3, line: 889, type: !2225)
!4073 = !DILocation(line: 889, column: 61, scope: !4063)
!4074 = !DILocalVariable(name: "psp", arg: 2, scope: !4063, file: !3, line: 890, type: !34)
!4075 = !DILocation(line: 890, column: 33, scope: !4063)
!4076 = !DILocation(line: 892, column: 19, scope: !4067)
!4077 = !DILocation(line: 892, column: 24, scope: !4067)
!4078 = !DILocation(line: 27, column: 25, scope: !2813, inlinedAt: !4066)
!4079 = !DILocation(line: 71, column: 19, scope: !2818, inlinedAt: !4069)
!4080 = !DILocation(line: 71, column: 22, scope: !2818, inlinedAt: !4069)
!4081 = !DILocation(line: 71, column: 2, scope: !2818, inlinedAt: !4069)
!4082 = !DILocation(line: 72, column: 2, scope: !2818, inlinedAt: !4069)
!4083 = !DILocation(line: 28, column: 26, scope: !2813, inlinedAt: !4066)
!4084 = !DILocation(line: 29, column: 9, scope: !2805, inlinedAt: !4065)
!4085 = !DILocation(line: 892, column: 33, scope: !4067)
!4086 = !DILocation(line: 892, column: 38, scope: !4067)
!4087 = !DILocation(line: 893, column: 5, scope: !4067)
!4088 = !DILocation(line: 893, column: 10, scope: !4067)
!4089 = !DILocation(line: 893, column: 16, scope: !4067)
!4090 = !DILocation(line: 892, column: 6, scope: !4063)
!4091 = !DILocation(line: 894, column: 3, scope: !4067)
!4092 = !DILocation(line: 896, column: 9, scope: !4063)
!4093 = !DILocation(line: 896, column: 14, scope: !4063)
!4094 = !DILocation(line: 896, column: 20, scope: !4063)
!4095 = !DILocation(line: 896, column: 42, scope: !4063)
!4096 = !DILocation(line: 896, column: 47, scope: !4063)
!4097 = !DILocation(line: 896, column: 2, scope: !4063)
!4098 = !DILocation(line: 897, column: 1, scope: !4063)
!4099 = distinct !DISubprogram(name: "power_supply_external_power_changed", scope: !3, file: !3, line: 900, type: !2264, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4100 = !DILocation(line: 23, column: 61, scope: !2805, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 28, column: 9, scope: !2813, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 902, column: 6, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 902, column: 6)
!4104 = !DILocation(line: 69, column: 73, scope: !2818, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 27, column: 2, scope: !2813, inlinedAt: !4102)
!4106 = !DILocation(line: 69, column: 83, scope: !2818, inlinedAt: !4105)
!4107 = !DILocation(line: 25, column: 29, scope: !2813, inlinedAt: !4102)
!4108 = !DILocalVariable(name: "psy", arg: 1, scope: !4099, file: !3, line: 900, type: !2225)
!4109 = !DILocation(line: 900, column: 63, scope: !4099)
!4110 = !DILocation(line: 902, column: 19, scope: !4103)
!4111 = !DILocation(line: 902, column: 24, scope: !4103)
!4112 = !DILocation(line: 27, column: 25, scope: !2813, inlinedAt: !4102)
!4113 = !DILocation(line: 71, column: 19, scope: !2818, inlinedAt: !4105)
!4114 = !DILocation(line: 71, column: 22, scope: !2818, inlinedAt: !4105)
!4115 = !DILocation(line: 71, column: 2, scope: !2818, inlinedAt: !4105)
!4116 = !DILocation(line: 72, column: 2, scope: !2818, inlinedAt: !4105)
!4117 = !DILocation(line: 28, column: 26, scope: !2813, inlinedAt: !4102)
!4118 = !DILocation(line: 29, column: 9, scope: !2805, inlinedAt: !4101)
!4119 = !DILocation(line: 902, column: 33, scope: !4103)
!4120 = !DILocation(line: 902, column: 38, scope: !4103)
!4121 = !DILocation(line: 903, column: 5, scope: !4103)
!4122 = !DILocation(line: 903, column: 10, scope: !4103)
!4123 = !DILocation(line: 903, column: 16, scope: !4103)
!4124 = !DILocation(line: 902, column: 6, scope: !4099)
!4125 = !DILocation(line: 904, column: 3, scope: !4103)
!4126 = !DILocation(line: 906, column: 2, scope: !4099)
!4127 = !DILocation(line: 906, column: 7, scope: !4099)
!4128 = !DILocation(line: 906, column: 13, scope: !4099)
!4129 = !DILocation(line: 906, column: 36, scope: !4099)
!4130 = !DILocation(line: 907, column: 1, scope: !4099)
!4131 = distinct !DISubprogram(name: "power_supply_powers", scope: !3, file: !3, line: 910, type: !4132, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!247, !2225, !1788}
!4134 = !DILocalVariable(name: "psy", arg: 1, scope: !4131, file: !3, line: 910, type: !2225)
!4135 = !DILocation(line: 910, column: 46, scope: !4131)
!4136 = !DILocalVariable(name: "dev", arg: 2, scope: !4131, file: !3, line: 910, type: !1788)
!4137 = !DILocation(line: 910, column: 66, scope: !4131)
!4138 = !DILocation(line: 912, column: 28, scope: !4131)
!4139 = !DILocation(line: 912, column: 33, scope: !4131)
!4140 = !DILocation(line: 912, column: 37, scope: !4131)
!4141 = !DILocation(line: 912, column: 44, scope: !4131)
!4142 = !DILocation(line: 912, column: 49, scope: !4131)
!4143 = !DILocation(line: 912, column: 9, scope: !4131)
!4144 = !DILocation(line: 912, column: 2, scope: !4131)
!4145 = distinct !DISubprogram(name: "power_supply_reg_notifier", scope: !3, file: !3, line: 923, type: !4146, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!247, !2507}
!4148 = !DILocalVariable(name: "nb", arg: 1, scope: !4145, file: !3, line: 923, type: !2507)
!4149 = !DILocation(line: 923, column: 54, scope: !4145)
!4150 = !DILocation(line: 925, column: 64, scope: !4145)
!4151 = !DILocation(line: 925, column: 9, scope: !4145)
!4152 = !DILocation(line: 925, column: 2, scope: !4145)
!4153 = distinct !DISubprogram(name: "power_supply_unreg_notifier", scope: !3, file: !3, line: 929, type: !4154, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !2507}
!4156 = !DILocalVariable(name: "nb", arg: 1, scope: !4153, file: !3, line: 929, type: !2507)
!4157 = !DILocation(line: 929, column: 57, scope: !4153)
!4158 = !DILocation(line: 931, column: 59, scope: !4153)
!4159 = !DILocation(line: 931, column: 2, scope: !4153)
!4160 = !DILocation(line: 932, column: 1, scope: !4153)
!4161 = distinct !DISubprogram(name: "power_supply_register", scope: !3, file: !3, line: 1223, type: !4162, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!2225, !1788, !2229, !4164}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4166)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_config", file: !6, line: 218, size: 384, elements: !4167)
!4167 = !{!4168, !4169, !4170, !4171, !4172, !4173}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4166, file: !6, line: 219, baseType: !257, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4166, file: !6, line: 220, baseType: !275, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !4166, file: !6, line: 223, baseType: !256, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "attr_grp", scope: !4166, file: !6, line: 226, baseType: !418, size: 64, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !4166, file: !6, line: 228, baseType: !2270, size: 64, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !4166, file: !6, line: 229, baseType: !412, size: 64, offset: 320)
!4174 = !DILocalVariable(name: "parent", arg: 1, scope: !4161, file: !3, line: 1223, type: !1788)
!4175 = !DILocation(line: 1223, column: 72, scope: !4161)
!4176 = !DILocalVariable(name: "desc", arg: 2, scope: !4161, file: !3, line: 1224, type: !2229)
!4177 = !DILocation(line: 1224, column: 35, scope: !4161)
!4178 = !DILocalVariable(name: "cfg", arg: 3, scope: !4161, file: !3, line: 1225, type: !4164)
!4179 = !DILocation(line: 1225, column: 37, scope: !4161)
!4180 = !DILocation(line: 1227, column: 33, scope: !4161)
!4181 = !DILocation(line: 1227, column: 41, scope: !4161)
!4182 = !DILocation(line: 1227, column: 47, scope: !4161)
!4183 = !DILocation(line: 1227, column: 9, scope: !4161)
!4184 = !DILocation(line: 1227, column: 2, scope: !4161)
!4185 = distinct !DISubprogram(name: "__power_supply_register", scope: !3, file: !3, line: 1091, type: !4186, scopeLine: 1095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!2225, !1788, !2229, !4164, !293}
!4188 = !DILocalVariable(name: "m", arg: 1, scope: !4189, file: !4190, line: 363, type: !4193)
!4189 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4190, file: !4190, line: 363, type: !4191, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4190 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!252, !4193}
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4194 = !DILocation(line: 363, column: 74, scope: !4189, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 1189, column: 7, scope: !4185)
!4196 = !DILocation(line: 93, column: 55, scope: !2865, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 241, column: 2, scope: !2871, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 1184, column: 2, scope: !4185)
!4199 = !DILocation(line: 99, column: 79, scope: !2876, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 240, column: 2, scope: !2871, inlinedAt: !4198)
!4201 = !DILocation(line: 99, column: 89, scope: !2876, inlinedAt: !4200)
!4202 = !DILocation(line: 238, column: 22, scope: !2871, inlinedAt: !4198)
!4203 = !DILocation(line: 327, column: 67, scope: !2535, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 1150, column: 2, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1150, column: 2)
!4206 = !DILocalVariable(name: "parent", arg: 1, scope: !4185, file: !3, line: 1091, type: !1788)
!4207 = !DILocation(line: 1091, column: 40, scope: !4185)
!4208 = !DILocalVariable(name: "desc", arg: 2, scope: !4185, file: !3, line: 1092, type: !2229)
!4209 = !DILocation(line: 1092, column: 40, scope: !4185)
!4210 = !DILocalVariable(name: "cfg", arg: 3, scope: !4185, file: !3, line: 1093, type: !4164)
!4211 = !DILocation(line: 1093, column: 42, scope: !4185)
!4212 = !DILocalVariable(name: "ws", arg: 4, scope: !4185, file: !3, line: 1094, type: !293)
!4213 = !DILocation(line: 1094, column: 13, scope: !4185)
!4214 = !DILocalVariable(name: "dev", scope: !4185, file: !3, line: 1096, type: !1788)
!4215 = !DILocation(line: 1096, column: 17, scope: !4185)
!4216 = !DILocalVariable(name: "psy", scope: !4185, file: !3, line: 1097, type: !2225)
!4217 = !DILocation(line: 1097, column: 23, scope: !4185)
!4218 = !DILocalVariable(name: "i", scope: !4185, file: !3, line: 1098, type: !247)
!4219 = !DILocation(line: 1098, column: 6, scope: !4185)
!4220 = !DILocalVariable(name: "rc", scope: !4185, file: !3, line: 1098, type: !247)
!4221 = !DILocation(line: 1098, column: 9, scope: !4185)
!4222 = !DILocation(line: 1100, column: 7, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1100, column: 6)
!4224 = !DILocation(line: 1100, column: 6, scope: !4185)
!4225 = !DILocation(line: 1101, column: 3, scope: !4223)
!4226 = !DILocation(line: 1104, column: 7, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1104, column: 6)
!4228 = !DILocation(line: 1104, column: 12, scope: !4227)
!4229 = !DILocation(line: 1104, column: 16, scope: !4227)
!4230 = !DILocation(line: 1104, column: 22, scope: !4227)
!4231 = !DILocation(line: 1104, column: 27, scope: !4227)
!4232 = !DILocation(line: 1104, column: 31, scope: !4227)
!4233 = !DILocation(line: 1104, column: 37, scope: !4227)
!4234 = !DILocation(line: 1104, column: 48, scope: !4227)
!4235 = !DILocation(line: 1104, column: 52, scope: !4227)
!4236 = !DILocation(line: 1104, column: 58, scope: !4227)
!4237 = !DILocation(line: 1104, column: 6, scope: !4185)
!4238 = !DILocation(line: 1105, column: 10, scope: !4227)
!4239 = !DILocation(line: 1105, column: 3, scope: !4227)
!4240 = !DILocation(line: 1107, column: 9, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1107, column: 2)
!4242 = !DILocation(line: 1107, column: 7, scope: !4241)
!4243 = !DILocation(line: 1107, column: 14, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 1107, column: 2)
!4245 = !DILocation(line: 1107, column: 18, scope: !4244)
!4246 = !DILocation(line: 1107, column: 24, scope: !4244)
!4247 = !DILocation(line: 1107, column: 16, scope: !4244)
!4248 = !DILocation(line: 1107, column: 2, scope: !4241)
!4249 = !DILocation(line: 1108, column: 8, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 1108, column: 7)
!4251 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 1107, column: 45)
!4252 = !DILocation(line: 1108, column: 14, scope: !4250)
!4253 = !DILocation(line: 1108, column: 25, scope: !4250)
!4254 = !DILocation(line: 1108, column: 28, scope: !4250)
!4255 = !DILocation(line: 1108, column: 59, scope: !4250)
!4256 = !DILocation(line: 1109, column: 9, scope: !4250)
!4257 = !DILocation(line: 1109, column: 15, scope: !4250)
!4258 = !DILocation(line: 1109, column: 25, scope: !4250)
!4259 = !DILocation(line: 1109, column: 29, scope: !4250)
!4260 = !DILocation(line: 1109, column: 35, scope: !4250)
!4261 = !DILocation(line: 1108, column: 7, scope: !4251)
!4262 = !DILocation(line: 1110, column: 11, scope: !4250)
!4263 = !DILocation(line: 1110, column: 4, scope: !4250)
!4264 = !DILocation(line: 1111, column: 2, scope: !4251)
!4265 = !DILocation(line: 1107, column: 40, scope: !4244)
!4266 = !DILocation(line: 1107, column: 2, scope: !4244)
!4267 = distinct !{!4267, !4248, !4268}
!4268 = !DILocation(line: 1111, column: 2, scope: !4241)
!4269 = !DILocation(line: 1113, column: 8, scope: !4185)
!4270 = !DILocation(line: 1113, column: 6, scope: !4185)
!4271 = !DILocation(line: 1114, column: 7, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1114, column: 6)
!4273 = !DILocation(line: 1114, column: 6, scope: !4185)
!4274 = !DILocation(line: 1115, column: 10, scope: !4272)
!4275 = !DILocation(line: 1115, column: 3, scope: !4272)
!4276 = !DILocation(line: 1117, column: 9, scope: !4185)
!4277 = !DILocation(line: 1117, column: 14, scope: !4185)
!4278 = !DILocation(line: 1117, column: 6, scope: !4185)
!4279 = !DILocation(line: 1119, column: 20, scope: !4185)
!4280 = !DILocation(line: 1119, column: 2, scope: !4185)
!4281 = !DILocation(line: 1121, column: 15, scope: !4185)
!4282 = !DILocation(line: 1121, column: 2, scope: !4185)
!4283 = !DILocation(line: 1121, column: 7, scope: !4185)
!4284 = !DILocation(line: 1121, column: 13, scope: !4185)
!4285 = !DILocation(line: 1122, column: 2, scope: !4185)
!4286 = !DILocation(line: 1122, column: 7, scope: !4185)
!4287 = !DILocation(line: 1122, column: 12, scope: !4185)
!4288 = !DILocation(line: 1123, column: 16, scope: !4185)
!4289 = !DILocation(line: 1123, column: 2, scope: !4185)
!4290 = !DILocation(line: 1123, column: 7, scope: !4185)
!4291 = !DILocation(line: 1123, column: 14, scope: !4185)
!4292 = !DILocation(line: 1124, column: 2, scope: !4185)
!4293 = !DILocation(line: 1124, column: 7, scope: !4185)
!4294 = !DILocation(line: 1124, column: 15, scope: !4185)
!4295 = !DILocation(line: 1125, column: 18, scope: !4185)
!4296 = !DILocation(line: 1125, column: 23, scope: !4185)
!4297 = !DILocation(line: 1125, column: 2, scope: !4185)
!4298 = !DILocation(line: 1126, column: 14, scope: !4185)
!4299 = !DILocation(line: 1126, column: 2, scope: !4185)
!4300 = !DILocation(line: 1126, column: 7, scope: !4185)
!4301 = !DILocation(line: 1126, column: 12, scope: !4185)
!4302 = !DILocation(line: 1127, column: 6, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1127, column: 6)
!4304 = !DILocation(line: 1127, column: 6, scope: !4185)
!4305 = !DILocation(line: 1128, column: 17, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 1127, column: 11)
!4307 = !DILocation(line: 1128, column: 22, scope: !4306)
!4308 = !DILocation(line: 1128, column: 3, scope: !4306)
!4309 = !DILocation(line: 1128, column: 8, scope: !4306)
!4310 = !DILocation(line: 1128, column: 15, scope: !4306)
!4311 = !DILocation(line: 1129, column: 19, scope: !4306)
!4312 = !DILocation(line: 1129, column: 24, scope: !4306)
!4313 = !DILocation(line: 1129, column: 3, scope: !4306)
!4314 = !DILocation(line: 1129, column: 8, scope: !4306)
!4315 = !DILocation(line: 1129, column: 17, scope: !4306)
!4316 = !DILocation(line: 1131, column: 4, scope: !4306)
!4317 = !DILocation(line: 1131, column: 9, scope: !4306)
!4318 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !4319, file: !3, line: 1131, type: !4320)
!4319 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 1131, column: 18)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!4321 = !DILocation(line: 1131, column: 18, scope: !4319)
!4322 = !DILocalVariable(name: "__mptr", scope: !4323, file: !3, line: 1131, type: !256)
!4323 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 1131, column: 18)
!4324 = !DILocation(line: 1131, column: 18, scope: !4323)
!4325 = !DILocation(line: 1131, column: 18, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1131, column: 18)
!4327 = !DILocation(line: 1131, column: 44, scope: !4306)
!4328 = !DILocation(line: 1131, column: 49, scope: !4306)
!4329 = !DILocation(line: 1130, column: 3, scope: !4306)
!4330 = !DILocation(line: 1130, column: 8, scope: !4306)
!4331 = !DILocation(line: 1130, column: 16, scope: !4306)
!4332 = !DILocation(line: 1132, column: 22, scope: !4306)
!4333 = !DILocation(line: 1132, column: 27, scope: !4306)
!4334 = !DILocation(line: 1132, column: 3, scope: !4306)
!4335 = !DILocation(line: 1132, column: 8, scope: !4306)
!4336 = !DILocation(line: 1132, column: 20, scope: !4306)
!4337 = !DILocation(line: 1133, column: 26, scope: !4306)
!4338 = !DILocation(line: 1133, column: 31, scope: !4306)
!4339 = !DILocation(line: 1133, column: 3, scope: !4306)
!4340 = !DILocation(line: 1133, column: 8, scope: !4306)
!4341 = !DILocation(line: 1133, column: 24, scope: !4306)
!4342 = !DILocation(line: 1134, column: 2, scope: !4306)
!4343 = !DILocation(line: 1136, column: 20, scope: !4185)
!4344 = !DILocation(line: 1136, column: 31, scope: !4185)
!4345 = !DILocation(line: 1136, column: 37, scope: !4185)
!4346 = !DILocation(line: 1136, column: 7, scope: !4185)
!4347 = !DILocation(line: 1136, column: 5, scope: !4185)
!4348 = !DILocation(line: 1137, column: 6, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1137, column: 6)
!4350 = !DILocation(line: 1137, column: 6, scope: !4185)
!4351 = !DILocation(line: 1138, column: 3, scope: !4349)
!4352 = !DILocation(line: 1140, column: 2, scope: !4185)
!4353 = !DILocation(line: 1140, column: 2, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1140, column: 2)
!4355 = !DILocation(line: 1141, column: 2, scope: !4185)
!4356 = !DILocation(line: 1141, column: 2, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1141, column: 2)
!4358 = !DILocation(line: 1141, column: 2, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1141, column: 2)
!4360 = !DILocation(line: 1144, column: 35, scope: !4185)
!4361 = !DILocation(line: 1144, column: 7, scope: !4185)
!4362 = !DILocation(line: 1144, column: 5, scope: !4185)
!4363 = !DILocation(line: 1145, column: 6, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1145, column: 6)
!4365 = !DILocation(line: 1145, column: 6, scope: !4185)
!4366 = !DILocation(line: 1146, column: 3, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 1145, column: 10)
!4368 = !DILocation(line: 1147, column: 3, scope: !4367)
!4369 = !DILocation(line: 1150, column: 2, scope: !4185)
!4370 = !DILocation(line: 1150, column: 2, scope: !4205)
!4371 = !DILocation(line: 329, column: 10, scope: !2535, inlinedAt: !4204)
!4372 = !DILocation(line: 329, column: 16, scope: !2535, inlinedAt: !4204)
!4373 = !DILocation(line: 1151, column: 18, scope: !4185)
!4374 = !DILocation(line: 1151, column: 7, scope: !4185)
!4375 = !DILocation(line: 1151, column: 5, scope: !4185)
!4376 = !DILocation(line: 1152, column: 6, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1152, column: 6)
!4378 = !DILocation(line: 1152, column: 6, scope: !4185)
!4379 = !DILocation(line: 1153, column: 3, scope: !4377)
!4380 = !DILocation(line: 1155, column: 26, scope: !4185)
!4381 = !DILocation(line: 1155, column: 31, scope: !4185)
!4382 = !DILocation(line: 1155, column: 7, scope: !4185)
!4383 = !DILocation(line: 1155, column: 5, scope: !4185)
!4384 = !DILocation(line: 1156, column: 6, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1156, column: 6)
!4386 = !DILocation(line: 1156, column: 6, scope: !4185)
!4387 = !DILocation(line: 1157, column: 3, scope: !4385)
!4388 = !DILocation(line: 1159, column: 28, scope: !4185)
!4389 = !DILocation(line: 1159, column: 7, scope: !4185)
!4390 = !DILocation(line: 1159, column: 5, scope: !4185)
!4391 = !DILocation(line: 1160, column: 6, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1160, column: 6)
!4393 = !DILocation(line: 1160, column: 6, scope: !4185)
!4394 = !DILocation(line: 1161, column: 3, scope: !4392)
!4395 = !DILocation(line: 1163, column: 27, scope: !4185)
!4396 = !DILocation(line: 1163, column: 7, scope: !4185)
!4397 = !DILocation(line: 1163, column: 5, scope: !4185)
!4398 = !DILocation(line: 1164, column: 6, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1164, column: 6)
!4400 = !DILocation(line: 1164, column: 6, scope: !4185)
!4401 = !DILocation(line: 1165, column: 3, scope: !4399)
!4402 = !DILocation(line: 1167, column: 36, scope: !4185)
!4403 = !DILocation(line: 1167, column: 7, scope: !4185)
!4404 = !DILocation(line: 1167, column: 5, scope: !4185)
!4405 = !DILocation(line: 1168, column: 6, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1168, column: 6)
!4407 = !DILocation(line: 1168, column: 6, scope: !4185)
!4408 = !DILocation(line: 1169, column: 3, scope: !4406)
!4409 = !DILocation(line: 1171, column: 36, scope: !4185)
!4410 = !DILocation(line: 1171, column: 7, scope: !4185)
!4411 = !DILocation(line: 1171, column: 5, scope: !4185)
!4412 = !DILocation(line: 1172, column: 6, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 1172, column: 6)
!4414 = !DILocation(line: 1172, column: 6, scope: !4185)
!4415 = !DILocation(line: 1173, column: 3, scope: !4413)
!4416 = !DILocation(line: 1184, column: 14, scope: !4185)
!4417 = !DILocation(line: 1184, column: 19, scope: !4185)
!4418 = !DILocation(line: 240, column: 31, scope: !2871, inlinedAt: !4198)
!4419 = !DILocation(line: 101, column: 20, scope: !2876, inlinedAt: !4200)
!4420 = !DILocation(line: 101, column: 23, scope: !2876, inlinedAt: !4200)
!4421 = !DILocation(line: 101, column: 2, scope: !2876, inlinedAt: !4200)
!4422 = !DILocation(line: 102, column: 2, scope: !2876, inlinedAt: !4200)
!4423 = !DILocation(line: 241, column: 18, scope: !2871, inlinedAt: !4198)
!4424 = !DILocation(line: 96, column: 16, scope: !2865, inlinedAt: !4197)
!4425 = !DILocation(line: 96, column: 19, scope: !2865, inlinedAt: !4197)
!4426 = !DILocation(line: 95, column: 2, scope: !2865, inlinedAt: !4197)
!4427 = !DILocation(line: 1185, column: 2, scope: !4185)
!4428 = !DILocation(line: 1185, column: 7, scope: !4185)
!4429 = !DILocation(line: 1185, column: 19, scope: !4185)
!4430 = !DILocation(line: 1187, column: 21, scope: !4185)
!4431 = !DILocation(line: 1188, column: 8, scope: !4185)
!4432 = !DILocation(line: 1188, column: 13, scope: !4185)
!4433 = !DILocation(line: 365, column: 27, scope: !4434, inlinedAt: !4195)
!4434 = distinct !DILexicalBlock(scope: !4189, file: !4190, line: 365, column: 6)
!4435 = !DILocation(line: 365, column: 6, scope: !4434, inlinedAt: !4195)
!4436 = !DILocation(line: 365, column: 6, scope: !4189, inlinedAt: !4195)
!4437 = !DILocation(line: 366, column: 12, scope: !4438, inlinedAt: !4195)
!4438 = distinct !DILexicalBlock(scope: !4439, file: !4190, line: 366, column: 7)
!4439 = distinct !DILexicalBlock(scope: !4434, file: !4190, line: 365, column: 31)
!4440 = !DILocation(line: 366, column: 14, scope: !4438, inlinedAt: !4195)
!4441 = !DILocation(line: 366, column: 7, scope: !4439, inlinedAt: !4195)
!4442 = !DILocation(line: 367, column: 4, scope: !4438, inlinedAt: !4195)
!4443 = !DILocation(line: 368, column: 28, scope: !4439, inlinedAt: !4195)
!4444 = !DILocation(line: 368, column: 10, scope: !4439, inlinedAt: !4195)
!4445 = !DILocation(line: 368, column: 3, scope: !4439, inlinedAt: !4195)
!4446 = !DILocation(line: 370, column: 29, scope: !4447, inlinedAt: !4195)
!4447 = distinct !DILexicalBlock(scope: !4434, file: !4190, line: 369, column: 9)
!4448 = !DILocation(line: 370, column: 10, scope: !4447, inlinedAt: !4195)
!4449 = !DILocation(line: 370, column: 3, scope: !4447, inlinedAt: !4195)
!4450 = !DILocation(line: 372, column: 1, scope: !4189, inlinedAt: !4195)
!4451 = !DILocation(line: 1187, column: 2, scope: !4185)
!4452 = !DILocation(line: 1191, column: 9, scope: !4185)
!4453 = !DILocation(line: 1191, column: 2, scope: !4185)
!4454 = !DILabel(scope: !4185, name: "add_hwmon_sysfs_failed", file: !3, line: 1193)
!4455 = !DILocation(line: 1193, column: 1, scope: !4185)
!4456 = !DILocation(line: 1194, column: 31, scope: !4185)
!4457 = !DILocation(line: 1194, column: 2, scope: !4185)
!4458 = !DILabel(scope: !4185, name: "create_triggers_failed", file: !3, line: 1195)
!4459 = !DILocation(line: 1195, column: 1, scope: !4185)
!4460 = !DILocation(line: 1196, column: 24, scope: !4185)
!4461 = !DILocation(line: 1196, column: 2, scope: !4185)
!4462 = !DILabel(scope: !4185, name: "register_cooler_failed", file: !3, line: 1197)
!4463 = !DILocation(line: 1197, column: 1, scope: !4185)
!4464 = !DILocation(line: 1198, column: 25, scope: !4185)
!4465 = !DILocation(line: 1198, column: 2, scope: !4185)
!4466 = !DILabel(scope: !4185, name: "register_thermal_failed", file: !3, line: 1199)
!4467 = !DILocation(line: 1199, column: 1, scope: !4185)
!4468 = !DILocation(line: 1200, column: 13, scope: !4185)
!4469 = !DILocation(line: 1200, column: 2, scope: !4185)
!4470 = !DILabel(scope: !4185, name: "wakeup_init_failed", file: !3, line: 1201)
!4471 = !DILocation(line: 1201, column: 1, scope: !4185)
!4472 = !DILabel(scope: !4185, name: "device_add_failed", file: !3, line: 1202)
!4473 = !DILocation(line: 1202, column: 1, scope: !4185)
!4474 = !DILabel(scope: !4185, name: "check_supplies_failed", file: !3, line: 1203)
!4475 = !DILocation(line: 1203, column: 1, scope: !4185)
!4476 = !DILabel(scope: !4185, name: "dev_set_name_failed", file: !3, line: 1204)
!4477 = !DILocation(line: 1204, column: 1, scope: !4185)
!4478 = !DILocation(line: 1205, column: 13, scope: !4185)
!4479 = !DILocation(line: 1205, column: 2, scope: !4185)
!4480 = !DILocation(line: 1206, column: 17, scope: !4185)
!4481 = !DILocation(line: 1206, column: 9, scope: !4185)
!4482 = !DILocation(line: 1206, column: 2, scope: !4185)
!4483 = !DILocation(line: 1207, column: 1, scope: !4185)
!4484 = distinct !DISubprogram(name: "power_supply_register_no_ws", scope: !3, file: !3, line: 1246, type: !4162, scopeLine: 1249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4485 = !DILocalVariable(name: "parent", arg: 1, scope: !4484, file: !3, line: 1246, type: !1788)
!4486 = !DILocation(line: 1246, column: 44, scope: !4484)
!4487 = !DILocalVariable(name: "desc", arg: 2, scope: !4484, file: !3, line: 1247, type: !2229)
!4488 = !DILocation(line: 1247, column: 35, scope: !4484)
!4489 = !DILocalVariable(name: "cfg", arg: 3, scope: !4484, file: !3, line: 1248, type: !4164)
!4490 = !DILocation(line: 1248, column: 37, scope: !4484)
!4491 = !DILocation(line: 1250, column: 33, scope: !4484)
!4492 = !DILocation(line: 1250, column: 41, scope: !4484)
!4493 = !DILocation(line: 1250, column: 47, scope: !4484)
!4494 = !DILocation(line: 1250, column: 9, scope: !4484)
!4495 = !DILocation(line: 1250, column: 2, scope: !4484)
!4496 = distinct !DISubprogram(name: "devm_power_supply_register", scope: !3, file: !3, line: 1276, type: !4162, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4497 = !DILocalVariable(name: "parent", arg: 1, scope: !4496, file: !3, line: 1276, type: !1788)
!4498 = !DILocation(line: 1276, column: 43, scope: !4496)
!4499 = !DILocalVariable(name: "desc", arg: 2, scope: !4496, file: !3, line: 1277, type: !2229)
!4500 = !DILocation(line: 1277, column: 35, scope: !4496)
!4501 = !DILocalVariable(name: "cfg", arg: 3, scope: !4496, file: !3, line: 1278, type: !4164)
!4502 = !DILocation(line: 1278, column: 37, scope: !4496)
!4503 = !DILocalVariable(name: "ptr", scope: !4496, file: !3, line: 1280, type: !3071)
!4504 = !DILocation(line: 1280, column: 24, scope: !4496)
!4505 = !DILocalVariable(name: "psy", scope: !4496, file: !3, line: 1280, type: !2225)
!4506 = !DILocation(line: 1280, column: 30, scope: !4496)
!4507 = !DILocation(line: 1282, column: 8, scope: !4496)
!4508 = !DILocation(line: 1282, column: 6, scope: !4496)
!4509 = !DILocation(line: 1284, column: 7, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 1284, column: 6)
!4511 = !DILocation(line: 1284, column: 6, scope: !4496)
!4512 = !DILocation(line: 1285, column: 10, scope: !4510)
!4513 = !DILocation(line: 1285, column: 3, scope: !4510)
!4514 = !DILocation(line: 1286, column: 32, scope: !4496)
!4515 = !DILocation(line: 1286, column: 40, scope: !4496)
!4516 = !DILocation(line: 1286, column: 46, scope: !4496)
!4517 = !DILocation(line: 1286, column: 8, scope: !4496)
!4518 = !DILocation(line: 1286, column: 6, scope: !4496)
!4519 = !DILocation(line: 1287, column: 13, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 1287, column: 6)
!4521 = !DILocation(line: 1287, column: 6, scope: !4520)
!4522 = !DILocation(line: 1287, column: 6, scope: !4496)
!4523 = !DILocation(line: 1288, column: 15, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 1287, column: 19)
!4525 = !DILocation(line: 1288, column: 3, scope: !4524)
!4526 = !DILocation(line: 1289, column: 2, scope: !4524)
!4527 = !DILocation(line: 1290, column: 10, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 1289, column: 9)
!4529 = !DILocation(line: 1290, column: 4, scope: !4528)
!4530 = !DILocation(line: 1290, column: 8, scope: !4528)
!4531 = !DILocation(line: 1291, column: 14, scope: !4528)
!4532 = !DILocation(line: 1291, column: 22, scope: !4528)
!4533 = !DILocation(line: 1291, column: 3, scope: !4528)
!4534 = !DILocation(line: 1293, column: 9, scope: !4496)
!4535 = !DILocation(line: 1293, column: 2, scope: !4496)
!4536 = !DILocation(line: 1294, column: 1, scope: !4496)
!4537 = distinct !DISubprogram(name: "devm_power_supply_release", scope: !3, file: !3, line: 1254, type: !3116, scopeLine: 1255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4538 = !DILocalVariable(name: "dev", arg: 1, scope: !4537, file: !3, line: 1254, type: !1788)
!4539 = !DILocation(line: 1254, column: 54, scope: !4537)
!4540 = !DILocalVariable(name: "res", arg: 2, scope: !4537, file: !3, line: 1254, type: !256)
!4541 = !DILocation(line: 1254, column: 65, scope: !4537)
!4542 = !DILocalVariable(name: "psy", scope: !4537, file: !3, line: 1256, type: !3071)
!4543 = !DILocation(line: 1256, column: 24, scope: !4537)
!4544 = !DILocation(line: 1256, column: 30, scope: !4537)
!4545 = !DILocation(line: 1258, column: 27, scope: !4537)
!4546 = !DILocation(line: 1258, column: 26, scope: !4537)
!4547 = !DILocation(line: 1258, column: 2, scope: !4537)
!4548 = !DILocation(line: 1259, column: 1, scope: !4537)
!4549 = distinct !DISubprogram(name: "IS_ERR", scope: !3034, file: !3034, line: 34, type: !3142, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4550 = !DILocalVariable(name: "ptr", arg: 1, scope: !4549, file: !3034, line: 34, type: !301)
!4551 = !DILocation(line: 34, column: 60, scope: !4549)
!4552 = !DILocation(line: 36, column: 9, scope: !4549)
!4553 = !DILocation(line: 36, column: 2, scope: !4549)
!4554 = distinct !DISubprogram(name: "devm_power_supply_register_no_ws", scope: !3, file: !3, line: 1312, type: !4162, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4555 = !DILocalVariable(name: "parent", arg: 1, scope: !4554, file: !3, line: 1312, type: !1788)
!4556 = !DILocation(line: 1312, column: 49, scope: !4554)
!4557 = !DILocalVariable(name: "desc", arg: 2, scope: !4554, file: !3, line: 1313, type: !2229)
!4558 = !DILocation(line: 1313, column: 35, scope: !4554)
!4559 = !DILocalVariable(name: "cfg", arg: 3, scope: !4554, file: !3, line: 1314, type: !4164)
!4560 = !DILocation(line: 1314, column: 37, scope: !4554)
!4561 = !DILocalVariable(name: "ptr", scope: !4554, file: !3, line: 1316, type: !3071)
!4562 = !DILocation(line: 1316, column: 24, scope: !4554)
!4563 = !DILocalVariable(name: "psy", scope: !4554, file: !3, line: 1316, type: !2225)
!4564 = !DILocation(line: 1316, column: 30, scope: !4554)
!4565 = !DILocation(line: 1318, column: 8, scope: !4554)
!4566 = !DILocation(line: 1318, column: 6, scope: !4554)
!4567 = !DILocation(line: 1320, column: 7, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 1320, column: 6)
!4569 = !DILocation(line: 1320, column: 6, scope: !4554)
!4570 = !DILocation(line: 1321, column: 10, scope: !4568)
!4571 = !DILocation(line: 1321, column: 3, scope: !4568)
!4572 = !DILocation(line: 1322, column: 32, scope: !4554)
!4573 = !DILocation(line: 1322, column: 40, scope: !4554)
!4574 = !DILocation(line: 1322, column: 46, scope: !4554)
!4575 = !DILocation(line: 1322, column: 8, scope: !4554)
!4576 = !DILocation(line: 1322, column: 6, scope: !4554)
!4577 = !DILocation(line: 1323, column: 13, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 1323, column: 6)
!4579 = !DILocation(line: 1323, column: 6, scope: !4578)
!4580 = !DILocation(line: 1323, column: 6, scope: !4554)
!4581 = !DILocation(line: 1324, column: 15, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 1323, column: 19)
!4583 = !DILocation(line: 1324, column: 3, scope: !4582)
!4584 = !DILocation(line: 1325, column: 2, scope: !4582)
!4585 = !DILocation(line: 1326, column: 10, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 1325, column: 9)
!4587 = !DILocation(line: 1326, column: 4, scope: !4586)
!4588 = !DILocation(line: 1326, column: 8, scope: !4586)
!4589 = !DILocation(line: 1327, column: 14, scope: !4586)
!4590 = !DILocation(line: 1327, column: 22, scope: !4586)
!4591 = !DILocation(line: 1327, column: 3, scope: !4586)
!4592 = !DILocation(line: 1329, column: 9, scope: !4554)
!4593 = !DILocation(line: 1329, column: 2, scope: !4554)
!4594 = !DILocation(line: 1330, column: 1, scope: !4554)
!4595 = distinct !DISubprogram(name: "power_supply_unregister", scope: !3, file: !3, line: 1340, type: !2264, scopeLine: 1341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4596 = !DILocalVariable(name: "i", arg: 1, scope: !4597, file: !2806, line: 163, type: !247)
!4597 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !2806, file: !2806, line: 163, type: !4598, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!247, !247, !2868}
!4600 = !DILocation(line: 163, column: 55, scope: !4597, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 178, column: 9, scope: !4602, inlinedAt: !4603)
!4602 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !2806, file: !2806, line: 176, type: !4598, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4603 = distinct !DILocation(line: 457, column: 9, scope: !4604, inlinedAt: !4608)
!4604 = distinct !DISubprogram(name: "arch_atomic_dec_return", scope: !4605, file: !4605, line: 455, type: !4606, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4605 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!247, !2868}
!4608 = distinct !DILocation(line: 341, column: 9, scope: !4609, inlinedAt: !4610)
!4609 = distinct !DISubprogram(name: "atomic_dec_return", scope: !2814, file: !2814, line: 338, type: !4606, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4610 = distinct !DILocation(line: 1342, column: 2, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 1342, column: 2)
!4612 = !DILocalVariable(name: "v", arg: 2, scope: !4597, file: !2806, line: 163, type: !2868)
!4613 = !DILocation(line: 163, column: 68, scope: !4597, inlinedAt: !4601)
!4614 = !DILocalVariable(name: "__ret", scope: !4615, file: !2806, line: 165, type: !247)
!4615 = distinct !DILexicalBlock(scope: !4597, file: !2806, line: 165, column: 13)
!4616 = !DILocation(line: 165, column: 13, scope: !4615, inlinedAt: !4601)
!4617 = !DILocalVariable(name: "i", arg: 1, scope: !4602, file: !2806, line: 176, type: !247)
!4618 = !DILocation(line: 176, column: 55, scope: !4602, inlinedAt: !4603)
!4619 = !DILocalVariable(name: "v", arg: 2, scope: !4602, file: !2806, line: 176, type: !2868)
!4620 = !DILocation(line: 176, column: 68, scope: !4602, inlinedAt: !4603)
!4621 = !DILocalVariable(name: "v", arg: 1, scope: !4604, file: !4605, line: 455, type: !2868)
!4622 = !DILocation(line: 455, column: 34, scope: !4604, inlinedAt: !4608)
!4623 = !DILocation(line: 99, column: 79, scope: !2876, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 340, column: 2, scope: !4609, inlinedAt: !4610)
!4625 = !DILocation(line: 99, column: 89, scope: !2876, inlinedAt: !4624)
!4626 = !DILocalVariable(name: "v", arg: 1, scope: !4609, file: !2814, line: 338, type: !2868)
!4627 = !DILocation(line: 338, column: 29, scope: !4609, inlinedAt: !4610)
!4628 = !DILocalVariable(name: "psy", arg: 1, scope: !4595, file: !3, line: 1340, type: !2225)
!4629 = !DILocation(line: 1340, column: 51, scope: !4595)
!4630 = !DILocalVariable(name: "__ret_warn_on", scope: !4611, file: !3, line: 1342, type: !247)
!4631 = !DILocation(line: 1342, column: 2, scope: !4611)
!4632 = !DILocation(line: 340, column: 31, scope: !4609, inlinedAt: !4610)
!4633 = !DILocation(line: 101, column: 20, scope: !2876, inlinedAt: !4624)
!4634 = !DILocation(line: 101, column: 23, scope: !2876, inlinedAt: !4624)
!4635 = !DILocation(line: 101, column: 2, scope: !2876, inlinedAt: !4624)
!4636 = !DILocation(line: 102, column: 2, scope: !2876, inlinedAt: !4624)
!4637 = !DILocation(line: 341, column: 32, scope: !4609, inlinedAt: !4610)
!4638 = !DILocation(line: 457, column: 35, scope: !4604, inlinedAt: !4608)
!4639 = !DILocation(line: 178, column: 33, scope: !4602, inlinedAt: !4603)
!4640 = !DILocation(line: 178, column: 32, scope: !4602, inlinedAt: !4603)
!4641 = !DILocation(line: 178, column: 36, scope: !4602, inlinedAt: !4603)
!4642 = !DILocation(line: 165, column: 9, scope: !4597, inlinedAt: !4601)
!4643 = !{i32 -2146589494}
!4644 = !DILocation(line: 165, column: 11, scope: !4597, inlinedAt: !4601)
!4645 = !DILocation(line: 1342, column: 2, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 1342, column: 2)
!4647 = !DILocation(line: 1342, column: 2, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 1342, column: 2)
!4649 = !DILocation(line: 1342, column: 2, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 1342, column: 2)
!4651 = !DILocation(line: 1342, column: 2, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 1342, column: 2)
!4653 = !{i32 -2143318441, i32 -2143318412, i32 -2143318366, i32 -2143318308, i32 -2143318254, i32 -2143318200, i32 -2143318145, i32 -2143318114}
!4654 = !DILocation(line: 1342, column: 2, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 1342, column: 2)
!4656 = !{i32 -2143317691, i32 -2143317684, i32 -2143317632, i32 -2143317601, i32 -2143317571}
!4657 = !DILocation(line: 1342, column: 2, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 1342, column: 2)
!4659 = !DILocation(line: 1343, column: 2, scope: !4595)
!4660 = !DILocation(line: 1343, column: 7, scope: !4595)
!4661 = !DILocation(line: 1343, column: 16, scope: !4595)
!4662 = !DILocation(line: 1344, column: 20, scope: !4595)
!4663 = !DILocation(line: 1344, column: 25, scope: !4595)
!4664 = !DILocation(line: 1344, column: 2, scope: !4595)
!4665 = !DILocation(line: 1345, column: 28, scope: !4595)
!4666 = !DILocation(line: 1345, column: 33, scope: !4595)
!4667 = !DILocation(line: 1345, column: 2, scope: !4595)
!4668 = !DILocation(line: 1346, column: 21, scope: !4595)
!4669 = !DILocation(line: 1346, column: 26, scope: !4595)
!4670 = !DILocation(line: 1346, column: 30, scope: !4595)
!4671 = !DILocation(line: 1346, column: 2, scope: !4595)
!4672 = !DILocation(line: 1347, column: 34, scope: !4595)
!4673 = !DILocation(line: 1347, column: 2, scope: !4595)
!4674 = !DILocation(line: 1348, column: 31, scope: !4595)
!4675 = !DILocation(line: 1348, column: 2, scope: !4595)
!4676 = !DILocation(line: 1349, column: 24, scope: !4595)
!4677 = !DILocation(line: 1349, column: 2, scope: !4595)
!4678 = !DILocation(line: 1350, column: 25, scope: !4595)
!4679 = !DILocation(line: 1350, column: 2, scope: !4595)
!4680 = !DILocation(line: 1351, column: 22, scope: !4595)
!4681 = !DILocation(line: 1351, column: 27, scope: !4595)
!4682 = !DILocation(line: 1351, column: 2, scope: !4595)
!4683 = !DILocation(line: 1352, column: 21, scope: !4595)
!4684 = !DILocation(line: 1352, column: 26, scope: !4595)
!4685 = !DILocation(line: 1352, column: 2, scope: !4595)
!4686 = !DILocation(line: 1353, column: 1, scope: !4595)
!4687 = distinct !DISubprogram(name: "power_supply_remove_triggers", scope: !4688, file: !4688, line: 39, type: !2264, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4688 = !DIFile(filename: "drivers/power/supply/power_supply.h", directory: "/home/lizy2001/genbc/linux")
!4689 = !DILocalVariable(name: "psy", arg: 1, scope: !4687, file: !4688, line: 39, type: !2225)
!4690 = !DILocation(line: 39, column: 70, scope: !4687)
!4691 = !DILocation(line: 39, column: 76, scope: !4687)
!4692 = distinct !DISubprogram(name: "psy_unregister_cooler", scope: !3, file: !3, line: 1064, type: !2264, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4693 = !DILocalVariable(name: "psy", arg: 1, scope: !4692, file: !3, line: 1064, type: !2225)
!4694 = !DILocation(line: 1064, column: 56, scope: !4692)
!4695 = !DILocation(line: 1066, column: 21, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 1066, column: 6)
!4697 = !DILocation(line: 1066, column: 26, scope: !4696)
!4698 = !DILocation(line: 1066, column: 6, scope: !4696)
!4699 = !DILocation(line: 1066, column: 6, scope: !4692)
!4700 = !DILocation(line: 1067, column: 3, scope: !4696)
!4701 = !DILocation(line: 1068, column: 36, scope: !4692)
!4702 = !DILocation(line: 1068, column: 41, scope: !4692)
!4703 = !DILocation(line: 1068, column: 2, scope: !4692)
!4704 = !DILocation(line: 1069, column: 1, scope: !4692)
!4705 = distinct !DISubprogram(name: "psy_unregister_thermal", scope: !3, file: !3, line: 982, type: !2264, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4706 = !DILocalVariable(name: "psy", arg: 1, scope: !4705, file: !3, line: 982, type: !2225)
!4707 = !DILocation(line: 982, column: 57, scope: !4705)
!4708 = !DILocation(line: 984, column: 21, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 984, column: 6)
!4710 = !DILocation(line: 984, column: 26, scope: !4709)
!4711 = !DILocation(line: 984, column: 6, scope: !4709)
!4712 = !DILocation(line: 984, column: 6, scope: !4705)
!4713 = !DILocation(line: 985, column: 3, scope: !4709)
!4714 = !DILocation(line: 986, column: 33, scope: !4705)
!4715 = !DILocation(line: 986, column: 38, scope: !4705)
!4716 = !DILocation(line: 986, column: 2, scope: !4705)
!4717 = !DILocation(line: 987, column: 1, scope: !4705)
!4718 = distinct !DISubprogram(name: "power_supply_get_drvdata", scope: !3, file: !3, line: 1356, type: !4719, scopeLine: 1357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!256, !2225}
!4721 = !DILocalVariable(name: "psy", arg: 1, scope: !4718, file: !3, line: 1356, type: !2225)
!4722 = !DILocation(line: 1356, column: 53, scope: !4718)
!4723 = !DILocation(line: 1358, column: 9, scope: !4718)
!4724 = !DILocation(line: 1358, column: 14, scope: !4718)
!4725 = !DILocation(line: 1358, column: 2, scope: !4718)
!4726 = distinct !DISubprogram(name: "power_supply_class_exit", scope: !3, file: !3, line: 1375, type: !2467, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4727 = !DILocation(line: 1377, column: 16, scope: !4726)
!4728 = !DILocation(line: 1377, column: 2, scope: !4726)
!4729 = !DILocation(line: 1378, column: 1, scope: !4726)
!4730 = !DILocation(line: 1364, column: 23, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 1364, column: 23)
!4732 = !DILocation(line: 1364, column: 21, scope: !2499)
!4733 = !DILocation(line: 1366, column: 13, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 1366, column: 6)
!4735 = !DILocation(line: 1366, column: 6, scope: !4734)
!4736 = !DILocation(line: 1366, column: 6, scope: !2499)
!4737 = !DILocation(line: 1367, column: 18, scope: !4734)
!4738 = !DILocation(line: 1367, column: 10, scope: !4734)
!4739 = !DILocation(line: 1367, column: 3, scope: !4734)
!4740 = !DILocation(line: 1369, column: 2, scope: !2499)
!4741 = !DILocation(line: 1369, column: 22, scope: !2499)
!4742 = !DILocation(line: 1369, column: 33, scope: !2499)
!4743 = !DILocation(line: 1370, column: 2, scope: !2499)
!4744 = !DILocation(line: 1372, column: 2, scope: !2499)
!4745 = !DILocation(line: 1373, column: 1, scope: !2499)
!4746 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2603, file: !2603, line: 646, type: !2604, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4747 = !DILocalVariable(name: "__ret", scope: !4748, file: !2603, line: 648, type: !252)
!4748 = distinct !DILexicalBlock(scope: !4746, file: !2603, line: 648, column: 9)
!4749 = !DILocation(line: 648, column: 9, scope: !4748)
!4750 = !DILocalVariable(name: "__edi", scope: !4748, file: !2603, line: 648, type: !252)
!4751 = !DILocalVariable(name: "__esi", scope: !4748, file: !2603, line: 648, type: !252)
!4752 = !DILocalVariable(name: "__edx", scope: !4748, file: !2603, line: 648, type: !252)
!4753 = !DILocalVariable(name: "__ecx", scope: !4748, file: !2603, line: 648, type: !252)
!4754 = !DILocalVariable(name: "__eax", scope: !4748, file: !2603, line: 648, type: !252)
!4755 = !DILocation(line: 648, column: 9, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !2603, line: 648, column: 9)
!4757 = distinct !DILexicalBlock(scope: !4748, file: !2603, line: 648, column: 9)
!4758 = !{i32 -2145753709, i32 -2145751394, i32 -2145751160, i32 -2145751109, i32 -2145751081, i32 -2145751056, i32 -2145751372, i32 -2145751359, i32 -2145750921, i32 -2145750802, i32 -2145751267, i32 -2145751240, i32 -2145751212, i32 -2145751182}
!4759 = !DILocalVariable(name: "__mask", scope: !4760, file: !2603, line: 648, type: !252)
!4760 = distinct !DILexicalBlock(scope: !4756, file: !2603, line: 648, column: 9)
!4761 = !DILocation(line: 648, column: 9, scope: !4760)
!4762 = !DILocation(line: 648, column: 9, scope: !4757)
!4763 = !DILocation(line: 648, column: 2, scope: !4746)
!4764 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2603, file: !2603, line: 656, type: !2467, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4765 = !DILocalVariable(name: "__edi", scope: !4766, file: !2603, line: 658, type: !252)
!4766 = distinct !DILexicalBlock(scope: !4764, file: !2603, line: 658, column: 2)
!4767 = !DILocation(line: 658, column: 2, scope: !4766)
!4768 = !DILocalVariable(name: "__esi", scope: !4766, file: !2603, line: 658, type: !252)
!4769 = !DILocalVariable(name: "__edx", scope: !4766, file: !2603, line: 658, type: !252)
!4770 = !DILocalVariable(name: "__ecx", scope: !4766, file: !2603, line: 658, type: !252)
!4771 = !DILocalVariable(name: "__eax", scope: !4766, file: !2603, line: 658, type: !252)
!4772 = !{i32 -2145746615, i32 -2145745883, i32 -2145745649, i32 -2145745598, i32 -2145745570, i32 -2145745545, i32 -2145745861, i32 -2145745848, i32 -2145745410, i32 -2145745291, i32 -2145745756, i32 -2145745729, i32 -2145745701, i32 -2145745671}
!4773 = !DILocation(line: 659, column: 1, scope: !4764)
!4774 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2603, file: !2603, line: 651, type: !4775, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{null, !252}
!4777 = !DILocalVariable(name: "f", arg: 1, scope: !4774, file: !2603, line: 651, type: !252)
!4778 = !DILocation(line: 651, column: 65, scope: !4774)
!4779 = !DILocalVariable(name: "__edi", scope: !4780, file: !2603, line: 653, type: !252)
!4780 = distinct !DILexicalBlock(scope: !4774, file: !2603, line: 653, column: 2)
!4781 = !DILocation(line: 653, column: 2, scope: !4780)
!4782 = !DILocalVariable(name: "__esi", scope: !4780, file: !2603, line: 653, type: !252)
!4783 = !DILocalVariable(name: "__edx", scope: !4780, file: !2603, line: 653, type: !252)
!4784 = !DILocalVariable(name: "__ecx", scope: !4780, file: !2603, line: 653, type: !252)
!4785 = !DILocalVariable(name: "__eax", scope: !4780, file: !2603, line: 653, type: !252)
!4786 = !{i32 -2145749242, i32 -2145748492, i32 -2145748258, i32 -2145748207, i32 -2145748179, i32 -2145748154, i32 -2145748470, i32 -2145748457, i32 -2145748019, i32 -2145747900, i32 -2145748365, i32 -2145748338, i32 -2145748310, i32 -2145748280}
!4787 = !DILocation(line: 654, column: 1, scope: !4774)
!4788 = distinct !DISubprogram(name: "queue_work", scope: !191, file: !191, line: 504, type: !4789, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!293, !2284, !1538}
!4791 = !DILocalVariable(name: "wq", arg: 1, scope: !4788, file: !191, line: 504, type: !2284)
!4792 = !DILocation(line: 504, column: 56, scope: !4788)
!4793 = !DILocalVariable(name: "work", arg: 2, scope: !4788, file: !191, line: 505, type: !1538)
!4794 = !DILocation(line: 505, column: 30, scope: !4788)
!4795 = !DILocation(line: 507, column: 41, scope: !4788)
!4796 = !DILocation(line: 507, column: 45, scope: !4788)
!4797 = !DILocation(line: 507, column: 9, scope: !4788)
!4798 = !DILocation(line: 507, column: 2, scope: !4788)
!4799 = distinct !DISubprogram(name: "__power_supply_is_supplied_by", scope: !3, file: !3, line: 37, type: !4800, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!293, !2225, !2225}
!4802 = !DILocalVariable(name: "supplier", arg: 1, scope: !4799, file: !3, line: 37, type: !2225)
!4803 = !DILocation(line: 37, column: 64, scope: !4799)
!4804 = !DILocalVariable(name: "supply", arg: 2, scope: !4799, file: !3, line: 38, type: !2225)
!4805 = !DILocation(line: 38, column: 28, scope: !4799)
!4806 = !DILocalVariable(name: "i", scope: !4799, file: !3, line: 40, type: !247)
!4807 = !DILocation(line: 40, column: 6, scope: !4799)
!4808 = !DILocation(line: 42, column: 7, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 42, column: 6)
!4810 = !DILocation(line: 42, column: 15, scope: !4809)
!4811 = !DILocation(line: 42, column: 29, scope: !4809)
!4812 = !DILocation(line: 42, column: 33, scope: !4809)
!4813 = !DILocation(line: 42, column: 43, scope: !4809)
!4814 = !DILocation(line: 42, column: 6, scope: !4799)
!4815 = !DILocation(line: 43, column: 3, scope: !4809)
!4816 = !DILocation(line: 46, column: 6, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 46, column: 6)
!4818 = !DILocation(line: 46, column: 14, scope: !4817)
!4819 = !DILocation(line: 46, column: 6, scope: !4799)
!4820 = !DILocation(line: 47, column: 8, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 47, column: 7)
!4822 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 46, column: 29)
!4823 = !DILocation(line: 47, column: 18, scope: !4821)
!4824 = !DILocation(line: 47, column: 24, scope: !4821)
!4825 = !DILocation(line: 47, column: 7, scope: !4822)
!4826 = !DILocation(line: 48, column: 4, scope: !4821)
!4827 = !DILocation(line: 49, column: 10, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 49, column: 3)
!4829 = !DILocation(line: 49, column: 8, scope: !4828)
!4830 = !DILocation(line: 49, column: 15, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 49, column: 3)
!4832 = !DILocation(line: 49, column: 19, scope: !4831)
!4833 = !DILocation(line: 49, column: 27, scope: !4831)
!4834 = !DILocation(line: 49, column: 17, scope: !4831)
!4835 = !DILocation(line: 49, column: 3, scope: !4828)
!4836 = !DILocation(line: 50, column: 16, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 50, column: 8)
!4838 = !DILocation(line: 50, column: 26, scope: !4837)
!4839 = !DILocation(line: 50, column: 32, scope: !4837)
!4840 = !DILocation(line: 50, column: 38, scope: !4837)
!4841 = !DILocation(line: 50, column: 46, scope: !4837)
!4842 = !DILocation(line: 50, column: 60, scope: !4837)
!4843 = !DILocation(line: 50, column: 9, scope: !4837)
!4844 = !DILocation(line: 50, column: 8, scope: !4831)
!4845 = !DILocation(line: 51, column: 5, scope: !4837)
!4846 = !DILocation(line: 50, column: 62, scope: !4837)
!4847 = !DILocation(line: 49, column: 42, scope: !4831)
!4848 = !DILocation(line: 49, column: 3, scope: !4831)
!4849 = distinct !{!4849, !4835, !4850}
!4850 = !DILocation(line: 51, column: 12, scope: !4828)
!4851 = !DILocation(line: 52, column: 2, scope: !4822)
!4852 = !DILocation(line: 53, column: 8, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 53, column: 7)
!4854 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 52, column: 9)
!4855 = !DILocation(line: 53, column: 16, scope: !4853)
!4856 = !DILocation(line: 53, column: 22, scope: !4853)
!4857 = !DILocation(line: 53, column: 7, scope: !4854)
!4858 = !DILocation(line: 54, column: 4, scope: !4853)
!4859 = !DILocation(line: 55, column: 10, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 55, column: 3)
!4861 = !DILocation(line: 55, column: 8, scope: !4860)
!4862 = !DILocation(line: 55, column: 15, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 55, column: 3)
!4864 = !DILocation(line: 55, column: 19, scope: !4863)
!4865 = !DILocation(line: 55, column: 29, scope: !4863)
!4866 = !DILocation(line: 55, column: 17, scope: !4863)
!4867 = !DILocation(line: 55, column: 3, scope: !4860)
!4868 = !DILocation(line: 56, column: 16, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 56, column: 8)
!4870 = !DILocation(line: 56, column: 26, scope: !4869)
!4871 = !DILocation(line: 56, column: 38, scope: !4869)
!4872 = !DILocation(line: 56, column: 42, scope: !4869)
!4873 = !DILocation(line: 56, column: 50, scope: !4869)
!4874 = !DILocation(line: 56, column: 56, scope: !4869)
!4875 = !DILocation(line: 56, column: 9, scope: !4869)
!4876 = !DILocation(line: 56, column: 8, scope: !4863)
!4877 = !DILocation(line: 57, column: 5, scope: !4869)
!4878 = !DILocation(line: 56, column: 60, scope: !4869)
!4879 = !DILocation(line: 55, column: 47, scope: !4863)
!4880 = !DILocation(line: 55, column: 3, scope: !4863)
!4881 = distinct !{!4881, !4867, !4882}
!4882 = !DILocation(line: 57, column: 12, scope: !4860)
!4883 = !DILocation(line: 60, column: 2, scope: !4799)
!4884 = !DILocation(line: 61, column: 1, scope: !4799)
!4885 = distinct !DISubprogram(name: "kasan_check_read", scope: !4886, file: !4886, line: 34, type: !4887, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4886 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!293, !2822, !7}
!4889 = !DILocalVariable(name: "p", arg: 1, scope: !4885, file: !4886, line: 34, type: !2822)
!4890 = !DILocation(line: 34, column: 58, scope: !4885)
!4891 = !DILocalVariable(name: "size", arg: 2, scope: !4885, file: !4886, line: 34, type: !7)
!4892 = !DILocation(line: 34, column: 74, scope: !4885)
!4893 = !DILocation(line: 36, column: 2, scope: !4885)
!4894 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4895, file: !4895, line: 178, type: !4896, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4895 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4896 = !DISubroutineType(types: !4897)
!4897 = !{null, !2822, !412, !247}
!4898 = !DILocalVariable(name: "ptr", arg: 1, scope: !4894, file: !4895, line: 178, type: !2822)
!4899 = !DILocation(line: 178, column: 60, scope: !4894)
!4900 = !DILocalVariable(name: "size", arg: 2, scope: !4894, file: !4895, line: 178, type: !412)
!4901 = !DILocation(line: 178, column: 72, scope: !4894)
!4902 = !DILocalVariable(name: "type", arg: 3, scope: !4894, file: !4895, line: 179, type: !247)
!4903 = !DILocation(line: 179, column: 15, scope: !4894)
!4904 = !DILocation(line: 179, column: 23, scope: !4894)
!4905 = distinct !DISubprogram(name: "kasan_check_write", scope: !4886, file: !4886, line: 38, type: !4887, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4906 = !DILocalVariable(name: "p", arg: 1, scope: !4905, file: !4886, line: 38, type: !2822)
!4907 = !DILocation(line: 38, column: 59, scope: !4905)
!4908 = !DILocalVariable(name: "size", arg: 2, scope: !4905, file: !4886, line: 38, type: !7)
!4909 = !DILocation(line: 38, column: 75, scope: !4905)
!4910 = !DILocation(line: 40, column: 2, scope: !4905)
!4911 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !135, file: !135, line: 219, type: !3686, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4912 = !DILocalVariable(name: "dev", arg: 1, scope: !4911, file: !135, line: 219, type: !1788)
!4913 = !DILocation(line: 219, column: 55, scope: !4911)
!4914 = !DILocalVariable(name: "n", arg: 2, scope: !4911, file: !135, line: 220, type: !412)
!4915 = !DILocation(line: 220, column: 19, scope: !4911)
!4916 = !DILocalVariable(name: "size", arg: 3, scope: !4911, file: !135, line: 220, type: !412)
!4917 = !DILocation(line: 220, column: 29, scope: !4911)
!4918 = !DILocalVariable(name: "flags", arg: 4, scope: !4911, file: !135, line: 220, type: !245)
!4919 = !DILocation(line: 220, column: 41, scope: !4911)
!4920 = !DILocalVariable(name: "bytes", scope: !4911, file: !135, line: 222, type: !412)
!4921 = !DILocation(line: 222, column: 9, scope: !4911)
!4922 = !DILocalVariable(name: "__a", scope: !4923, file: !135, line: 224, type: !412)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !135, line: 224, column: 6)
!4924 = distinct !DILexicalBlock(scope: !4911, file: !135, line: 224, column: 6)
!4925 = !DILocation(line: 224, column: 6, scope: !4923)
!4926 = !DILocalVariable(name: "__b", scope: !4923, file: !135, line: 224, type: !412)
!4927 = !DILocalVariable(name: "__d", scope: !4923, file: !135, line: 224, type: !4928)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4929 = !DILocation(line: 224, column: 6, scope: !4924)
!4930 = !DILocation(line: 224, column: 6, scope: !4911)
!4931 = !DILocation(line: 225, column: 3, scope: !4924)
!4932 = !DILocation(line: 227, column: 22, scope: !4911)
!4933 = !DILocation(line: 227, column: 27, scope: !4911)
!4934 = !DILocation(line: 227, column: 34, scope: !4911)
!4935 = !DILocation(line: 227, column: 9, scope: !4911)
!4936 = !DILocation(line: 227, column: 2, scope: !4911)
!4937 = !DILocation(line: 228, column: 1, scope: !4911)
!4938 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4939, file: !4939, line: 52, type: !4940, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4939 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!293, !293}
!4942 = !DILocalVariable(name: "overflow", arg: 1, scope: !4938, file: !4939, line: 52, type: !293)
!4943 = !DILocation(line: 52, column: 60, scope: !4938)
!4944 = !DILocation(line: 54, column: 9, scope: !4938)
!4945 = !DILocation(line: 54, column: 2, scope: !4938)
!4946 = distinct !DISubprogram(name: "__arch_swab32", scope: !4947, file: !4947, line: 8, type: !3705, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4947 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!4948 = !DILocalVariable(name: "val", arg: 1, scope: !4946, file: !4947, line: 8, type: !248)
!4949 = !DILocation(line: 8, column: 61, scope: !4946)
!4950 = !DILocation(line: 10, column: 38, scope: !4946)
!4951 = !DILocation(line: 10, column: 2, scope: !4946)
!4952 = !{i32 454474}
!4953 = !DILocation(line: 11, column: 9, scope: !4946)
!4954 = !DILocation(line: 11, column: 2, scope: !4946)
!4955 = distinct !DISubprogram(name: "kzalloc", scope: !224, file: !224, line: 662, type: !4956, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!256, !412, !245}
!4958 = !DILocalVariable(name: "s", arg: 1, scope: !4959, file: !224, line: 445, type: !1253)
!4959 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !224, file: !224, line: 445, type: !4960, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!256, !1253, !245, !412}
!4962 = !DILocation(line: 445, column: 72, scope: !4959, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 552, column: 10, scope: !4964, inlinedAt: !4967)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !224, line: 540, column: 34)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !224, line: 540, column: 6)
!4966 = distinct !DISubprogram(name: "kmalloc", scope: !224, file: !224, line: 538, type: !4956, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4967 = distinct !DILocation(line: 664, column: 9, scope: !4955)
!4968 = !DILocalVariable(name: "flags", arg: 2, scope: !4959, file: !224, line: 446, type: !245)
!4969 = !DILocation(line: 446, column: 9, scope: !4959, inlinedAt: !4963)
!4970 = !DILocalVariable(name: "size", arg: 3, scope: !4959, file: !224, line: 446, type: !412)
!4971 = !DILocation(line: 446, column: 23, scope: !4959, inlinedAt: !4963)
!4972 = !DILocalVariable(name: "ret", scope: !4959, file: !224, line: 448, type: !256)
!4973 = !DILocation(line: 448, column: 8, scope: !4959, inlinedAt: !4963)
!4974 = !DILocalVariable(name: "flags", arg: 1, scope: !4975, file: !224, line: 318, type: !245)
!4975 = distinct !DISubprogram(name: "kmalloc_type", scope: !224, file: !224, line: 318, type: !4976, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!223, !245}
!4978 = !DILocation(line: 318, column: 67, scope: !4975, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 553, column: 20, scope: !4964, inlinedAt: !4967)
!4980 = !DILocalVariable(name: "size", arg: 1, scope: !4981, file: !224, line: 346, type: !412)
!4981 = distinct !DISubprogram(name: "kmalloc_index", scope: !224, file: !224, line: 346, type: !4982, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!7, !412}
!4984 = !DILocation(line: 346, column: 58, scope: !4981, inlinedAt: !4985)
!4985 = distinct !DILocation(line: 547, column: 11, scope: !4964, inlinedAt: !4967)
!4986 = !DILocalVariable(name: "size", arg: 1, scope: !4987, file: !224, line: 472, type: !412)
!4987 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !224, file: !224, line: 472, type: !4988, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!256, !412, !245, !7}
!4990 = !DILocation(line: 472, column: 28, scope: !4987, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 481, column: 9, scope: !4992, inlinedAt: !4993)
!4992 = distinct !DISubprogram(name: "kmalloc_large", scope: !224, file: !224, line: 478, type: !4956, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!4993 = distinct !DILocation(line: 545, column: 11, scope: !4994, inlinedAt: !4967)
!4994 = distinct !DILexicalBlock(scope: !4964, file: !224, line: 544, column: 7)
!4995 = !DILocalVariable(name: "flags", arg: 2, scope: !4987, file: !224, line: 472, type: !245)
!4996 = !DILocation(line: 472, column: 40, scope: !4987, inlinedAt: !4991)
!4997 = !DILocalVariable(name: "order", arg: 3, scope: !4987, file: !224, line: 472, type: !7)
!4998 = !DILocation(line: 472, column: 60, scope: !4987, inlinedAt: !4991)
!4999 = !DILocalVariable(name: "size", arg: 1, scope: !4992, file: !224, line: 478, type: !412)
!5000 = !DILocation(line: 478, column: 51, scope: !4992, inlinedAt: !4993)
!5001 = !DILocalVariable(name: "flags", arg: 2, scope: !4992, file: !224, line: 478, type: !245)
!5002 = !DILocation(line: 478, column: 63, scope: !4992, inlinedAt: !4993)
!5003 = !DILocalVariable(name: "order", scope: !4992, file: !224, line: 480, type: !7)
!5004 = !DILocation(line: 480, column: 15, scope: !4992, inlinedAt: !4993)
!5005 = !DILocalVariable(name: "size", arg: 1, scope: !4966, file: !224, line: 538, type: !412)
!5006 = !DILocation(line: 538, column: 45, scope: !4966, inlinedAt: !4967)
!5007 = !DILocalVariable(name: "flags", arg: 2, scope: !4966, file: !224, line: 538, type: !245)
!5008 = !DILocation(line: 538, column: 57, scope: !4966, inlinedAt: !4967)
!5009 = !DILocalVariable(name: "index", scope: !4964, file: !224, line: 542, type: !7)
!5010 = !DILocation(line: 542, column: 16, scope: !4964, inlinedAt: !4967)
!5011 = !DILocalVariable(name: "size", arg: 1, scope: !4955, file: !224, line: 662, type: !412)
!5012 = !DILocation(line: 662, column: 36, scope: !4955)
!5013 = !DILocalVariable(name: "flags", arg: 2, scope: !4955, file: !224, line: 662, type: !245)
!5014 = !DILocation(line: 662, column: 48, scope: !4955)
!5015 = !DILocation(line: 664, column: 17, scope: !4955)
!5016 = !DILocation(line: 664, column: 23, scope: !4955)
!5017 = !DILocation(line: 664, column: 29, scope: !4955)
!5018 = !DILocation(line: 540, column: 27, scope: !4965, inlinedAt: !4967)
!5019 = !DILocation(line: 540, column: 6, scope: !4965, inlinedAt: !4967)
!5020 = !DILocation(line: 540, column: 6, scope: !4966, inlinedAt: !4967)
!5021 = !DILocation(line: 544, column: 7, scope: !4994, inlinedAt: !4967)
!5022 = !DILocation(line: 544, column: 12, scope: !4994, inlinedAt: !4967)
!5023 = !DILocation(line: 544, column: 7, scope: !4964, inlinedAt: !4967)
!5024 = !DILocation(line: 545, column: 25, scope: !4994, inlinedAt: !4967)
!5025 = !DILocation(line: 545, column: 31, scope: !4994, inlinedAt: !4967)
!5026 = !DILocation(line: 480, column: 33, scope: !4992, inlinedAt: !4993)
!5027 = !DILocation(line: 480, column: 23, scope: !4992, inlinedAt: !4993)
!5028 = !DILocation(line: 481, column: 29, scope: !4992, inlinedAt: !4993)
!5029 = !DILocation(line: 481, column: 35, scope: !4992, inlinedAt: !4993)
!5030 = !DILocation(line: 481, column: 42, scope: !4992, inlinedAt: !4993)
!5031 = !DILocation(line: 474, column: 23, scope: !4987, inlinedAt: !4991)
!5032 = !DILocation(line: 474, column: 29, scope: !4987, inlinedAt: !4991)
!5033 = !DILocation(line: 474, column: 36, scope: !4987, inlinedAt: !4991)
!5034 = !DILocation(line: 474, column: 9, scope: !4987, inlinedAt: !4991)
!5035 = !DILocation(line: 545, column: 4, scope: !4994, inlinedAt: !4967)
!5036 = !DILocation(line: 547, column: 25, scope: !4964, inlinedAt: !4967)
!5037 = !DILocation(line: 348, column: 7, scope: !5038, inlinedAt: !4985)
!5038 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 348, column: 6)
!5039 = !DILocation(line: 348, column: 6, scope: !4981, inlinedAt: !4985)
!5040 = !DILocation(line: 349, column: 3, scope: !5038, inlinedAt: !4985)
!5041 = !DILocation(line: 351, column: 6, scope: !5042, inlinedAt: !4985)
!5042 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 351, column: 6)
!5043 = !DILocation(line: 351, column: 11, scope: !5042, inlinedAt: !4985)
!5044 = !DILocation(line: 351, column: 6, scope: !4981, inlinedAt: !4985)
!5045 = !DILocation(line: 352, column: 3, scope: !5042, inlinedAt: !4985)
!5046 = !DILocation(line: 354, column: 32, scope: !5047, inlinedAt: !4985)
!5047 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 354, column: 6)
!5048 = !DILocation(line: 354, column: 37, scope: !5047, inlinedAt: !4985)
!5049 = !DILocation(line: 354, column: 42, scope: !5047, inlinedAt: !4985)
!5050 = !DILocation(line: 354, column: 45, scope: !5047, inlinedAt: !4985)
!5051 = !DILocation(line: 354, column: 50, scope: !5047, inlinedAt: !4985)
!5052 = !DILocation(line: 354, column: 6, scope: !4981, inlinedAt: !4985)
!5053 = !DILocation(line: 355, column: 3, scope: !5047, inlinedAt: !4985)
!5054 = !DILocation(line: 356, column: 32, scope: !5055, inlinedAt: !4985)
!5055 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 356, column: 6)
!5056 = !DILocation(line: 356, column: 37, scope: !5055, inlinedAt: !4985)
!5057 = !DILocation(line: 356, column: 43, scope: !5055, inlinedAt: !4985)
!5058 = !DILocation(line: 356, column: 46, scope: !5055, inlinedAt: !4985)
!5059 = !DILocation(line: 356, column: 51, scope: !5055, inlinedAt: !4985)
!5060 = !DILocation(line: 356, column: 6, scope: !4981, inlinedAt: !4985)
!5061 = !DILocation(line: 357, column: 3, scope: !5055, inlinedAt: !4985)
!5062 = !DILocation(line: 358, column: 6, scope: !5063, inlinedAt: !4985)
!5063 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 358, column: 6)
!5064 = !DILocation(line: 358, column: 11, scope: !5063, inlinedAt: !4985)
!5065 = !DILocation(line: 358, column: 6, scope: !4981, inlinedAt: !4985)
!5066 = !DILocation(line: 358, column: 26, scope: !5063, inlinedAt: !4985)
!5067 = !DILocation(line: 359, column: 6, scope: !5068, inlinedAt: !4985)
!5068 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 359, column: 6)
!5069 = !DILocation(line: 359, column: 11, scope: !5068, inlinedAt: !4985)
!5070 = !DILocation(line: 359, column: 6, scope: !4981, inlinedAt: !4985)
!5071 = !DILocation(line: 359, column: 26, scope: !5068, inlinedAt: !4985)
!5072 = !DILocation(line: 360, column: 6, scope: !5073, inlinedAt: !4985)
!5073 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 360, column: 6)
!5074 = !DILocation(line: 360, column: 11, scope: !5073, inlinedAt: !4985)
!5075 = !DILocation(line: 360, column: 6, scope: !4981, inlinedAt: !4985)
!5076 = !DILocation(line: 360, column: 26, scope: !5073, inlinedAt: !4985)
!5077 = !DILocation(line: 361, column: 6, scope: !5078, inlinedAt: !4985)
!5078 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 361, column: 6)
!5079 = !DILocation(line: 361, column: 11, scope: !5078, inlinedAt: !4985)
!5080 = !DILocation(line: 361, column: 6, scope: !4981, inlinedAt: !4985)
!5081 = !DILocation(line: 361, column: 26, scope: !5078, inlinedAt: !4985)
!5082 = !DILocation(line: 362, column: 6, scope: !5083, inlinedAt: !4985)
!5083 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 362, column: 6)
!5084 = !DILocation(line: 362, column: 11, scope: !5083, inlinedAt: !4985)
!5085 = !DILocation(line: 362, column: 6, scope: !4981, inlinedAt: !4985)
!5086 = !DILocation(line: 362, column: 26, scope: !5083, inlinedAt: !4985)
!5087 = !DILocation(line: 363, column: 6, scope: !5088, inlinedAt: !4985)
!5088 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 363, column: 6)
!5089 = !DILocation(line: 363, column: 11, scope: !5088, inlinedAt: !4985)
!5090 = !DILocation(line: 363, column: 6, scope: !4981, inlinedAt: !4985)
!5091 = !DILocation(line: 363, column: 26, scope: !5088, inlinedAt: !4985)
!5092 = !DILocation(line: 364, column: 6, scope: !5093, inlinedAt: !4985)
!5093 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 364, column: 6)
!5094 = !DILocation(line: 364, column: 11, scope: !5093, inlinedAt: !4985)
!5095 = !DILocation(line: 364, column: 6, scope: !4981, inlinedAt: !4985)
!5096 = !DILocation(line: 364, column: 26, scope: !5093, inlinedAt: !4985)
!5097 = !DILocation(line: 365, column: 6, scope: !5098, inlinedAt: !4985)
!5098 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 365, column: 6)
!5099 = !DILocation(line: 365, column: 11, scope: !5098, inlinedAt: !4985)
!5100 = !DILocation(line: 365, column: 6, scope: !4981, inlinedAt: !4985)
!5101 = !DILocation(line: 365, column: 26, scope: !5098, inlinedAt: !4985)
!5102 = !DILocation(line: 366, column: 6, scope: !5103, inlinedAt: !4985)
!5103 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 366, column: 6)
!5104 = !DILocation(line: 366, column: 11, scope: !5103, inlinedAt: !4985)
!5105 = !DILocation(line: 366, column: 6, scope: !4981, inlinedAt: !4985)
!5106 = !DILocation(line: 366, column: 26, scope: !5103, inlinedAt: !4985)
!5107 = !DILocation(line: 367, column: 6, scope: !5108, inlinedAt: !4985)
!5108 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 367, column: 6)
!5109 = !DILocation(line: 367, column: 11, scope: !5108, inlinedAt: !4985)
!5110 = !DILocation(line: 367, column: 6, scope: !4981, inlinedAt: !4985)
!5111 = !DILocation(line: 367, column: 26, scope: !5108, inlinedAt: !4985)
!5112 = !DILocation(line: 368, column: 6, scope: !5113, inlinedAt: !4985)
!5113 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 368, column: 6)
!5114 = !DILocation(line: 368, column: 11, scope: !5113, inlinedAt: !4985)
!5115 = !DILocation(line: 368, column: 6, scope: !4981, inlinedAt: !4985)
!5116 = !DILocation(line: 368, column: 26, scope: !5113, inlinedAt: !4985)
!5117 = !DILocation(line: 369, column: 6, scope: !5118, inlinedAt: !4985)
!5118 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 369, column: 6)
!5119 = !DILocation(line: 369, column: 11, scope: !5118, inlinedAt: !4985)
!5120 = !DILocation(line: 369, column: 6, scope: !4981, inlinedAt: !4985)
!5121 = !DILocation(line: 369, column: 26, scope: !5118, inlinedAt: !4985)
!5122 = !DILocation(line: 370, column: 6, scope: !5123, inlinedAt: !4985)
!5123 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 370, column: 6)
!5124 = !DILocation(line: 370, column: 11, scope: !5123, inlinedAt: !4985)
!5125 = !DILocation(line: 370, column: 6, scope: !4981, inlinedAt: !4985)
!5126 = !DILocation(line: 370, column: 26, scope: !5123, inlinedAt: !4985)
!5127 = !DILocation(line: 371, column: 6, scope: !5128, inlinedAt: !4985)
!5128 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 371, column: 6)
!5129 = !DILocation(line: 371, column: 11, scope: !5128, inlinedAt: !4985)
!5130 = !DILocation(line: 371, column: 6, scope: !4981, inlinedAt: !4985)
!5131 = !DILocation(line: 371, column: 26, scope: !5128, inlinedAt: !4985)
!5132 = !DILocation(line: 372, column: 6, scope: !5133, inlinedAt: !4985)
!5133 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 372, column: 6)
!5134 = !DILocation(line: 372, column: 11, scope: !5133, inlinedAt: !4985)
!5135 = !DILocation(line: 372, column: 6, scope: !4981, inlinedAt: !4985)
!5136 = !DILocation(line: 372, column: 26, scope: !5133, inlinedAt: !4985)
!5137 = !DILocation(line: 373, column: 6, scope: !5138, inlinedAt: !4985)
!5138 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 373, column: 6)
!5139 = !DILocation(line: 373, column: 11, scope: !5138, inlinedAt: !4985)
!5140 = !DILocation(line: 373, column: 6, scope: !4981, inlinedAt: !4985)
!5141 = !DILocation(line: 373, column: 26, scope: !5138, inlinedAt: !4985)
!5142 = !DILocation(line: 374, column: 6, scope: !5143, inlinedAt: !4985)
!5143 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 374, column: 6)
!5144 = !DILocation(line: 374, column: 11, scope: !5143, inlinedAt: !4985)
!5145 = !DILocation(line: 374, column: 6, scope: !4981, inlinedAt: !4985)
!5146 = !DILocation(line: 374, column: 26, scope: !5143, inlinedAt: !4985)
!5147 = !DILocation(line: 375, column: 6, scope: !5148, inlinedAt: !4985)
!5148 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 375, column: 6)
!5149 = !DILocation(line: 375, column: 11, scope: !5148, inlinedAt: !4985)
!5150 = !DILocation(line: 375, column: 6, scope: !4981, inlinedAt: !4985)
!5151 = !DILocation(line: 375, column: 27, scope: !5148, inlinedAt: !4985)
!5152 = !DILocation(line: 376, column: 6, scope: !5153, inlinedAt: !4985)
!5153 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 376, column: 6)
!5154 = !DILocation(line: 376, column: 11, scope: !5153, inlinedAt: !4985)
!5155 = !DILocation(line: 376, column: 6, scope: !4981, inlinedAt: !4985)
!5156 = !DILocation(line: 376, column: 32, scope: !5153, inlinedAt: !4985)
!5157 = !DILocation(line: 377, column: 6, scope: !5158, inlinedAt: !4985)
!5158 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 377, column: 6)
!5159 = !DILocation(line: 377, column: 11, scope: !5158, inlinedAt: !4985)
!5160 = !DILocation(line: 377, column: 6, scope: !4981, inlinedAt: !4985)
!5161 = !DILocation(line: 377, column: 32, scope: !5158, inlinedAt: !4985)
!5162 = !DILocation(line: 378, column: 6, scope: !5163, inlinedAt: !4985)
!5163 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 378, column: 6)
!5164 = !DILocation(line: 378, column: 11, scope: !5163, inlinedAt: !4985)
!5165 = !DILocation(line: 378, column: 6, scope: !4981, inlinedAt: !4985)
!5166 = !DILocation(line: 378, column: 32, scope: !5163, inlinedAt: !4985)
!5167 = !DILocation(line: 379, column: 6, scope: !5168, inlinedAt: !4985)
!5168 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 379, column: 6)
!5169 = !DILocation(line: 379, column: 11, scope: !5168, inlinedAt: !4985)
!5170 = !DILocation(line: 379, column: 6, scope: !4981, inlinedAt: !4985)
!5171 = !DILocation(line: 379, column: 33, scope: !5168, inlinedAt: !4985)
!5172 = !DILocation(line: 380, column: 6, scope: !5173, inlinedAt: !4985)
!5173 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 380, column: 6)
!5174 = !DILocation(line: 380, column: 11, scope: !5173, inlinedAt: !4985)
!5175 = !DILocation(line: 380, column: 6, scope: !4981, inlinedAt: !4985)
!5176 = !DILocation(line: 380, column: 33, scope: !5173, inlinedAt: !4985)
!5177 = !DILocation(line: 381, column: 6, scope: !5178, inlinedAt: !4985)
!5178 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 381, column: 6)
!5179 = !DILocation(line: 381, column: 11, scope: !5178, inlinedAt: !4985)
!5180 = !DILocation(line: 381, column: 6, scope: !4981, inlinedAt: !4985)
!5181 = !DILocation(line: 381, column: 33, scope: !5178, inlinedAt: !4985)
!5182 = !DILocation(line: 382, column: 2, scope: !5183, inlinedAt: !4985)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !224, line: 382, column: 2)
!5184 = distinct !DILexicalBlock(scope: !4981, file: !224, line: 382, column: 2)
!5185 = !{i32 -2144210075, i32 -2144210046, i32 -2144210000, i32 -2144209942, i32 -2144209888, i32 -2144209834, i32 -2144209779, i32 -2144209748}
!5186 = !DILocation(line: 382, column: 2, scope: !5187, inlinedAt: !4985)
!5187 = distinct !DILexicalBlock(scope: !5188, file: !224, line: 382, column: 2)
!5188 = distinct !DILexicalBlock(scope: !5184, file: !224, line: 382, column: 2)
!5189 = !{i32 -2144209305, i32 -2144209298, i32 -2144209244, i32 -2144209213, i32 -2144209183}
!5190 = !DILocation(line: 382, column: 2, scope: !5188, inlinedAt: !4985)
!5191 = !DILocation(line: 386, column: 1, scope: !4981, inlinedAt: !4985)
!5192 = !DILocation(line: 547, column: 9, scope: !4964, inlinedAt: !4967)
!5193 = !DILocation(line: 549, column: 8, scope: !5194, inlinedAt: !4967)
!5194 = distinct !DILexicalBlock(scope: !4964, file: !224, line: 549, column: 7)
!5195 = !DILocation(line: 549, column: 7, scope: !4964, inlinedAt: !4967)
!5196 = !DILocation(line: 550, column: 4, scope: !5194, inlinedAt: !4967)
!5197 = !DILocation(line: 553, column: 33, scope: !4964, inlinedAt: !4967)
!5198 = !DILocation(line: 325, column: 6, scope: !5199, inlinedAt: !4979)
!5199 = distinct !DILexicalBlock(scope: !4975, file: !224, line: 325, column: 6)
!5200 = !DILocation(line: 325, column: 6, scope: !4975, inlinedAt: !4979)
!5201 = !DILocation(line: 326, column: 3, scope: !5199, inlinedAt: !4979)
!5202 = !DILocation(line: 332, column: 9, scope: !4975, inlinedAt: !4979)
!5203 = !DILocation(line: 332, column: 15, scope: !4975, inlinedAt: !4979)
!5204 = !DILocation(line: 332, column: 2, scope: !4975, inlinedAt: !4979)
!5205 = !DILocation(line: 336, column: 1, scope: !4975, inlinedAt: !4979)
!5206 = !DILocation(line: 553, column: 5, scope: !4964, inlinedAt: !4967)
!5207 = !DILocation(line: 553, column: 41, scope: !4964, inlinedAt: !4967)
!5208 = !DILocation(line: 554, column: 5, scope: !4964, inlinedAt: !4967)
!5209 = !DILocation(line: 554, column: 12, scope: !4964, inlinedAt: !4967)
!5210 = !DILocation(line: 448, column: 31, scope: !4959, inlinedAt: !4963)
!5211 = !DILocation(line: 448, column: 34, scope: !4959, inlinedAt: !4963)
!5212 = !DILocation(line: 448, column: 14, scope: !4959, inlinedAt: !4963)
!5213 = !DILocation(line: 450, column: 22, scope: !4959, inlinedAt: !4963)
!5214 = !DILocation(line: 450, column: 25, scope: !4959, inlinedAt: !4963)
!5215 = !DILocation(line: 450, column: 30, scope: !4959, inlinedAt: !4963)
!5216 = !DILocation(line: 450, column: 36, scope: !4959, inlinedAt: !4963)
!5217 = !DILocation(line: 450, column: 8, scope: !4959, inlinedAt: !4963)
!5218 = !DILocation(line: 450, column: 6, scope: !4959, inlinedAt: !4963)
!5219 = !DILocation(line: 451, column: 9, scope: !4959, inlinedAt: !4963)
!5220 = !DILocation(line: 552, column: 3, scope: !4964, inlinedAt: !4967)
!5221 = !DILocation(line: 557, column: 19, scope: !4966, inlinedAt: !4967)
!5222 = !DILocation(line: 557, column: 25, scope: !4966, inlinedAt: !4967)
!5223 = !DILocation(line: 557, column: 9, scope: !4966, inlinedAt: !4967)
!5224 = !DILocation(line: 557, column: 2, scope: !4966, inlinedAt: !4967)
!5225 = !DILocation(line: 558, column: 1, scope: !4966, inlinedAt: !4967)
!5226 = !DILocation(line: 664, column: 2, scope: !4955)
!5227 = distinct !DISubprogram(name: "power_supply_dev_release", scope: !3, file: !3, line: 916, type: !1811, scopeLine: 917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5228 = !DILocalVariable(name: "dev", arg: 1, scope: !5227, file: !3, line: 916, type: !1788)
!5229 = !DILocation(line: 916, column: 53, scope: !5227)
!5230 = !DILocalVariable(name: "psy", scope: !5227, file: !3, line: 918, type: !2225)
!5231 = !DILocation(line: 918, column: 23, scope: !5227)
!5232 = !DILocalVariable(name: "__mptr", scope: !5233, file: !3, line: 918, type: !256)
!5233 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 918, column: 29)
!5234 = !DILocation(line: 918, column: 29, scope: !5233)
!5235 = !DILocation(line: 918, column: 29, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 918, column: 29)
!5237 = !DILocation(line: 920, column: 8, scope: !5227)
!5238 = !DILocation(line: 920, column: 2, scope: !5227)
!5239 = !DILocation(line: 921, column: 1, scope: !5227)
!5240 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !135, file: !135, line: 660, type: !3116, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5241 = !DILocalVariable(name: "dev", arg: 1, scope: !5240, file: !135, line: 660, type: !1788)
!5242 = !DILocation(line: 660, column: 51, scope: !5240)
!5243 = !DILocalVariable(name: "data", arg: 2, scope: !5240, file: !135, line: 660, type: !256)
!5244 = !DILocation(line: 660, column: 62, scope: !5240)
!5245 = !DILocation(line: 662, column: 21, scope: !5240)
!5246 = !DILocation(line: 662, column: 2, scope: !5240)
!5247 = !DILocation(line: 662, column: 7, scope: !5240)
!5248 = !DILocation(line: 662, column: 19, scope: !5240)
!5249 = !DILocation(line: 663, column: 1, scope: !5240)
!5250 = distinct !DISubprogram(name: "is_of_node", scope: !259, file: !259, line: 155, type: !291, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5251 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5250, file: !259, line: 155, type: !295)
!5252 = !DILocation(line: 155, column: 59, scope: !5250)
!5253 = !DILocation(line: 157, column: 25, scope: !5250)
!5254 = !DILocation(line: 157, column: 10, scope: !5250)
!5255 = !DILocation(line: 157, column: 33, scope: !5250)
!5256 = !DILocation(line: 157, column: 36, scope: !5250)
!5257 = !DILocation(line: 157, column: 44, scope: !5250)
!5258 = !DILocation(line: 157, column: 48, scope: !5250)
!5259 = !DILocation(line: 0, scope: !5250)
!5260 = !DILocation(line: 157, column: 2, scope: !5250)
!5261 = distinct !DISubprogram(name: "__init_work", scope: !191, file: !191, line: 215, type: !5262, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{null, !1538, !247}
!5264 = !DILocalVariable(name: "work", arg: 1, scope: !5261, file: !191, line: 215, type: !1538)
!5265 = !DILocation(line: 215, column: 52, scope: !5261)
!5266 = !DILocalVariable(name: "onstack", arg: 2, scope: !5261, file: !191, line: 215, type: !247)
!5267 = !DILocation(line: 215, column: 62, scope: !5261)
!5268 = !DILocation(line: 215, column: 73, scope: !5261)
!5269 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5270, file: !5270, line: 33, type: !5271, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5270 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5271 = !DISubroutineType(types: !5272)
!5272 = !{null, !315}
!5273 = !DILocalVariable(name: "list", arg: 1, scope: !5269, file: !5270, line: 33, type: !315)
!5274 = !DILocation(line: 33, column: 53, scope: !5269)
!5275 = !DILocation(line: 35, column: 2, scope: !5269)
!5276 = !DILocation(line: 35, column: 2, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5269, file: !5270, line: 35, column: 2)
!5278 = !DILocation(line: 35, column: 2, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5277, file: !5270, line: 35, column: 2)
!5280 = !DILocation(line: 35, column: 2, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5277, file: !5270, line: 35, column: 2)
!5282 = !DILocation(line: 36, column: 15, scope: !5269)
!5283 = !DILocation(line: 36, column: 2, scope: !5269)
!5284 = !DILocation(line: 36, column: 8, scope: !5269)
!5285 = !DILocation(line: 36, column: 13, scope: !5269)
!5286 = !DILocation(line: 37, column: 1, scope: !5269)
!5287 = distinct !DISubprogram(name: "power_supply_changed_work", scope: !3, file: !3, line: 76, type: !1536, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5288 = !DILocation(line: 327, column: 67, scope: !2535, inlinedAt: !5289)
!5289 = distinct !DILocation(line: 101, column: 3, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 101, column: 3)
!5291 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 101, column: 3)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 101, column: 3)
!5293 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 101, column: 3)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 101, column: 3)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 92, column: 28)
!5296 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 92, column: 6)
!5297 = !DILocation(line: 407, column: 64, scope: !2525, inlinedAt: !5298)
!5298 = distinct !DILocation(line: 94, column: 3, scope: !5295)
!5299 = !DILocation(line: 407, column: 84, scope: !2525, inlinedAt: !5298)
!5300 = !DILocation(line: 407, column: 64, scope: !2525, inlinedAt: !5301)
!5301 = distinct !DILocation(line: 111, column: 2, scope: !5287)
!5302 = !DILocation(line: 407, column: 84, scope: !2525, inlinedAt: !5301)
!5303 = !DILocation(line: 327, column: 67, scope: !2535, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 84, column: 2, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 84, column: 2)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 84, column: 2)
!5307 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 84, column: 2)
!5308 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 84, column: 2)
!5309 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 84, column: 2)
!5310 = !DILocalVariable(name: "work", arg: 1, scope: !5287, file: !3, line: 76, type: !1538)
!5311 = !DILocation(line: 76, column: 59, scope: !5287)
!5312 = !DILocalVariable(name: "flags", scope: !5287, file: !3, line: 78, type: !252)
!5313 = !DILocation(line: 78, column: 16, scope: !5287)
!5314 = !DILocalVariable(name: "psy", scope: !5287, file: !3, line: 79, type: !2225)
!5315 = !DILocation(line: 79, column: 23, scope: !5287)
!5316 = !DILocalVariable(name: "__mptr", scope: !5317, file: !3, line: 79, type: !256)
!5317 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 79, column: 29)
!5318 = !DILocation(line: 79, column: 29, scope: !5317)
!5319 = !DILocation(line: 79, column: 29, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 79, column: 29)
!5321 = !DILocation(line: 84, column: 2, scope: !5287)
!5322 = !DILocation(line: 84, column: 2, scope: !5309)
!5323 = !DILocalVariable(name: "__dummy", scope: !5324, file: !3, line: 84, type: !252)
!5324 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 84, column: 2)
!5325 = !DILocation(line: 84, column: 2, scope: !5324)
!5326 = !DILocalVariable(name: "__dummy2", scope: !5324, file: !3, line: 84, type: !252)
!5327 = !DILocation(line: 84, column: 2, scope: !5308)
!5328 = !DILocation(line: 84, column: 2, scope: !5307)
!5329 = !DILocation(line: 84, column: 2, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 84, column: 2)
!5331 = !DILocalVariable(name: "__dummy", scope: !5332, file: !3, line: 84, type: !252)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 84, column: 2)
!5333 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 84, column: 2)
!5334 = !DILocation(line: 84, column: 2, scope: !5332)
!5335 = !DILocalVariable(name: "__dummy2", scope: !5332, file: !3, line: 84, type: !252)
!5336 = !DILocation(line: 84, column: 2, scope: !5333)
!5337 = !DILocation(line: 84, column: 2, scope: !5306)
!5338 = !{i32 -2143345588}
!5339 = !DILocation(line: 84, column: 2, scope: !5305)
!5340 = !DILocation(line: 329, column: 10, scope: !2535, inlinedAt: !5304)
!5341 = !DILocation(line: 329, column: 16, scope: !2535, inlinedAt: !5304)
!5342 = !DILocation(line: 92, column: 6, scope: !5296)
!5343 = !DILocation(line: 92, column: 6, scope: !5287)
!5344 = !DILocation(line: 93, column: 3, scope: !5295)
!5345 = !DILocation(line: 93, column: 8, scope: !5295)
!5346 = !DILocation(line: 93, column: 16, scope: !5295)
!5347 = !DILocation(line: 94, column: 27, scope: !5295)
!5348 = !DILocation(line: 94, column: 32, scope: !5295)
!5349 = !DILocation(line: 94, column: 46, scope: !5295)
!5350 = !DILocation(line: 409, column: 2, scope: !2581, inlinedAt: !5298)
!5351 = !DILocation(line: 409, column: 2, scope: !2586, inlinedAt: !5298)
!5352 = !DILocation(line: 409, column: 2, scope: !2587, inlinedAt: !5298)
!5353 = !DILocation(line: 409, column: 2, scope: !2594, inlinedAt: !5298)
!5354 = !DILocation(line: 409, column: 2, scope: !2597, inlinedAt: !5298)
!5355 = !DILocation(line: 95, column: 25, scope: !5295)
!5356 = !DILocation(line: 95, column: 51, scope: !5295)
!5357 = !DILocation(line: 95, column: 3, scope: !5295)
!5358 = !DILocation(line: 97, column: 28, scope: !5295)
!5359 = !DILocation(line: 97, column: 3, scope: !5295)
!5360 = !DILocation(line: 99, column: 29, scope: !5295)
!5361 = !DILocation(line: 98, column: 3, scope: !5295)
!5362 = !DILocation(line: 100, column: 19, scope: !5295)
!5363 = !DILocation(line: 100, column: 24, scope: !5295)
!5364 = !DILocation(line: 100, column: 28, scope: !5295)
!5365 = !DILocation(line: 100, column: 3, scope: !5295)
!5366 = !DILocation(line: 101, column: 3, scope: !5295)
!5367 = !DILocation(line: 101, column: 3, scope: !5294)
!5368 = !DILocalVariable(name: "__dummy", scope: !5369, file: !3, line: 101, type: !252)
!5369 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 101, column: 3)
!5370 = !DILocation(line: 101, column: 3, scope: !5369)
!5371 = !DILocalVariable(name: "__dummy2", scope: !5369, file: !3, line: 101, type: !252)
!5372 = !DILocation(line: 101, column: 3, scope: !5293)
!5373 = !DILocation(line: 101, column: 3, scope: !5292)
!5374 = !DILocation(line: 101, column: 3, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 101, column: 3)
!5376 = !DILocalVariable(name: "__dummy", scope: !5377, file: !3, line: 101, type: !252)
!5377 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 101, column: 3)
!5378 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 101, column: 3)
!5379 = !DILocation(line: 101, column: 3, scope: !5377)
!5380 = !DILocalVariable(name: "__dummy2", scope: !5377, file: !3, line: 101, type: !252)
!5381 = !DILocation(line: 101, column: 3, scope: !5378)
!5382 = !DILocation(line: 101, column: 3, scope: !5291)
!5383 = !{i32 -2143344468}
!5384 = !DILocation(line: 101, column: 3, scope: !5290)
!5385 = !DILocation(line: 329, column: 10, scope: !2535, inlinedAt: !5289)
!5386 = !DILocation(line: 329, column: 16, scope: !2535, inlinedAt: !5289)
!5387 = !DILocation(line: 102, column: 2, scope: !5295)
!5388 = !DILocation(line: 109, column: 6, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 109, column: 6)
!5390 = !DILocation(line: 109, column: 6, scope: !5287)
!5391 = !DILocation(line: 110, column: 13, scope: !5389)
!5392 = !DILocation(line: 110, column: 18, scope: !5389)
!5393 = !DILocation(line: 110, column: 3, scope: !5389)
!5394 = !DILocation(line: 111, column: 26, scope: !5287)
!5395 = !DILocation(line: 111, column: 31, scope: !5287)
!5396 = !DILocation(line: 111, column: 45, scope: !5287)
!5397 = !DILocation(line: 409, column: 2, scope: !2581, inlinedAt: !5301)
!5398 = !DILocation(line: 409, column: 2, scope: !2586, inlinedAt: !5301)
!5399 = !DILocation(line: 409, column: 2, scope: !2587, inlinedAt: !5301)
!5400 = !DILocation(line: 409, column: 2, scope: !2594, inlinedAt: !5301)
!5401 = !DILocation(line: 409, column: 2, scope: !2597, inlinedAt: !5301)
!5402 = !DILocation(line: 112, column: 1, scope: !5287)
!5403 = distinct !DISubprogram(name: "power_supply_deferred_register_work", scope: !3, file: !3, line: 138, type: !1536, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5404 = !DILocalVariable(name: "work", arg: 1, scope: !5403, file: !3, line: 138, type: !1538)
!5405 = !DILocation(line: 138, column: 69, scope: !5403)
!5406 = !DILocalVariable(name: "psy", scope: !5403, file: !3, line: 140, type: !2225)
!5407 = !DILocation(line: 140, column: 23, scope: !5403)
!5408 = !DILocalVariable(name: "__mptr", scope: !5409, file: !3, line: 140, type: !256)
!5409 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 140, column: 29)
!5410 = !DILocation(line: 140, column: 29, scope: !5409)
!5411 = !DILocation(line: 140, column: 29, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 140, column: 29)
!5413 = !DILocation(line: 143, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 143, column: 6)
!5415 = !DILocation(line: 143, column: 11, scope: !5414)
!5416 = !DILocation(line: 143, column: 15, scope: !5414)
!5417 = !DILocation(line: 143, column: 6, scope: !5403)
!5418 = !DILocation(line: 144, column: 3, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 143, column: 23)
!5420 = !DILocation(line: 144, column: 26, scope: !5419)
!5421 = !DILocation(line: 144, column: 31, scope: !5419)
!5422 = !DILocation(line: 144, column: 35, scope: !5419)
!5423 = !DILocation(line: 144, column: 43, scope: !5419)
!5424 = !DILocation(line: 144, column: 11, scope: !5419)
!5425 = !DILocation(line: 144, column: 10, scope: !5419)
!5426 = !DILocation(line: 145, column: 8, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5428, file: !3, line: 145, column: 8)
!5428 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 144, column: 51)
!5429 = !DILocation(line: 145, column: 13, scope: !5427)
!5430 = !DILocation(line: 145, column: 8, scope: !5428)
!5431 = !DILocation(line: 146, column: 5, scope: !5427)
!5432 = !DILocation(line: 147, column: 4, scope: !5428)
!5433 = distinct !{!5433, !5418, !5434}
!5434 = !DILocation(line: 148, column: 3, scope: !5419)
!5435 = !DILocation(line: 149, column: 2, scope: !5419)
!5436 = !DILocation(line: 151, column: 23, scope: !5403)
!5437 = !DILocation(line: 151, column: 2, scope: !5403)
!5438 = !DILocation(line: 153, column: 6, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 153, column: 6)
!5440 = !DILocation(line: 153, column: 11, scope: !5439)
!5441 = !DILocation(line: 153, column: 15, scope: !5439)
!5442 = !DILocation(line: 153, column: 6, scope: !5403)
!5443 = !DILocation(line: 154, column: 17, scope: !5439)
!5444 = !DILocation(line: 154, column: 22, scope: !5439)
!5445 = !DILocation(line: 154, column: 26, scope: !5439)
!5446 = !DILocation(line: 154, column: 34, scope: !5439)
!5447 = !DILocation(line: 154, column: 3, scope: !5439)
!5448 = !DILocation(line: 155, column: 1, scope: !5403)
!5449 = distinct !DISubprogram(name: "power_supply_check_supplies", scope: !3, file: !3, line: 230, type: !2623, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5450 = !DILocalVariable(name: "psy", arg: 1, scope: !5449, file: !3, line: 230, type: !2225)
!5451 = !DILocation(line: 230, column: 61, scope: !5449)
!5452 = !DILocalVariable(name: "np", scope: !5449, file: !3, line: 232, type: !257)
!5453 = !DILocation(line: 232, column: 22, scope: !5449)
!5454 = !DILocalVariable(name: "cnt", scope: !5449, file: !3, line: 233, type: !247)
!5455 = !DILocation(line: 233, column: 6, scope: !5449)
!5456 = !DILocation(line: 236, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 236, column: 6)
!5458 = !DILocation(line: 236, column: 11, scope: !5457)
!5459 = !DILocation(line: 236, column: 25, scope: !5457)
!5460 = !DILocation(line: 236, column: 28, scope: !5457)
!5461 = !DILocation(line: 236, column: 33, scope: !5457)
!5462 = !DILocation(line: 236, column: 46, scope: !5457)
!5463 = !DILocation(line: 236, column: 6, scope: !5449)
!5464 = !DILocation(line: 237, column: 3, scope: !5457)
!5465 = !DILocation(line: 240, column: 7, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 240, column: 6)
!5467 = !DILocation(line: 240, column: 12, scope: !5466)
!5468 = !DILocation(line: 240, column: 6, scope: !5449)
!5469 = !DILocation(line: 241, column: 3, scope: !5466)
!5470 = !DILocation(line: 243, column: 2, scope: !5449)
!5471 = !DILocalVariable(name: "ret", scope: !5472, file: !3, line: 244, type: !247)
!5472 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 243, column: 5)
!5473 = !DILocation(line: 244, column: 7, scope: !5472)
!5474 = !DILocation(line: 246, column: 25, scope: !5472)
!5475 = !DILocation(line: 246, column: 30, scope: !5472)
!5476 = !DILocation(line: 246, column: 60, scope: !5472)
!5477 = !DILocation(line: 246, column: 8, scope: !5472)
!5478 = !DILocation(line: 246, column: 6, scope: !5472)
!5479 = !DILocation(line: 247, column: 8, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 247, column: 7)
!5481 = !DILocation(line: 247, column: 7, scope: !5472)
!5482 = !DILocation(line: 248, column: 4, scope: !5480)
!5483 = !DILocation(line: 250, column: 44, scope: !5472)
!5484 = !DILocation(line: 250, column: 9, scope: !5472)
!5485 = !DILocation(line: 250, column: 7, scope: !5472)
!5486 = !DILocation(line: 251, column: 15, scope: !5472)
!5487 = !DILocation(line: 251, column: 3, scope: !5472)
!5488 = !DILocation(line: 253, column: 7, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 253, column: 7)
!5490 = !DILocation(line: 253, column: 7, scope: !5472)
!5491 = !DILocation(line: 255, column: 11, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 253, column: 12)
!5493 = !DILocation(line: 255, column: 4, scope: !5492)
!5494 = !DILocation(line: 257, column: 2, scope: !5472)
!5495 = !DILocation(line: 257, column: 11, scope: !5449)
!5496 = distinct !{!5496, !5470, !5497}
!5497 = !DILocation(line: 257, column: 13, scope: !5449)
!5498 = !DILocation(line: 260, column: 6, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 260, column: 6)
!5500 = !DILocation(line: 260, column: 10, scope: !5499)
!5501 = !DILocation(line: 260, column: 6, scope: !5449)
!5502 = !DILocation(line: 261, column: 3, scope: !5499)
!5503 = !DILocation(line: 264, column: 37, scope: !5449)
!5504 = !DILocation(line: 264, column: 42, scope: !5449)
!5505 = !DILocation(line: 264, column: 23, scope: !5449)
!5506 = !DILocation(line: 264, column: 2, scope: !5449)
!5507 = !DILocation(line: 264, column: 7, scope: !5449)
!5508 = !DILocation(line: 264, column: 21, scope: !5449)
!5509 = !DILocation(line: 266, column: 7, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 266, column: 6)
!5511 = !DILocation(line: 266, column: 12, scope: !5510)
!5512 = !DILocation(line: 266, column: 6, scope: !5449)
!5513 = !DILocation(line: 267, column: 3, scope: !5510)
!5514 = !DILocation(line: 269, column: 38, scope: !5449)
!5515 = !DILocation(line: 269, column: 43, scope: !5449)
!5516 = !DILocation(line: 270, column: 9, scope: !5449)
!5517 = !DILocation(line: 270, column: 13, scope: !5449)
!5518 = !DILocation(line: 269, column: 24, scope: !5449)
!5519 = !DILocation(line: 269, column: 3, scope: !5449)
!5520 = !DILocation(line: 269, column: 8, scope: !5449)
!5521 = !DILocation(line: 269, column: 22, scope: !5449)
!5522 = !DILocation(line: 272, column: 8, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 272, column: 6)
!5524 = !DILocation(line: 272, column: 13, scope: !5523)
!5525 = !DILocation(line: 272, column: 7, scope: !5523)
!5526 = !DILocation(line: 272, column: 6, scope: !5449)
!5527 = !DILocation(line: 273, column: 3, scope: !5523)
!5528 = !DILocation(line: 275, column: 45, scope: !5449)
!5529 = !DILocation(line: 275, column: 9, scope: !5449)
!5530 = !DILocation(line: 275, column: 2, scope: !5449)
!5531 = !DILocation(line: 276, column: 1, scope: !5449)
!5532 = distinct !DISubprogram(name: "psy_register_thermal", scope: !3, file: !3, line: 959, type: !2623, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5533 = !DILocalVariable(name: "psy", arg: 1, scope: !5532, file: !3, line: 959, type: !2225)
!5534 = !DILocation(line: 959, column: 54, scope: !5532)
!5535 = !DILocalVariable(name: "i", scope: !5532, file: !3, line: 961, type: !247)
!5536 = !DILocation(line: 961, column: 6, scope: !5532)
!5537 = !DILocalVariable(name: "ret", scope: !5532, file: !3, line: 961, type: !247)
!5538 = !DILocation(line: 961, column: 9, scope: !5532)
!5539 = !DILocation(line: 963, column: 6, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 963, column: 6)
!5541 = !DILocation(line: 963, column: 11, scope: !5540)
!5542 = !DILocation(line: 963, column: 17, scope: !5540)
!5543 = !DILocation(line: 963, column: 6, scope: !5532)
!5544 = !DILocation(line: 964, column: 3, scope: !5540)
!5545 = !DILocation(line: 967, column: 9, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 967, column: 2)
!5547 = !DILocation(line: 967, column: 7, scope: !5546)
!5548 = !DILocation(line: 967, column: 14, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 967, column: 2)
!5550 = !DILocation(line: 967, column: 18, scope: !5549)
!5551 = !DILocation(line: 967, column: 23, scope: !5549)
!5552 = !DILocation(line: 967, column: 29, scope: !5549)
!5553 = !DILocation(line: 967, column: 16, scope: !5549)
!5554 = !DILocation(line: 967, column: 2, scope: !5546)
!5555 = !DILocation(line: 968, column: 7, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 968, column: 7)
!5557 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 967, column: 50)
!5558 = !DILocation(line: 968, column: 12, scope: !5556)
!5559 = !DILocation(line: 968, column: 18, scope: !5556)
!5560 = !DILocation(line: 968, column: 29, scope: !5556)
!5561 = !DILocation(line: 968, column: 32, scope: !5556)
!5562 = !DILocation(line: 968, column: 7, scope: !5557)
!5563 = !DILocation(line: 969, column: 44, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 968, column: 59)
!5565 = !DILocation(line: 969, column: 49, scope: !5564)
!5566 = !DILocation(line: 969, column: 55, scope: !5564)
!5567 = !DILocation(line: 970, column: 12, scope: !5564)
!5568 = !DILocation(line: 969, column: 15, scope: !5564)
!5569 = !DILocation(line: 969, column: 4, scope: !5564)
!5570 = !DILocation(line: 969, column: 9, scope: !5564)
!5571 = !DILocation(line: 969, column: 13, scope: !5564)
!5572 = !DILocation(line: 971, column: 15, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 971, column: 8)
!5574 = !DILocation(line: 971, column: 20, scope: !5573)
!5575 = !DILocation(line: 971, column: 8, scope: !5573)
!5576 = !DILocation(line: 971, column: 8, scope: !5564)
!5577 = !DILocation(line: 972, column: 20, scope: !5573)
!5578 = !DILocation(line: 972, column: 25, scope: !5573)
!5579 = !DILocation(line: 972, column: 12, scope: !5573)
!5580 = !DILocation(line: 972, column: 5, scope: !5573)
!5581 = !DILocation(line: 973, column: 37, scope: !5564)
!5582 = !DILocation(line: 973, column: 42, scope: !5564)
!5583 = !DILocation(line: 973, column: 10, scope: !5564)
!5584 = !DILocation(line: 973, column: 8, scope: !5564)
!5585 = !DILocation(line: 974, column: 8, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 974, column: 8)
!5587 = !DILocation(line: 974, column: 8, scope: !5564)
!5588 = !DILocation(line: 975, column: 36, scope: !5586)
!5589 = !DILocation(line: 975, column: 41, scope: !5586)
!5590 = !DILocation(line: 975, column: 5, scope: !5586)
!5591 = !DILocation(line: 976, column: 11, scope: !5564)
!5592 = !DILocation(line: 976, column: 4, scope: !5564)
!5593 = !DILocation(line: 978, column: 2, scope: !5557)
!5594 = !DILocation(line: 967, column: 46, scope: !5549)
!5595 = !DILocation(line: 967, column: 2, scope: !5549)
!5596 = distinct !{!5596, !5554, !5597}
!5597 = !DILocation(line: 978, column: 2, scope: !5546)
!5598 = !DILocation(line: 979, column: 2, scope: !5532)
!5599 = !DILocation(line: 980, column: 1, scope: !5532)
!5600 = distinct !DISubprogram(name: "psy_register_cooler", scope: !3, file: !3, line: 1047, type: !2623, scopeLine: 1048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5601 = !DILocalVariable(name: "psy", arg: 1, scope: !5600, file: !3, line: 1047, type: !2225)
!5602 = !DILocation(line: 1047, column: 53, scope: !5600)
!5603 = !DILocalVariable(name: "i", scope: !5600, file: !3, line: 1049, type: !247)
!5604 = !DILocation(line: 1049, column: 6, scope: !5600)
!5605 = !DILocation(line: 1052, column: 9, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 1052, column: 2)
!5607 = !DILocation(line: 1052, column: 7, scope: !5606)
!5608 = !DILocation(line: 1052, column: 14, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5606, file: !3, line: 1052, column: 2)
!5610 = !DILocation(line: 1052, column: 18, scope: !5609)
!5611 = !DILocation(line: 1052, column: 23, scope: !5609)
!5612 = !DILocation(line: 1052, column: 29, scope: !5609)
!5613 = !DILocation(line: 1052, column: 16, scope: !5609)
!5614 = !DILocation(line: 1052, column: 2, scope: !5606)
!5615 = !DILocation(line: 1053, column: 7, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 1053, column: 7)
!5617 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 1052, column: 50)
!5618 = !DILocation(line: 1053, column: 12, scope: !5616)
!5619 = !DILocation(line: 1053, column: 18, scope: !5616)
!5620 = !DILocation(line: 1053, column: 29, scope: !5616)
!5621 = !DILocation(line: 1053, column: 32, scope: !5616)
!5622 = !DILocation(line: 1053, column: 7, scope: !5617)
!5623 = !DILocation(line: 1056, column: 16, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 1054, column: 45)
!5625 = !DILocation(line: 1056, column: 21, scope: !5624)
!5626 = !DILocation(line: 1056, column: 27, scope: !5624)
!5627 = !DILocation(line: 1057, column: 8, scope: !5624)
!5628 = !DILocation(line: 1055, column: 15, scope: !5624)
!5629 = !DILocation(line: 1055, column: 4, scope: !5624)
!5630 = !DILocation(line: 1055, column: 9, scope: !5624)
!5631 = !DILocation(line: 1055, column: 13, scope: !5624)
!5632 = !DILocation(line: 1058, column: 27, scope: !5624)
!5633 = !DILocation(line: 1058, column: 32, scope: !5624)
!5634 = !DILocation(line: 1058, column: 11, scope: !5624)
!5635 = !DILocation(line: 1058, column: 4, scope: !5624)
!5636 = !DILocation(line: 1060, column: 2, scope: !5617)
!5637 = !DILocation(line: 1052, column: 46, scope: !5609)
!5638 = !DILocation(line: 1052, column: 2, scope: !5609)
!5639 = distinct !{!5639, !5614, !5640}
!5640 = !DILocation(line: 1060, column: 2, scope: !5606)
!5641 = !DILocation(line: 1061, column: 2, scope: !5600)
!5642 = !DILocation(line: 1062, column: 1, scope: !5600)
!5643 = distinct !DISubprogram(name: "power_supply_create_triggers", scope: !4688, file: !4688, line: 37, type: !2623, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5644 = !DILocalVariable(name: "psy", arg: 1, scope: !5643, file: !4688, line: 37, type: !2225)
!5645 = !DILocation(line: 37, column: 69, scope: !5643)
!5646 = !DILocation(line: 38, column: 3, scope: !5643)
!5647 = distinct !DISubprogram(name: "queue_delayed_work", scope: !191, file: !191, line: 518, type: !5648, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!293, !2284, !5650, !252}
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!5651 = !DILocalVariable(name: "wq", arg: 1, scope: !5647, file: !191, line: 518, type: !2284)
!5652 = !DILocation(line: 518, column: 64, scope: !5647)
!5653 = !DILocalVariable(name: "dwork", arg: 2, scope: !5647, file: !191, line: 519, type: !5650)
!5654 = !DILocation(line: 519, column: 32, scope: !5647)
!5655 = !DILocalVariable(name: "delay", arg: 3, scope: !5647, file: !191, line: 520, type: !252)
!5656 = !DILocation(line: 520, column: 25, scope: !5647)
!5657 = !DILocation(line: 522, column: 49, scope: !5647)
!5658 = !DILocation(line: 522, column: 53, scope: !5647)
!5659 = !DILocation(line: 522, column: 60, scope: !5647)
!5660 = !DILocation(line: 522, column: 9, scope: !5647)
!5661 = !DILocation(line: 522, column: 2, scope: !5647)
!5662 = distinct !DISubprogram(name: "get_order", scope: !5663, file: !5663, line: 29, type: !5664, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5663 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!247, !252}
!5666 = !DILocalVariable(name: "x", arg: 1, scope: !5667, file: !5668, line: 366, type: !484)
!5667 = distinct !DISubprogram(name: "fls64", scope: !5668, file: !5668, line: 366, type: !5669, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5668 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!247, !484}
!5671 = !DILocation(line: 366, column: 40, scope: !5667, inlinedAt: !5672)
!5672 = distinct !DILocation(line: 46, column: 9, scope: !5662)
!5673 = !DILocalVariable(name: "bitpos", scope: !5667, file: !5668, line: 368, type: !247)
!5674 = !DILocation(line: 368, column: 6, scope: !5667, inlinedAt: !5672)
!5675 = !DILocalVariable(name: "size", arg: 1, scope: !5662, file: !5663, line: 29, type: !252)
!5676 = !DILocation(line: 29, column: 63, scope: !5662)
!5677 = !DILocation(line: 31, column: 27, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5662, file: !5663, line: 31, column: 6)
!5679 = !DILocation(line: 31, column: 6, scope: !5678)
!5680 = !DILocation(line: 31, column: 6, scope: !5662)
!5681 = !DILocation(line: 32, column: 8, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !5663, line: 32, column: 7)
!5683 = distinct !DILexicalBlock(scope: !5678, file: !5663, line: 31, column: 34)
!5684 = !DILocation(line: 32, column: 7, scope: !5683)
!5685 = !DILocation(line: 33, column: 4, scope: !5682)
!5686 = !DILocation(line: 35, column: 7, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5683, file: !5663, line: 35, column: 7)
!5688 = !DILocation(line: 35, column: 12, scope: !5687)
!5689 = !DILocation(line: 35, column: 7, scope: !5683)
!5690 = !DILocation(line: 36, column: 4, scope: !5687)
!5691 = !DILocation(line: 38, column: 10, scope: !5683)
!5692 = !DILocation(line: 38, column: 28, scope: !5683)
!5693 = !DILocation(line: 38, column: 41, scope: !5683)
!5694 = !DILocation(line: 38, column: 3, scope: !5683)
!5695 = !DILocation(line: 41, column: 6, scope: !5662)
!5696 = !DILocation(line: 42, column: 7, scope: !5662)
!5697 = !DILocation(line: 46, column: 15, scope: !5662)
!5698 = !DILocation(line: 374, column: 2, scope: !5667, inlinedAt: !5672)
!5699 = !DILocation(line: 376, column: 14, scope: !5667, inlinedAt: !5672)
!5700 = !{i32 334250}
!5701 = !DILocation(line: 377, column: 9, scope: !5667, inlinedAt: !5672)
!5702 = !DILocation(line: 377, column: 16, scope: !5667, inlinedAt: !5672)
!5703 = !DILocation(line: 46, column: 2, scope: !5662)
!5704 = !DILocation(line: 48, column: 1, scope: !5662)
!5705 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5706, file: !5706, line: 30, type: !5707, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5706 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!247, !483}
!5709 = !DILocation(line: 366, column: 40, scope: !5667, inlinedAt: !5710)
!5710 = distinct !DILocation(line: 32, column: 9, scope: !5705)
!5711 = !DILocation(line: 368, column: 6, scope: !5667, inlinedAt: !5710)
!5712 = !DILocalVariable(name: "n", arg: 1, scope: !5705, file: !5706, line: 30, type: !483)
!5713 = !DILocation(line: 30, column: 21, scope: !5705)
!5714 = !DILocation(line: 32, column: 15, scope: !5705)
!5715 = !DILocation(line: 374, column: 2, scope: !5667, inlinedAt: !5710)
!5716 = !DILocation(line: 376, column: 14, scope: !5667, inlinedAt: !5710)
!5717 = !DILocation(line: 377, column: 9, scope: !5667, inlinedAt: !5710)
!5718 = !DILocation(line: 377, column: 16, scope: !5667, inlinedAt: !5710)
!5719 = !DILocation(line: 32, column: 18, scope: !5705)
!5720 = !DILocation(line: 32, column: 2, scope: !5705)
!5721 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1322, file: !1322, line: 137, type: !5722, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{!256, !1253, !301, !412, !245}
!5724 = !DILocalVariable(name: "s", arg: 1, scope: !5721, file: !1322, line: 137, type: !1253)
!5725 = !DILocation(line: 137, column: 54, scope: !5721)
!5726 = !DILocalVariable(name: "object", arg: 2, scope: !5721, file: !1322, line: 137, type: !301)
!5727 = !DILocation(line: 137, column: 69, scope: !5721)
!5728 = !DILocalVariable(name: "size", arg: 3, scope: !5721, file: !1322, line: 138, type: !412)
!5729 = !DILocation(line: 138, column: 12, scope: !5721)
!5730 = !DILocalVariable(name: "flags", arg: 4, scope: !5721, file: !1322, line: 138, type: !245)
!5731 = !DILocation(line: 138, column: 24, scope: !5721)
!5732 = !DILocation(line: 140, column: 17, scope: !5721)
!5733 = !DILocation(line: 140, column: 2, scope: !5721)
!5734 = distinct !DISubprogram(name: "__power_supply_changed_work", scope: !3, file: !3, line: 63, type: !2650, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5735 = !DILocalVariable(name: "dev", arg: 1, scope: !5734, file: !3, line: 63, type: !1788)
!5736 = !DILocation(line: 63, column: 55, scope: !5734)
!5737 = !DILocalVariable(name: "data", arg: 2, scope: !5734, file: !3, line: 63, type: !256)
!5738 = !DILocation(line: 63, column: 66, scope: !5734)
!5739 = !DILocalVariable(name: "psy", scope: !5734, file: !3, line: 65, type: !2225)
!5740 = !DILocation(line: 65, column: 23, scope: !5734)
!5741 = !DILocation(line: 65, column: 29, scope: !5734)
!5742 = !DILocalVariable(name: "pst", scope: !5734, file: !3, line: 66, type: !2225)
!5743 = !DILocation(line: 66, column: 23, scope: !5734)
!5744 = !DILocation(line: 66, column: 45, scope: !5734)
!5745 = !DILocation(line: 66, column: 29, scope: !5734)
!5746 = !DILocation(line: 68, column: 36, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 68, column: 6)
!5748 = !DILocation(line: 68, column: 41, scope: !5747)
!5749 = !DILocation(line: 68, column: 6, scope: !5747)
!5750 = !DILocation(line: 68, column: 6, scope: !5734)
!5751 = !DILocation(line: 69, column: 7, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 69, column: 7)
!5753 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 68, column: 47)
!5754 = !DILocation(line: 69, column: 12, scope: !5752)
!5755 = !DILocation(line: 69, column: 18, scope: !5752)
!5756 = !DILocation(line: 69, column: 7, scope: !5753)
!5757 = !DILocation(line: 70, column: 4, scope: !5752)
!5758 = !DILocation(line: 70, column: 9, scope: !5752)
!5759 = !DILocation(line: 70, column: 15, scope: !5752)
!5760 = !DILocation(line: 70, column: 38, scope: !5752)
!5761 = !DILocation(line: 71, column: 2, scope: !5753)
!5762 = !DILocation(line: 73, column: 2, scope: !5734)
!5763 = distinct !DISubprogram(name: "power_supply_update_leds", scope: !4688, file: !4688, line: 36, type: !2264, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5764 = !DILocalVariable(name: "psy", arg: 1, scope: !5763, file: !4688, line: 36, type: !2225)
!5765 = !DILocation(line: 36, column: 66, scope: !5763)
!5766 = !DILocation(line: 36, column: 72, scope: !5763)
!5767 = distinct !DISubprogram(name: "power_supply_find_supply_from_node", scope: !3, file: !3, line: 210, type: !5768, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!247, !257}
!5770 = !DILocalVariable(name: "supply_node", arg: 1, scope: !5767, file: !3, line: 210, type: !257)
!5771 = !DILocation(line: 210, column: 67, scope: !5767)
!5772 = !DILocalVariable(name: "error", scope: !5767, file: !3, line: 212, type: !247)
!5773 = !DILocation(line: 212, column: 6, scope: !5767)
!5774 = !DILocation(line: 224, column: 32, scope: !5767)
!5775 = !DILocation(line: 224, column: 58, scope: !5767)
!5776 = !DILocation(line: 224, column: 10, scope: !5767)
!5777 = !DILocation(line: 224, column: 8, scope: !5767)
!5778 = !DILocation(line: 227, column: 9, scope: !5767)
!5779 = !DILocation(line: 227, column: 18, scope: !5767)
!5780 = !DILocation(line: 227, column: 24, scope: !5767)
!5781 = !DILocation(line: 227, column: 35, scope: !5767)
!5782 = !DILocation(line: 227, column: 2, scope: !5767)
!5783 = distinct !DISubprogram(name: "devm_kzalloc", scope: !135, file: !135, line: 215, type: !5784, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5784 = !DISubroutineType(types: !5785)
!5785 = !{!256, !1788, !412, !245}
!5786 = !DILocalVariable(name: "dev", arg: 1, scope: !5783, file: !135, line: 215, type: !1788)
!5787 = !DILocation(line: 215, column: 49, scope: !5783)
!5788 = !DILocalVariable(name: "size", arg: 2, scope: !5783, file: !135, line: 215, type: !412)
!5789 = !DILocation(line: 215, column: 61, scope: !5783)
!5790 = !DILocalVariable(name: "gfp", arg: 3, scope: !5783, file: !135, line: 215, type: !245)
!5791 = !DILocation(line: 215, column: 73, scope: !5783)
!5792 = !DILocation(line: 217, column: 22, scope: !5783)
!5793 = !DILocation(line: 217, column: 27, scope: !5783)
!5794 = !DILocation(line: 217, column: 33, scope: !5783)
!5795 = !DILocation(line: 217, column: 37, scope: !5783)
!5796 = !DILocation(line: 217, column: 9, scope: !5783)
!5797 = !DILocation(line: 217, column: 2, scope: !5783)
!5798 = distinct !DISubprogram(name: "power_supply_populate_supplied_from", scope: !3, file: !3, line: 185, type: !2623, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5799 = !DILocalVariable(name: "psy", arg: 1, scope: !5798, file: !3, line: 185, type: !2225)
!5800 = !DILocation(line: 185, column: 69, scope: !5798)
!5801 = !DILocalVariable(name: "error", scope: !5798, file: !3, line: 187, type: !247)
!5802 = !DILocation(line: 187, column: 6, scope: !5798)
!5803 = !DILocation(line: 189, column: 32, scope: !5798)
!5804 = !DILocation(line: 189, column: 58, scope: !5798)
!5805 = !DILocation(line: 189, column: 10, scope: !5798)
!5806 = !DILocation(line: 189, column: 8, scope: !5798)
!5807 = !DILocation(line: 194, column: 9, scope: !5798)
!5808 = !DILocation(line: 194, column: 2, scope: !5798)
!5809 = distinct !DISubprogram(name: "__power_supply_find_supply_from_node", scope: !3, file: !3, line: 197, type: !2650, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5810 = !DILocalVariable(name: "dev", arg: 1, scope: !5809, file: !3, line: 197, type: !1788)
!5811 = !DILocation(line: 197, column: 65, scope: !5809)
!5812 = !DILocalVariable(name: "data", arg: 2, scope: !5809, file: !3, line: 198, type: !256)
!5813 = !DILocation(line: 198, column: 14, scope: !5809)
!5814 = !DILocalVariable(name: "np", scope: !5809, file: !3, line: 200, type: !257)
!5815 = !DILocation(line: 200, column: 22, scope: !5809)
!5816 = !DILocation(line: 200, column: 27, scope: !5809)
!5817 = !DILocalVariable(name: "epsy", scope: !5809, file: !3, line: 201, type: !2225)
!5818 = !DILocation(line: 201, column: 23, scope: !5809)
!5819 = !DILocation(line: 201, column: 46, scope: !5809)
!5820 = !DILocation(line: 201, column: 30, scope: !5809)
!5821 = !DILocation(line: 204, column: 6, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 204, column: 6)
!5823 = !DILocation(line: 204, column: 12, scope: !5822)
!5824 = !DILocation(line: 204, column: 23, scope: !5822)
!5825 = !DILocation(line: 204, column: 20, scope: !5822)
!5826 = !DILocation(line: 204, column: 6, scope: !5809)
!5827 = !DILocation(line: 205, column: 3, scope: !5822)
!5828 = !DILocation(line: 207, column: 2, scope: !5809)
!5829 = !DILocation(line: 208, column: 1, scope: !5809)
!5830 = distinct !DISubprogram(name: "__power_supply_populate_supplied_from", scope: !3, file: !3, line: 158, type: !2650, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5831 = !DILocalVariable(name: "dev", arg: 1, scope: !5830, file: !3, line: 158, type: !1788)
!5832 = !DILocation(line: 158, column: 65, scope: !5830)
!5833 = !DILocalVariable(name: "data", arg: 2, scope: !5830, file: !3, line: 159, type: !256)
!5834 = !DILocation(line: 159, column: 14, scope: !5830)
!5835 = !DILocalVariable(name: "psy", scope: !5830, file: !3, line: 161, type: !2225)
!5836 = !DILocation(line: 161, column: 23, scope: !5830)
!5837 = !DILocation(line: 161, column: 29, scope: !5830)
!5838 = !DILocalVariable(name: "epsy", scope: !5830, file: !3, line: 162, type: !2225)
!5839 = !DILocation(line: 162, column: 23, scope: !5830)
!5840 = !DILocation(line: 162, column: 46, scope: !5830)
!5841 = !DILocation(line: 162, column: 30, scope: !5830)
!5842 = !DILocalVariable(name: "np", scope: !5830, file: !3, line: 163, type: !257)
!5843 = !DILocation(line: 163, column: 22, scope: !5830)
!5844 = !DILocalVariable(name: "i", scope: !5830, file: !3, line: 164, type: !247)
!5845 = !DILocation(line: 164, column: 6, scope: !5830)
!5846 = !DILocation(line: 166, column: 2, scope: !5830)
!5847 = !DILocation(line: 167, column: 25, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 166, column: 5)
!5849 = !DILocation(line: 167, column: 30, scope: !5848)
!5850 = !DILocation(line: 167, column: 58, scope: !5848)
!5851 = !DILocation(line: 167, column: 8, scope: !5848)
!5852 = !DILocation(line: 167, column: 6, scope: !5848)
!5853 = !DILocation(line: 168, column: 8, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 168, column: 7)
!5855 = !DILocation(line: 168, column: 7, scope: !5848)
!5856 = !DILocation(line: 169, column: 4, scope: !5854)
!5857 = !DILocation(line: 171, column: 7, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 171, column: 7)
!5859 = !DILocation(line: 171, column: 13, scope: !5858)
!5860 = !DILocation(line: 171, column: 19, scope: !5858)
!5861 = !DILocation(line: 171, column: 10, scope: !5858)
!5862 = !DILocation(line: 171, column: 7, scope: !5848)
!5863 = !DILocation(line: 172, column: 4, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 171, column: 28)
!5865 = !DILocation(line: 174, column: 38, scope: !5864)
!5866 = !DILocation(line: 174, column: 44, scope: !5864)
!5867 = !DILocation(line: 174, column: 50, scope: !5864)
!5868 = !DILocation(line: 174, column: 4, scope: !5864)
!5869 = !DILocation(line: 174, column: 9, scope: !5864)
!5870 = !DILocation(line: 174, column: 23, scope: !5864)
!5871 = !DILocation(line: 174, column: 24, scope: !5864)
!5872 = !DILocation(line: 174, column: 28, scope: !5864)
!5873 = !DILocation(line: 175, column: 4, scope: !5864)
!5874 = !DILocation(line: 175, column: 9, scope: !5864)
!5875 = !DILocation(line: 175, column: 21, scope: !5864)
!5876 = !DILocation(line: 176, column: 16, scope: !5864)
!5877 = !DILocation(line: 176, column: 4, scope: !5864)
!5878 = !DILocation(line: 177, column: 4, scope: !5864)
!5879 = !DILocation(line: 179, column: 15, scope: !5848)
!5880 = !DILocation(line: 179, column: 3, scope: !5848)
!5881 = !DILocation(line: 180, column: 2, scope: !5848)
!5882 = !DILocation(line: 180, column: 11, scope: !5830)
!5883 = distinct !{!5883, !5846, !5884}
!5884 = !DILocation(line: 180, column: 13, scope: !5830)
!5885 = !DILocation(line: 182, column: 2, scope: !5830)
!5886 = distinct !DISubprogram(name: "PTR_ERR", scope: !3034, file: !3034, line: 29, type: !5887, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!192, !301}
!5889 = !DILocalVariable(name: "ptr", arg: 1, scope: !5886, file: !3034, line: 29, type: !301)
!5890 = !DILocation(line: 29, column: 61, scope: !5886)
!5891 = !DILocation(line: 31, column: 16, scope: !5886)
!5892 = !DILocation(line: 31, column: 9, scope: !5886)
!5893 = !DILocation(line: 31, column: 2, scope: !5886)
!5894 = distinct !DISubprogram(name: "power_supply_read_temp", scope: !3, file: !3, line: 936, type: !2371, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5895 = !DILocalVariable(name: "tzd", arg: 1, scope: !5894, file: !3, line: 936, type: !2293)
!5896 = !DILocation(line: 936, column: 63, scope: !5894)
!5897 = !DILocalVariable(name: "temp", arg: 2, scope: !5894, file: !3, line: 937, type: !950)
!5898 = !DILocation(line: 937, column: 8, scope: !5894)
!5899 = !DILocalVariable(name: "psy", scope: !5894, file: !3, line: 939, type: !2225)
!5900 = !DILocation(line: 939, column: 23, scope: !5894)
!5901 = !DILocalVariable(name: "val", scope: !5894, file: !3, line: 940, type: !2248)
!5902 = !DILocation(line: 940, column: 29, scope: !5894)
!5903 = !DILocalVariable(name: "ret", scope: !5894, file: !3, line: 941, type: !247)
!5904 = !DILocation(line: 941, column: 6, scope: !5894)
!5905 = !DILocalVariable(name: "__ret_warn_on", scope: !5906, file: !3, line: 943, type: !247)
!5906 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 943, column: 2)
!5907 = !DILocation(line: 943, column: 2, scope: !5906)
!5908 = !DILocation(line: 943, column: 2, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 943, column: 2)
!5910 = !DILocation(line: 943, column: 2, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 943, column: 2)
!5912 = !DILocation(line: 943, column: 2, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 943, column: 2)
!5914 = !DILocation(line: 943, column: 2, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 943, column: 2)
!5916 = !{i32 -2143325654, i32 -2143325625, i32 -2143325579, i32 -2143325521, i32 -2143325467, i32 -2143325413, i32 -2143325358, i32 -2143325327}
!5917 = !DILocation(line: 943, column: 2, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 943, column: 2)
!5919 = !{i32 -2143324905, i32 -2143324898, i32 -2143324846, i32 -2143324815, i32 -2143324785}
!5920 = !DILocation(line: 943, column: 2, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 943, column: 2)
!5922 = !DILocation(line: 944, column: 8, scope: !5894)
!5923 = !DILocation(line: 944, column: 13, scope: !5894)
!5924 = !DILocation(line: 944, column: 6, scope: !5894)
!5925 = !DILocation(line: 945, column: 34, scope: !5894)
!5926 = !DILocation(line: 945, column: 8, scope: !5894)
!5927 = !DILocation(line: 945, column: 6, scope: !5894)
!5928 = !DILocation(line: 946, column: 6, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 946, column: 6)
!5930 = !DILocation(line: 946, column: 6, scope: !5894)
!5931 = !DILocation(line: 947, column: 10, scope: !5929)
!5932 = !DILocation(line: 947, column: 3, scope: !5929)
!5933 = !DILocation(line: 950, column: 14, scope: !5894)
!5934 = !DILocation(line: 950, column: 21, scope: !5894)
!5935 = !DILocation(line: 950, column: 3, scope: !5894)
!5936 = !DILocation(line: 950, column: 8, scope: !5894)
!5937 = !DILocation(line: 952, column: 9, scope: !5894)
!5938 = !DILocation(line: 952, column: 2, scope: !5894)
!5939 = !DILocation(line: 953, column: 1, scope: !5894)
!5940 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !3034, file: !3034, line: 57, type: !5941, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!247, !301}
!5943 = !DILocalVariable(name: "ptr", arg: 1, scope: !5940, file: !3034, line: 57, type: !301)
!5944 = !DILocation(line: 57, column: 68, scope: !5940)
!5945 = !DILocation(line: 59, column: 13, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5940, file: !3034, line: 59, column: 6)
!5947 = !DILocation(line: 59, column: 6, scope: !5946)
!5948 = !DILocation(line: 59, column: 6, scope: !5940)
!5949 = !DILocation(line: 60, column: 18, scope: !5946)
!5950 = !DILocation(line: 60, column: 10, scope: !5946)
!5951 = !DILocation(line: 60, column: 3, scope: !5946)
!5952 = !DILocation(line: 62, column: 3, scope: !5946)
!5953 = !DILocation(line: 63, column: 1, scope: !5940)
!5954 = distinct !DISubprogram(name: "ps_get_max_charge_cntl_limit", scope: !3, file: !3, line: 990, type: !2344, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5955 = !DILocalVariable(name: "tcd", arg: 1, scope: !5954, file: !3, line: 990, type: !2328)
!5956 = !DILocation(line: 990, column: 72, scope: !5954)
!5957 = !DILocalVariable(name: "state", arg: 2, scope: !5954, file: !3, line: 991, type: !2346)
!5958 = !DILocation(line: 991, column: 21, scope: !5954)
!5959 = !DILocalVariable(name: "psy", scope: !5954, file: !3, line: 993, type: !2225)
!5960 = !DILocation(line: 993, column: 23, scope: !5954)
!5961 = !DILocalVariable(name: "val", scope: !5954, file: !3, line: 994, type: !2248)
!5962 = !DILocation(line: 994, column: 29, scope: !5954)
!5963 = !DILocalVariable(name: "ret", scope: !5954, file: !3, line: 995, type: !247)
!5964 = !DILocation(line: 995, column: 6, scope: !5954)
!5965 = !DILocation(line: 997, column: 8, scope: !5954)
!5966 = !DILocation(line: 997, column: 13, scope: !5954)
!5967 = !DILocation(line: 997, column: 6, scope: !5954)
!5968 = !DILocation(line: 998, column: 34, scope: !5954)
!5969 = !DILocation(line: 998, column: 8, scope: !5954)
!5970 = !DILocation(line: 998, column: 6, scope: !5954)
!5971 = !DILocation(line: 1000, column: 6, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 1000, column: 6)
!5973 = !DILocation(line: 1000, column: 6, scope: !5954)
!5974 = !DILocation(line: 1001, column: 10, scope: !5972)
!5975 = !DILocation(line: 1001, column: 3, scope: !5972)
!5976 = !DILocation(line: 1003, column: 15, scope: !5954)
!5977 = !DILocation(line: 1003, column: 11, scope: !5954)
!5978 = !DILocation(line: 1003, column: 3, scope: !5954)
!5979 = !DILocation(line: 1003, column: 9, scope: !5954)
!5980 = !DILocation(line: 1005, column: 9, scope: !5954)
!5981 = !DILocation(line: 1005, column: 2, scope: !5954)
!5982 = !DILocation(line: 1006, column: 1, scope: !5954)
!5983 = distinct !DISubprogram(name: "ps_get_cur_charge_cntl_limit", scope: !3, file: !3, line: 1008, type: !2344, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!5984 = !DILocalVariable(name: "tcd", arg: 1, scope: !5983, file: !3, line: 1008, type: !2328)
!5985 = !DILocation(line: 1008, column: 72, scope: !5983)
!5986 = !DILocalVariable(name: "state", arg: 2, scope: !5983, file: !3, line: 1009, type: !2346)
!5987 = !DILocation(line: 1009, column: 21, scope: !5983)
!5988 = !DILocalVariable(name: "psy", scope: !5983, file: !3, line: 1011, type: !2225)
!5989 = !DILocation(line: 1011, column: 23, scope: !5983)
!5990 = !DILocalVariable(name: "val", scope: !5983, file: !3, line: 1012, type: !2248)
!5991 = !DILocation(line: 1012, column: 29, scope: !5983)
!5992 = !DILocalVariable(name: "ret", scope: !5983, file: !3, line: 1013, type: !247)
!5993 = !DILocation(line: 1013, column: 6, scope: !5983)
!5994 = !DILocation(line: 1015, column: 8, scope: !5983)
!5995 = !DILocation(line: 1015, column: 13, scope: !5983)
!5996 = !DILocation(line: 1015, column: 6, scope: !5983)
!5997 = !DILocation(line: 1016, column: 34, scope: !5983)
!5998 = !DILocation(line: 1016, column: 8, scope: !5983)
!5999 = !DILocation(line: 1016, column: 6, scope: !5983)
!6000 = !DILocation(line: 1018, column: 6, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 1018, column: 6)
!6002 = !DILocation(line: 1018, column: 6, scope: !5983)
!6003 = !DILocation(line: 1019, column: 10, scope: !6001)
!6004 = !DILocation(line: 1019, column: 3, scope: !6001)
!6005 = !DILocation(line: 1021, column: 15, scope: !5983)
!6006 = !DILocation(line: 1021, column: 11, scope: !5983)
!6007 = !DILocation(line: 1021, column: 3, scope: !5983)
!6008 = !DILocation(line: 1021, column: 9, scope: !5983)
!6009 = !DILocation(line: 1023, column: 9, scope: !5983)
!6010 = !DILocation(line: 1023, column: 2, scope: !5983)
!6011 = !DILocation(line: 1024, column: 1, scope: !5983)
!6012 = distinct !DISubprogram(name: "ps_set_cur_charge_cntl_limit", scope: !3, file: !3, line: 1026, type: !2350, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!6013 = !DILocalVariable(name: "tcd", arg: 1, scope: !6012, file: !3, line: 1026, type: !2328)
!6014 = !DILocation(line: 1026, column: 72, scope: !6012)
!6015 = !DILocalVariable(name: "state", arg: 2, scope: !6012, file: !3, line: 1027, type: !252)
!6016 = !DILocation(line: 1027, column: 20, scope: !6012)
!6017 = !DILocalVariable(name: "psy", scope: !6012, file: !3, line: 1029, type: !2225)
!6018 = !DILocation(line: 1029, column: 23, scope: !6012)
!6019 = !DILocalVariable(name: "val", scope: !6012, file: !3, line: 1030, type: !2248)
!6020 = !DILocation(line: 1030, column: 29, scope: !6012)
!6021 = !DILocalVariable(name: "ret", scope: !6012, file: !3, line: 1031, type: !247)
!6022 = !DILocation(line: 1031, column: 6, scope: !6012)
!6023 = !DILocation(line: 1033, column: 8, scope: !6012)
!6024 = !DILocation(line: 1033, column: 13, scope: !6012)
!6025 = !DILocation(line: 1033, column: 6, scope: !6012)
!6026 = !DILocation(line: 1034, column: 15, scope: !6012)
!6027 = !DILocation(line: 1034, column: 6, scope: !6012)
!6028 = !DILocation(line: 1034, column: 13, scope: !6012)
!6029 = !DILocation(line: 1035, column: 8, scope: !6012)
!6030 = !DILocation(line: 1035, column: 13, scope: !6012)
!6031 = !DILocation(line: 1035, column: 19, scope: !6012)
!6032 = !DILocation(line: 1035, column: 32, scope: !6012)
!6033 = !DILocation(line: 1035, column: 6, scope: !6012)
!6034 = !DILocation(line: 1038, column: 9, scope: !6012)
!6035 = !DILocation(line: 1038, column: 2, scope: !6012)
!6036 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4190, file: !4190, line: 308, type: !4191, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!6037 = !DILocalVariable(name: "m", arg: 1, scope: !6036, file: !4190, line: 308, type: !4193)
!6038 = !DILocation(line: 308, column: 66, scope: !6036)
!6039 = !DILocation(line: 310, column: 10, scope: !6036)
!6040 = !DILocation(line: 310, column: 12, scope: !6036)
!6041 = !DILocation(line: 310, column: 34, scope: !6036)
!6042 = !DILocation(line: 310, column: 39, scope: !6036)
!6043 = !DILocation(line: 310, column: 2, scope: !6036)
