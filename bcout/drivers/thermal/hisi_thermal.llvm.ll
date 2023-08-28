; ModuleID = '../bcout/drivers/thermal/hisi_thermal.llvm.bc'
source_filename = "drivers/thermal/hisi_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_hisi_thermal_driver_init6:\09\09\09"
module asm ".long\09hisi_thermal_driver_init - .\09\09\09"
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
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.38, %struct.device* }
%union.anon.38 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.thermal_zone_of_device_ops = type { i32 (i8*, i32*)*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)* }
%struct.hisi_thermal_ops = type { i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_data*)* }
%struct.hisi_thermal_sensor = type { %struct.hisi_thermal_data*, %struct.thermal_zone_device*, i8*, i32, i32 }
%struct.hisi_thermal_data = type { %struct.hisi_thermal_ops*, %struct.hisi_thermal_sensor*, %struct.platform_device*, %struct.clk*, i8*, i32 }
%struct.clk = type opaque
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.thermal_attr = type { %struct.device_attribute, [20 x i8] }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_trip = type { %struct.device_node*, i32, i32, i32 }

@__UNIQUE_ID___addressable_hisi_thermal_driver_init159 = internal global i8* bitcast (i32 ()* @hisi_thermal_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@hisi_thermal_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @hisi_thermal_probe, i32 (%struct.platform_device*)* @hisi_thermal_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([3 x %struct.of_device_id], [3 x %struct.of_device_id]* @of_hisi_thermal_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @hisi_thermal_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !154
@__exitcall_hisi_thermal_driver_exit = internal global void ()* @hisi_thermal_driver_exit, section ".exitcall.exit", align 8, !dbg !120
@__UNIQUE_ID_author160 = internal constant [64 x i8] c"hisi_thermal.author=Xinwei Kong <kong.kongxinwei@hisilicon.com>\00", section ".modinfo", align 1, !dbg !127
@__UNIQUE_ID_author161 = internal constant [49 x i8] c"hisi_thermal.author=Leo Yan <leo.yan@linaro.org>\00", section ".modinfo", align 1, !dbg !134
@__UNIQUE_ID_description162 = internal constant [50 x i8] c"hisi_thermal.description=Hisilicon thermal driver\00", section ".modinfo", align 1, !dbg !139
@__UNIQUE_ID_file163 = internal constant [47 x i8] c"hisi_thermal.file=drivers/thermal/hisi_thermal\00", section ".modinfo", align 1, !dbg !144
@__UNIQUE_ID_license164 = internal constant [28 x i8] c"hisi_thermal.license=GPL v2\00", section ".modinfo", align 1, !dbg !149
@.str = private unnamed_addr constant [13 x i8] c"hisi_thermal\00", align 1
@of_hisi_thermal_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,tsensor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.hisi_thermal_ops* @hi6220_ops to i8*) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-tsensor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (%struct.hisi_thermal_ops* @hi3660_ops to i8*) }, %struct.of_device_id zeroinitializer], align 16, !dbg !2285
@hisi_thermal_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @hisi_thermal_suspend, i32 (%struct.device*)* @hisi_thermal_resume, i32 (%struct.device*)* @hisi_thermal_suspend, i32 (%struct.device*)* @hisi_thermal_resume, i32 (%struct.device*)* @hisi_thermal_suspend, i32 (%struct.device*)* @hisi_thermal_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2513
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get io address\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to register thermal sensor: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to request alarm irq: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to setup the sensor: %d\0A\00", align 1
@hisi_of_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { i32 (i8*, i32*)* @hisi_thermal_get_temp, i32 (i8*, i32, i32*)* null, i32 (i8*, i32, i32)* null, i32 (i8*, i32)* null, i32 (i8*, i32, i32)* null }, align 8, !dbg !2262
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to register sensor id %d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"sensor <%d> THERMAL ALARM: %d > %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"sensor <%d> THERMAL ALARM stopped: %d < %d\0A\00", align 1
@hi6220_ops = internal constant %struct.hisi_thermal_ops { i32 (%struct.hisi_thermal_sensor*)* @hi6220_thermal_get_temp, i32 (%struct.hisi_thermal_sensor*)* @hi6220_thermal_enable_sensor, i32 (%struct.hisi_thermal_sensor*)* @hi6220_thermal_disable_sensor, i32 (%struct.hisi_thermal_sensor*)* @hi6220_thermal_irq_handler, i32 (%struct.hisi_thermal_data*)* @hi6220_thermal_probe }, align 8, !dbg !2288
@hi3660_ops = internal constant %struct.hisi_thermal_ops { i32 (%struct.hisi_thermal_sensor*)* @hi3660_thermal_get_temp, i32 (%struct.hisi_thermal_sensor*)* @hi3660_thermal_enable_sensor, i32 (%struct.hisi_thermal_sensor*)* @hi3660_thermal_disable_sensor, i32 (%struct.hisi_thermal_sensor*)* @hi3660_thermal_irq_handler, i32 (%struct.hisi_thermal_data*)* @hi3660_thermal_probe }, align 8, !dbg !2511
@.str.8 = private unnamed_addr constant [12 x i8] c"thermal_clk\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to get thermal clk: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"tsensor_intr\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"tsensor_a73\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"tsensor_a53\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_hisi_thermal_driver_init159 to i8*), i8* bitcast (void ()* @hisi_thermal_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_hisi_thermal_driver_exit to i8*), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_author160, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author161, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_description162, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file163, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_license164, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @hisi_thermal_driver_init() #0 section ".init.text" !dbg !2520 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @hisi_thermal_driver, %struct.module* null) #5, !dbg !2523
  ret i32 %call, !dbg !2523
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @hisi_thermal_driver_exit() #0 section ".exit.text" !dbg !2524 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @hisi_thermal_driver) #5, !dbg !2525
  ret void, !dbg !2525
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hisi_thermal_probe(%struct.platform_device* %pdev) #2 !dbg !2526 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  %dev = alloca %struct.device*, align 8
  %res = alloca %struct.resource*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %sensor = alloca %struct.hisi_thermal_sensor*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2531, metadata !DIExpression()), !dbg !2532
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2533
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2534
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2539, metadata !DIExpression()), !dbg !2540
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2541
  %call = call i8* @devm_kzalloc(%struct.device* %1, i64 48, i32 3264) #5, !dbg !2542
  %2 = bitcast i8* %call to %struct.hisi_thermal_data*, !dbg !2542
  store %struct.hisi_thermal_data* %2, %struct.hisi_thermal_data** %data, align 8, !dbg !2543
  %3 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2544
  %tobool = icmp ne %struct.hisi_thermal_data* %3, null, !dbg !2544
  br i1 %tobool, label %if.end, label %if.then, !dbg !2546

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2547
  br label %return, !dbg !2547

if.end:                                           ; preds = %entry
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2548
  %5 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2549
  %pdev2 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %5, i32 0, i32 2, !dbg !2550
  store %struct.platform_device* %4, %struct.platform_device** %pdev2, align 8, !dbg !2551
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2552
  %7 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2553
  %8 = bitcast %struct.hisi_thermal_data* %7 to i8*, !dbg !2553
  call void @platform_set_drvdata(%struct.platform_device* %6, i8* %8) #5, !dbg !2554
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2555
  %call3 = call i8* @of_device_get_match_data(%struct.device* %9) #5, !dbg !2556
  %10 = bitcast i8* %call3 to %struct.hisi_thermal_ops*, !dbg !2556
  %11 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2557
  %ops = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %11, i32 0, i32 0, !dbg !2558
  store %struct.hisi_thermal_ops* %10, %struct.hisi_thermal_ops** %ops, align 8, !dbg !2559
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2560
  %call4 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 512, i32 0) #5, !dbg !2561
  store %struct.resource* %call4, %struct.resource** %res, align 8, !dbg !2562
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2563
  %14 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2564
  %call5 = call i8* @devm_ioremap_resource(%struct.device* %13, %struct.resource* %14) #5, !dbg !2565
  %15 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2566
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %15, i32 0, i32 4, !dbg !2567
  store i8* %call5, i8** %regs, align 8, !dbg !2568
  %16 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2569
  %regs6 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %16, i32 0, i32 4, !dbg !2571
  %17 = load i8*, i8** %regs6, align 8, !dbg !2571
  %call7 = call zeroext i1 @IS_ERR(i8* %17) #5, !dbg !2572
  br i1 %call7, label %if.then8, label %if.end11, !dbg !2573

if.then8:                                         ; preds = %if.end
  %18 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2574
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2574
  %19 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2576
  %regs9 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %19, i32 0, i32 4, !dbg !2577
  %20 = load i8*, i8** %regs9, align 8, !dbg !2577
  %call10 = call i64 @PTR_ERR(i8* %20) #5, !dbg !2578
  %conv = trunc i64 %call10 to i32, !dbg !2578
  store i32 %conv, i32* %retval, align 4, !dbg !2579
  br label %return, !dbg !2579

if.end11:                                         ; preds = %if.end
  %21 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2580
  %ops12 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %21, i32 0, i32 0, !dbg !2581
  %22 = load %struct.hisi_thermal_ops*, %struct.hisi_thermal_ops** %ops12, align 8, !dbg !2581
  %probe = getelementptr inbounds %struct.hisi_thermal_ops, %struct.hisi_thermal_ops* %22, i32 0, i32 4, !dbg !2582
  %23 = load i32 (%struct.hisi_thermal_data*)*, i32 (%struct.hisi_thermal_data*)** %probe, align 8, !dbg !2582
  %24 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2583
  %call13 = call i32 %23(%struct.hisi_thermal_data* %24) #5, !dbg !2580
  store i32 %call13, i32* %ret, align 4, !dbg !2584
  %25 = load i32, i32* %ret, align 4, !dbg !2585
  %tobool14 = icmp ne i32 %25, 0, !dbg !2585
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2587

if.then15:                                        ; preds = %if.end11
  %26 = load i32, i32* %ret, align 4, !dbg !2588
  store i32 %26, i32* %retval, align 4, !dbg !2589
  br label %return, !dbg !2589

if.end16:                                         ; preds = %if.end11
  store i32 0, i32* %i, align 4, !dbg !2590
  br label %for.cond, !dbg !2592

for.cond:                                         ; preds = %for.inc, %if.end16
  %27 = load i32, i32* %i, align 4, !dbg !2593
  %28 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2595
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %28, i32 0, i32 5, !dbg !2596
  %29 = load i32, i32* %nr_sensors, align 8, !dbg !2596
  %cmp = icmp slt i32 %27, %29, !dbg !2597
  br i1 %cmp, label %for.body, label %for.end, !dbg !2598

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor, metadata !2599, metadata !DIExpression()), !dbg !2601
  %30 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2602
  %sensor18 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %30, i32 0, i32 1, !dbg !2603
  %31 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor18, align 8, !dbg !2603
  %32 = load i32, i32* %i, align 4, !dbg !2604
  %idxprom = sext i32 %32 to i64, !dbg !2602
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %31, i64 %idxprom, !dbg !2602
  store %struct.hisi_thermal_sensor* %arrayidx, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2601
  %33 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2605
  %34 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2606
  %call19 = call i32 @hisi_thermal_register_sensor(%struct.platform_device* %33, %struct.hisi_thermal_sensor* %34) #5, !dbg !2607
  store i32 %call19, i32* %ret, align 4, !dbg !2608
  %35 = load i32, i32* %ret, align 4, !dbg !2609
  %tobool20 = icmp ne i32 %35, 0, !dbg !2609
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !2611

if.then21:                                        ; preds = %for.body
  %36 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2612
  %37 = load i32, i32* %ret, align 4, !dbg !2612
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %37) #6, !dbg !2612
  %38 = load i32, i32* %ret, align 4, !dbg !2614
  store i32 %38, i32* %retval, align 4, !dbg !2615
  br label %return, !dbg !2615

if.end22:                                         ; preds = %for.body
  %39 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2616
  %call23 = call i32 @platform_get_irq(%struct.platform_device* %39, i32 0) #5, !dbg !2617
  store i32 %call23, i32* %ret, align 4, !dbg !2618
  %40 = load i32, i32* %ret, align 4, !dbg !2619
  %cmp24 = icmp slt i32 %40, 0, !dbg !2621
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2622

if.then26:                                        ; preds = %if.end22
  %41 = load i32, i32* %ret, align 4, !dbg !2623
  store i32 %41, i32* %retval, align 4, !dbg !2624
  br label %return, !dbg !2624

if.end27:                                         ; preds = %if.end22
  %42 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2625
  %43 = load i32, i32* %ret, align 4, !dbg !2626
  %44 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2627
  %irq_name = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %44, i32 0, i32 2, !dbg !2628
  %45 = load i8*, i8** %irq_name, align 8, !dbg !2628
  %46 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2629
  %47 = bitcast %struct.hisi_thermal_sensor* %46 to i8*, !dbg !2629
  %call28 = call i32 @devm_request_threaded_irq(%struct.device* %42, i32 %43, i32 (i32, i8*)* null, i32 (i32, i8*)* @hisi_thermal_alarm_irq_thread, i64 8192, i8* %45, i8* %47) #5, !dbg !2630
  store i32 %call28, i32* %ret, align 4, !dbg !2631
  %48 = load i32, i32* %ret, align 4, !dbg !2632
  %cmp29 = icmp slt i32 %48, 0, !dbg !2634
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2635

if.then31:                                        ; preds = %if.end27
  %49 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2636
  %50 = load i32, i32* %ret, align 4, !dbg !2636
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %50) #6, !dbg !2636
  %51 = load i32, i32* %ret, align 4, !dbg !2638
  store i32 %51, i32* %retval, align 4, !dbg !2639
  br label %return, !dbg !2639

if.end32:                                         ; preds = %if.end27
  %52 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2640
  %ops33 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %52, i32 0, i32 0, !dbg !2641
  %53 = load %struct.hisi_thermal_ops*, %struct.hisi_thermal_ops** %ops33, align 8, !dbg !2641
  %enable_sensor = getelementptr inbounds %struct.hisi_thermal_ops, %struct.hisi_thermal_ops* %53, i32 0, i32 1, !dbg !2642
  %54 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %enable_sensor, align 8, !dbg !2642
  %55 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2643
  %call34 = call i32 %54(%struct.hisi_thermal_sensor* %55) #5, !dbg !2640
  store i32 %call34, i32* %ret, align 4, !dbg !2644
  %56 = load i32, i32* %ret, align 4, !dbg !2645
  %tobool35 = icmp ne i32 %56, 0, !dbg !2645
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !2647

if.then36:                                        ; preds = %if.end32
  %57 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2648
  %58 = load i32, i32* %ret, align 4, !dbg !2648
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %58) #6, !dbg !2648
  %59 = load i32, i32* %ret, align 4, !dbg !2650
  store i32 %59, i32* %retval, align 4, !dbg !2651
  br label %return, !dbg !2651

if.end37:                                         ; preds = %if.end32
  %60 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2652
  call void @hisi_thermal_toggle_sensor(%struct.hisi_thermal_sensor* %60, i1 zeroext true) #5, !dbg !2653
  br label %for.inc, !dbg !2654

for.inc:                                          ; preds = %if.end37
  %61 = load i32, i32* %i, align 4, !dbg !2655
  %inc = add i32 %61, 1, !dbg !2655
  store i32 %inc, i32* %i, align 4, !dbg !2655
  br label %for.cond, !dbg !2656, !llvm.loop !2657

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2659
  br label %return, !dbg !2659

return:                                           ; preds = %for.end, %if.then36, %if.then31, %if.then26, %if.then21, %if.then15, %if.then8, %if.then
  %62 = load i32, i32* %retval, align 4, !dbg !2660
  ret i32 %62, !dbg !2660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hisi_thermal_remove(%struct.platform_device* %pdev) #2 !dbg !2661 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  %i = alloca i32, align 4
  %sensor = alloca %struct.hisi_thermal_sensor*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !2664, metadata !DIExpression()), !dbg !2665
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2666
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !2667
  %1 = bitcast i8* %call to %struct.hisi_thermal_data*, !dbg !2667
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !2665
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2668, metadata !DIExpression()), !dbg !2669
  store i32 0, i32* %i, align 4, !dbg !2670
  br label %for.cond, !dbg !2672

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !2673
  %3 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2675
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %3, i32 0, i32 5, !dbg !2676
  %4 = load i32, i32* %nr_sensors, align 8, !dbg !2676
  %cmp = icmp slt i32 %2, %4, !dbg !2677
  br i1 %cmp, label %for.body, label %for.end, !dbg !2678

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor, metadata !2679, metadata !DIExpression()), !dbg !2681
  %5 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2682
  %sensor1 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %5, i32 0, i32 1, !dbg !2683
  %6 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor1, align 8, !dbg !2683
  %7 = load i32, i32* %i, align 4, !dbg !2684
  %idxprom = sext i32 %7 to i64, !dbg !2682
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %6, i64 %idxprom, !dbg !2682
  store %struct.hisi_thermal_sensor* %arrayidx, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2681
  %8 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2685
  call void @hisi_thermal_toggle_sensor(%struct.hisi_thermal_sensor* %8, i1 zeroext false) #5, !dbg !2686
  %9 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2687
  %ops = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %9, i32 0, i32 0, !dbg !2688
  %10 = load %struct.hisi_thermal_ops*, %struct.hisi_thermal_ops** %ops, align 8, !dbg !2688
  %disable_sensor = getelementptr inbounds %struct.hisi_thermal_ops, %struct.hisi_thermal_ops* %10, i32 0, i32 2, !dbg !2689
  %11 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %disable_sensor, align 8, !dbg !2689
  %12 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2690
  %call2 = call i32 %11(%struct.hisi_thermal_sensor* %12) #5, !dbg !2687
  br label %for.inc, !dbg !2691

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !2692
  %inc = add i32 %13, 1, !dbg !2692
  store i32 %inc, i32* %i, align 4, !dbg !2692
  br label %for.cond, !dbg !2693, !llvm.loop !2694

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !2696
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2697 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2700, metadata !DIExpression()), !dbg !2701
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2702, metadata !DIExpression()), !dbg !2703
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2704, metadata !DIExpression()), !dbg !2705
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2706
  %1 = load i64, i64* %size.addr, align 8, !dbg !2707
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2708
  %or = or i32 %2, 256, !dbg !2709
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !2710
  ret i8* %call, !dbg !2711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2712 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2719
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2720
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2721
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !2722
  ret void, !dbg !2723
}

; Function Attrs: noredzone
declare dso_local i8* @of_device_get_match_data(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2724 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2728, metadata !DIExpression()), !dbg !2729
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2730
  %1 = ptrtoint i8* %0 to i64, !dbg !2730
  %2 = inttoptr i64 %1 to i8*, !dbg !2730
  %3 = ptrtoint i8* %2 to i64, !dbg !2730
  %cmp = icmp uge i64 %3, -4095, !dbg !2730
  %lnot = xor i1 %cmp, true, !dbg !2730
  %lnot1 = xor i1 %lnot, true, !dbg !2730
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2730
  %conv = sext i32 %lnot.ext to i64, !dbg !2730
  %tobool = icmp ne i64 %conv, 0, !dbg !2730
  ret i1 %tobool, !dbg !2731
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2732 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2735, metadata !DIExpression()), !dbg !2736
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2737
  %1 = ptrtoint i8* %0 to i64, !dbg !2738
  ret i64 %1, !dbg !2739
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hisi_thermal_register_sensor(%struct.platform_device* %pdev, %struct.hisi_thermal_sensor* %sensor) #2 !dbg !2740 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %trip = alloca %struct.thermal_trip*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2743, metadata !DIExpression()), !dbg !2744
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2749, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.declare(metadata %struct.thermal_trip** %trip, metadata !2751, metadata !DIExpression()), !dbg !2760
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2761
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2762
  %1 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2763
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %1, i32 0, i32 3, !dbg !2764
  %2 = load i32, i32* %id, align 8, !dbg !2764
  %3 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2765
  %4 = bitcast %struct.hisi_thermal_sensor* %3 to i8*, !dbg !2765
  %call = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.device* %dev, i32 %2, i8* %4, %struct.thermal_zone_of_device_ops* @hisi_of_thermal_ops) #5, !dbg !2766
  %5 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2767
  %tzd = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %5, i32 0, i32 1, !dbg !2768
  store %struct.thermal_zone_device* %call, %struct.thermal_zone_device** %tzd, align 8, !dbg !2769
  %6 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2770
  %tzd1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %6, i32 0, i32 1, !dbg !2772
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd1, align 8, !dbg !2772
  %8 = bitcast %struct.thermal_zone_device* %7 to i8*, !dbg !2770
  %call2 = call zeroext i1 @IS_ERR(i8* %8) #5, !dbg !2773
  br i1 %call2, label %if.then, label %if.end, !dbg !2774

if.then:                                          ; preds = %entry
  %9 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2775
  %tzd3 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %9, i32 0, i32 1, !dbg !2777
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd3, align 8, !dbg !2777
  %11 = bitcast %struct.thermal_zone_device* %10 to i8*, !dbg !2775
  %call4 = call i64 @PTR_ERR(i8* %11) #5, !dbg !2778
  %conv = trunc i64 %call4 to i32, !dbg !2778
  store i32 %conv, i32* %ret, align 4, !dbg !2779
  %12 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2780
  %tzd5 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %12, i32 0, i32 1, !dbg !2781
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %tzd5, align 8, !dbg !2782
  %13 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2783
  %dev6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 3, !dbg !2783
  %14 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2783
  %id7 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %14, i32 0, i32 3, !dbg !2783
  %15 = load i32, i32* %id7, align 8, !dbg !2783
  %16 = load i32, i32* %ret, align 4, !dbg !2783
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %15, i32 %16) #6, !dbg !2783
  %17 = load i32, i32* %ret, align 4, !dbg !2784
  store i32 %17, i32* %retval, align 4, !dbg !2785
  br label %return, !dbg !2785

if.end:                                           ; preds = %entry
  %18 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2786
  %tzd8 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %18, i32 0, i32 1, !dbg !2787
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd8, align 8, !dbg !2787
  %call9 = call %struct.thermal_trip* @of_thermal_get_trip_points(%struct.thermal_zone_device* %19) #5, !dbg !2788
  store %struct.thermal_trip* %call9, %struct.thermal_trip** %trip, align 8, !dbg !2789
  store i32 0, i32* %i, align 4, !dbg !2790
  br label %for.cond, !dbg !2792

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4, !dbg !2793
  %21 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2795
  %tzd10 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %21, i32 0, i32 1, !dbg !2796
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd10, align 8, !dbg !2796
  %call11 = call i32 @of_thermal_get_ntrips(%struct.thermal_zone_device* %22) #5, !dbg !2797
  %cmp = icmp slt i32 %20, %call11, !dbg !2798
  br i1 %cmp, label %for.body, label %for.end, !dbg !2799

for.body:                                         ; preds = %for.cond
  %23 = load %struct.thermal_trip*, %struct.thermal_trip** %trip, align 8, !dbg !2800
  %24 = load i32, i32* %i, align 4, !dbg !2803
  %idxprom = sext i32 %24 to i64, !dbg !2800
  %arrayidx = getelementptr %struct.thermal_trip, %struct.thermal_trip* %23, i64 %idxprom, !dbg !2800
  %type = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx, i32 0, i32 3, !dbg !2804
  %25 = load i32, i32* %type, align 8, !dbg !2804
  %cmp13 = icmp eq i32 %25, 1, !dbg !2805
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !2806

if.then15:                                        ; preds = %for.body
  %26 = load %struct.thermal_trip*, %struct.thermal_trip** %trip, align 8, !dbg !2807
  %27 = load i32, i32* %i, align 4, !dbg !2809
  %idxprom16 = sext i32 %27 to i64, !dbg !2807
  %arrayidx17 = getelementptr %struct.thermal_trip, %struct.thermal_trip* %26, i64 %idxprom16, !dbg !2807
  %temperature = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %arrayidx17, i32 0, i32 1, !dbg !2810
  %28 = load i32, i32* %temperature, align 8, !dbg !2810
  %29 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2811
  %thres_temp = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %29, i32 0, i32 4, !dbg !2812
  store i32 %28, i32* %thres_temp, align 4, !dbg !2813
  br label %for.end, !dbg !2814

if.end18:                                         ; preds = %for.body
  br label %for.inc, !dbg !2815

for.inc:                                          ; preds = %if.end18
  %30 = load i32, i32* %i, align 4, !dbg !2816
  %inc = add i32 %30, 1, !dbg !2816
  store i32 %inc, i32* %i, align 4, !dbg !2816
  br label %for.cond, !dbg !2817, !llvm.loop !2818

for.end:                                          ; preds = %if.then15, %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2820
  br label %return, !dbg !2820

return:                                           ; preds = %for.end, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !2821
  ret i32 %31, !dbg !2821
}

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hisi_thermal_alarm_irq_thread(i32 %irq, i8* %dev) #2 !dbg !2822 {
entry:
  %irq.addr = alloca i32, align 4
  %dev.addr = alloca i8*, align 8
  %sensor = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  %temp = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor, metadata !2830, metadata !DIExpression()), !dbg !2831
  %0 = load i8*, i8** %dev.addr, align 8, !dbg !2832
  %1 = bitcast i8* %0 to %struct.hisi_thermal_sensor*, !dbg !2832
  store %struct.hisi_thermal_sensor* %1, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2831
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !2833, metadata !DIExpression()), !dbg !2834
  %2 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2835
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %2, i32 0, i32 0, !dbg !2836
  %3 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !2836
  store %struct.hisi_thermal_data* %3, %struct.hisi_thermal_data** %data, align 8, !dbg !2834
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !2837, metadata !DIExpression()), !dbg !2838
  store i32 0, i32* %temp, align 4, !dbg !2838
  %4 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2839
  %ops = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %4, i32 0, i32 0, !dbg !2840
  %5 = load %struct.hisi_thermal_ops*, %struct.hisi_thermal_ops** %ops, align 8, !dbg !2840
  %irq_handler = getelementptr inbounds %struct.hisi_thermal_ops, %struct.hisi_thermal_ops* %5, i32 0, i32 3, !dbg !2841
  %6 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %irq_handler, align 8, !dbg !2841
  %7 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2842
  %call = call i32 %6(%struct.hisi_thermal_sensor* %7) #5, !dbg !2839
  %8 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2843
  %9 = bitcast %struct.hisi_thermal_sensor* %8 to i8*, !dbg !2843
  %call2 = call i32 @hisi_thermal_get_temp(i8* %9, i32* %temp) #5, !dbg !2844
  %10 = load i32, i32* %temp, align 4, !dbg !2845
  %11 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2847
  %thres_temp = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %11, i32 0, i32 4, !dbg !2848
  %12 = load i32, i32* %thres_temp, align 4, !dbg !2848
  %cmp = icmp uge i32 %10, %12, !dbg !2849
  br i1 %cmp, label %if.then, label %if.else, !dbg !2850

if.then:                                          ; preds = %entry
  %13 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2851
  %pdev = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %13, i32 0, i32 2, !dbg !2851
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2851
  %dev3 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 3, !dbg !2851
  %15 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2851
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %15, i32 0, i32 3, !dbg !2851
  %16 = load i32, i32* %id, align 8, !dbg !2851
  %17 = load i32, i32* %temp, align 4, !dbg !2851
  %18 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2851
  %thres_temp4 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %18, i32 0, i32 4, !dbg !2851
  %19 = load i32, i32* %thres_temp4, align 4, !dbg !2851
  call void (%struct.device*, i8*, ...) @_dev_crit(%struct.device* %dev3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %16, i32 %17, i32 %19) #6, !dbg !2851
  %20 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2853
  %tzd = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %20, i32 0, i32 1, !dbg !2854
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2854
  call void @thermal_zone_device_update(%struct.thermal_zone_device* %21, i32 0) #5, !dbg !2855
  br label %if.end, !dbg !2856

if.else:                                          ; preds = %entry
  %22 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2857
  %pdev5 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %22, i32 0, i32 2, !dbg !2857
  %23 = load %struct.platform_device*, %struct.platform_device** %pdev5, align 8, !dbg !2857
  %dev6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 3, !dbg !2857
  %24 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2857
  %id7 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %24, i32 0, i32 3, !dbg !2857
  %25 = load i32, i32* %id7, align 8, !dbg !2857
  %26 = load i32, i32* %temp, align 4, !dbg !2857
  %27 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2857
  %thres_temp8 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %27, i32 0, i32 4, !dbg !2857
  %28 = load i32, i32* %thres_temp8, align 4, !dbg !2857
  call void (%struct.device*, i8*, ...) @_dev_crit(%struct.device* %dev6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %25, i32 %26, i32 %28) #6, !dbg !2857
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1, !dbg !2859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hisi_thermal_toggle_sensor(%struct.hisi_thermal_sensor* %sensor, i1 zeroext %on) #2 !dbg !2860 {
entry:
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %on.addr = alloca i8, align 1
  %tzd = alloca %struct.thermal_zone_device*, align 8
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  %frombool = zext i1 %on to i8
  store i8 %frombool, i8* %on.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %on.addr, metadata !2865, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd, metadata !2867, metadata !DIExpression()), !dbg !2868
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2869
  %tzd1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 1, !dbg !2870
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd1, align 8, !dbg !2870
  store %struct.thermal_zone_device* %1, %struct.thermal_zone_device** %tzd, align 8, !dbg !2868
  %2 = load i8, i8* %on.addr, align 1, !dbg !2871
  %tobool = trunc i8 %2 to i1, !dbg !2871
  br i1 %tobool, label %if.then, label %if.else, !dbg !2873

if.then:                                          ; preds = %entry
  %3 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2874
  %call = call i32 @thermal_zone_device_enable(%struct.thermal_zone_device* %3) #5, !dbg !2875
  br label %if.end, !dbg !2875

if.else:                                          ; preds = %entry
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd, align 8, !dbg !2876
  %call2 = call i32 @thermal_zone_device_disable(%struct.thermal_zone_device* %4) #5, !dbg !2877
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2878
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2879 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2882, metadata !DIExpression()), !dbg !2883
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2884, metadata !DIExpression()), !dbg !2885
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2886
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2887
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2888
  store i8* %0, i8** %driver_data, align 8, !dbg !2889
  ret void, !dbg !2890
}

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.device*, i32, i8*, %struct.thermal_zone_of_device_ops*) #1

; Function Attrs: noredzone
declare dso_local %struct.thermal_trip* @of_thermal_get_trip_points(%struct.thermal_zone_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @of_thermal_get_ntrips(%struct.thermal_zone_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hisi_thermal_get_temp(i8* %__data, i32* %temp) #2 !dbg !2891 {
entry:
  %__data.addr = alloca i8*, align 8
  %temp.addr = alloca i32*, align 8
  %sensor = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  store i8* %__data, i8** %__data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %__data.addr, metadata !2892, metadata !DIExpression()), !dbg !2893
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor, metadata !2896, metadata !DIExpression()), !dbg !2897
  %0 = load i8*, i8** %__data.addr, align 8, !dbg !2898
  %1 = bitcast i8* %0 to %struct.hisi_thermal_sensor*, !dbg !2898
  store %struct.hisi_thermal_sensor* %1, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2897
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !2899, metadata !DIExpression()), !dbg !2900
  %2 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2901
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %2, i32 0, i32 0, !dbg !2902
  %3 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !2902
  store %struct.hisi_thermal_data* %3, %struct.hisi_thermal_data** %data, align 8, !dbg !2900
  %4 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2903
  %ops = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %4, i32 0, i32 0, !dbg !2904
  %5 = load %struct.hisi_thermal_ops*, %struct.hisi_thermal_ops** %ops, align 8, !dbg !2904
  %get_temp = getelementptr inbounds %struct.hisi_thermal_ops, %struct.hisi_thermal_ops* %5, i32 0, i32 0, !dbg !2905
  %6 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %get_temp, align 8, !dbg !2905
  %7 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !2906
  %call = call i32 %6(%struct.hisi_thermal_sensor* %7) #5, !dbg !2903
  %8 = load i32*, i32** %temp.addr, align 8, !dbg !2907
  store i32 %call, i32* %8, align 4, !dbg !2908
  ret i32 0, !dbg !2909
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_crit(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_enable(%struct.thermal_zone_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_disable(%struct.thermal_zone_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !2910 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2917
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2918
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !2919
  ret i8* %call, !dbg !2920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2921 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2924, metadata !DIExpression()), !dbg !2925
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2926
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2927
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2927
  ret i8* %1, !dbg !2928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi6220_thermal_get_temp(%struct.hisi_thermal_sensor* %sensor) #2 !dbg !2929 {
entry:
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !2932, metadata !DIExpression()), !dbg !2933
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2934
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 0, !dbg !2935
  %1 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !2935
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !2933
  %2 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2936
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %2, i32 0, i32 4, !dbg !2937
  %3 = load i8*, i8** %regs, align 8, !dbg !2937
  %call = call i32 @hi6220_thermal_get_temperature(i8* %3) #5, !dbg !2938
  ret i32 %call, !dbg !2939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi6220_thermal_enable_sensor(%struct.hisi_thermal_sensor* %sensor) #2 !dbg !2940 {
entry:
  %retval = alloca i32, align 4
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  %ret = alloca i32, align 4
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !2943, metadata !DIExpression()), !dbg !2944
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2945
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 0, !dbg !2946
  %1 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !2946
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !2944
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2947, metadata !DIExpression()), !dbg !2948
  %2 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2949
  %clk = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %2, i32 0, i32 3, !dbg !2950
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2950
  %call = call i32 @clk_prepare_enable(%struct.clk* %3) #5, !dbg !2951
  store i32 %call, i32* %ret, align 4, !dbg !2952
  %4 = load i32, i32* %ret, align 4, !dbg !2953
  %tobool = icmp ne i32 %4, 0, !dbg !2953
  br i1 %tobool, label %if.then, label %if.end, !dbg !2955

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !2956
  store i32 %5, i32* %retval, align 4, !dbg !2957
  br label %return, !dbg !2957

if.end:                                           ; preds = %entry
  %6 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2958
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %6, i32 0, i32 4, !dbg !2959
  %7 = load i8*, i8** %regs, align 8, !dbg !2959
  call void @hi6220_thermal_reset_enable(i8* %7, i32 0) #5, !dbg !2960
  %8 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2961
  %regs2 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %8, i32 0, i32 4, !dbg !2962
  %9 = load i8*, i8** %regs2, align 8, !dbg !2962
  call void @hi6220_thermal_enable(i8* %9, i32 0) #5, !dbg !2963
  %10 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2964
  %regs3 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %10, i32 0, i32 4, !dbg !2965
  %11 = load i8*, i8** %regs3, align 8, !dbg !2965
  %12 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2966
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %12, i32 0, i32 3, !dbg !2967
  %13 = load i32, i32* %id, align 8, !dbg !2967
  call void @hi6220_thermal_sensor_select(i8* %11, i32 %13) #5, !dbg !2968
  %14 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2969
  %regs4 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %14, i32 0, i32 4, !dbg !2970
  %15 = load i8*, i8** %regs4, align 8, !dbg !2970
  call void @hi6220_thermal_hdak_set(i8* %15, i32 0) #5, !dbg !2971
  %16 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2972
  %regs5 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %16, i32 0, i32 4, !dbg !2973
  %17 = load i8*, i8** %regs5, align 8, !dbg !2973
  call void @hi6220_thermal_set_lag(i8* %17, i32 3500) #5, !dbg !2974
  %18 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2975
  %regs6 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %18, i32 0, i32 4, !dbg !2976
  %19 = load i8*, i8** %regs6, align 8, !dbg !2976
  %20 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !2977
  %thres_temp = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %20, i32 0, i32 4, !dbg !2978
  %21 = load i32, i32* %thres_temp, align 4, !dbg !2978
  call void @hi6220_thermal_alarm_set(i8* %19, i32 %21) #5, !dbg !2979
  %22 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2980
  %regs7 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %22, i32 0, i32 4, !dbg !2981
  %23 = load i8*, i8** %regs7, align 8, !dbg !2981
  call void @hi6220_thermal_reset_set(i8* %23, i32 100000) #5, !dbg !2982
  %24 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2983
  %regs8 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %24, i32 0, i32 4, !dbg !2984
  %25 = load i8*, i8** %regs8, align 8, !dbg !2984
  call void @hi6220_thermal_reset_enable(i8* %25, i32 1) #5, !dbg !2985
  %26 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2986
  %regs9 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %26, i32 0, i32 4, !dbg !2987
  %27 = load i8*, i8** %regs9, align 8, !dbg !2987
  call void @hi6220_thermal_enable(i8* %27, i32 1) #5, !dbg !2988
  %28 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2989
  %regs10 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %28, i32 0, i32 4, !dbg !2990
  %29 = load i8*, i8** %regs10, align 8, !dbg !2990
  call void @hi6220_thermal_alarm_clear(i8* %29, i32 0) #5, !dbg !2991
  %30 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !2992
  %regs11 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %30, i32 0, i32 4, !dbg !2993
  %31 = load i8*, i8** %regs11, align 8, !dbg !2993
  call void @hi6220_thermal_alarm_enable(i8* %31, i32 1) #5, !dbg !2994
  store i32 0, i32* %retval, align 4, !dbg !2995
  br label %return, !dbg !2995

return:                                           ; preds = %if.end, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !2996
  ret i32 %32, !dbg !2996
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi6220_thermal_disable_sensor(%struct.hisi_thermal_sensor* %sensor) #2 !dbg !2997 {
entry:
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !3000, metadata !DIExpression()), !dbg !3001
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3002
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 0, !dbg !3003
  %1 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !3003
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !3001
  %2 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3004
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %2, i32 0, i32 4, !dbg !3005
  %3 = load i8*, i8** %regs, align 8, !dbg !3005
  call void @hi6220_thermal_enable(i8* %3, i32 0) #5, !dbg !3006
  %4 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3007
  %regs2 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %4, i32 0, i32 4, !dbg !3008
  %5 = load i8*, i8** %regs2, align 8, !dbg !3008
  call void @hi6220_thermal_alarm_enable(i8* %5, i32 0) #5, !dbg !3009
  %6 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3010
  %regs3 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %6, i32 0, i32 4, !dbg !3011
  %7 = load i8*, i8** %regs3, align 8, !dbg !3011
  call void @hi6220_thermal_reset_enable(i8* %7, i32 0) #5, !dbg !3012
  %8 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3013
  %clk = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %8, i32 0, i32 3, !dbg !3014
  %9 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !3014
  call void @clk_disable_unprepare(%struct.clk* %9) #5, !dbg !3015
  ret i32 0, !dbg !3016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi6220_thermal_irq_handler(%struct.hisi_thermal_sensor* %sensor) #2 !dbg !3017 {
entry:
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !3020, metadata !DIExpression()), !dbg !3021
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3022
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 0, !dbg !3023
  %1 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !3023
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !3021
  %2 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3024
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %2, i32 0, i32 4, !dbg !3025
  %3 = load i8*, i8** %regs, align 8, !dbg !3025
  call void @hi6220_thermal_alarm_clear(i8* %3, i32 1) #5, !dbg !3026
  ret i32 0, !dbg !3027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi6220_thermal_probe(%struct.hisi_thermal_data* %data) #2 !dbg !3028 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.hisi_thermal_data*, align 8
  %pdev = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.hisi_thermal_data* %data, %struct.hisi_thermal_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data.addr, metadata !3029, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev, metadata !3031, metadata !DIExpression()), !dbg !3032
  %0 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3033
  %pdev1 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %0, i32 0, i32 2, !dbg !3034
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev1, align 8, !dbg !3034
  store %struct.platform_device* %1, %struct.platform_device** %pdev, align 8, !dbg !3032
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3035, metadata !DIExpression()), !dbg !3036
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !3037
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !3038
  store %struct.device* %dev2, %struct.device** %dev, align 8, !dbg !3036
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3039, metadata !DIExpression()), !dbg !3040
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3041
  %call = call %struct.clk* @devm_clk_get(%struct.device* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !3042
  %4 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3043
  %clk = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %4, i32 0, i32 3, !dbg !3044
  store %struct.clk* %call, %struct.clk** %clk, align 8, !dbg !3045
  %5 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3046
  %clk3 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %5, i32 0, i32 3, !dbg !3048
  %6 = load %struct.clk*, %struct.clk** %clk3, align 8, !dbg !3048
  %7 = bitcast %struct.clk* %6 to i8*, !dbg !3046
  %call4 = call zeroext i1 @IS_ERR(i8* %7) #5, !dbg !3049
  br i1 %call4, label %if.then, label %if.end9, !dbg !3050

if.then:                                          ; preds = %entry
  %8 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3051
  %clk5 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %8, i32 0, i32 3, !dbg !3053
  %9 = load %struct.clk*, %struct.clk** %clk5, align 8, !dbg !3053
  %10 = bitcast %struct.clk* %9 to i8*, !dbg !3051
  %call6 = call i64 @PTR_ERR(i8* %10) #5, !dbg !3054
  %conv = trunc i64 %call6 to i32, !dbg !3054
  store i32 %conv, i32* %ret, align 4, !dbg !3055
  %11 = load i32, i32* %ret, align 4, !dbg !3056
  %cmp = icmp ne i32 %11, -517, !dbg !3058
  br i1 %cmp, label %if.then8, label %if.end, !dbg !3059

if.then8:                                         ; preds = %if.then
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3060
  %13 = load i32, i32* %ret, align 4, !dbg !3060
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %13) #6, !dbg !3060
  br label %if.end, !dbg !3060

if.end:                                           ; preds = %if.then8, %if.then
  %14 = load i32, i32* %ret, align 4, !dbg !3061
  store i32 %14, i32* %retval, align 4, !dbg !3062
  br label %return, !dbg !3062

if.end9:                                          ; preds = %entry
  %15 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3063
  %call10 = call i8* @devm_kzalloc(%struct.device* %15, i64 32, i32 3264) #5, !dbg !3064
  %16 = bitcast i8* %call10 to %struct.hisi_thermal_sensor*, !dbg !3064
  %17 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3065
  %sensor = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %17, i32 0, i32 1, !dbg !3066
  store %struct.hisi_thermal_sensor* %16, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !3067
  %18 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3068
  %sensor11 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %18, i32 0, i32 1, !dbg !3070
  %19 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor11, align 8, !dbg !3070
  %tobool = icmp ne %struct.hisi_thermal_sensor* %19, null, !dbg !3068
  br i1 %tobool, label %if.end13, label %if.then12, !dbg !3071

if.then12:                                        ; preds = %if.end9
  store i32 -12, i32* %retval, align 4, !dbg !3072
  br label %return, !dbg !3072

if.end13:                                         ; preds = %if.end9
  %20 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3073
  %sensor14 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %20, i32 0, i32 1, !dbg !3074
  %21 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor14, align 8, !dbg !3074
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %21, i64 0, !dbg !3073
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx, i32 0, i32 3, !dbg !3075
  store i32 2, i32* %id, align 8, !dbg !3076
  %22 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3077
  %sensor15 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %22, i32 0, i32 1, !dbg !3078
  %23 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor15, align 8, !dbg !3078
  %arrayidx16 = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %23, i64 0, !dbg !3077
  %irq_name = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx16, i32 0, i32 2, !dbg !3079
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %irq_name, align 8, !dbg !3080
  %24 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3081
  %25 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3082
  %sensor17 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %25, i32 0, i32 1, !dbg !3083
  %26 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor17, align 8, !dbg !3083
  %arrayidx18 = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %26, i64 0, !dbg !3082
  %data19 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx18, i32 0, i32 0, !dbg !3084
  store %struct.hisi_thermal_data* %24, %struct.hisi_thermal_data** %data19, align 8, !dbg !3085
  %27 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3086
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %27, i32 0, i32 5, !dbg !3087
  store i32 1, i32* %nr_sensors, align 8, !dbg !3088
  store i32 0, i32* %retval, align 4, !dbg !3089
  br label %return, !dbg !3089

return:                                           ; preds = %if.end13, %if.then12, %if.end
  %28 = load i32, i32* %retval, align 4, !dbg !3090
  ret i32 %28, !dbg !3090
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi6220_thermal_get_temperature(i8* %addr) #2 !dbg !3091 {
entry:
  %addr.addr = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3094, metadata !DIExpression()), !dbg !3095
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3096
  %add.ptr = getelementptr i8, i8* %0, i64 40, !dbg !3097
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !3098
  %call1 = call i32 @hi6220_thermal_step_to_temp(i32 %call) #5, !dbg !3099
  ret i32 %call1, !dbg !3100
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi6220_thermal_step_to_temp(i32 %step) #2 !dbg !3101 {
entry:
  %step.addr = alloca i32, align 4
  store i32 %step, i32* %step.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %step.addr, metadata !3104, metadata !DIExpression()), !dbg !3105
  %0 = load i32, i32* %step.addr, align 4, !dbg !3106
  %mul = mul i32 %0, 785, !dbg !3107
  %add = add i32 -60000, %mul, !dbg !3108
  ret i32 %add, !dbg !3109
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !3110 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3119, metadata !DIExpression()), !dbg !3118
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3118
  %1 = bitcast i8* %0 to i32*, !dbg !3118
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !3118, !srcloc !3120
  store i32 %2, i32* %ret, align 4, !dbg !3118
  %3 = load i32, i32* %ret, align 4, !dbg !3118
  ret i32 %3, !dbg !3118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !3121 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !3124, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3126, metadata !DIExpression()), !dbg !3127
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3128
  %call = call i32 @clk_prepare(%struct.clk* %0) #5, !dbg !3129
  store i32 %call, i32* %ret, align 4, !dbg !3130
  %1 = load i32, i32* %ret, align 4, !dbg !3131
  %tobool = icmp ne i32 %1, 0, !dbg !3131
  br i1 %tobool, label %if.then, label %if.end, !dbg !3133

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3134
  store i32 %2, i32* %retval, align 4, !dbg !3135
  br label %return, !dbg !3135

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3136
  %call1 = call i32 @clk_enable(%struct.clk* %3) #5, !dbg !3137
  store i32 %call1, i32* %ret, align 4, !dbg !3138
  %4 = load i32, i32* %ret, align 4, !dbg !3139
  %tobool2 = icmp ne i32 %4, 0, !dbg !3139
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3141

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3142
  call void @clk_unprepare(%struct.clk* %5) #5, !dbg !3143
  br label %if.end4, !dbg !3143

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !3144
  store i32 %6, i32* %retval, align 4, !dbg !3145
  br label %return, !dbg !3145

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3146
  ret i32 %7, !dbg !3146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_reset_enable(i8* %addr, i32 %value) #2 !dbg !3147 {
entry:
  %addr.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3150, metadata !DIExpression()), !dbg !3151
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  %0 = load i32, i32* %value.addr, align 4, !dbg !3154
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3155
  %add.ptr = getelementptr i8, i8* %1, i64 28, !dbg !3156
  call void @writel(i32 %0, i8* %add.ptr) #5, !dbg !3157
  ret void, !dbg !3158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_enable(i8* %addr, i32 %value) #2 !dbg !3159 {
entry:
  %addr.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3160, metadata !DIExpression()), !dbg !3161
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3162, metadata !DIExpression()), !dbg !3163
  %0 = load i32, i32* %value.addr, align 4, !dbg !3164
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3165
  %add.ptr = getelementptr i8, i8* %1, i64 16, !dbg !3166
  call void @writel(i32 %0, i8* %add.ptr) #5, !dbg !3167
  ret void, !dbg !3168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_sensor_select(i8* %addr, i32 %sensor) #2 !dbg !3169 {
entry:
  %addr.addr = alloca i8*, align 8
  %sensor.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3170, metadata !DIExpression()), !dbg !3171
  store i32 %sensor, i32* %sensor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sensor.addr, metadata !3172, metadata !DIExpression()), !dbg !3173
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3174
  %add.ptr = getelementptr i8, i8* %0, i64 12, !dbg !3175
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !3176
  %and = and i32 %call, -61441, !dbg !3177
  %1 = load i32, i32* %sensor.addr, align 4, !dbg !3178
  %shl = shl i32 %1, 12, !dbg !3179
  %or = or i32 %and, %shl, !dbg !3180
  %2 = load i8*, i8** %addr.addr, align 8, !dbg !3181
  %add.ptr1 = getelementptr i8, i8* %2, i64 12, !dbg !3182
  call void @writel(i32 %or, i8* %add.ptr1) #5, !dbg !3183
  ret void, !dbg !3184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_hdak_set(i8* %addr, i32 %value) #2 !dbg !3185 {
entry:
  %addr.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3188, metadata !DIExpression()), !dbg !3189
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3190
  %add.ptr = getelementptr i8, i8* %0, i64 12, !dbg !3191
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !3192
  %and = and i32 %call, -49, !dbg !3193
  %1 = load i32, i32* %value.addr, align 4, !dbg !3194
  %shl = shl i32 %1, 4, !dbg !3195
  %or = or i32 %and, %shl, !dbg !3196
  %2 = load i8*, i8** %addr.addr, align 8, !dbg !3197
  %add.ptr1 = getelementptr i8, i8* %2, i64 12, !dbg !3198
  call void @writel(i32 %or, i8* %add.ptr1) #5, !dbg !3199
  ret void, !dbg !3200
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_set_lag(i8* %addr, i32 %value) #2 !dbg !3201 {
entry:
  %addr.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3202, metadata !DIExpression()), !dbg !3203
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3204, metadata !DIExpression()), !dbg !3205
  %0 = load i32, i32* %value.addr, align 4, !dbg !3206
  %add = add i32 %0, 785, !dbg !3206
  %sub = sub i32 %add, 1, !dbg !3206
  %div = sdiv i32 %sub, 785, !dbg !3206
  %and = and i32 %div, 31, !dbg !3207
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3208
  %add.ptr = getelementptr i8, i8* %1, i64 0, !dbg !3209
  call void @writel(i32 %and, i8* %add.ptr) #5, !dbg !3210
  ret void, !dbg !3211
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_alarm_set(i8* %addr, i32 %temp) #2 !dbg !3212 {
entry:
  %addr.addr = alloca i8*, align 8
  %temp.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3215, metadata !DIExpression()), !dbg !3216
  %0 = load i32, i32* %temp.addr, align 4, !dbg !3217
  %call = call i32 @hi6220_thermal_temp_to_step(i32 %0) #5, !dbg !3218
  %or = or i32 %call, -256, !dbg !3219
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3220
  %add.ptr = getelementptr i8, i8* %1, i64 4, !dbg !3221
  call void @writel(i32 %or, i8* %add.ptr) #5, !dbg !3222
  ret void, !dbg !3223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_reset_set(i8* %addr, i32 %temp) #2 !dbg !3224 {
entry:
  %addr.addr = alloca i8*, align 8
  %temp.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3225, metadata !DIExpression()), !dbg !3226
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3227, metadata !DIExpression()), !dbg !3228
  %0 = load i32, i32* %temp.addr, align 4, !dbg !3229
  %call = call i32 @hi6220_thermal_temp_to_step(i32 %0) #5, !dbg !3230
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3231
  %add.ptr = getelementptr i8, i8* %1, i64 8, !dbg !3232
  call void @writel(i32 %call, i8* %add.ptr) #5, !dbg !3233
  ret void, !dbg !3234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_alarm_clear(i8* %addr, i32 %value) #2 !dbg !3235 {
entry:
  %addr.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  %0 = load i32, i32* %value.addr, align 4, !dbg !3240
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3241
  %add.ptr = getelementptr i8, i8* %1, i64 24, !dbg !3242
  call void @writel(i32 %0, i8* %add.ptr) #5, !dbg !3243
  ret void, !dbg !3244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi6220_thermal_alarm_enable(i8* %addr, i32 %value) #2 !dbg !3245 {
entry:
  %addr.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3246, metadata !DIExpression()), !dbg !3247
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3248, metadata !DIExpression()), !dbg !3249
  %0 = load i32, i32* %value.addr, align 4, !dbg !3250
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3251
  %add.ptr = getelementptr i8, i8* %1, i64 20, !dbg !3252
  call void @writel(i32 %0, i8* %add.ptr) #5, !dbg !3253
  ret void, !dbg !3254
}

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !3255 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3261, metadata !DIExpression()), !dbg !3260
  %0 = load i32, i32* %val.addr, align 4, !dbg !3260
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3260
  %2 = bitcast i8* %1 to i32*, !dbg !3260
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !3260, !srcloc !3262
  ret void, !dbg !3260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi6220_thermal_temp_to_step(i32 %temp) #2 !dbg !3263 {
entry:
  %temp.addr = alloca i32, align 4
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  %0 = load i32, i32* %temp.addr, align 4, !dbg !3266
  %sub = sub i32 %0, -60000, !dbg !3266
  %add = add i32 %sub, 785, !dbg !3266
  %sub1 = sub i32 %add, 1, !dbg !3266
  %div = sdiv i32 %sub1, 785, !dbg !3266
  ret i32 %div, !dbg !3267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !3268 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3273
  call void @clk_disable(%struct.clk* %0) #5, !dbg !3274
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !3275
  call void @clk_unprepare(%struct.clk* %1) #5, !dbg !3276
  ret void, !dbg !3277
}

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi3660_thermal_get_temp(%struct.hisi_thermal_sensor* %sensor) #2 !dbg !3278 {
entry:
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !3281, metadata !DIExpression()), !dbg !3282
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3283
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 0, !dbg !3284
  %1 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !3284
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !3282
  %2 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3285
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %2, i32 0, i32 4, !dbg !3286
  %3 = load i8*, i8** %regs, align 8, !dbg !3286
  %4 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3287
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %4, i32 0, i32 3, !dbg !3288
  %5 = load i32, i32* %id, align 8, !dbg !3288
  %call = call i32 @hi3660_thermal_get_temperature(i8* %3, i32 %5) #5, !dbg !3289
  ret i32 %call, !dbg !3290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi3660_thermal_enable_sensor(%struct.hisi_thermal_sensor* %sensor) #2 !dbg !3291 {
entry:
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %value = alloca i32, align 4
  %data = alloca %struct.hisi_thermal_data*, align 8
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !3292, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3294, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !3296, metadata !DIExpression()), !dbg !3297
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3298
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 0, !dbg !3299
  %1 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !3299
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !3297
  %2 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3300
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %2, i32 0, i32 4, !dbg !3301
  %3 = load i8*, i8** %regs, align 8, !dbg !3301
  %4 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3302
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %4, i32 0, i32 3, !dbg !3303
  %5 = load i32, i32* %id, align 8, !dbg !3303
  call void @hi3660_thermal_alarm_enable(i8* %3, i32 %5, i32 0) #5, !dbg !3304
  %6 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3305
  %regs2 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %6, i32 0, i32 4, !dbg !3306
  %7 = load i8*, i8** %regs2, align 8, !dbg !3306
  %8 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3307
  %id3 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %8, i32 0, i32 3, !dbg !3308
  %9 = load i32, i32* %id3, align 8, !dbg !3308
  call void @hi3660_thermal_set_lag(i8* %7, i32 %9, i32 4000) #5, !dbg !3309
  %10 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3310
  %thres_temp = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %10, i32 0, i32 4, !dbg !3311
  %11 = load i32, i32* %thres_temp, align 4, !dbg !3311
  %call = call i32 @hi3660_thermal_temp_to_step(i32 %11) #5, !dbg !3312
  store i32 %call, i32* %value, align 4, !dbg !3313
  %12 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3314
  %regs4 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %12, i32 0, i32 4, !dbg !3315
  %13 = load i8*, i8** %regs4, align 8, !dbg !3315
  %14 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3316
  %id5 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %14, i32 0, i32 3, !dbg !3317
  %15 = load i32, i32* %id5, align 8, !dbg !3317
  %16 = load i32, i32* %value, align 4, !dbg !3318
  call void @hi3660_thermal_alarm_set(i8* %13, i32 %15, i32 %16) #5, !dbg !3319
  %17 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3320
  %regs6 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %17, i32 0, i32 4, !dbg !3321
  %18 = load i8*, i8** %regs6, align 8, !dbg !3321
  %19 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3322
  %id7 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %19, i32 0, i32 3, !dbg !3323
  %20 = load i32, i32* %id7, align 8, !dbg !3323
  call void @hi3660_thermal_alarm_clear(i8* %18, i32 %20, i32 1) #5, !dbg !3324
  %21 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3325
  %regs8 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %21, i32 0, i32 4, !dbg !3326
  %22 = load i8*, i8** %regs8, align 8, !dbg !3326
  %23 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3327
  %id9 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %23, i32 0, i32 3, !dbg !3328
  %24 = load i32, i32* %id9, align 8, !dbg !3328
  call void @hi3660_thermal_alarm_enable(i8* %22, i32 %24, i32 1) #5, !dbg !3329
  ret i32 0, !dbg !3330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi3660_thermal_disable_sensor(%struct.hisi_thermal_sensor* %sensor) #2 !dbg !3331 {
entry:
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !3334, metadata !DIExpression()), !dbg !3335
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3336
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 0, !dbg !3337
  %1 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !3337
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !3335
  %2 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3338
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %2, i32 0, i32 4, !dbg !3339
  %3 = load i8*, i8** %regs, align 8, !dbg !3339
  %4 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3340
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %4, i32 0, i32 3, !dbg !3341
  %5 = load i32, i32* %id, align 8, !dbg !3341
  call void @hi3660_thermal_alarm_enable(i8* %3, i32 %5, i32 0) #5, !dbg !3342
  ret i32 0, !dbg !3343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi3660_thermal_irq_handler(%struct.hisi_thermal_sensor* %sensor) #2 !dbg !3344 {
entry:
  %sensor.addr = alloca %struct.hisi_thermal_sensor*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  store %struct.hisi_thermal_sensor* %sensor, %struct.hisi_thermal_sensor** %sensor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_sensor** %sensor.addr, metadata !3345, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !3347, metadata !DIExpression()), !dbg !3348
  %0 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3349
  %data1 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %0, i32 0, i32 0, !dbg !3350
  %1 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data1, align 8, !dbg !3350
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !3348
  %2 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3351
  %regs = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %2, i32 0, i32 4, !dbg !3352
  %3 = load i8*, i8** %regs, align 8, !dbg !3352
  %4 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor.addr, align 8, !dbg !3353
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %4, i32 0, i32 3, !dbg !3354
  %5 = load i32, i32* %id, align 8, !dbg !3354
  call void @hi3660_thermal_alarm_clear(i8* %3, i32 %5, i32 1) #5, !dbg !3355
  ret i32 0, !dbg !3356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi3660_thermal_probe(%struct.hisi_thermal_data* %data) #2 !dbg !3357 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.hisi_thermal_data*, align 8
  %pdev = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.hisi_thermal_data* %data, %struct.hisi_thermal_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data.addr, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev, metadata !3360, metadata !DIExpression()), !dbg !3361
  %0 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3362
  %pdev1 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %0, i32 0, i32 2, !dbg !3363
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev1, align 8, !dbg !3363
  store %struct.platform_device* %1, %struct.platform_device** %pdev, align 8, !dbg !3361
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3364, metadata !DIExpression()), !dbg !3365
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !3366
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !3367
  store %struct.device* %dev2, %struct.device** %dev, align 8, !dbg !3365
  %3 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3368
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %3, i32 0, i32 5, !dbg !3369
  store i32 1, i32* %nr_sensors, align 8, !dbg !3370
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3371
  %5 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3372
  %nr_sensors3 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %5, i32 0, i32 5, !dbg !3373
  %6 = load i32, i32* %nr_sensors3, align 8, !dbg !3373
  %conv = sext i32 %6 to i64, !dbg !3372
  %mul = mul i64 32, %conv, !dbg !3374
  %call = call i8* @devm_kzalloc(%struct.device* %4, i64 %mul, i32 3264) #5, !dbg !3375
  %7 = bitcast i8* %call to %struct.hisi_thermal_sensor*, !dbg !3375
  %8 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3376
  %sensor = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %8, i32 0, i32 1, !dbg !3377
  store %struct.hisi_thermal_sensor* %7, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !3378
  %9 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3379
  %sensor4 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %9, i32 0, i32 1, !dbg !3381
  %10 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor4, align 8, !dbg !3381
  %tobool = icmp ne %struct.hisi_thermal_sensor* %10, null, !dbg !3379
  br i1 %tobool, label %if.end, label %if.then, !dbg !3382

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3383
  br label %return, !dbg !3383

if.end:                                           ; preds = %entry
  %11 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3384
  %sensor5 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %11, i32 0, i32 1, !dbg !3385
  %12 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor5, align 8, !dbg !3385
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %12, i64 0, !dbg !3384
  %id = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx, i32 0, i32 3, !dbg !3386
  store i32 1, i32* %id, align 8, !dbg !3387
  %13 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3388
  %sensor6 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %13, i32 0, i32 1, !dbg !3389
  %14 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor6, align 8, !dbg !3389
  %arrayidx7 = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %14, i64 0, !dbg !3388
  %irq_name = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx7, i32 0, i32 2, !dbg !3390
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %irq_name, align 8, !dbg !3391
  %15 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3392
  %16 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3393
  %sensor8 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %16, i32 0, i32 1, !dbg !3394
  %17 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor8, align 8, !dbg !3394
  %arrayidx9 = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %17, i64 0, !dbg !3393
  %data10 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx9, i32 0, i32 0, !dbg !3395
  store %struct.hisi_thermal_data* %15, %struct.hisi_thermal_data** %data10, align 8, !dbg !3396
  %18 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3397
  %sensor11 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %18, i32 0, i32 1, !dbg !3398
  %19 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor11, align 8, !dbg !3398
  %arrayidx12 = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %19, i64 1, !dbg !3397
  %id13 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx12, i32 0, i32 3, !dbg !3399
  store i32 0, i32* %id13, align 8, !dbg !3400
  %20 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3401
  %sensor14 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %20, i32 0, i32 1, !dbg !3402
  %21 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor14, align 8, !dbg !3402
  %arrayidx15 = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %21, i64 1, !dbg !3401
  %irq_name16 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx15, i32 0, i32 2, !dbg !3403
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %irq_name16, align 8, !dbg !3404
  %22 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3405
  %23 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data.addr, align 8, !dbg !3406
  %sensor17 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %23, i32 0, i32 1, !dbg !3407
  %24 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor17, align 8, !dbg !3407
  %arrayidx18 = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %24, i64 1, !dbg !3406
  %data19 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %arrayidx18, i32 0, i32 0, !dbg !3408
  store %struct.hisi_thermal_data* %22, %struct.hisi_thermal_data** %data19, align 8, !dbg !3409
  store i32 0, i32* %retval, align 4, !dbg !3410
  br label %return, !dbg !3410

return:                                           ; preds = %if.end, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !3411
  ret i32 %25, !dbg !3411
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi3660_thermal_get_temperature(i8* %addr, i32 %id) #2 !dbg !3412 {
entry:
  %addr.addr = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3413, metadata !DIExpression()), !dbg !3414
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3415, metadata !DIExpression()), !dbg !3416
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3417
  %1 = load i32, i32* %id.addr, align 4, !dbg !3418
  %mul = mul i32 %1, 64, !dbg !3418
  %add = add i32 %mul, 28, !dbg !3418
  %idx.ext = sext i32 %add to i64, !dbg !3419
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !3419
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !3420
  %call1 = call i32 @hi3660_thermal_step_to_temp(i32 %call) #5, !dbg !3421
  ret i32 %call1, !dbg !3422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi3660_thermal_step_to_temp(i32 %step) #2 !dbg !3423 {
entry:
  %step.addr = alloca i32, align 4
  store i32 %step, i32* %step.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %step.addr, metadata !3424, metadata !DIExpression()), !dbg !3425
  %0 = load i32, i32* %step.addr, align 4, !dbg !3426
  %mul = mul i32 %0, 205, !dbg !3427
  %add = add i32 -63780, %mul, !dbg !3428
  ret i32 %add, !dbg !3429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi3660_thermal_alarm_enable(i8* %addr, i32 %id, i32 %value) #2 !dbg !3430 {
entry:
  %addr.addr = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3433, metadata !DIExpression()), !dbg !3434
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3435, metadata !DIExpression()), !dbg !3436
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3437, metadata !DIExpression()), !dbg !3438
  %0 = load i32, i32* %value.addr, align 4, !dbg !3439
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3440
  %2 = load i32, i32* %id.addr, align 4, !dbg !3441
  %mul = mul i32 %2, 64, !dbg !3441
  %add = add i32 %mul, 44, !dbg !3441
  %idx.ext = sext i32 %add to i64, !dbg !3442
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !3442
  call void @writel(i32 %0, i8* %add.ptr) #5, !dbg !3443
  ret void, !dbg !3444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi3660_thermal_set_lag(i8* %addr, i32 %id, i32 %value) #2 !dbg !3445 {
entry:
  %addr.addr = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3446, metadata !DIExpression()), !dbg !3447
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3448, metadata !DIExpression()), !dbg !3449
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3450, metadata !DIExpression()), !dbg !3451
  %0 = load i32, i32* %value.addr, align 4, !dbg !3452
  %add = add i32 %0, 205, !dbg !3452
  %sub = sub i32 %add, 1, !dbg !3452
  %div = sdiv i32 %sub, 205, !dbg !3452
  %and = and i32 %div, 127, !dbg !3453
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3454
  %2 = load i32, i32* %id.addr, align 4, !dbg !3455
  %mul = mul i32 %2, 64, !dbg !3455
  %add1 = add i32 %mul, 40, !dbg !3455
  %idx.ext = sext i32 %add1 to i64, !dbg !3456
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !3456
  call void @writel(i32 %and, i8* %add.ptr) #5, !dbg !3457
  ret void, !dbg !3458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hi3660_thermal_temp_to_step(i32 %temp) #2 !dbg !3459 {
entry:
  %temp.addr = alloca i32, align 4
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3460, metadata !DIExpression()), !dbg !3461
  %0 = load i32, i32* %temp.addr, align 4, !dbg !3462
  %sub = sub i32 %0, -63780, !dbg !3462
  %add = add i32 %sub, 205, !dbg !3462
  %sub1 = sub i32 %add, 1, !dbg !3462
  %div = sdiv i32 %sub1, 205, !dbg !3462
  ret i32 %div, !dbg !3463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi3660_thermal_alarm_set(i8* %addr, i32 %id, i32 %value) #2 !dbg !3464 {
entry:
  %addr.addr = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3465, metadata !DIExpression()), !dbg !3466
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3467, metadata !DIExpression()), !dbg !3468
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3469, metadata !DIExpression()), !dbg !3470
  %0 = load i32, i32* %value.addr, align 4, !dbg !3471
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3472
  %2 = load i32, i32* %id.addr, align 4, !dbg !3473
  %mul = mul i32 %2, 64, !dbg !3473
  %add = add i32 %mul, 32, !dbg !3473
  %idx.ext = sext i32 %add to i64, !dbg !3474
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !3474
  call void @writel(i32 %0, i8* %add.ptr) #5, !dbg !3475
  ret void, !dbg !3476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hi3660_thermal_alarm_clear(i8* %addr, i32 %id, i32 %value) #2 !dbg !3477 {
entry:
  %addr.addr = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3478, metadata !DIExpression()), !dbg !3479
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3480, metadata !DIExpression()), !dbg !3481
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !3482, metadata !DIExpression()), !dbg !3483
  %0 = load i32, i32* %value.addr, align 4, !dbg !3484
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3485
  %2 = load i32, i32* %id.addr, align 4, !dbg !3486
  %mul = mul i32 %2, 64, !dbg !3486
  %add = add i32 %mul, 48, !dbg !3486
  %idx.ext = sext i32 %add to i64, !dbg !3487
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !3487
  call void @writel(i32 %0, i8* %add.ptr) #5, !dbg !3488
  ret void, !dbg !3489
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hisi_thermal_suspend(%struct.device* %dev) #2 !dbg !3490 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3491, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !3493, metadata !DIExpression()), !dbg !3494
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3495
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !3496
  %1 = bitcast i8* %call to %struct.hisi_thermal_data*, !dbg !3496
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !3494
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3497, metadata !DIExpression()), !dbg !3498
  store i32 0, i32* %i, align 4, !dbg !3499
  br label %for.cond, !dbg !3501

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3502
  %3 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3504
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %3, i32 0, i32 5, !dbg !3505
  %4 = load i32, i32* %nr_sensors, align 8, !dbg !3505
  %cmp = icmp slt i32 %2, %4, !dbg !3506
  br i1 %cmp, label %for.body, label %for.end, !dbg !3507

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3508
  %ops = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %5, i32 0, i32 0, !dbg !3509
  %6 = load %struct.hisi_thermal_ops*, %struct.hisi_thermal_ops** %ops, align 8, !dbg !3509
  %disable_sensor = getelementptr inbounds %struct.hisi_thermal_ops, %struct.hisi_thermal_ops* %6, i32 0, i32 2, !dbg !3510
  %7 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %disable_sensor, align 8, !dbg !3510
  %8 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3511
  %sensor = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %8, i32 0, i32 1, !dbg !3512
  %9 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !3512
  %10 = load i32, i32* %i, align 4, !dbg !3513
  %idxprom = sext i32 %10 to i64, !dbg !3511
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %9, i64 %idxprom, !dbg !3511
  %call1 = call i32 %7(%struct.hisi_thermal_sensor* %arrayidx) #5, !dbg !3508
  br label %for.inc, !dbg !3508

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !3514
  %inc = add i32 %11, 1, !dbg !3514
  store i32 %inc, i32* %i, align 4, !dbg !3514
  br label %for.cond, !dbg !3515, !llvm.loop !3516

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !3518
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hisi_thermal_resume(%struct.device* %dev) #2 !dbg !3519 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data = alloca %struct.hisi_thermal_data*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3520, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.declare(metadata %struct.hisi_thermal_data** %data, metadata !3522, metadata !DIExpression()), !dbg !3523
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3524
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !3525
  %1 = bitcast i8* %call to %struct.hisi_thermal_data*, !dbg !3525
  store %struct.hisi_thermal_data* %1, %struct.hisi_thermal_data** %data, align 8, !dbg !3523
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3526, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3528, metadata !DIExpression()), !dbg !3529
  store i32 0, i32* %ret, align 4, !dbg !3529
  store i32 0, i32* %i, align 4, !dbg !3530
  br label %for.cond, !dbg !3532

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3533
  %3 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3535
  %nr_sensors = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %3, i32 0, i32 5, !dbg !3536
  %4 = load i32, i32* %nr_sensors, align 8, !dbg !3536
  %cmp = icmp slt i32 %2, %4, !dbg !3537
  br i1 %cmp, label %for.body, label %for.end, !dbg !3538

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3539
  %ops = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %5, i32 0, i32 0, !dbg !3540
  %6 = load %struct.hisi_thermal_ops*, %struct.hisi_thermal_ops** %ops, align 8, !dbg !3540
  %enable_sensor = getelementptr inbounds %struct.hisi_thermal_ops, %struct.hisi_thermal_ops* %6, i32 0, i32 1, !dbg !3541
  %7 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %enable_sensor, align 8, !dbg !3541
  %8 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %data, align 8, !dbg !3542
  %sensor = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %8, i32 0, i32 1, !dbg !3543
  %9 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %sensor, align 8, !dbg !3543
  %10 = load i32, i32* %i, align 4, !dbg !3544
  %idxprom = sext i32 %10 to i64, !dbg !3542
  %arrayidx = getelementptr %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %9, i64 %idxprom, !dbg !3542
  %call1 = call i32 %7(%struct.hisi_thermal_sensor* %arrayidx) #5, !dbg !3539
  %11 = load i32, i32* %ret, align 4, !dbg !3545
  %or = or i32 %11, %call1, !dbg !3545
  store i32 %or, i32* %ret, align 4, !dbg !3545
  br label %for.inc, !dbg !3546

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !3547
  %inc = add i32 %12, 1, !dbg !3547
  store i32 %inc, i32* %i, align 4, !dbg !3547
  br label %for.cond, !dbg !3548, !llvm.loop !3549

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %ret, align 4, !dbg !3551
  ret i32 %13, !dbg !3552
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2515, !2516, !2517, !2518}
!llvm.ident = !{!2519}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hisi_thermal_driver_init159", scope: !2, file: !3, line: 671, type: !115, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !108, globals: !119, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/hisi_thermal.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !67, !72, !78, !86, !97, !102}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !51, line: 41, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PM_QOS_MAX", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PM_QOS_MIN", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !51, line: 99, baseType: !7, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3, isUnsigned: true)
!61 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4, isUnsigned: true)
!62 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !51, line: 80, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !68, line: 7, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !68, line: 12, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !79, line: 40, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83, !84, !85}
!81 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!85 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !79, line: 49, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96}
!88 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!94 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!95 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!96 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !98, line: 10, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !103, line: 11, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!108 = !{!109, !112, !114, !115, !116, !117}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !111, line: 76, flags: DIFlagFwdDecl)
!111 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !113, line: 148, baseType: !7)
!113 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!119 = !{!0, !120, !127, !134, !139, !144, !149, !154, !2262, !2285, !2288, !2511, !2513}
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "__exitcall_hisi_thermal_driver_exit", scope: !2, file: !3, line: 671, type: !122, isLocal: true, isDefinition: true)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !123, line: 117, baseType: !124)
!123 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author160", scope: !2, file: !3, line: 673, type: !129, isLocal: true, isDefinition: true, align: 8)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 512, elements: !132)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!132 = !{!133}
!133 = !DISubrange(count: 64)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author161", scope: !2, file: !3, line: 674, type: !136, isLocal: true, isDefinition: true, align: 8)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 392, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 49)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description162", scope: !2, file: !3, line: 675, type: !141, isLocal: true, isDefinition: true, align: 8)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 400, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 50)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file163", scope: !2, file: !3, line: 676, type: !146, isLocal: true, isDefinition: true, align: 8)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 376, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 47)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license164", scope: !2, file: !3, line: 676, type: !151, isLocal: true, isDefinition: true, align: 8)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 224, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 28)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "hisi_thermal_driver", scope: !2, file: !3, line: 661, type: !156, isLocal: true, isDefinition: true)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !157, line: 200, size: 1600, elements: !158)
!157 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !2249, !2250, !2254, !2258, !2259, !2260, !2261}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !156, file: !157, line: 201, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !164}
!163 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !157, line: 22, size: 6208, elements: !166)
!166 = !{!167, !169, !170, !173, !2218, !2219, !2220, !2221, !2235, !2243, !2244, !2247}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !157, line: 23, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !165, file: !157, line: 24, baseType: !163, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !165, file: !157, line: 25, baseType: !171, size: 8, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !113, line: 30, baseType: !172)
!172 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !165, file: !157, line: 26, baseType: !174, size: 5568, offset: 128)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !175)
!175 = !{!176, !1672, !1674, !1677, !1678, !1729, !1823, !1824, !1825, !1826, !1827, !1836, !2013, !2026, !2029, !2030, !2034, !2036, !2037, !2038, !2042, !2048, !2049, !2052, !2167, !2168, !2171, !2172, !2173, !2174, !2206, !2207, !2208, !2211, !2214, !2215, !2216, !2217}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !174, file: !30, line: 462, baseType: !177, size: 512)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !178, line: 64, size: 512, elements: !179)
!178 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!179 = !{!180, !181, !187, !189, !247, !1509, !1662, !1667, !1668, !1669, !1670, !1671}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !178, line: 65, baseType: !168, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !177, file: !178, line: 66, baseType: !182, size: 128, offset: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !113, line: 178, size: 128, elements: !183)
!183 = !{!184, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !113, line: 179, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !113, line: 179, baseType: !185, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !178, line: 67, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !177, file: !178, line: 68, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !178, line: 192, size: 704, elements: !192)
!192 = !{!193, !194, !210, !211}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !191, file: !178, line: 193, baseType: !182, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !191, file: !178, line: 194, baseType: !195, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !196, line: 83, baseType: !197)
!196 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !196, line: 71, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !196, line: 72, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !196, line: 72, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !200, file: !196, line: 73, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !196, line: 20, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !203, file: !196, line: 21, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !207, line: 25, baseType: !208)
!207 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 25, elements: !209)
!209 = !{}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !191, file: !178, line: 195, baseType: !177, size: 512, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !191, file: !178, line: 196, baseType: !212, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !178, line: 156, size: 192, elements: !215)
!215 = !{!216, !221, !226}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !214, file: !178, line: 157, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!163, !190, !188}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !178, line: 158, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!168, !190, !188}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !214, file: !178, line: 159, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!163, !190, !188, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !178, line: 148, size: 20736, elements: !233)
!233 = !{!234, !239, !241, !242, !246}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !232, file: !178, line: 149, baseType: !235, size: 192)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 192, elements: !237)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!237 = !{!238}
!238 = !DISubrange(count: 3)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !232, file: !178, line: 150, baseType: !240, size: 4096, offset: 192)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 4096, elements: !132)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !232, file: !178, line: 151, baseType: !163, size: 32, offset: 4288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !232, file: !178, line: 152, baseType: !243, size: 16384, offset: 4320)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 16384, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 2048)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !232, file: !178, line: 153, baseType: !163, size: 32, offset: 20704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !177, file: !178, line: 69, baseType: !248, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !178, line: 138, size: 448, elements: !250)
!250 = !{!251, !255, !283, !285, !1456, !1487, !1491}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !249, file: !178, line: 139, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !188}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !249, file: !178, line: 140, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !259, line: 230, size: 128, elements: !260)
!259 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !276}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !258, file: !259, line: 231, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !188, !269, !236}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !113, line: 60, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !267, line: 73, baseType: !268)
!267 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !267, line: 15, baseType: !116)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !259, line: 30, size: 128, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !259, line: 31, baseType: !168, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !270, file: !259, line: 32, baseType: !274, size: 16, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !113, line: 19, baseType: !275)
!275 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !258, file: !259, line: 232, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!265, !188, !269, !168, !280}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 55, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !267, line: 72, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !267, line: 16, baseType: !114)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !249, file: !178, line: 141, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !249, file: !178, line: 142, baseType: !286, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !259, line: 84, size: 320, elements: !290)
!290 = !{!291, !292, !296, !1453, !1454}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !259, line: 85, baseType: !168, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !289, file: !259, line: 86, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!274, !188, !269, !163}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !289, file: !259, line: 88, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!274, !188, !300, !163}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !259, line: 168, size: 448, elements: !302)
!302 = !{!303, !304, !305, !306, !316, !317}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !301, file: !259, line: 169, baseType: !270, size: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !301, file: !259, line: 170, baseType: !280, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !301, file: !259, line: 171, baseType: !115, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !301, file: !259, line: 172, baseType: !307, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!265, !310, !188, !300, !236, !313, !280}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !312, line: 526, flags: DIFlagFwdDecl)
!312 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !113, line: 46, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !267, line: 88, baseType: !315)
!315 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !301, file: !259, line: 174, baseType: !307, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !301, file: !259, line: 176, baseType: !318, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!163, !310, !188, !300, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !323, line: 305, size: 1472, elements: !324)
!323 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !326, !327, !328, !329, !337, !338, !1427, !1433, !1434, !1439, !1440, !1443, !1447, !1448, !1449, !1450, !1451}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !322, file: !323, line: 308, baseType: !114, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !322, file: !323, line: 309, baseType: !114, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !322, file: !323, line: 313, baseType: !321, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !322, file: !323, line: 313, baseType: !321, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !322, file: !323, line: 315, baseType: !330, size: 192, align: 64, offset: 256)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !331, line: 24, size: 192, align: 64, elements: !332)
!331 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333, !334, !336}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !330, file: !331, line: 25, baseType: !114, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !330, file: !331, line: 26, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !330, file: !331, line: 27, baseType: !335, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !322, file: !323, line: 323, baseType: !114, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !322, file: !323, line: 327, baseType: !339, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !323, line: 388, size: 7296, elements: !341)
!341 = !{!342, !1423}
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !323, line: 389, baseType: !343, size: 7296)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !323, line: 389, size: 7296, elements: !344)
!344 = !{!345, !346, !350, !356, !360, !361, !362, !363, !364, !372, !377, !378, !379, !380, !389, !390, !391, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !426, !434, !437, !485, !486, !1394, !1395, !1398, !1401, !1402, !1405, !1406, !1407, !1410, !1422}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !343, file: !323, line: 390, baseType: !321, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !343, file: !323, line: 391, baseType: !347, size: 64, offset: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !331, line: 31, size: 64, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !347, file: !331, line: 32, baseType: !335, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !343, file: !323, line: 392, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !352, line: 23, baseType: !353)
!352 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !354, line: 31, baseType: !355)
!354 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!355 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !343, file: !323, line: 394, baseType: !357, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!114, !310, !114, !114, !114, !114}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !343, file: !323, line: 398, baseType: !114, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !343, file: !323, line: 399, baseType: !114, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !343, file: !323, line: 405, baseType: !114, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !343, file: !323, line: 406, baseType: !114, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !343, file: !323, line: 407, baseType: !365, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !312, line: 286, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 286, size: 64, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !367, file: !312, line: 286, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !371, line: 18, baseType: !114)
!371 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!372 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !343, file: !323, line: 416, baseType: !373, size: 32, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !113, line: 168, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 166, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !374, file: !113, line: 167, baseType: !163, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !343, file: !323, line: 428, baseType: !373, size: 32, offset: 608)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !343, file: !323, line: 437, baseType: !373, size: 32, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !343, file: !323, line: 447, baseType: !373, size: 32, offset: 672)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !343, file: !323, line: 450, baseType: !381, size: 64, offset: 704)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !382, line: 13, baseType: !383)
!382 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !113, line: 175, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 173, size: 64, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !384, file: !113, line: 174, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !352, line: 22, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !354, line: 30, baseType: !315)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !343, file: !323, line: 452, baseType: !163, size: 32, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !343, file: !323, line: 454, baseType: !195, offset: 800)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !343, file: !323, line: 457, baseType: !392, size: 256, offset: 832)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !393, line: 35, size: 256, elements: !394)
!393 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395, !396, !397, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !392, file: !393, line: 36, baseType: !381, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !392, file: !393, line: 42, baseType: !381, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !392, file: !393, line: 46, baseType: !398, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !196, line: 29, baseType: !203)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !392, file: !393, line: 47, baseType: !182, size: 128, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !343, file: !323, line: 459, baseType: !182, size: 128, offset: 1088)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !343, file: !323, line: 466, baseType: !114, size: 64, offset: 1216)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !343, file: !323, line: 467, baseType: !114, size: 64, offset: 1280)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !343, file: !323, line: 469, baseType: !114, size: 64, offset: 1344)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !343, file: !323, line: 470, baseType: !114, size: 64, offset: 1408)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !343, file: !323, line: 471, baseType: !383, size: 64, offset: 1472)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !343, file: !323, line: 472, baseType: !114, size: 64, offset: 1536)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !343, file: !323, line: 473, baseType: !114, size: 64, offset: 1600)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !343, file: !323, line: 474, baseType: !114, size: 64, offset: 1664)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !343, file: !323, line: 475, baseType: !114, size: 64, offset: 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !343, file: !323, line: 477, baseType: !195, offset: 1792)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !343, file: !323, line: 478, baseType: !114, size: 64, offset: 1792)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !343, file: !323, line: 478, baseType: !114, size: 64, offset: 1856)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !343, file: !323, line: 478, baseType: !114, size: 64, offset: 1920)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !343, file: !323, line: 478, baseType: !114, size: 64, offset: 1984)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !343, file: !323, line: 479, baseType: !114, size: 64, offset: 2048)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !343, file: !323, line: 479, baseType: !114, size: 64, offset: 2112)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !343, file: !323, line: 479, baseType: !114, size: 64, offset: 2176)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !343, file: !323, line: 480, baseType: !114, size: 64, offset: 2240)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !343, file: !323, line: 480, baseType: !114, size: 64, offset: 2304)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !343, file: !323, line: 480, baseType: !114, size: 64, offset: 2368)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !343, file: !323, line: 480, baseType: !114, size: 64, offset: 2432)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !343, file: !323, line: 482, baseType: !423, size: 2816, offset: 2496)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 2816, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 44)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !343, file: !323, line: 488, baseType: !427, size: 256, offset: 5312)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !428, line: 60, size: 256, elements: !429)
!428 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !427, file: !428, line: 61, baseType: !431, size: 256)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 4)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !343, file: !323, line: 490, baseType: !435, size: 64, offset: 5568)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !323, line: 490, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !343, file: !323, line: 493, baseType: !438, size: 896, offset: 5632)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !439, line: 53, baseType: !440)
!439 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 896, elements: !441)
!441 = !{!442, !443, !444, !445, !448, !449, !456, !457, !477, !478, !481}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !440, file: !439, line: 18, baseType: !351, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !440, file: !439, line: 28, baseType: !383, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !440, file: !439, line: 31, baseType: !392, size: 256, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !440, file: !439, line: 32, baseType: !446, size: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !439, line: 32, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !440, file: !439, line: 37, baseType: !275, size: 16, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !440, file: !439, line: 40, baseType: !450, size: 192, offset: 512)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !451, line: 53, size: 192, elements: !452)
!451 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!452 = !{!453, !454, !455}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !450, file: !451, line: 54, baseType: !381, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !450, file: !451, line: 55, baseType: !195, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !450, file: !451, line: 59, baseType: !182, size: 128, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !440, file: !439, line: 41, baseType: !115, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !440, file: !439, line: 42, baseType: !458, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !461, line: 13, size: 896, elements: !462)
!461 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !460, file: !461, line: 14, baseType: !115, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !460, file: !461, line: 15, baseType: !114, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !460, file: !461, line: 17, baseType: !114, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !460, file: !461, line: 17, baseType: !114, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !460, file: !461, line: 19, baseType: !116, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !460, file: !461, line: 21, baseType: !116, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !460, file: !461, line: 22, baseType: !116, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !460, file: !461, line: 23, baseType: !116, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !460, file: !461, line: 24, baseType: !116, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !460, file: !461, line: 25, baseType: !116, size: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !460, file: !461, line: 26, baseType: !116, size: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !460, file: !461, line: 27, baseType: !116, size: 64, offset: 704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !460, file: !461, line: 28, baseType: !116, size: 64, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !460, file: !461, line: 29, baseType: !116, size: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !440, file: !439, line: 44, baseType: !373, size: 32, offset: 832)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !440, file: !439, line: 50, baseType: !479, size: 16, offset: 864)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !352, line: 19, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !354, line: 24, baseType: !275)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !440, file: !439, line: 51, baseType: !482, size: 16, offset: 880)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !352, line: 18, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !354, line: 23, baseType: !484)
!484 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !323, line: 495, baseType: !114, size: 64, offset: 6528)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !343, file: !323, line: 497, baseType: !487, size: 64, offset: 6592)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !323, line: 381, size: 384, elements: !489)
!489 = !{!490, !491, !1393}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !488, file: !323, line: 382, baseType: !373, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !488, file: !323, line: 383, baseType: !492, size: 128, offset: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !323, line: 376, size: 128, elements: !493)
!493 = !{!494, !1391}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !492, file: !323, line: 377, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !497, line: 640, size: 48640, elements: !498)
!497 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !507, !509, !510, !516, !517, !518, !519, !520, !521, !522, !523, !527, !545, !556, !651, !652, !653, !664, !665, !667, !668, !669, !670, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !749, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !805, !807, !808, !809, !821, !823, !824, !825, !826, !827, !833, !834, !835, !836, !837, !838, !839, !851, !856, !860, !861, !862, !865, !869, !872, !875, !878, !881, !884, !887, !890, !896, !897, !898, !904, !905, !906, !907, !908, !917, !918, !919, !920, !921, !926, !927, !928, !931, !932, !935, !938, !941, !944, !947, !950, !951, !1031, !1034, !1037, !1038, !1041, !1042, !1043, !1049, !1050, !1051, !1064, !1065, !1066, !1076, !1081, !1084, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !496, file: !497, line: 646, baseType: !500, size: 128)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !501, line: 56, size: 128, elements: !502)
!501 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !501, line: 57, baseType: !114, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !500, file: !501, line: 58, baseType: !505, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !352, line: 21, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !354, line: 27, baseType: !7)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !496, file: !497, line: 649, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !496, file: !497, line: 657, baseType: !115, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !496, file: !497, line: 658, baseType: !511, size: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !512, line: 113, baseType: !513)
!512 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !512, line: 111, size: 32, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !513, file: !512, line: 112, baseType: !373, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !497, line: 660, baseType: !7, size: 32, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !496, file: !497, line: 661, baseType: !7, size: 32, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !496, file: !497, line: 684, baseType: !163, size: 32, offset: 352)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !496, file: !497, line: 686, baseType: !163, size: 32, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !496, file: !497, line: 687, baseType: !163, size: 32, offset: 416)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !496, file: !497, line: 688, baseType: !163, size: 32, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !496, file: !497, line: 689, baseType: !7, size: 32, offset: 480)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !496, file: !497, line: 691, baseType: !524, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !497, line: 691, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !496, file: !497, line: 692, baseType: !528, size: 832, offset: 576)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !497, line: 451, size: 832, elements: !529)
!529 = !{!530, !535, !536, !537, !538, !539, !540, !541, !542, !543}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !528, file: !497, line: 453, baseType: !531, size: 128)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !497, line: 325, size: 128, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !531, file: !497, line: 326, baseType: !114, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !531, file: !497, line: 327, baseType: !505, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !528, file: !497, line: 454, baseType: !330, size: 192, align: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !528, file: !497, line: 455, baseType: !182, size: 128, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !528, file: !497, line: 456, baseType: !7, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !528, file: !497, line: 458, baseType: !351, size: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !528, file: !497, line: 459, baseType: !351, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !528, file: !497, line: 460, baseType: !351, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !528, file: !497, line: 461, baseType: !351, size: 64, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !528, file: !497, line: 463, baseType: !351, size: 64, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !528, file: !497, line: 465, baseType: !544, offset: 832)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !497, line: 415, elements: !209)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !496, file: !497, line: 693, baseType: !546, size: 384, offset: 1408)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !497, line: 489, size: 384, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !546, file: !497, line: 490, baseType: !182, size: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !546, file: !497, line: 491, baseType: !114, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !546, file: !497, line: 492, baseType: !114, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !546, file: !497, line: 493, baseType: !7, size: 32, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !546, file: !497, line: 494, baseType: !275, size: 16, offset: 288)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !546, file: !497, line: 495, baseType: !275, size: 16, offset: 304)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !546, file: !497, line: 497, baseType: !555, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !496, file: !497, line: 697, baseType: !557, size: 1792, offset: 1792)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !497, line: 507, size: 1792, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !648, !649}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !557, file: !497, line: 508, baseType: !330, size: 192, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !557, file: !497, line: 515, baseType: !351, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !557, file: !497, line: 516, baseType: !351, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !557, file: !497, line: 517, baseType: !351, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !557, file: !497, line: 518, baseType: !351, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !557, file: !497, line: 519, baseType: !351, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !557, file: !497, line: 526, baseType: !387, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !557, file: !497, line: 527, baseType: !351, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !497, line: 528, baseType: !7, size: 32, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !557, file: !497, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !557, file: !497, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !557, file: !497, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !557, file: !497, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !557, file: !497, line: 563, baseType: !573, size: 512, offset: 704)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !574)
!574 = !{!575, !583, !584, !589, !641, !645, !646, !647}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !573, file: !6, line: 119, baseType: !576, size: 256)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !577, line: 9, size: 256, elements: !578)
!577 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !576, file: !577, line: 10, baseType: !330, size: 192, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !576, file: !577, line: 11, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !582, line: 29, baseType: !387)
!582 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !573, file: !6, line: 120, baseType: !581, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !573, file: !6, line: 121, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!5, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !573, file: !6, line: 122, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !592)
!592 = !{!593, !613, !614, !617, !627, !628, !636, !640}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !591, file: !6, line: 160, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !595, file: !6, line: 215, baseType: !398)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !595, file: !6, line: 216, baseType: !7, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !595, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !595, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !595, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !595, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !595, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !595, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !595, file: !6, line: 233, baseType: !581, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !595, file: !6, line: 234, baseType: !588, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !595, file: !6, line: 235, baseType: !581, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !595, file: !6, line: 236, baseType: !588, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !595, file: !6, line: 237, baseType: !610, size: 4096, offset: 512)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 4096, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 8)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !591, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !591, file: !6, line: 162, baseType: !615, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !113, line: 27, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !267, line: 96, baseType: !163)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !591, file: !6, line: 163, baseType: !618, size: 32, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !619, line: 276, baseType: !620)
!619 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !619, line: 276, size: 32, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !620, file: !619, line: 276, baseType: !623, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !619, line: 70, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !619, line: 65, size: 32, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !624, file: !619, line: 66, baseType: !7, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !591, file: !6, line: 164, baseType: !588, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !591, file: !6, line: 165, baseType: !629, size: 128, offset: 256)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !577, line: 14, size: 128, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !629, file: !577, line: 15, baseType: !632, size: 128)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !331, line: 125, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !632, file: !331, line: 126, baseType: !347, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !632, file: !331, line: 127, baseType: !335, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !591, file: !6, line: 166, baseType: !637, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!581}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !591, file: !6, line: 167, baseType: !581, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !573, file: !6, line: 123, baseType: !642, size: 8, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !352, line: 17, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !354, line: 21, baseType: !644)
!644 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !573, file: !6, line: 124, baseType: !642, size: 8, offset: 456)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !573, file: !6, line: 125, baseType: !642, size: 8, offset: 464)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !573, file: !6, line: 126, baseType: !642, size: 8, offset: 472)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !557, file: !497, line: 572, baseType: !573, size: 512, offset: 1216)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !557, file: !497, line: 580, baseType: !650, size: 64, offset: 1728)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !496, file: !497, line: 721, baseType: !7, size: 32, offset: 3584)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !496, file: !497, line: 722, baseType: !163, size: 32, offset: 3616)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !496, file: !497, line: 723, baseType: !654, size: 64, offset: 3648)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !657, line: 17, baseType: !658)
!657 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !657, line: 17, size: 64, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !658, file: !657, line: 17, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 1)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !496, file: !497, line: 724, baseType: !656, size: 64, offset: 3712)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !496, file: !497, line: 749, baseType: !666, offset: 3776)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !497, line: 290, elements: !209)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !496, file: !497, line: 751, baseType: !182, size: 128, offset: 3776)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !496, file: !497, line: 757, baseType: !339, size: 64, offset: 3904)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !496, file: !497, line: 758, baseType: !339, size: 64, offset: 3968)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !496, file: !497, line: 761, baseType: !671, size: 320, offset: 4032)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !428, line: 34, size: 320, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !671, file: !428, line: 35, baseType: !351, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !671, file: !428, line: 36, baseType: !675, size: 256, offset: 64)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !432)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !496, file: !497, line: 766, baseType: !163, size: 32, offset: 4352)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !496, file: !497, line: 767, baseType: !163, size: 32, offset: 4384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !496, file: !497, line: 768, baseType: !163, size: 32, offset: 4416)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !496, file: !497, line: 770, baseType: !163, size: 32, offset: 4448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !496, file: !497, line: 772, baseType: !114, size: 64, offset: 4480)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !496, file: !497, line: 775, baseType: !7, size: 32, offset: 4544)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !496, file: !497, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !496, file: !497, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !496, file: !497, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !496, file: !497, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !496, file: !497, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !496, file: !497, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !496, file: !497, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !496, file: !497, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !496, file: !497, line: 831, baseType: !114, size: 64, offset: 4672)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !496, file: !497, line: 833, baseType: !692, size: 384, offset: 4736)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !693)
!693 = !{!694, !699}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !692, file: !12, line: 26, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!116, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !12, line: 27, baseType: !700, size: 320, offset: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !12, line: 27, size: 320, elements: !701)
!701 = !{!702, !712, !739}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !700, file: !12, line: 36, baseType: !703, size: 320)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !12, line: 29, size: 320, elements: !704)
!704 = !{!705, !707, !708, !709, !710, !711}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !703, file: !12, line: 30, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !703, file: !12, line: 31, baseType: !505, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !12, line: 32, baseType: !505, size: 32, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !703, file: !12, line: 33, baseType: !505, size: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !703, file: !12, line: 34, baseType: !351, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !703, file: !12, line: 35, baseType: !706, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !700, file: !12, line: 46, baseType: !713, size: 192)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !12, line: 38, size: 192, elements: !714)
!714 = !{!715, !716, !717, !738}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !713, file: !12, line: 39, baseType: !615, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !12, line: 41, baseType: !718, size: 64, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !12, line: 41, size: 64, elements: !719)
!719 = !{!720, !728}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !718, file: !12, line: 42, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !723, line: 7, size: 128, elements: !724)
!723 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !722, file: !723, line: 8, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !267, line: 93, baseType: !315)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !722, file: !723, line: 9, baseType: !315, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !718, file: !12, line: 43, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !731, line: 7, size: 64, elements: !732)
!731 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!732 = !{!733, !737}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !730, file: !731, line: 8, baseType: !734, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !731, line: 5, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !352, line: 20, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !354, line: 26, baseType: !163)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !730, file: !731, line: 9, baseType: !735, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !713, file: !12, line: 45, baseType: !351, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !700, file: !12, line: 54, baseType: !740, size: 256)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !12, line: 48, size: 256, elements: !741)
!741 = !{!742, !745, !746, !747, !748}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !740, file: !12, line: 49, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !740, file: !12, line: 50, baseType: !163, size: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !740, file: !12, line: 51, baseType: !163, size: 32, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !740, file: !12, line: 52, baseType: !114, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !740, file: !12, line: 53, baseType: !114, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !496, file: !497, line: 835, baseType: !750, size: 32, offset: 5120)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !113, line: 22, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !267, line: 28, baseType: !163)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !496, file: !497, line: 836, baseType: !750, size: 32, offset: 5152)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !496, file: !497, line: 840, baseType: !114, size: 64, offset: 5184)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !496, file: !497, line: 849, baseType: !495, size: 64, offset: 5248)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !496, file: !497, line: 852, baseType: !495, size: 64, offset: 5312)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !496, file: !497, line: 857, baseType: !182, size: 128, offset: 5376)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !496, file: !497, line: 858, baseType: !182, size: 128, offset: 5504)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !496, file: !497, line: 859, baseType: !495, size: 64, offset: 5632)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !496, file: !497, line: 867, baseType: !182, size: 128, offset: 5696)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !496, file: !497, line: 868, baseType: !182, size: 128, offset: 5824)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !496, file: !497, line: 871, baseType: !762, size: 64, offset: 5952)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !764, line: 59, size: 768, elements: !765)
!764 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!765 = !{!766, !767, !768, !769, !780, !781, !788, !797}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !763, file: !764, line: 61, baseType: !511, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !763, file: !764, line: 62, baseType: !7, size: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !763, file: !764, line: 63, baseType: !195, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !763, file: !764, line: 65, baseType: !770, size: 256, offset: 64)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 256, elements: !432)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !113, line: 182, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !771, file: !113, line: 183, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !113, line: 186, size: 128, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !113, line: 187, baseType: !774, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !775, file: !113, line: 187, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !763, file: !764, line: 66, baseType: !771, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !763, file: !764, line: 68, baseType: !782, size: 128, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !783, line: 40, baseType: !784)
!783 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !783, line: 36, size: 128, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !784, file: !783, line: 37, baseType: !195)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !784, file: !783, line: 38, baseType: !182, size: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !763, file: !764, line: 69, baseType: !789, size: 128, align: 64, offset: 512)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !113, line: 216, size: 128, align: 64, elements: !790)
!790 = !{!791, !793}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !113, line: 217, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !789, file: !113, line: 218, baseType: !794, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !792}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !763, file: !764, line: 70, baseType: !798, size: 128, offset: 640)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 128, elements: !662)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !764, line: 54, size: 128, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !799, file: !764, line: 55, baseType: !163, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !799, file: !764, line: 56, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !764, line: 56, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !496, file: !497, line: 872, baseType: !806, size: 512, offset: 6016)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 512, elements: !432)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !496, file: !497, line: 873, baseType: !182, size: 128, offset: 6528)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !496, file: !497, line: 874, baseType: !182, size: 128, offset: 6656)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !496, file: !497, line: 876, baseType: !810, size: 64, offset: 6784)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !812, line: 26, size: 192, elements: !813)
!812 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !811, file: !812, line: 27, baseType: !7, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !811, file: !812, line: 28, baseType: !816, size: 128, offset: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !817, line: 43, size: 128, elements: !818)
!817 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !816, file: !817, line: 44, baseType: !398)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !816, file: !817, line: 45, baseType: !182, size: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !496, file: !497, line: 879, baseType: !822, size: 64, offset: 6848)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !496, file: !497, line: 882, baseType: !822, size: 64, offset: 6912)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !496, file: !497, line: 884, baseType: !351, size: 64, offset: 6976)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !496, file: !497, line: 885, baseType: !351, size: 64, offset: 7040)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !496, file: !497, line: 890, baseType: !351, size: 64, offset: 7104)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !496, file: !497, line: 891, baseType: !828, size: 128, offset: 7168)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !497, line: 242, size: 128, elements: !829)
!829 = !{!830, !831, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !828, file: !497, line: 244, baseType: !351, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !828, file: !497, line: 245, baseType: !351, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !828, file: !497, line: 246, baseType: !398, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !496, file: !497, line: 900, baseType: !114, size: 64, offset: 7296)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !496, file: !497, line: 901, baseType: !114, size: 64, offset: 7360)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !496, file: !497, line: 904, baseType: !351, size: 64, offset: 7424)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !496, file: !497, line: 907, baseType: !351, size: 64, offset: 7488)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !496, file: !497, line: 910, baseType: !114, size: 64, offset: 7552)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !496, file: !497, line: 911, baseType: !114, size: 64, offset: 7616)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !496, file: !497, line: 914, baseType: !840, size: 640, offset: 7680)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !841, line: 123, size: 640, elements: !842)
!841 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!842 = !{!843, !849, !850}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !840, file: !841, line: 124, baseType: !844, size: 576)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 576, elements: !237)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !841, line: 108, size: 192, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !845, file: !841, line: 109, baseType: !351, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !845, file: !841, line: 110, baseType: !629, size: 128, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !840, file: !841, line: 125, baseType: !7, size: 32, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !840, file: !841, line: 126, baseType: !7, size: 32, offset: 608)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !496, file: !497, line: 917, baseType: !852, size: 192, offset: 8320)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !841, line: 134, size: 192, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !852, file: !841, line: 135, baseType: !789, size: 128, align: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !852, file: !841, line: 136, baseType: !7, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !496, file: !497, line: 923, baseType: !857, size: 64, offset: 8512)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !497, line: 923, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !496, file: !497, line: 926, baseType: !857, size: 64, offset: 8576)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !496, file: !497, line: 929, baseType: !857, size: 64, offset: 8640)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !496, file: !497, line: 933, baseType: !863, size: 64, offset: 8704)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !497, line: 933, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !496, file: !497, line: 943, baseType: !866, size: 128, offset: 8768)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 16)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !496, file: !497, line: 945, baseType: !870, size: 64, offset: 8896)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !497, line: 49, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !496, file: !497, line: 956, baseType: !873, size: 64, offset: 8960)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !497, line: 45, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !496, file: !497, line: 959, baseType: !876, size: 64, offset: 9024)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !497, line: 959, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !496, file: !497, line: 962, baseType: !879, size: 64, offset: 9088)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !497, line: 66, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !496, file: !497, line: 966, baseType: !882, size: 64, offset: 9152)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !497, line: 50, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !496, file: !497, line: 969, baseType: !885, size: 64, offset: 9216)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !841, line: 223, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !496, file: !497, line: 970, baseType: !888, size: 64, offset: 9280)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !497, line: 62, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !496, file: !497, line: 971, baseType: !891, size: 64, offset: 9344)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !892, line: 25, baseType: !893)
!892 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !892, line: 23, size: 64, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !893, file: !892, line: 24, baseType: !661, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !496, file: !497, line: 972, baseType: !891, size: 64, offset: 9408)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !496, file: !497, line: 974, baseType: !891, size: 64, offset: 9472)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !496, file: !497, line: 975, baseType: !899, size: 192, offset: 9536)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !900, line: 30, size: 192, elements: !901)
!900 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !899, file: !900, line: 31, baseType: !182, size: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !899, file: !900, line: 32, baseType: !891, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !496, file: !497, line: 976, baseType: !114, size: 64, offset: 9728)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !496, file: !497, line: 977, baseType: !280, size: 64, offset: 9792)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !496, file: !497, line: 978, baseType: !7, size: 32, offset: 9856)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !496, file: !497, line: 980, baseType: !792, size: 64, offset: 9920)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !496, file: !497, line: 989, baseType: !909, size: 128, offset: 9984)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !910, line: 35, size: 128, elements: !911)
!910 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !909, file: !910, line: 36, baseType: !163, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !909, file: !910, line: 37, baseType: !373, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !909, file: !910, line: 38, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !910, line: 23, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !496, file: !497, line: 992, baseType: !351, size: 64, offset: 10112)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !496, file: !497, line: 993, baseType: !351, size: 64, offset: 10176)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !496, file: !497, line: 996, baseType: !195, offset: 10240)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !496, file: !497, line: 999, baseType: !398, offset: 10240)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !496, file: !497, line: 1001, baseType: !922, size: 64, offset: 10240)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !497, line: 636, size: 64, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !922, file: !497, line: 637, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !496, file: !497, line: 1005, baseType: !632, size: 128, offset: 10304)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !496, file: !497, line: 1007, baseType: !495, size: 64, offset: 10432)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !496, file: !497, line: 1009, baseType: !929, size: 64, offset: 10496)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !497, line: 1009, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !496, file: !497, line: 1043, baseType: !115, size: 64, offset: 10560)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !496, file: !497, line: 1046, baseType: !933, size: 64, offset: 10624)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !497, line: 41, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !496, file: !497, line: 1050, baseType: !936, size: 64, offset: 10688)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !497, line: 42, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !496, file: !497, line: 1054, baseType: !939, size: 64, offset: 10752)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !497, line: 55, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !496, file: !497, line: 1056, baseType: !942, size: 64, offset: 10816)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !497, line: 40, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !496, file: !497, line: 1058, baseType: !945, size: 64, offset: 10880)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !497, line: 47, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !496, file: !497, line: 1061, baseType: !948, size: 64, offset: 10944)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !497, line: 43, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !496, file: !497, line: 1064, baseType: !114, size: 64, offset: 11008)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !496, file: !497, line: 1065, baseType: !952, size: 64, offset: 11072)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !900, line: 14, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !900, line: 12, size: 384, elements: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !900, line: 13, baseType: !957, size: 384)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !900, line: 13, size: 384, elements: !958)
!958 = !{!959, !960, !961, !962}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !957, file: !900, line: 13, baseType: !163, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !957, file: !900, line: 13, baseType: !163, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !957, file: !900, line: 13, baseType: !163, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !957, file: !900, line: 13, baseType: !963, size: 256, offset: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !964, line: 32, size: 256, elements: !965)
!964 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!965 = !{!966, !972, !985, !991, !1000, !1020, !1025}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !963, file: !964, line: 37, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !964, line: 34, size: 64, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !967, file: !964, line: 35, baseType: !751, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !967, file: !964, line: 36, baseType: !971, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !267, line: 49, baseType: !7)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !963, file: !964, line: 45, baseType: !973, size: 192)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !964, line: 40, size: 192, elements: !974)
!974 = !{!975, !977, !978, !984}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !973, file: !964, line: 41, baseType: !976, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !267, line: 95, baseType: !163)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !973, file: !964, line: 42, baseType: !163, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !973, file: !964, line: 43, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !964, line: 11, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !964, line: 8, size: 64, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !980, file: !964, line: 9, baseType: !163, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !980, file: !964, line: 10, baseType: !115, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !973, file: !964, line: 44, baseType: !163, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !963, file: !964, line: 52, baseType: !986, size: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !964, line: 48, size: 128, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !986, file: !964, line: 49, baseType: !751, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !986, file: !964, line: 50, baseType: !971, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !986, file: !964, line: 51, baseType: !979, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !963, file: !964, line: 61, baseType: !992, size: 256)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !964, line: 55, size: 256, elements: !993)
!993 = !{!994, !995, !996, !997, !999}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !992, file: !964, line: 56, baseType: !751, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !992, file: !964, line: 57, baseType: !971, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !992, file: !964, line: 58, baseType: !163, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !992, file: !964, line: 59, baseType: !998, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !267, line: 94, baseType: !268)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !992, file: !964, line: 60, baseType: !998, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !963, file: !964, line: 95, baseType: !1001, size: 256)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !964, line: 64, size: 256, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1001, file: !964, line: 65, baseType: !115, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !964, line: 77, baseType: !1005, size: 192, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !964, line: 77, size: 192, elements: !1006)
!1006 = !{!1007, !1008, !1015}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1005, file: !964, line: 82, baseType: !484, size: 16)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1005, file: !964, line: 88, baseType: !1009, size: 192)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !964, line: 84, size: 192, elements: !1010)
!1010 = !{!1011, !1013, !1014}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1009, file: !964, line: 85, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !611)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1009, file: !964, line: 86, baseType: !115, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1009, file: !964, line: 87, baseType: !115, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1005, file: !964, line: 93, baseType: !1016, size: 96)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !964, line: 90, size: 96, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1016, file: !964, line: 91, baseType: !1012, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1016, file: !964, line: 92, baseType: !506, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !963, file: !964, line: 101, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !964, line: 98, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1021, file: !964, line: 99, baseType: !116, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1021, file: !964, line: 100, baseType: !163, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !963, file: !964, line: 108, baseType: !1026, size: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !964, line: 104, size: 128, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1026, file: !964, line: 105, baseType: !115, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1026, file: !964, line: 106, baseType: !163, size: 32, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1026, file: !964, line: 107, baseType: !7, size: 32, offset: 96)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !496, file: !497, line: 1067, baseType: !1032, offset: 11136)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1033, line: 12, elements: !209)
!1033 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !496, file: !497, line: 1099, baseType: !1035, size: 64, offset: 11136)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !497, line: 56, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !496, file: !497, line: 1103, baseType: !182, size: 128, offset: 11200)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !496, file: !497, line: 1104, baseType: !1039, size: 64, offset: 11328)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !497, line: 46, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !496, file: !497, line: 1105, baseType: !450, size: 192, offset: 11392)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !496, file: !497, line: 1106, baseType: !7, size: 32, offset: 11584)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !496, file: !497, line: 1109, baseType: !1044, size: 128, offset: 11648)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1045, size: 128, elements: !1047)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !497, line: 51, flags: DIFlagFwdDecl)
!1047 = !{!1048}
!1048 = !DISubrange(count: 2)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !496, file: !497, line: 1110, baseType: !450, size: 192, offset: 11776)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !496, file: !497, line: 1111, baseType: !182, size: 128, offset: 11968)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !496, file: !497, line: 1173, baseType: !1052, size: 64, offset: 12096)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1054, line: 62, size: 256, align: 256, elements: !1055)
!1054 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1055 = !{!1056, !1057, !1058, !1063}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1053, file: !1054, line: 75, baseType: !506, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1053, file: !1054, line: 90, baseType: !506, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1053, file: !1054, line: 124, baseType: !1059, size: 64, offset: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !1054, line: 109, size: 64, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1059, file: !1054, line: 110, baseType: !353, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1059, file: !1054, line: 112, baseType: !353, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !1054, line: 144, baseType: !506, size: 32, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !496, file: !497, line: 1174, baseType: !505, size: 32, offset: 12160)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !496, file: !497, line: 1179, baseType: !114, size: 64, offset: 12224)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !496, file: !497, line: 1182, baseType: !1067, size: 128, offset: 12288)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !428, line: 76, size: 128, elements: !1068)
!1068 = !{!1069, !1074, !1075}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1067, file: !428, line: 85, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1071, line: 7, size: 64, elements: !1072)
!1071 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1070, file: !1071, line: 12, baseType: !658, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1067, file: !428, line: 88, baseType: !171, size: 8, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1067, file: !428, line: 95, baseType: !171, size: 8, offset: 72)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !497, line: 1184, baseType: !1077, size: 128, offset: 12416)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !497, line: 1184, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1077, file: !497, line: 1185, baseType: !511, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1077, file: !497, line: 1186, baseType: !789, size: 128, align: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !496, file: !497, line: 1190, baseType: !1082, size: 64, offset: 12544)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !497, line: 53, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !496, file: !497, line: 1192, baseType: !1085, size: 128, offset: 12608)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !428, line: 64, size: 128, elements: !1086)
!1086 = !{!1087, !1180, !1181}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1085, file: !428, line: 65, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !323, line: 68, size: 512, align: 128, elements: !1090)
!1090 = !{!1091, !1092, !1172, !1179}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !323, line: 69, baseType: !114, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !323, line: 77, baseType: !1093, size: 320, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !323, line: 77, size: 320, elements: !1094)
!1094 = !{!1095, !1104, !1109, !1137, !1145, !1151, !1164, !1171}
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !323, line: 78, baseType: !1096, size: 320)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !323, line: 78, size: 320, elements: !1097)
!1097 = !{!1098, !1099, !1102, !1103}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1096, file: !323, line: 84, baseType: !182, size: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1096, file: !323, line: 86, baseType: !1100, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !323, line: 26, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1096, file: !323, line: 87, baseType: !114, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1096, file: !323, line: 94, baseType: !114, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !323, line: 96, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !323, line: 96, size: 64, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1105, file: !323, line: 101, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !113, line: 143, baseType: !351)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !323, line: 103, baseType: !1110, size: 320)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !323, line: 103, size: 320, elements: !1111)
!1111 = !{!1112, !1122, !1125, !1126}
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !323, line: 104, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1110, file: !323, line: 104, size: 128, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1113, file: !323, line: 105, baseType: !182, size: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !323, line: 106, baseType: !1117, size: 128)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !323, line: 106, size: 128, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !323, line: 107, baseType: !1088, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1117, file: !323, line: 109, baseType: !163, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1117, file: !323, line: 110, baseType: !163, size: 32, offset: 96)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1110, file: !323, line: 117, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !323, line: 117, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1110, file: !323, line: 119, baseType: !115, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !323, line: 120, baseType: !1127, size: 64, offset: 256)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1110, file: !323, line: 120, size: 64, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1127, file: !323, line: 121, baseType: !115, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1127, file: !323, line: 122, baseType: !114, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !323, line: 123, baseType: !1132, size: 32)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !323, line: 123, size: 32, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1132, file: !323, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1132, file: !323, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1132, file: !323, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !323, line: 130, baseType: !1138, size: 192)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !323, line: 130, size: 192, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1138, file: !323, line: 131, baseType: !114, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1138, file: !323, line: 134, baseType: !644, size: 8, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1138, file: !323, line: 135, baseType: !644, size: 8, offset: 72)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1138, file: !323, line: 136, baseType: !373, size: 32, offset: 96)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1138, file: !323, line: 137, baseType: !7, size: 32, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !323, line: 139, baseType: !1146, size: 256)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !323, line: 139, size: 256, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1146, file: !323, line: 140, baseType: !114, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1146, file: !323, line: 141, baseType: !373, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1146, file: !323, line: 143, baseType: !182, size: 128, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !323, line: 145, baseType: !1152, size: 256)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !323, line: 145, size: 256, elements: !1153)
!1153 = !{!1154, !1155, !1157, !1158, !1163}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1152, file: !323, line: 146, baseType: !114, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1152, file: !323, line: 147, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !312, line: 509, baseType: !1088)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1152, file: !323, line: 148, baseType: !114, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !323, line: 149, baseType: !1159, size: 64, offset: 192)
!1159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !323, line: 149, size: 64, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1159, file: !323, line: 150, baseType: !339, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1159, file: !323, line: 151, baseType: !373, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1152, file: !323, line: 156, baseType: !195, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !323, line: 159, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !323, line: 159, size: 128, elements: !1166)
!1166 = !{!1167, !1170}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1165, file: !323, line: 161, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !323, line: 161, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1165, file: !323, line: 162, baseType: !115, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1093, file: !323, line: 176, baseType: !789, size: 128, align: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !323, line: 179, baseType: !1173, size: 32, offset: 384)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !323, line: 179, size: 32, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1173, file: !323, line: 184, baseType: !373, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1173, file: !323, line: 192, baseType: !7, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1173, file: !323, line: 194, baseType: !7, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1173, file: !323, line: 195, baseType: !163, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1089, file: !323, line: 199, baseType: !373, size: 32, offset: 416)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1085, file: !428, line: 67, baseType: !506, size: 32, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1085, file: !428, line: 68, baseType: !506, size: 32, offset: 96)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !496, file: !497, line: 1206, baseType: !163, size: 32, offset: 12736)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !496, file: !497, line: 1207, baseType: !163, size: 32, offset: 12768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !496, file: !497, line: 1209, baseType: !114, size: 64, offset: 12800)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !496, file: !497, line: 1219, baseType: !351, size: 64, offset: 12864)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !496, file: !497, line: 1220, baseType: !351, size: 64, offset: 12928)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !496, file: !497, line: 1317, baseType: !163, size: 32, offset: 12992)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !496, file: !497, line: 1319, baseType: !495, size: 64, offset: 13056)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !496, file: !497, line: 1322, baseType: !1190, size: 64, offset: 13120)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1192, line: 56, size: 512, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1200, !1201, !1203}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1191, file: !1192, line: 57, baseType: !1190, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1191, file: !1192, line: 58, baseType: !115, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1191, file: !1192, line: 59, baseType: !114, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 60, baseType: !114, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1191, file: !1192, line: 61, baseType: !1199, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1191, file: !1192, line: 62, baseType: !7, size: 32, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1191, file: !1192, line: 63, baseType: !1202, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !113, line: 153, baseType: !351)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1191, file: !1192, line: 64, baseType: !1204, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !496, file: !497, line: 1326, baseType: !511, size: 32, offset: 13184)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !496, file: !497, line: 1342, baseType: !115, size: 64, offset: 13248)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !496, file: !497, line: 1343, baseType: !353, size: 64, offset: 13312)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !496, file: !497, line: 1344, baseType: !351, size: 64, offset: 13376)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !496, file: !497, line: 1345, baseType: !353, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !496, file: !497, line: 1346, baseType: !353, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !496, file: !497, line: 1347, baseType: !353, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !496, file: !497, line: 1348, baseType: !789, size: 128, align: 64, offset: 13504)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !496, file: !497, line: 1358, baseType: !1215, size: 34816, offset: 13824)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1216, line: 485, size: 34816, elements: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1247, !1248, !1249, !1250, !1251, !1252, !1255, !1256, !1257}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1215, file: !1216, line: 487, baseType: !1219, size: 192)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 192, elements: !237)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1221, line: 16, size: 64, elements: !1222)
!1221 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1220, file: !1221, line: 17, baseType: !479, size: 16)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1220, file: !1221, line: 18, baseType: !479, size: 16, offset: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1220, file: !1221, line: 19, baseType: !479, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1220, file: !1221, line: 19, baseType: !479, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1220, file: !1221, line: 19, baseType: !479, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1220, file: !1221, line: 19, baseType: !479, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1220, file: !1221, line: 19, baseType: !479, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1220, file: !1221, line: 20, baseType: !479, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1220, file: !1221, line: 20, baseType: !479, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1220, file: !1221, line: 20, baseType: !479, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1220, file: !1221, line: 20, baseType: !479, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1220, file: !1221, line: 20, baseType: !479, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1220, file: !1221, line: 20, baseType: !479, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1215, file: !1216, line: 491, baseType: !114, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1215, file: !1216, line: 495, baseType: !275, size: 16, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1215, file: !1216, line: 496, baseType: !275, size: 16, offset: 272)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1215, file: !1216, line: 497, baseType: !275, size: 16, offset: 288)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1215, file: !1216, line: 498, baseType: !275, size: 16, offset: 304)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1215, file: !1216, line: 502, baseType: !114, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1215, file: !1216, line: 503, baseType: !114, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1215, file: !1216, line: 514, baseType: !1244, size: 256, offset: 448)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 256, elements: !432)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1216, line: 483, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1215, file: !1216, line: 516, baseType: !114, size: 64, offset: 704)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1215, file: !1216, line: 518, baseType: !114, size: 64, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1215, file: !1216, line: 520, baseType: !114, size: 64, offset: 832)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1215, file: !1216, line: 521, baseType: !114, size: 64, offset: 896)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1215, file: !1216, line: 522, baseType: !114, size: 64, offset: 960)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1215, file: !1216, line: 528, baseType: !1253, size: 64, offset: 1024)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1216, line: 10, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1215, file: !1216, line: 535, baseType: !114, size: 64, offset: 1088)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1215, file: !1216, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1215, file: !1216, line: 540, baseType: !1258, size: 33280, offset: 1536)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1259, line: 317, size: 33280, elements: !1260)
!1259 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1260 = !{!1261, !1262, !1263}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1258, file: !1259, line: 330, baseType: !7, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1258, file: !1259, line: 337, baseType: !114, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1258, file: !1259, line: 348, baseType: !1264, size: 32768, offset: 512)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1259, line: 304, size: 32768, elements: !1265)
!1265 = !{!1266, !1281, !1320, !1370, !1387}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1264, file: !1259, line: 305, baseType: !1267, size: 896)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1259, line: 12, size: 896, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1280}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1267, file: !1259, line: 13, baseType: !505, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1267, file: !1259, line: 14, baseType: !505, size: 32, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1267, file: !1259, line: 15, baseType: !505, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1267, file: !1259, line: 16, baseType: !505, size: 32, offset: 96)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1267, file: !1259, line: 17, baseType: !505, size: 32, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1267, file: !1259, line: 18, baseType: !505, size: 32, offset: 160)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1267, file: !1259, line: 19, baseType: !505, size: 32, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1267, file: !1259, line: 22, baseType: !1277, size: 640, offset: 224)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 640, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 20)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1267, file: !1259, line: 25, baseType: !505, size: 32, offset: 864)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1264, file: !1259, line: 306, baseType: !1282, size: 4096, align: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1259, line: 34, size: 4096, align: 128, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1303, !1304, !1305, !1309, !1311, !1315}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1282, file: !1259, line: 35, baseType: !479, size: 16)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1282, file: !1259, line: 36, baseType: !479, size: 16, offset: 16)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1282, file: !1259, line: 37, baseType: !479, size: 16, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1282, file: !1259, line: 38, baseType: !479, size: 16, offset: 48)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1259, line: 39, baseType: !1289, size: 128, offset: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !1259, line: 39, size: 128, elements: !1290)
!1290 = !{!1291, !1296}
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1259, line: 40, baseType: !1292, size: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1259, line: 40, size: 128, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1292, file: !1259, line: 41, baseType: !351, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1292, file: !1259, line: 42, baseType: !351, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1259, line: 44, baseType: !1297, size: 128)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1259, line: 44, size: 128, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1297, file: !1259, line: 45, baseType: !505, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1297, file: !1259, line: 46, baseType: !505, size: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1297, file: !1259, line: 47, baseType: !505, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1297, file: !1259, line: 48, baseType: !505, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1282, file: !1259, line: 51, baseType: !505, size: 32, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1282, file: !1259, line: 52, baseType: !505, size: 32, offset: 224)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1282, file: !1259, line: 55, baseType: !1306, size: 1024, offset: 256)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 1024, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1282, file: !1259, line: 58, baseType: !1310, size: 2048, offset: 1280)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 2048, elements: !132)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1282, file: !1259, line: 60, baseType: !1312, size: 384, offset: 3328)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 384, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 12)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1259, line: 62, baseType: !1316, size: 384, offset: 3712)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !1259, line: 62, size: 384, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1316, file: !1259, line: 63, baseType: !1312, size: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1316, file: !1259, line: 64, baseType: !1312, size: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1264, file: !1259, line: 307, baseType: !1321, size: 1088)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1259, line: 79, size: 1088, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1369}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1321, file: !1259, line: 80, baseType: !505, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1321, file: !1259, line: 81, baseType: !505, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1321, file: !1259, line: 82, baseType: !505, size: 32, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1321, file: !1259, line: 83, baseType: !505, size: 32, offset: 96)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1321, file: !1259, line: 84, baseType: !505, size: 32, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1321, file: !1259, line: 85, baseType: !505, size: 32, offset: 160)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1321, file: !1259, line: 86, baseType: !505, size: 32, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1321, file: !1259, line: 88, baseType: !1277, size: 640, offset: 224)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1321, file: !1259, line: 89, baseType: !642, size: 8, offset: 864)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1321, file: !1259, line: 90, baseType: !642, size: 8, offset: 872)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1321, file: !1259, line: 91, baseType: !642, size: 8, offset: 880)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1321, file: !1259, line: 92, baseType: !642, size: 8, offset: 888)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1321, file: !1259, line: 93, baseType: !642, size: 8, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1321, file: !1259, line: 94, baseType: !642, size: 8, offset: 904)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1321, file: !1259, line: 95, baseType: !1338, size: 64, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1340, line: 11, size: 128, elements: !1341)
!1340 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1339, file: !1340, line: 12, baseType: !116, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1339, file: !1340, line: 13, baseType: !1344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1346, line: 56, size: 1344, elements: !1347)
!1346 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1345, file: !1346, line: 61, baseType: !114, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1345, file: !1346, line: 62, baseType: !114, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1345, file: !1346, line: 63, baseType: !114, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1345, file: !1346, line: 64, baseType: !114, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1345, file: !1346, line: 65, baseType: !114, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1345, file: !1346, line: 66, baseType: !114, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1345, file: !1346, line: 68, baseType: !114, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1345, file: !1346, line: 69, baseType: !114, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1345, file: !1346, line: 70, baseType: !114, size: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1345, file: !1346, line: 71, baseType: !114, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1345, file: !1346, line: 72, baseType: !114, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1345, file: !1346, line: 73, baseType: !114, size: 64, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1345, file: !1346, line: 74, baseType: !114, size: 64, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1345, file: !1346, line: 75, baseType: !114, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1345, file: !1346, line: 76, baseType: !114, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1345, file: !1346, line: 81, baseType: !114, size: 64, offset: 960)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1345, file: !1346, line: 83, baseType: !114, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1345, file: !1346, line: 84, baseType: !114, size: 64, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1345, file: !1346, line: 85, baseType: !114, size: 64, offset: 1152)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1345, file: !1346, line: 86, baseType: !114, size: 64, offset: 1216)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1345, file: !1346, line: 87, baseType: !114, size: 64, offset: 1280)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1321, file: !1259, line: 96, baseType: !505, size: 32, offset: 1024)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1264, file: !1259, line: 308, baseType: !1371, size: 4608, align: 512)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1259, line: 289, size: 4608, align: 512, elements: !1372)
!1372 = !{!1373, !1374, !1383}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1371, file: !1259, line: 290, baseType: !1282, size: 4096, align: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1371, file: !1259, line: 291, baseType: !1375, size: 512, offset: 4096)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1259, line: 268, size: 512, elements: !1376)
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1375, file: !1259, line: 269, baseType: !351, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1375, file: !1259, line: 270, baseType: !351, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1375, file: !1259, line: 271, baseType: !1380, size: 384, offset: 128)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 384, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 6)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1371, file: !1259, line: 292, baseType: !1384, offset: 4608)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 0)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1264, file: !1259, line: 309, baseType: !1388, size: 32768)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 32768, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 4096)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !323, line: 378, baseType: !1392, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !488, file: !323, line: 384, baseType: !811, size: 192, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !343, file: !323, line: 500, baseType: !195, offset: 6656)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !343, file: !323, line: 501, baseType: !1396, size: 64, offset: 6656)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !323, line: 387, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !343, file: !323, line: 516, baseType: !1399, size: 64, offset: 6720)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !323, line: 516, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !343, file: !323, line: 519, baseType: !310, size: 64, offset: 6784)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !343, file: !323, line: 521, baseType: !1403, size: 64, offset: 6848)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !323, line: 521, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !343, file: !323, line: 545, baseType: !373, size: 32, offset: 6912)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !343, file: !323, line: 548, baseType: !171, size: 8, offset: 6944)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !343, file: !323, line: 550, baseType: !1408, offset: 6952)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1409, line: 142, elements: !209)
!1409 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !343, file: !323, line: 554, baseType: !1411, size: 256, offset: 6976)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1412, line: 102, size: 256, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1411, file: !1412, line: 103, baseType: !381, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1411, file: !1412, line: 104, baseType: !182, size: 128, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1411, file: !1412, line: 105, baseType: !1417, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1412, line: 21, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !343, file: !323, line: 557, baseType: !505, size: 32, offset: 7232)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !340, file: !323, line: 565, baseType: !1424, offset: 7296)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: -1)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !322, file: !323, line: 333, baseType: !1428, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !312, line: 284, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !312, line: 284, size: 64, elements: !1430)
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1429, file: !312, line: 284, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !371, line: 19, baseType: !114)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !322, file: !323, line: 334, baseType: !114, size: 64, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !322, file: !323, line: 343, baseType: !1435, size: 256, offset: 704)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !323, line: 340, size: 256, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1435, file: !323, line: 341, baseType: !330, size: 192, align: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1435, file: !323, line: 342, baseType: !114, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !322, file: !323, line: 351, baseType: !182, size: 128, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !322, file: !323, line: 353, baseType: !1441, size: 64, offset: 1088)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !323, line: 353, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !322, file: !323, line: 356, baseType: !1444, size: 64, offset: 1152)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1446)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !323, line: 356, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !322, file: !323, line: 359, baseType: !114, size: 64, offset: 1216)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !322, file: !323, line: 361, baseType: !310, size: 64, offset: 1280)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !322, file: !323, line: 362, baseType: !115, size: 64, offset: 1344)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !322, file: !323, line: 365, baseType: !381, size: 64, offset: 1408)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !322, file: !323, line: 373, baseType: !1452, offset: 1472)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !323, line: 296, elements: !209)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !289, file: !259, line: 90, baseType: !284, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !289, file: !259, line: 91, baseType: !1455, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !249, file: !178, line: 143, baseType: !1457, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!1460, !188}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1463)
!1463 = !{!1464, !1465, !1469, !1473, !1479, !1483}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1462, file: !18, line: 40, baseType: !17, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1462, file: !18, line: 41, baseType: !1466, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!171}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1462, file: !18, line: 42, baseType: !1470, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!115}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1462, file: !18, line: 43, baseType: !1474, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1204, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1462, file: !18, line: 44, baseType: !1480, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1204}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1462, file: !18, line: 45, baseType: !1484, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !115}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !249, file: !178, line: 144, baseType: !1488, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1204, !188}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !249, file: !178, line: 145, baseType: !1492, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !188, !1495, !1502}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1497, line: 23, baseType: !1498)
!1497 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1497, line: 21, size: 32, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1498, file: !1497, line: 22, baseType: !1501, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !113, line: 32, baseType: !971)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1497, line: 28, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1497, line: 26, size: 32, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1504, file: !1497, line: 27, baseType: !1507, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !113, line: 33, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !267, line: 50, baseType: !7)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !177, file: !178, line: 70, baseType: !1510, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1512, line: 123, size: 1024, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1655, !1656, !1657, !1658, !1659}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1511, file: !1512, line: 124, baseType: !373, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1511, file: !1512, line: 125, baseType: !373, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1511, file: !1512, line: 135, baseType: !1510, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1511, file: !1512, line: 136, baseType: !168, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1511, file: !1512, line: 138, baseType: !330, size: 192, align: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1511, file: !1512, line: 140, baseType: !1204, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1511, file: !1512, line: 141, baseType: !7, size: 32, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1512, line: 142, baseType: !1522, size: 256, offset: 512)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !1512, line: 142, size: 256, elements: !1523)
!1523 = !{!1524, !1578, !1582}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1522, file: !1512, line: 143, baseType: !1525, size: 192)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1512, line: 91, size: 192, elements: !1526)
!1526 = !{!1527, !1528, !1529}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1525, file: !1512, line: 92, baseType: !114, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1525, file: !1512, line: 94, baseType: !347, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1525, file: !1512, line: 100, baseType: !1530, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1512, line: 180, size: 704, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1548, !1549, !1550, !1576, !1577}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1531, file: !1512, line: 182, baseType: !1510, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1531, file: !1512, line: 183, baseType: !7, size: 32, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1531, file: !1512, line: 186, baseType: !1536, size: 192, offset: 128)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1537, line: 19, size: 192, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539, !1546, !1547}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1536, file: !1537, line: 20, baseType: !1540, size: 128)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1541, line: 292, size: 128, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !{!1543, !1544, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1540, file: !1541, line: 293, baseType: !195)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1540, file: !1541, line: 295, baseType: !112, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1540, file: !1541, line: 296, baseType: !115, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1536, file: !1537, line: 21, baseType: !7, size: 32, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1536, file: !1537, line: 22, baseType: !7, size: 32, offset: 160)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1531, file: !1512, line: 187, baseType: !505, size: 32, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1531, file: !1512, line: 188, baseType: !505, size: 32, offset: 352)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1531, file: !1512, line: 189, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1512, line: 168, size: 320, elements: !1553)
!1553 = !{!1554, !1560, !1564, !1568, !1572}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1552, file: !1512, line: 169, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!163, !1558, !1530}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !312, line: 539, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1552, file: !1512, line: 171, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!163, !1510, !168, !274}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1552, file: !1512, line: 173, baseType: !1565, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!163, !1510}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1552, file: !1512, line: 174, baseType: !1569, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!163, !1510, !1510, !168}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1552, file: !1512, line: 176, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!163, !1558, !1510, !1530}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1531, file: !1512, line: 192, baseType: !182, size: 128, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1531, file: !1512, line: 194, baseType: !782, size: 128, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1522, file: !1512, line: 144, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1512, line: 103, size: 64, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1579, file: !1512, line: 104, baseType: !1510, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1522, file: !1512, line: 145, baseType: !1583, size: 256)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1512, line: 107, size: 256, elements: !1584)
!1584 = !{!1585, !1650, !1653, !1654}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1583, file: !1512, line: 108, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1512, line: 217, size: 768, elements: !1589)
!1589 = !{!1590, !1610, !1614, !1618, !1623, !1627, !1631, !1635, !1636, !1637, !1638, !1646}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1588, file: !1512, line: 222, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!163, !1594}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1512, line: 197, size: 1088, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1595, file: !1512, line: 199, baseType: !1510, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1595, file: !1512, line: 200, baseType: !310, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1595, file: !1512, line: 201, baseType: !1558, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1595, file: !1512, line: 202, baseType: !115, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1595, file: !1512, line: 205, baseType: !450, size: 192, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1595, file: !1512, line: 206, baseType: !450, size: 192, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1595, file: !1512, line: 207, baseType: !163, size: 32, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1595, file: !1512, line: 208, baseType: !182, size: 128, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1595, file: !1512, line: 209, baseType: !236, size: 64, offset: 832)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1595, file: !1512, line: 211, baseType: !280, size: 64, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1595, file: !1512, line: 212, baseType: !171, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1595, file: !1512, line: 213, baseType: !171, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1595, file: !1512, line: 214, baseType: !1444, size: 64, offset: 1024)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1588, file: !1512, line: 223, baseType: !1611, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1594}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1588, file: !1512, line: 236, baseType: !1615, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!163, !1558, !115}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1588, file: !1512, line: 238, baseType: !1619, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!115, !1558, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1588, file: !1512, line: 239, baseType: !1624, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!115, !1558, !115, !1622}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1588, file: !1512, line: 240, baseType: !1628, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1558, !115}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1588, file: !1512, line: 242, baseType: !1632, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!265, !1594, !236, !280, !313}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1588, file: !1512, line: 252, baseType: !280, size: 64, offset: 448)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1588, file: !1512, line: 259, baseType: !171, size: 8, offset: 512)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1588, file: !1512, line: 260, baseType: !1632, size: 64, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1588, file: !1512, line: 263, baseType: !1639, size: 64, offset: 640)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1642, !1594, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1643, line: 52, baseType: !7)
!1643 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1512, line: 27, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1588, file: !1512, line: 266, baseType: !1647, size: 64, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!163, !1594, !321}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1583, file: !1512, line: 109, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1512, line: 31, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1583, file: !1512, line: 110, baseType: !313, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1583, file: !1512, line: 111, baseType: !1510, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1511, file: !1512, line: 148, baseType: !115, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1511, file: !1512, line: 154, baseType: !351, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1511, file: !1512, line: 156, baseType: !275, size: 16, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1511, file: !1512, line: 157, baseType: !274, size: 16, offset: 912)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1511, file: !1512, line: 158, baseType: !1660, size: 64, offset: 960)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1512, line: 32, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !177, file: !178, line: 71, baseType: !1663, size: 32, offset: 448)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1664, line: 19, size: 32, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1663, file: !1664, line: 20, baseType: !511, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !177, file: !178, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !177, file: !178, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !177, file: !178, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !177, file: !178, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !177, file: !178, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !30, line: 463, baseType: !1673, size: 64, offset: 512)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !174, file: !30, line: 465, baseType: !1675, size: 64, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !174, file: !30, line: 467, baseType: !168, size: 64, offset: 640)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !30, line: 468, baseType: !1679, size: 64, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1689, !1694, !1698}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1681, file: !30, line: 88, baseType: !168, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1681, file: !30, line: 89, baseType: !286, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1681, file: !30, line: 90, baseType: !1686, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!163, !1673, !231}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1681, file: !30, line: 91, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!236, !1673, !1693, !1495, !1502}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1681, file: !30, line: 93, baseType: !1695, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1673}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1681, file: !30, line: 95, baseType: !1699, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1702)
!1702 = !{!1703, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1701, file: !37, line: 279, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!163, !1673}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1701, file: !37, line: 280, baseType: !1695, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1701, file: !37, line: 281, baseType: !1704, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1701, file: !37, line: 282, baseType: !1704, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1701, file: !37, line: 283, baseType: !1704, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1701, file: !37, line: 284, baseType: !1704, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1701, file: !37, line: 285, baseType: !1704, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1701, file: !37, line: 286, baseType: !1704, size: 64, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1701, file: !37, line: 287, baseType: !1704, size: 64, offset: 512)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1701, file: !37, line: 288, baseType: !1704, size: 64, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1701, file: !37, line: 289, baseType: !1704, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1701, file: !37, line: 290, baseType: !1704, size: 64, offset: 704)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1701, file: !37, line: 291, baseType: !1704, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1701, file: !37, line: 292, baseType: !1704, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1701, file: !37, line: 293, baseType: !1704, size: 64, offset: 896)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1701, file: !37, line: 294, baseType: !1704, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1701, file: !37, line: 295, baseType: !1704, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1701, file: !37, line: 296, baseType: !1704, size: 64, offset: 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1701, file: !37, line: 297, baseType: !1704, size: 64, offset: 1152)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1701, file: !37, line: 298, baseType: !1704, size: 64, offset: 1216)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1701, file: !37, line: 299, baseType: !1704, size: 64, offset: 1280)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1701, file: !37, line: 300, baseType: !1704, size: 64, offset: 1344)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1701, file: !37, line: 301, baseType: !1704, size: 64, offset: 1408)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !174, file: !30, line: 470, baseType: !1730, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1732, line: 82, size: 1408, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1816, !1819, !1822}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1731, file: !1732, line: 83, baseType: !168, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1731, file: !1732, line: 84, baseType: !168, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1731, file: !1732, line: 85, baseType: !1673, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1731, file: !1732, line: 86, baseType: !286, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1731, file: !1732, line: 87, baseType: !286, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1731, file: !1732, line: 88, baseType: !286, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1731, file: !1732, line: 90, baseType: !1741, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!163, !1673, !1744}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1767, !1780, !1781, !1782, !1783, !1784, !1792, !1793, !1794, !1795, !1796, !1797}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1745, file: !24, line: 96, baseType: !168, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1745, file: !24, line: 97, baseType: !1730, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1745, file: !24, line: 99, baseType: !109, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1745, file: !24, line: 100, baseType: !168, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1745, file: !24, line: 102, baseType: !171, size: 8, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1745, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1745, file: !24, line: 105, baseType: !1754, size: 64, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1757, line: 262, size: 1600, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !{!1759, !1761, !1762, !1766}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1756, file: !1757, line: 263, baseType: !1760, size: 256)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !1307)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1756, file: !1757, line: 264, baseType: !1760, size: 256, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1756, file: !1757, line: 265, baseType: !1763, size: 1024, offset: 512)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1024, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1756, file: !1757, line: 266, baseType: !1204, size: 64, offset: 1536)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1745, file: !24, line: 106, baseType: !1768, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1757, line: 210, size: 256, elements: !1771)
!1771 = !{!1772, !1776, !1778, !1779}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1770, file: !1757, line: 211, baseType: !1773, size: 72)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 72, elements: !1774)
!1774 = !{!1775}
!1775 = !DISubrange(count: 9)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1770, file: !1757, line: 212, baseType: !1777, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1757, line: 14, baseType: !114)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1770, file: !1757, line: 213, baseType: !506, size: 32, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1770, file: !1757, line: 214, baseType: !506, size: 32, offset: 224)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1745, file: !24, line: 108, baseType: !1704, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1745, file: !24, line: 109, baseType: !1695, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1745, file: !24, line: 110, baseType: !1704, size: 64, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1745, file: !24, line: 111, baseType: !1695, size: 64, offset: 640)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1745, file: !24, line: 112, baseType: !1785, size: 64, offset: 704)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!163, !1673, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1789, file: !37, line: 51, baseType: !163, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1745, file: !24, line: 113, baseType: !1704, size: 64, offset: 768)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1745, file: !24, line: 114, baseType: !286, size: 64, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1745, file: !24, line: 115, baseType: !286, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1745, file: !24, line: 117, baseType: !1699, size: 64, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1745, file: !24, line: 118, baseType: !1695, size: 64, offset: 1024)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1745, file: !24, line: 120, baseType: !1798, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1731, file: !1732, line: 91, baseType: !1686, size: 64, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1731, file: !1732, line: 92, baseType: !1704, size: 64, offset: 512)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1731, file: !1732, line: 93, baseType: !1695, size: 64, offset: 576)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1731, file: !1732, line: 94, baseType: !1704, size: 64, offset: 640)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1731, file: !1732, line: 95, baseType: !1695, size: 64, offset: 704)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1731, file: !1732, line: 97, baseType: !1704, size: 64, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1731, file: !1732, line: 98, baseType: !1704, size: 64, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1731, file: !1732, line: 100, baseType: !1785, size: 64, offset: 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1731, file: !1732, line: 101, baseType: !1704, size: 64, offset: 960)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1731, file: !1732, line: 103, baseType: !1704, size: 64, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1731, file: !1732, line: 105, baseType: !1704, size: 64, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1731, file: !1732, line: 107, baseType: !1699, size: 64, offset: 1152)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1731, file: !1732, line: 109, baseType: !1813, size: 64, offset: 1216)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1732, line: 109, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1731, file: !1732, line: 111, baseType: !1817, size: 64, offset: 1280)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1732, line: 111, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1731, file: !1732, line: 112, baseType: !1820, offset: 1344)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1821, line: 187, elements: !209)
!1821 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1731, file: !1732, line: 114, baseType: !171, size: 8, offset: 1344)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !174, file: !30, line: 471, baseType: !1744, size: 64, offset: 832)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !174, file: !30, line: 473, baseType: !115, size: 64, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !174, file: !30, line: 475, baseType: !115, size: 64, offset: 960)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !174, file: !30, line: 480, baseType: !450, size: 192, offset: 1024)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !174, file: !30, line: 484, baseType: !1828, size: 576, offset: 1216)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1828, file: !30, line: 362, baseType: !182, size: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1828, file: !30, line: 363, baseType: !182, size: 128, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1828, file: !30, line: 364, baseType: !182, size: 128, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1828, file: !30, line: 365, baseType: !182, size: 128, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1828, file: !30, line: 366, baseType: !171, size: 8, offset: 512)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1828, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !174, file: !30, line: 485, baseType: !1837, size: 2304, offset: 1792)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1934, !1938}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1837, file: !37, line: 566, baseType: !1788, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1837, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1837, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1837, file: !37, line: 569, baseType: !171, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1837, file: !37, line: 570, baseType: !171, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1837, file: !37, line: 571, baseType: !171, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1837, file: !37, line: 572, baseType: !171, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1837, file: !37, line: 573, baseType: !171, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1837, file: !37, line: 574, baseType: !171, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1837, file: !37, line: 575, baseType: !171, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1837, file: !37, line: 576, baseType: !171, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1837, file: !37, line: 577, baseType: !505, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1837, file: !37, line: 578, baseType: !195, offset: 96)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1837, file: !37, line: 580, baseType: !182, size: 128, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1837, file: !37, line: 581, baseType: !811, size: 192, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1837, file: !37, line: 582, baseType: !1855, size: 64, offset: 448)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1857, line: 43, size: 1472, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1866, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1856, file: !1857, line: 44, baseType: !168, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1856, file: !1857, line: 45, baseType: !163, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1856, file: !1857, line: 46, baseType: !182, size: 128, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1856, file: !1857, line: 47, baseType: !195, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1856, file: !1857, line: 48, baseType: !1864, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1856, file: !1857, line: 49, baseType: !1867, size: 320, offset: 320)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1868, line: 11, size: 320, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1869 = !{!1870, !1871, !1872, !1877}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1867, file: !1868, line: 16, baseType: !775, size: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1867, file: !1868, line: 17, baseType: !114, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1867, file: !1868, line: 18, baseType: !1873, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !1868, line: 19, baseType: !505, size: 32, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1856, file: !1857, line: 50, baseType: !114, size: 64, offset: 640)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1856, file: !1857, line: 51, baseType: !581, size: 64, offset: 704)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1856, file: !1857, line: 52, baseType: !581, size: 64, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1856, file: !1857, line: 53, baseType: !581, size: 64, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1856, file: !1857, line: 54, baseType: !581, size: 64, offset: 896)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1856, file: !1857, line: 55, baseType: !581, size: 64, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1856, file: !1857, line: 56, baseType: !114, size: 64, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1856, file: !1857, line: 57, baseType: !114, size: 64, offset: 1088)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1856, file: !1857, line: 58, baseType: !114, size: 64, offset: 1152)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1856, file: !1857, line: 59, baseType: !114, size: 64, offset: 1216)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1856, file: !1857, line: 60, baseType: !114, size: 64, offset: 1280)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1856, file: !1857, line: 61, baseType: !1673, size: 64, offset: 1344)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1856, file: !1857, line: 62, baseType: !171, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1856, file: !1857, line: 63, baseType: !171, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1837, file: !37, line: 583, baseType: !171, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1837, file: !37, line: 584, baseType: !171, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1837, file: !37, line: 585, baseType: !171, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1837, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1837, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1837, file: !37, line: 592, baseType: !573, size: 512, offset: 576)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1837, file: !37, line: 593, baseType: !351, size: 64, offset: 1088)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1837, file: !37, line: 594, baseType: !1411, size: 256, offset: 1152)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1837, file: !37, line: 595, baseType: !782, size: 128, offset: 1408)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1837, file: !37, line: 596, baseType: !1864, size: 64, offset: 1536)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1837, file: !37, line: 597, baseType: !373, size: 32, offset: 1600)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1837, file: !37, line: 598, baseType: !373, size: 32, offset: 1632)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1837, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1837, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1837, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1837, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1837, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1837, file: !37, line: 604, baseType: !171, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1837, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1837, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1837, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1837, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1837, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1837, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1837, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1837, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1837, file: !37, line: 613, baseType: !163, size: 32, offset: 1792)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1837, file: !37, line: 614, baseType: !163, size: 32, offset: 1824)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1837, file: !37, line: 615, baseType: !351, size: 64, offset: 1856)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1837, file: !37, line: 616, baseType: !351, size: 64, offset: 1920)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1837, file: !37, line: 617, baseType: !351, size: 64, offset: 1984)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1837, file: !37, line: 618, baseType: !351, size: 64, offset: 2048)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1837, file: !37, line: 620, baseType: !1925, size: 64, offset: 2112)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1926, file: !37, line: 537, baseType: !195)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1926, file: !37, line: 538, baseType: !7, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1926, file: !37, line: 540, baseType: !182, size: 128, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1926, file: !37, line: 543, baseType: !1932, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1837, file: !37, line: 621, baseType: !1935, size: 64, offset: 2176)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1673, !735}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1837, file: !37, line: 622, baseType: !1939, size: 64, offset: 2240)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !51, line: 117, size: 2304, elements: !1941)
!1941 = !{!1942, !1971, !1972, !1979, !1984, !2011, !2012}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1940, file: !51, line: 118, baseType: !1943, size: 320)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !51, line: 52, size: 320, elements: !1944)
!1944 = !{!1945, !1950, !1951, !1952, !1953, !1954}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1943, file: !51, line: 53, baseType: !1946, size: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1947, line: 79, size: 128, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1946, file: !1947, line: 80, baseType: !182, size: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1943, file: !51, line: 54, baseType: !735, size: 32, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1943, file: !51, line: 55, baseType: !735, size: 32, offset: 160)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1943, file: !51, line: 56, baseType: !735, size: 32, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1943, file: !51, line: 57, baseType: !50, size: 32, offset: 224)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1943, file: !51, line: 58, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1957, line: 65, size: 320, elements: !1958)
!1957 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1956, file: !1957, line: 66, baseType: !392, size: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1956, file: !1957, line: 67, baseType: !1961, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1957, line: 54, size: 192, elements: !1963)
!1963 = !{!1964, !1969, !1970}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1962, file: !1957, line: 55, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1957, line: 51, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!163, !1961, !114, !115}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1962, file: !1957, line: 56, baseType: !1961, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1962, file: !1957, line: 57, baseType: !163, size: 32, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1940, file: !51, line: 119, baseType: !1943, size: 320, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1940, file: !51, line: 120, baseType: !1973, size: 1280, offset: 640)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !51, line: 85, size: 1280, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1973, file: !51, line: 86, baseType: !1943, size: 320)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1973, file: !51, line: 87, baseType: !1956, size: 320, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1973, file: !51, line: 88, baseType: !1943, size: 320, offset: 640)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1973, file: !51, line: 89, baseType: !1956, size: 320, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !51, line: 121, baseType: !1980, size: 192, offset: 1920)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !51, line: 71, size: 192, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1980, file: !51, line: 72, baseType: !182, size: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1980, file: !51, line: 73, baseType: !735, size: 32, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1940, file: !51, line: 122, baseType: !1985, size: 64, offset: 2112)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !51, line: 107, size: 576, elements: !1987)
!1987 = !{!1988, !1989, !2010}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1986, file: !51, line: 108, baseType: !56, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1986, file: !51, line: 113, baseType: !1990, size: 448, offset: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1986, file: !51, line: 109, size: 448, elements: !1991)
!1991 = !{!1992, !1998, !2003}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1990, file: !51, line: 110, baseType: !1993, size: 320)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1947, line: 83, size: 320, elements: !1994)
!1994 = !{!1995, !1996, !1997}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1993, file: !1947, line: 84, baseType: !163, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1993, file: !1947, line: 85, baseType: !182, size: 128, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1993, file: !1947, line: 86, baseType: !182, size: 128, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1990, file: !51, line: 111, baseType: !1999, size: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !51, line: 66, size: 192, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1999, file: !51, line: 67, baseType: !182, size: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1999, file: !51, line: 68, baseType: !735, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1990, file: !51, line: 112, baseType: !2004, size: 448)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !51, line: 92, size: 448, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2004, file: !51, line: 93, baseType: !63, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2004, file: !51, line: 94, baseType: !1993, size: 320, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2004, file: !51, line: 95, baseType: !2009, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1986, file: !51, line: 114, baseType: !1673, size: 64, offset: 512)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1940, file: !51, line: 123, baseType: !1985, size: 64, offset: 2176)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1940, file: !51, line: 124, baseType: !1985, size: 64, offset: 2240)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !174, file: !30, line: 486, baseType: !2014, size: 64, offset: 4096)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2023, !2024, !2025}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2015, file: !37, line: 643, baseType: !1701, size: 1472)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2015, file: !37, line: 644, baseType: !1704, size: 64, offset: 1472)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2015, file: !37, line: 645, baseType: !2020, size: 64, offset: 1536)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !1673, !171}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2015, file: !37, line: 646, baseType: !1704, size: 64, offset: 1600)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2015, file: !37, line: 647, baseType: !1695, size: 64, offset: 1664)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2015, file: !37, line: 648, baseType: !1695, size: 64, offset: 1728)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !174, file: !30, line: 493, baseType: !2027, size: 64, offset: 4160)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !174, file: !30, line: 499, baseType: !182, size: 128, offset: 4224)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !174, file: !30, line: 502, baseType: !2031, size: 64, offset: 4352)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !174, file: !30, line: 504, baseType: !2035, size: 64, offset: 4416)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !174, file: !30, line: 505, baseType: !351, size: 64, offset: 4480)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !174, file: !30, line: 510, baseType: !351, size: 64, offset: 4544)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !174, file: !30, line: 511, baseType: !2039, size: 64, offset: 4608)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !174, file: !30, line: 513, baseType: !2043, size: 64, offset: 4672)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2044, file: !30, line: 293, baseType: !7, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2044, file: !30, line: 294, baseType: !114, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !174, file: !30, line: 515, baseType: !182, size: 128, offset: 4736)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !174, file: !30, line: 526, baseType: !2050, offset: 4864)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2051, line: 5, elements: !209)
!2051 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !174, file: !30, line: 528, baseType: !2053, size: 64, offset: 4864)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2055, line: 51, size: 1344, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057, !2058, !2060, !2061, !2151, !2160, !2161, !2162, !2163, !2164, !2165, !2166}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2054, file: !2055, line: 52, baseType: !168, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2054, file: !2055, line: 53, baseType: !2059, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2055, line: 28, baseType: !505)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2054, file: !2055, line: 54, baseType: !168, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2054, file: !2055, line: 55, baseType: !2062, size: 192, offset: 192)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2063, line: 17, size: 192, elements: !2064)
!2063 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !{!2065, !2067, !2150}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2062, file: !2063, line: 18, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2062, file: !2063, line: 19, baseType: !2068, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2063, line: 110, size: 1152, elements: !2071)
!2071 = !{!2072, !2076, !2080, !2086, !2092, !2096, !2100, !2105, !2109, !2110, !2114, !2118, !2122, !2133, !2134, !2135, !2136, !2146}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2070, file: !2063, line: 111, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!2066, !2066}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2070, file: !2063, line: 112, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2066}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2070, file: !2063, line: 113, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!171, !2084}
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2062)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2070, file: !2063, line: 114, baseType: !2087, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!1204, !2084, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2070, file: !2063, line: 116, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!171, !2084, !168}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2070, file: !2063, line: 118, baseType: !2097, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!163, !2084, !168, !7, !115, !280}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2070, file: !2063, line: 123, baseType: !2101, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!163, !2084, !168, !2104, !280}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2070, file: !2063, line: 126, baseType: !2106, size: 64, offset: 448)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!168, !2084}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2070, file: !2063, line: 127, baseType: !2106, size: 64, offset: 512)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2070, file: !2063, line: 128, baseType: !2111, size: 64, offset: 576)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2066, !2084}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2070, file: !2063, line: 130, baseType: !2115, size: 64, offset: 640)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!2066, !2084, !2066}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2070, file: !2063, line: 133, baseType: !2119, size: 64, offset: 704)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!2066, !2084, !168}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2070, file: !2063, line: 135, baseType: !2123, size: 64, offset: 768)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!163, !2084, !168, !168, !7, !7, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2063, line: 43, size: 640, elements: !2128)
!2128 = !{!2129, !2130, !2131}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2127, file: !2063, line: 44, baseType: !2066, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2127, file: !2063, line: 45, baseType: !7, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2127, file: !2063, line: 46, baseType: !2132, size: 512, offset: 128)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 512, elements: !611)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2070, file: !2063, line: 140, baseType: !2115, size: 64, offset: 832)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2070, file: !2063, line: 143, baseType: !2111, size: 64, offset: 896)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2070, file: !2063, line: 145, baseType: !2073, size: 64, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2070, file: !2063, line: 146, baseType: !2137, size: 64, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!163, !2084, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2063, line: 29, size: 128, elements: !2142)
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2141, file: !2063, line: 30, baseType: !7, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2141, file: !2063, line: 31, baseType: !7, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2141, file: !2063, line: 32, baseType: !2084, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2070, file: !2063, line: 148, baseType: !2147, size: 64, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!163, !2084, !1673}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2062, file: !2063, line: 20, baseType: !1673, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2054, file: !2055, line: 57, baseType: !2152, size: 64, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2055, line: 31, size: 704, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2158, !2159}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2153, file: !2055, line: 32, baseType: !236, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2153, file: !2055, line: 33, baseType: !163, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2153, file: !2055, line: 34, baseType: !115, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2153, file: !2055, line: 35, baseType: !2152, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2153, file: !2055, line: 43, baseType: !301, size: 448, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2054, file: !2055, line: 58, baseType: !2152, size: 64, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2054, file: !2055, line: 59, baseType: !2053, size: 64, offset: 512)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2054, file: !2055, line: 60, baseType: !2053, size: 64, offset: 576)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2054, file: !2055, line: 61, baseType: !2053, size: 64, offset: 640)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2054, file: !2055, line: 63, baseType: !177, size: 512, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2054, file: !2055, line: 65, baseType: !114, size: 64, offset: 1216)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2054, file: !2055, line: 66, baseType: !115, size: 64, offset: 1280)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !174, file: !30, line: 529, baseType: !2066, size: 64, offset: 4928)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !174, file: !30, line: 534, baseType: !2169, size: 32, offset: 4992)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !113, line: 16, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !113, line: 13, baseType: !505)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !174, file: !30, line: 535, baseType: !505, size: 32, offset: 5024)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !174, file: !30, line: 537, baseType: !195, offset: 5056)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !174, file: !30, line: 538, baseType: !182, size: 128, offset: 5056)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !174, file: !30, line: 540, baseType: !2175, size: 64, offset: 5184)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2177, line: 54, size: 960, elements: !2178)
!2177 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2189, !2193, !2194, !2195, !2196, !2200, !2204, !2205}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2176, file: !2177, line: 55, baseType: !168, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2176, file: !2177, line: 56, baseType: !109, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2176, file: !2177, line: 58, baseType: !286, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2176, file: !2177, line: 59, baseType: !286, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2176, file: !2177, line: 60, baseType: !188, size: 64, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2176, file: !2177, line: 62, baseType: !1686, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2176, file: !2177, line: 63, baseType: !2186, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!236, !1673, !1693}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2176, file: !2177, line: 65, baseType: !2190, size: 64, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !2175}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2176, file: !2177, line: 66, baseType: !1695, size: 64, offset: 512)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2176, file: !2177, line: 68, baseType: !1704, size: 64, offset: 576)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2176, file: !2177, line: 70, baseType: !1460, size: 64, offset: 640)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2176, file: !2177, line: 71, baseType: !2197, size: 64, offset: 704)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!1204, !1673}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2176, file: !2177, line: 73, baseType: !2201, size: 64, offset: 768)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !1673, !1495, !1502}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2176, file: !2177, line: 75, baseType: !1699, size: 64, offset: 832)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2176, file: !2177, line: 77, baseType: !1817, size: 64, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !174, file: !30, line: 541, baseType: !286, size: 64, offset: 5248)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !174, file: !30, line: 543, baseType: !1695, size: 64, offset: 5312)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !174, file: !30, line: 544, baseType: !2209, size: 64, offset: 5376)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !174, file: !30, line: 545, baseType: !2212, size: 64, offset: 5440)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !174, file: !30, line: 547, baseType: !171, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !174, file: !30, line: 548, baseType: !171, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !174, file: !30, line: 549, baseType: !171, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !174, file: !30, line: 550, baseType: !171, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !165, file: !157, line: 27, baseType: !351, size: 64, offset: 5696)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !165, file: !157, line: 28, baseType: !2044, size: 128, offset: 5760)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !165, file: !157, line: 29, baseType: !505, size: 32, offset: 5888)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !165, file: !157, line: 30, baseType: !2222, size: 64, offset: 5952)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2224, line: 20, size: 512, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2223, file: !2224, line: 21, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !113, line: 158, baseType: !1202)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2223, file: !2224, line: 22, baseType: !2227, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2223, file: !2224, line: 23, baseType: !168, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2223, file: !2224, line: 24, baseType: !114, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2223, file: !2224, line: 25, baseType: !114, size: 64, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2223, file: !2224, line: 26, baseType: !2222, size: 64, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2223, file: !2224, line: 26, baseType: !2222, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2223, file: !2224, line: 26, baseType: !2222, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !165, file: !157, line: 32, baseType: !2236, size: 64, offset: 6016)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1757, line: 586, size: 256, elements: !2239)
!2239 = !{!2240, !2242}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2238, file: !1757, line: 587, baseType: !2241, size: 160)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 160, elements: !1278)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2238, file: !1757, line: 588, baseType: !1777, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !165, file: !157, line: 33, baseType: !236, size: 64, offset: 6080)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !165, file: !157, line: 36, baseType: !2245, size: 64, offset: 6144)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !157, line: 18, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !165, file: !157, line: 39, baseType: !2248, offset: 6208)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2051, line: 8, elements: !209)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !156, file: !157, line: 202, baseType: !160, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !156, file: !157, line: 203, baseType: !2251, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !164}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !156, file: !157, line: 204, baseType: !2255, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!163, !164, !1788}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !156, file: !157, line: 205, baseType: !160, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !156, file: !157, line: 206, baseType: !1745, size: 1152, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !156, file: !157, line: 207, baseType: !2236, size: 64, offset: 1472)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !156, file: !157, line: 208, baseType: !171, size: 8, offset: 1536)
!2262 = !DIGlobalVariableExpression(var: !2263, expr: !DIExpression())
!2263 = distinct !DIGlobalVariable(name: "hisi_of_thermal_ops", scope: !2, file: !3, line: 458, type: !2264, isLocal: true, isDefinition: true)
!2264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_of_device_ops", file: !79, line: 308, size: 320, elements: !2266)
!2266 = !{!2267, !2271, !2276, !2280, !2284}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2265, file: !79, line: 309, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!163, !115, !822}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2265, file: !79, line: 310, baseType: !2272, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!163, !115, !163, !2275}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2265, file: !79, line: 311, baseType: !2277, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!163, !115, !163, !163}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2265, file: !79, line: 312, baseType: !2281, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!163, !115, !163}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2265, file: !79, line: 313, baseType: !2277, size: 64, offset: 256)
!2285 = !DIGlobalVariableExpression(var: !2286, expr: !DIExpression())
!2286 = distinct !DIGlobalVariable(name: "of_hisi_thermal_match", scope: !2, file: !3, line: 534, type: !2287, isLocal: true, isDefinition: true)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1755, size: 4800, elements: !237)
!2288 = !DIGlobalVariableExpression(var: !2289, expr: !DIExpression())
!2289 = distinct !DIGlobalVariable(name: "hi6220_ops", scope: !2, file: !3, line: 518, type: !2290, isLocal: true, isDefinition: true)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hisi_thermal_ops", file: !3, line: 76, size: 320, elements: !2292)
!2292 = !{!2293, !2504, !2505, !2506, !2507}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2291, file: !3, line: 77, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!163, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hisi_thermal_sensor", file: !3, line: 68, size: 256, elements: !2299)
!2299 = !{!2300, !2314, !2500, !2501, !2503}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2298, file: !3, line: 69, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hisi_thermal_data", file: !3, line: 84, size: 384, elements: !2303)
!2303 = !{!2304, !2306, !2307, !2308, !2312, !2313}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2302, file: !3, line: 85, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "sensor", scope: !2302, file: !3, line: 86, baseType: !2297, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !2302, file: !3, line: 87, baseType: !164, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2302, file: !3, line: 88, baseType: !2309, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2311, line: 17, flags: DIFlagFwdDecl)
!2311 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2302, file: !3, line: 89, baseType: !115, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sensors", scope: !2302, file: !3, line: 90, baseType: !163, size: 32, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "tzd", scope: !2298, file: !3, line: 70, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !79, line: 150, size: 8448, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2443, !2467, !2482, !2483, !2484, !2488, !2489, !2490, !2499}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2316, file: !79, line: 151, baseType: !163, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2316, file: !79, line: 152, baseType: !2241, size: 160, offset: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2316, file: !79, line: 153, baseType: !174, size: 5568, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2316, file: !79, line: 154, baseType: !289, size: 320, offset: 5760)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2316, file: !79, line: 155, baseType: !2323, size: 64, offset: 6080)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !2325, line: 57, size: 448, elements: !2326)
!2325 = !DIFile(filename: "drivers/thermal/thermal_core.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2340}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2324, file: !2325, line: 58, baseType: !2328, size: 256)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2329)
!2329 = !{!2330, !2331, !2336}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2328, file: !30, line: 100, baseType: !270, size: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2328, file: !30, line: 101, baseType: !2332, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!265, !1673, !2335, !236}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2328, file: !30, line: 103, baseType: !2337, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!265, !1673, !2335, !168, !280}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2324, file: !2325, line: 59, baseType: !2241, size: 160, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2316, file: !79, line: 156, baseType: !2323, size: 64, offset: 6144)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2316, file: !79, line: 157, baseType: !2323, size: 64, offset: 6208)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2316, file: !79, line: 158, baseType: !67, size: 32, offset: 6272)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2316, file: !79, line: 159, baseType: !115, size: 64, offset: 6336)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2316, file: !79, line: 160, baseType: !163, size: 32, offset: 6400)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2316, file: !79, line: 161, baseType: !114, size: 64, offset: 6464)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2316, file: !79, line: 162, baseType: !163, size: 32, offset: 6528)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2316, file: !79, line: 163, baseType: !163, size: 32, offset: 6560)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2316, file: !79, line: 164, baseType: !163, size: 32, offset: 6592)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2316, file: !79, line: 165, baseType: !163, size: 32, offset: 6624)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2316, file: !79, line: 166, baseType: !163, size: 32, offset: 6656)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2316, file: !79, line: 167, baseType: !163, size: 32, offset: 6688)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2316, file: !79, line: 168, baseType: !163, size: 32, offset: 6720)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2316, file: !79, line: 169, baseType: !163, size: 32, offset: 6752)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !2316, file: !79, line: 170, baseType: !7, size: 32, offset: 6784)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2316, file: !79, line: 171, baseType: !373, size: 32, offset: 6816)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2316, file: !79, line: 172, baseType: !2358, size: 64, offset: 6848)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !79, line: 61, size: 896, elements: !2360)
!2360 = !{!2361, !2405, !2406, !2410, !2414, !2418, !2423, !2427, !2428, !2429, !2430, !2431, !2435, !2439}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2359, file: !79, line: 62, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!163, !2315, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !79, line: 93, size: 6528, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2401, !2402, !2403, !2404}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2366, file: !79, line: 94, baseType: !163, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2366, file: !79, line: 95, baseType: !2241, size: 160, offset: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2366, file: !79, line: 96, baseType: !174, size: 5568, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2366, file: !79, line: 97, baseType: !2053, size: 64, offset: 5760)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2366, file: !79, line: 98, baseType: !115, size: 64, offset: 5824)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2366, file: !79, line: 99, baseType: !115, size: 64, offset: 5888)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2366, file: !79, line: 100, baseType: !2375, size: 64, offset: 5952)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !79, line: 84, size: 384, elements: !2378)
!2378 = !{!2379, !2384, !2385, !2389, !2393, !2397}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2377, file: !79, line: 85, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!163, !2365, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2377, file: !79, line: 86, baseType: !2380, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2377, file: !79, line: 87, baseType: !2386, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!163, !2365, !114}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2377, file: !79, line: 88, baseType: !2390, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!163, !2365, !706}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2377, file: !79, line: 89, baseType: !2394, size: 64, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!163, !2365, !114, !706}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2377, file: !79, line: 90, baseType: !2398, size: 64, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!163, !2365, !505, !2383}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2366, file: !79, line: 101, baseType: !171, size: 8, offset: 6016)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2366, file: !79, line: 102, baseType: !450, size: 192, offset: 6080)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2366, file: !79, line: 103, baseType: !182, size: 128, offset: 6272)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2366, file: !79, line: 104, baseType: !182, size: 128, offset: 6400)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2359, file: !79, line: 64, baseType: !2362, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2359, file: !79, line: 66, baseType: !2407, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!163, !2315, !822}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2359, file: !79, line: 67, baseType: !2411, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!163, !2315, !163, !163}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2359, file: !79, line: 68, baseType: !2415, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!163, !2315, !67}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2359, file: !79, line: 70, baseType: !2419, size: 64, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!163, !2315, !163, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2359, file: !79, line: 72, baseType: !2424, size: 64, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!163, !2315, !163, !822}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2359, file: !79, line: 73, baseType: !2411, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2359, file: !79, line: 74, baseType: !2424, size: 64, offset: 512)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2359, file: !79, line: 75, baseType: !2411, size: 64, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2359, file: !79, line: 76, baseType: !2407, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2359, file: !79, line: 77, baseType: !2432, size: 64, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!163, !2315, !163}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2359, file: !79, line: 78, baseType: !2436, size: 64, offset: 768)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!163, !2315, !163, !2275}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2359, file: !79, line: 80, baseType: !2440, size: 64, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!163, !2315, !163, !72}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2316, file: !79, line: 173, baseType: !2444, size: 64, offset: 6912)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !79, line: 240, size: 576, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2445, file: !79, line: 241, baseType: !2241, size: 160)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2445, file: !79, line: 248, baseType: !171, size: 8, offset: 160)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2445, file: !79, line: 250, baseType: !163, size: 32, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2445, file: !79, line: 251, baseType: !2451, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !79, line: 205, size: 256, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2452, file: !79, line: 206, baseType: !2365, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2452, file: !79, line: 217, baseType: !163, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2452, file: !79, line: 224, baseType: !163, size: 32, offset: 96)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2452, file: !79, line: 234, baseType: !2383, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2452, file: !79, line: 235, baseType: !2362, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2445, file: !79, line: 257, baseType: !505, size: 32, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2445, file: !79, line: 263, baseType: !735, size: 32, offset: 352)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2445, file: !79, line: 269, baseType: !735, size: 32, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2445, file: !79, line: 272, baseType: !735, size: 32, offset: 416)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2445, file: !79, line: 275, baseType: !735, size: 32, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2445, file: !79, line: 278, baseType: !735, size: 32, offset: 480)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2445, file: !79, line: 284, baseType: !163, size: 32, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2445, file: !79, line: 289, baseType: !163, size: 32, offset: 544)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2316, file: !79, line: 174, baseType: !2468, size: 64, offset: 6976)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !79, line: 196, size: 512, elements: !2470)
!2470 = !{!2471, !2472, !2476, !2480, !2481}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2469, file: !79, line: 197, baseType: !2241, size: 160)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2469, file: !79, line: 198, baseType: !2473, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!163, !2315}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2469, file: !79, line: 199, baseType: !2477, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !2315}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2469, file: !79, line: 200, baseType: !2432, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2469, file: !79, line: 201, baseType: !182, size: 128, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2316, file: !79, line: 175, baseType: !115, size: 64, offset: 7040)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2316, file: !79, line: 176, baseType: !182, size: 128, offset: 7104)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2316, file: !79, line: 177, baseType: !2485, size: 128, offset: 7232)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1537, line: 244, size: 128, elements: !2486)
!2486 = !{!2487}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2485, file: !1537, line: 245, baseType: !1540, size: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2316, file: !79, line: 178, baseType: !450, size: 192, offset: 7360)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2316, file: !79, line: 179, baseType: !182, size: 128, offset: 7552)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2316, file: !79, line: 180, baseType: !2491, size: 704, offset: 7680)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1412, line: 115, size: 704, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2498}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2491, file: !1412, line: 116, baseType: !1411, size: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2491, file: !1412, line: 117, baseType: !1867, size: 320, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2491, file: !1412, line: 120, baseType: !2496, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1412, line: 18, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2491, file: !1412, line: 121, baseType: !163, size: 32, offset: 640)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2316, file: !79, line: 181, baseType: !86, size: 32, offset: 8384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "irq_name", scope: !2298, file: !3, line: 71, baseType: !168, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2298, file: !3, line: 72, baseType: !2502, size: 32, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !113, line: 104, baseType: !505)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "thres_temp", scope: !2298, file: !3, line: 73, baseType: !2502, size: 32, offset: 224)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sensor", scope: !2291, file: !3, line: 78, baseType: !2294, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "disable_sensor", scope: !2291, file: !3, line: 79, baseType: !2294, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "irq_handler", scope: !2291, file: !3, line: 80, baseType: !2294, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2291, file: !3, line: 81, baseType: !2508, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!163, !2301}
!2511 = !DIGlobalVariableExpression(var: !2512, expr: !DIExpression())
!2512 = distinct !DIGlobalVariable(name: "hi3660_ops", scope: !2, file: !3, line: 526, type: !2290, isLocal: true, isDefinition: true)
!2513 = !DIGlobalVariableExpression(var: !2514, expr: !DIExpression())
!2514 = distinct !DIGlobalVariable(name: "hisi_thermal_pm_ops", scope: !2, file: !3, line: 658, type: !1700, isLocal: true, isDefinition: true)
!2515 = !{i32 7, !"Dwarf Version", i32 4}
!2516 = !{i32 2, !"Debug Info Version", i32 3}
!2517 = !{i32 1, !"wchar_size", i32 2}
!2518 = !{i32 1, !"Code Model", i32 2}
!2519 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2520 = distinct !DISubprogram(name: "hisi_thermal_driver_init", scope: !3, file: !3, line: 671, type: !2521, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!163}
!2523 = !DILocation(line: 671, column: 1, scope: !2520)
!2524 = distinct !DISubprogram(name: "hisi_thermal_driver_exit", scope: !3, file: !3, line: 671, type: !125, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2525 = !DILocation(line: 671, column: 1, scope: !2524)
!2526 = distinct !DISubprogram(name: "hisi_thermal_probe", scope: !3, file: !3, line: 558, type: !161, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2527 = !DILocalVariable(name: "pdev", arg: 1, scope: !2526, file: !3, line: 558, type: !164)
!2528 = !DILocation(line: 558, column: 55, scope: !2526)
!2529 = !DILocalVariable(name: "data", scope: !2526, file: !3, line: 560, type: !2301)
!2530 = !DILocation(line: 560, column: 28, scope: !2526)
!2531 = !DILocalVariable(name: "dev", scope: !2526, file: !3, line: 561, type: !1673)
!2532 = !DILocation(line: 561, column: 17, scope: !2526)
!2533 = !DILocation(line: 561, column: 24, scope: !2526)
!2534 = !DILocation(line: 561, column: 30, scope: !2526)
!2535 = !DILocalVariable(name: "res", scope: !2526, file: !3, line: 562, type: !2222)
!2536 = !DILocation(line: 562, column: 19, scope: !2526)
!2537 = !DILocalVariable(name: "i", scope: !2526, file: !3, line: 563, type: !163)
!2538 = !DILocation(line: 563, column: 6, scope: !2526)
!2539 = !DILocalVariable(name: "ret", scope: !2526, file: !3, line: 563, type: !163)
!2540 = !DILocation(line: 563, column: 9, scope: !2526)
!2541 = !DILocation(line: 565, column: 22, scope: !2526)
!2542 = !DILocation(line: 565, column: 9, scope: !2526)
!2543 = !DILocation(line: 565, column: 7, scope: !2526)
!2544 = !DILocation(line: 566, column: 7, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 566, column: 6)
!2546 = !DILocation(line: 566, column: 6, scope: !2526)
!2547 = !DILocation(line: 567, column: 3, scope: !2545)
!2548 = !DILocation(line: 569, column: 15, scope: !2526)
!2549 = !DILocation(line: 569, column: 2, scope: !2526)
!2550 = !DILocation(line: 569, column: 8, scope: !2526)
!2551 = !DILocation(line: 569, column: 13, scope: !2526)
!2552 = !DILocation(line: 570, column: 23, scope: !2526)
!2553 = !DILocation(line: 570, column: 29, scope: !2526)
!2554 = !DILocation(line: 570, column: 2, scope: !2526)
!2555 = !DILocation(line: 571, column: 39, scope: !2526)
!2556 = !DILocation(line: 571, column: 14, scope: !2526)
!2557 = !DILocation(line: 571, column: 2, scope: !2526)
!2558 = !DILocation(line: 571, column: 8, scope: !2526)
!2559 = !DILocation(line: 571, column: 12, scope: !2526)
!2560 = !DILocation(line: 573, column: 30, scope: !2526)
!2561 = !DILocation(line: 573, column: 8, scope: !2526)
!2562 = !DILocation(line: 573, column: 6, scope: !2526)
!2563 = !DILocation(line: 574, column: 37, scope: !2526)
!2564 = !DILocation(line: 574, column: 42, scope: !2526)
!2565 = !DILocation(line: 574, column: 15, scope: !2526)
!2566 = !DILocation(line: 574, column: 2, scope: !2526)
!2567 = !DILocation(line: 574, column: 8, scope: !2526)
!2568 = !DILocation(line: 574, column: 13, scope: !2526)
!2569 = !DILocation(line: 575, column: 13, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 575, column: 6)
!2571 = !DILocation(line: 575, column: 19, scope: !2570)
!2572 = !DILocation(line: 575, column: 6, scope: !2570)
!2573 = !DILocation(line: 575, column: 6, scope: !2526)
!2574 = !DILocation(line: 576, column: 3, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 575, column: 26)
!2576 = !DILocation(line: 577, column: 18, scope: !2575)
!2577 = !DILocation(line: 577, column: 24, scope: !2575)
!2578 = !DILocation(line: 577, column: 10, scope: !2575)
!2579 = !DILocation(line: 577, column: 3, scope: !2575)
!2580 = !DILocation(line: 580, column: 8, scope: !2526)
!2581 = !DILocation(line: 580, column: 14, scope: !2526)
!2582 = !DILocation(line: 580, column: 19, scope: !2526)
!2583 = !DILocation(line: 580, column: 25, scope: !2526)
!2584 = !DILocation(line: 580, column: 6, scope: !2526)
!2585 = !DILocation(line: 581, column: 6, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 581, column: 6)
!2587 = !DILocation(line: 581, column: 6, scope: !2526)
!2588 = !DILocation(line: 582, column: 10, scope: !2586)
!2589 = !DILocation(line: 582, column: 3, scope: !2586)
!2590 = !DILocation(line: 584, column: 9, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 584, column: 2)
!2592 = !DILocation(line: 584, column: 7, scope: !2591)
!2593 = !DILocation(line: 584, column: 14, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 584, column: 2)
!2595 = !DILocation(line: 584, column: 18, scope: !2594)
!2596 = !DILocation(line: 584, column: 24, scope: !2594)
!2597 = !DILocation(line: 584, column: 16, scope: !2594)
!2598 = !DILocation(line: 584, column: 2, scope: !2591)
!2599 = !DILocalVariable(name: "sensor", scope: !2600, file: !3, line: 585, type: !2297)
!2600 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 584, column: 41)
!2601 = !DILocation(line: 585, column: 31, scope: !2600)
!2602 = !DILocation(line: 585, column: 41, scope: !2600)
!2603 = !DILocation(line: 585, column: 47, scope: !2600)
!2604 = !DILocation(line: 585, column: 54, scope: !2600)
!2605 = !DILocation(line: 587, column: 38, scope: !2600)
!2606 = !DILocation(line: 587, column: 44, scope: !2600)
!2607 = !DILocation(line: 587, column: 9, scope: !2600)
!2608 = !DILocation(line: 587, column: 7, scope: !2600)
!2609 = !DILocation(line: 588, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 588, column: 7)
!2611 = !DILocation(line: 588, column: 7, scope: !2600)
!2612 = !DILocation(line: 589, column: 4, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 588, column: 12)
!2614 = !DILocation(line: 591, column: 11, scope: !2613)
!2615 = !DILocation(line: 591, column: 4, scope: !2613)
!2616 = !DILocation(line: 594, column: 26, scope: !2600)
!2617 = !DILocation(line: 594, column: 9, scope: !2600)
!2618 = !DILocation(line: 594, column: 7, scope: !2600)
!2619 = !DILocation(line: 595, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 595, column: 7)
!2621 = !DILocation(line: 595, column: 11, scope: !2620)
!2622 = !DILocation(line: 595, column: 7, scope: !2600)
!2623 = !DILocation(line: 596, column: 11, scope: !2620)
!2624 = !DILocation(line: 596, column: 4, scope: !2620)
!2625 = !DILocation(line: 598, column: 35, scope: !2600)
!2626 = !DILocation(line: 598, column: 40, scope: !2600)
!2627 = !DILocation(line: 600, column: 21, scope: !2600)
!2628 = !DILocation(line: 600, column: 29, scope: !2600)
!2629 = !DILocation(line: 601, column: 7, scope: !2600)
!2630 = !DILocation(line: 598, column: 9, scope: !2600)
!2631 = !DILocation(line: 598, column: 7, scope: !2600)
!2632 = !DILocation(line: 602, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 602, column: 7)
!2634 = !DILocation(line: 602, column: 11, scope: !2633)
!2635 = !DILocation(line: 602, column: 7, scope: !2600)
!2636 = !DILocation(line: 603, column: 4, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 602, column: 16)
!2638 = !DILocation(line: 604, column: 11, scope: !2637)
!2639 = !DILocation(line: 604, column: 4, scope: !2637)
!2640 = !DILocation(line: 607, column: 9, scope: !2600)
!2641 = !DILocation(line: 607, column: 15, scope: !2600)
!2642 = !DILocation(line: 607, column: 20, scope: !2600)
!2643 = !DILocation(line: 607, column: 34, scope: !2600)
!2644 = !DILocation(line: 607, column: 7, scope: !2600)
!2645 = !DILocation(line: 608, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 608, column: 7)
!2647 = !DILocation(line: 608, column: 7, scope: !2600)
!2648 = !DILocation(line: 609, column: 4, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 608, column: 12)
!2650 = !DILocation(line: 610, column: 11, scope: !2649)
!2651 = !DILocation(line: 610, column: 4, scope: !2649)
!2652 = !DILocation(line: 613, column: 30, scope: !2600)
!2653 = !DILocation(line: 613, column: 3, scope: !2600)
!2654 = !DILocation(line: 614, column: 2, scope: !2600)
!2655 = !DILocation(line: 584, column: 37, scope: !2594)
!2656 = !DILocation(line: 584, column: 2, scope: !2594)
!2657 = distinct !{!2657, !2598, !2658}
!2658 = !DILocation(line: 614, column: 2, scope: !2591)
!2659 = !DILocation(line: 616, column: 2, scope: !2526)
!2660 = !DILocation(line: 617, column: 1, scope: !2526)
!2661 = distinct !DISubprogram(name: "hisi_thermal_remove", scope: !3, file: !3, line: 619, type: !161, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2662 = !DILocalVariable(name: "pdev", arg: 1, scope: !2661, file: !3, line: 619, type: !164)
!2663 = !DILocation(line: 619, column: 56, scope: !2661)
!2664 = !DILocalVariable(name: "data", scope: !2661, file: !3, line: 621, type: !2301)
!2665 = !DILocation(line: 621, column: 28, scope: !2661)
!2666 = !DILocation(line: 621, column: 56, scope: !2661)
!2667 = !DILocation(line: 621, column: 35, scope: !2661)
!2668 = !DILocalVariable(name: "i", scope: !2661, file: !3, line: 622, type: !163)
!2669 = !DILocation(line: 622, column: 6, scope: !2661)
!2670 = !DILocation(line: 624, column: 9, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 624, column: 2)
!2672 = !DILocation(line: 624, column: 7, scope: !2671)
!2673 = !DILocation(line: 624, column: 14, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 624, column: 2)
!2675 = !DILocation(line: 624, column: 18, scope: !2674)
!2676 = !DILocation(line: 624, column: 24, scope: !2674)
!2677 = !DILocation(line: 624, column: 16, scope: !2674)
!2678 = !DILocation(line: 624, column: 2, scope: !2671)
!2679 = !DILocalVariable(name: "sensor", scope: !2680, file: !3, line: 625, type: !2297)
!2680 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 624, column: 41)
!2681 = !DILocation(line: 625, column: 31, scope: !2680)
!2682 = !DILocation(line: 625, column: 41, scope: !2680)
!2683 = !DILocation(line: 625, column: 47, scope: !2680)
!2684 = !DILocation(line: 625, column: 54, scope: !2680)
!2685 = !DILocation(line: 627, column: 30, scope: !2680)
!2686 = !DILocation(line: 627, column: 3, scope: !2680)
!2687 = !DILocation(line: 628, column: 3, scope: !2680)
!2688 = !DILocation(line: 628, column: 9, scope: !2680)
!2689 = !DILocation(line: 628, column: 14, scope: !2680)
!2690 = !DILocation(line: 628, column: 29, scope: !2680)
!2691 = !DILocation(line: 629, column: 2, scope: !2680)
!2692 = !DILocation(line: 624, column: 37, scope: !2674)
!2693 = !DILocation(line: 624, column: 2, scope: !2674)
!2694 = distinct !{!2694, !2678, !2695}
!2695 = !DILocation(line: 629, column: 2, scope: !2671)
!2696 = !DILocation(line: 631, column: 2, scope: !2661)
!2697 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2698, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!115, !1673, !280, !112}
!2700 = !DILocalVariable(name: "dev", arg: 1, scope: !2697, file: !30, line: 215, type: !1673)
!2701 = !DILocation(line: 215, column: 49, scope: !2697)
!2702 = !DILocalVariable(name: "size", arg: 2, scope: !2697, file: !30, line: 215, type: !280)
!2703 = !DILocation(line: 215, column: 61, scope: !2697)
!2704 = !DILocalVariable(name: "gfp", arg: 3, scope: !2697, file: !30, line: 215, type: !112)
!2705 = !DILocation(line: 215, column: 73, scope: !2697)
!2706 = !DILocation(line: 217, column: 22, scope: !2697)
!2707 = !DILocation(line: 217, column: 27, scope: !2697)
!2708 = !DILocation(line: 217, column: 33, scope: !2697)
!2709 = !DILocation(line: 217, column: 37, scope: !2697)
!2710 = !DILocation(line: 217, column: 9, scope: !2697)
!2711 = !DILocation(line: 217, column: 2, scope: !2697)
!2712 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !157, file: !157, line: 236, type: !2713, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !164, !115}
!2715 = !DILocalVariable(name: "pdev", arg: 1, scope: !2712, file: !157, line: 236, type: !164)
!2716 = !DILocation(line: 236, column: 65, scope: !2712)
!2717 = !DILocalVariable(name: "data", arg: 2, scope: !2712, file: !157, line: 237, type: !115)
!2718 = !DILocation(line: 237, column: 12, scope: !2712)
!2719 = !DILocation(line: 239, column: 19, scope: !2712)
!2720 = !DILocation(line: 239, column: 25, scope: !2712)
!2721 = !DILocation(line: 239, column: 30, scope: !2712)
!2722 = !DILocation(line: 239, column: 2, scope: !2712)
!2723 = !DILocation(line: 240, column: 1, scope: !2712)
!2724 = distinct !DISubprogram(name: "IS_ERR", scope: !2725, file: !2725, line: 34, type: !2726, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2725 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!171, !1204}
!2728 = !DILocalVariable(name: "ptr", arg: 1, scope: !2724, file: !2725, line: 34, type: !1204)
!2729 = !DILocation(line: 34, column: 60, scope: !2724)
!2730 = !DILocation(line: 36, column: 9, scope: !2724)
!2731 = !DILocation(line: 36, column: 2, scope: !2724)
!2732 = distinct !DISubprogram(name: "PTR_ERR", scope: !2725, file: !2725, line: 29, type: !2733, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!116, !1204}
!2735 = !DILocalVariable(name: "ptr", arg: 1, scope: !2732, file: !2725, line: 29, type: !1204)
!2736 = !DILocation(line: 29, column: 61, scope: !2732)
!2737 = !DILocation(line: 31, column: 16, scope: !2732)
!2738 = !DILocation(line: 31, column: 9, scope: !2732)
!2739 = !DILocation(line: 31, column: 2, scope: !2732)
!2740 = distinct !DISubprogram(name: "hisi_thermal_register_sensor", scope: !3, file: !3, line: 489, type: !2741, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!163, !164, !2297}
!2743 = !DILocalVariable(name: "pdev", arg: 1, scope: !2740, file: !3, line: 489, type: !164)
!2744 = !DILocation(line: 489, column: 65, scope: !2740)
!2745 = !DILocalVariable(name: "sensor", arg: 2, scope: !2740, file: !3, line: 490, type: !2297)
!2746 = !DILocation(line: 490, column: 34, scope: !2740)
!2747 = !DILocalVariable(name: "ret", scope: !2740, file: !3, line: 492, type: !163)
!2748 = !DILocation(line: 492, column: 6, scope: !2740)
!2749 = !DILocalVariable(name: "i", scope: !2740, file: !3, line: 492, type: !163)
!2750 = !DILocation(line: 492, column: 11, scope: !2740)
!2751 = !DILocalVariable(name: "trip", scope: !2740, file: !3, line: 493, type: !2752)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_trip", file: !2325, line: 81, size: 192, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2754, file: !2325, line: 82, baseType: !2053, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2754, file: !2325, line: 83, baseType: !163, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !2754, file: !2325, line: 84, baseType: !163, size: 32, offset: 96)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2754, file: !2325, line: 85, baseType: !72, size: 32, offset: 128)
!2760 = !DILocation(line: 493, column: 29, scope: !2740)
!2761 = !DILocation(line: 495, column: 54, scope: !2740)
!2762 = !DILocation(line: 495, column: 60, scope: !2740)
!2763 = !DILocation(line: 496, column: 11, scope: !2740)
!2764 = !DILocation(line: 496, column: 19, scope: !2740)
!2765 = !DILocation(line: 496, column: 23, scope: !2740)
!2766 = !DILocation(line: 495, column: 16, scope: !2740)
!2767 = !DILocation(line: 495, column: 2, scope: !2740)
!2768 = !DILocation(line: 495, column: 10, scope: !2740)
!2769 = !DILocation(line: 495, column: 14, scope: !2740)
!2770 = !DILocation(line: 498, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 498, column: 6)
!2772 = !DILocation(line: 498, column: 21, scope: !2771)
!2773 = !DILocation(line: 498, column: 6, scope: !2771)
!2774 = !DILocation(line: 498, column: 6, scope: !2740)
!2775 = !DILocation(line: 499, column: 17, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 498, column: 27)
!2777 = !DILocation(line: 499, column: 25, scope: !2776)
!2778 = !DILocation(line: 499, column: 9, scope: !2776)
!2779 = !DILocation(line: 499, column: 7, scope: !2776)
!2780 = !DILocation(line: 500, column: 3, scope: !2776)
!2781 = !DILocation(line: 500, column: 11, scope: !2776)
!2782 = !DILocation(line: 500, column: 15, scope: !2776)
!2783 = !DILocation(line: 501, column: 3, scope: !2776)
!2784 = !DILocation(line: 503, column: 10, scope: !2776)
!2785 = !DILocation(line: 503, column: 3, scope: !2776)
!2786 = !DILocation(line: 506, column: 36, scope: !2740)
!2787 = !DILocation(line: 506, column: 44, scope: !2740)
!2788 = !DILocation(line: 506, column: 9, scope: !2740)
!2789 = !DILocation(line: 506, column: 7, scope: !2740)
!2790 = !DILocation(line: 508, column: 9, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 508, column: 2)
!2792 = !DILocation(line: 508, column: 7, scope: !2791)
!2793 = !DILocation(line: 508, column: 14, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 508, column: 2)
!2795 = !DILocation(line: 508, column: 40, scope: !2794)
!2796 = !DILocation(line: 508, column: 48, scope: !2794)
!2797 = !DILocation(line: 508, column: 18, scope: !2794)
!2798 = !DILocation(line: 508, column: 16, scope: !2794)
!2799 = !DILocation(line: 508, column: 2, scope: !2791)
!2800 = !DILocation(line: 509, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 509, column: 7)
!2802 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 508, column: 59)
!2803 = !DILocation(line: 509, column: 12, scope: !2801)
!2804 = !DILocation(line: 509, column: 15, scope: !2801)
!2805 = !DILocation(line: 509, column: 20, scope: !2801)
!2806 = !DILocation(line: 509, column: 7, scope: !2802)
!2807 = !DILocation(line: 510, column: 25, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 509, column: 45)
!2809 = !DILocation(line: 510, column: 30, scope: !2808)
!2810 = !DILocation(line: 510, column: 33, scope: !2808)
!2811 = !DILocation(line: 510, column: 4, scope: !2808)
!2812 = !DILocation(line: 510, column: 12, scope: !2808)
!2813 = !DILocation(line: 510, column: 23, scope: !2808)
!2814 = !DILocation(line: 511, column: 4, scope: !2808)
!2815 = !DILocation(line: 513, column: 2, scope: !2802)
!2816 = !DILocation(line: 508, column: 55, scope: !2794)
!2817 = !DILocation(line: 508, column: 2, scope: !2794)
!2818 = distinct !{!2818, !2799, !2819}
!2819 = !DILocation(line: 513, column: 2, scope: !2791)
!2820 = !DILocation(line: 515, column: 2, scope: !2740)
!2821 = !DILocation(line: 516, column: 1, scope: !2740)
!2822 = distinct !DISubprogram(name: "hisi_thermal_alarm_irq_thread", scope: !3, file: !3, line: 462, type: !2823, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!2825, !163, !115}
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !103, line: 17, baseType: !102)
!2826 = !DILocalVariable(name: "irq", arg: 1, scope: !2822, file: !3, line: 462, type: !163)
!2827 = !DILocation(line: 462, column: 54, scope: !2822)
!2828 = !DILocalVariable(name: "dev", arg: 2, scope: !2822, file: !3, line: 462, type: !115)
!2829 = !DILocation(line: 462, column: 65, scope: !2822)
!2830 = !DILocalVariable(name: "sensor", scope: !2822, file: !3, line: 464, type: !2297)
!2831 = !DILocation(line: 464, column: 30, scope: !2822)
!2832 = !DILocation(line: 464, column: 39, scope: !2822)
!2833 = !DILocalVariable(name: "data", scope: !2822, file: !3, line: 465, type: !2301)
!2834 = !DILocation(line: 465, column: 28, scope: !2822)
!2835 = !DILocation(line: 465, column: 35, scope: !2822)
!2836 = !DILocation(line: 465, column: 43, scope: !2822)
!2837 = !DILocalVariable(name: "temp", scope: !2822, file: !3, line: 466, type: !163)
!2838 = !DILocation(line: 466, column: 6, scope: !2822)
!2839 = !DILocation(line: 468, column: 2, scope: !2822)
!2840 = !DILocation(line: 468, column: 8, scope: !2822)
!2841 = !DILocation(line: 468, column: 13, scope: !2822)
!2842 = !DILocation(line: 468, column: 25, scope: !2822)
!2843 = !DILocation(line: 470, column: 24, scope: !2822)
!2844 = !DILocation(line: 470, column: 2, scope: !2822)
!2845 = !DILocation(line: 472, column: 6, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 472, column: 6)
!2847 = !DILocation(line: 472, column: 14, scope: !2846)
!2848 = !DILocation(line: 472, column: 22, scope: !2846)
!2849 = !DILocation(line: 472, column: 11, scope: !2846)
!2850 = !DILocation(line: 472, column: 6, scope: !2822)
!2851 = !DILocation(line: 473, column: 3, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 472, column: 34)
!2853 = !DILocation(line: 477, column: 30, scope: !2852)
!2854 = !DILocation(line: 477, column: 38, scope: !2852)
!2855 = !DILocation(line: 477, column: 3, scope: !2852)
!2856 = !DILocation(line: 480, column: 2, scope: !2852)
!2857 = !DILocation(line: 481, column: 3, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 480, column: 9)
!2859 = !DILocation(line: 486, column: 2, scope: !2822)
!2860 = distinct !DISubprogram(name: "hisi_thermal_toggle_sensor", scope: !3, file: !3, line: 547, type: !2861, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !2297, !171}
!2863 = !DILocalVariable(name: "sensor", arg: 1, scope: !2860, file: !3, line: 547, type: !2297)
!2864 = !DILocation(line: 547, column: 68, scope: !2860)
!2865 = !DILocalVariable(name: "on", arg: 2, scope: !2860, file: !3, line: 548, type: !171)
!2866 = !DILocation(line: 548, column: 17, scope: !2860)
!2867 = !DILocalVariable(name: "tzd", scope: !2860, file: !3, line: 550, type: !2315)
!2868 = !DILocation(line: 550, column: 30, scope: !2860)
!2869 = !DILocation(line: 550, column: 36, scope: !2860)
!2870 = !DILocation(line: 550, column: 44, scope: !2860)
!2871 = !DILocation(line: 552, column: 6, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 552, column: 6)
!2873 = !DILocation(line: 552, column: 6, scope: !2860)
!2874 = !DILocation(line: 553, column: 30, scope: !2872)
!2875 = !DILocation(line: 553, column: 3, scope: !2872)
!2876 = !DILocation(line: 555, column: 31, scope: !2872)
!2877 = !DILocation(line: 555, column: 3, scope: !2872)
!2878 = !DILocation(line: 556, column: 1, scope: !2860)
!2879 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2880, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !1673, !115}
!2882 = !DILocalVariable(name: "dev", arg: 1, scope: !2879, file: !30, line: 660, type: !1673)
!2883 = !DILocation(line: 660, column: 51, scope: !2879)
!2884 = !DILocalVariable(name: "data", arg: 2, scope: !2879, file: !30, line: 660, type: !115)
!2885 = !DILocation(line: 660, column: 62, scope: !2879)
!2886 = !DILocation(line: 662, column: 21, scope: !2879)
!2887 = !DILocation(line: 662, column: 2, scope: !2879)
!2888 = !DILocation(line: 662, column: 7, scope: !2879)
!2889 = !DILocation(line: 662, column: 19, scope: !2879)
!2890 = !DILocation(line: 663, column: 1, scope: !2879)
!2891 = distinct !DISubprogram(name: "hisi_thermal_get_temp", scope: !3, file: !3, line: 445, type: !2269, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2892 = !DILocalVariable(name: "__data", arg: 1, scope: !2891, file: !3, line: 445, type: !115)
!2893 = !DILocation(line: 445, column: 40, scope: !2891)
!2894 = !DILocalVariable(name: "temp", arg: 2, scope: !2891, file: !3, line: 445, type: !822)
!2895 = !DILocation(line: 445, column: 53, scope: !2891)
!2896 = !DILocalVariable(name: "sensor", scope: !2891, file: !3, line: 447, type: !2297)
!2897 = !DILocation(line: 447, column: 30, scope: !2891)
!2898 = !DILocation(line: 447, column: 39, scope: !2891)
!2899 = !DILocalVariable(name: "data", scope: !2891, file: !3, line: 448, type: !2301)
!2900 = !DILocation(line: 448, column: 28, scope: !2891)
!2901 = !DILocation(line: 448, column: 35, scope: !2891)
!2902 = !DILocation(line: 448, column: 43, scope: !2891)
!2903 = !DILocation(line: 450, column: 10, scope: !2891)
!2904 = !DILocation(line: 450, column: 16, scope: !2891)
!2905 = !DILocation(line: 450, column: 21, scope: !2891)
!2906 = !DILocation(line: 450, column: 30, scope: !2891)
!2907 = !DILocation(line: 450, column: 3, scope: !2891)
!2908 = !DILocation(line: 450, column: 8, scope: !2891)
!2909 = !DILocation(line: 455, column: 2, scope: !2891)
!2910 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !157, file: !157, line: 231, type: !2911, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!115, !2913}
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!2915 = !DILocalVariable(name: "pdev", arg: 1, scope: !2910, file: !157, line: 231, type: !2913)
!2916 = !DILocation(line: 231, column: 72, scope: !2910)
!2917 = !DILocation(line: 233, column: 26, scope: !2910)
!2918 = !DILocation(line: 233, column: 32, scope: !2910)
!2919 = !DILocation(line: 233, column: 9, scope: !2910)
!2920 = !DILocation(line: 233, column: 2, scope: !2910)
!2921 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2922, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!115, !2090}
!2924 = !DILocalVariable(name: "dev", arg: 1, scope: !2921, file: !30, line: 655, type: !2090)
!2925 = !DILocation(line: 655, column: 58, scope: !2921)
!2926 = !DILocation(line: 657, column: 9, scope: !2921)
!2927 = !DILocation(line: 657, column: 14, scope: !2921)
!2928 = !DILocation(line: 657, column: 2, scope: !2921)
!2929 = distinct !DISubprogram(name: "hi6220_thermal_get_temp", scope: !3, file: !3, line: 299, type: !2295, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2930 = !DILocalVariable(name: "sensor", arg: 1, scope: !2929, file: !3, line: 299, type: !2297)
!2931 = !DILocation(line: 299, column: 64, scope: !2929)
!2932 = !DILocalVariable(name: "data", scope: !2929, file: !3, line: 301, type: !2301)
!2933 = !DILocation(line: 301, column: 28, scope: !2929)
!2934 = !DILocation(line: 301, column: 35, scope: !2929)
!2935 = !DILocation(line: 301, column: 43, scope: !2929)
!2936 = !DILocation(line: 303, column: 40, scope: !2929)
!2937 = !DILocation(line: 303, column: 46, scope: !2929)
!2938 = !DILocation(line: 303, column: 9, scope: !2929)
!2939 = !DILocation(line: 303, column: 2, scope: !2929)
!2940 = distinct !DISubprogram(name: "hi6220_thermal_enable_sensor", scope: !3, file: !3, line: 336, type: !2295, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2941 = !DILocalVariable(name: "sensor", arg: 1, scope: !2940, file: !3, line: 336, type: !2297)
!2942 = !DILocation(line: 336, column: 69, scope: !2940)
!2943 = !DILocalVariable(name: "data", scope: !2940, file: !3, line: 338, type: !2301)
!2944 = !DILocation(line: 338, column: 28, scope: !2940)
!2945 = !DILocation(line: 338, column: 35, scope: !2940)
!2946 = !DILocation(line: 338, column: 43, scope: !2940)
!2947 = !DILocalVariable(name: "ret", scope: !2940, file: !3, line: 339, type: !163)
!2948 = !DILocation(line: 339, column: 6, scope: !2940)
!2949 = !DILocation(line: 342, column: 27, scope: !2940)
!2950 = !DILocation(line: 342, column: 33, scope: !2940)
!2951 = !DILocation(line: 342, column: 8, scope: !2940)
!2952 = !DILocation(line: 342, column: 6, scope: !2940)
!2953 = !DILocation(line: 343, column: 6, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 343, column: 6)
!2955 = !DILocation(line: 343, column: 6, scope: !2940)
!2956 = !DILocation(line: 344, column: 10, scope: !2954)
!2957 = !DILocation(line: 344, column: 3, scope: !2954)
!2958 = !DILocation(line: 347, column: 30, scope: !2940)
!2959 = !DILocation(line: 347, column: 36, scope: !2940)
!2960 = !DILocation(line: 347, column: 2, scope: !2940)
!2961 = !DILocation(line: 348, column: 24, scope: !2940)
!2962 = !DILocation(line: 348, column: 30, scope: !2940)
!2963 = !DILocation(line: 348, column: 2, scope: !2940)
!2964 = !DILocation(line: 351, column: 31, scope: !2940)
!2965 = !DILocation(line: 351, column: 37, scope: !2940)
!2966 = !DILocation(line: 351, column: 43, scope: !2940)
!2967 = !DILocation(line: 351, column: 51, scope: !2940)
!2968 = !DILocation(line: 351, column: 2, scope: !2940)
!2969 = !DILocation(line: 354, column: 26, scope: !2940)
!2970 = !DILocation(line: 354, column: 32, scope: !2940)
!2971 = !DILocation(line: 354, column: 2, scope: !2940)
!2972 = !DILocation(line: 357, column: 25, scope: !2940)
!2973 = !DILocation(line: 357, column: 31, scope: !2940)
!2974 = !DILocation(line: 357, column: 2, scope: !2940)
!2975 = !DILocation(line: 360, column: 27, scope: !2940)
!2976 = !DILocation(line: 360, column: 33, scope: !2940)
!2977 = !DILocation(line: 360, column: 39, scope: !2940)
!2978 = !DILocation(line: 360, column: 47, scope: !2940)
!2979 = !DILocation(line: 360, column: 2, scope: !2940)
!2980 = !DILocation(line: 362, column: 27, scope: !2940)
!2981 = !DILocation(line: 362, column: 33, scope: !2940)
!2982 = !DILocation(line: 362, column: 2, scope: !2940)
!2983 = !DILocation(line: 365, column: 30, scope: !2940)
!2984 = !DILocation(line: 365, column: 36, scope: !2940)
!2985 = !DILocation(line: 365, column: 2, scope: !2940)
!2986 = !DILocation(line: 366, column: 24, scope: !2940)
!2987 = !DILocation(line: 366, column: 30, scope: !2940)
!2988 = !DILocation(line: 366, column: 2, scope: !2940)
!2989 = !DILocation(line: 368, column: 29, scope: !2940)
!2990 = !DILocation(line: 368, column: 35, scope: !2940)
!2991 = !DILocation(line: 368, column: 2, scope: !2940)
!2992 = !DILocation(line: 369, column: 30, scope: !2940)
!2993 = !DILocation(line: 369, column: 36, scope: !2940)
!2994 = !DILocation(line: 369, column: 2, scope: !2940)
!2995 = !DILocation(line: 371, column: 2, scope: !2940)
!2996 = !DILocation(line: 372, column: 1, scope: !2940)
!2997 = distinct !DISubprogram(name: "hi6220_thermal_disable_sensor", scope: !3, file: !3, line: 313, type: !2295, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!2998 = !DILocalVariable(name: "sensor", arg: 1, scope: !2997, file: !3, line: 313, type: !2297)
!2999 = !DILocation(line: 313, column: 70, scope: !2997)
!3000 = !DILocalVariable(name: "data", scope: !2997, file: !3, line: 315, type: !2301)
!3001 = !DILocation(line: 315, column: 28, scope: !2997)
!3002 = !DILocation(line: 315, column: 35, scope: !2997)
!3003 = !DILocation(line: 315, column: 43, scope: !2997)
!3004 = !DILocation(line: 318, column: 24, scope: !2997)
!3005 = !DILocation(line: 318, column: 30, scope: !2997)
!3006 = !DILocation(line: 318, column: 2, scope: !2997)
!3007 = !DILocation(line: 319, column: 30, scope: !2997)
!3008 = !DILocation(line: 319, column: 36, scope: !2997)
!3009 = !DILocation(line: 319, column: 2, scope: !2997)
!3010 = !DILocation(line: 320, column: 30, scope: !2997)
!3011 = !DILocation(line: 320, column: 36, scope: !2997)
!3012 = !DILocation(line: 320, column: 2, scope: !2997)
!3013 = !DILocation(line: 322, column: 24, scope: !2997)
!3014 = !DILocation(line: 322, column: 30, scope: !2997)
!3015 = !DILocation(line: 322, column: 2, scope: !2997)
!3016 = !DILocation(line: 324, column: 2, scope: !2997)
!3017 = distinct !DISubprogram(name: "hi6220_thermal_irq_handler", scope: !3, file: !3, line: 283, type: !2295, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3018 = !DILocalVariable(name: "sensor", arg: 1, scope: !3017, file: !3, line: 283, type: !2297)
!3019 = !DILocation(line: 283, column: 67, scope: !3017)
!3020 = !DILocalVariable(name: "data", scope: !3017, file: !3, line: 285, type: !2301)
!3021 = !DILocation(line: 285, column: 28, scope: !3017)
!3022 = !DILocation(line: 285, column: 35, scope: !3017)
!3023 = !DILocation(line: 285, column: 43, scope: !3017)
!3024 = !DILocation(line: 287, column: 29, scope: !3017)
!3025 = !DILocation(line: 287, column: 35, scope: !3017)
!3026 = !DILocation(line: 287, column: 2, scope: !3017)
!3027 = !DILocation(line: 288, column: 2, scope: !3017)
!3028 = distinct !DISubprogram(name: "hi6220_thermal_probe", scope: !3, file: !3, line: 396, type: !2509, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3029 = !DILocalVariable(name: "data", arg: 1, scope: !3028, file: !3, line: 396, type: !2301)
!3030 = !DILocation(line: 396, column: 59, scope: !3028)
!3031 = !DILocalVariable(name: "pdev", scope: !3028, file: !3, line: 398, type: !164)
!3032 = !DILocation(line: 398, column: 26, scope: !3028)
!3033 = !DILocation(line: 398, column: 33, scope: !3028)
!3034 = !DILocation(line: 398, column: 39, scope: !3028)
!3035 = !DILocalVariable(name: "dev", scope: !3028, file: !3, line: 399, type: !1673)
!3036 = !DILocation(line: 399, column: 17, scope: !3028)
!3037 = !DILocation(line: 399, column: 24, scope: !3028)
!3038 = !DILocation(line: 399, column: 30, scope: !3028)
!3039 = !DILocalVariable(name: "ret", scope: !3028, file: !3, line: 400, type: !163)
!3040 = !DILocation(line: 400, column: 6, scope: !3028)
!3041 = !DILocation(line: 402, column: 27, scope: !3028)
!3042 = !DILocation(line: 402, column: 14, scope: !3028)
!3043 = !DILocation(line: 402, column: 2, scope: !3028)
!3044 = !DILocation(line: 402, column: 8, scope: !3028)
!3045 = !DILocation(line: 402, column: 12, scope: !3028)
!3046 = !DILocation(line: 403, column: 13, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 403, column: 6)
!3048 = !DILocation(line: 403, column: 19, scope: !3047)
!3049 = !DILocation(line: 403, column: 6, scope: !3047)
!3050 = !DILocation(line: 403, column: 6, scope: !3028)
!3051 = !DILocation(line: 404, column: 17, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 403, column: 25)
!3053 = !DILocation(line: 404, column: 23, scope: !3052)
!3054 = !DILocation(line: 404, column: 9, scope: !3052)
!3055 = !DILocation(line: 404, column: 7, scope: !3052)
!3056 = !DILocation(line: 405, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 405, column: 7)
!3058 = !DILocation(line: 405, column: 11, scope: !3057)
!3059 = !DILocation(line: 405, column: 7, scope: !3052)
!3060 = !DILocation(line: 406, column: 4, scope: !3057)
!3061 = !DILocation(line: 407, column: 10, scope: !3052)
!3062 = !DILocation(line: 407, column: 3, scope: !3052)
!3063 = !DILocation(line: 410, column: 30, scope: !3028)
!3064 = !DILocation(line: 410, column: 17, scope: !3028)
!3065 = !DILocation(line: 410, column: 2, scope: !3028)
!3066 = !DILocation(line: 410, column: 8, scope: !3028)
!3067 = !DILocation(line: 410, column: 15, scope: !3028)
!3068 = !DILocation(line: 411, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 411, column: 6)
!3070 = !DILocation(line: 411, column: 13, scope: !3069)
!3071 = !DILocation(line: 411, column: 6, scope: !3028)
!3072 = !DILocation(line: 412, column: 3, scope: !3069)
!3073 = !DILocation(line: 414, column: 2, scope: !3028)
!3074 = !DILocation(line: 414, column: 8, scope: !3028)
!3075 = !DILocation(line: 414, column: 18, scope: !3028)
!3076 = !DILocation(line: 414, column: 21, scope: !3028)
!3077 = !DILocation(line: 415, column: 2, scope: !3028)
!3078 = !DILocation(line: 415, column: 8, scope: !3028)
!3079 = !DILocation(line: 415, column: 18, scope: !3028)
!3080 = !DILocation(line: 415, column: 27, scope: !3028)
!3081 = !DILocation(line: 416, column: 25, scope: !3028)
!3082 = !DILocation(line: 416, column: 2, scope: !3028)
!3083 = !DILocation(line: 416, column: 8, scope: !3028)
!3084 = !DILocation(line: 416, column: 18, scope: !3028)
!3085 = !DILocation(line: 416, column: 23, scope: !3028)
!3086 = !DILocation(line: 417, column: 2, scope: !3028)
!3087 = !DILocation(line: 417, column: 8, scope: !3028)
!3088 = !DILocation(line: 417, column: 19, scope: !3028)
!3089 = !DILocation(line: 419, column: 2, scope: !3028)
!3090 = !DILocation(line: 420, column: 1, scope: !3028)
!3091 = distinct !DISubprogram(name: "hi6220_thermal_get_temperature", scope: !3, file: !3, line: 207, type: !3092, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!163, !115}
!3094 = !DILocalVariable(name: "addr", arg: 1, scope: !3091, file: !3, line: 207, type: !115)
!3095 = !DILocation(line: 207, column: 64, scope: !3091)
!3096 = !DILocation(line: 209, column: 43, scope: !3091)
!3097 = !DILocation(line: 209, column: 48, scope: !3091)
!3098 = !DILocation(line: 209, column: 37, scope: !3091)
!3099 = !DILocation(line: 209, column: 9, scope: !3091)
!3100 = !DILocation(line: 209, column: 2, scope: !3091)
!3101 = distinct !DISubprogram(name: "hi6220_thermal_step_to_temp", scope: !3, file: !3, line: 111, type: !3102, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!163, !163}
!3104 = !DILocalVariable(name: "step", arg: 1, scope: !3101, file: !3, line: 111, type: !163)
!3105 = !DILocation(line: 111, column: 51, scope: !3101)
!3106 = !DILocation(line: 113, column: 29, scope: !3101)
!3107 = !DILocation(line: 113, column: 34, scope: !3101)
!3108 = !DILocation(line: 113, column: 26, scope: !3101)
!3109 = !DILocation(line: 113, column: 2, scope: !3101)
!3110 = distinct !DISubprogram(name: "readl", scope: !3111, file: !3111, line: 59, type: !3112, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3111 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!7, !3114}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3117 = !DILocalVariable(name: "addr", arg: 1, scope: !3110, file: !3111, line: 59, type: !3114)
!3118 = !DILocation(line: 59, column: 1, scope: !3110)
!3119 = !DILocalVariable(name: "ret", scope: !3110, file: !3111, line: 59, type: !7)
!3120 = !{i32 -2143437818}
!3121 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !2311, file: !2311, line: 906, type: !3122, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!163, !2309}
!3124 = !DILocalVariable(name: "clk", arg: 1, scope: !3121, file: !2311, line: 906, type: !2309)
!3125 = !DILocation(line: 906, column: 50, scope: !3121)
!3126 = !DILocalVariable(name: "ret", scope: !3121, file: !2311, line: 908, type: !163)
!3127 = !DILocation(line: 908, column: 6, scope: !3121)
!3128 = !DILocation(line: 910, column: 20, scope: !3121)
!3129 = !DILocation(line: 910, column: 8, scope: !3121)
!3130 = !DILocation(line: 910, column: 6, scope: !3121)
!3131 = !DILocation(line: 911, column: 6, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3121, file: !2311, line: 911, column: 6)
!3133 = !DILocation(line: 911, column: 6, scope: !3121)
!3134 = !DILocation(line: 912, column: 10, scope: !3132)
!3135 = !DILocation(line: 912, column: 3, scope: !3132)
!3136 = !DILocation(line: 913, column: 19, scope: !3121)
!3137 = !DILocation(line: 913, column: 8, scope: !3121)
!3138 = !DILocation(line: 913, column: 6, scope: !3121)
!3139 = !DILocation(line: 914, column: 6, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3121, file: !2311, line: 914, column: 6)
!3141 = !DILocation(line: 914, column: 6, scope: !3121)
!3142 = !DILocation(line: 915, column: 17, scope: !3140)
!3143 = !DILocation(line: 915, column: 3, scope: !3140)
!3144 = !DILocation(line: 917, column: 9, scope: !3121)
!3145 = !DILocation(line: 917, column: 2, scope: !3121)
!3146 = !DILocation(line: 918, column: 1, scope: !3121)
!3147 = distinct !DISubprogram(name: "hi6220_thermal_reset_enable", scope: !3, file: !3, line: 197, type: !3148, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !115, !163}
!3150 = !DILocalVariable(name: "addr", arg: 1, scope: !3147, file: !3, line: 197, type: !115)
!3151 = !DILocation(line: 197, column: 62, scope: !3147)
!3152 = !DILocalVariable(name: "value", arg: 2, scope: !3147, file: !3, line: 197, type: !163)
!3153 = !DILocation(line: 197, column: 72, scope: !3147)
!3154 = !DILocation(line: 199, column: 9, scope: !3147)
!3155 = !DILocation(line: 199, column: 16, scope: !3147)
!3156 = !DILocation(line: 199, column: 21, scope: !3147)
!3157 = !DILocation(line: 199, column: 2, scope: !3147)
!3158 = !DILocation(line: 200, column: 1, scope: !3147)
!3159 = distinct !DISubprogram(name: "hi6220_thermal_enable", scope: !3, file: !3, line: 202, type: !3148, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3160 = !DILocalVariable(name: "addr", arg: 1, scope: !3159, file: !3, line: 202, type: !115)
!3161 = !DILocation(line: 202, column: 56, scope: !3159)
!3162 = !DILocalVariable(name: "value", arg: 2, scope: !3159, file: !3, line: 202, type: !163)
!3163 = !DILocation(line: 202, column: 66, scope: !3159)
!3164 = !DILocation(line: 204, column: 9, scope: !3159)
!3165 = !DILocation(line: 204, column: 16, scope: !3159)
!3166 = !DILocation(line: 204, column: 21, scope: !3159)
!3167 = !DILocation(line: 204, column: 2, scope: !3159)
!3168 = !DILocation(line: 205, column: 1, scope: !3159)
!3169 = distinct !DISubprogram(name: "hi6220_thermal_sensor_select", scope: !3, file: !3, line: 261, type: !3148, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3170 = !DILocalVariable(name: "addr", arg: 1, scope: !3169, file: !3, line: 261, type: !115)
!3171 = !DILocation(line: 261, column: 63, scope: !3169)
!3172 = !DILocalVariable(name: "sensor", arg: 2, scope: !3169, file: !3, line: 261, type: !163)
!3173 = !DILocation(line: 261, column: 73, scope: !3169)
!3174 = !DILocation(line: 263, column: 16, scope: !3169)
!3175 = !DILocation(line: 263, column: 21, scope: !3169)
!3176 = !DILocation(line: 263, column: 10, scope: !3169)
!3177 = !DILocation(line: 263, column: 41, scope: !3169)
!3178 = !DILocation(line: 264, column: 10, scope: !3169)
!3179 = !DILocation(line: 264, column: 17, scope: !3169)
!3180 = !DILocation(line: 263, column: 69, scope: !3169)
!3181 = !DILocation(line: 264, column: 25, scope: !3169)
!3182 = !DILocation(line: 264, column: 30, scope: !3169)
!3183 = !DILocation(line: 263, column: 2, scope: !3169)
!3184 = !DILocation(line: 265, column: 1, scope: !3169)
!3185 = distinct !DISubprogram(name: "hi6220_thermal_hdak_set", scope: !3, file: !3, line: 277, type: !3148, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3186 = !DILocalVariable(name: "addr", arg: 1, scope: !3185, file: !3, line: 277, type: !115)
!3187 = !DILocation(line: 277, column: 58, scope: !3185)
!3188 = !DILocalVariable(name: "value", arg: 2, scope: !3185, file: !3, line: 277, type: !163)
!3189 = !DILocation(line: 277, column: 68, scope: !3185)
!3190 = !DILocation(line: 279, column: 16, scope: !3185)
!3191 = !DILocation(line: 279, column: 21, scope: !3185)
!3192 = !DILocation(line: 279, column: 10, scope: !3185)
!3193 = !DILocation(line: 279, column: 41, scope: !3185)
!3194 = !DILocation(line: 280, column: 10, scope: !3185)
!3195 = !DILocation(line: 280, column: 16, scope: !3185)
!3196 = !DILocation(line: 279, column: 71, scope: !3185)
!3197 = !DILocation(line: 280, column: 23, scope: !3185)
!3198 = !DILocation(line: 280, column: 28, scope: !3185)
!3199 = !DILocation(line: 279, column: 2, scope: !3185)
!3200 = !DILocation(line: 281, column: 1, scope: !3185)
!3201 = distinct !DISubprogram(name: "hi6220_thermal_set_lag", scope: !3, file: !3, line: 170, type: !3148, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3202 = !DILocalVariable(name: "addr", arg: 1, scope: !3201, file: !3, line: 170, type: !115)
!3203 = !DILocation(line: 170, column: 57, scope: !3201)
!3204 = !DILocalVariable(name: "value", arg: 2, scope: !3201, file: !3, line: 170, type: !163)
!3205 = !DILocation(line: 170, column: 67, scope: !3201)
!3206 = !DILocation(line: 172, column: 9, scope: !3201)
!3207 = !DILocation(line: 172, column: 47, scope: !3201)
!3208 = !DILocation(line: 173, column: 4, scope: !3201)
!3209 = !DILocation(line: 173, column: 9, scope: !3201)
!3210 = !DILocation(line: 172, column: 2, scope: !3201)
!3211 = !DILocation(line: 174, column: 1, scope: !3201)
!3212 = distinct !DISubprogram(name: "hi6220_thermal_alarm_set", scope: !3, file: !3, line: 186, type: !3148, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3213 = !DILocalVariable(name: "addr", arg: 1, scope: !3212, file: !3, line: 186, type: !115)
!3214 = !DILocation(line: 186, column: 59, scope: !3212)
!3215 = !DILocalVariable(name: "temp", arg: 2, scope: !3212, file: !3, line: 186, type: !163)
!3216 = !DILocation(line: 186, column: 69, scope: !3212)
!3217 = !DILocation(line: 188, column: 37, scope: !3212)
!3218 = !DILocation(line: 188, column: 9, scope: !3212)
!3219 = !DILocation(line: 188, column: 43, scope: !3212)
!3220 = !DILocation(line: 189, column: 9, scope: !3212)
!3221 = !DILocation(line: 189, column: 14, scope: !3212)
!3222 = !DILocation(line: 188, column: 2, scope: !3212)
!3223 = !DILocation(line: 190, column: 1, scope: !3212)
!3224 = distinct !DISubprogram(name: "hi6220_thermal_reset_set", scope: !3, file: !3, line: 192, type: !3148, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3225 = !DILocalVariable(name: "addr", arg: 1, scope: !3224, file: !3, line: 192, type: !115)
!3226 = !DILocation(line: 192, column: 59, scope: !3224)
!3227 = !DILocalVariable(name: "temp", arg: 2, scope: !3224, file: !3, line: 192, type: !163)
!3228 = !DILocation(line: 192, column: 69, scope: !3224)
!3229 = !DILocation(line: 194, column: 37, scope: !3224)
!3230 = !DILocation(line: 194, column: 9, scope: !3224)
!3231 = !DILocation(line: 194, column: 44, scope: !3224)
!3232 = !DILocation(line: 194, column: 49, scope: !3224)
!3233 = !DILocation(line: 194, column: 2, scope: !3224)
!3234 = !DILocation(line: 195, column: 1, scope: !3224)
!3235 = distinct !DISubprogram(name: "hi6220_thermal_alarm_clear", scope: !3, file: !3, line: 176, type: !3148, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3236 = !DILocalVariable(name: "addr", arg: 1, scope: !3235, file: !3, line: 176, type: !115)
!3237 = !DILocation(line: 176, column: 61, scope: !3235)
!3238 = !DILocalVariable(name: "value", arg: 2, scope: !3235, file: !3, line: 176, type: !163)
!3239 = !DILocation(line: 176, column: 71, scope: !3235)
!3240 = !DILocation(line: 178, column: 9, scope: !3235)
!3241 = !DILocation(line: 178, column: 16, scope: !3235)
!3242 = !DILocation(line: 178, column: 21, scope: !3235)
!3243 = !DILocation(line: 178, column: 2, scope: !3235)
!3244 = !DILocation(line: 179, column: 1, scope: !3235)
!3245 = distinct !DISubprogram(name: "hi6220_thermal_alarm_enable", scope: !3, file: !3, line: 181, type: !3148, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3246 = !DILocalVariable(name: "addr", arg: 1, scope: !3245, file: !3, line: 181, type: !115)
!3247 = !DILocation(line: 181, column: 62, scope: !3245)
!3248 = !DILocalVariable(name: "value", arg: 2, scope: !3245, file: !3, line: 181, type: !163)
!3249 = !DILocation(line: 181, column: 72, scope: !3245)
!3250 = !DILocation(line: 183, column: 9, scope: !3245)
!3251 = !DILocation(line: 183, column: 16, scope: !3245)
!3252 = !DILocation(line: 183, column: 21, scope: !3245)
!3253 = !DILocation(line: 183, column: 2, scope: !3245)
!3254 = !DILocation(line: 184, column: 1, scope: !3245)
!3255 = distinct !DISubprogram(name: "writel", scope: !3111, file: !3111, line: 67, type: !3256, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{null, !7, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3259 = !DILocalVariable(name: "val", arg: 1, scope: !3255, file: !3111, line: 67, type: !7)
!3260 = !DILocation(line: 67, column: 1, scope: !3255)
!3261 = !DILocalVariable(name: "addr", arg: 2, scope: !3255, file: !3111, line: 67, type: !3258)
!3262 = !{i32 -2143435425}
!3263 = distinct !DISubprogram(name: "hi6220_thermal_temp_to_step", scope: !3, file: !3, line: 116, type: !3102, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3264 = !DILocalVariable(name: "temp", arg: 1, scope: !3263, file: !3, line: 116, type: !163)
!3265 = !DILocation(line: 116, column: 51, scope: !3263)
!3266 = !DILocation(line: 118, column: 9, scope: !3263)
!3267 = !DILocation(line: 118, column: 2, scope: !3263)
!3268 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !2311, file: !2311, line: 921, type: !3269, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !2309}
!3271 = !DILocalVariable(name: "clk", arg: 1, scope: !3268, file: !2311, line: 921, type: !2309)
!3272 = !DILocation(line: 921, column: 54, scope: !3268)
!3273 = !DILocation(line: 923, column: 14, scope: !3268)
!3274 = !DILocation(line: 923, column: 2, scope: !3268)
!3275 = !DILocation(line: 924, column: 16, scope: !3268)
!3276 = !DILocation(line: 924, column: 2, scope: !3268)
!3277 = !DILocation(line: 925, column: 1, scope: !3268)
!3278 = distinct !DISubprogram(name: "hi3660_thermal_get_temp", scope: !3, file: !3, line: 306, type: !2295, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3279 = !DILocalVariable(name: "sensor", arg: 1, scope: !3278, file: !3, line: 306, type: !2297)
!3280 = !DILocation(line: 306, column: 64, scope: !3278)
!3281 = !DILocalVariable(name: "data", scope: !3278, file: !3, line: 308, type: !2301)
!3282 = !DILocation(line: 308, column: 28, scope: !3278)
!3283 = !DILocation(line: 308, column: 35, scope: !3278)
!3284 = !DILocation(line: 308, column: 43, scope: !3278)
!3285 = !DILocation(line: 310, column: 40, scope: !3278)
!3286 = !DILocation(line: 310, column: 46, scope: !3278)
!3287 = !DILocation(line: 310, column: 52, scope: !3278)
!3288 = !DILocation(line: 310, column: 60, scope: !3278)
!3289 = !DILocation(line: 310, column: 9, scope: !3278)
!3290 = !DILocation(line: 310, column: 2, scope: !3278)
!3291 = distinct !DISubprogram(name: "hi3660_thermal_enable_sensor", scope: !3, file: !3, line: 374, type: !2295, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3292 = !DILocalVariable(name: "sensor", arg: 1, scope: !3291, file: !3, line: 374, type: !2297)
!3293 = !DILocation(line: 374, column: 69, scope: !3291)
!3294 = !DILocalVariable(name: "value", scope: !3291, file: !3, line: 376, type: !7)
!3295 = !DILocation(line: 376, column: 15, scope: !3291)
!3296 = !DILocalVariable(name: "data", scope: !3291, file: !3, line: 377, type: !2301)
!3297 = !DILocation(line: 377, column: 28, scope: !3291)
!3298 = !DILocation(line: 377, column: 35, scope: !3291)
!3299 = !DILocation(line: 377, column: 43, scope: !3291)
!3300 = !DILocation(line: 380, column: 30, scope: !3291)
!3301 = !DILocation(line: 380, column: 36, scope: !3291)
!3302 = !DILocation(line: 380, column: 42, scope: !3291)
!3303 = !DILocation(line: 380, column: 50, scope: !3291)
!3304 = !DILocation(line: 380, column: 2, scope: !3291)
!3305 = !DILocation(line: 383, column: 25, scope: !3291)
!3306 = !DILocation(line: 383, column: 31, scope: !3291)
!3307 = !DILocation(line: 383, column: 37, scope: !3291)
!3308 = !DILocation(line: 383, column: 45, scope: !3291)
!3309 = !DILocation(line: 383, column: 2, scope: !3291)
!3310 = !DILocation(line: 386, column: 38, scope: !3291)
!3311 = !DILocation(line: 386, column: 46, scope: !3291)
!3312 = !DILocation(line: 386, column: 10, scope: !3291)
!3313 = !DILocation(line: 386, column: 8, scope: !3291)
!3314 = !DILocation(line: 387, column: 27, scope: !3291)
!3315 = !DILocation(line: 387, column: 33, scope: !3291)
!3316 = !DILocation(line: 387, column: 39, scope: !3291)
!3317 = !DILocation(line: 387, column: 47, scope: !3291)
!3318 = !DILocation(line: 387, column: 51, scope: !3291)
!3319 = !DILocation(line: 387, column: 2, scope: !3291)
!3320 = !DILocation(line: 390, column: 29, scope: !3291)
!3321 = !DILocation(line: 390, column: 35, scope: !3291)
!3322 = !DILocation(line: 390, column: 41, scope: !3291)
!3323 = !DILocation(line: 390, column: 49, scope: !3291)
!3324 = !DILocation(line: 390, column: 2, scope: !3291)
!3325 = !DILocation(line: 391, column: 30, scope: !3291)
!3326 = !DILocation(line: 391, column: 36, scope: !3291)
!3327 = !DILocation(line: 391, column: 42, scope: !3291)
!3328 = !DILocation(line: 391, column: 50, scope: !3291)
!3329 = !DILocation(line: 391, column: 2, scope: !3291)
!3330 = !DILocation(line: 393, column: 2, scope: !3291)
!3331 = distinct !DISubprogram(name: "hi3660_thermal_disable_sensor", scope: !3, file: !3, line: 327, type: !2295, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3332 = !DILocalVariable(name: "sensor", arg: 1, scope: !3331, file: !3, line: 327, type: !2297)
!3333 = !DILocation(line: 327, column: 70, scope: !3331)
!3334 = !DILocalVariable(name: "data", scope: !3331, file: !3, line: 329, type: !2301)
!3335 = !DILocation(line: 329, column: 28, scope: !3331)
!3336 = !DILocation(line: 329, column: 35, scope: !3331)
!3337 = !DILocation(line: 329, column: 43, scope: !3331)
!3338 = !DILocation(line: 332, column: 30, scope: !3331)
!3339 = !DILocation(line: 332, column: 36, scope: !3331)
!3340 = !DILocation(line: 332, column: 42, scope: !3331)
!3341 = !DILocation(line: 332, column: 50, scope: !3331)
!3342 = !DILocation(line: 332, column: 2, scope: !3331)
!3343 = !DILocation(line: 333, column: 2, scope: !3331)
!3344 = distinct !DISubprogram(name: "hi3660_thermal_irq_handler", scope: !3, file: !3, line: 291, type: !2295, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3345 = !DILocalVariable(name: "sensor", arg: 1, scope: !3344, file: !3, line: 291, type: !2297)
!3346 = !DILocation(line: 291, column: 67, scope: !3344)
!3347 = !DILocalVariable(name: "data", scope: !3344, file: !3, line: 293, type: !2301)
!3348 = !DILocation(line: 293, column: 28, scope: !3344)
!3349 = !DILocation(line: 293, column: 35, scope: !3344)
!3350 = !DILocation(line: 293, column: 43, scope: !3344)
!3351 = !DILocation(line: 295, column: 29, scope: !3344)
!3352 = !DILocation(line: 295, column: 35, scope: !3344)
!3353 = !DILocation(line: 295, column: 41, scope: !3344)
!3354 = !DILocation(line: 295, column: 49, scope: !3344)
!3355 = !DILocation(line: 295, column: 2, scope: !3344)
!3356 = !DILocation(line: 296, column: 2, scope: !3344)
!3357 = distinct !DISubprogram(name: "hi3660_thermal_probe", scope: !3, file: !3, line: 422, type: !2509, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3358 = !DILocalVariable(name: "data", arg: 1, scope: !3357, file: !3, line: 422, type: !2301)
!3359 = !DILocation(line: 422, column: 59, scope: !3357)
!3360 = !DILocalVariable(name: "pdev", scope: !3357, file: !3, line: 424, type: !164)
!3361 = !DILocation(line: 424, column: 26, scope: !3357)
!3362 = !DILocation(line: 424, column: 33, scope: !3357)
!3363 = !DILocation(line: 424, column: 39, scope: !3357)
!3364 = !DILocalVariable(name: "dev", scope: !3357, file: !3, line: 425, type: !1673)
!3365 = !DILocation(line: 425, column: 17, scope: !3357)
!3366 = !DILocation(line: 425, column: 24, scope: !3357)
!3367 = !DILocation(line: 425, column: 30, scope: !3357)
!3368 = !DILocation(line: 427, column: 2, scope: !3357)
!3369 = !DILocation(line: 427, column: 8, scope: !3357)
!3370 = !DILocation(line: 427, column: 19, scope: !3357)
!3371 = !DILocation(line: 429, column: 30, scope: !3357)
!3372 = !DILocation(line: 430, column: 9, scope: !3357)
!3373 = !DILocation(line: 430, column: 15, scope: !3357)
!3374 = !DILocation(line: 429, column: 57, scope: !3357)
!3375 = !DILocation(line: 429, column: 17, scope: !3357)
!3376 = !DILocation(line: 429, column: 2, scope: !3357)
!3377 = !DILocation(line: 429, column: 8, scope: !3357)
!3378 = !DILocation(line: 429, column: 15, scope: !3357)
!3379 = !DILocation(line: 431, column: 7, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 431, column: 6)
!3381 = !DILocation(line: 431, column: 13, scope: !3380)
!3382 = !DILocation(line: 431, column: 6, scope: !3357)
!3383 = !DILocation(line: 432, column: 3, scope: !3380)
!3384 = !DILocation(line: 434, column: 2, scope: !3357)
!3385 = !DILocation(line: 434, column: 8, scope: !3357)
!3386 = !DILocation(line: 434, column: 18, scope: !3357)
!3387 = !DILocation(line: 434, column: 21, scope: !3357)
!3388 = !DILocation(line: 435, column: 2, scope: !3357)
!3389 = !DILocation(line: 435, column: 8, scope: !3357)
!3390 = !DILocation(line: 435, column: 18, scope: !3357)
!3391 = !DILocation(line: 435, column: 27, scope: !3357)
!3392 = !DILocation(line: 436, column: 25, scope: !3357)
!3393 = !DILocation(line: 436, column: 2, scope: !3357)
!3394 = !DILocation(line: 436, column: 8, scope: !3357)
!3395 = !DILocation(line: 436, column: 18, scope: !3357)
!3396 = !DILocation(line: 436, column: 23, scope: !3357)
!3397 = !DILocation(line: 438, column: 2, scope: !3357)
!3398 = !DILocation(line: 438, column: 8, scope: !3357)
!3399 = !DILocation(line: 438, column: 18, scope: !3357)
!3400 = !DILocation(line: 438, column: 21, scope: !3357)
!3401 = !DILocation(line: 439, column: 2, scope: !3357)
!3402 = !DILocation(line: 439, column: 8, scope: !3357)
!3403 = !DILocation(line: 439, column: 18, scope: !3357)
!3404 = !DILocation(line: 439, column: 27, scope: !3357)
!3405 = !DILocation(line: 440, column: 25, scope: !3357)
!3406 = !DILocation(line: 440, column: 2, scope: !3357)
!3407 = !DILocation(line: 440, column: 8, scope: !3357)
!3408 = !DILocation(line: 440, column: 18, scope: !3357)
!3409 = !DILocation(line: 440, column: 23, scope: !3357)
!3410 = !DILocation(line: 442, column: 2, scope: !3357)
!3411 = !DILocation(line: 443, column: 1, scope: !3357)
!3412 = distinct !DISubprogram(name: "hi3660_thermal_get_temperature", scope: !3, file: !3, line: 246, type: !2282, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3413 = !DILocalVariable(name: "addr", arg: 1, scope: !3412, file: !3, line: 246, type: !115)
!3414 = !DILocation(line: 246, column: 64, scope: !3412)
!3415 = !DILocalVariable(name: "id", arg: 2, scope: !3412, file: !3, line: 246, type: !163)
!3416 = !DILocation(line: 246, column: 74, scope: !3412)
!3417 = !DILocation(line: 248, column: 43, scope: !3412)
!3418 = !DILocation(line: 248, column: 50, scope: !3412)
!3419 = !DILocation(line: 248, column: 48, scope: !3412)
!3420 = !DILocation(line: 248, column: 37, scope: !3412)
!3421 = !DILocation(line: 248, column: 9, scope: !3412)
!3422 = !DILocation(line: 248, column: 2, scope: !3412)
!3423 = distinct !DISubprogram(name: "hi3660_thermal_step_to_temp", scope: !3, file: !3, line: 129, type: !3102, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3424 = !DILocalVariable(name: "step", arg: 1, scope: !3423, file: !3, line: 129, type: !163)
!3425 = !DILocation(line: 129, column: 51, scope: !3423)
!3426 = !DILocation(line: 131, column: 28, scope: !3423)
!3427 = !DILocation(line: 131, column: 33, scope: !3423)
!3428 = !DILocation(line: 131, column: 26, scope: !3423)
!3429 = !DILocation(line: 131, column: 2, scope: !3423)
!3430 = distinct !DISubprogram(name: "hi3660_thermal_alarm_enable", scope: !3, file: !3, line: 234, type: !3431, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{null, !115, !163, !163}
!3433 = !DILocalVariable(name: "addr", arg: 1, scope: !3430, file: !3, line: 234, type: !115)
!3434 = !DILocation(line: 234, column: 62, scope: !3430)
!3435 = !DILocalVariable(name: "id", arg: 2, scope: !3430, file: !3, line: 235, type: !163)
!3436 = !DILocation(line: 235, column: 17, scope: !3430)
!3437 = !DILocalVariable(name: "value", arg: 3, scope: !3430, file: !3, line: 235, type: !163)
!3438 = !DILocation(line: 235, column: 25, scope: !3430)
!3439 = !DILocation(line: 237, column: 9, scope: !3430)
!3440 = !DILocation(line: 237, column: 16, scope: !3430)
!3441 = !DILocation(line: 237, column: 23, scope: !3430)
!3442 = !DILocation(line: 237, column: 21, scope: !3430)
!3443 = !DILocation(line: 237, column: 2, scope: !3430)
!3444 = !DILocation(line: 238, column: 1, scope: !3430)
!3445 = distinct !DISubprogram(name: "hi3660_thermal_set_lag", scope: !3, file: !3, line: 221, type: !3431, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3446 = !DILocalVariable(name: "addr", arg: 1, scope: !3445, file: !3, line: 221, type: !115)
!3447 = !DILocation(line: 221, column: 57, scope: !3445)
!3448 = !DILocalVariable(name: "id", arg: 2, scope: !3445, file: !3, line: 222, type: !163)
!3449 = !DILocation(line: 222, column: 12, scope: !3445)
!3450 = !DILocalVariable(name: "value", arg: 3, scope: !3445, file: !3, line: 222, type: !163)
!3451 = !DILocation(line: 222, column: 20, scope: !3445)
!3452 = !DILocation(line: 224, column: 9, scope: !3445)
!3453 = !DILocation(line: 224, column: 47, scope: !3445)
!3454 = !DILocation(line: 225, column: 4, scope: !3445)
!3455 = !DILocation(line: 225, column: 11, scope: !3445)
!3456 = !DILocation(line: 225, column: 9, scope: !3445)
!3457 = !DILocation(line: 224, column: 2, scope: !3445)
!3458 = !DILocation(line: 226, column: 1, scope: !3445)
!3459 = distinct !DISubprogram(name: "hi3660_thermal_temp_to_step", scope: !3, file: !3, line: 134, type: !3102, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3460 = !DILocalVariable(name: "temp", arg: 1, scope: !3459, file: !3, line: 134, type: !163)
!3461 = !DILocation(line: 134, column: 51, scope: !3459)
!3462 = !DILocation(line: 136, column: 9, scope: !3459)
!3463 = !DILocation(line: 136, column: 2, scope: !3459)
!3464 = distinct !DISubprogram(name: "hi3660_thermal_alarm_set", scope: !3, file: !3, line: 240, type: !3431, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3465 = !DILocalVariable(name: "addr", arg: 1, scope: !3464, file: !3, line: 240, type: !115)
!3466 = !DILocation(line: 240, column: 59, scope: !3464)
!3467 = !DILocalVariable(name: "id", arg: 2, scope: !3464, file: !3, line: 241, type: !163)
!3468 = !DILocation(line: 241, column: 14, scope: !3464)
!3469 = !DILocalVariable(name: "value", arg: 3, scope: !3464, file: !3, line: 241, type: !163)
!3470 = !DILocation(line: 241, column: 22, scope: !3464)
!3471 = !DILocation(line: 243, column: 9, scope: !3464)
!3472 = !DILocation(line: 243, column: 16, scope: !3464)
!3473 = !DILocation(line: 243, column: 23, scope: !3464)
!3474 = !DILocation(line: 243, column: 21, scope: !3464)
!3475 = !DILocation(line: 243, column: 2, scope: !3464)
!3476 = !DILocation(line: 244, column: 1, scope: !3464)
!3477 = distinct !DISubprogram(name: "hi3660_thermal_alarm_clear", scope: !3, file: !3, line: 228, type: !3431, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3478 = !DILocalVariable(name: "addr", arg: 1, scope: !3477, file: !3, line: 228, type: !115)
!3479 = !DILocation(line: 228, column: 61, scope: !3477)
!3480 = !DILocalVariable(name: "id", arg: 2, scope: !3477, file: !3, line: 229, type: !163)
!3481 = !DILocation(line: 229, column: 16, scope: !3477)
!3482 = !DILocalVariable(name: "value", arg: 3, scope: !3477, file: !3, line: 229, type: !163)
!3483 = !DILocation(line: 229, column: 24, scope: !3477)
!3484 = !DILocation(line: 231, column: 9, scope: !3477)
!3485 = !DILocation(line: 231, column: 16, scope: !3477)
!3486 = !DILocation(line: 231, column: 23, scope: !3477)
!3487 = !DILocation(line: 231, column: 21, scope: !3477)
!3488 = !DILocation(line: 231, column: 2, scope: !3477)
!3489 = !DILocation(line: 232, column: 1, scope: !3477)
!3490 = distinct !DISubprogram(name: "hisi_thermal_suspend", scope: !3, file: !3, line: 635, type: !1705, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3491 = !DILocalVariable(name: "dev", arg: 1, scope: !3490, file: !3, line: 635, type: !1673)
!3492 = !DILocation(line: 635, column: 48, scope: !3490)
!3493 = !DILocalVariable(name: "data", scope: !3490, file: !3, line: 637, type: !2301)
!3494 = !DILocation(line: 637, column: 28, scope: !3490)
!3495 = !DILocation(line: 637, column: 51, scope: !3490)
!3496 = !DILocation(line: 637, column: 35, scope: !3490)
!3497 = !DILocalVariable(name: "i", scope: !3490, file: !3, line: 638, type: !163)
!3498 = !DILocation(line: 638, column: 6, scope: !3490)
!3499 = !DILocation(line: 640, column: 9, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 640, column: 2)
!3501 = !DILocation(line: 640, column: 7, scope: !3500)
!3502 = !DILocation(line: 640, column: 14, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 640, column: 2)
!3504 = !DILocation(line: 640, column: 18, scope: !3503)
!3505 = !DILocation(line: 640, column: 24, scope: !3503)
!3506 = !DILocation(line: 640, column: 16, scope: !3503)
!3507 = !DILocation(line: 640, column: 2, scope: !3500)
!3508 = !DILocation(line: 641, column: 3, scope: !3503)
!3509 = !DILocation(line: 641, column: 9, scope: !3503)
!3510 = !DILocation(line: 641, column: 14, scope: !3503)
!3511 = !DILocation(line: 641, column: 30, scope: !3503)
!3512 = !DILocation(line: 641, column: 36, scope: !3503)
!3513 = !DILocation(line: 641, column: 43, scope: !3503)
!3514 = !DILocation(line: 640, column: 37, scope: !3503)
!3515 = !DILocation(line: 640, column: 2, scope: !3503)
!3516 = distinct !{!3516, !3507, !3517}
!3517 = !DILocation(line: 641, column: 45, scope: !3500)
!3518 = !DILocation(line: 643, column: 2, scope: !3490)
!3519 = distinct !DISubprogram(name: "hisi_thermal_resume", scope: !3, file: !3, line: 646, type: !1705, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3520 = !DILocalVariable(name: "dev", arg: 1, scope: !3519, file: !3, line: 646, type: !1673)
!3521 = !DILocation(line: 646, column: 47, scope: !3519)
!3522 = !DILocalVariable(name: "data", scope: !3519, file: !3, line: 648, type: !2301)
!3523 = !DILocation(line: 648, column: 28, scope: !3519)
!3524 = !DILocation(line: 648, column: 51, scope: !3519)
!3525 = !DILocation(line: 648, column: 35, scope: !3519)
!3526 = !DILocalVariable(name: "i", scope: !3519, file: !3, line: 649, type: !163)
!3527 = !DILocation(line: 649, column: 6, scope: !3519)
!3528 = !DILocalVariable(name: "ret", scope: !3519, file: !3, line: 649, type: !163)
!3529 = !DILocation(line: 649, column: 9, scope: !3519)
!3530 = !DILocation(line: 651, column: 9, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 651, column: 2)
!3532 = !DILocation(line: 651, column: 7, scope: !3531)
!3533 = !DILocation(line: 651, column: 14, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 651, column: 2)
!3535 = !DILocation(line: 651, column: 18, scope: !3534)
!3536 = !DILocation(line: 651, column: 24, scope: !3534)
!3537 = !DILocation(line: 651, column: 16, scope: !3534)
!3538 = !DILocation(line: 651, column: 2, scope: !3531)
!3539 = !DILocation(line: 652, column: 10, scope: !3534)
!3540 = !DILocation(line: 652, column: 16, scope: !3534)
!3541 = !DILocation(line: 652, column: 21, scope: !3534)
!3542 = !DILocation(line: 652, column: 36, scope: !3534)
!3543 = !DILocation(line: 652, column: 42, scope: !3534)
!3544 = !DILocation(line: 652, column: 49, scope: !3534)
!3545 = !DILocation(line: 652, column: 7, scope: !3534)
!3546 = !DILocation(line: 652, column: 3, scope: !3534)
!3547 = !DILocation(line: 651, column: 37, scope: !3534)
!3548 = !DILocation(line: 651, column: 2, scope: !3534)
!3549 = distinct !{!3549, !3538, !3550}
!3550 = !DILocation(line: 652, column: 51, scope: !3531)
!3551 = !DILocation(line: 654, column: 9, scope: !3519)
!3552 = !DILocation(line: 654, column: 2, scope: !3519)
