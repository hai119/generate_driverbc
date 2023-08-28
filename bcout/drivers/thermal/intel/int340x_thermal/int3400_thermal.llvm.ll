; ModuleID = '../bcout/drivers/thermal/intel/int340x_thermal/int3400_thermal.llvm.bc'
source_filename = "drivers/thermal/intel/int340x_thermal/int3400_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_int3400_thermal_driver_init6:\09\09\09"
module asm ".long\09int3400_thermal_driver_init - .\09\09\09"
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
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.thermal_attr = type opaque
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.kmem_cache = type opaque
%struct.acpi_buffer = type { i64, i8* }
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
%struct.int3400_thermal_priv = type { %struct.acpi_device*, %struct.platform_device*, %struct.thermal_zone_device*, i32, %struct.art*, i32, %struct.trt*, i8, i32, i32, i8*, i32, i32*, %struct.odvp_attr* }
%struct.art = type { i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.trt = type { i8*, i8*, i64, i64, i64, i64, i64, i64 }
%struct.odvp_attr = type { i32, %struct.int3400_thermal_priv*, %struct.kobj_attribute }
%struct.kobj_attribute = type { %struct.attribute, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)*, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* }
%struct.guid_t = type { [16 x i8] }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.41 = type { i32, i32, %union.acpi_object* }
%struct.anon.40 = type { i32, i32, i8* }
%struct.anon.38 = type { i32, i64 }
%struct.acpi_osc_context = type { i8*, i32, %struct.acpi_buffer, %struct.acpi_buffer }

@__UNIQUE_ID___addressable_int3400_thermal_driver_init171 = internal global i8* bitcast (i32 ()* @int3400_thermal_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@int3400_thermal_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @int3400_thermal_probe, i32 (%struct.platform_device*)* @int3400_thermal_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* getelementptr inbounds ([3 x %struct.acpi_device_id], [3 x %struct.acpi_device_id]* @int3400_thermal_match, i32 0, i32 0), i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2786
@__exitcall_int3400_thermal_driver_exit = internal global void ()* @int3400_thermal_driver_exit, section ".exitcall.exit", align 8, !dbg !2759
@__UNIQUE_ID_description172 = internal constant [51 x i8] c"int3400_thermal.description=INT3400 Thermal driver\00", section ".modinfo", align 1, !dbg !2766
@__UNIQUE_ID_author173 = internal constant [55 x i8] c"int3400_thermal.author=Zhang Rui <rui.zhang@intel.com>\00", section ".modinfo", align 1, !dbg !2771
@__UNIQUE_ID_file174 = internal constant [75 x i8] c"int3400_thermal.file=drivers/thermal/intel/int340x_thermal/int3400_thermal\00", section ".modinfo", align 1, !dbg !2776
@__UNIQUE_ID_license175 = internal constant [28 x i8] c"int3400_thermal.license=GPL\00", section ".modinfo", align 1, !dbg !2781
@.str = private unnamed_addr constant [16 x i8] c"int3400 thermal\00", align 1
@int3400_thermal_match = internal constant [3 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT3400\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INTC1040\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2849
@.str.1 = private unnamed_addr constant [16 x i8] c"INT3400 Thermal\00", align 1
@int3400_thermal_ops = internal global %struct.thermal_zone_device_ops { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, i32*)* @int3400_thermal_get_temp, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32)* @int3400_thermal_change_mode, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32*)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null }, align 8, !dbg !2814
@int3400_thermal_params = internal global %struct.thermal_zone_params { [20 x i8] c"user_space\00\00\00\00\00\00\00\00\00\00", i8 1, i32 0, %struct.thermal_bind_params* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8, !dbg !2816
@uuid_attribute_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @uuid_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2818
@data_attribute_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @imok_attr, i32 0, i32 0), %struct.bin_attribute** getelementptr inbounds ([2 x %struct.bin_attribute*], [2 x %struct.bin_attribute*]* @data_attributes, i32 0, i32 0) }, align 8, !dbg !2839
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__const.int3400_thermal_get_uuids.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"IDSP\00", align 1
@int3400_thermal_uuids = internal global [10 x i8*] [i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0)], align 16, !dbg !2807
@.str.4 = private unnamed_addr constant [37 x i8] c"42A441D6-AE6A-462b-A84B-4A8CE79027D3\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"3A95C389-E4B8-4629-A526-C52C88626BAE\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"97C68AE7-15FA-499c-B8C9-5DA81D606E0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"63BE270F-1C11-48FD-A6F7-3AF253FF3E2D\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"5349962F-71E6-431D-9AE8-0A635B710AEE\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"9E04115A-AE87-4D1C-9500-0F3E340BFE75\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"F5A35014-C209-46A4-993A-EB56DE7530A1\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"6ED722A7-9240-48A5-B479-31EEF723D7CF\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"16CAF1B7-DD38-40ED-B1C1-1B8A1913D531\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"BE84BABF-C4D4-403D-B495-3128FD44dAC1\00", align 1
@__const.int3400_setup_gddv.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"GDDV\00", align 1
@bin_attr_data_vault = internal global %struct.bin_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 0, i8* null, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @data_vault_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* null, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* null }, align 8, !dbg !2812
@.str.15 = private unnamed_addr constant [11 x i8] c"data_vault\00", align 1
@__const.evaluate_odvp.odvp = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"ODVP\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"odvp%d\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"uuids\00", align 1
@uuid_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_available_uuids, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_current_uuid, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2820
@dev_attr_available_uuids = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @available_uuids_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2823
@dev_attr_current_uuid = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @current_uuid_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @current_uuid_store }, align 8, !dbg !2837
@.str.20 = private unnamed_addr constant [16 x i8] c"available_uuids\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"current_uuid\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"INVALID\0A\00", align 1
@imok_attr = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_imok, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2841
@data_attributes = internal global [2 x %struct.bin_attribute*] [%struct.bin_attribute* @bin_attr_data_vault, %struct.bin_attribute* null], align 16, !dbg !2846
@dev_attr_imok = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @imok_store }, align 8, !dbg !2844
@.str.25 = private unnamed_addr constant [5 x i8] c"imok\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"IMOK\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"NAME=%s\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"TEMP=%d\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"TRIP=\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"EVENT=%d\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_int3400_thermal_driver_init171 to i8*), i8* bitcast (void ()* @int3400_thermal_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_int3400_thermal_driver_exit to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_description172, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_author173, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_file174, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_license175, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @int3400_thermal_driver_init() #0 section ".init.text" !dbg !2857 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @int3400_thermal_driver, %struct.module* null) #8, !dbg !2860
  ret i32 %call, !dbg !2860
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @int3400_thermal_driver_exit() #0 section ".exit.text" !dbg !2861 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @int3400_thermal_driver) #8, !dbg !2862
  ret void, !dbg !2862
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3400_thermal_probe(%struct.platform_device* %pdev) #2 !dbg !2863 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %priv = alloca %struct.int3400_thermal_priv*, align 8
  %result = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2864, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !2866, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2868, metadata !DIExpression()), !dbg !2870
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2870
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2870
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 24, !dbg !2870
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2870
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2870
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2870
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #8, !dbg !2870
  br i1 %call, label %cond.true, label %cond.false, !dbg !2870

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2871, metadata !DIExpression()), !dbg !2873
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2873
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !2873
  store i8* %4, i8** %__mptr, align 8, !dbg !2873
  br label %do.body, !dbg !2873

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2874

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2873
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !2873
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2873
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !2874
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !2873
  br label %cond.end, !dbg !2870

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2870

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !2870
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2870
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2870
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !2867
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2878, metadata !DIExpression()), !dbg !2879
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !2880
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !2880
  br i1 %tobool, label %if.end, label %if.then, !dbg !2882

if.then:                                          ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !2883
  br label %return, !dbg !2883

if.end:                                           ; preds = %cond.end
  %call2 = call i8* @kzalloc(i64 104, i32 3264) #8, !dbg !2884
  %10 = bitcast i8* %call2 to %struct.int3400_thermal_priv*, !dbg !2884
  store %struct.int3400_thermal_priv* %10, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2885
  %11 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2886
  %tobool3 = icmp ne %struct.int3400_thermal_priv* %11, null, !dbg !2886
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2888

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2889
  br label %return, !dbg !2889

if.end5:                                          ; preds = %if.end
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2890
  %13 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2891
  %pdev6 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %13, i32 0, i32 1, !dbg !2892
  store %struct.platform_device* %12, %struct.platform_device** %pdev6, align 8, !dbg !2893
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !2894
  %15 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2895
  %adev7 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %15, i32 0, i32 0, !dbg !2896
  store %struct.acpi_device* %14, %struct.acpi_device** %adev7, align 8, !dbg !2897
  %16 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2898
  %call8 = call i32 @int3400_thermal_get_uuids(%struct.int3400_thermal_priv* %16) #8, !dbg !2899
  store i32 %call8, i32* %result, align 4, !dbg !2900
  %17 = load i32, i32* %result, align 4, !dbg !2901
  %tobool9 = icmp ne i32 %17, 0, !dbg !2901
  br i1 %tobool9, label %land.lhs.true, label %if.end11, !dbg !2903

land.lhs.true:                                    ; preds = %if.end5
  %18 = load i32, i32* %result, align 4, !dbg !2904
  %cmp = icmp ne i32 %18, -19, !dbg !2905
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !2906

if.then10:                                        ; preds = %land.lhs.true
  br label %free_priv, !dbg !2907

if.end11:                                         ; preds = %land.lhs.true, %if.end5
  %19 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2908
  %current_uuid_index = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %19, i32 0, i32 9, !dbg !2909
  store i32 -1, i32* %current_uuid_index, align 8, !dbg !2910
  %20 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2911
  %adev12 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %20, i32 0, i32 0, !dbg !2912
  %21 = load %struct.acpi_device*, %struct.acpi_device** %adev12, align 8, !dbg !2912
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1, !dbg !2913
  %22 = load i8*, i8** %handle, align 8, !dbg !2913
  %23 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2914
  %art_count = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %23, i32 0, i32 3, !dbg !2915
  %24 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2916
  %arts = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %24, i32 0, i32 4, !dbg !2917
  %call13 = call i32 @acpi_parse_art(i8* %22, i32* %art_count, %struct.art** %arts, i1 zeroext true) #8, !dbg !2918
  store i32 %call13, i32* %result, align 4, !dbg !2919
  %25 = load i32, i32* %result, align 4, !dbg !2920
  %tobool14 = icmp ne i32 %25, 0, !dbg !2920
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2922

if.then15:                                        ; preds = %if.end11
  br label %if.end16, !dbg !2923

if.end16:                                         ; preds = %if.then15, %if.end11
  %26 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2924
  %adev17 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %26, i32 0, i32 0, !dbg !2925
  %27 = load %struct.acpi_device*, %struct.acpi_device** %adev17, align 8, !dbg !2925
  %handle18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 1, !dbg !2926
  %28 = load i8*, i8** %handle18, align 8, !dbg !2926
  %29 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2927
  %trt_count = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %29, i32 0, i32 5, !dbg !2928
  %30 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2929
  %trts = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %30, i32 0, i32 6, !dbg !2930
  %call19 = call i32 @acpi_parse_trt(i8* %28, i32* %trt_count, %struct.trt** %trts, i1 zeroext true) #8, !dbg !2931
  store i32 %call19, i32* %result, align 4, !dbg !2932
  %31 = load i32, i32* %result, align 4, !dbg !2933
  %tobool20 = icmp ne i32 %31, 0, !dbg !2933
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !2935

if.then21:                                        ; preds = %if.end16
  br label %if.end22, !dbg !2936

if.end22:                                         ; preds = %if.then21, %if.end16
  %32 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2937
  %33 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2938
  %34 = bitcast %struct.int3400_thermal_priv* %33 to i8*, !dbg !2938
  call void @platform_set_drvdata(%struct.platform_device* %32, i8* %34) #8, !dbg !2939
  %35 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2940
  call void @int3400_setup_gddv(%struct.int3400_thermal_priv* %35) #8, !dbg !2941
  %36 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2942
  %call23 = call i32 @evaluate_odvp(%struct.int3400_thermal_priv* %36) #8, !dbg !2943
  %37 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2944
  %38 = bitcast %struct.int3400_thermal_priv* %37 to i8*, !dbg !2944
  %call24 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i8* %38, %struct.thermal_zone_device_ops* @int3400_thermal_ops, %struct.thermal_zone_params* @int3400_thermal_params, i32 0, i32 0) #8, !dbg !2945
  %39 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2946
  %thermal = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %39, i32 0, i32 2, !dbg !2947
  store %struct.thermal_zone_device* %call24, %struct.thermal_zone_device** %thermal, align 8, !dbg !2948
  %40 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2949
  %thermal25 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %40, i32 0, i32 2, !dbg !2951
  %41 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal25, align 8, !dbg !2951
  %42 = bitcast %struct.thermal_zone_device* %41 to i8*, !dbg !2949
  %call26 = call zeroext i1 @IS_ERR(i8* %42) #8, !dbg !2952
  br i1 %call26, label %if.then27, label %if.end30, !dbg !2953

if.then27:                                        ; preds = %if.end22
  %43 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2954
  %thermal28 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %43, i32 0, i32 2, !dbg !2956
  %44 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal28, align 8, !dbg !2956
  %45 = bitcast %struct.thermal_zone_device* %44 to i8*, !dbg !2954
  %call29 = call i64 @PTR_ERR(i8* %45) #8, !dbg !2957
  %conv = trunc i64 %call29 to i32, !dbg !2957
  store i32 %conv, i32* %result, align 4, !dbg !2958
  br label %free_art_trt, !dbg !2959

if.end30:                                         ; preds = %if.end22
  %46 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2960
  %adev31 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %46, i32 0, i32 0, !dbg !2961
  %47 = load %struct.acpi_device*, %struct.acpi_device** %adev31, align 8, !dbg !2961
  %handle32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 1, !dbg !2962
  %48 = load i8*, i8** %handle32, align 8, !dbg !2962
  %call33 = call i32 @acpi_thermal_rel_misc_device_add(i8* %48) #8, !dbg !2963
  %49 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2964
  %rel_misc_dev_res = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %49, i32 0, i32 8, !dbg !2965
  store i32 %call33, i32* %rel_misc_dev_res, align 4, !dbg !2966
  %50 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2967
  %dev34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 3, !dbg !2968
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev34, i32 0, i32 0, !dbg !2969
  %call35 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* @uuid_attribute_group) #8, !dbg !2970
  store i32 %call35, i32* %result, align 4, !dbg !2971
  %51 = load i32, i32* %result, align 4, !dbg !2972
  %tobool36 = icmp ne i32 %51, 0, !dbg !2972
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !2974

if.then37:                                        ; preds = %if.end30
  br label %free_rel_misc, !dbg !2975

if.end38:                                         ; preds = %if.end30
  %52 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2976
  %data_vault = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %52, i32 0, i32 10, !dbg !2978
  %53 = load i8*, i8** %data_vault, align 8, !dbg !2978
  %tobool39 = icmp ne i8* %53, null, !dbg !2976
  br i1 %tobool39, label %if.then40, label %if.end47, !dbg !2979

if.then40:                                        ; preds = %if.end38
  %54 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2980
  %dev41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 3, !dbg !2982
  %kobj42 = getelementptr inbounds %struct.device, %struct.device* %dev41, i32 0, i32 0, !dbg !2983
  %call43 = call i32 @sysfs_create_group(%struct.kobject* %kobj42, %struct.attribute_group* @data_attribute_group) #8, !dbg !2984
  store i32 %call43, i32* %result, align 4, !dbg !2985
  %55 = load i32, i32* %result, align 4, !dbg !2986
  %tobool44 = icmp ne i32 %55, 0, !dbg !2986
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !2988

if.then45:                                        ; preds = %if.then40
  br label %free_uuid, !dbg !2989

if.end46:                                         ; preds = %if.then40
  br label %if.end47, !dbg !2990

if.end47:                                         ; preds = %if.end46, %if.end38
  %56 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2991
  %adev48 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %56, i32 0, i32 0, !dbg !2992
  %57 = load %struct.acpi_device*, %struct.acpi_device** %adev48, align 8, !dbg !2992
  %handle49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 1, !dbg !2993
  %58 = load i8*, i8** %handle49, align 8, !dbg !2993
  %59 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !2994
  %60 = bitcast %struct.int3400_thermal_priv* %59 to i8*, !dbg !2995
  %call50 = call i32 @acpi_install_notify_handler(i8* %58, i32 2, void (i8*, i32, i8*)* @int3400_notify, i8* %60) #8, !dbg !2996
  store i32 %call50, i32* %result, align 4, !dbg !2997
  %61 = load i32, i32* %result, align 4, !dbg !2998
  %tobool51 = icmp ne i32 %61, 0, !dbg !2998
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !3000

if.then52:                                        ; preds = %if.end47
  br label %free_sysfs, !dbg !3001

if.end53:                                         ; preds = %if.end47
  store i32 0, i32* %retval, align 4, !dbg !3002
  br label %return, !dbg !3002

free_sysfs:                                       ; preds = %if.then52
  call void @llvm.dbg.label(metadata !3003), !dbg !3004
  %62 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3005
  call void @cleanup_odvp(%struct.int3400_thermal_priv* %62) #8, !dbg !3006
  %63 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3007
  %data_vault54 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %63, i32 0, i32 10, !dbg !3009
  %64 = load i8*, i8** %data_vault54, align 8, !dbg !3009
  %tobool55 = icmp ne i8* %64, null, !dbg !3007
  br i1 %tobool55, label %if.then56, label %if.end60, !dbg !3010

if.then56:                                        ; preds = %free_sysfs
  %65 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3011
  %dev57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 3, !dbg !3013
  %kobj58 = getelementptr inbounds %struct.device, %struct.device* %dev57, i32 0, i32 0, !dbg !3014
  call void @sysfs_remove_group(%struct.kobject* %kobj58, %struct.attribute_group* @data_attribute_group) #8, !dbg !3015
  %66 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3016
  %data_vault59 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %66, i32 0, i32 10, !dbg !3017
  %67 = load i8*, i8** %data_vault59, align 8, !dbg !3017
  call void @kfree(i8* %67) #8, !dbg !3018
  br label %if.end60, !dbg !3019

if.end60:                                         ; preds = %if.then56, %free_sysfs
  br label %free_uuid, !dbg !3009

free_uuid:                                        ; preds = %if.end60, %if.then45
  call void @llvm.dbg.label(metadata !3020), !dbg !3021
  %68 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3022
  %dev61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 3, !dbg !3023
  %kobj62 = getelementptr inbounds %struct.device, %struct.device* %dev61, i32 0, i32 0, !dbg !3024
  call void @sysfs_remove_group(%struct.kobject* %kobj62, %struct.attribute_group* @uuid_attribute_group) #8, !dbg !3025
  br label %free_rel_misc, !dbg !3025

free_rel_misc:                                    ; preds = %free_uuid, %if.then37
  call void @llvm.dbg.label(metadata !3026), !dbg !3027
  %69 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3028
  %rel_misc_dev_res63 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %69, i32 0, i32 8, !dbg !3030
  %70 = load i32, i32* %rel_misc_dev_res63, align 4, !dbg !3030
  %tobool64 = icmp ne i32 %70, 0, !dbg !3028
  br i1 %tobool64, label %if.end69, label %if.then65, !dbg !3031

if.then65:                                        ; preds = %free_rel_misc
  %71 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3032
  %adev66 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %71, i32 0, i32 0, !dbg !3033
  %72 = load %struct.acpi_device*, %struct.acpi_device** %adev66, align 8, !dbg !3033
  %handle67 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %72, i32 0, i32 1, !dbg !3034
  %73 = load i8*, i8** %handle67, align 8, !dbg !3034
  %call68 = call i32 @acpi_thermal_rel_misc_device_remove(i8* %73) #8, !dbg !3035
  br label %if.end69, !dbg !3035

if.end69:                                         ; preds = %if.then65, %free_rel_misc
  %74 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3036
  %thermal70 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %74, i32 0, i32 2, !dbg !3037
  %75 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal70, align 8, !dbg !3037
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %75) #8, !dbg !3038
  br label %free_art_trt, !dbg !3038

free_art_trt:                                     ; preds = %if.end69, %if.then27
  call void @llvm.dbg.label(metadata !3039), !dbg !3040
  %76 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3041
  %trts71 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %76, i32 0, i32 6, !dbg !3042
  %77 = load %struct.trt*, %struct.trt** %trts71, align 8, !dbg !3042
  %78 = bitcast %struct.trt* %77 to i8*, !dbg !3041
  call void @kfree(i8* %78) #8, !dbg !3043
  %79 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3044
  %arts72 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %79, i32 0, i32 4, !dbg !3045
  %80 = load %struct.art*, %struct.art** %arts72, align 8, !dbg !3045
  %81 = bitcast %struct.art* %80 to i8*, !dbg !3044
  call void @kfree(i8* %81) #8, !dbg !3046
  br label %free_priv, !dbg !3046

free_priv:                                        ; preds = %free_art_trt, %if.then10
  call void @llvm.dbg.label(metadata !3047), !dbg !3048
  %82 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3049
  %83 = bitcast %struct.int3400_thermal_priv* %82 to i8*, !dbg !3049
  call void @kfree(i8* %83) #8, !dbg !3050
  %84 = load i32, i32* %result, align 4, !dbg !3051
  store i32 %84, i32* %retval, align 4, !dbg !3052
  br label %return, !dbg !3052

return:                                           ; preds = %free_priv, %if.end53, %if.then4, %if.then
  %85 = load i32, i32* %retval, align 4, !dbg !3053
  ret i32 %85, !dbg !3053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3400_thermal_remove(%struct.platform_device* %pdev) #2 !dbg !3054 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv = alloca %struct.int3400_thermal_priv*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv, metadata !3057, metadata !DIExpression()), !dbg !3058
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3059
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #8, !dbg !3060
  %1 = bitcast i8* %call to %struct.int3400_thermal_priv*, !dbg !3060
  store %struct.int3400_thermal_priv* %1, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3058
  %2 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3061
  %adev = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %2, i32 0, i32 0, !dbg !3062
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3062
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 1, !dbg !3063
  %4 = load i8*, i8** %handle, align 8, !dbg !3063
  %call1 = call i32 @acpi_remove_notify_handler(i8* %4, i32 2, void (i8*, i32, i8*)* @int3400_notify) #8, !dbg !3064
  %5 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3065
  call void @cleanup_odvp(%struct.int3400_thermal_priv* %5) #8, !dbg !3066
  %6 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3067
  %rel_misc_dev_res = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %6, i32 0, i32 8, !dbg !3069
  %7 = load i32, i32* %rel_misc_dev_res, align 4, !dbg !3069
  %tobool = icmp ne i32 %7, 0, !dbg !3067
  br i1 %tobool, label %if.end, label %if.then, !dbg !3070

if.then:                                          ; preds = %entry
  %8 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3071
  %adev2 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %8, i32 0, i32 0, !dbg !3072
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev2, align 8, !dbg !3072
  %handle3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 1, !dbg !3073
  %10 = load i8*, i8** %handle3, align 8, !dbg !3073
  %call4 = call i32 @acpi_thermal_rel_misc_device_remove(i8* %10) #8, !dbg !3074
  br label %if.end, !dbg !3074

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3075
  %data_vault = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %11, i32 0, i32 10, !dbg !3077
  %12 = load i8*, i8** %data_vault, align 8, !dbg !3077
  %tobool5 = icmp ne i8* %12, null, !dbg !3075
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3078

if.then6:                                         ; preds = %if.end
  %13 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3079
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 3, !dbg !3080
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !3081
  call void @sysfs_remove_group(%struct.kobject* %kobj, %struct.attribute_group* @data_attribute_group) #8, !dbg !3082
  br label %if.end7, !dbg !3082

if.end7:                                          ; preds = %if.then6, %if.end
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3083
  %dev8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 3, !dbg !3084
  %kobj9 = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 0, !dbg !3085
  call void @sysfs_remove_group(%struct.kobject* %kobj9, %struct.attribute_group* @uuid_attribute_group) #8, !dbg !3086
  %15 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3087
  %thermal = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %15, i32 0, i32 2, !dbg !3088
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal, align 8, !dbg !3088
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %16) #8, !dbg !3089
  %17 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3090
  %data_vault10 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %17, i32 0, i32 10, !dbg !3091
  %18 = load i8*, i8** %data_vault10, align 8, !dbg !3091
  call void @kfree(i8* %18) #8, !dbg !3092
  %19 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3093
  %trts = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %19, i32 0, i32 6, !dbg !3094
  %20 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !3094
  %21 = bitcast %struct.trt* %20 to i8*, !dbg !3093
  call void @kfree(i8* %21) #8, !dbg !3095
  %22 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3096
  %arts = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %22, i32 0, i32 4, !dbg !3097
  %23 = load %struct.art*, %struct.art** %arts, align 8, !dbg !3097
  %24 = bitcast %struct.art* %23 to i8*, !dbg !3096
  call void @kfree(i8* %24) #8, !dbg !3098
  %25 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3099
  %26 = bitcast %struct.int3400_thermal_priv* %25 to i8*, !dbg !3099
  call void @kfree(i8* %26) #8, !dbg !3100
  ret i32 0, !dbg !3101
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !3102 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3105, metadata !DIExpression()), !dbg !3109
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3115, metadata !DIExpression()), !dbg !3116
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3117, metadata !DIExpression()), !dbg !3118
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3119, metadata !DIExpression()), !dbg !3120
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3121, metadata !DIExpression()), !dbg !3125
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3127, metadata !DIExpression()), !dbg !3131
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3133, metadata !DIExpression()), !dbg !3137
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3142, metadata !DIExpression()), !dbg !3143
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3144, metadata !DIExpression()), !dbg !3145
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3146, metadata !DIExpression()), !dbg !3147
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3148, metadata !DIExpression()), !dbg !3149
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3150, metadata !DIExpression()), !dbg !3151
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3152, metadata !DIExpression()), !dbg !3153
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3154, metadata !DIExpression()), !dbg !3155
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3156, metadata !DIExpression()), !dbg !3157
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3158, metadata !DIExpression()), !dbg !3159
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3160, metadata !DIExpression()), !dbg !3161
  %0 = load i64, i64* %size.addr, align 8, !dbg !3162
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3163
  %or = or i32 %1, 256, !dbg !3164
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3165
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !3166
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3167

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3168
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3169
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3170

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3171
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3172
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3173
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !3174
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3151
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3175
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3176
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3177
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3178
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3179
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3180
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !3181
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3181
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3181
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3181
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3181
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3182
  br label %kmalloc.exit, !dbg !3182

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3183
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3184
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3184
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3186

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3187
  br label %kmalloc_index.exit.i, !dbg !3187

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3188
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3190
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3191

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3192
  br label %kmalloc_index.exit.i, !dbg !3192

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3193
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3195
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3196

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3197
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3198
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3199

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3200
  br label %kmalloc_index.exit.i, !dbg !3200

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3201
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3203
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3204

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3205
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3206
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3207

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3208
  br label %kmalloc_index.exit.i, !dbg !3208

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3209
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3211
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3212

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3213
  br label %kmalloc_index.exit.i, !dbg !3213

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3214
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3216
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3217

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3218
  br label %kmalloc_index.exit.i, !dbg !3218

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3219
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3221
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3222

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3223
  br label %kmalloc_index.exit.i, !dbg !3223

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3224
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3226
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3227

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3228
  br label %kmalloc_index.exit.i, !dbg !3228

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3229
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3231
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3232

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3233
  br label %kmalloc_index.exit.i, !dbg !3233

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3234
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3236
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3237

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3238
  br label %kmalloc_index.exit.i, !dbg !3238

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3239
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3241
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3242

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3243
  br label %kmalloc_index.exit.i, !dbg !3243

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3244
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3246
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3247

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3248
  br label %kmalloc_index.exit.i, !dbg !3248

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3249
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3251
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3252

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3253
  br label %kmalloc_index.exit.i, !dbg !3253

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3254
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3256
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3257

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3258
  br label %kmalloc_index.exit.i, !dbg !3258

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3259
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3261
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3262

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3263
  br label %kmalloc_index.exit.i, !dbg !3263

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3264
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3266
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3267

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3268
  br label %kmalloc_index.exit.i, !dbg !3268

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3269
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3271
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3272

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3273
  br label %kmalloc_index.exit.i, !dbg !3273

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3274
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3276
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3277

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3278
  br label %kmalloc_index.exit.i, !dbg !3278

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3279
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3281
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3282

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3283
  br label %kmalloc_index.exit.i, !dbg !3283

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3284
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3286
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3287

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3288
  br label %kmalloc_index.exit.i, !dbg !3288

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3289
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3291
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3292

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3293
  br label %kmalloc_index.exit.i, !dbg !3293

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3294
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3296
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3297

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3298
  br label %kmalloc_index.exit.i, !dbg !3298

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3299
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3301
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3302

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3303
  br label %kmalloc_index.exit.i, !dbg !3303

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3304
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3306
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3307

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3308
  br label %kmalloc_index.exit.i, !dbg !3308

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3309
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3311
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3312

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3313
  br label %kmalloc_index.exit.i, !dbg !3313

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3314
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3316
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3317

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3318
  br label %kmalloc_index.exit.i, !dbg !3318

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3319
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3321
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3322

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3323
  br label %kmalloc_index.exit.i, !dbg !3323

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3324
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3326
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3327

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3328
  br label %kmalloc_index.exit.i, !dbg !3328

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3329, !srcloc !3332
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 161) #9, !dbg !3333, !srcloc !3336
  unreachable, !dbg !3337

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3338
  store i32 %45, i32* %index.i, align 4, !dbg !3339
  %46 = load i32, i32* %index.i, align 4, !dbg !3340
  %tobool.i = icmp ne i32 %46, 0, !dbg !3340
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3342

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3343
  br label %kmalloc.exit, !dbg !3343

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3344
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3345
  %and.i.i = and i32 %48, 17, !dbg !3345
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3345
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3345
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3345
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3345
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3347

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3348
  br label %kmalloc_type.exit.i, !dbg !3348

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3349
  %and2.i.i = and i32 %49, 1, !dbg !3350
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3349
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3349
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3349
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3351
  br label %kmalloc_type.exit.i, !dbg !3351

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3352
  %idxprom.i = zext i32 %51 to i64, !dbg !3353
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3353
  %52 = load i32, i32* %index.i, align 4, !dbg !3354
  %idxprom6.i = zext i32 %52 to i64, !dbg !3353
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3353
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3353
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3355
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3356
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3357
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3358
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !3359
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3359
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3359
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3359
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3359
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3120
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3360
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3361
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3362
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3363
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !3364
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3365
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3366
  store i8* %62, i8** %retval.i, align 8, !dbg !3367
  br label %kmalloc.exit, !dbg !3367

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3368
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3369
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !3370
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3370
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3370
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3370
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3370
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3371
  br label %kmalloc.exit, !dbg !3371

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3372
  ret i8* %65, !dbg !3373
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3400_thermal_get_uuids(%struct.int3400_thermal_priv* %priv) #2 !dbg !3374 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.int3400_thermal_priv*, align 8
  %buf = alloca %struct.acpi_buffer, align 8
  %obja = alloca %union.acpi_object*, align 8
  %objb = alloca %union.acpi_object*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %guid = alloca %struct.guid_t, align 1
  store %struct.int3400_thermal_priv* %priv, %struct.int3400_thermal_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv.addr, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buf, metadata !3379, metadata !DIExpression()), !dbg !3385
  %0 = bitcast %struct.acpi_buffer* %buf to i8*, !dbg !3385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.int3400_thermal_get_uuids.buf to i8*), i64 16, i1 false), !dbg !3385
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obja, metadata !3386, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.declare(metadata %union.acpi_object** %objb, metadata !3388, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3394, metadata !DIExpression()), !dbg !3395
  store i32 0, i32* %result, align 4, !dbg !3395
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3396, metadata !DIExpression()), !dbg !3398
  %1 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3399
  %adev = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %1, i32 0, i32 0, !dbg !3400
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3400
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !3401
  %3 = load i8*, i8** %handle, align 8, !dbg !3401
  %call = call i32 @acpi_evaluate_object(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buf) #8, !dbg !3402
  store i32 %call, i32* %status, align 4, !dbg !3403
  %4 = load i32, i32* %status, align 4, !dbg !3404
  %tobool = icmp ne i32 %4, 0, !dbg !3404
  br i1 %tobool, label %if.then, label %if.end, !dbg !3406

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3407
  br label %return, !dbg !3407

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !3408
  %5 = load i8*, i8** %pointer, align 8, !dbg !3408
  %6 = bitcast i8* %5 to %union.acpi_object*, !dbg !3409
  store %union.acpi_object* %6, %union.acpi_object** %obja, align 8, !dbg !3410
  %7 = load %union.acpi_object*, %union.acpi_object** %obja, align 8, !dbg !3411
  %type = bitcast %union.acpi_object* %7 to i32*, !dbg !3413
  %8 = load i32, i32* %type, align 8, !dbg !3413
  %cmp = icmp ne i32 %8, 4, !dbg !3414
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3415

if.then1:                                         ; preds = %if.end
  store i32 -22, i32* %result, align 4, !dbg !3416
  br label %end, !dbg !3418

if.end2:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !3419
  br label %for.cond, !dbg !3421

for.cond:                                         ; preds = %for.inc24, %if.end2
  %9 = load i32, i32* %i, align 4, !dbg !3422
  %10 = load %union.acpi_object*, %union.acpi_object** %obja, align 8, !dbg !3424
  %package = bitcast %union.acpi_object* %10 to %struct.anon.41*, !dbg !3425
  %count = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package, i32 0, i32 1, !dbg !3426
  %11 = load i32, i32* %count, align 4, !dbg !3426
  %cmp3 = icmp ult i32 %9, %11, !dbg !3427
  br i1 %cmp3, label %for.body, label %for.end26, !dbg !3428

for.body:                                         ; preds = %for.cond
  %12 = load %union.acpi_object*, %union.acpi_object** %obja, align 8, !dbg !3429
  %package4 = bitcast %union.acpi_object* %12 to %struct.anon.41*, !dbg !3431
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package4, i32 0, i32 2, !dbg !3432
  %13 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3432
  %14 = load i32, i32* %i, align 4, !dbg !3433
  %idxprom = sext i32 %14 to i64, !dbg !3429
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %13, i64 %idxprom, !dbg !3429
  store %union.acpi_object* %arrayidx, %union.acpi_object** %objb, align 8, !dbg !3434
  %15 = load %union.acpi_object*, %union.acpi_object** %objb, align 8, !dbg !3435
  %type5 = bitcast %union.acpi_object* %15 to i32*, !dbg !3437
  %16 = load i32, i32* %type5, align 8, !dbg !3437
  %cmp6 = icmp ne i32 %16, 3, !dbg !3438
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3439

if.then7:                                         ; preds = %for.body
  store i32 -22, i32* %result, align 4, !dbg !3440
  br label %end, !dbg !3442

if.end8:                                          ; preds = %for.body
  %17 = load %union.acpi_object*, %union.acpi_object** %objb, align 8, !dbg !3443
  %buffer = bitcast %union.acpi_object* %17 to %struct.anon.40*, !dbg !3445
  %length = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer, i32 0, i32 1, !dbg !3446
  %18 = load i32, i32* %length, align 4, !dbg !3446
  %cmp9 = icmp ne i32 %18, 16, !dbg !3447
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3448

if.then10:                                        ; preds = %if.end8
  store i32 -22, i32* %result, align 4, !dbg !3449
  br label %end, !dbg !3451

if.end11:                                         ; preds = %if.end8
  store i32 0, i32* %j, align 4, !dbg !3452
  br label %for.cond12, !dbg !3454

for.cond12:                                       ; preds = %for.inc, %if.end11
  %19 = load i32, i32* %j, align 4, !dbg !3455
  %cmp13 = icmp slt i32 %19, 10, !dbg !3457
  br i1 %cmp13, label %for.body14, label %for.end, !dbg !3458

for.body14:                                       ; preds = %for.cond12
  call void @llvm.dbg.declare(metadata %struct.guid_t* %guid, metadata !3459, metadata !DIExpression()), !dbg !3461
  %20 = load i32, i32* %j, align 4, !dbg !3462
  %idxprom15 = sext i32 %20 to i64, !dbg !3463
  %arrayidx16 = getelementptr [10 x i8*], [10 x i8*]* @int3400_thermal_uuids, i64 0, i64 %idxprom15, !dbg !3463
  %21 = load i8*, i8** %arrayidx16, align 8, !dbg !3463
  %call17 = call i32 @guid_parse(i8* %21, %struct.guid_t* %guid) #8, !dbg !3464
  %22 = load %union.acpi_object*, %union.acpi_object** %objb, align 8, !dbg !3465
  %buffer18 = bitcast %union.acpi_object* %22 to %struct.anon.40*, !dbg !3467
  %pointer19 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer18, i32 0, i32 2, !dbg !3468
  %23 = load i8*, i8** %pointer19, align 8, !dbg !3468
  %24 = bitcast i8* %23 to %struct.guid_t*, !dbg !3469
  %call20 = call zeroext i1 @guid_equal(%struct.guid_t* %24, %struct.guid_t* %guid) #8, !dbg !3470
  br i1 %call20, label %if.then21, label %if.end23, !dbg !3471

if.then21:                                        ; preds = %for.body14
  %25 = load i32, i32* %j, align 4, !dbg !3472
  %shl = shl i32 1, %25, !dbg !3474
  %26 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3475
  %uuid_bitmap = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %26, i32 0, i32 7, !dbg !3476
  %27 = load i8, i8* %uuid_bitmap, align 8, !dbg !3477
  %conv = zext i8 %27 to i32, !dbg !3477
  %or = or i32 %conv, %shl, !dbg !3477
  %conv22 = trunc i32 %or to i8, !dbg !3477
  store i8 %conv22, i8* %uuid_bitmap, align 8, !dbg !3477
  br label %for.end, !dbg !3478

if.end23:                                         ; preds = %for.body14
  br label %for.inc, !dbg !3479

for.inc:                                          ; preds = %if.end23
  %28 = load i32, i32* %j, align 4, !dbg !3480
  %inc = add i32 %28, 1, !dbg !3480
  store i32 %inc, i32* %j, align 4, !dbg !3480
  br label %for.cond12, !dbg !3481, !llvm.loop !3482

for.end:                                          ; preds = %if.then21, %for.cond12
  br label %for.inc24, !dbg !3484

for.inc24:                                        ; preds = %for.end
  %29 = load i32, i32* %i, align 4, !dbg !3485
  %inc25 = add i32 %29, 1, !dbg !3485
  store i32 %inc25, i32* %i, align 4, !dbg !3485
  br label %for.cond, !dbg !3486, !llvm.loop !3487

for.end26:                                        ; preds = %for.cond
  br label %end, !dbg !3488

end:                                              ; preds = %for.end26, %if.then10, %if.then7, %if.then1
  call void @llvm.dbg.label(metadata !3489), !dbg !3490
  %pointer27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !3491
  %30 = load i8*, i8** %pointer27, align 8, !dbg !3491
  call void @kfree(i8* %30) #8, !dbg !3492
  %31 = load i32, i32* %result, align 4, !dbg !3493
  store i32 %31, i32* %retval, align 4, !dbg !3494
  br label %return, !dbg !3494

return:                                           ; preds = %end, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !3495
  ret i32 %32, !dbg !3495
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_parse_art(i8*, i32*, %struct.art**, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_parse_trt(i8*, i32*, %struct.trt**, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !3496 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3501, metadata !DIExpression()), !dbg !3502
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3503
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3504
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3505
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !3506
  ret void, !dbg !3507
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @int3400_setup_gddv(%struct.int3400_thermal_priv* %priv) #2 !dbg !3508 {
entry:
  %priv.addr = alloca %struct.int3400_thermal_priv*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj = alloca %union.acpi_object*, align 8
  %status = alloca i32, align 4
  store %struct.int3400_thermal_priv* %priv, %struct.int3400_thermal_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv.addr, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !3513, metadata !DIExpression()), !dbg !3514
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !3514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.int3400_setup_gddv.buffer to i8*), i64 16, i1 false), !dbg !3514
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !3515, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3517, metadata !DIExpression()), !dbg !3518
  %1 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3519
  %adev = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %1, i32 0, i32 0, !dbg !3520
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3520
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !3521
  %3 = load i8*, i8** %handle, align 8, !dbg !3521
  %call = call i32 @acpi_evaluate_object(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #8, !dbg !3522
  store i32 %call, i32* %status, align 4, !dbg !3523
  %4 = load i32, i32* %status, align 4, !dbg !3524
  %tobool = icmp ne i32 %4, 0, !dbg !3524
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3526

lor.lhs.false:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !3527
  %5 = load i64, i64* %length, align 8, !dbg !3527
  %tobool1 = icmp ne i64 %5, 0, !dbg !3528
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3529

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !3530

if.end:                                           ; preds = %lor.lhs.false
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3531
  %6 = load i8*, i8** %pointer, align 8, !dbg !3531
  %7 = bitcast i8* %6 to %union.acpi_object*, !dbg !3532
  store %union.acpi_object* %7, %union.acpi_object** %obj, align 8, !dbg !3533
  %8 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3534
  %type = bitcast %union.acpi_object* %8 to i32*, !dbg !3536
  %9 = load i32, i32* %type, align 8, !dbg !3536
  %cmp = icmp ne i32 %9, 4, !dbg !3537
  br i1 %cmp, label %if.then8, label %lor.lhs.false2, !dbg !3538

lor.lhs.false2:                                   ; preds = %if.end
  %10 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3539
  %package = bitcast %union.acpi_object* %10 to %struct.anon.41*, !dbg !3540
  %count = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package, i32 0, i32 1, !dbg !3541
  %11 = load i32, i32* %count, align 4, !dbg !3541
  %cmp3 = icmp ne i32 %11, 1, !dbg !3542
  br i1 %cmp3, label %if.then8, label %lor.lhs.false4, !dbg !3543

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %12 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3544
  %package5 = bitcast %union.acpi_object* %12 to %struct.anon.41*, !dbg !3545
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package5, i32 0, i32 2, !dbg !3546
  %13 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3546
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %13, i64 0, !dbg !3544
  %type6 = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !3547
  %14 = load i32, i32* %type6, align 8, !dbg !3547
  %cmp7 = icmp ne i32 %14, 3, !dbg !3548
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !3549

if.then8:                                         ; preds = %lor.lhs.false4, %lor.lhs.false2, %if.end
  %pointer9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3550
  %15 = load i8*, i8** %pointer9, align 8, !dbg !3550
  call void @kfree(i8* %15) #8, !dbg !3552
  br label %return, !dbg !3553

if.end10:                                         ; preds = %lor.lhs.false4
  %16 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3554
  %package11 = bitcast %union.acpi_object* %16 to %struct.anon.41*, !dbg !3555
  %elements12 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package11, i32 0, i32 2, !dbg !3556
  %17 = load %union.acpi_object*, %union.acpi_object** %elements12, align 8, !dbg !3556
  %arrayidx13 = getelementptr %union.acpi_object, %union.acpi_object* %17, i64 0, !dbg !3554
  %buffer14 = bitcast %union.acpi_object* %arrayidx13 to %struct.anon.40*, !dbg !3557
  %pointer15 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer14, i32 0, i32 2, !dbg !3558
  %18 = load i8*, i8** %pointer15, align 8, !dbg !3558
  %19 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3559
  %package16 = bitcast %union.acpi_object* %19 to %struct.anon.41*, !dbg !3560
  %elements17 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package16, i32 0, i32 2, !dbg !3561
  %20 = load %union.acpi_object*, %union.acpi_object** %elements17, align 8, !dbg !3561
  %arrayidx18 = getelementptr %union.acpi_object, %union.acpi_object* %20, i64 0, !dbg !3559
  %buffer19 = bitcast %union.acpi_object* %arrayidx18 to %struct.anon.40*, !dbg !3562
  %length20 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer19, i32 0, i32 1, !dbg !3563
  %21 = load i32, i32* %length20, align 4, !dbg !3563
  %conv = zext i32 %21 to i64, !dbg !3559
  %call21 = call i8* @kmemdup(i8* %18, i64 %conv, i32 3264) #8, !dbg !3564
  %22 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3565
  %data_vault = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %22, i32 0, i32 10, !dbg !3566
  store i8* %call21, i8** %data_vault, align 8, !dbg !3567
  %23 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3568
  %data_vault22 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %23, i32 0, i32 10, !dbg !3569
  %24 = load i8*, i8** %data_vault22, align 8, !dbg !3569
  store i8* %24, i8** getelementptr inbounds (%struct.bin_attribute, %struct.bin_attribute* @bin_attr_data_vault, i32 0, i32 2), align 8, !dbg !3570
  %25 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3571
  %package23 = bitcast %union.acpi_object* %25 to %struct.anon.41*, !dbg !3572
  %elements24 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package23, i32 0, i32 2, !dbg !3573
  %26 = load %union.acpi_object*, %union.acpi_object** %elements24, align 8, !dbg !3573
  %arrayidx25 = getelementptr %union.acpi_object, %union.acpi_object* %26, i64 0, !dbg !3571
  %buffer26 = bitcast %union.acpi_object* %arrayidx25 to %struct.anon.40*, !dbg !3574
  %length27 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer26, i32 0, i32 1, !dbg !3575
  %27 = load i32, i32* %length27, align 4, !dbg !3575
  %conv28 = zext i32 %27 to i64, !dbg !3571
  store i64 %conv28, i64* getelementptr inbounds (%struct.bin_attribute, %struct.bin_attribute* @bin_attr_data_vault, i32 0, i32 1), align 8, !dbg !3576
  %pointer29 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3577
  %28 = load i8*, i8** %pointer29, align 8, !dbg !3577
  call void @kfree(i8* %28) #8, !dbg !3578
  br label %return, !dbg !3579

return:                                           ; preds = %if.end10, %if.then8, %if.then
  ret void, !dbg !3579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @evaluate_odvp(%struct.int3400_thermal_priv* %priv) #2 !dbg !3580 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.int3400_thermal_priv*, align 8
  %odvp = alloca %struct.acpi_buffer, align 8
  %obj = alloca %union.acpi_object*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %odvp28 = alloca %struct.odvp_attr*, align 8
  store %struct.int3400_thermal_priv* %priv, %struct.int3400_thermal_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv.addr, metadata !3581, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %odvp, metadata !3583, metadata !DIExpression()), !dbg !3584
  %0 = bitcast %struct.acpi_buffer* %odvp to i8*, !dbg !3584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.evaluate_odvp.odvp to i8*), i64 16, i1 false), !dbg !3584
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !3585, metadata !DIExpression()), !dbg !3586
  store %union.acpi_object* null, %union.acpi_object** %obj, align 8, !dbg !3586
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3589, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3591, metadata !DIExpression()), !dbg !3592
  %1 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3593
  %adev = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %1, i32 0, i32 0, !dbg !3594
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3594
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !3595
  %3 = load i8*, i8** %handle, align 8, !dbg !3595
  %call = call i32 @acpi_evaluate_object(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %odvp) #8, !dbg !3596
  store i32 %call, i32* %status, align 4, !dbg !3597
  %4 = load i32, i32* %status, align 4, !dbg !3598
  %tobool = icmp ne i32 %4, 0, !dbg !3598
  br i1 %tobool, label %if.then, label %if.end, !dbg !3600

if.then:                                          ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !3601
  br label %out_err, !dbg !3603

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %odvp, i32 0, i32 1, !dbg !3604
  %5 = load i8*, i8** %pointer, align 8, !dbg !3604
  %6 = bitcast i8* %5 to %union.acpi_object*, !dbg !3605
  store %union.acpi_object* %6, %union.acpi_object** %obj, align 8, !dbg !3606
  %7 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3607
  %type = bitcast %union.acpi_object* %7 to i32*, !dbg !3609
  %8 = load i32, i32* %type, align 8, !dbg !3609
  %cmp = icmp ne i32 %8, 4, !dbg !3610
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3611

if.then1:                                         ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !3612
  br label %out_err, !dbg !3614

if.end2:                                          ; preds = %if.end
  %9 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3615
  %odvp3 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %9, i32 0, i32 12, !dbg !3617
  %10 = load i32*, i32** %odvp3, align 8, !dbg !3617
  %cmp4 = icmp eq i32* %10, null, !dbg !3618
  br i1 %cmp4, label %if.then5, label %if.end13, !dbg !3619

if.then5:                                         ; preds = %if.end2
  %11 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3620
  %package = bitcast %union.acpi_object* %11 to %struct.anon.41*, !dbg !3622
  %count = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package, i32 0, i32 1, !dbg !3623
  %12 = load i32, i32* %count, align 4, !dbg !3623
  %13 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3624
  %odvp_count = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %13, i32 0, i32 11, !dbg !3625
  store i32 %12, i32* %odvp_count, align 8, !dbg !3626
  %14 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3627
  %odvp_count6 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %14, i32 0, i32 11, !dbg !3628
  %15 = load i32, i32* %odvp_count6, align 8, !dbg !3628
  %conv = sext i32 %15 to i64, !dbg !3627
  %call7 = call i8* @kmalloc_array(i64 %conv, i64 4, i32 3264) #8, !dbg !3629
  %16 = bitcast i8* %call7 to i32*, !dbg !3629
  %17 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3630
  %odvp8 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %17, i32 0, i32 12, !dbg !3631
  store i32* %16, i32** %odvp8, align 8, !dbg !3632
  %18 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3633
  %odvp9 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %18, i32 0, i32 12, !dbg !3635
  %19 = load i32*, i32** %odvp9, align 8, !dbg !3635
  %tobool10 = icmp ne i32* %19, null, !dbg !3633
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3636

if.then11:                                        ; preds = %if.then5
  store i32 -12, i32* %ret, align 4, !dbg !3637
  br label %out_err, !dbg !3639

if.end12:                                         ; preds = %if.then5
  br label %if.end13, !dbg !3640

if.end13:                                         ; preds = %if.end12, %if.end2
  %20 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3641
  %odvp_attrs = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %20, i32 0, i32 13, !dbg !3643
  %21 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attrs, align 8, !dbg !3643
  %cmp14 = icmp eq %struct.odvp_attr* %21, null, !dbg !3644
  br i1 %cmp14, label %if.then16, label %if.end50, !dbg !3645

if.then16:                                        ; preds = %if.end13
  %22 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3646
  %odvp_count17 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %22, i32 0, i32 11, !dbg !3648
  %23 = load i32, i32* %odvp_count17, align 8, !dbg !3648
  %conv18 = sext i32 %23 to i64, !dbg !3646
  %call19 = call i8* @kcalloc(i64 %conv18, i64 48, i32 3264) #8, !dbg !3649
  %24 = bitcast i8* %call19 to %struct.odvp_attr*, !dbg !3649
  %25 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3650
  %odvp_attrs20 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %25, i32 0, i32 13, !dbg !3651
  store %struct.odvp_attr* %24, %struct.odvp_attr** %odvp_attrs20, align 8, !dbg !3652
  %26 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3653
  %odvp_attrs21 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %26, i32 0, i32 13, !dbg !3655
  %27 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attrs21, align 8, !dbg !3655
  %tobool22 = icmp ne %struct.odvp_attr* %27, null, !dbg !3653
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !3656

if.then23:                                        ; preds = %if.then16
  store i32 -12, i32* %ret, align 4, !dbg !3657
  br label %out_err, !dbg !3659

if.end24:                                         ; preds = %if.then16
  store i32 0, i32* %i, align 4, !dbg !3660
  br label %for.cond, !dbg !3662

for.cond:                                         ; preds = %for.inc, %if.end24
  %28 = load i32, i32* %i, align 4, !dbg !3663
  %29 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3665
  %odvp_count25 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %29, i32 0, i32 11, !dbg !3666
  %30 = load i32, i32* %odvp_count25, align 8, !dbg !3666
  %cmp26 = icmp slt i32 %28, %30, !dbg !3667
  br i1 %cmp26, label %for.body, label %for.end, !dbg !3668

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.odvp_attr** %odvp28, metadata !3669, metadata !DIExpression()), !dbg !3671
  %31 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3672
  %odvp_attrs29 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %31, i32 0, i32 13, !dbg !3673
  %32 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attrs29, align 8, !dbg !3673
  %33 = load i32, i32* %i, align 4, !dbg !3674
  %idxprom = sext i32 %33 to i64, !dbg !3672
  %arrayidx = getelementptr %struct.odvp_attr, %struct.odvp_attr* %32, i64 %idxprom, !dbg !3672
  store %struct.odvp_attr* %arrayidx, %struct.odvp_attr** %odvp28, align 8, !dbg !3671
  br label %do.body, !dbg !3675

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !3676

do.end:                                           ; preds = %do.body
  %34 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3678
  %35 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp28, align 8, !dbg !3679
  %priv30 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %35, i32 0, i32 1, !dbg !3680
  store %struct.int3400_thermal_priv* %34, %struct.int3400_thermal_priv** %priv30, align 8, !dbg !3681
  %36 = load i32, i32* %i, align 4, !dbg !3682
  %37 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp28, align 8, !dbg !3683
  %odvp31 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %37, i32 0, i32 0, !dbg !3684
  store i32 %36, i32* %odvp31, align 8, !dbg !3685
  %38 = load i32, i32* %i, align 4, !dbg !3686
  %call32 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %38) #8, !dbg !3687
  %39 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp28, align 8, !dbg !3688
  %attr = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %39, i32 0, i32 2, !dbg !3689
  %attr33 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %attr, i32 0, i32 0, !dbg !3690
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr33, i32 0, i32 0, !dbg !3691
  store i8* %call32, i8** %name, align 8, !dbg !3692
  %40 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp28, align 8, !dbg !3693
  %attr34 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %40, i32 0, i32 2, !dbg !3695
  %attr35 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %attr34, i32 0, i32 0, !dbg !3696
  %name36 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr35, i32 0, i32 0, !dbg !3697
  %41 = load i8*, i8** %name36, align 8, !dbg !3697
  %tobool37 = icmp ne i8* %41, null, !dbg !3693
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !3698

if.then38:                                        ; preds = %do.end
  store i32 -12, i32* %ret, align 4, !dbg !3699
  br label %out_err, !dbg !3701

if.end39:                                         ; preds = %do.end
  %42 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp28, align 8, !dbg !3702
  %attr40 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %42, i32 0, i32 2, !dbg !3703
  %attr41 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %attr40, i32 0, i32 0, !dbg !3704
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr41, i32 0, i32 1, !dbg !3705
  store i16 292, i16* %mode, align 8, !dbg !3706
  %43 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp28, align 8, !dbg !3707
  %attr42 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %43, i32 0, i32 2, !dbg !3708
  %show = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %attr42, i32 0, i32 1, !dbg !3709
  store i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @odvp_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)** %show, align 8, !dbg !3710
  %44 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp28, align 8, !dbg !3711
  %attr43 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %44, i32 0, i32 2, !dbg !3712
  %store = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %attr43, i32 0, i32 2, !dbg !3713
  store i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* null, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)** %store, align 8, !dbg !3714
  %45 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3715
  %pdev = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %45, i32 0, i32 1, !dbg !3716
  %46 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !3716
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 3, !dbg !3717
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !3718
  %47 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp28, align 8, !dbg !3719
  %attr44 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %47, i32 0, i32 2, !dbg !3720
  %attr45 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %attr44, i32 0, i32 0, !dbg !3721
  %call46 = call i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr45) #8, !dbg !3722
  store i32 %call46, i32* %ret, align 4, !dbg !3723
  %48 = load i32, i32* %ret, align 4, !dbg !3724
  %tobool47 = icmp ne i32 %48, 0, !dbg !3724
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !3726

if.then48:                                        ; preds = %if.end39
  br label %out_err, !dbg !3727

if.end49:                                         ; preds = %if.end39
  br label %for.inc, !dbg !3728

for.inc:                                          ; preds = %if.end49
  %49 = load i32, i32* %i, align 4, !dbg !3729
  %inc = add i32 %49, 1, !dbg !3729
  store i32 %inc, i32* %i, align 4, !dbg !3729
  br label %for.cond, !dbg !3730, !llvm.loop !3731

for.end:                                          ; preds = %for.cond
  br label %if.end50, !dbg !3733

if.end50:                                         ; preds = %for.end, %if.end13
  store i32 0, i32* %i, align 4, !dbg !3734
  br label %for.cond51, !dbg !3736

for.cond51:                                       ; preds = %for.inc73, %if.end50
  %50 = load i32, i32* %i, align 4, !dbg !3737
  %51 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3739
  %package52 = bitcast %union.acpi_object* %51 to %struct.anon.41*, !dbg !3740
  %count53 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package52, i32 0, i32 1, !dbg !3741
  %52 = load i32, i32* %count53, align 4, !dbg !3741
  %cmp54 = icmp ult i32 %50, %52, !dbg !3742
  br i1 %cmp54, label %for.body56, label %for.end75, !dbg !3743

for.body56:                                       ; preds = %for.cond51
  %53 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3744
  %package57 = bitcast %union.acpi_object* %53 to %struct.anon.41*, !dbg !3747
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package57, i32 0, i32 2, !dbg !3748
  %54 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !3748
  %55 = load i32, i32* %i, align 4, !dbg !3749
  %idxprom58 = sext i32 %55 to i64, !dbg !3744
  %arrayidx59 = getelementptr %union.acpi_object, %union.acpi_object* %54, i64 %idxprom58, !dbg !3744
  %type60 = bitcast %union.acpi_object* %arrayidx59 to i32*, !dbg !3750
  %56 = load i32, i32* %type60, align 8, !dbg !3750
  %cmp61 = icmp eq i32 %56, 1, !dbg !3751
  br i1 %cmp61, label %if.then63, label %if.end72, !dbg !3752

if.then63:                                        ; preds = %for.body56
  %57 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3753
  %package64 = bitcast %union.acpi_object* %57 to %struct.anon.41*, !dbg !3754
  %elements65 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package64, i32 0, i32 2, !dbg !3755
  %58 = load %union.acpi_object*, %union.acpi_object** %elements65, align 8, !dbg !3755
  %59 = load i32, i32* %i, align 4, !dbg !3756
  %idxprom66 = sext i32 %59 to i64, !dbg !3753
  %arrayidx67 = getelementptr %union.acpi_object, %union.acpi_object* %58, i64 %idxprom66, !dbg !3753
  %integer = bitcast %union.acpi_object* %arrayidx67 to %struct.anon.38*, !dbg !3757
  %value = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer, i32 0, i32 1, !dbg !3758
  %60 = load i64, i64* %value, align 8, !dbg !3758
  %conv68 = trunc i64 %60 to i32, !dbg !3753
  %61 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3759
  %odvp69 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %61, i32 0, i32 12, !dbg !3760
  %62 = load i32*, i32** %odvp69, align 8, !dbg !3760
  %63 = load i32, i32* %i, align 4, !dbg !3761
  %idxprom70 = sext i32 %63 to i64, !dbg !3759
  %arrayidx71 = getelementptr i32, i32* %62, i64 %idxprom70, !dbg !3759
  store i32 %conv68, i32* %arrayidx71, align 4, !dbg !3762
  br label %if.end72, !dbg !3759

if.end72:                                         ; preds = %if.then63, %for.body56
  br label %for.inc73, !dbg !3763

for.inc73:                                        ; preds = %if.end72
  %64 = load i32, i32* %i, align 4, !dbg !3764
  %inc74 = add i32 %64, 1, !dbg !3764
  store i32 %inc74, i32* %i, align 4, !dbg !3764
  br label %for.cond51, !dbg !3765, !llvm.loop !3766

for.end75:                                        ; preds = %for.cond51
  %65 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3768
  %66 = bitcast %union.acpi_object* %65 to i8*, !dbg !3768
  call void @kfree(i8* %66) #8, !dbg !3769
  store i32 0, i32* %retval, align 4, !dbg !3770
  br label %return, !dbg !3770

out_err:                                          ; preds = %if.then48, %if.then38, %if.then23, %if.then11, %if.then1, %if.then
  call void @llvm.dbg.label(metadata !3771), !dbg !3772
  %67 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3773
  call void @cleanup_odvp(%struct.int3400_thermal_priv* %67) #8, !dbg !3774
  %68 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !3775
  %69 = bitcast %union.acpi_object* %68 to i8*, !dbg !3775
  call void @kfree(i8* %69) #8, !dbg !3776
  %70 = load i32, i32* %ret, align 4, !dbg !3777
  store i32 %70, i32* %retval, align 4, !dbg !3778
  br label %return, !dbg !3778

return:                                           ; preds = %out_err, %for.end75
  %71 = load i32, i32* %retval, align 4, !dbg !3779
  ret i32 %71, !dbg !3779
}

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, i8*, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !3780 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3784, metadata !DIExpression()), !dbg !3785
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3786
  %1 = ptrtoint i8* %0 to i64, !dbg !3786
  %2 = inttoptr i64 %1 to i8*, !dbg !3786
  %3 = ptrtoint i8* %2 to i64, !dbg !3786
  %cmp = icmp uge i64 %3, -4095, !dbg !3786
  %lnot = xor i1 %cmp, true, !dbg !3786
  %lnot1 = xor i1 %lnot, true, !dbg !3786
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3786
  %conv = sext i32 %lnot.ext to i64, !dbg !3786
  %tobool = icmp ne i64 %conv, 0, !dbg !3786
  ret i1 %tobool, !dbg !3787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !3788 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3791, metadata !DIExpression()), !dbg !3792
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3793
  %1 = ptrtoint i8* %0 to i64, !dbg !3794
  ret i64 %1, !dbg !3795
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_thermal_rel_misc_device_add(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_notify_handler(i8*, i32, void (i8*, i32, i8*)*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @int3400_notify(i8* %handle, i32 %event, i8* %data) #2 !dbg !3796 {
entry:
  %handle.addr = alloca i8*, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %priv = alloca %struct.int3400_thermal_priv*, align 8
  %thermal_prop = alloca [5 x i8*], align 16
  %therm_event = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3799, metadata !DIExpression()), !dbg !3800
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !3801, metadata !DIExpression()), !dbg !3802
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3803, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv, metadata !3805, metadata !DIExpression()), !dbg !3806
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3807
  %1 = bitcast i8* %0 to %struct.int3400_thermal_priv*, !dbg !3807
  store %struct.int3400_thermal_priv* %1, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3806
  call void @llvm.dbg.declare(metadata [5 x i8*]* %thermal_prop, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.declare(metadata i32* %therm_event, metadata !3811, metadata !DIExpression()), !dbg !3812
  %2 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3813
  %tobool = icmp ne %struct.int3400_thermal_priv* %2, null, !dbg !3813
  br i1 %tobool, label %if.end, label %if.then, !dbg !3815

if.then:                                          ; preds = %entry
  br label %return, !dbg !3816

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %event.addr, align 4, !dbg !3817
  switch i32 %3, label %sw.default [
    i32 131, label %sw.bb
    i32 160, label %sw.bb1
    i32 136, label %sw.bb2
  ], !dbg !3818

sw.bb:                                            ; preds = %if.end
  store i32 7, i32* %therm_event, align 4, !dbg !3819
  br label %sw.epilog, !dbg !3821

sw.bb1:                                           ; preds = %if.end
  store i32 8, i32* %therm_event, align 4, !dbg !3822
  br label %sw.epilog, !dbg !3823

sw.bb2:                                           ; preds = %if.end
  %4 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3824
  %call = call i32 @evaluate_odvp(%struct.int3400_thermal_priv* %4) #8, !dbg !3825
  store i32 6, i32* %therm_event, align 4, !dbg !3826
  br label %sw.epilog, !dbg !3827

sw.default:                                       ; preds = %if.end
  br label %return, !dbg !3828

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %5 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3829
  %thermal = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %5, i32 0, i32 2, !dbg !3830
  %6 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal, align 8, !dbg !3830
  %type = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %6, i32 0, i32 1, !dbg !3831
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !3829
  %call3 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %arraydecay) #8, !dbg !3832
  %arrayidx = getelementptr [5 x i8*], [5 x i8*]* %thermal_prop, i64 0, i64 0, !dbg !3833
  store i8* %call3, i8** %arrayidx, align 16, !dbg !3834
  %7 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3835
  %thermal4 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %7, i32 0, i32 2, !dbg !3836
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal4, align 8, !dbg !3836
  %temperature = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 13, !dbg !3837
  %9 = load i32, i32* %temperature, align 8, !dbg !3837
  %call5 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %9) #8, !dbg !3838
  %arrayidx6 = getelementptr [5 x i8*], [5 x i8*]* %thermal_prop, i64 0, i64 1, !dbg !3839
  store i8* %call5, i8** %arrayidx6, align 8, !dbg !3840
  %call7 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !3841
  %arrayidx8 = getelementptr [5 x i8*], [5 x i8*]* %thermal_prop, i64 0, i64 2, !dbg !3842
  store i8* %call7, i8** %arrayidx8, align 16, !dbg !3843
  %10 = load i32, i32* %therm_event, align 4, !dbg !3844
  %call9 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32 %10) #8, !dbg !3845
  %arrayidx10 = getelementptr [5 x i8*], [5 x i8*]* %thermal_prop, i64 0, i64 3, !dbg !3846
  store i8* %call9, i8** %arrayidx10, align 8, !dbg !3847
  %arrayidx11 = getelementptr [5 x i8*], [5 x i8*]* %thermal_prop, i64 0, i64 4, !dbg !3848
  store i8* null, i8** %arrayidx11, align 16, !dbg !3849
  %11 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !3850
  %thermal12 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %11, i32 0, i32 2, !dbg !3851
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal12, align 8, !dbg !3851
  %device = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 2, !dbg !3852
  %kobj = getelementptr inbounds %struct.device, %struct.device* %device, i32 0, i32 0, !dbg !3853
  %arraydecay13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %thermal_prop, i64 0, i64 0, !dbg !3854
  %call14 = call i32 @kobject_uevent_env(%struct.kobject* %kobj, i32 2, i8** %arraydecay13) #8, !dbg !3855
  br label %return, !dbg !3856

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  ret void, !dbg !3856
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cleanup_odvp(%struct.int3400_thermal_priv* %priv) #2 !dbg !3857 {
entry:
  %priv.addr = alloca %struct.int3400_thermal_priv*, align 8
  %i = alloca i32, align 4
  store %struct.int3400_thermal_priv* %priv, %struct.int3400_thermal_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv.addr, metadata !3858, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3860, metadata !DIExpression()), !dbg !3861
  %0 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3862
  %odvp_attrs = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %0, i32 0, i32 13, !dbg !3864
  %1 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attrs, align 8, !dbg !3864
  %tobool = icmp ne %struct.odvp_attr* %1, null, !dbg !3862
  br i1 %tobool, label %if.then, label %if.end, !dbg !3865

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !3866
  br label %for.cond, !dbg !3869

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !3870
  %3 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3872
  %odvp_count = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %3, i32 0, i32 11, !dbg !3873
  %4 = load i32, i32* %odvp_count, align 8, !dbg !3873
  %cmp = icmp slt i32 %2, %4, !dbg !3874
  br i1 %cmp, label %for.body, label %for.end, !dbg !3875

for.body:                                         ; preds = %for.cond
  %5 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3876
  %pdev = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %5, i32 0, i32 1, !dbg !3878
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !3878
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 3, !dbg !3879
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !3880
  %7 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3881
  %odvp_attrs1 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %7, i32 0, i32 13, !dbg !3882
  %8 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attrs1, align 8, !dbg !3882
  %9 = load i32, i32* %i, align 4, !dbg !3883
  %idxprom = sext i32 %9 to i64, !dbg !3881
  %arrayidx = getelementptr %struct.odvp_attr, %struct.odvp_attr* %8, i64 %idxprom, !dbg !3881
  %attr = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %arrayidx, i32 0, i32 2, !dbg !3884
  %attr2 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %attr, i32 0, i32 0, !dbg !3885
  call void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr2) #8, !dbg !3886
  %10 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3887
  %odvp_attrs3 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %10, i32 0, i32 13, !dbg !3888
  %11 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attrs3, align 8, !dbg !3888
  %12 = load i32, i32* %i, align 4, !dbg !3889
  %idxprom4 = sext i32 %12 to i64, !dbg !3887
  %arrayidx5 = getelementptr %struct.odvp_attr, %struct.odvp_attr* %11, i64 %idxprom4, !dbg !3887
  %attr6 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %arrayidx5, i32 0, i32 2, !dbg !3890
  %attr7 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %attr6, i32 0, i32 0, !dbg !3891
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr7, i32 0, i32 0, !dbg !3892
  %13 = load i8*, i8** %name, align 8, !dbg !3892
  call void @kfree(i8* %13) #8, !dbg !3893
  br label %for.inc, !dbg !3894

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !3895
  %inc = add i32 %14, 1, !dbg !3895
  store i32 %inc, i32* %i, align 4, !dbg !3895
  br label %for.cond, !dbg !3896, !llvm.loop !3897

for.end:                                          ; preds = %for.cond
  %15 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3899
  %odvp_attrs8 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %15, i32 0, i32 13, !dbg !3900
  %16 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attrs8, align 8, !dbg !3900
  %17 = bitcast %struct.odvp_attr* %16 to i8*, !dbg !3899
  call void @kfree(i8* %17) #8, !dbg !3901
  br label %if.end, !dbg !3902

if.end:                                           ; preds = %for.end, %entry
  %18 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3903
  %odvp = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %18, i32 0, i32 12, !dbg !3904
  %19 = load i32*, i32** %odvp, align 8, !dbg !3904
  %20 = bitcast i32* %19 to i8*, !dbg !3903
  call void @kfree(i8* %20) #8, !dbg !3905
  %21 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv.addr, align 8, !dbg !3906
  %odvp_count9 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %21, i32 0, i32 11, !dbg !3907
  store i32 0, i32* %odvp_count9, align 8, !dbg !3908
  ret void, !dbg !3909
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_thermal_rel_misc_device_remove(i8*) #1

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_unregister(%struct.thermal_zone_device*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3910 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3914, metadata !DIExpression()), !dbg !3919
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3921, metadata !DIExpression()), !dbg !3922
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3923, metadata !DIExpression()), !dbg !3924
  %0 = load i64, i64* %size.addr, align 8, !dbg !3925
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3927
  br i1 %1, label %if.then, label %if.end447, !dbg !3928

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3929
  %tobool = icmp ne i64 %2, 0, !dbg !3929
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3932

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3933
  br label %return, !dbg !3933

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3934
  %cmp = icmp ult i64 %3, 4096, !dbg !3936
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3937

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3938
  br label %return, !dbg !3938

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub = sub i64 %4, 1, !dbg !3939
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3939
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3939

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub4 = sub i64 %6, 1, !dbg !3939
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3939
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3939

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub6 = sub i64 %8, 1, !dbg !3939
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3939
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3939

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3939

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub9 = sub i64 %9, 1, !dbg !3939
  %and = and i64 %sub9, -9223372036854775808, !dbg !3939
  %tobool10 = icmp ne i64 %and, 0, !dbg !3939
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3939

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3939

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub13 = sub i64 %10, 1, !dbg !3939
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3939
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3939
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3939

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3939

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub18 = sub i64 %11, 1, !dbg !3939
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3939
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3939
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3939

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3939

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub23 = sub i64 %12, 1, !dbg !3939
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3939
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3939
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3939

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3939

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub28 = sub i64 %13, 1, !dbg !3939
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3939
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3939
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3939

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3939

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub33 = sub i64 %14, 1, !dbg !3939
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3939
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3939
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3939

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3939

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub38 = sub i64 %15, 1, !dbg !3939
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3939
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3939
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3939

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3939

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub43 = sub i64 %16, 1, !dbg !3939
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3939
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3939
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3939

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3939

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub48 = sub i64 %17, 1, !dbg !3939
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3939
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3939
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3939

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3939

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub53 = sub i64 %18, 1, !dbg !3939
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3939
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3939
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3939

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3939

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub58 = sub i64 %19, 1, !dbg !3939
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3939
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3939
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3939

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3939

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub63 = sub i64 %20, 1, !dbg !3939
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3939
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3939
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3939

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3939

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub68 = sub i64 %21, 1, !dbg !3939
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3939
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3939
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3939

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3939

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub73 = sub i64 %22, 1, !dbg !3939
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3939
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3939
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3939

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3939

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub78 = sub i64 %23, 1, !dbg !3939
  %and79 = and i64 %sub78, 562949953421312, !dbg !3939
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3939
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3939

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3939

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub83 = sub i64 %24, 1, !dbg !3939
  %and84 = and i64 %sub83, 281474976710656, !dbg !3939
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3939
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3939

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3939

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub88 = sub i64 %25, 1, !dbg !3939
  %and89 = and i64 %sub88, 140737488355328, !dbg !3939
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3939
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3939

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3939

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub93 = sub i64 %26, 1, !dbg !3939
  %and94 = and i64 %sub93, 70368744177664, !dbg !3939
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3939
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3939

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3939

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub98 = sub i64 %27, 1, !dbg !3939
  %and99 = and i64 %sub98, 35184372088832, !dbg !3939
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3939
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3939

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3939

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub103 = sub i64 %28, 1, !dbg !3939
  %and104 = and i64 %sub103, 17592186044416, !dbg !3939
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3939
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3939

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3939

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub108 = sub i64 %29, 1, !dbg !3939
  %and109 = and i64 %sub108, 8796093022208, !dbg !3939
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3939
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3939

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3939

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub113 = sub i64 %30, 1, !dbg !3939
  %and114 = and i64 %sub113, 4398046511104, !dbg !3939
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3939
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3939

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3939

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub118 = sub i64 %31, 1, !dbg !3939
  %and119 = and i64 %sub118, 2199023255552, !dbg !3939
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3939
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3939

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3939

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub123 = sub i64 %32, 1, !dbg !3939
  %and124 = and i64 %sub123, 1099511627776, !dbg !3939
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3939
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3939

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3939

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub128 = sub i64 %33, 1, !dbg !3939
  %and129 = and i64 %sub128, 549755813888, !dbg !3939
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3939
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3939

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3939

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub133 = sub i64 %34, 1, !dbg !3939
  %and134 = and i64 %sub133, 274877906944, !dbg !3939
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3939
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3939

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3939

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub138 = sub i64 %35, 1, !dbg !3939
  %and139 = and i64 %sub138, 137438953472, !dbg !3939
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3939
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3939

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3939

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub143 = sub i64 %36, 1, !dbg !3939
  %and144 = and i64 %sub143, 68719476736, !dbg !3939
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3939
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3939

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3939

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub148 = sub i64 %37, 1, !dbg !3939
  %and149 = and i64 %sub148, 34359738368, !dbg !3939
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3939
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3939

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3939

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub153 = sub i64 %38, 1, !dbg !3939
  %and154 = and i64 %sub153, 17179869184, !dbg !3939
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3939
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3939

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3939

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub158 = sub i64 %39, 1, !dbg !3939
  %and159 = and i64 %sub158, 8589934592, !dbg !3939
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3939
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3939

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3939

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub163 = sub i64 %40, 1, !dbg !3939
  %and164 = and i64 %sub163, 4294967296, !dbg !3939
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3939
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3939

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3939

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub168 = sub i64 %41, 1, !dbg !3939
  %and169 = and i64 %sub168, 2147483648, !dbg !3939
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3939
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3939

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3939

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub173 = sub i64 %42, 1, !dbg !3939
  %and174 = and i64 %sub173, 1073741824, !dbg !3939
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3939
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3939

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3939

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub178 = sub i64 %43, 1, !dbg !3939
  %and179 = and i64 %sub178, 536870912, !dbg !3939
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3939
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3939

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3939

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub183 = sub i64 %44, 1, !dbg !3939
  %and184 = and i64 %sub183, 268435456, !dbg !3939
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3939
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3939

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3939

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub188 = sub i64 %45, 1, !dbg !3939
  %and189 = and i64 %sub188, 134217728, !dbg !3939
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3939
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3939

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3939

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub193 = sub i64 %46, 1, !dbg !3939
  %and194 = and i64 %sub193, 67108864, !dbg !3939
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3939
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3939

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3939

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub198 = sub i64 %47, 1, !dbg !3939
  %and199 = and i64 %sub198, 33554432, !dbg !3939
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3939
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3939

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3939

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub203 = sub i64 %48, 1, !dbg !3939
  %and204 = and i64 %sub203, 16777216, !dbg !3939
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3939
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3939

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3939

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub208 = sub i64 %49, 1, !dbg !3939
  %and209 = and i64 %sub208, 8388608, !dbg !3939
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3939
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3939

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3939

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub213 = sub i64 %50, 1, !dbg !3939
  %and214 = and i64 %sub213, 4194304, !dbg !3939
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3939
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3939

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3939

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub218 = sub i64 %51, 1, !dbg !3939
  %and219 = and i64 %sub218, 2097152, !dbg !3939
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3939
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3939

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3939

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub223 = sub i64 %52, 1, !dbg !3939
  %and224 = and i64 %sub223, 1048576, !dbg !3939
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3939
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3939

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3939

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub228 = sub i64 %53, 1, !dbg !3939
  %and229 = and i64 %sub228, 524288, !dbg !3939
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3939
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3939

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3939

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub233 = sub i64 %54, 1, !dbg !3939
  %and234 = and i64 %sub233, 262144, !dbg !3939
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3939
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3939

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3939

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub238 = sub i64 %55, 1, !dbg !3939
  %and239 = and i64 %sub238, 131072, !dbg !3939
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3939
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3939

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3939

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub243 = sub i64 %56, 1, !dbg !3939
  %and244 = and i64 %sub243, 65536, !dbg !3939
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3939
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3939

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3939

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub248 = sub i64 %57, 1, !dbg !3939
  %and249 = and i64 %sub248, 32768, !dbg !3939
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3939
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3939

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3939

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub253 = sub i64 %58, 1, !dbg !3939
  %and254 = and i64 %sub253, 16384, !dbg !3939
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3939
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3939

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3939

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub258 = sub i64 %59, 1, !dbg !3939
  %and259 = and i64 %sub258, 8192, !dbg !3939
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3939
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3939

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3939

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub263 = sub i64 %60, 1, !dbg !3939
  %and264 = and i64 %sub263, 4096, !dbg !3939
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3939
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3939

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3939

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub268 = sub i64 %61, 1, !dbg !3939
  %and269 = and i64 %sub268, 2048, !dbg !3939
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3939
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3939

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3939

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub273 = sub i64 %62, 1, !dbg !3939
  %and274 = and i64 %sub273, 1024, !dbg !3939
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3939
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3939

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3939

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub278 = sub i64 %63, 1, !dbg !3939
  %and279 = and i64 %sub278, 512, !dbg !3939
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3939
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3939

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3939

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub283 = sub i64 %64, 1, !dbg !3939
  %and284 = and i64 %sub283, 256, !dbg !3939
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3939
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3939

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3939

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub288 = sub i64 %65, 1, !dbg !3939
  %and289 = and i64 %sub288, 128, !dbg !3939
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3939
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3939

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3939

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub293 = sub i64 %66, 1, !dbg !3939
  %and294 = and i64 %sub293, 64, !dbg !3939
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3939
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3939

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3939

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub298 = sub i64 %67, 1, !dbg !3939
  %and299 = and i64 %sub298, 32, !dbg !3939
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3939
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3939

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3939

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub303 = sub i64 %68, 1, !dbg !3939
  %and304 = and i64 %sub303, 16, !dbg !3939
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3939
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3939

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3939

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub308 = sub i64 %69, 1, !dbg !3939
  %and309 = and i64 %sub308, 8, !dbg !3939
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3939
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3939

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3939

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub313 = sub i64 %70, 1, !dbg !3939
  %and314 = and i64 %sub313, 4, !dbg !3939
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3939
  %71 = zext i1 %tobool315 to i64, !dbg !3939
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3939
  br label %cond.end, !dbg !3939

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3939
  br label %cond.end317, !dbg !3939

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3939
  br label %cond.end319, !dbg !3939

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3939
  br label %cond.end321, !dbg !3939

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3939
  br label %cond.end323, !dbg !3939

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3939
  br label %cond.end325, !dbg !3939

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3939
  br label %cond.end327, !dbg !3939

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3939
  br label %cond.end329, !dbg !3939

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3939
  br label %cond.end331, !dbg !3939

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3939
  br label %cond.end333, !dbg !3939

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3939
  br label %cond.end335, !dbg !3939

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3939
  br label %cond.end337, !dbg !3939

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3939
  br label %cond.end339, !dbg !3939

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3939
  br label %cond.end341, !dbg !3939

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3939
  br label %cond.end343, !dbg !3939

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3939
  br label %cond.end345, !dbg !3939

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3939
  br label %cond.end347, !dbg !3939

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3939
  br label %cond.end349, !dbg !3939

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3939
  br label %cond.end351, !dbg !3939

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3939
  br label %cond.end353, !dbg !3939

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3939
  br label %cond.end355, !dbg !3939

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3939
  br label %cond.end357, !dbg !3939

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3939
  br label %cond.end359, !dbg !3939

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3939
  br label %cond.end361, !dbg !3939

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3939
  br label %cond.end363, !dbg !3939

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3939
  br label %cond.end365, !dbg !3939

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3939
  br label %cond.end367, !dbg !3939

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3939
  br label %cond.end369, !dbg !3939

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3939
  br label %cond.end371, !dbg !3939

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3939
  br label %cond.end373, !dbg !3939

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3939
  br label %cond.end375, !dbg !3939

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3939
  br label %cond.end377, !dbg !3939

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3939
  br label %cond.end379, !dbg !3939

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3939
  br label %cond.end381, !dbg !3939

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3939
  br label %cond.end383, !dbg !3939

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3939
  br label %cond.end385, !dbg !3939

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3939
  br label %cond.end387, !dbg !3939

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3939
  br label %cond.end389, !dbg !3939

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3939
  br label %cond.end391, !dbg !3939

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3939
  br label %cond.end393, !dbg !3939

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3939
  br label %cond.end395, !dbg !3939

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3939
  br label %cond.end397, !dbg !3939

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3939
  br label %cond.end399, !dbg !3939

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3939
  br label %cond.end401, !dbg !3939

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3939
  br label %cond.end403, !dbg !3939

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3939
  br label %cond.end405, !dbg !3939

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3939
  br label %cond.end407, !dbg !3939

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3939
  br label %cond.end409, !dbg !3939

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3939
  br label %cond.end411, !dbg !3939

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3939
  br label %cond.end413, !dbg !3939

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3939
  br label %cond.end415, !dbg !3939

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3939
  br label %cond.end417, !dbg !3939

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3939
  br label %cond.end419, !dbg !3939

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3939
  br label %cond.end421, !dbg !3939

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3939
  br label %cond.end423, !dbg !3939

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3939
  br label %cond.end425, !dbg !3939

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3939
  br label %cond.end427, !dbg !3939

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3939
  br label %cond.end429, !dbg !3939

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3939
  br label %cond.end431, !dbg !3939

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3939
  br label %cond.end433, !dbg !3939

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3939
  br label %cond.end435, !dbg !3939

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3939
  br label %cond.end437, !dbg !3939

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3939
  br label %cond.end440, !dbg !3939

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3939

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3939
  br label %cond.end444, !dbg !3939

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3939
  %sub443 = sub i64 %72, 1, !dbg !3939
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3939
  br label %cond.end444, !dbg !3939

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3939
  %sub446 = sub i32 %cond445, 12, !dbg !3940
  %add = add i32 %sub446, 1, !dbg !3941
  store i32 %add, i32* %retval, align 4, !dbg !3942
  br label %return, !dbg !3942

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3943
  %dec = add i64 %73, -1, !dbg !3943
  store i64 %dec, i64* %size.addr, align 8, !dbg !3943
  %74 = load i64, i64* %size.addr, align 8, !dbg !3944
  %shr = lshr i64 %74, 12, !dbg !3944
  store i64 %shr, i64* %size.addr, align 8, !dbg !3944
  %75 = load i64, i64* %size.addr, align 8, !dbg !3945
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3922
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3946
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3947
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !3946, !srcloc !3948
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3946
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3949
  %add.i = add i32 %79, 1, !dbg !3950
  store i32 %add.i, i32* %retval, align 4, !dbg !3951
  br label %return, !dbg !3951

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3952
  ret i32 %80, !dbg !3952
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3953 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3914, metadata !DIExpression()), !dbg !3957
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3921, metadata !DIExpression()), !dbg !3959
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3960, metadata !DIExpression()), !dbg !3961
  %0 = load i64, i64* %n.addr, align 8, !dbg !3962
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3959
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3963
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3964
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !3963, !srcloc !3948
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3963
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3965
  %add.i = add i32 %4, 1, !dbg !3966
  %sub = sub i32 %add.i, 1, !dbg !3967
  ret i32 %sub, !dbg !3968
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !3969 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3973, metadata !DIExpression()), !dbg !3974
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3975, metadata !DIExpression()), !dbg !3976
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3977, metadata !DIExpression()), !dbg !3978
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3979, metadata !DIExpression()), !dbg !3980
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3981
  ret i8* %0, !dbg !3982
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

; Function Attrs: noredzone
declare dso_local i32 @guid_parse(i8*, %struct.guid_t*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @guid_equal(%struct.guid_t* %u1, %struct.guid_t* %u2) #2 !dbg !3983 {
entry:
  %u1.addr = alloca %struct.guid_t*, align 8
  %u2.addr = alloca %struct.guid_t*, align 8
  store %struct.guid_t* %u1, %struct.guid_t** %u1.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %u1.addr, metadata !3989, metadata !DIExpression()), !dbg !3990
  store %struct.guid_t* %u2, %struct.guid_t** %u2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.guid_t** %u2.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  %0 = load %struct.guid_t*, %struct.guid_t** %u1.addr, align 8, !dbg !3993
  %1 = bitcast %struct.guid_t* %0 to i8*, !dbg !3993
  %2 = load %struct.guid_t*, %struct.guid_t** %u2.addr, align 8, !dbg !3994
  %3 = bitcast %struct.guid_t* %2 to i8*, !dbg !3994
  %call = call i32 @memcmp(i8* %1, i8* %3, i64 16) #8, !dbg !3995
  %cmp = icmp eq i32 %call, 0, !dbg !3996
  ret i1 %cmp, !dbg !3997
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3998 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4001, metadata !DIExpression()), !dbg !4002
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4003, metadata !DIExpression()), !dbg !4004
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4005
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4006
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4007
  store i8* %0, i8** %driver_data, align 8, !dbg !4008
  ret void, !dbg !4009
}

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @data_vault_read(%struct.file* %file, %struct.kobject* %kobj, %struct.bin_attribute* %attr, i8* %buf, i64 %off, i64 %count) #2 !dbg !4010 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4011, metadata !DIExpression()), !dbg !4012
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4013, metadata !DIExpression()), !dbg !4014
  store %struct.bin_attribute* %attr, %struct.bin_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %attr.addr, metadata !4015, metadata !DIExpression()), !dbg !4016
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4017, metadata !DIExpression()), !dbg !4018
  store i64 %off, i64* %off.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %off.addr, metadata !4019, metadata !DIExpression()), !dbg !4020
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4021, metadata !DIExpression()), !dbg !4022
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4023
  %1 = load %struct.bin_attribute*, %struct.bin_attribute** %attr.addr, align 8, !dbg !4024
  %private = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %1, i32 0, i32 2, !dbg !4025
  %2 = load i8*, i8** %private, align 8, !dbg !4025
  %3 = load i64, i64* %off.addr, align 8, !dbg !4026
  %add.ptr = getelementptr i8, i8* %2, i64 %3, !dbg !4027
  %4 = load i64, i64* %count.addr, align 8, !dbg !4028
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %add.ptr, i64 %4, i1 false), !dbg !4029
  %5 = load i64, i64* %count.addr, align 8, !dbg !4030
  ret i64 %5, !dbg !4031
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #2 !dbg !4032 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3105, metadata !DIExpression()), !dbg !4035
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3115, metadata !DIExpression()), !dbg !4039
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3117, metadata !DIExpression()), !dbg !4040
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3119, metadata !DIExpression()), !dbg !4041
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3121, metadata !DIExpression()), !dbg !4042
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3127, metadata !DIExpression()), !dbg !4044
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3133, metadata !DIExpression()), !dbg !4046
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3142, metadata !DIExpression()), !dbg !4049
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3144, metadata !DIExpression()), !dbg !4050
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3146, metadata !DIExpression()), !dbg !4051
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3148, metadata !DIExpression()), !dbg !4052
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3150, metadata !DIExpression()), !dbg !4053
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3152, metadata !DIExpression()), !dbg !4054
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3154, metadata !DIExpression()), !dbg !4055
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3156, metadata !DIExpression()), !dbg !4056
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4057, metadata !DIExpression()), !dbg !4058
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4059, metadata !DIExpression()), !dbg !4060
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4065, metadata !DIExpression()), !dbg !4068
  %0 = load i64, i64* %n.addr, align 8, !dbg !4068
  store i64 %0, i64* %__a, align 8, !dbg !4068
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4069, metadata !DIExpression()), !dbg !4068
  %1 = load i64, i64* %size.addr, align 8, !dbg !4068
  store i64 %1, i64* %__b, align 8, !dbg !4068
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4070, metadata !DIExpression()), !dbg !4068
  store i64* %bytes, i64** %__d, align 8, !dbg !4068
  %cmp = icmp eq i64* %__a, %__b, !dbg !4068
  %conv = zext i1 %cmp to i32, !dbg !4068
  %2 = load i64*, i64** %__d, align 8, !dbg !4068
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4068
  %conv2 = zext i1 %cmp1 to i32, !dbg !4068
  %3 = load i64, i64* %__a, align 8, !dbg !4068
  %4 = load i64, i64* %__b, align 8, !dbg !4068
  %5 = load i64*, i64** %__d, align 8, !dbg !4068
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4068
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4068
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4068
  store i64 %8, i64* %5, align 8, !dbg !4068
  %frombool = zext i1 %7 to i8, !dbg !4068
  store i8 %frombool, i8* %tmp, align 1, !dbg !4068
  %9 = load i8, i8* %tmp, align 1, !dbg !4068
  %tobool = trunc i8 %9 to i1, !dbg !4068
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !4072
  %lnot = xor i1 %call, true, !dbg !4072
  %lnot3 = xor i1 %lnot, true, !dbg !4072
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4072
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4072
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4072
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4073

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4074
  br label %return, !dbg !4074

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4075
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4076
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4077

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4078
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4079
  br i1 %13, label %if.then6, label %if.end8, !dbg !4080

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4081
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4082
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4083
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !4084
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4085

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4086
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4087
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4088

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4089
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4090
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4091
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !4092
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4053
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4093
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4094
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4095
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4096
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4097
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4098
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !4099
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4099
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4099
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4099
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4099
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4100
  br label %kmalloc.exit, !dbg !4100

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4101
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4102
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4102
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4103

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4104
  br label %kmalloc_index.exit.i, !dbg !4104

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4105
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4106
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4107

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4108
  br label %kmalloc_index.exit.i, !dbg !4108

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4109
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4110
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4111

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4112
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4113
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4114

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4115
  br label %kmalloc_index.exit.i, !dbg !4115

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4116
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4117
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4118

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4119
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4120
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4121

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4122
  br label %kmalloc_index.exit.i, !dbg !4122

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4123
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4124
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4125

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4126
  br label %kmalloc_index.exit.i, !dbg !4126

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4127
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4128
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4129

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4130
  br label %kmalloc_index.exit.i, !dbg !4130

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4131
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4132
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4133

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4134
  br label %kmalloc_index.exit.i, !dbg !4134

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4135
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4136
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4137

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4138
  br label %kmalloc_index.exit.i, !dbg !4138

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4139
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4140
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4141

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4142
  br label %kmalloc_index.exit.i, !dbg !4142

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4143
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4144
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4145

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4146
  br label %kmalloc_index.exit.i, !dbg !4146

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4147
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4148
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4149

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4150
  br label %kmalloc_index.exit.i, !dbg !4150

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4151
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4152
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4153

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4154
  br label %kmalloc_index.exit.i, !dbg !4154

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4155
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4156
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4157

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4158
  br label %kmalloc_index.exit.i, !dbg !4158

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4159
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4160
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4161

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4162
  br label %kmalloc_index.exit.i, !dbg !4162

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4163
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4164
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4165

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4166
  br label %kmalloc_index.exit.i, !dbg !4166

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4167
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4168
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4169

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4170
  br label %kmalloc_index.exit.i, !dbg !4170

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4171
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4172
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4173

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4174
  br label %kmalloc_index.exit.i, !dbg !4174

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4175
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4176
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4177

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4178
  br label %kmalloc_index.exit.i, !dbg !4178

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4179
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4180
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4181

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4182
  br label %kmalloc_index.exit.i, !dbg !4182

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4183
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4184
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4185

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4186
  br label %kmalloc_index.exit.i, !dbg !4186

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4187
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4188
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4189

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4190
  br label %kmalloc_index.exit.i, !dbg !4190

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4191
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4192
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4193

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4194
  br label %kmalloc_index.exit.i, !dbg !4194

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4195
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4196
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4197

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4198
  br label %kmalloc_index.exit.i, !dbg !4198

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4199
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4200
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4201

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4202
  br label %kmalloc_index.exit.i, !dbg !4202

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4203
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4204
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4205

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4206
  br label %kmalloc_index.exit.i, !dbg !4206

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4207
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4208
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4209

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4210
  br label %kmalloc_index.exit.i, !dbg !4210

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4211
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4212
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4213

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4214
  br label %kmalloc_index.exit.i, !dbg !4214

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4215
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4216
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4217

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4218
  br label %kmalloc_index.exit.i, !dbg !4218

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4219, !srcloc !3332
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 161) #9, !dbg !4220, !srcloc !3336
  unreachable, !dbg !4221

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4222
  store i32 %59, i32* %index.i, align 4, !dbg !4223
  %60 = load i32, i32* %index.i, align 4, !dbg !4224
  %tobool.i = icmp ne i32 %60, 0, !dbg !4224
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4225

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4226
  br label %kmalloc.exit, !dbg !4226

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4227
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4228
  %and.i.i = and i32 %62, 17, !dbg !4228
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4228
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4228
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4228
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4228
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4229

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4230
  br label %kmalloc_type.exit.i, !dbg !4230

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4231
  %and2.i.i = and i32 %63, 1, !dbg !4232
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4231
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4231
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4231
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4233
  br label %kmalloc_type.exit.i, !dbg !4233

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4234
  %idxprom.i = zext i32 %65 to i64, !dbg !4235
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4235
  %66 = load i32, i32* %index.i, align 4, !dbg !4236
  %idxprom6.i = zext i32 %66 to i64, !dbg !4235
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4235
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4235
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4237
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4238
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4239
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4240
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !4241
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4241
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4241
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4241
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4241
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4041
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4242
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4243
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4244
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4245
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !4246
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4247
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4248
  store i8* %76, i8** %retval.i, align 8, !dbg !4249
  br label %kmalloc.exit, !dbg !4249

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4250
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4251
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !4252
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4252
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4252
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4252
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4252
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4253
  br label %kmalloc.exit, !dbg !4253

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4254
  store i8* %79, i8** %retval, align 8, !dbg !4255
  br label %return, !dbg !4255

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4256
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4257
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !4258
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4258
  %maskedptr = and i64 %ptrint, 7, !dbg !4258
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4258
  call void @llvm.assume(i1 %maskcond), !dbg !4258
  store i8* %call9, i8** %retval, align 8, !dbg !4259
  br label %return, !dbg !4259

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4260
  ret i8* %82, !dbg !4260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #2 !dbg !4261 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4262, metadata !DIExpression()), !dbg !4263
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4264, metadata !DIExpression()), !dbg !4265
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4266, metadata !DIExpression()), !dbg !4267
  %0 = load i64, i64* %n.addr, align 8, !dbg !4268
  %1 = load i64, i64* %size.addr, align 8, !dbg !4269
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4270
  %or = or i32 %2, 256, !dbg !4271
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !4272
  ret i8* %call, !dbg !4273
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @odvp_show(%struct.kobject* %kobj, %struct.kobj_attribute* %attr, i8* %buf) #2 !dbg !4274 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.kobj_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %odvp_attr = alloca %struct.odvp_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.odvp_attr*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  store %struct.kobj_attribute* %attr, %struct.kobj_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_attribute** %attr.addr, metadata !4277, metadata !DIExpression()), !dbg !4278
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata %struct.odvp_attr** %odvp_attr, metadata !4281, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4283, metadata !DIExpression()), !dbg !4285
  %0 = load %struct.kobj_attribute*, %struct.kobj_attribute** %attr.addr, align 8, !dbg !4285
  %1 = bitcast %struct.kobj_attribute* %0 to i8*, !dbg !4285
  store i8* %1, i8** %__mptr, align 8, !dbg !4285
  br label %do.body, !dbg !4285

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4286

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4285
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4285
  %3 = bitcast i8* %add.ptr to %struct.odvp_attr*, !dbg !4285
  store %struct.odvp_attr* %3, %struct.odvp_attr** %tmp, align 8, !dbg !4286
  %4 = load %struct.odvp_attr*, %struct.odvp_attr** %tmp, align 8, !dbg !4285
  store %struct.odvp_attr* %4, %struct.odvp_attr** %odvp_attr, align 8, !dbg !4288
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4289
  %6 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attr, align 8, !dbg !4290
  %priv = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %6, i32 0, i32 1, !dbg !4291
  %7 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4291
  %odvp = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %7, i32 0, i32 12, !dbg !4292
  %8 = load i32*, i32** %odvp, align 8, !dbg !4292
  %9 = load %struct.odvp_attr*, %struct.odvp_attr** %odvp_attr, align 8, !dbg !4293
  %odvp1 = getelementptr inbounds %struct.odvp_attr, %struct.odvp_attr* %9, i32 0, i32 0, !dbg !4294
  %10 = load i32, i32* %odvp1, align 8, !dbg !4294
  %idxprom = sext i32 %10 to i64, !dbg !4290
  %arrayidx = getelementptr i32, i32* %8, i64 %idxprom, !dbg !4290
  %11 = load i32, i32* %arrayidx, align 4, !dbg !4290
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %11) #8, !dbg !4295
  %conv = sext i32 %call to i64, !dbg !4295
  ret i64 %conv, !dbg !4296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr) #2 !dbg !4297 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4302, metadata !DIExpression()), !dbg !4303
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !4304, metadata !DIExpression()), !dbg !4305
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4306
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4307
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #8, !dbg !4308
  ret i32 %call, !dbg !4309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !4310 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4316
  %tobool = trunc i8 %0 to i1, !dbg !4316
  %lnot = xor i1 %tobool, true, !dbg !4316
  %lnot1 = xor i1 %lnot, true, !dbg !4316
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4316
  %conv = sext i32 %lnot.ext to i64, !dbg !4316
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4316
  ret i1 %tobool2, !dbg !4317
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject*, %struct.attribute*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3400_thermal_get_temp(%struct.thermal_zone_device* %thermal, i32* %temp) #2 !dbg !4318 {
entry:
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4319, metadata !DIExpression()), !dbg !4320
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !4321, metadata !DIExpression()), !dbg !4322
  %0 = load i32*, i32** %temp.addr, align 8, !dbg !4323
  store i32 20000, i32* %0, align 4, !dbg !4324
  ret i32 0, !dbg !4325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3400_thermal_change_mode(%struct.thermal_zone_device* %thermal, i32 %mode) #2 !dbg !4326 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca %struct.thermal_zone_device*, align 8
  %mode.addr = alloca i32, align 4
  %priv = alloca %struct.int3400_thermal_priv*, align 8
  %result = alloca i32, align 4
  store %struct.thermal_zone_device* %thermal, %struct.thermal_zone_device** %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %thermal.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv, metadata !4331, metadata !DIExpression()), !dbg !4332
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4333
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !4334
  %1 = load i8*, i8** %devdata, align 8, !dbg !4334
  %2 = bitcast i8* %1 to %struct.int3400_thermal_priv*, !dbg !4333
  store %struct.int3400_thermal_priv* %2, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4332
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i32 0, i32* %result, align 4, !dbg !4336
  %3 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4337
  %tobool = icmp ne %struct.int3400_thermal_priv* %3, null, !dbg !4337
  br i1 %tobool, label %if.end, label %if.then, !dbg !4339

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4340
  br label %return, !dbg !4340

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %mode.addr, align 4, !dbg !4341
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %thermal.addr, align 8, !dbg !4343
  %mode1 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %5, i32 0, i32 7, !dbg !4344
  %6 = load i32, i32* %mode1, align 8, !dbg !4344
  %cmp = icmp ne i32 %4, %6, !dbg !4345
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !4346

if.then2:                                         ; preds = %if.end
  %7 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4347
  %adev = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %7, i32 0, i32 0, !dbg !4348
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4348
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 1, !dbg !4349
  %9 = load i8*, i8** %handle, align 8, !dbg !4349
  %10 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4350
  %current_uuid_index = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %10, i32 0, i32 9, !dbg !4351
  %11 = load i32, i32* %current_uuid_index, align 8, !dbg !4351
  %12 = load i32, i32* %mode.addr, align 4, !dbg !4352
  %cmp3 = icmp eq i32 %12, 1, !dbg !4353
  %call = call i32 @int3400_thermal_run_osc(i8* %9, i32 %11, i1 zeroext %cmp3) #8, !dbg !4354
  store i32 %call, i32* %result, align 4, !dbg !4355
  br label %if.end4, !dbg !4356

if.end4:                                          ; preds = %if.then2, %if.end
  %13 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4357
  %call5 = call i32 @evaluate_odvp(%struct.int3400_thermal_priv* %13) #8, !dbg !4358
  %14 = load i32, i32* %result, align 4, !dbg !4359
  store i32 %14, i32* %retval, align 4, !dbg !4360
  br label %return, !dbg !4360

return:                                           ; preds = %if.end4, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4361
  ret i32 %15, !dbg !4361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3400_thermal_run_osc(i8* %handle, i32 %uuid, i1 zeroext %enable) #2 !dbg !4362 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %uuid.addr = alloca i32, align 4
  %enable.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %buf = alloca [2 x i32], align 4
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  %context = alloca %struct.acpi_osc_context, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4365, metadata !DIExpression()), !dbg !4366
  store i32 %uuid, i32* %uuid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %uuid.addr, metadata !4367, metadata !DIExpression()), !dbg !4368
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !4369, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4371, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.declare(metadata [2 x i32]* %buf, metadata !4373, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4376, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4378, metadata !DIExpression()), !dbg !4379
  store i32 0, i32* %result, align 4, !dbg !4379
  call void @llvm.dbg.declare(metadata %struct.acpi_osc_context* %context, metadata !4380, metadata !DIExpression()), !dbg !4388
  %0 = bitcast %struct.acpi_osc_context* %context to i8*, !dbg !4388
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false), !dbg !4388
  %1 = bitcast i8* %0 to %struct.acpi_osc_context*, !dbg !4388
  %2 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %1, i32 0, i32 1, !dbg !4388
  store i32 1, i32* %2, align 8, !dbg !4388
  %3 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %1, i32 0, i32 2, !dbg !4388
  %4 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 0, !dbg !4388
  store i64 8, i64* %4, align 8, !dbg !4388
  %5 = load i32, i32* %uuid.addr, align 4, !dbg !4389
  %cmp = icmp ult i32 %5, 0, !dbg !4391
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4392

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %uuid.addr, align 4, !dbg !4393
  %cmp1 = icmp uge i32 %6, 10, !dbg !4394
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4395

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4396
  br label %return, !dbg !4396

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %uuid.addr, align 4, !dbg !4397
  %idxprom = zext i32 %7 to i64, !dbg !4398
  %arrayidx = getelementptr [10 x i8*], [10 x i8*]* @int3400_thermal_uuids, i64 0, i64 %idxprom, !dbg !4398
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !4398
  %uuid_str = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 0, !dbg !4399
  store i8* %8, i8** %uuid_str, align 8, !dbg !4400
  %arrayidx2 = getelementptr [2 x i32], [2 x i32]* %buf, i64 0, i64 0, !dbg !4401
  store i32 0, i32* %arrayidx2, align 4, !dbg !4402
  %9 = load i8, i8* %enable.addr, align 1, !dbg !4403
  %tobool = trunc i8 %9 to i1, !dbg !4403
  %conv = zext i1 %tobool to i32, !dbg !4403
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %buf, i64 0, i64 1, !dbg !4404
  store i32 %conv, i32* %arrayidx3, align 4, !dbg !4405
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %buf, i64 0, i64 0, !dbg !4406
  %10 = bitcast i32* %arraydecay to i8*, !dbg !4406
  %cap = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 2, !dbg !4407
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %cap, i32 0, i32 1, !dbg !4408
  store i8* %10, i8** %pointer, align 8, !dbg !4409
  %11 = load i8*, i8** %handle.addr, align 8, !dbg !4410
  %call = call i32 @acpi_run_osc(i8* %11, %struct.acpi_osc_context* %context) #8, !dbg !4411
  store i32 %call, i32* %status, align 4, !dbg !4412
  %12 = load i32, i32* %status, align 4, !dbg !4413
  %tobool4 = icmp ne i32 %12, 0, !dbg !4413
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !4415

if.then5:                                         ; preds = %if.end
  %ret6 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 3, !dbg !4416
  %pointer7 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret6, i32 0, i32 1, !dbg !4418
  %13 = load i8*, i8** %pointer7, align 8, !dbg !4418
  %add.ptr = getelementptr i8, i8* %13, i64 4, !dbg !4419
  %14 = bitcast i8* %add.ptr to i32*, !dbg !4420
  %15 = load i32, i32* %14, align 4, !dbg !4421
  store i32 %15, i32* %ret, align 4, !dbg !4422
  %16 = load i32, i32* %ret, align 4, !dbg !4423
  %17 = load i8, i8* %enable.addr, align 1, !dbg !4425
  %tobool8 = trunc i8 %17 to i1, !dbg !4425
  %conv9 = zext i1 %tobool8 to i32, !dbg !4425
  %cmp10 = icmp ne i32 %16, %conv9, !dbg !4426
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4427

if.then12:                                        ; preds = %if.then5
  store i32 -1, i32* %result, align 4, !dbg !4428
  br label %if.end13, !dbg !4429

if.end13:                                         ; preds = %if.then12, %if.then5
  br label %if.end14, !dbg !4430

if.else:                                          ; preds = %if.end
  store i32 -1, i32* %result, align 4, !dbg !4431
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end13
  %ret15 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %context, i32 0, i32 3, !dbg !4432
  %pointer16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %ret15, i32 0, i32 1, !dbg !4433
  %18 = load i8*, i8** %pointer16, align 8, !dbg !4433
  call void @kfree(i8* %18) #8, !dbg !4434
  %19 = load i32, i32* %result, align 4, !dbg !4435
  store i32 %19, i32* %retval, align 4, !dbg !4436
  br label %return, !dbg !4436

return:                                           ; preds = %if.end14, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4437
  ret i32 %20, !dbg !4437
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local i32 @acpi_run_osc(i8*, %struct.acpi_osc_context*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @available_uuids_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !4438 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %priv = alloca %struct.int3400_thermal_priv*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4443, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv, metadata !4445, metadata !DIExpression()), !dbg !4446
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4447
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4448
  %1 = bitcast i8* %call to %struct.int3400_thermal_priv*, !dbg !4448
  store %struct.int3400_thermal_priv* %1, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4446
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4449, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.declare(metadata i32* %length, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i32 0, i32* %length, align 4, !dbg !4452
  %2 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4453
  %uuid_bitmap = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %2, i32 0, i32 7, !dbg !4455
  %3 = load i8, i8* %uuid_bitmap, align 8, !dbg !4455
  %tobool = icmp ne i8 %3, 0, !dbg !4453
  br i1 %tobool, label %if.end, label %if.then, !dbg !4456

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4457
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !4458
  %conv = sext i32 %call1 to i64, !dbg !4458
  store i64 %conv, i64* %retval, align 8, !dbg !4459
  br label %return, !dbg !4459

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4460
  br label %for.cond, !dbg !4462

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !4463
  %cmp = icmp slt i32 %5, 10, !dbg !4465
  br i1 %cmp, label %for.body, label %for.end, !dbg !4466

for.body:                                         ; preds = %for.cond
  %6 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4467
  %uuid_bitmap3 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %6, i32 0, i32 7, !dbg !4470
  %7 = load i8, i8* %uuid_bitmap3, align 8, !dbg !4470
  %conv4 = zext i8 %7 to i32, !dbg !4467
  %8 = load i32, i32* %i, align 4, !dbg !4471
  %shl = shl i32 1, %8, !dbg !4472
  %and = and i32 %conv4, %shl, !dbg !4473
  %tobool5 = icmp ne i32 %and, 0, !dbg !4473
  br i1 %tobool5, label %if.then6, label %if.end17, !dbg !4474

if.then6:                                         ; preds = %for.body
  %9 = load i32, i32* %length, align 4, !dbg !4475
  %conv7 = sext i32 %9 to i64, !dbg !4475
  %sub = sub i64 4096, %conv7, !dbg !4477
  %cmp8 = icmp ugt i64 %sub, 0, !dbg !4478
  br i1 %cmp8, label %if.then10, label %if.end16, !dbg !4479

if.then10:                                        ; preds = %if.then6
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !4480
  %11 = load i32, i32* %length, align 4, !dbg !4481
  %idxprom = sext i32 %11 to i64, !dbg !4480
  %arrayidx = getelementptr i8, i8* %10, i64 %idxprom, !dbg !4480
  %12 = load i32, i32* %length, align 4, !dbg !4482
  %conv11 = sext i32 %12 to i64, !dbg !4482
  %sub12 = sub i64 4096, %conv11, !dbg !4483
  %13 = load i32, i32* %i, align 4, !dbg !4484
  %idxprom13 = sext i32 %13 to i64, !dbg !4485
  %arrayidx14 = getelementptr [10 x i8*], [10 x i8*]* @int3400_thermal_uuids, i64 0, i64 %idxprom13, !dbg !4485
  %14 = load i8*, i8** %arrayidx14, align 8, !dbg !4485
  %call15 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %arrayidx, i64 %sub12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %14) #8, !dbg !4486
  %15 = load i32, i32* %length, align 4, !dbg !4487
  %add = add i32 %15, %call15, !dbg !4487
  store i32 %add, i32* %length, align 4, !dbg !4487
  br label %if.end16, !dbg !4488

if.end16:                                         ; preds = %if.then10, %if.then6
  br label %if.end17, !dbg !4489

if.end17:                                         ; preds = %if.end16, %for.body
  br label %for.inc, !dbg !4490

for.inc:                                          ; preds = %if.end17
  %16 = load i32, i32* %i, align 4, !dbg !4491
  %inc = add i32 %16, 1, !dbg !4491
  store i32 %inc, i32* %i, align 4, !dbg !4491
  br label %for.cond, !dbg !4492, !llvm.loop !4493

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %length, align 4, !dbg !4495
  %conv18 = sext i32 %17 to i64, !dbg !4495
  store i64 %conv18, i64* %retval, align 8, !dbg !4496
  br label %return, !dbg !4496

return:                                           ; preds = %for.end, %if.then
  %18 = load i64, i64* %retval, align 8, !dbg !4497
  ret i64 %18, !dbg !4497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !4498 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4503
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4504
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4504
  ret i8* %1, !dbg !4505
}

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @current_uuid_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #2 !dbg !4506 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %priv = alloca %struct.int3400_thermal_priv*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !4509, metadata !DIExpression()), !dbg !4510
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4511, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv, metadata !4513, metadata !DIExpression()), !dbg !4514
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4515
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4516
  %1 = bitcast i8* %call to %struct.int3400_thermal_priv*, !dbg !4516
  store %struct.int3400_thermal_priv* %1, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4514
  %2 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4517
  %current_uuid_index = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %2, i32 0, i32 9, !dbg !4519
  %3 = load i32, i32* %current_uuid_index, align 8, !dbg !4519
  %cmp = icmp eq i32 %3, -1, !dbg !4520
  br i1 %cmp, label %if.then, label %if.end, !dbg !4521

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4522
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !4523
  %conv = sext i32 %call1 to i64, !dbg !4523
  store i64 %conv, i64* %retval, align 8, !dbg !4524
  br label %return, !dbg !4524

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4525
  %6 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4526
  %current_uuid_index2 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %6, i32 0, i32 9, !dbg !4527
  %7 = load i32, i32* %current_uuid_index2, align 8, !dbg !4527
  %idxprom = sext i32 %7 to i64, !dbg !4528
  %arrayidx = getelementptr [10 x i8*], [10 x i8*]* @int3400_thermal_uuids, i64 0, i64 %idxprom, !dbg !4528
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !4528
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %8) #8, !dbg !4529
  %conv4 = sext i32 %call3 to i64, !dbg !4529
  store i64 %conv4, i64* %retval, align 8, !dbg !4530
  br label %return, !dbg !4530

return:                                           ; preds = %if.end, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !4531
  ret i64 %9, !dbg !4531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @current_uuid_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !4532 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %priv = alloca %struct.int3400_thermal_priv*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4533, metadata !DIExpression()), !dbg !4534
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4535, metadata !DIExpression()), !dbg !4536
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4537, metadata !DIExpression()), !dbg !4538
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv, metadata !4541, metadata !DIExpression()), !dbg !4542
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4543
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4544
  %1 = bitcast i8* %call to %struct.int3400_thermal_priv*, !dbg !4544
  store %struct.int3400_thermal_priv* %1, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4542
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4545, metadata !DIExpression()), !dbg !4546
  store i32 0, i32* %i, align 4, !dbg !4547
  br label %for.cond, !dbg !4549

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4550
  %cmp = icmp slt i32 %2, 10, !dbg !4552
  br i1 %cmp, label %for.body, label %for.end, !dbg !4553

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4554
  %4 = load i32, i32* %i, align 4, !dbg !4557
  %idxprom = sext i32 %4 to i64, !dbg !4558
  %arrayidx = getelementptr [10 x i8*], [10 x i8*]* @int3400_thermal_uuids, i64 0, i64 %idxprom, !dbg !4558
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !4558
  %call1 = call i32 @strncmp(i8* %3, i8* %5, i64 7) #8, !dbg !4559
  %tobool = icmp ne i32 %call1, 0, !dbg !4559
  br i1 %tobool, label %if.end7, label %if.then, !dbg !4560

if.then:                                          ; preds = %for.body
  %6 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4561
  %uuid_bitmap = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %6, i32 0, i32 7, !dbg !4564
  %7 = load i8, i8* %uuid_bitmap, align 8, !dbg !4564
  %conv = zext i8 %7 to i32, !dbg !4561
  %tobool2 = icmp ne i32 %conv, 0, !dbg !4561
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !4565

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4566
  %uuid_bitmap3 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %8, i32 0, i32 7, !dbg !4567
  %9 = load i8, i8* %uuid_bitmap3, align 8, !dbg !4567
  %conv4 = zext i8 %9 to i32, !dbg !4566
  %10 = load i32, i32* %i, align 4, !dbg !4568
  %shl = shl i32 1, %10, !dbg !4569
  %and = and i32 %conv4, %shl, !dbg !4570
  %tobool5 = icmp ne i32 %and, 0, !dbg !4570
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !4571

if.then6:                                         ; preds = %land.lhs.true
  store i64 -22, i64* %retval, align 8, !dbg !4572
  br label %return, !dbg !4572

if.end:                                           ; preds = %land.lhs.true, %if.then
  %11 = load i32, i32* %i, align 4, !dbg !4573
  %12 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4574
  %current_uuid_index = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %12, i32 0, i32 9, !dbg !4575
  store i32 %11, i32* %current_uuid_index, align 8, !dbg !4576
  %13 = load i64, i64* %count.addr, align 8, !dbg !4577
  store i64 %13, i64* %retval, align 8, !dbg !4578
  br label %return, !dbg !4578

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !4579

for.inc:                                          ; preds = %if.end7
  %14 = load i32, i32* %i, align 4, !dbg !4580
  %inc = add i32 %14, 1, !dbg !4580
  store i32 %inc, i32* %i, align 4, !dbg !4580
  br label %for.cond, !dbg !4581, !llvm.loop !4582

for.end:                                          ; preds = %for.cond
  store i64 -22, i64* %retval, align 8, !dbg !4584
  br label %return, !dbg !4584

return:                                           ; preds = %for.end, %if.end, %if.then6
  %15 = load i64, i64* %retval, align 8, !dbg !4585
  ret i64 %15, !dbg !4585
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @imok_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !4586 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %priv = alloca %struct.int3400_thermal_priv*, align 8
  %status = alloca i32, align 4
  %input = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4587, metadata !DIExpression()), !dbg !4588
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4589, metadata !DIExpression()), !dbg !4590
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4591, metadata !DIExpression()), !dbg !4592
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.declare(metadata %struct.int3400_thermal_priv** %priv, metadata !4595, metadata !DIExpression()), !dbg !4596
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4597
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4598
  %1 = bitcast i8* %call to %struct.int3400_thermal_priv*, !dbg !4598
  store %struct.int3400_thermal_priv* %1, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4596
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4599, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.declare(metadata i32* %input, metadata !4601, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4603, metadata !DIExpression()), !dbg !4604
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4605
  %call1 = call i32 @kstrtouint(i8* %2, i32 10, i32* %input) #8, !dbg !4606
  store i32 %call1, i32* %ret, align 4, !dbg !4607
  %3 = load i32, i32* %ret, align 4, !dbg !4608
  %tobool = icmp ne i32 %3, 0, !dbg !4608
  br i1 %tobool, label %if.then, label %if.end, !dbg !4610

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !4611
  %conv = sext i32 %4 to i64, !dbg !4611
  store i64 %conv, i64* %retval, align 8, !dbg !4612
  br label %return, !dbg !4612

if.end:                                           ; preds = %entry
  %5 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %priv, align 8, !dbg !4613
  %adev = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %5, i32 0, i32 0, !dbg !4614
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4614
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1, !dbg !4615
  %7 = load i8*, i8** %handle, align 8, !dbg !4615
  %8 = load i32, i32* %input, align 4, !dbg !4616
  %conv2 = sext i32 %8 to i64, !dbg !4616
  %call3 = call i32 @acpi_execute_simple_method(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i64 %conv2) #8, !dbg !4617
  store i32 %call3, i32* %status, align 4, !dbg !4618
  %9 = load i32, i32* %status, align 4, !dbg !4619
  %tobool4 = icmp ne i32 %9, 0, !dbg !4619
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4621

if.then5:                                         ; preds = %if.end
  store i64 -5, i64* %retval, align 8, !dbg !4622
  br label %return, !dbg !4622

if.end6:                                          ; preds = %if.end
  %10 = load i64, i64* %count.addr, align 8, !dbg !4623
  store i64 %10, i64* %retval, align 8, !dbg !4624
  br label %return, !dbg !4624

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !4625
  ret i64 %11, !dbg !4625
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_execute_simple_method(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr) #2 !dbg !4626 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4629, metadata !DIExpression()), !dbg !4630
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4633
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4634
  call void @sysfs_remove_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #8, !dbg !4635
  ret void, !dbg !4636
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_file_ns(%struct.kobject*, %struct.attribute*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !4637 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4644
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !4645
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !4646
  ret i8* %call, !dbg !4647
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_notify_handler(i8*, i32, void (i8*, i32, i8*)*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2852, !2853, !2854, !2855}
!llvm.ident = !{!2856}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_int3400_thermal_driver_init171", scope: !2, file: !3, line: 601, type: !134, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !2758, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/int3400_thermal.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69, !75, !83, !94, !99, !106, !119}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !65, line: 7, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !65, line: 12, baseType: !7, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !76, line: 40, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!82 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !76, line: 49, baseType: !7, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93}
!85 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!86 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!89 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!90 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!91 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!92 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!93 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 10, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !100, line: 305, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "int3400_thermal_uuid", file: !3, line: 19, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!108 = !DIEnumerator(name: "INT3400_THERMAL_PASSIVE_1", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "INT3400_THERMAL_ACTIVE", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "INT3400_THERMAL_CRITICAL", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "INT3400_THERMAL_ADAPTIVE_PERFORMANCE", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "INT3400_THERMAL_EMERGENCY_CALL_MODE", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "INT3400_THERMAL_PASSIVE_2", value: 5, isUnsigned: true)
!114 = !DIEnumerator(name: "INT3400_THERMAL_POWER_BOSS", value: 6, isUnsigned: true)
!115 = !DIEnumerator(name: "INT3400_THERMAL_VIRTUAL_SENSOR", value: 7, isUnsigned: true)
!116 = !DIEnumerator(name: "INT3400_THERMAL_COOLING_MODE", value: 8, isUnsigned: true)
!117 = !DIEnumerator(name: "INT3400_THERMAL_HARDWARE_DUTY_CYCLING", value: 9, isUnsigned: true)
!118 = !DIEnumerator(name: "INT3400_THERMAL_MAXIMUM_UUID", value: 10, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !120, line: 53, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129}
!122 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!126 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!127 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!128 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!129 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!130 = !{!131, !134, !135, !1557, !2264, !2481, !2488, !718, !294, !279}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !133, line: 76, flags: DIFlagFwdDecl)
!133 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !137, line: 351, size: 10880, elements: !138)
!137 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !141, !144, !2208, !2209, !2210, !2211, !2212, !2213, !2222, !2239, !2313, !2342, !2366, !2387, !2393, !2402, !2434, !2448, !2470, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !136, file: !137, line: 352, baseType: !140, size: 32)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !136, file: !137, line: 353, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !143, line: 424, baseType: !134)
!143 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !136, file: !137, line: 354, baseType: !145, size: 192, offset: 128)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !146, line: 17, size: 192, elements: !147)
!146 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !150, !2207}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !145, file: !146, line: 18, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !145, file: !146, line: 19, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !146, line: 110, size: 1152, elements: !154)
!154 = !{!155, !159, !163, !172, !2149, !2153, !2157, !2162, !2166, !2167, !2171, !2175, !2179, !2190, !2191, !2192, !2193, !2203}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !153, file: !146, line: 111, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!149, !149}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !153, file: !146, line: 112, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !149}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !153, file: !146, line: 113, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !170}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !168, line: 30, baseType: !169)
!168 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !153, file: !146, line: 114, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !170, !178}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !181)
!181 = !{!182, !1685, !1687, !1690, !1691, !1742, !1836, !1837, !1838, !1839, !1840, !1849, !1954, !1967, !2074, !2075, !2079, !2081, !2082, !2083, !2087, !2093, !2094, !2097, !2098, !2099, !2102, !2103, !2104, !2105, !2137, !2138, !2139, !2142, !2145, !2146, !2147, !2148}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !180, file: !30, line: 462, baseType: !183, size: 512)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !120, line: 64, size: 512, elements: !184)
!184 = !{!185, !189, !195, !197, !257, !1521, !1675, !1680, !1681, !1682, !1683, !1684}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !120, line: 65, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !183, file: !120, line: 66, baseType: !190, size: 128, offset: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !168, line: 178, size: 128, elements: !191)
!191 = !{!192, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !168, line: 179, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !190, file: !168, line: 179, baseType: !193, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !120, line: 67, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !183, file: !120, line: 68, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !120, line: 192, size: 704, elements: !200)
!200 = !{!201, !202, !218, !219}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !199, file: !120, line: 193, baseType: !190, size: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !199, file: !120, line: 194, baseType: !203, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !204, line: 83, baseType: !205)
!204 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !204, line: 71, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 72, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 72, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !208, file: !204, line: 73, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !204, line: 20, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !211, file: !204, line: 21, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !215, line: 25, baseType: !216)
!215 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 25, elements: !217)
!217 = !{}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !199, file: !120, line: 195, baseType: !183, size: 512, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !199, file: !120, line: 196, baseType: !220, size: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !120, line: 156, size: 192, elements: !223)
!223 = !{!224, !229, !234}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !222, file: !120, line: 157, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!140, !198, !196}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !120, line: 158, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!186, !198, !196}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !222, file: !120, line: 159, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!140, !198, !196, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !120, line: 148, size: 20736, elements: !241)
!241 = !{!242, !247, !251, !252, !256}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !240, file: !120, line: 149, baseType: !243, size: 192)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 192, elements: !245)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!245 = !{!246}
!246 = !DISubrange(count: 3)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !240, file: !120, line: 150, baseType: !248, size: 4096, offset: 192)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 4096, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !240, file: !120, line: 151, baseType: !140, size: 32, offset: 4288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !240, file: !120, line: 152, baseType: !253, size: 16384, offset: 4320)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 16384, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 2048)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !240, file: !120, line: 153, baseType: !140, size: 32, offset: 20704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !183, file: !120, line: 69, baseType: !258, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !120, line: 138, size: 448, elements: !260)
!260 = !{!261, !265, !295, !297, !1469, !1500, !1504}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !259, file: !120, line: 139, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !196}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !259, file: !120, line: 140, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !269, line: 230, size: 128, elements: !270)
!269 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!270 = !{!271, !287}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !268, file: !269, line: 231, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !196, !280, !244}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !168, line: 60, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !277, line: 73, baseType: !278)
!277 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !277, line: 15, baseType: !279)
!279 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !269, line: 30, size: 128, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !269, line: 31, baseType: !186, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !281, file: !269, line: 32, baseType: !285, size: 16, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !168, line: 19, baseType: !286)
!286 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !268, file: !269, line: 232, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!275, !196, !280, !186, !291}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 55, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !277, line: 72, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !277, line: 16, baseType: !294)
!294 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !259, file: !120, line: 141, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !259, file: !120, line: 142, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !269, line: 84, size: 320, elements: !302)
!302 = !{!303, !304, !308, !1466, !1467}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !269, line: 85, baseType: !186, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !301, file: !269, line: 86, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!285, !196, !280, !140}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !301, file: !269, line: 88, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!285, !196, !312, !140}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !269, line: 168, size: 448, elements: !314)
!314 = !{!315, !316, !317, !318, !328, !329}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !313, file: !269, line: 169, baseType: !281, size: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !313, file: !269, line: 170, baseType: !291, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !313, file: !269, line: 171, baseType: !134, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !313, file: !269, line: 172, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!275, !322, !196, !312, !244, !325, !291}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !324, line: 526, flags: DIFlagFwdDecl)
!324 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !168, line: 46, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !277, line: 88, baseType: !327)
!327 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !313, file: !269, line: 174, baseType: !319, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !313, file: !269, line: 176, baseType: !330, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!140, !322, !196, !312, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !335, line: 305, size: 1472, elements: !336)
!335 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!336 = !{!337, !338, !339, !340, !341, !349, !350, !1440, !1446, !1447, !1452, !1453, !1456, !1460, !1461, !1462, !1463, !1464}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !334, file: !335, line: 308, baseType: !294, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !334, file: !335, line: 309, baseType: !294, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !334, file: !335, line: 313, baseType: !333, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !334, file: !335, line: 313, baseType: !333, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !334, file: !335, line: 315, baseType: !342, size: 192, align: 64, offset: 256)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !343, line: 24, size: 192, align: 64, elements: !344)
!343 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!344 = !{!345, !346, !348}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !342, file: !343, line: 25, baseType: !294, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !342, file: !343, line: 26, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !342, file: !343, line: 27, baseType: !347, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !334, file: !335, line: 323, baseType: !294, size: 64, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !334, file: !335, line: 327, baseType: !351, size: 64, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !335, line: 388, size: 7296, elements: !353)
!353 = !{!354, !1436}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !335, line: 389, baseType: !355, size: 7296)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !335, line: 389, size: 7296, elements: !356)
!356 = !{!357, !358, !362, !368, !372, !373, !374, !375, !376, !384, !389, !390, !391, !392, !401, !402, !403, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !438, !446, !449, !497, !498, !1406, !1407, !1410, !1414, !1415, !1418, !1419, !1420, !1423, !1435}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !355, file: !335, line: 390, baseType: !333, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !355, file: !335, line: 391, baseType: !359, size: 64, offset: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !343, line: 31, size: 64, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !359, file: !343, line: 32, baseType: !347, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !355, file: !335, line: 392, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !364, line: 23, baseType: !365)
!364 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !366, line: 31, baseType: !367)
!366 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !355, file: !335, line: 394, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!294, !322, !294, !294, !294, !294}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !355, file: !335, line: 398, baseType: !294, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !355, file: !335, line: 399, baseType: !294, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !355, file: !335, line: 405, baseType: !294, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !355, file: !335, line: 406, baseType: !294, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !355, file: !335, line: 407, baseType: !377, size: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !324, line: 286, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 286, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !379, file: !324, line: 286, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !383, line: 18, baseType: !294)
!383 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !355, file: !335, line: 416, baseType: !385, size: 32, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !168, line: 168, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 166, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !386, file: !168, line: 167, baseType: !140, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !355, file: !335, line: 428, baseType: !385, size: 32, offset: 608)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !355, file: !335, line: 437, baseType: !385, size: 32, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !355, file: !335, line: 447, baseType: !385, size: 32, offset: 672)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !355, file: !335, line: 450, baseType: !393, size: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !394, line: 13, baseType: !395)
!394 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !168, line: 175, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 173, size: 64, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !396, file: !168, line: 174, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !364, line: 22, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !366, line: 30, baseType: !327)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !355, file: !335, line: 452, baseType: !140, size: 32, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !355, file: !335, line: 454, baseType: !203, offset: 800)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !355, file: !335, line: 457, baseType: !404, size: 256, offset: 832)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !405, line: 35, size: 256, elements: !406)
!405 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !408, !409, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !404, file: !405, line: 36, baseType: !393, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !404, file: !405, line: 42, baseType: !393, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !404, file: !405, line: 46, baseType: !410, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !204, line: 29, baseType: !211)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !404, file: !405, line: 47, baseType: !190, size: 128, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !355, file: !335, line: 459, baseType: !190, size: 128, offset: 1088)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !355, file: !335, line: 466, baseType: !294, size: 64, offset: 1216)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !355, file: !335, line: 467, baseType: !294, size: 64, offset: 1280)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !355, file: !335, line: 469, baseType: !294, size: 64, offset: 1344)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !355, file: !335, line: 470, baseType: !294, size: 64, offset: 1408)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !355, file: !335, line: 471, baseType: !395, size: 64, offset: 1472)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !355, file: !335, line: 472, baseType: !294, size: 64, offset: 1536)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !355, file: !335, line: 473, baseType: !294, size: 64, offset: 1600)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !355, file: !335, line: 474, baseType: !294, size: 64, offset: 1664)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !355, file: !335, line: 475, baseType: !294, size: 64, offset: 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !355, file: !335, line: 477, baseType: !203, offset: 1792)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !355, file: !335, line: 478, baseType: !294, size: 64, offset: 1792)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !355, file: !335, line: 478, baseType: !294, size: 64, offset: 1856)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !355, file: !335, line: 478, baseType: !294, size: 64, offset: 1920)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !355, file: !335, line: 478, baseType: !294, size: 64, offset: 1984)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !355, file: !335, line: 479, baseType: !294, size: 64, offset: 2048)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !355, file: !335, line: 479, baseType: !294, size: 64, offset: 2112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !355, file: !335, line: 479, baseType: !294, size: 64, offset: 2176)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !355, file: !335, line: 480, baseType: !294, size: 64, offset: 2240)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !355, file: !335, line: 480, baseType: !294, size: 64, offset: 2304)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !355, file: !335, line: 480, baseType: !294, size: 64, offset: 2368)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !355, file: !335, line: 480, baseType: !294, size: 64, offset: 2432)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !355, file: !335, line: 482, baseType: !435, size: 2816, offset: 2496)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 2816, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 44)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !355, file: !335, line: 488, baseType: !439, size: 256, offset: 5312)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !440, line: 60, size: 256, elements: !441)
!440 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !439, file: !440, line: 61, baseType: !443, size: 256)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 256, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 4)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !355, file: !335, line: 490, baseType: !447, size: 64, offset: 5568)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !335, line: 490, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !355, file: !335, line: 493, baseType: !450, size: 896, offset: 5632)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !451, line: 53, baseType: !452)
!451 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 896, elements: !453)
!453 = !{!454, !455, !456, !457, !460, !461, !468, !469, !489, !490, !493}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !452, file: !451, line: 18, baseType: !363, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !452, file: !451, line: 28, baseType: !395, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !452, file: !451, line: 31, baseType: !404, size: 256, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !452, file: !451, line: 32, baseType: !458, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !451, line: 32, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !452, file: !451, line: 37, baseType: !286, size: 16, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !452, file: !451, line: 40, baseType: !462, size: 192, offset: 512)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !463, line: 53, size: 192, elements: !464)
!463 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!464 = !{!465, !466, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !462, file: !463, line: 54, baseType: !393, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !462, file: !463, line: 55, baseType: !203, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !462, file: !463, line: 59, baseType: !190, size: 128, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !452, file: !451, line: 41, baseType: !134, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !452, file: !451, line: 42, baseType: !470, size: 64, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !473, line: 13, size: 896, elements: !474)
!473 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !472, file: !473, line: 14, baseType: !134, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !472, file: !473, line: 15, baseType: !294, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !472, file: !473, line: 17, baseType: !294, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !472, file: !473, line: 17, baseType: !294, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !472, file: !473, line: 19, baseType: !279, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !472, file: !473, line: 21, baseType: !279, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !472, file: !473, line: 22, baseType: !279, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !472, file: !473, line: 23, baseType: !279, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !472, file: !473, line: 24, baseType: !279, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !472, file: !473, line: 25, baseType: !279, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !472, file: !473, line: 26, baseType: !279, size: 64, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !472, file: !473, line: 27, baseType: !279, size: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !472, file: !473, line: 28, baseType: !279, size: 64, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !472, file: !473, line: 29, baseType: !279, size: 64, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !452, file: !451, line: 44, baseType: !385, size: 32, offset: 832)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !452, file: !451, line: 50, baseType: !491, size: 16, offset: 864)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !364, line: 19, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !366, line: 24, baseType: !286)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !452, file: !451, line: 51, baseType: !494, size: 16, offset: 880)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !364, line: 18, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !366, line: 23, baseType: !496)
!496 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !335, line: 495, baseType: !294, size: 64, offset: 6528)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !355, file: !335, line: 497, baseType: !499, size: 64, offset: 6592)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !335, line: 381, size: 384, elements: !501)
!501 = !{!502, !503, !1405}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !500, file: !335, line: 382, baseType: !385, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !500, file: !335, line: 383, baseType: !504, size: 128, offset: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !335, line: 376, size: 128, elements: !505)
!505 = !{!506, !1403}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !504, file: !335, line: 377, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !509, line: 640, size: 48640, elements: !510)
!509 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !519, !521, !522, !528, !529, !530, !531, !532, !533, !534, !535, !539, !557, !568, !663, !664, !665, !676, !677, !679, !680, !681, !682, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !761, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !817, !819, !820, !821, !833, !835, !836, !837, !838, !839, !845, !846, !847, !848, !849, !850, !851, !863, !868, !873, !874, !875, !878, !882, !885, !888, !891, !894, !898, !901, !904, !910, !911, !912, !918, !919, !920, !921, !922, !931, !932, !933, !934, !935, !940, !941, !942, !945, !946, !949, !952, !955, !958, !961, !964, !965, !1045, !1048, !1051, !1052, !1055, !1056, !1057, !1063, !1064, !1065, !1078, !1079, !1080, !1090, !1095, !1098, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !508, file: !509, line: 646, baseType: !512, size: 128)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !513, line: 56, size: 128, elements: !514)
!513 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !513, line: 57, baseType: !294, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !512, file: !513, line: 58, baseType: !517, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !364, line: 21, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !366, line: 27, baseType: !7)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !508, file: !509, line: 649, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !279)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !508, file: !509, line: 657, baseType: !134, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !508, file: !509, line: 658, baseType: !523, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !524, line: 113, baseType: !525)
!524 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !524, line: 111, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !525, file: !524, line: 112, baseType: !385, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !509, line: 660, baseType: !7, size: 32, offset: 288)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !508, file: !509, line: 661, baseType: !7, size: 32, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !508, file: !509, line: 684, baseType: !140, size: 32, offset: 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !508, file: !509, line: 686, baseType: !140, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !508, file: !509, line: 687, baseType: !140, size: 32, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !508, file: !509, line: 688, baseType: !140, size: 32, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !508, file: !509, line: 689, baseType: !7, size: 32, offset: 480)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !508, file: !509, line: 691, baseType: !536, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !509, line: 691, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !508, file: !509, line: 692, baseType: !540, size: 832, offset: 576)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !509, line: 451, size: 832, elements: !541)
!541 = !{!542, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !540, file: !509, line: 453, baseType: !543, size: 128)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !509, line: 325, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !543, file: !509, line: 326, baseType: !294, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !543, file: !509, line: 327, baseType: !517, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !540, file: !509, line: 454, baseType: !342, size: 192, align: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !540, file: !509, line: 455, baseType: !190, size: 128, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !540, file: !509, line: 456, baseType: !7, size: 32, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !540, file: !509, line: 458, baseType: !363, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !540, file: !509, line: 459, baseType: !363, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !540, file: !509, line: 460, baseType: !363, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !540, file: !509, line: 461, baseType: !363, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !540, file: !509, line: 463, baseType: !363, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !540, file: !509, line: 465, baseType: !556, offset: 832)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !509, line: 415, elements: !217)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !508, file: !509, line: 693, baseType: !558, size: 384, offset: 1408)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !509, line: 489, size: 384, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !558, file: !509, line: 490, baseType: !190, size: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !558, file: !509, line: 491, baseType: !294, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !558, file: !509, line: 492, baseType: !294, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !558, file: !509, line: 493, baseType: !7, size: 32, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !558, file: !509, line: 494, baseType: !286, size: 16, offset: 288)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !558, file: !509, line: 495, baseType: !286, size: 16, offset: 304)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !558, file: !509, line: 497, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !508, file: !509, line: 697, baseType: !569, size: 1792, offset: 1792)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !509, line: 507, size: 1792, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !660, !661}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !569, file: !509, line: 508, baseType: !342, size: 192, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !569, file: !509, line: 515, baseType: !363, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !569, file: !509, line: 516, baseType: !363, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !569, file: !509, line: 517, baseType: !363, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !569, file: !509, line: 518, baseType: !363, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !569, file: !509, line: 519, baseType: !363, size: 64, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !569, file: !509, line: 526, baseType: !399, size: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !569, file: !509, line: 527, baseType: !363, size: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !509, line: 528, baseType: !7, size: 32, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !569, file: !509, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !569, file: !509, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !569, file: !509, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !569, file: !509, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !569, file: !509, line: 563, baseType: !585, size: 512, offset: 704)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !586)
!586 = !{!587, !595, !596, !601, !653, !657, !658, !659}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !585, file: !6, line: 119, baseType: !588, size: 256)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !589, line: 9, size: 256, elements: !590)
!589 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !588, file: !589, line: 10, baseType: !342, size: 192, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !588, file: !589, line: 11, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !594, line: 29, baseType: !399)
!594 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !585, file: !6, line: 120, baseType: !593, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !585, file: !6, line: 121, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!5, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !585, file: !6, line: 122, baseType: !602, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !604)
!604 = !{!605, !625, !626, !629, !639, !640, !648, !652}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !603, file: !6, line: 160, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !607, file: !6, line: 215, baseType: !410)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !607, file: !6, line: 216, baseType: !7, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !607, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !607, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !607, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !607, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !607, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !607, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !607, file: !6, line: 233, baseType: !593, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !607, file: !6, line: 234, baseType: !600, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !607, file: !6, line: 235, baseType: !593, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !607, file: !6, line: 236, baseType: !600, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !607, file: !6, line: 237, baseType: !622, size: 4096, offset: 512)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 4096, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 8)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !603, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !603, file: !6, line: 162, baseType: !627, size: 32, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !168, line: 27, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !277, line: 96, baseType: !140)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !603, file: !6, line: 163, baseType: !630, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !631, line: 276, baseType: !632)
!631 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !631, line: 276, size: 32, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !632, file: !631, line: 276, baseType: !635, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !631, line: 70, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !631, line: 65, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !636, file: !631, line: 66, baseType: !7, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !603, file: !6, line: 164, baseType: !600, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !603, file: !6, line: 165, baseType: !641, size: 128, offset: 256)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !589, line: 14, size: 128, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !641, file: !589, line: 15, baseType: !644, size: 128)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !343, line: 125, size: 128, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !644, file: !343, line: 126, baseType: !359, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !644, file: !343, line: 127, baseType: !347, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !603, file: !6, line: 166, baseType: !649, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!593}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !603, file: !6, line: 167, baseType: !593, size: 64, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !585, file: !6, line: 123, baseType: !654, size: 8, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !364, line: 17, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !366, line: 21, baseType: !656)
!656 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !585, file: !6, line: 124, baseType: !654, size: 8, offset: 456)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !585, file: !6, line: 125, baseType: !654, size: 8, offset: 464)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !585, file: !6, line: 126, baseType: !654, size: 8, offset: 472)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !569, file: !509, line: 572, baseType: !585, size: 512, offset: 1216)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !569, file: !509, line: 580, baseType: !662, size: 64, offset: 1728)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !508, file: !509, line: 721, baseType: !7, size: 32, offset: 3584)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !508, file: !509, line: 722, baseType: !140, size: 32, offset: 3616)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !508, file: !509, line: 723, baseType: !666, size: 64, offset: 3648)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !669, line: 17, baseType: !670)
!669 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !669, line: 17, size: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !670, file: !669, line: 17, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 64, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 1)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !508, file: !509, line: 724, baseType: !668, size: 64, offset: 3712)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !508, file: !509, line: 749, baseType: !678, offset: 3776)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !509, line: 290, elements: !217)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !508, file: !509, line: 751, baseType: !190, size: 128, offset: 3776)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !508, file: !509, line: 757, baseType: !351, size: 64, offset: 3904)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !508, file: !509, line: 758, baseType: !351, size: 64, offset: 3968)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !508, file: !509, line: 761, baseType: !683, size: 320, offset: 4032)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !440, line: 34, size: 320, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !683, file: !440, line: 35, baseType: !363, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !683, file: !440, line: 36, baseType: !687, size: 256, offset: 64)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 256, elements: !444)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !508, file: !509, line: 766, baseType: !140, size: 32, offset: 4352)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !508, file: !509, line: 767, baseType: !140, size: 32, offset: 4384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !508, file: !509, line: 768, baseType: !140, size: 32, offset: 4416)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !508, file: !509, line: 770, baseType: !140, size: 32, offset: 4448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !508, file: !509, line: 772, baseType: !294, size: 64, offset: 4480)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !508, file: !509, line: 775, baseType: !7, size: 32, offset: 4544)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !508, file: !509, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !508, file: !509, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !508, file: !509, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !508, file: !509, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !508, file: !509, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !508, file: !509, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !508, file: !509, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !508, file: !509, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !508, file: !509, line: 831, baseType: !294, size: 64, offset: 4672)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !508, file: !509, line: 833, baseType: !704, size: 384, offset: 4736)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !705)
!705 = !{!706, !711}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !704, file: !12, line: 26, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!279, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !12, line: 27, baseType: !712, size: 320, offset: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !12, line: 27, size: 320, elements: !713)
!713 = !{!714, !724, !751}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !712, file: !12, line: 36, baseType: !715, size: 320)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !712, file: !12, line: 29, size: 320, elements: !716)
!716 = !{!717, !719, !720, !721, !722, !723}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !715, file: !12, line: 30, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !715, file: !12, line: 31, baseType: !517, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !12, line: 32, baseType: !517, size: 32, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !715, file: !12, line: 33, baseType: !517, size: 32, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !715, file: !12, line: 34, baseType: !363, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !715, file: !12, line: 35, baseType: !718, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !712, file: !12, line: 46, baseType: !725, size: 192)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !712, file: !12, line: 38, size: 192, elements: !726)
!726 = !{!727, !728, !729, !750}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !725, file: !12, line: 39, baseType: !627, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !12, line: 41, baseType: !730, size: 64, offset: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !12, line: 41, size: 64, elements: !731)
!731 = !{!732, !740}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !730, file: !12, line: 42, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !735, line: 7, size: 128, elements: !736)
!735 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !734, file: !735, line: 8, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !277, line: 93, baseType: !327)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !734, file: !735, line: 9, baseType: !327, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !730, file: !12, line: 43, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !743, line: 7, size: 64, elements: !744)
!743 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!744 = !{!745, !749}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !742, file: !743, line: 8, baseType: !746, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !743, line: 5, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !364, line: 20, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !366, line: 26, baseType: !140)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !742, file: !743, line: 9, baseType: !747, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !725, file: !12, line: 45, baseType: !363, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !712, file: !12, line: 54, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !712, file: !12, line: 48, size: 256, elements: !753)
!753 = !{!754, !757, !758, !759, !760}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !752, file: !12, line: 49, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !752, file: !12, line: 50, baseType: !140, size: 32, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !752, file: !12, line: 51, baseType: !140, size: 32, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !752, file: !12, line: 52, baseType: !294, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !752, file: !12, line: 53, baseType: !294, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !508, file: !509, line: 835, baseType: !762, size: 32, offset: 5120)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !168, line: 22, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !277, line: 28, baseType: !140)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !508, file: !509, line: 836, baseType: !762, size: 32, offset: 5152)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !508, file: !509, line: 840, baseType: !294, size: 64, offset: 5184)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !508, file: !509, line: 849, baseType: !507, size: 64, offset: 5248)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !508, file: !509, line: 852, baseType: !507, size: 64, offset: 5312)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !508, file: !509, line: 857, baseType: !190, size: 128, offset: 5376)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !508, file: !509, line: 858, baseType: !190, size: 128, offset: 5504)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !508, file: !509, line: 859, baseType: !507, size: 64, offset: 5632)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !508, file: !509, line: 867, baseType: !190, size: 128, offset: 5696)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !508, file: !509, line: 868, baseType: !190, size: 128, offset: 5824)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !508, file: !509, line: 871, baseType: !774, size: 64, offset: 5952)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !776, line: 59, size: 768, elements: !777)
!776 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !779, !780, !781, !792, !793, !800, !809}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !775, file: !776, line: 61, baseType: !523, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !775, file: !776, line: 62, baseType: !7, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !776, line: 63, baseType: !203, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !775, file: !776, line: 65, baseType: !782, size: 256, offset: 64)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 256, elements: !444)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !168, line: 182, size: 64, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !783, file: !168, line: 183, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !168, line: 186, size: 128, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !787, file: !168, line: 187, baseType: !786, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !787, file: !168, line: 187, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !775, file: !776, line: 66, baseType: !783, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !775, file: !776, line: 68, baseType: !794, size: 128, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !795, line: 40, baseType: !796)
!795 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !795, line: 36, size: 128, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !796, file: !795, line: 37, baseType: !203)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !796, file: !795, line: 38, baseType: !190, size: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !775, file: !776, line: 69, baseType: !801, size: 128, align: 64, offset: 512)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !168, line: 216, size: 128, align: 64, elements: !802)
!802 = !{!803, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !168, line: 217, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !801, file: !168, line: 218, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !804}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !775, file: !776, line: 70, baseType: !810, size: 128, offset: 640)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 128, elements: !674)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !776, line: 54, size: 128, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !811, file: !776, line: 55, baseType: !140, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !811, file: !776, line: 56, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !776, line: 56, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !508, file: !509, line: 872, baseType: !818, size: 512, offset: 6016)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 512, elements: !444)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !508, file: !509, line: 873, baseType: !190, size: 128, offset: 6528)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !508, file: !509, line: 874, baseType: !190, size: 128, offset: 6656)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !508, file: !509, line: 876, baseType: !822, size: 64, offset: 6784)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !824, line: 26, size: 192, elements: !825)
!824 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !823, file: !824, line: 27, baseType: !7, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !823, file: !824, line: 28, baseType: !828, size: 128, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !829, line: 43, size: 128, elements: !830)
!829 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !828, file: !829, line: 44, baseType: !410)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !828, file: !829, line: 45, baseType: !190, size: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !508, file: !509, line: 879, baseType: !834, size: 64, offset: 6848)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !508, file: !509, line: 882, baseType: !834, size: 64, offset: 6912)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !508, file: !509, line: 884, baseType: !363, size: 64, offset: 6976)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !508, file: !509, line: 885, baseType: !363, size: 64, offset: 7040)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !508, file: !509, line: 890, baseType: !363, size: 64, offset: 7104)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !508, file: !509, line: 891, baseType: !840, size: 128, offset: 7168)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !509, line: 242, size: 128, elements: !841)
!841 = !{!842, !843, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !840, file: !509, line: 244, baseType: !363, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !840, file: !509, line: 245, baseType: !363, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !840, file: !509, line: 246, baseType: !410, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !508, file: !509, line: 900, baseType: !294, size: 64, offset: 7296)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !508, file: !509, line: 901, baseType: !294, size: 64, offset: 7360)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !508, file: !509, line: 904, baseType: !363, size: 64, offset: 7424)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !508, file: !509, line: 907, baseType: !363, size: 64, offset: 7488)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !508, file: !509, line: 910, baseType: !294, size: 64, offset: 7552)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !508, file: !509, line: 911, baseType: !294, size: 64, offset: 7616)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !508, file: !509, line: 914, baseType: !852, size: 640, offset: 7680)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !853, line: 123, size: 640, elements: !854)
!853 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!854 = !{!855, !861, !862}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !852, file: !853, line: 124, baseType: !856, size: 576)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 576, elements: !245)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !853, line: 108, size: 192, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !857, file: !853, line: 109, baseType: !363, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !857, file: !853, line: 110, baseType: !641, size: 128, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !852, file: !853, line: 125, baseType: !7, size: 32, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !852, file: !853, line: 126, baseType: !7, size: 32, offset: 608)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !508, file: !509, line: 917, baseType: !864, size: 192, offset: 8320)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !853, line: 134, size: 192, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !864, file: !853, line: 135, baseType: !801, size: 128, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !864, file: !853, line: 136, baseType: !7, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !508, file: !509, line: 923, baseType: !869, size: 64, offset: 8512)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !872, line: 11, flags: DIFlagFwdDecl)
!872 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!873 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !508, file: !509, line: 926, baseType: !869, size: 64, offset: 8576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !508, file: !509, line: 929, baseType: !869, size: 64, offset: 8640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !508, file: !509, line: 933, baseType: !876, size: 64, offset: 8704)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !509, line: 933, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !508, file: !509, line: 943, baseType: !879, size: 128, offset: 8768)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 16)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !508, file: !509, line: 945, baseType: !883, size: 64, offset: 8896)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !509, line: 49, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !508, file: !509, line: 956, baseType: !886, size: 64, offset: 8960)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !509, line: 45, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !508, file: !509, line: 959, baseType: !889, size: 64, offset: 9024)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !509, line: 959, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !508, file: !509, line: 962, baseType: !892, size: 64, offset: 9088)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !509, line: 66, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !508, file: !509, line: 966, baseType: !895, size: 64, offset: 9152)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !897, line: 35, flags: DIFlagFwdDecl)
!897 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !508, file: !509, line: 969, baseType: !899, size: 64, offset: 9216)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !853, line: 223, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !508, file: !509, line: 970, baseType: !902, size: 64, offset: 9280)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !509, line: 62, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !508, file: !509, line: 971, baseType: !905, size: 64, offset: 9344)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !906, line: 25, baseType: !907)
!906 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !906, line: 23, size: 64, elements: !908)
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !907, file: !906, line: 24, baseType: !673, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !508, file: !509, line: 972, baseType: !905, size: 64, offset: 9408)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !508, file: !509, line: 974, baseType: !905, size: 64, offset: 9472)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !508, file: !509, line: 975, baseType: !913, size: 192, offset: 9536)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !914, line: 30, size: 192, elements: !915)
!914 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !913, file: !914, line: 31, baseType: !190, size: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !913, file: !914, line: 32, baseType: !905, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !508, file: !509, line: 976, baseType: !294, size: 64, offset: 9728)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !508, file: !509, line: 977, baseType: !291, size: 64, offset: 9792)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !508, file: !509, line: 978, baseType: !7, size: 32, offset: 9856)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !508, file: !509, line: 980, baseType: !804, size: 64, offset: 9920)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !508, file: !509, line: 989, baseType: !923, size: 128, offset: 9984)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !924, line: 35, size: 128, elements: !925)
!924 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !923, file: !924, line: 36, baseType: !140, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !923, file: !924, line: 37, baseType: !385, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !923, file: !924, line: 38, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !924, line: 23, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !508, file: !509, line: 992, baseType: !363, size: 64, offset: 10112)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !508, file: !509, line: 993, baseType: !363, size: 64, offset: 10176)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !508, file: !509, line: 996, baseType: !203, offset: 10240)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !508, file: !509, line: 999, baseType: !410, offset: 10240)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !508, file: !509, line: 1001, baseType: !936, size: 64, offset: 10240)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !509, line: 636, size: 64, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !509, line: 637, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !508, file: !509, line: 1005, baseType: !644, size: 128, offset: 10304)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !508, file: !509, line: 1007, baseType: !507, size: 64, offset: 10432)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !508, file: !509, line: 1009, baseType: !943, size: 64, offset: 10496)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !509, line: 1009, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !508, file: !509, line: 1043, baseType: !134, size: 64, offset: 10560)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !508, file: !509, line: 1046, baseType: !947, size: 64, offset: 10624)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !509, line: 41, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !508, file: !509, line: 1050, baseType: !950, size: 64, offset: 10688)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !509, line: 42, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !508, file: !509, line: 1054, baseType: !953, size: 64, offset: 10752)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !509, line: 55, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !508, file: !509, line: 1056, baseType: !956, size: 64, offset: 10816)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !509, line: 40, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !508, file: !509, line: 1058, baseType: !959, size: 64, offset: 10880)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !509, line: 47, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !508, file: !509, line: 1061, baseType: !962, size: 64, offset: 10944)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !509, line: 43, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !508, file: !509, line: 1064, baseType: !294, size: 64, offset: 11008)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !508, file: !509, line: 1065, baseType: !966, size: 64, offset: 11072)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !914, line: 14, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !914, line: 12, size: 384, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !914, line: 13, baseType: !971, size: 384)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !914, line: 13, size: 384, elements: !972)
!972 = !{!973, !974, !975, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !971, file: !914, line: 13, baseType: !140, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !971, file: !914, line: 13, baseType: !140, size: 32, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !971, file: !914, line: 13, baseType: !140, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !971, file: !914, line: 13, baseType: !977, size: 256, offset: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !978, line: 32, size: 256, elements: !979)
!978 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!979 = !{!980, !986, !999, !1005, !1014, !1034, !1039}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !977, file: !978, line: 37, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 34, size: 64, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !981, file: !978, line: 35, baseType: !763, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !981, file: !978, line: 36, baseType: !985, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !277, line: 49, baseType: !7)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !977, file: !978, line: 45, baseType: !987, size: 192)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 40, size: 192, elements: !988)
!988 = !{!989, !991, !992, !998}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !987, file: !978, line: 41, baseType: !990, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !277, line: 95, baseType: !140)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !987, file: !978, line: 42, baseType: !140, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !987, file: !978, line: 43, baseType: !993, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !978, line: 11, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !978, line: 8, size: 64, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !994, file: !978, line: 9, baseType: !140, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !994, file: !978, line: 10, baseType: !134, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !987, file: !978, line: 44, baseType: !140, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !977, file: !978, line: 52, baseType: !1000, size: 128)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 48, size: 128, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1000, file: !978, line: 49, baseType: !763, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1000, file: !978, line: 50, baseType: !985, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1000, file: !978, line: 51, baseType: !993, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !977, file: !978, line: 61, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 55, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1013}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1006, file: !978, line: 56, baseType: !763, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1006, file: !978, line: 57, baseType: !985, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1006, file: !978, line: 58, baseType: !140, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1006, file: !978, line: 59, baseType: !1012, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !277, line: 94, baseType: !278)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1006, file: !978, line: 60, baseType: !1012, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !977, file: !978, line: 95, baseType: !1015, size: 256)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 64, size: 256, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1015, file: !978, line: 65, baseType: !134, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !978, line: 77, baseType: !1019, size: 192, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !978, line: 77, size: 192, elements: !1020)
!1020 = !{!1021, !1022, !1029}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1019, file: !978, line: 82, baseType: !496, size: 16)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1019, file: !978, line: 88, baseType: !1023, size: 192)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !978, line: 84, size: 192, elements: !1024)
!1024 = !{!1025, !1027, !1028}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1023, file: !978, line: 85, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !623)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1023, file: !978, line: 86, baseType: !134, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1023, file: !978, line: 87, baseType: !134, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1019, file: !978, line: 93, baseType: !1030, size: 96)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !978, line: 90, size: 96, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1030, file: !978, line: 91, baseType: !1026, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1030, file: !978, line: 92, baseType: !518, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !977, file: !978, line: 101, baseType: !1035, size: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 98, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1035, file: !978, line: 99, baseType: !279, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1035, file: !978, line: 100, baseType: !140, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !977, file: !978, line: 108, baseType: !1040, size: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !978, line: 104, size: 128, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1040, file: !978, line: 105, baseType: !134, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1040, file: !978, line: 106, baseType: !140, size: 32, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1040, file: !978, line: 107, baseType: !7, size: 32, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !508, file: !509, line: 1067, baseType: !1046, offset: 11136)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1047, line: 12, elements: !217)
!1047 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !508, file: !509, line: 1099, baseType: !1049, size: 64, offset: 11136)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !509, line: 56, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !508, file: !509, line: 1103, baseType: !190, size: 128, offset: 11200)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !508, file: !509, line: 1104, baseType: !1053, size: 64, offset: 11328)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !509, line: 46, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !508, file: !509, line: 1105, baseType: !462, size: 192, offset: 11392)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !508, file: !509, line: 1106, baseType: !7, size: 32, offset: 11584)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !508, file: !509, line: 1109, baseType: !1058, size: 128, offset: 11648)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1059, size: 128, elements: !1061)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !509, line: 51, flags: DIFlagFwdDecl)
!1061 = !{!1062}
!1062 = !DISubrange(count: 2)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !508, file: !509, line: 1110, baseType: !462, size: 192, offset: 11776)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !508, file: !509, line: 1111, baseType: !190, size: 128, offset: 11968)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !508, file: !509, line: 1173, baseType: !1066, size: 64, offset: 12096)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1068, line: 62, size: 256, align: 256, elements: !1069)
!1068 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1069 = !{!1070, !1071, !1072, !1077}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1067, file: !1068, line: 75, baseType: !518, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1067, file: !1068, line: 90, baseType: !518, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1067, file: !1068, line: 124, baseType: !1073, size: 64, offset: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1067, file: !1068, line: 109, size: 64, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1073, file: !1068, line: 110, baseType: !365, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1073, file: !1068, line: 112, baseType: !365, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1067, file: !1068, line: 144, baseType: !518, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !508, file: !509, line: 1174, baseType: !517, size: 32, offset: 12160)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !508, file: !509, line: 1179, baseType: !294, size: 64, offset: 12224)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !508, file: !509, line: 1182, baseType: !1081, size: 128, offset: 12288)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !440, line: 76, size: 128, elements: !1082)
!1082 = !{!1083, !1088, !1089}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1081, file: !440, line: 85, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1085, line: 7, size: 64, elements: !1086)
!1085 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1084, file: !1085, line: 12, baseType: !670, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1081, file: !440, line: 88, baseType: !167, size: 8, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1081, file: !440, line: 95, baseType: !167, size: 8, offset: 72)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !509, line: 1184, baseType: !1091, size: 128, offset: 12416)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !509, line: 1184, size: 128, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1091, file: !509, line: 1185, baseType: !523, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1091, file: !509, line: 1186, baseType: !801, size: 128, align: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !508, file: !509, line: 1190, baseType: !1096, size: 64, offset: 12544)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !509, line: 53, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !508, file: !509, line: 1192, baseType: !1099, size: 128, offset: 12608)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !440, line: 64, size: 128, elements: !1100)
!1100 = !{!1101, !1194, !1195}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1099, file: !440, line: 65, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !335, line: 68, size: 512, align: 128, elements: !1104)
!1104 = !{!1105, !1106, !1186, !1193}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1103, file: !335, line: 69, baseType: !294, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !335, line: 77, baseType: !1107, size: 320, offset: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !335, line: 77, size: 320, elements: !1108)
!1108 = !{!1109, !1118, !1123, !1151, !1159, !1165, !1178, !1185}
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !335, line: 78, baseType: !1110, size: 320)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !335, line: 78, size: 320, elements: !1111)
!1111 = !{!1112, !1113, !1116, !1117}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1110, file: !335, line: 84, baseType: !190, size: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1110, file: !335, line: 86, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !335, line: 26, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1110, file: !335, line: 87, baseType: !294, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1110, file: !335, line: 94, baseType: !294, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !335, line: 96, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !335, line: 96, size: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1119, file: !335, line: 101, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !168, line: 143, baseType: !363)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !335, line: 103, baseType: !1124, size: 320)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !335, line: 103, size: 320, elements: !1125)
!1125 = !{!1126, !1136, !1139, !1140}
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !335, line: 104, baseType: !1127, size: 128)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !335, line: 104, size: 128, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1127, file: !335, line: 105, baseType: !190, size: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !335, line: 106, baseType: !1131, size: 128)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !335, line: 106, size: 128, elements: !1132)
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1131, file: !335, line: 107, baseType: !1102, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1131, file: !335, line: 109, baseType: !140, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1131, file: !335, line: 110, baseType: !140, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1124, file: !335, line: 117, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !335, line: 117, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1124, file: !335, line: 119, baseType: !134, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !335, line: 120, baseType: !1141, size: 64, offset: 256)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !335, line: 120, size: 64, elements: !1142)
!1142 = !{!1143, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1141, file: !335, line: 121, baseType: !134, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1141, file: !335, line: 122, baseType: !294, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !335, line: 123, baseType: !1146, size: 32)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !335, line: 123, size: 32, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1146, file: !335, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1146, file: !335, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1146, file: !335, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !335, line: 130, baseType: !1152, size: 192)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !335, line: 130, size: 192, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1152, file: !335, line: 131, baseType: !294, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1152, file: !335, line: 134, baseType: !656, size: 8, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1152, file: !335, line: 135, baseType: !656, size: 8, offset: 72)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1152, file: !335, line: 136, baseType: !385, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1152, file: !335, line: 137, baseType: !7, size: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !335, line: 139, baseType: !1160, size: 256)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !335, line: 139, size: 256, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1160, file: !335, line: 140, baseType: !294, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1160, file: !335, line: 141, baseType: !385, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1160, file: !335, line: 143, baseType: !190, size: 128, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !335, line: 145, baseType: !1166, size: 256)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !335, line: 145, size: 256, elements: !1167)
!1167 = !{!1168, !1169, !1171, !1172, !1177}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1166, file: !335, line: 146, baseType: !294, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1166, file: !335, line: 147, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !324, line: 509, baseType: !1102)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1166, file: !335, line: 148, baseType: !294, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !335, line: 149, baseType: !1173, size: 64, offset: 192)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !335, line: 149, size: 64, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1173, file: !335, line: 150, baseType: !351, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1173, file: !335, line: 151, baseType: !385, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1166, file: !335, line: 156, baseType: !203, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !335, line: 159, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !335, line: 159, size: 128, elements: !1180)
!1180 = !{!1181, !1184}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1179, file: !335, line: 161, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !335, line: 161, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1179, file: !335, line: 162, baseType: !134, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1107, file: !335, line: 176, baseType: !801, size: 128, align: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !335, line: 179, baseType: !1187, size: 32, offset: 384)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !335, line: 179, size: 32, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1187, file: !335, line: 184, baseType: !385, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1187, file: !335, line: 192, baseType: !7, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1187, file: !335, line: 194, baseType: !7, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1187, file: !335, line: 195, baseType: !140, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1103, file: !335, line: 199, baseType: !385, size: 32, offset: 416)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1099, file: !440, line: 67, baseType: !518, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1099, file: !440, line: 68, baseType: !518, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !508, file: !509, line: 1206, baseType: !140, size: 32, offset: 12736)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !508, file: !509, line: 1207, baseType: !140, size: 32, offset: 12768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !508, file: !509, line: 1209, baseType: !294, size: 64, offset: 12800)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !508, file: !509, line: 1219, baseType: !363, size: 64, offset: 12864)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !508, file: !509, line: 1220, baseType: !363, size: 64, offset: 12928)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !508, file: !509, line: 1317, baseType: !140, size: 32, offset: 12992)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !508, file: !509, line: 1319, baseType: !507, size: 64, offset: 13056)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !508, file: !509, line: 1322, baseType: !1204, size: 64, offset: 13120)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1206, line: 56, size: 512, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1214, !1215, !1217}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1205, file: !1206, line: 57, baseType: !1204, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1205, file: !1206, line: 58, baseType: !134, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1205, file: !1206, line: 59, baseType: !294, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1205, file: !1206, line: 60, baseType: !294, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1205, file: !1206, line: 61, baseType: !1213, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1205, file: !1206, line: 62, baseType: !7, size: 32, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1205, file: !1206, line: 63, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !168, line: 153, baseType: !363)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1205, file: !1206, line: 64, baseType: !176, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !508, file: !509, line: 1326, baseType: !523, size: 32, offset: 13184)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !508, file: !509, line: 1342, baseType: !134, size: 64, offset: 13248)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !508, file: !509, line: 1343, baseType: !365, size: 64, offset: 13312)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !508, file: !509, line: 1344, baseType: !363, size: 64, offset: 13376)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !508, file: !509, line: 1345, baseType: !365, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !508, file: !509, line: 1346, baseType: !365, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !508, file: !509, line: 1347, baseType: !365, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !508, file: !509, line: 1348, baseType: !801, size: 128, align: 64, offset: 13504)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !508, file: !509, line: 1358, baseType: !1227, size: 34816, offset: 13824)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1228, line: 485, size: 34816, elements: !1229)
!1228 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1229 = !{!1230, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1259, !1260, !1261, !1262, !1263, !1264, !1267, !1268, !1269}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1227, file: !1228, line: 487, baseType: !1231, size: 192)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 192, elements: !245)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1233, line: 16, size: 64, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1232, file: !1233, line: 17, baseType: !491, size: 16)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1232, file: !1233, line: 18, baseType: !491, size: 16, offset: 16)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1232, file: !1233, line: 19, baseType: !491, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1232, file: !1233, line: 19, baseType: !491, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1232, file: !1233, line: 19, baseType: !491, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1232, file: !1233, line: 19, baseType: !491, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1232, file: !1233, line: 19, baseType: !491, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1232, file: !1233, line: 20, baseType: !491, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1232, file: !1233, line: 20, baseType: !491, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1232, file: !1233, line: 20, baseType: !491, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1232, file: !1233, line: 20, baseType: !491, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1232, file: !1233, line: 20, baseType: !491, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1232, file: !1233, line: 20, baseType: !491, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1227, file: !1228, line: 491, baseType: !294, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1227, file: !1228, line: 495, baseType: !286, size: 16, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1227, file: !1228, line: 496, baseType: !286, size: 16, offset: 272)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1227, file: !1228, line: 497, baseType: !286, size: 16, offset: 288)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1227, file: !1228, line: 498, baseType: !286, size: 16, offset: 304)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1227, file: !1228, line: 502, baseType: !294, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1227, file: !1228, line: 503, baseType: !294, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1227, file: !1228, line: 514, baseType: !1256, size: 256, offset: 448)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 256, elements: !444)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1228, line: 483, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1227, file: !1228, line: 516, baseType: !294, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1227, file: !1228, line: 518, baseType: !294, size: 64, offset: 768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1227, file: !1228, line: 520, baseType: !294, size: 64, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1227, file: !1228, line: 521, baseType: !294, size: 64, offset: 896)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1227, file: !1228, line: 522, baseType: !294, size: 64, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1227, file: !1228, line: 528, baseType: !1265, size: 64, offset: 1024)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1228, line: 10, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1227, file: !1228, line: 535, baseType: !294, size: 64, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1227, file: !1228, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1227, file: !1228, line: 540, baseType: !1270, size: 33280, offset: 1536)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1271, line: 317, size: 33280, elements: !1272)
!1271 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1270, file: !1271, line: 330, baseType: !7, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1270, file: !1271, line: 337, baseType: !294, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1270, file: !1271, line: 348, baseType: !1276, size: 32768, offset: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1271, line: 304, size: 32768, elements: !1277)
!1277 = !{!1278, !1293, !1332, !1382, !1399}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1276, file: !1271, line: 305, baseType: !1279, size: 896)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1271, line: 12, size: 896, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1292}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1279, file: !1271, line: 13, baseType: !517, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1279, file: !1271, line: 14, baseType: !517, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1279, file: !1271, line: 15, baseType: !517, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1279, file: !1271, line: 16, baseType: !517, size: 32, offset: 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1279, file: !1271, line: 17, baseType: !517, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1279, file: !1271, line: 18, baseType: !517, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1279, file: !1271, line: 19, baseType: !517, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1279, file: !1271, line: 22, baseType: !1289, size: 640, offset: 224)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 640, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 20)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1279, file: !1271, line: 25, baseType: !517, size: 32, offset: 864)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1276, file: !1271, line: 306, baseType: !1294, size: 4096, align: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1271, line: 34, size: 4096, align: 128, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1315, !1316, !1317, !1321, !1323, !1327}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1294, file: !1271, line: 35, baseType: !491, size: 16)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1294, file: !1271, line: 36, baseType: !491, size: 16, offset: 16)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1294, file: !1271, line: 37, baseType: !491, size: 16, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1294, file: !1271, line: 38, baseType: !491, size: 16, offset: 48)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1271, line: 39, baseType: !1301, size: 128, offset: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1271, line: 39, size: 128, elements: !1302)
!1302 = !{!1303, !1308}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1271, line: 40, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1271, line: 40, size: 128, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1304, file: !1271, line: 41, baseType: !363, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1304, file: !1271, line: 42, baseType: !363, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1271, line: 44, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1271, line: 44, size: 128, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1309, file: !1271, line: 45, baseType: !517, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1309, file: !1271, line: 46, baseType: !517, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1309, file: !1271, line: 47, baseType: !517, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1309, file: !1271, line: 48, baseType: !517, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1294, file: !1271, line: 51, baseType: !517, size: 32, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1294, file: !1271, line: 52, baseType: !517, size: 32, offset: 224)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1294, file: !1271, line: 55, baseType: !1318, size: 1024, offset: 256)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 1024, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1294, file: !1271, line: 58, baseType: !1322, size: 2048, offset: 1280)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 2048, elements: !249)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1294, file: !1271, line: 60, baseType: !1324, size: 384, offset: 3328)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 384, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 12)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1271, line: 62, baseType: !1328, size: 384, offset: 3712)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1271, line: 62, size: 384, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1328, file: !1271, line: 63, baseType: !1324, size: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1328, file: !1271, line: 64, baseType: !1324, size: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1276, file: !1271, line: 307, baseType: !1333, size: 1088)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1271, line: 79, size: 1088, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1381}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1333, file: !1271, line: 80, baseType: !517, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1333, file: !1271, line: 81, baseType: !517, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1333, file: !1271, line: 82, baseType: !517, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1333, file: !1271, line: 83, baseType: !517, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1333, file: !1271, line: 84, baseType: !517, size: 32, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1333, file: !1271, line: 85, baseType: !517, size: 32, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1333, file: !1271, line: 86, baseType: !517, size: 32, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1333, file: !1271, line: 88, baseType: !1289, size: 640, offset: 224)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1333, file: !1271, line: 89, baseType: !654, size: 8, offset: 864)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1333, file: !1271, line: 90, baseType: !654, size: 8, offset: 872)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1333, file: !1271, line: 91, baseType: !654, size: 8, offset: 880)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1333, file: !1271, line: 92, baseType: !654, size: 8, offset: 888)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1333, file: !1271, line: 93, baseType: !654, size: 8, offset: 896)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1333, file: !1271, line: 94, baseType: !654, size: 8, offset: 904)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1333, file: !1271, line: 95, baseType: !1350, size: 64, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1352, line: 11, size: 128, elements: !1353)
!1352 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1351, file: !1352, line: 12, baseType: !279, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1351, file: !1352, line: 13, baseType: !1356, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1358, line: 56, size: 1344, elements: !1359)
!1358 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1357, file: !1358, line: 61, baseType: !294, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1357, file: !1358, line: 62, baseType: !294, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1357, file: !1358, line: 63, baseType: !294, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1357, file: !1358, line: 64, baseType: !294, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1357, file: !1358, line: 65, baseType: !294, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1357, file: !1358, line: 66, baseType: !294, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1357, file: !1358, line: 68, baseType: !294, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1357, file: !1358, line: 69, baseType: !294, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1357, file: !1358, line: 70, baseType: !294, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1357, file: !1358, line: 71, baseType: !294, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1357, file: !1358, line: 72, baseType: !294, size: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1357, file: !1358, line: 73, baseType: !294, size: 64, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1357, file: !1358, line: 74, baseType: !294, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1357, file: !1358, line: 75, baseType: !294, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1357, file: !1358, line: 76, baseType: !294, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1357, file: !1358, line: 81, baseType: !294, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1357, file: !1358, line: 83, baseType: !294, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1357, file: !1358, line: 84, baseType: !294, size: 64, offset: 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1358, line: 85, baseType: !294, size: 64, offset: 1152)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1357, file: !1358, line: 86, baseType: !294, size: 64, offset: 1216)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1357, file: !1358, line: 87, baseType: !294, size: 64, offset: 1280)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1333, file: !1271, line: 96, baseType: !517, size: 32, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1276, file: !1271, line: 308, baseType: !1383, size: 4608, align: 512)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1271, line: 289, size: 4608, align: 512, elements: !1384)
!1384 = !{!1385, !1386, !1395}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1383, file: !1271, line: 290, baseType: !1294, size: 4096, align: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1383, file: !1271, line: 291, baseType: !1387, size: 512, offset: 4096)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1271, line: 268, size: 512, elements: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1387, file: !1271, line: 269, baseType: !363, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1387, file: !1271, line: 270, baseType: !363, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1387, file: !1271, line: 271, baseType: !1392, size: 384, offset: 128)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: 6)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1383, file: !1271, line: 292, baseType: !1396, offset: 4608)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 0)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1276, file: !1271, line: 309, baseType: !1400, size: 32768)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 32768, elements: !1401)
!1401 = !{!1402}
!1402 = !DISubrange(count: 4096)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !335, line: 378, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !500, file: !335, line: 384, baseType: !823, size: 192, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !355, file: !335, line: 500, baseType: !203, offset: 6656)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !355, file: !335, line: 501, baseType: !1408, size: 64, offset: 6656)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !335, line: 387, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !355, file: !335, line: 516, baseType: !1411, size: 64, offset: 6720)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1413, line: 18, flags: DIFlagFwdDecl)
!1413 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !355, file: !335, line: 519, baseType: !322, size: 64, offset: 6784)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !355, file: !335, line: 521, baseType: !1416, size: 64, offset: 6848)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !335, line: 521, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !355, file: !335, line: 545, baseType: !385, size: 32, offset: 6912)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !355, file: !335, line: 548, baseType: !167, size: 8, offset: 6944)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !355, file: !335, line: 550, baseType: !1421, offset: 6952)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1422, line: 142, elements: !217)
!1422 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !355, file: !335, line: 554, baseType: !1424, size: 256, offset: 6976)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1425, line: 102, size: 256, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1424, file: !1425, line: 103, baseType: !393, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1424, file: !1425, line: 104, baseType: !190, size: 128, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1424, file: !1425, line: 105, baseType: !1430, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1425, line: 21, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !355, file: !335, line: 557, baseType: !517, size: 32, offset: 7232)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !352, file: !335, line: 565, baseType: !1437, offset: 7296)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, elements: !1438)
!1438 = !{!1439}
!1439 = !DISubrange(count: -1)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !334, file: !335, line: 333, baseType: !1441, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !324, line: 284, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !324, line: 284, size: 64, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1442, file: !324, line: 284, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !383, line: 19, baseType: !294)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !334, file: !335, line: 334, baseType: !294, size: 64, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !334, file: !335, line: 343, baseType: !1448, size: 256, offset: 704)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !335, line: 340, size: 256, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1448, file: !335, line: 341, baseType: !342, size: 192, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1448, file: !335, line: 342, baseType: !294, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !334, file: !335, line: 351, baseType: !190, size: 128, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !334, file: !335, line: 353, baseType: !1454, size: 64, offset: 1088)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !335, line: 353, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !334, file: !335, line: 356, baseType: !1457, size: 64, offset: 1152)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !335, line: 356, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !334, file: !335, line: 359, baseType: !294, size: 64, offset: 1216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !334, file: !335, line: 361, baseType: !322, size: 64, offset: 1280)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !334, file: !335, line: 362, baseType: !134, size: 64, offset: 1344)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !334, file: !335, line: 365, baseType: !393, size: 64, offset: 1408)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !334, file: !335, line: 373, baseType: !1465, offset: 1472)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !335, line: 296, elements: !217)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !301, file: !269, line: 90, baseType: !296, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !301, file: !269, line: 91, baseType: !1468, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !259, file: !120, line: 143, baseType: !1470, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1473, !196}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1476)
!1476 = !{!1477, !1478, !1482, !1486, !1492, !1496}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1475, file: !18, line: 40, baseType: !17, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1475, file: !18, line: 41, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!167}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1475, file: !18, line: 42, baseType: !1483, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!134}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1475, file: !18, line: 43, baseType: !1487, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!176, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1475, file: !18, line: 44, baseType: !1493, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!176}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1475, file: !18, line: 45, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !134}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !259, file: !120, line: 144, baseType: !1501, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!176, !196}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !259, file: !120, line: 145, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !196, !1508, !1514}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1413, line: 23, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1413, line: 21, size: 32, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1510, file: !1413, line: 22, baseType: !1513, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !168, line: 32, baseType: !985)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1413, line: 28, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1413, line: 26, size: 32, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1516, file: !1413, line: 27, baseType: !1519, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !168, line: 33, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !277, line: 50, baseType: !7)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !183, file: !120, line: 70, baseType: !1522, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1524, line: 123, size: 1024, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1668, !1669, !1670, !1671, !1672}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1523, file: !1524, line: 124, baseType: !385, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1523, file: !1524, line: 125, baseType: !385, size: 32, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1523, file: !1524, line: 135, baseType: !1522, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1523, file: !1524, line: 136, baseType: !186, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1523, file: !1524, line: 138, baseType: !342, size: 192, align: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1523, file: !1524, line: 140, baseType: !176, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1523, file: !1524, line: 141, baseType: !7, size: 32, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !1524, line: 142, baseType: !1534, size: 256, offset: 512)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !1524, line: 142, size: 256, elements: !1535)
!1535 = !{!1536, !1591, !1595}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1534, file: !1524, line: 143, baseType: !1537, size: 192)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1524, line: 91, size: 192, elements: !1538)
!1538 = !{!1539, !1540, !1541}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1537, file: !1524, line: 92, baseType: !294, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1537, file: !1524, line: 94, baseType: !359, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1537, file: !1524, line: 100, baseType: !1542, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1524, line: 180, size: 704, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1561, !1562, !1563, !1589, !1590}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1543, file: !1524, line: 182, baseType: !1522, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1543, file: !1524, line: 183, baseType: !7, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1543, file: !1524, line: 186, baseType: !1548, size: 192, offset: 128)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1549, line: 19, size: 192, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1559, !1560}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1548, file: !1549, line: 20, baseType: !1552, size: 128)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1553, line: 292, size: 128, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !{!1555, !1556, !1558}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1552, file: !1553, line: 293, baseType: !203)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1552, file: !1553, line: 295, baseType: !1557, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !168, line: 148, baseType: !7)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1552, file: !1553, line: 296, baseType: !134, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1548, file: !1549, line: 21, baseType: !7, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1548, file: !1549, line: 22, baseType: !7, size: 32, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1543, file: !1524, line: 187, baseType: !517, size: 32, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1543, file: !1524, line: 188, baseType: !517, size: 32, offset: 352)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1543, file: !1524, line: 189, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1524, line: 168, size: 320, elements: !1566)
!1566 = !{!1567, !1573, !1577, !1581, !1585}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1565, file: !1524, line: 169, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!140, !1571, !1542}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !324, line: 539, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1565, file: !1524, line: 171, baseType: !1574, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!140, !1522, !186, !285}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1565, file: !1524, line: 173, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!140, !1522}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1565, file: !1524, line: 174, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!140, !1522, !1522, !186}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1565, file: !1524, line: 176, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!140, !1571, !1522, !1542}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1543, file: !1524, line: 192, baseType: !190, size: 128, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1543, file: !1524, line: 194, baseType: !794, size: 128, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1534, file: !1524, line: 144, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1524, line: 103, size: 64, elements: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1592, file: !1524, line: 104, baseType: !1522, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1534, file: !1524, line: 145, baseType: !1596, size: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1524, line: 107, size: 256, elements: !1597)
!1597 = !{!1598, !1663, !1666, !1667}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1596, file: !1524, line: 108, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1524, line: 217, size: 768, elements: !1602)
!1602 = !{!1603, !1623, !1627, !1631, !1636, !1640, !1644, !1648, !1649, !1650, !1651, !1659}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1601, file: !1524, line: 222, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!140, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1524, line: 197, size: 1088, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1608, file: !1524, line: 199, baseType: !1522, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1608, file: !1524, line: 200, baseType: !322, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1608, file: !1524, line: 201, baseType: !1571, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1608, file: !1524, line: 202, baseType: !134, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1608, file: !1524, line: 205, baseType: !462, size: 192, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1608, file: !1524, line: 206, baseType: !462, size: 192, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1608, file: !1524, line: 207, baseType: !140, size: 32, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1608, file: !1524, line: 208, baseType: !190, size: 128, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1608, file: !1524, line: 209, baseType: !244, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1608, file: !1524, line: 211, baseType: !291, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1608, file: !1524, line: 212, baseType: !167, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1608, file: !1524, line: 213, baseType: !167, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1608, file: !1524, line: 214, baseType: !1457, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1601, file: !1524, line: 223, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1607}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1601, file: !1524, line: 236, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!140, !1571, !134}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1601, file: !1524, line: 238, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!134, !1571, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1601, file: !1524, line: 239, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!134, !1571, !134, !1635}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1601, file: !1524, line: 240, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1571, !134}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1601, file: !1524, line: 242, baseType: !1645, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!275, !1607, !244, !291, !325}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1601, file: !1524, line: 252, baseType: !291, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1601, file: !1524, line: 259, baseType: !167, size: 8, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1601, file: !1524, line: 260, baseType: !1645, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1601, file: !1524, line: 263, baseType: !1652, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!1655, !1607, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1656, line: 52, baseType: !7)
!1656 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1524, line: 27, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1601, file: !1524, line: 266, baseType: !1660, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!140, !1607, !333}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1596, file: !1524, line: 109, baseType: !1664, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1524, line: 31, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1596, file: !1524, line: 110, baseType: !325, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1596, file: !1524, line: 111, baseType: !1522, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1523, file: !1524, line: 148, baseType: !134, size: 64, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1523, file: !1524, line: 154, baseType: !363, size: 64, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1523, file: !1524, line: 156, baseType: !286, size: 16, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1523, file: !1524, line: 157, baseType: !285, size: 16, offset: 912)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1523, file: !1524, line: 158, baseType: !1673, size: 64, offset: 960)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1524, line: 32, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !183, file: !120, line: 71, baseType: !1676, size: 32, offset: 448)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1677, line: 19, size: 32, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1676, file: !1677, line: 20, baseType: !523, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !183, file: !120, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !183, file: !120, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !183, file: !120, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !183, file: !120, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !183, file: !120, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !180, file: !30, line: 463, baseType: !1686, size: 64, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !180, file: !30, line: 465, baseType: !1688, size: 64, offset: 576)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !180, file: !30, line: 467, baseType: !186, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !30, line: 468, baseType: !1692, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1702, !1707, !1711}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1694, file: !30, line: 88, baseType: !186, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1694, file: !30, line: 89, baseType: !298, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1694, file: !30, line: 90, baseType: !1699, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!140, !1686, !239}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1694, file: !30, line: 91, baseType: !1703, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!244, !1686, !1706, !1508, !1514}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1694, file: !30, line: 93, baseType: !1708, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1686}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1694, file: !30, line: 95, baseType: !1712, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1715)
!1715 = !{!1716, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1714, file: !37, line: 279, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!140, !1686}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1714, file: !37, line: 280, baseType: !1708, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1714, file: !37, line: 281, baseType: !1717, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1714, file: !37, line: 282, baseType: !1717, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1714, file: !37, line: 283, baseType: !1717, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1714, file: !37, line: 284, baseType: !1717, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1714, file: !37, line: 285, baseType: !1717, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1714, file: !37, line: 286, baseType: !1717, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1714, file: !37, line: 287, baseType: !1717, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1714, file: !37, line: 288, baseType: !1717, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1714, file: !37, line: 289, baseType: !1717, size: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1714, file: !37, line: 290, baseType: !1717, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1714, file: !37, line: 291, baseType: !1717, size: 64, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1714, file: !37, line: 292, baseType: !1717, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1714, file: !37, line: 293, baseType: !1717, size: 64, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1714, file: !37, line: 294, baseType: !1717, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1714, file: !37, line: 295, baseType: !1717, size: 64, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1714, file: !37, line: 296, baseType: !1717, size: 64, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1714, file: !37, line: 297, baseType: !1717, size: 64, offset: 1152)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1714, file: !37, line: 298, baseType: !1717, size: 64, offset: 1216)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1714, file: !37, line: 299, baseType: !1717, size: 64, offset: 1280)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1714, file: !37, line: 300, baseType: !1717, size: 64, offset: 1344)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1714, file: !37, line: 301, baseType: !1717, size: 64, offset: 1408)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !180, file: !30, line: 470, baseType: !1743, size: 64, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1745, line: 82, size: 1408, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1829, !1832, !1835}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1744, file: !1745, line: 83, baseType: !186, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1744, file: !1745, line: 84, baseType: !186, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1744, file: !1745, line: 85, baseType: !1686, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1744, file: !1745, line: 86, baseType: !298, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1744, file: !1745, line: 87, baseType: !298, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1744, file: !1745, line: 88, baseType: !298, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1744, file: !1745, line: 90, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!140, !1686, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1780, !1793, !1794, !1795, !1796, !1797, !1805, !1806, !1807, !1808, !1809, !1810}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1758, file: !24, line: 96, baseType: !186, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1758, file: !24, line: 97, baseType: !1743, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1758, file: !24, line: 99, baseType: !131, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1758, file: !24, line: 100, baseType: !186, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1758, file: !24, line: 102, baseType: !167, size: 8, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1758, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1758, file: !24, line: 105, baseType: !1767, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1770, line: 262, size: 1600, elements: !1771)
!1770 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1771 = !{!1772, !1774, !1775, !1779}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1769, file: !1770, line: 263, baseType: !1773, size: 256)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !1319)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1769, file: !1770, line: 264, baseType: !1773, size: 256, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1769, file: !1770, line: 265, baseType: !1776, size: 1024, offset: 512)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1024, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1769, file: !1770, line: 266, baseType: !176, size: 64, offset: 1536)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1758, file: !24, line: 106, baseType: !1781, size: 64, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1770, line: 210, size: 256, elements: !1784)
!1784 = !{!1785, !1789, !1791, !1792}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1783, file: !1770, line: 211, baseType: !1786, size: 72)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 72, elements: !1787)
!1787 = !{!1788}
!1788 = !DISubrange(count: 9)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1783, file: !1770, line: 212, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1770, line: 14, baseType: !294)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1783, file: !1770, line: 213, baseType: !518, size: 32, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1783, file: !1770, line: 214, baseType: !518, size: 32, offset: 224)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1758, file: !24, line: 108, baseType: !1717, size: 64, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1758, file: !24, line: 109, baseType: !1708, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1758, file: !24, line: 110, baseType: !1717, size: 64, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1758, file: !24, line: 111, baseType: !1708, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1758, file: !24, line: 112, baseType: !1798, size: 64, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!140, !1686, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1802, file: !37, line: 51, baseType: !140, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1758, file: !24, line: 113, baseType: !1717, size: 64, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1758, file: !24, line: 114, baseType: !298, size: 64, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1758, file: !24, line: 115, baseType: !298, size: 64, offset: 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1758, file: !24, line: 117, baseType: !1712, size: 64, offset: 960)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1758, file: !24, line: 118, baseType: !1708, size: 64, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1758, file: !24, line: 120, baseType: !1811, size: 64, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1744, file: !1745, line: 91, baseType: !1699, size: 64, offset: 448)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1744, file: !1745, line: 92, baseType: !1717, size: 64, offset: 512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1744, file: !1745, line: 93, baseType: !1708, size: 64, offset: 576)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1744, file: !1745, line: 94, baseType: !1717, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1744, file: !1745, line: 95, baseType: !1708, size: 64, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1744, file: !1745, line: 97, baseType: !1717, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1744, file: !1745, line: 98, baseType: !1717, size: 64, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1744, file: !1745, line: 100, baseType: !1798, size: 64, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1744, file: !1745, line: 101, baseType: !1717, size: 64, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1744, file: !1745, line: 103, baseType: !1717, size: 64, offset: 1024)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1744, file: !1745, line: 105, baseType: !1717, size: 64, offset: 1088)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1744, file: !1745, line: 107, baseType: !1712, size: 64, offset: 1152)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1744, file: !1745, line: 109, baseType: !1826, size: 64, offset: 1216)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1745, line: 109, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1744, file: !1745, line: 111, baseType: !1830, size: 64, offset: 1280)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1745, line: 111, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1744, file: !1745, line: 112, baseType: !1833, offset: 1344)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1834, line: 187, elements: !217)
!1834 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1744, file: !1745, line: 114, baseType: !167, size: 8, offset: 1344)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !180, file: !30, line: 471, baseType: !1757, size: 64, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !180, file: !30, line: 473, baseType: !134, size: 64, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !180, file: !30, line: 475, baseType: !134, size: 64, offset: 960)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !180, file: !30, line: 480, baseType: !462, size: 192, offset: 1024)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !180, file: !30, line: 484, baseType: !1841, size: 576, offset: 1216)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1848}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1841, file: !30, line: 362, baseType: !190, size: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1841, file: !30, line: 363, baseType: !190, size: 128, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1841, file: !30, line: 364, baseType: !190, size: 128, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1841, file: !30, line: 365, baseType: !190, size: 128, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1841, file: !30, line: 366, baseType: !167, size: 8, offset: 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1841, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !180, file: !30, line: 485, baseType: !1850, size: 2304, offset: 1792)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1947, !1951}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1850, file: !37, line: 566, baseType: !1801, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1850, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1850, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1850, file: !37, line: 569, baseType: !167, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1850, file: !37, line: 570, baseType: !167, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1850, file: !37, line: 571, baseType: !167, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1850, file: !37, line: 572, baseType: !167, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1850, file: !37, line: 573, baseType: !167, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1850, file: !37, line: 574, baseType: !167, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1850, file: !37, line: 575, baseType: !167, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1850, file: !37, line: 576, baseType: !167, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1850, file: !37, line: 577, baseType: !517, size: 32, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !37, line: 578, baseType: !203, offset: 96)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1850, file: !37, line: 580, baseType: !190, size: 128, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1850, file: !37, line: 581, baseType: !823, size: 192, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1850, file: !37, line: 582, baseType: !1868, size: 64, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1870, line: 43, size: 1472, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1879, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1869, file: !1870, line: 44, baseType: !186, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1869, file: !1870, line: 45, baseType: !140, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1869, file: !1870, line: 46, baseType: !190, size: 128, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1869, file: !1870, line: 47, baseType: !203, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1869, file: !1870, line: 48, baseType: !1877, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1869, file: !1870, line: 49, baseType: !1880, size: 320, offset: 320)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1881, line: 11, size: 320, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884, !1885, !1890}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1880, file: !1881, line: 16, baseType: !787, size: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1880, file: !1881, line: 17, baseType: !294, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1880, file: !1881, line: 18, baseType: !1886, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !1881, line: 19, baseType: !517, size: 32, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1869, file: !1870, line: 50, baseType: !294, size: 64, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1869, file: !1870, line: 51, baseType: !593, size: 64, offset: 704)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1869, file: !1870, line: 52, baseType: !593, size: 64, offset: 768)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1869, file: !1870, line: 53, baseType: !593, size: 64, offset: 832)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1869, file: !1870, line: 54, baseType: !593, size: 64, offset: 896)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1869, file: !1870, line: 55, baseType: !593, size: 64, offset: 960)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1869, file: !1870, line: 56, baseType: !294, size: 64, offset: 1024)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1869, file: !1870, line: 57, baseType: !294, size: 64, offset: 1088)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1869, file: !1870, line: 58, baseType: !294, size: 64, offset: 1152)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1869, file: !1870, line: 59, baseType: !294, size: 64, offset: 1216)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1869, file: !1870, line: 60, baseType: !294, size: 64, offset: 1280)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1869, file: !1870, line: 61, baseType: !1686, size: 64, offset: 1344)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1869, file: !1870, line: 62, baseType: !167, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1869, file: !1870, line: 63, baseType: !167, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1850, file: !37, line: 583, baseType: !167, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1850, file: !37, line: 584, baseType: !167, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1850, file: !37, line: 585, baseType: !167, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1850, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1850, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1850, file: !37, line: 592, baseType: !585, size: 512, offset: 576)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1850, file: !37, line: 593, baseType: !363, size: 64, offset: 1088)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1850, file: !37, line: 594, baseType: !1424, size: 256, offset: 1152)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1850, file: !37, line: 595, baseType: !794, size: 128, offset: 1408)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1850, file: !37, line: 596, baseType: !1877, size: 64, offset: 1536)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1850, file: !37, line: 597, baseType: !385, size: 32, offset: 1600)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1850, file: !37, line: 598, baseType: !385, size: 32, offset: 1632)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1850, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1850, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1850, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1850, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1850, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1850, file: !37, line: 604, baseType: !167, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1850, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1850, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1850, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1850, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1850, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1850, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1850, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1850, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1850, file: !37, line: 613, baseType: !140, size: 32, offset: 1792)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1850, file: !37, line: 614, baseType: !140, size: 32, offset: 1824)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1850, file: !37, line: 615, baseType: !363, size: 64, offset: 1856)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1850, file: !37, line: 616, baseType: !363, size: 64, offset: 1920)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1850, file: !37, line: 617, baseType: !363, size: 64, offset: 1984)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1850, file: !37, line: 618, baseType: !363, size: 64, offset: 2048)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1850, file: !37, line: 620, baseType: !1938, size: 64, offset: 2112)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1939, file: !37, line: 537, baseType: !203)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1939, file: !37, line: 538, baseType: !7, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1939, file: !37, line: 540, baseType: !190, size: 128, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1939, file: !37, line: 543, baseType: !1945, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1850, file: !37, line: 621, baseType: !1948, size: 64, offset: 2176)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1686, !747}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1850, file: !37, line: 622, baseType: !1952, size: 64, offset: 2240)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !180, file: !30, line: 486, baseType: !1955, size: 64, offset: 4096)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1964, !1965, !1966}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1956, file: !37, line: 643, baseType: !1714, size: 1472)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1956, file: !37, line: 644, baseType: !1717, size: 64, offset: 1472)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1956, file: !37, line: 645, baseType: !1961, size: 64, offset: 1536)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1686, !167}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1956, file: !37, line: 646, baseType: !1717, size: 64, offset: 1600)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1956, file: !37, line: 647, baseType: !1708, size: 64, offset: 1664)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1956, file: !37, line: 648, baseType: !1708, size: 64, offset: 1728)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !180, file: !30, line: 493, baseType: !1968, size: 64, offset: 4160)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1970)
!1970 = !{!1971, !1972, !1973, !2058, !2059, !2060, !2061, !2062, !2063, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1969, file: !51, line: 163, baseType: !190, size: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1969, file: !51, line: 164, baseType: !186, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1969, file: !51, line: 165, baseType: !1974, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1977)
!1977 = !{!1978, !2007, !2018, !2023, !2027, !2035, !2039, !2043, !2050, !2054}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1976, file: !51, line: 106, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!140, !1968, !1982, !50}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1984, line: 51, size: 1344, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1985 = !{!1986, !1987, !1989, !1990, !1991, !2000, !2001, !2002, !2003, !2004, !2005, !2006}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1983, file: !1984, line: 52, baseType: !186, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1983, file: !1984, line: 53, baseType: !1988, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1984, line: 28, baseType: !517)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1983, file: !1984, line: 54, baseType: !186, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1983, file: !1984, line: 55, baseType: !145, size: 192, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1983, file: !1984, line: 57, baseType: !1992, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1984, line: 31, size: 704, elements: !1994)
!1994 = !{!1995, !1996, !1997, !1998, !1999}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1993, file: !1984, line: 32, baseType: !244, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1993, file: !1984, line: 33, baseType: !140, size: 32, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1993, file: !1984, line: 34, baseType: !134, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1993, file: !1984, line: 35, baseType: !1992, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1993, file: !1984, line: 43, baseType: !313, size: 448, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1983, file: !1984, line: 58, baseType: !1992, size: 64, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1983, file: !1984, line: 59, baseType: !1982, size: 64, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1983, file: !1984, line: 60, baseType: !1982, size: 64, offset: 576)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1983, file: !1984, line: 61, baseType: !1982, size: 64, offset: 640)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1983, file: !1984, line: 63, baseType: !183, size: 512, offset: 704)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1983, file: !1984, line: 65, baseType: !294, size: 64, offset: 1216)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1983, file: !1984, line: 66, baseType: !134, size: 64, offset: 1280)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1976, file: !51, line: 108, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!140, !1968, !2011, !50}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2013)
!2013 = !{!2014, !2015, !2016}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2012, file: !51, line: 64, baseType: !149, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2012, file: !51, line: 65, baseType: !140, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2012, file: !51, line: 66, baseType: !2017, size: 512, offset: 96)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 512, elements: !880)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1976, file: !51, line: 110, baseType: !2019, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!140, !1968, !7, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !168, line: 164, baseType: !294)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1976, file: !51, line: 111, baseType: !2024, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !1968, !7}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1976, file: !51, line: 112, baseType: !2028, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!140, !1968, !1982, !2031, !7, !2033, !2034}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1976, file: !51, line: 117, baseType: !2036, size: 64, offset: 320)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!140, !1968, !7, !7, !134}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1976, file: !51, line: 119, baseType: !2040, size: 64, offset: 384)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !1968, !7, !7}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1976, file: !51, line: 121, baseType: !2044, size: 64, offset: 448)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!140, !1968, !2047, !167}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2049, line: 11, flags: DIFlagFwdDecl)
!2049 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1976, file: !51, line: 122, baseType: !2051, size: 64, offset: 512)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !1968, !2047}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1976, file: !51, line: 123, baseType: !2055, size: 64, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!140, !1968, !2011, !2033, !2034}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1969, file: !51, line: 166, baseType: !134, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1969, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1969, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1969, file: !51, line: 171, baseType: !149, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1969, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1969, file: !51, line: 173, baseType: !2064, size: 64, offset: 512)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1969, file: !51, line: 175, baseType: !1968, size: 64, offset: 576)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1969, file: !51, line: 182, baseType: !2022, size: 64, offset: 640)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1969, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1969, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1969, file: !51, line: 185, baseType: !1552, size: 128, offset: 768)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1969, file: !51, line: 186, baseType: !462, size: 192, offset: 896)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1969, file: !51, line: 187, baseType: !2073, offset: 1088)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1438)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !180, file: !30, line: 499, baseType: !190, size: 128, offset: 4224)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !180, file: !30, line: 502, baseType: !2076, size: 64, offset: 4352)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2078)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !180, file: !30, line: 504, baseType: !2080, size: 64, offset: 4416)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !180, file: !30, line: 505, baseType: !363, size: 64, offset: 4480)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !180, file: !30, line: 510, baseType: !363, size: 64, offset: 4544)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !180, file: !30, line: 511, baseType: !2084, size: 64, offset: 4608)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2086)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !180, file: !30, line: 513, baseType: !2088, size: 64, offset: 4672)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2089, file: !30, line: 293, baseType: !7, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2089, file: !30, line: 294, baseType: !294, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !180, file: !30, line: 515, baseType: !190, size: 128, offset: 4736)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !180, file: !30, line: 526, baseType: !2095, offset: 4864)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2096, line: 5, elements: !217)
!2096 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !180, file: !30, line: 528, baseType: !1982, size: 64, offset: 4864)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !180, file: !30, line: 529, baseType: !149, size: 64, offset: 4928)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !180, file: !30, line: 534, baseType: !2100, size: 32, offset: 4992)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !168, line: 16, baseType: !2101)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !168, line: 13, baseType: !517)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !180, file: !30, line: 535, baseType: !517, size: 32, offset: 5024)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !180, file: !30, line: 537, baseType: !203, offset: 5056)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !180, file: !30, line: 538, baseType: !190, size: 128, offset: 5056)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !180, file: !30, line: 540, baseType: !2106, size: 64, offset: 5184)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2108, line: 54, size: 960, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2120, !2124, !2125, !2126, !2127, !2131, !2135, !2136}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2107, file: !2108, line: 55, baseType: !186, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2107, file: !2108, line: 56, baseType: !131, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2107, file: !2108, line: 58, baseType: !298, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2107, file: !2108, line: 59, baseType: !298, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2107, file: !2108, line: 60, baseType: !196, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2107, file: !2108, line: 62, baseType: !1699, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2107, file: !2108, line: 63, baseType: !2117, size: 64, offset: 384)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!244, !1686, !1706}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2107, file: !2108, line: 65, baseType: !2121, size: 64, offset: 448)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2106}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2107, file: !2108, line: 66, baseType: !1708, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2107, file: !2108, line: 68, baseType: !1717, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2107, file: !2108, line: 70, baseType: !1473, size: 64, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2107, file: !2108, line: 71, baseType: !2128, size: 64, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!176, !1686}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2107, file: !2108, line: 73, baseType: !2132, size: 64, offset: 768)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !1686, !1508, !1514}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2107, file: !2108, line: 75, baseType: !1712, size: 64, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2107, file: !2108, line: 77, baseType: !1830, size: 64, offset: 896)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !180, file: !30, line: 541, baseType: !298, size: 64, offset: 5248)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !180, file: !30, line: 543, baseType: !1708, size: 64, offset: 5312)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !180, file: !30, line: 544, baseType: !2140, size: 64, offset: 5376)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !180, file: !30, line: 545, baseType: !2143, size: 64, offset: 5440)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !180, file: !30, line: 547, baseType: !167, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !180, file: !30, line: 548, baseType: !167, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !180, file: !30, line: 549, baseType: !167, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !180, file: !30, line: 550, baseType: !167, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !153, file: !146, line: 116, baseType: !2150, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!167, !170, !186}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !153, file: !146, line: 118, baseType: !2154, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!140, !170, !186, !7, !134, !291}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !153, file: !146, line: 123, baseType: !2158, size: 64, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!140, !170, !186, !2161, !291}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !153, file: !146, line: 126, baseType: !2163, size: 64, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!186, !170}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !153, file: !146, line: 127, baseType: !2163, size: 64, offset: 512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !153, file: !146, line: 128, baseType: !2168, size: 64, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!149, !170}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !153, file: !146, line: 130, baseType: !2172, size: 64, offset: 640)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!149, !170, !149}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !153, file: !146, line: 133, baseType: !2176, size: 64, offset: 704)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!149, !170, !186}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !153, file: !146, line: 135, baseType: !2180, size: 64, offset: 768)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!140, !170, !186, !186, !7, !7, !2183}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !146, line: 43, size: 640, elements: !2185)
!2185 = !{!2186, !2187, !2188}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2184, file: !146, line: 44, baseType: !149, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2184, file: !146, line: 45, baseType: !7, size: 32, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2184, file: !146, line: 46, baseType: !2189, size: 512, offset: 128)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 512, elements: !623)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !153, file: !146, line: 140, baseType: !2172, size: 64, offset: 832)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !153, file: !146, line: 143, baseType: !2168, size: 64, offset: 896)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !153, file: !146, line: 145, baseType: !156, size: 64, offset: 960)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !153, file: !146, line: 146, baseType: !2194, size: 64, offset: 1024)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!140, !170, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !146, line: 29, size: 128, elements: !2199)
!2199 = !{!2200, !2201, !2202}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2198, file: !146, line: 30, baseType: !7, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2198, file: !146, line: 31, baseType: !7, size: 32, offset: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2198, file: !146, line: 32, baseType: !170, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !153, file: !146, line: 148, baseType: !2204, size: 64, offset: 1088)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!140, !170, !1686}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !145, file: !146, line: 20, baseType: !1686, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !137, line: 355, baseType: !135, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !136, file: !137, line: 356, baseType: !190, size: 128, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !136, file: !137, line: 357, baseType: !190, size: 128, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !136, file: !137, line: 358, baseType: !190, size: 128, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !136, file: !137, line: 359, baseType: !190, size: 128, offset: 768)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !136, file: !137, line: 360, baseType: !2214, size: 32, offset: 896)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !137, line: 179, size: 32, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2214, file: !137, line: 180, baseType: !517, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2214, file: !137, line: 181, baseType: !517, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2214, file: !137, line: 182, baseType: !517, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2214, file: !137, line: 183, baseType: !517, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2214, file: !137, line: 184, baseType: !517, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2214, file: !137, line: 185, baseType: !517, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !137, line: 361, baseType: !2223, size: 32, offset: 928)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !137, line: 190, size: 32, elements: !2224)
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2223, file: !137, line: 191, baseType: !517, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2223, file: !137, line: 192, baseType: !517, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2223, file: !137, line: 193, baseType: !517, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2223, file: !137, line: 194, baseType: !517, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2223, file: !137, line: 195, baseType: !517, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2223, file: !137, line: 196, baseType: !517, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2223, file: !137, line: 197, baseType: !517, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2223, file: !137, line: 198, baseType: !517, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2223, file: !137, line: 199, baseType: !517, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2223, file: !137, line: 200, baseType: !517, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2223, file: !137, line: 201, baseType: !517, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2223, file: !137, line: 202, baseType: !517, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2223, file: !137, line: 203, baseType: !517, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2223, file: !137, line: 204, baseType: !517, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !136, file: !137, line: 362, baseType: !2240, size: 960, offset: 960)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !137, line: 234, size: 960, elements: !2241)
!2241 = !{!2242, !2244, !2251, !2253, !2254, !2255, !2260, !2263}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2240, file: !137, line: 235, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !137, line: 217, baseType: !1026)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !137, line: 236, baseType: !2245, size: 32, offset: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !137, line: 227, size: 32, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2245, file: !137, line: 228, baseType: !517, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2245, file: !137, line: 229, baseType: !517, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2245, file: !137, line: 230, baseType: !517, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2245, file: !137, line: 231, baseType: !517, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2240, file: !137, line: 237, baseType: !2252, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !137, line: 218, baseType: !363)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2240, file: !137, line: 238, baseType: !244, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2240, file: !137, line: 239, baseType: !190, size: 128, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2240, file: !137, line: 240, baseType: !2256, size: 320, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !137, line: 219, baseType: !2257)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 320, elements: !2258)
!2258 = !{!2259}
!2259 = !DISubrange(count: 40)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2240, file: !137, line: 241, baseType: !2261, size: 160, offset: 704)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !137, line: 220, baseType: !2262)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 160, elements: !1290)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2240, file: !137, line: 242, baseType: !2264, size: 64, offset: 896)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !143, line: 899, size: 192, elements: !2266)
!2266 = !{!2267, !2269, !2274, !2280, !2287, !2293, !2299, !2307}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2265, file: !143, line: 900, baseType: !2268, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !143, line: 635, baseType: !517)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2265, file: !143, line: 904, baseType: !2270, size: 128)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !143, line: 901, size: 128, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2270, file: !143, line: 902, baseType: !2268, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2270, file: !143, line: 903, baseType: !363, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2265, file: !143, line: 910, baseType: !2275, size: 128)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !143, line: 906, size: 128, elements: !2276)
!2276 = !{!2277, !2278, !2279}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2275, file: !143, line: 907, baseType: !2268, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2275, file: !143, line: 908, baseType: !517, size: 32, offset: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2275, file: !143, line: 909, baseType: !244, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2265, file: !143, line: 916, baseType: !2281, size: 128)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !143, line: 912, size: 128, elements: !2282)
!2282 = !{!2283, !2284, !2285}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2281, file: !143, line: 913, baseType: !2268, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2281, file: !143, line: 914, baseType: !517, size: 32, offset: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2281, file: !143, line: 915, baseType: !2286, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2265, file: !143, line: 922, baseType: !2288, size: 128)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !143, line: 918, size: 128, elements: !2289)
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2288, file: !143, line: 919, baseType: !2268, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2288, file: !143, line: 920, baseType: !517, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2288, file: !143, line: 921, baseType: !2264, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2265, file: !143, line: 928, baseType: !2294, size: 128)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !143, line: 924, size: 128, elements: !2295)
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2294, file: !143, line: 925, baseType: !2268, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2294, file: !143, line: 926, baseType: !2268, size: 32, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2294, file: !143, line: 927, baseType: !142, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2265, file: !143, line: 935, baseType: !2300, size: 192)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !143, line: 930, size: 192, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2306}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2300, file: !143, line: 931, baseType: !2268, size: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2300, file: !143, line: 932, baseType: !517, size: 32, offset: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2300, file: !143, line: 933, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !143, line: 128, baseType: !363)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2300, file: !143, line: 934, baseType: !517, size: 32, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2265, file: !143, line: 941, baseType: !2308, size: 96)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !143, line: 937, size: 96, elements: !2309)
!2309 = !{!2310, !2311, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2308, file: !143, line: 938, baseType: !2268, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2308, file: !143, line: 939, baseType: !517, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2308, file: !143, line: 940, baseType: !517, size: 32, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !136, file: !137, line: 363, baseType: !2314, size: 1344, offset: 1920)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !137, line: 275, size: 1344, elements: !2315)
!2315 = !{!2316, !2317, !2327}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2314, file: !137, line: 276, baseType: !140, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2314, file: !137, line: 277, baseType: !2318, size: 32, offset: 32)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !137, line: 254, size: 32, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2318, file: !137, line: 255, baseType: !517, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2318, file: !137, line: 256, baseType: !517, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2318, file: !137, line: 257, baseType: !517, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2318, file: !137, line: 258, baseType: !517, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2318, file: !137, line: 259, baseType: !517, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2318, file: !137, line: 260, baseType: !517, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2318, file: !137, line: 261, baseType: !517, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2314, file: !137, line: 278, baseType: !2328, size: 1280, offset: 64)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2329, size: 1280, elements: !2340)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !137, line: 264, size: 256, elements: !2330)
!2330 = !{!2331, !2337, !2338, !2339}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2329, file: !137, line: 269, baseType: !2332, size: 8)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2329, file: !137, line: 265, size: 8, elements: !2333)
!2333 = !{!2334, !2335, !2336}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2332, file: !137, line: 266, baseType: !654, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2332, file: !137, line: 267, baseType: !654, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2332, file: !137, line: 268, baseType: !654, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2329, file: !137, line: 270, baseType: !140, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2329, file: !137, line: 271, baseType: !140, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2329, file: !137, line: 272, baseType: !190, size: 128, offset: 128)
!2340 = !{!2341}
!2341 = !DISubrange(count: 5)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !136, file: !137, line: 364, baseType: !2343, size: 640, offset: 3264)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !137, line: 315, size: 640, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2354, !2363, !2364, !2365}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2343, file: !137, line: 316, baseType: !142, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2343, file: !137, line: 317, baseType: !363, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2343, file: !137, line: 318, baseType: !363, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2343, file: !137, line: 319, baseType: !190, size: 128, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2343, file: !137, line: 320, baseType: !2350, size: 8, offset: 320)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !137, line: 305, size: 8, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2350, file: !137, line: 306, baseType: !654, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2350, file: !137, line: 307, baseType: !654, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2343, file: !137, line: 321, baseType: !2355, size: 128, offset: 384)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !137, line: 310, size: 128, elements: !2356)
!2356 = !{!2357, !2362}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2355, file: !137, line: 311, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2355, file: !137, line: 312, baseType: !1686, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2343, file: !137, line: 322, baseType: !1868, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2343, file: !137, line: 323, baseType: !140, size: 32, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2343, file: !137, line: 324, baseType: !140, size: 32, offset: 608)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !136, file: !137, line: 365, baseType: !2367, size: 192, offset: 3904)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !137, line: 297, size: 192, elements: !2368)
!2368 = !{!2369, !2370, !2374, !2375}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2367, file: !137, line: 298, baseType: !140, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !137, line: 299, baseType: !2371, size: 8, offset: 32)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !137, line: 283, size: 8, elements: !2372)
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2371, file: !137, line: 284, baseType: !654, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2367, file: !137, line: 300, baseType: !140, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2367, file: !137, line: 301, baseType: !2376, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !137, line: 287, size: 64, elements: !2378)
!2378 = !{!2379, !2384, !2385, !2386}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2377, file: !137, line: 291, baseType: !2380, size: 8)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2377, file: !137, line: 288, size: 8, elements: !2381)
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2380, file: !137, line: 289, baseType: !654, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2380, file: !137, line: 290, baseType: !654, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2377, file: !137, line: 292, baseType: !654, size: 8, offset: 8)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2377, file: !137, line: 293, baseType: !654, size: 8, offset: 16)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2377, file: !137, line: 294, baseType: !140, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !136, file: !137, line: 366, baseType: !2388, size: 64, offset: 4096)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !137, line: 209, size: 64, elements: !2389)
!2389 = !{!2390}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2388, file: !137, line: 210, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !137, line: 84, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !136, file: !137, line: 367, baseType: !2394, size: 384, offset: 4160)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !137, line: 341, size: 384, elements: !2395)
!2395 = !{!2396, !2399, !2400, !2401}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2394, file: !137, line: 342, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2265)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2394, file: !137, line: 343, baseType: !190, size: 128, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2394, file: !137, line: 344, baseType: !2397, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2394, file: !137, line: 345, baseType: !190, size: 128, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !136, file: !137, line: 368, baseType: !2403, size: 64, offset: 4544)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !137, line: 122, size: 1216, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2413, !2417, !2421, !2422, !2423}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2404, file: !137, line: 123, baseType: !1781, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2404, file: !137, line: 124, baseType: !190, size: 128, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2404, file: !137, line: 125, baseType: !2409, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!167, !186, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2404, file: !137, line: 126, baseType: !2414, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!140, !135, !1781}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2404, file: !137, line: 127, baseType: !2418, size: 64, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !135}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2404, file: !137, line: 128, baseType: !1708, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2404, file: !137, line: 129, baseType: !1708, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2404, file: !137, line: 130, baseType: !2424, size: 704, offset: 512)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !137, line: 108, size: 704, elements: !2425)
!2425 = !{!2426, !2427, !2431, !2432, !2433}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2424, file: !137, line: 109, baseType: !183, size: 512)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2424, file: !137, line: 110, baseType: !2428, size: 64, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!140, !135}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2424, file: !137, line: 111, baseType: !2418, size: 64, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2424, file: !137, line: 112, baseType: !167, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2424, file: !137, line: 113, baseType: !167, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !136, file: !137, line: 369, baseType: !2435, size: 64, offset: 4608)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !137, line: 138, size: 256, elements: !2437)
!2437 = !{!2438, !2439, !2443, !2447}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2436, file: !137, line: 139, baseType: !135, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2436, file: !137, line: 140, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!140, !135, !517}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2436, file: !137, line: 141, baseType: !2444, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !135, !517}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2436, file: !137, line: 142, baseType: !2418, size: 64, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !136, file: !137, line: 370, baseType: !2449, size: 64, offset: 4672)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !137, line: 162, size: 2816, elements: !2451)
!2451 = !{!2452, !2456, !2457, !2458, !2459, !2468, !2469}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2450, file: !137, line: 163, baseType: !2453, size: 640)
!2453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 640, elements: !2454)
!2454 = !{!2455}
!2455 = !DISubrange(count: 80)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2450, file: !137, line: 164, baseType: !2453, size: 640, offset: 640)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2450, file: !137, line: 165, baseType: !1781, size: 64, offset: 1280)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2450, file: !137, line: 166, baseType: !7, size: 32, offset: 1344)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2450, file: !137, line: 167, baseType: !2460, size: 192, offset: 1408)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !137, line: 154, size: 192, elements: !2461)
!2461 = !{!2462, !2464, !2466}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2460, file: !137, line: 155, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !137, line: 150, baseType: !2428)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2460, file: !137, line: 156, baseType: !2465, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !137, line: 151, baseType: !2428)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2460, file: !137, line: 157, baseType: !2467, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !137, line: 152, baseType: !2444)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2450, file: !137, line: 168, baseType: !1758, size: 1152, offset: 1600)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2450, file: !137, line: 169, baseType: !131, size: 64, offset: 2752)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !136, file: !137, line: 371, baseType: !2471, size: 64, offset: 4736)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2473)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !137, line: 348, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !136, file: !137, line: 372, baseType: !134, size: 64, offset: 4800)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !136, file: !137, line: 373, baseType: !180, size: 5568, offset: 4864)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !136, file: !137, line: 374, baseType: !7, size: 32, offset: 10432)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !136, file: !137, line: 375, baseType: !7, size: 32, offset: 10464)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !136, file: !137, line: 376, baseType: !190, size: 128, offset: 10496)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !136, file: !137, line: 377, baseType: !462, size: 192, offset: 10624)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !136, file: !137, line: 378, baseType: !2418, size: 64, offset: 10816)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !2483, line: 25, baseType: !2484)
!2483 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2483, line: 23, size: 128, elements: !2485)
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2484, file: !2483, line: 24, baseType: !2487, size: 128)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 128, elements: !880)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "odvp_attr", file: !3, line: 67, size: 384, elements: !2490)
!2490 = !{!2491, !2492, !2745}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "odvp", scope: !2489, file: !3, line: 68, baseType: !140, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2489, file: !3, line: 69, baseType: !2493, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int3400_thermal_priv", file: !3, line: 48, size: 832, elements: !2495)
!2495 = !{!2496, !2497, !2536, !2706, !2707, !2725, !2726, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !2494, file: !3, line: 49, baseType: !135, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !2494, file: !3, line: 50, baseType: !2498, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2500, line: 22, size: 6208, elements: !2501)
!2500 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2523, !2530, !2531, !2534}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2499, file: !2500, line: 23, baseType: !186, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2499, file: !2500, line: 24, baseType: !140, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2499, file: !2500, line: 25, baseType: !167, size: 8, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2499, file: !2500, line: 26, baseType: !180, size: 5568, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2499, file: !2500, line: 27, baseType: !363, size: 64, offset: 5696)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2499, file: !2500, line: 28, baseType: !2089, size: 128, offset: 5760)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2499, file: !2500, line: 29, baseType: !517, size: 32, offset: 5888)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2499, file: !2500, line: 30, baseType: !2510, size: 64, offset: 5952)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2512, line: 20, size: 512, elements: !2513)
!2512 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2513 = !{!2514, !2516, !2517, !2518, !2519, !2520, !2521, !2522}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2511, file: !2512, line: 21, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !168, line: 158, baseType: !1216)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2511, file: !2512, line: 22, baseType: !2515, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2511, file: !2512, line: 23, baseType: !186, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !2512, line: 24, baseType: !294, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2511, file: !2512, line: 25, baseType: !294, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2511, file: !2512, line: 26, baseType: !2510, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2511, file: !2512, line: 26, baseType: !2510, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2511, file: !2512, line: 26, baseType: !2510, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2499, file: !2500, line: 32, baseType: !2524, size: 64, offset: 6016)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2526)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1770, line: 586, size: 256, elements: !2527)
!2527 = !{!2528, !2529}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2526, file: !1770, line: 587, baseType: !2262, size: 160)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2526, file: !1770, line: 588, baseType: !1790, size: 64, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2499, file: !2500, line: 33, baseType: !244, size: 64, offset: 6080)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2499, file: !2500, line: 36, baseType: !2532, size: 64, offset: 6144)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2500, line: 18, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2499, file: !2500, line: 39, baseType: !2535, offset: 6208)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2096, line: 8, elements: !217)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !2494, file: !3, line: 51, baseType: !2537, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !76, line: 150, size: 8448, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2649, !2673, !2688, !2689, !2690, !2694, !2695, !2696, !2705}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2538, file: !76, line: 151, baseType: !140, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2538, file: !76, line: 152, baseType: !2262, size: 160, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2538, file: !76, line: 153, baseType: !180, size: 5568, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2538, file: !76, line: 154, baseType: !301, size: 320, offset: 5760)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2538, file: !76, line: 155, baseType: !2545, size: 64, offset: 6080)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !76, line: 38, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2538, file: !76, line: 156, baseType: !2545, size: 64, offset: 6144)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2538, file: !76, line: 157, baseType: !2545, size: 64, offset: 6208)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2538, file: !76, line: 158, baseType: !64, size: 32, offset: 6272)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2538, file: !76, line: 159, baseType: !134, size: 64, offset: 6336)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2538, file: !76, line: 160, baseType: !140, size: 32, offset: 6400)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2538, file: !76, line: 161, baseType: !294, size: 64, offset: 6464)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2538, file: !76, line: 162, baseType: !140, size: 32, offset: 6528)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2538, file: !76, line: 163, baseType: !140, size: 32, offset: 6560)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2538, file: !76, line: 164, baseType: !140, size: 32, offset: 6592)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2538, file: !76, line: 165, baseType: !140, size: 32, offset: 6624)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2538, file: !76, line: 166, baseType: !140, size: 32, offset: 6656)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2538, file: !76, line: 167, baseType: !140, size: 32, offset: 6688)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2538, file: !76, line: 168, baseType: !140, size: 32, offset: 6720)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2538, file: !76, line: 169, baseType: !140, size: 32, offset: 6752)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !2538, file: !76, line: 170, baseType: !7, size: 32, offset: 6784)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2538, file: !76, line: 171, baseType: !385, size: 32, offset: 6816)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2538, file: !76, line: 172, baseType: !2564, size: 64, offset: 6848)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !76, line: 61, size: 896, elements: !2566)
!2566 = !{!2567, !2610, !2611, !2615, !2619, !2623, !2628, !2632, !2633, !2634, !2635, !2636, !2640, !2645}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2565, file: !76, line: 62, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!140, !2537, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !76, line: 93, size: 6528, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580, !2606, !2607, !2608, !2609}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2572, file: !76, line: 94, baseType: !140, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2572, file: !76, line: 95, baseType: !2262, size: 160, offset: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2572, file: !76, line: 96, baseType: !180, size: 5568, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2572, file: !76, line: 97, baseType: !1982, size: 64, offset: 5760)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2572, file: !76, line: 98, baseType: !134, size: 64, offset: 5824)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2572, file: !76, line: 99, baseType: !134, size: 64, offset: 5888)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2572, file: !76, line: 100, baseType: !2581, size: 64, offset: 5952)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2583)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !76, line: 84, size: 384, elements: !2584)
!2584 = !{!2585, !2589, !2590, !2594, !2598, !2602}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2583, file: !76, line: 85, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!140, !2571, !2033}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2583, file: !76, line: 86, baseType: !2586, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2583, file: !76, line: 87, baseType: !2591, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!140, !2571, !294}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2583, file: !76, line: 88, baseType: !2595, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!140, !2571, !718}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2583, file: !76, line: 89, baseType: !2599, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!140, !2571, !294, !718}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2583, file: !76, line: 90, baseType: !2603, size: 64, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!140, !2571, !517, !2033}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2572, file: !76, line: 101, baseType: !167, size: 8, offset: 6016)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2572, file: !76, line: 102, baseType: !462, size: 192, offset: 6080)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2572, file: !76, line: 103, baseType: !190, size: 128, offset: 6272)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2572, file: !76, line: 104, baseType: !190, size: 128, offset: 6400)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2565, file: !76, line: 64, baseType: !2568, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2565, file: !76, line: 66, baseType: !2612, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!140, !2537, !834}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2565, file: !76, line: 67, baseType: !2616, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!140, !2537, !140, !140}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2565, file: !76, line: 68, baseType: !2620, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!140, !2537, !64}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2565, file: !76, line: 70, baseType: !2624, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!140, !2537, !140, !2627}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2565, file: !76, line: 72, baseType: !2629, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!140, !2537, !140, !834}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2565, file: !76, line: 73, baseType: !2616, size: 64, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2565, file: !76, line: 74, baseType: !2629, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2565, file: !76, line: 75, baseType: !2616, size: 64, offset: 576)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2565, file: !76, line: 76, baseType: !2612, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2565, file: !76, line: 77, baseType: !2637, size: 64, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!140, !2537, !140}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2565, file: !76, line: 78, baseType: !2641, size: 64, offset: 768)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!140, !2537, !140, !2644}
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2565, file: !76, line: 80, baseType: !2646, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!140, !2537, !140, !69}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2538, file: !76, line: 173, baseType: !2650, size: 64, offset: 6912)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !76, line: 240, size: 576, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2651, file: !76, line: 241, baseType: !2262, size: 160)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2651, file: !76, line: 248, baseType: !167, size: 8, offset: 160)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2651, file: !76, line: 250, baseType: !140, size: 32, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2651, file: !76, line: 251, baseType: !2657, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !76, line: 205, size: 256, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2664}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2658, file: !76, line: 206, baseType: !2571, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2658, file: !76, line: 217, baseType: !140, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2658, file: !76, line: 224, baseType: !140, size: 32, offset: 96)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2658, file: !76, line: 234, baseType: !2033, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2658, file: !76, line: 235, baseType: !2568, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2651, file: !76, line: 257, baseType: !517, size: 32, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2651, file: !76, line: 263, baseType: !747, size: 32, offset: 352)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2651, file: !76, line: 269, baseType: !747, size: 32, offset: 384)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2651, file: !76, line: 272, baseType: !747, size: 32, offset: 416)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2651, file: !76, line: 275, baseType: !747, size: 32, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2651, file: !76, line: 278, baseType: !747, size: 32, offset: 480)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2651, file: !76, line: 284, baseType: !140, size: 32, offset: 512)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2651, file: !76, line: 289, baseType: !140, size: 32, offset: 544)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2538, file: !76, line: 174, baseType: !2674, size: 64, offset: 6976)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !76, line: 196, size: 512, elements: !2676)
!2676 = !{!2677, !2678, !2682, !2686, !2687}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2675, file: !76, line: 197, baseType: !2262, size: 160)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2675, file: !76, line: 198, baseType: !2679, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!140, !2537}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2675, file: !76, line: 199, baseType: !2683, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{null, !2537}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2675, file: !76, line: 200, baseType: !2637, size: 64, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2675, file: !76, line: 201, baseType: !190, size: 128, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2538, file: !76, line: 175, baseType: !134, size: 64, offset: 7040)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2538, file: !76, line: 176, baseType: !190, size: 128, offset: 7104)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2538, file: !76, line: 177, baseType: !2691, size: 128, offset: 7232)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1549, line: 244, size: 128, elements: !2692)
!2692 = !{!2693}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2691, file: !1549, line: 245, baseType: !1552, size: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2538, file: !76, line: 178, baseType: !462, size: 192, offset: 7360)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2538, file: !76, line: 179, baseType: !190, size: 128, offset: 7552)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2538, file: !76, line: 180, baseType: !2697, size: 704, offset: 7680)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1425, line: 115, size: 704, elements: !2698)
!2698 = !{!2699, !2700, !2701, !2704}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2697, file: !1425, line: 116, baseType: !1424, size: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2697, file: !1425, line: 117, baseType: !1880, size: 320, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2697, file: !1425, line: 120, baseType: !2702, size: 64, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1425, line: 18, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2697, file: !1425, line: 121, baseType: !140, size: 32, offset: 640)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2538, file: !76, line: 181, baseType: !83, size: 32, offset: 8384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "art_count", scope: !2494, file: !3, line: 52, baseType: !140, size: 32, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "arts", scope: !2494, file: !3, line: 53, baseType: !2708, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "art", file: !2710, line: 17, size: 832, elements: !2711)
!2710 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h", directory: "/home/lizy2001/genbc/linux")
!2711 = !{!2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !2709, file: !2710, line: 18, baseType: !142, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2709, file: !2710, line: 19, baseType: !142, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2709, file: !2710, line: 20, baseType: !363, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ac0_max", scope: !2709, file: !2710, line: 21, baseType: !363, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ac1_max", scope: !2709, file: !2710, line: 22, baseType: !363, size: 64, offset: 256)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ac2_max", scope: !2709, file: !2710, line: 23, baseType: !363, size: 64, offset: 320)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ac3_max", scope: !2709, file: !2710, line: 24, baseType: !363, size: 64, offset: 384)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ac4_max", scope: !2709, file: !2710, line: 25, baseType: !363, size: 64, offset: 448)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ac5_max", scope: !2709, file: !2710, line: 26, baseType: !363, size: 64, offset: 512)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ac6_max", scope: !2709, file: !2710, line: 27, baseType: !363, size: 64, offset: 576)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ac7_max", scope: !2709, file: !2710, line: 28, baseType: !363, size: 64, offset: 640)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ac8_max", scope: !2709, file: !2710, line: 29, baseType: !363, size: 64, offset: 704)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ac9_max", scope: !2709, file: !2710, line: 30, baseType: !363, size: 64, offset: 768)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "trt_count", scope: !2494, file: !3, line: 54, baseType: !140, size: 32, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "trts", scope: !2494, file: !3, line: 55, baseType: !2727, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trt", file: !2710, line: 33, size: 512, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !2728, file: !2710, line: 34, baseType: !142, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2728, file: !2710, line: 35, baseType: !142, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "influence", scope: !2728, file: !2710, line: 36, baseType: !363, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !2728, file: !2710, line: 37, baseType: !363, size: 64, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2728, file: !2710, line: 38, baseType: !363, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2728, file: !2710, line: 39, baseType: !363, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2728, file: !2710, line: 40, baseType: !363, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2728, file: !2710, line: 41, baseType: !363, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_bitmap", scope: !2494, file: !3, line: 56, baseType: !654, size: 8, offset: 448)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rel_misc_dev_res", scope: !2494, file: !3, line: 57, baseType: !140, size: 32, offset: 480)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "current_uuid_index", scope: !2494, file: !3, line: 58, baseType: !140, size: 32, offset: 512)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "data_vault", scope: !2494, file: !3, line: 59, baseType: !244, size: 64, offset: 576)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "odvp_count", scope: !2494, file: !3, line: 60, baseType: !140, size: 32, offset: 640)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "odvp", scope: !2494, file: !3, line: 61, baseType: !834, size: 64, offset: 704)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "odvp_attrs", scope: !2494, file: !3, line: 62, baseType: !2488, size: 64, offset: 768)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2489, file: !3, line: 70, baseType: !2746, size: 256, offset: 128)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !120, line: 163, size: 256, elements: !2747)
!2747 = !{!2748, !2749, !2754}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2746, file: !120, line: 164, baseType: !281, size: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2746, file: !120, line: 165, baseType: !2750, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!275, !196, !2753, !244}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2746, file: !120, line: 167, baseType: !2755, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!275, !196, !2753, !186, !291}
!2758 = !{!0, !2759, !2766, !2771, !2776, !2781, !2786, !2807, !2812, !2814, !2816, !2818, !2820, !2823, !2837, !2839, !2841, !2844, !2846, !2849}
!2759 = !DIGlobalVariableExpression(var: !2760, expr: !DIExpression())
!2760 = distinct !DIGlobalVariable(name: "__exitcall_int3400_thermal_driver_exit", scope: !2, file: !3, line: 601, type: !2761, isLocal: true, isDefinition: true)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2762, line: 117, baseType: !2763)
!2762 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null}
!2766 = !DIGlobalVariableExpression(var: !2767, expr: !DIExpression())
!2767 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description172", scope: !2, file: !3, line: 603, type: !2768, isLocal: true, isDefinition: true, align: 8)
!2768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 408, elements: !2769)
!2769 = !{!2770}
!2770 = !DISubrange(count: 51)
!2771 = !DIGlobalVariableExpression(var: !2772, expr: !DIExpression())
!2772 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author173", scope: !2, file: !3, line: 604, type: !2773, isLocal: true, isDefinition: true, align: 8)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 440, elements: !2774)
!2774 = !{!2775}
!2775 = !DISubrange(count: 55)
!2776 = !DIGlobalVariableExpression(var: !2777, expr: !DIExpression())
!2777 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file174", scope: !2, file: !3, line: 605, type: !2778, isLocal: true, isDefinition: true, align: 8)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 600, elements: !2779)
!2779 = !{!2780}
!2780 = !DISubrange(count: 75)
!2781 = !DIGlobalVariableExpression(var: !2782, expr: !DIExpression())
!2782 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license175", scope: !2, file: !3, line: 605, type: !2783, isLocal: true, isDefinition: true, align: 8)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 224, elements: !2784)
!2784 = !{!2785}
!2785 = !DISubrange(count: 28)
!2786 = !DIGlobalVariableExpression(var: !2787, expr: !DIExpression())
!2787 = distinct !DIGlobalVariable(name: "int3400_thermal_driver", scope: !2, file: !3, line: 592, type: !2788, isLocal: true, isDefinition: true)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2500, line: 200, size: 1600, elements: !2789)
!2789 = !{!2790, !2794, !2795, !2799, !2803, !2804, !2805, !2806}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2788, file: !2500, line: 201, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!140, !2498}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2788, file: !2500, line: 202, baseType: !2791, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2788, file: !2500, line: 203, baseType: !2796, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2498}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2788, file: !2500, line: 204, baseType: !2800, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!140, !2498, !1801}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2788, file: !2500, line: 205, baseType: !2791, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2788, file: !2500, line: 206, baseType: !1758, size: 1152, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2788, file: !2500, line: 207, baseType: !2524, size: 64, offset: 1472)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2788, file: !2500, line: 208, baseType: !167, size: 8, offset: 1536)
!2807 = !DIGlobalVariableExpression(var: !2808, expr: !DIExpression())
!2808 = distinct !DIGlobalVariable(name: "int3400_thermal_uuids", scope: !2, file: !3, line: 33, type: !2809, isLocal: true, isDefinition: true)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 640, elements: !2810)
!2810 = !{!2811}
!2811 = !DISubrange(count: 10)
!2812 = !DIGlobalVariableExpression(var: !2813, expr: !DIExpression())
!2813 = distinct !DIGlobalVariable(name: "bin_attr_data_vault", scope: !2, file: !3, line: 80, type: !313, isLocal: true, isDefinition: true)
!2814 = !DIGlobalVariableExpression(var: !2815, expr: !DIExpression())
!2815 = distinct !DIGlobalVariable(name: "int3400_thermal_ops", scope: !2, file: !3, line: 434, type: !2565, isLocal: true, isDefinition: true)
!2816 = !DIGlobalVariableExpression(var: !2817, expr: !DIExpression())
!2817 = distinct !DIGlobalVariable(name: "int3400_thermal_params", scope: !2, file: !3, line: 439, type: !2651, isLocal: true, isDefinition: true)
!2818 = !DIGlobalVariableExpression(var: !2819, expr: !DIExpression())
!2819 = distinct !DIGlobalVariable(name: "uuid_attribute_group", scope: !2, file: !3, line: 185, type: !300, isLocal: true, isDefinition: true)
!2820 = !DIGlobalVariableExpression(var: !2821, expr: !DIExpression())
!2821 = distinct !DIGlobalVariable(name: "uuid_attrs", scope: !2, file: !3, line: 179, type: !2822, isLocal: true, isDefinition: true)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 192, elements: !245)
!2823 = !DIGlobalVariableExpression(var: !2824, expr: !DIExpression())
!2824 = distinct !DIGlobalVariable(name: "dev_attr_available_uuids", scope: !2, file: !3, line: 178, type: !2825, isLocal: true, isDefinition: true)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2826)
!2826 = !{!2827, !2828, !2833}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2825, file: !30, line: 100, baseType: !281, size: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2825, file: !30, line: 101, baseType: !2829, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!275, !1686, !2832, !244}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2825, file: !30, line: 103, baseType: !2834, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!275, !1686, !2832, !186, !291}
!2837 = !DIGlobalVariableExpression(var: !2838, expr: !DIExpression())
!2838 = distinct !DIGlobalVariable(name: "dev_attr_current_uuid", scope: !2, file: !3, line: 177, type: !2825, isLocal: true, isDefinition: true)
!2839 = !DIGlobalVariableExpression(var: !2840, expr: !DIExpression())
!2840 = distinct !DIGlobalVariable(name: "data_attribute_group", scope: !2, file: !3, line: 111, type: !300, isLocal: true, isDefinition: true)
!2841 = !DIGlobalVariableExpression(var: !2842, expr: !DIExpression())
!2842 = distinct !DIGlobalVariable(name: "imok_attr", scope: !2, file: !3, line: 106, type: !2843, isLocal: true, isDefinition: true)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 128, elements: !1061)
!2844 = !DIGlobalVariableExpression(var: !2845, expr: !DIExpression())
!2845 = distinct !DIGlobalVariable(name: "dev_attr_imok", scope: !2, file: !3, line: 104, type: !2825, isLocal: true, isDefinition: true)
!2846 = !DIGlobalVariableExpression(var: !2847, expr: !DIExpression())
!2847 = distinct !DIGlobalVariable(name: "data_attributes", scope: !2, file: !3, line: 82, type: !2848, isLocal: true, isDefinition: true)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 128, elements: !1061)
!2849 = !DIGlobalVariableExpression(var: !2850, expr: !DIExpression())
!2850 = distinct !DIGlobalVariable(name: "int3400_thermal_match", scope: !2, file: !3, line: 584, type: !2851, isLocal: true, isDefinition: true)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1782, size: 768, elements: !245)
!2852 = !{i32 7, !"Dwarf Version", i32 4}
!2853 = !{i32 2, !"Debug Info Version", i32 3}
!2854 = !{i32 1, !"wchar_size", i32 2}
!2855 = !{i32 1, !"Code Model", i32 2}
!2856 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2857 = distinct !DISubprogram(name: "int3400_thermal_driver_init", scope: !3, file: !3, line: 601, type: !2858, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!140}
!2860 = !DILocation(line: 601, column: 1, scope: !2857)
!2861 = distinct !DISubprogram(name: "int3400_thermal_driver_exit", scope: !3, file: !3, line: 601, type: !2764, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2862 = !DILocation(line: 601, column: 1, scope: !2861)
!2863 = distinct !DISubprogram(name: "int3400_thermal_probe", scope: !3, file: !3, line: 470, type: !2792, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!2864 = !DILocalVariable(name: "pdev", arg: 1, scope: !2863, file: !3, line: 470, type: !2498)
!2865 = !DILocation(line: 470, column: 58, scope: !2863)
!2866 = !DILocalVariable(name: "adev", scope: !2863, file: !3, line: 472, type: !135)
!2867 = !DILocation(line: 472, column: 22, scope: !2863)
!2868 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2869, file: !3, line: 472, type: !149)
!2869 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 472, column: 29)
!2870 = !DILocation(line: 472, column: 29, scope: !2869)
!2871 = !DILocalVariable(name: "__mptr", scope: !2872, file: !3, line: 472, type: !134)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 472, column: 29)
!2873 = !DILocation(line: 472, column: 29, scope: !2872)
!2874 = !DILocation(line: 472, column: 29, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 472, column: 29)
!2876 = !DILocalVariable(name: "priv", scope: !2863, file: !3, line: 473, type: !2493)
!2877 = !DILocation(line: 473, column: 31, scope: !2863)
!2878 = !DILocalVariable(name: "result", scope: !2863, file: !3, line: 474, type: !140)
!2879 = !DILocation(line: 474, column: 6, scope: !2863)
!2880 = !DILocation(line: 476, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 476, column: 6)
!2882 = !DILocation(line: 476, column: 6, scope: !2863)
!2883 = !DILocation(line: 477, column: 3, scope: !2881)
!2884 = !DILocation(line: 479, column: 9, scope: !2863)
!2885 = !DILocation(line: 479, column: 7, scope: !2863)
!2886 = !DILocation(line: 480, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 480, column: 6)
!2888 = !DILocation(line: 480, column: 6, scope: !2863)
!2889 = !DILocation(line: 481, column: 3, scope: !2887)
!2890 = !DILocation(line: 483, column: 15, scope: !2863)
!2891 = !DILocation(line: 483, column: 2, scope: !2863)
!2892 = !DILocation(line: 483, column: 8, scope: !2863)
!2893 = !DILocation(line: 483, column: 13, scope: !2863)
!2894 = !DILocation(line: 484, column: 15, scope: !2863)
!2895 = !DILocation(line: 484, column: 2, scope: !2863)
!2896 = !DILocation(line: 484, column: 8, scope: !2863)
!2897 = !DILocation(line: 484, column: 13, scope: !2863)
!2898 = !DILocation(line: 486, column: 37, scope: !2863)
!2899 = !DILocation(line: 486, column: 11, scope: !2863)
!2900 = !DILocation(line: 486, column: 9, scope: !2863)
!2901 = !DILocation(line: 489, column: 6, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 489, column: 6)
!2903 = !DILocation(line: 489, column: 13, scope: !2902)
!2904 = !DILocation(line: 489, column: 16, scope: !2902)
!2905 = !DILocation(line: 489, column: 23, scope: !2902)
!2906 = !DILocation(line: 489, column: 6, scope: !2863)
!2907 = !DILocation(line: 490, column: 3, scope: !2902)
!2908 = !DILocation(line: 492, column: 2, scope: !2863)
!2909 = !DILocation(line: 492, column: 8, scope: !2863)
!2910 = !DILocation(line: 492, column: 27, scope: !2863)
!2911 = !DILocation(line: 494, column: 26, scope: !2863)
!2912 = !DILocation(line: 494, column: 32, scope: !2863)
!2913 = !DILocation(line: 494, column: 38, scope: !2863)
!2914 = !DILocation(line: 494, column: 47, scope: !2863)
!2915 = !DILocation(line: 494, column: 53, scope: !2863)
!2916 = !DILocation(line: 495, column: 6, scope: !2863)
!2917 = !DILocation(line: 495, column: 12, scope: !2863)
!2918 = !DILocation(line: 494, column: 11, scope: !2863)
!2919 = !DILocation(line: 494, column: 9, scope: !2863)
!2920 = !DILocation(line: 496, column: 6, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 496, column: 6)
!2922 = !DILocation(line: 496, column: 6, scope: !2863)
!2923 = !DILocation(line: 497, column: 3, scope: !2921)
!2924 = !DILocation(line: 499, column: 26, scope: !2863)
!2925 = !DILocation(line: 499, column: 32, scope: !2863)
!2926 = !DILocation(line: 499, column: 38, scope: !2863)
!2927 = !DILocation(line: 499, column: 47, scope: !2863)
!2928 = !DILocation(line: 499, column: 53, scope: !2863)
!2929 = !DILocation(line: 500, column: 6, scope: !2863)
!2930 = !DILocation(line: 500, column: 12, scope: !2863)
!2931 = !DILocation(line: 499, column: 11, scope: !2863)
!2932 = !DILocation(line: 499, column: 9, scope: !2863)
!2933 = !DILocation(line: 501, column: 6, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 501, column: 6)
!2935 = !DILocation(line: 501, column: 6, scope: !2863)
!2936 = !DILocation(line: 502, column: 3, scope: !2934)
!2937 = !DILocation(line: 504, column: 23, scope: !2863)
!2938 = !DILocation(line: 504, column: 29, scope: !2863)
!2939 = !DILocation(line: 504, column: 2, scope: !2863)
!2940 = !DILocation(line: 506, column: 21, scope: !2863)
!2941 = !DILocation(line: 506, column: 2, scope: !2863)
!2942 = !DILocation(line: 508, column: 16, scope: !2863)
!2943 = !DILocation(line: 508, column: 2, scope: !2863)
!2944 = !DILocation(line: 511, column: 7, scope: !2863)
!2945 = !DILocation(line: 510, column: 18, scope: !2863)
!2946 = !DILocation(line: 510, column: 2, scope: !2863)
!2947 = !DILocation(line: 510, column: 8, scope: !2863)
!2948 = !DILocation(line: 510, column: 16, scope: !2863)
!2949 = !DILocation(line: 513, column: 13, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 513, column: 6)
!2951 = !DILocation(line: 513, column: 19, scope: !2950)
!2952 = !DILocation(line: 513, column: 6, scope: !2950)
!2953 = !DILocation(line: 513, column: 6, scope: !2863)
!2954 = !DILocation(line: 514, column: 20, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 513, column: 29)
!2956 = !DILocation(line: 514, column: 26, scope: !2955)
!2957 = !DILocation(line: 514, column: 12, scope: !2955)
!2958 = !DILocation(line: 514, column: 10, scope: !2955)
!2959 = !DILocation(line: 515, column: 3, scope: !2955)
!2960 = !DILocation(line: 519, column: 8, scope: !2863)
!2961 = !DILocation(line: 519, column: 14, scope: !2863)
!2962 = !DILocation(line: 519, column: 20, scope: !2863)
!2963 = !DILocation(line: 518, column: 27, scope: !2863)
!2964 = !DILocation(line: 518, column: 2, scope: !2863)
!2965 = !DILocation(line: 518, column: 8, scope: !2863)
!2966 = !DILocation(line: 518, column: 25, scope: !2863)
!2967 = !DILocation(line: 521, column: 31, scope: !2863)
!2968 = !DILocation(line: 521, column: 37, scope: !2863)
!2969 = !DILocation(line: 521, column: 41, scope: !2863)
!2970 = !DILocation(line: 521, column: 11, scope: !2863)
!2971 = !DILocation(line: 521, column: 9, scope: !2863)
!2972 = !DILocation(line: 522, column: 6, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 522, column: 6)
!2974 = !DILocation(line: 522, column: 6, scope: !2863)
!2975 = !DILocation(line: 523, column: 3, scope: !2973)
!2976 = !DILocation(line: 525, column: 6, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 525, column: 6)
!2978 = !DILocation(line: 525, column: 12, scope: !2977)
!2979 = !DILocation(line: 525, column: 6, scope: !2863)
!2980 = !DILocation(line: 526, column: 32, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 525, column: 24)
!2982 = !DILocation(line: 526, column: 38, scope: !2981)
!2983 = !DILocation(line: 526, column: 42, scope: !2981)
!2984 = !DILocation(line: 526, column: 12, scope: !2981)
!2985 = !DILocation(line: 526, column: 10, scope: !2981)
!2986 = !DILocation(line: 528, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 528, column: 7)
!2988 = !DILocation(line: 528, column: 7, scope: !2981)
!2989 = !DILocation(line: 529, column: 4, scope: !2987)
!2990 = !DILocation(line: 530, column: 2, scope: !2981)
!2991 = !DILocation(line: 533, column: 4, scope: !2863)
!2992 = !DILocation(line: 533, column: 10, scope: !2863)
!2993 = !DILocation(line: 533, column: 16, scope: !2863)
!2994 = !DILocation(line: 534, column: 12, scope: !2863)
!2995 = !DILocation(line: 534, column: 4, scope: !2863)
!2996 = !DILocation(line: 532, column: 11, scope: !2863)
!2997 = !DILocation(line: 532, column: 9, scope: !2863)
!2998 = !DILocation(line: 535, column: 6, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 535, column: 6)
!3000 = !DILocation(line: 535, column: 6, scope: !2863)
!3001 = !DILocation(line: 536, column: 3, scope: !2999)
!3002 = !DILocation(line: 538, column: 2, scope: !2863)
!3003 = !DILabel(scope: !2863, name: "free_sysfs", file: !3, line: 540)
!3004 = !DILocation(line: 540, column: 1, scope: !2863)
!3005 = !DILocation(line: 541, column: 15, scope: !2863)
!3006 = !DILocation(line: 541, column: 2, scope: !2863)
!3007 = !DILocation(line: 542, column: 6, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 542, column: 6)
!3009 = !DILocation(line: 542, column: 12, scope: !3008)
!3010 = !DILocation(line: 542, column: 6, scope: !2863)
!3011 = !DILocation(line: 543, column: 23, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 542, column: 24)
!3013 = !DILocation(line: 543, column: 29, scope: !3012)
!3014 = !DILocation(line: 543, column: 33, scope: !3012)
!3015 = !DILocation(line: 543, column: 3, scope: !3012)
!3016 = !DILocation(line: 544, column: 9, scope: !3012)
!3017 = !DILocation(line: 544, column: 15, scope: !3012)
!3018 = !DILocation(line: 544, column: 3, scope: !3012)
!3019 = !DILocation(line: 545, column: 2, scope: !3012)
!3020 = !DILabel(scope: !2863, name: "free_uuid", file: !3, line: 546)
!3021 = !DILocation(line: 546, column: 1, scope: !2863)
!3022 = !DILocation(line: 547, column: 22, scope: !2863)
!3023 = !DILocation(line: 547, column: 28, scope: !2863)
!3024 = !DILocation(line: 547, column: 32, scope: !2863)
!3025 = !DILocation(line: 547, column: 2, scope: !2863)
!3026 = !DILabel(scope: !2863, name: "free_rel_misc", file: !3, line: 548)
!3027 = !DILocation(line: 548, column: 1, scope: !2863)
!3028 = !DILocation(line: 549, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 549, column: 6)
!3030 = !DILocation(line: 549, column: 13, scope: !3029)
!3031 = !DILocation(line: 549, column: 6, scope: !2863)
!3032 = !DILocation(line: 550, column: 39, scope: !3029)
!3033 = !DILocation(line: 550, column: 45, scope: !3029)
!3034 = !DILocation(line: 550, column: 51, scope: !3029)
!3035 = !DILocation(line: 550, column: 3, scope: !3029)
!3036 = !DILocation(line: 551, column: 33, scope: !2863)
!3037 = !DILocation(line: 551, column: 39, scope: !2863)
!3038 = !DILocation(line: 551, column: 2, scope: !2863)
!3039 = !DILabel(scope: !2863, name: "free_art_trt", file: !3, line: 552)
!3040 = !DILocation(line: 552, column: 1, scope: !2863)
!3041 = !DILocation(line: 553, column: 8, scope: !2863)
!3042 = !DILocation(line: 553, column: 14, scope: !2863)
!3043 = !DILocation(line: 553, column: 2, scope: !2863)
!3044 = !DILocation(line: 554, column: 8, scope: !2863)
!3045 = !DILocation(line: 554, column: 14, scope: !2863)
!3046 = !DILocation(line: 554, column: 2, scope: !2863)
!3047 = !DILabel(scope: !2863, name: "free_priv", file: !3, line: 555)
!3048 = !DILocation(line: 555, column: 1, scope: !2863)
!3049 = !DILocation(line: 556, column: 8, scope: !2863)
!3050 = !DILocation(line: 556, column: 2, scope: !2863)
!3051 = !DILocation(line: 557, column: 9, scope: !2863)
!3052 = !DILocation(line: 557, column: 2, scope: !2863)
!3053 = !DILocation(line: 558, column: 1, scope: !2863)
!3054 = distinct !DISubprogram(name: "int3400_thermal_remove", scope: !3, file: !3, line: 560, type: !2792, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3055 = !DILocalVariable(name: "pdev", arg: 1, scope: !3054, file: !3, line: 560, type: !2498)
!3056 = !DILocation(line: 560, column: 59, scope: !3054)
!3057 = !DILocalVariable(name: "priv", scope: !3054, file: !3, line: 562, type: !2493)
!3058 = !DILocation(line: 562, column: 31, scope: !3054)
!3059 = !DILocation(line: 562, column: 59, scope: !3054)
!3060 = !DILocation(line: 562, column: 38, scope: !3054)
!3061 = !DILocation(line: 565, column: 4, scope: !3054)
!3062 = !DILocation(line: 565, column: 10, scope: !3054)
!3063 = !DILocation(line: 565, column: 16, scope: !3054)
!3064 = !DILocation(line: 564, column: 2, scope: !3054)
!3065 = !DILocation(line: 568, column: 15, scope: !3054)
!3066 = !DILocation(line: 568, column: 2, scope: !3054)
!3067 = !DILocation(line: 570, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 570, column: 6)
!3069 = !DILocation(line: 570, column: 13, scope: !3068)
!3070 = !DILocation(line: 570, column: 6, scope: !3054)
!3071 = !DILocation(line: 571, column: 39, scope: !3068)
!3072 = !DILocation(line: 571, column: 45, scope: !3068)
!3073 = !DILocation(line: 571, column: 51, scope: !3068)
!3074 = !DILocation(line: 571, column: 3, scope: !3068)
!3075 = !DILocation(line: 573, column: 6, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 573, column: 6)
!3077 = !DILocation(line: 573, column: 12, scope: !3076)
!3078 = !DILocation(line: 573, column: 6, scope: !3054)
!3079 = !DILocation(line: 574, column: 23, scope: !3076)
!3080 = !DILocation(line: 574, column: 29, scope: !3076)
!3081 = !DILocation(line: 574, column: 33, scope: !3076)
!3082 = !DILocation(line: 574, column: 3, scope: !3076)
!3083 = !DILocation(line: 575, column: 22, scope: !3054)
!3084 = !DILocation(line: 575, column: 28, scope: !3054)
!3085 = !DILocation(line: 575, column: 32, scope: !3054)
!3086 = !DILocation(line: 575, column: 2, scope: !3054)
!3087 = !DILocation(line: 576, column: 33, scope: !3054)
!3088 = !DILocation(line: 576, column: 39, scope: !3054)
!3089 = !DILocation(line: 576, column: 2, scope: !3054)
!3090 = !DILocation(line: 577, column: 8, scope: !3054)
!3091 = !DILocation(line: 577, column: 14, scope: !3054)
!3092 = !DILocation(line: 577, column: 2, scope: !3054)
!3093 = !DILocation(line: 578, column: 8, scope: !3054)
!3094 = !DILocation(line: 578, column: 14, scope: !3054)
!3095 = !DILocation(line: 578, column: 2, scope: !3054)
!3096 = !DILocation(line: 579, column: 8, scope: !3054)
!3097 = !DILocation(line: 579, column: 14, scope: !3054)
!3098 = !DILocation(line: 579, column: 2, scope: !3054)
!3099 = !DILocation(line: 580, column: 8, scope: !3054)
!3100 = !DILocation(line: 580, column: 2, scope: !3054)
!3101 = !DILocation(line: 581, column: 2, scope: !3054)
!3102 = distinct !DISubprogram(name: "kzalloc", scope: !100, file: !100, line: 662, type: !3103, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!134, !291, !1557}
!3105 = !DILocalVariable(name: "s", arg: 1, scope: !3106, file: !100, line: 445, type: !1137)
!3106 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !100, file: !100, line: 445, type: !3107, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!134, !1137, !1557, !291}
!3109 = !DILocation(line: 445, column: 72, scope: !3106, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 552, column: 10, scope: !3111, inlinedAt: !3114)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !100, line: 540, column: 34)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !100, line: 540, column: 6)
!3113 = distinct !DISubprogram(name: "kmalloc", scope: !100, file: !100, line: 538, type: !3103, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3114 = distinct !DILocation(line: 664, column: 9, scope: !3102)
!3115 = !DILocalVariable(name: "flags", arg: 2, scope: !3106, file: !100, line: 446, type: !1557)
!3116 = !DILocation(line: 446, column: 9, scope: !3106, inlinedAt: !3110)
!3117 = !DILocalVariable(name: "size", arg: 3, scope: !3106, file: !100, line: 446, type: !291)
!3118 = !DILocation(line: 446, column: 23, scope: !3106, inlinedAt: !3110)
!3119 = !DILocalVariable(name: "ret", scope: !3106, file: !100, line: 448, type: !134)
!3120 = !DILocation(line: 448, column: 8, scope: !3106, inlinedAt: !3110)
!3121 = !DILocalVariable(name: "flags", arg: 1, scope: !3122, file: !100, line: 318, type: !1557)
!3122 = distinct !DISubprogram(name: "kmalloc_type", scope: !100, file: !100, line: 318, type: !3123, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!99, !1557}
!3125 = !DILocation(line: 318, column: 67, scope: !3122, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 553, column: 20, scope: !3111, inlinedAt: !3114)
!3127 = !DILocalVariable(name: "size", arg: 1, scope: !3128, file: !100, line: 346, type: !291)
!3128 = distinct !DISubprogram(name: "kmalloc_index", scope: !100, file: !100, line: 346, type: !3129, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!7, !291}
!3131 = !DILocation(line: 346, column: 58, scope: !3128, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 547, column: 11, scope: !3111, inlinedAt: !3114)
!3133 = !DILocalVariable(name: "size", arg: 1, scope: !3134, file: !100, line: 472, type: !291)
!3134 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !100, file: !100, line: 472, type: !3135, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!134, !291, !1557, !7}
!3137 = !DILocation(line: 472, column: 28, scope: !3134, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 481, column: 9, scope: !3139, inlinedAt: !3140)
!3139 = distinct !DISubprogram(name: "kmalloc_large", scope: !100, file: !100, line: 478, type: !3103, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3140 = distinct !DILocation(line: 545, column: 11, scope: !3141, inlinedAt: !3114)
!3141 = distinct !DILexicalBlock(scope: !3111, file: !100, line: 544, column: 7)
!3142 = !DILocalVariable(name: "flags", arg: 2, scope: !3134, file: !100, line: 472, type: !1557)
!3143 = !DILocation(line: 472, column: 40, scope: !3134, inlinedAt: !3138)
!3144 = !DILocalVariable(name: "order", arg: 3, scope: !3134, file: !100, line: 472, type: !7)
!3145 = !DILocation(line: 472, column: 60, scope: !3134, inlinedAt: !3138)
!3146 = !DILocalVariable(name: "size", arg: 1, scope: !3139, file: !100, line: 478, type: !291)
!3147 = !DILocation(line: 478, column: 51, scope: !3139, inlinedAt: !3140)
!3148 = !DILocalVariable(name: "flags", arg: 2, scope: !3139, file: !100, line: 478, type: !1557)
!3149 = !DILocation(line: 478, column: 63, scope: !3139, inlinedAt: !3140)
!3150 = !DILocalVariable(name: "order", scope: !3139, file: !100, line: 480, type: !7)
!3151 = !DILocation(line: 480, column: 15, scope: !3139, inlinedAt: !3140)
!3152 = !DILocalVariable(name: "size", arg: 1, scope: !3113, file: !100, line: 538, type: !291)
!3153 = !DILocation(line: 538, column: 45, scope: !3113, inlinedAt: !3114)
!3154 = !DILocalVariable(name: "flags", arg: 2, scope: !3113, file: !100, line: 538, type: !1557)
!3155 = !DILocation(line: 538, column: 57, scope: !3113, inlinedAt: !3114)
!3156 = !DILocalVariable(name: "index", scope: !3111, file: !100, line: 542, type: !7)
!3157 = !DILocation(line: 542, column: 16, scope: !3111, inlinedAt: !3114)
!3158 = !DILocalVariable(name: "size", arg: 1, scope: !3102, file: !100, line: 662, type: !291)
!3159 = !DILocation(line: 662, column: 36, scope: !3102)
!3160 = !DILocalVariable(name: "flags", arg: 2, scope: !3102, file: !100, line: 662, type: !1557)
!3161 = !DILocation(line: 662, column: 48, scope: !3102)
!3162 = !DILocation(line: 664, column: 17, scope: !3102)
!3163 = !DILocation(line: 664, column: 23, scope: !3102)
!3164 = !DILocation(line: 664, column: 29, scope: !3102)
!3165 = !DILocation(line: 540, column: 27, scope: !3112, inlinedAt: !3114)
!3166 = !DILocation(line: 540, column: 6, scope: !3112, inlinedAt: !3114)
!3167 = !DILocation(line: 540, column: 6, scope: !3113, inlinedAt: !3114)
!3168 = !DILocation(line: 544, column: 7, scope: !3141, inlinedAt: !3114)
!3169 = !DILocation(line: 544, column: 12, scope: !3141, inlinedAt: !3114)
!3170 = !DILocation(line: 544, column: 7, scope: !3111, inlinedAt: !3114)
!3171 = !DILocation(line: 545, column: 25, scope: !3141, inlinedAt: !3114)
!3172 = !DILocation(line: 545, column: 31, scope: !3141, inlinedAt: !3114)
!3173 = !DILocation(line: 480, column: 33, scope: !3139, inlinedAt: !3140)
!3174 = !DILocation(line: 480, column: 23, scope: !3139, inlinedAt: !3140)
!3175 = !DILocation(line: 481, column: 29, scope: !3139, inlinedAt: !3140)
!3176 = !DILocation(line: 481, column: 35, scope: !3139, inlinedAt: !3140)
!3177 = !DILocation(line: 481, column: 42, scope: !3139, inlinedAt: !3140)
!3178 = !DILocation(line: 474, column: 23, scope: !3134, inlinedAt: !3138)
!3179 = !DILocation(line: 474, column: 29, scope: !3134, inlinedAt: !3138)
!3180 = !DILocation(line: 474, column: 36, scope: !3134, inlinedAt: !3138)
!3181 = !DILocation(line: 474, column: 9, scope: !3134, inlinedAt: !3138)
!3182 = !DILocation(line: 545, column: 4, scope: !3141, inlinedAt: !3114)
!3183 = !DILocation(line: 547, column: 25, scope: !3111, inlinedAt: !3114)
!3184 = !DILocation(line: 348, column: 7, scope: !3185, inlinedAt: !3132)
!3185 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 348, column: 6)
!3186 = !DILocation(line: 348, column: 6, scope: !3128, inlinedAt: !3132)
!3187 = !DILocation(line: 349, column: 3, scope: !3185, inlinedAt: !3132)
!3188 = !DILocation(line: 351, column: 6, scope: !3189, inlinedAt: !3132)
!3189 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 351, column: 6)
!3190 = !DILocation(line: 351, column: 11, scope: !3189, inlinedAt: !3132)
!3191 = !DILocation(line: 351, column: 6, scope: !3128, inlinedAt: !3132)
!3192 = !DILocation(line: 352, column: 3, scope: !3189, inlinedAt: !3132)
!3193 = !DILocation(line: 354, column: 32, scope: !3194, inlinedAt: !3132)
!3194 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 354, column: 6)
!3195 = !DILocation(line: 354, column: 37, scope: !3194, inlinedAt: !3132)
!3196 = !DILocation(line: 354, column: 42, scope: !3194, inlinedAt: !3132)
!3197 = !DILocation(line: 354, column: 45, scope: !3194, inlinedAt: !3132)
!3198 = !DILocation(line: 354, column: 50, scope: !3194, inlinedAt: !3132)
!3199 = !DILocation(line: 354, column: 6, scope: !3128, inlinedAt: !3132)
!3200 = !DILocation(line: 355, column: 3, scope: !3194, inlinedAt: !3132)
!3201 = !DILocation(line: 356, column: 32, scope: !3202, inlinedAt: !3132)
!3202 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 356, column: 6)
!3203 = !DILocation(line: 356, column: 37, scope: !3202, inlinedAt: !3132)
!3204 = !DILocation(line: 356, column: 43, scope: !3202, inlinedAt: !3132)
!3205 = !DILocation(line: 356, column: 46, scope: !3202, inlinedAt: !3132)
!3206 = !DILocation(line: 356, column: 51, scope: !3202, inlinedAt: !3132)
!3207 = !DILocation(line: 356, column: 6, scope: !3128, inlinedAt: !3132)
!3208 = !DILocation(line: 357, column: 3, scope: !3202, inlinedAt: !3132)
!3209 = !DILocation(line: 358, column: 6, scope: !3210, inlinedAt: !3132)
!3210 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 358, column: 6)
!3211 = !DILocation(line: 358, column: 11, scope: !3210, inlinedAt: !3132)
!3212 = !DILocation(line: 358, column: 6, scope: !3128, inlinedAt: !3132)
!3213 = !DILocation(line: 358, column: 26, scope: !3210, inlinedAt: !3132)
!3214 = !DILocation(line: 359, column: 6, scope: !3215, inlinedAt: !3132)
!3215 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 359, column: 6)
!3216 = !DILocation(line: 359, column: 11, scope: !3215, inlinedAt: !3132)
!3217 = !DILocation(line: 359, column: 6, scope: !3128, inlinedAt: !3132)
!3218 = !DILocation(line: 359, column: 26, scope: !3215, inlinedAt: !3132)
!3219 = !DILocation(line: 360, column: 6, scope: !3220, inlinedAt: !3132)
!3220 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 360, column: 6)
!3221 = !DILocation(line: 360, column: 11, scope: !3220, inlinedAt: !3132)
!3222 = !DILocation(line: 360, column: 6, scope: !3128, inlinedAt: !3132)
!3223 = !DILocation(line: 360, column: 26, scope: !3220, inlinedAt: !3132)
!3224 = !DILocation(line: 361, column: 6, scope: !3225, inlinedAt: !3132)
!3225 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 361, column: 6)
!3226 = !DILocation(line: 361, column: 11, scope: !3225, inlinedAt: !3132)
!3227 = !DILocation(line: 361, column: 6, scope: !3128, inlinedAt: !3132)
!3228 = !DILocation(line: 361, column: 26, scope: !3225, inlinedAt: !3132)
!3229 = !DILocation(line: 362, column: 6, scope: !3230, inlinedAt: !3132)
!3230 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 362, column: 6)
!3231 = !DILocation(line: 362, column: 11, scope: !3230, inlinedAt: !3132)
!3232 = !DILocation(line: 362, column: 6, scope: !3128, inlinedAt: !3132)
!3233 = !DILocation(line: 362, column: 26, scope: !3230, inlinedAt: !3132)
!3234 = !DILocation(line: 363, column: 6, scope: !3235, inlinedAt: !3132)
!3235 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 363, column: 6)
!3236 = !DILocation(line: 363, column: 11, scope: !3235, inlinedAt: !3132)
!3237 = !DILocation(line: 363, column: 6, scope: !3128, inlinedAt: !3132)
!3238 = !DILocation(line: 363, column: 26, scope: !3235, inlinedAt: !3132)
!3239 = !DILocation(line: 364, column: 6, scope: !3240, inlinedAt: !3132)
!3240 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 364, column: 6)
!3241 = !DILocation(line: 364, column: 11, scope: !3240, inlinedAt: !3132)
!3242 = !DILocation(line: 364, column: 6, scope: !3128, inlinedAt: !3132)
!3243 = !DILocation(line: 364, column: 26, scope: !3240, inlinedAt: !3132)
!3244 = !DILocation(line: 365, column: 6, scope: !3245, inlinedAt: !3132)
!3245 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 365, column: 6)
!3246 = !DILocation(line: 365, column: 11, scope: !3245, inlinedAt: !3132)
!3247 = !DILocation(line: 365, column: 6, scope: !3128, inlinedAt: !3132)
!3248 = !DILocation(line: 365, column: 26, scope: !3245, inlinedAt: !3132)
!3249 = !DILocation(line: 366, column: 6, scope: !3250, inlinedAt: !3132)
!3250 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 366, column: 6)
!3251 = !DILocation(line: 366, column: 11, scope: !3250, inlinedAt: !3132)
!3252 = !DILocation(line: 366, column: 6, scope: !3128, inlinedAt: !3132)
!3253 = !DILocation(line: 366, column: 26, scope: !3250, inlinedAt: !3132)
!3254 = !DILocation(line: 367, column: 6, scope: !3255, inlinedAt: !3132)
!3255 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 367, column: 6)
!3256 = !DILocation(line: 367, column: 11, scope: !3255, inlinedAt: !3132)
!3257 = !DILocation(line: 367, column: 6, scope: !3128, inlinedAt: !3132)
!3258 = !DILocation(line: 367, column: 26, scope: !3255, inlinedAt: !3132)
!3259 = !DILocation(line: 368, column: 6, scope: !3260, inlinedAt: !3132)
!3260 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 368, column: 6)
!3261 = !DILocation(line: 368, column: 11, scope: !3260, inlinedAt: !3132)
!3262 = !DILocation(line: 368, column: 6, scope: !3128, inlinedAt: !3132)
!3263 = !DILocation(line: 368, column: 26, scope: !3260, inlinedAt: !3132)
!3264 = !DILocation(line: 369, column: 6, scope: !3265, inlinedAt: !3132)
!3265 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 369, column: 6)
!3266 = !DILocation(line: 369, column: 11, scope: !3265, inlinedAt: !3132)
!3267 = !DILocation(line: 369, column: 6, scope: !3128, inlinedAt: !3132)
!3268 = !DILocation(line: 369, column: 26, scope: !3265, inlinedAt: !3132)
!3269 = !DILocation(line: 370, column: 6, scope: !3270, inlinedAt: !3132)
!3270 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 370, column: 6)
!3271 = !DILocation(line: 370, column: 11, scope: !3270, inlinedAt: !3132)
!3272 = !DILocation(line: 370, column: 6, scope: !3128, inlinedAt: !3132)
!3273 = !DILocation(line: 370, column: 26, scope: !3270, inlinedAt: !3132)
!3274 = !DILocation(line: 371, column: 6, scope: !3275, inlinedAt: !3132)
!3275 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 371, column: 6)
!3276 = !DILocation(line: 371, column: 11, scope: !3275, inlinedAt: !3132)
!3277 = !DILocation(line: 371, column: 6, scope: !3128, inlinedAt: !3132)
!3278 = !DILocation(line: 371, column: 26, scope: !3275, inlinedAt: !3132)
!3279 = !DILocation(line: 372, column: 6, scope: !3280, inlinedAt: !3132)
!3280 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 372, column: 6)
!3281 = !DILocation(line: 372, column: 11, scope: !3280, inlinedAt: !3132)
!3282 = !DILocation(line: 372, column: 6, scope: !3128, inlinedAt: !3132)
!3283 = !DILocation(line: 372, column: 26, scope: !3280, inlinedAt: !3132)
!3284 = !DILocation(line: 373, column: 6, scope: !3285, inlinedAt: !3132)
!3285 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 373, column: 6)
!3286 = !DILocation(line: 373, column: 11, scope: !3285, inlinedAt: !3132)
!3287 = !DILocation(line: 373, column: 6, scope: !3128, inlinedAt: !3132)
!3288 = !DILocation(line: 373, column: 26, scope: !3285, inlinedAt: !3132)
!3289 = !DILocation(line: 374, column: 6, scope: !3290, inlinedAt: !3132)
!3290 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 374, column: 6)
!3291 = !DILocation(line: 374, column: 11, scope: !3290, inlinedAt: !3132)
!3292 = !DILocation(line: 374, column: 6, scope: !3128, inlinedAt: !3132)
!3293 = !DILocation(line: 374, column: 26, scope: !3290, inlinedAt: !3132)
!3294 = !DILocation(line: 375, column: 6, scope: !3295, inlinedAt: !3132)
!3295 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 375, column: 6)
!3296 = !DILocation(line: 375, column: 11, scope: !3295, inlinedAt: !3132)
!3297 = !DILocation(line: 375, column: 6, scope: !3128, inlinedAt: !3132)
!3298 = !DILocation(line: 375, column: 27, scope: !3295, inlinedAt: !3132)
!3299 = !DILocation(line: 376, column: 6, scope: !3300, inlinedAt: !3132)
!3300 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 376, column: 6)
!3301 = !DILocation(line: 376, column: 11, scope: !3300, inlinedAt: !3132)
!3302 = !DILocation(line: 376, column: 6, scope: !3128, inlinedAt: !3132)
!3303 = !DILocation(line: 376, column: 32, scope: !3300, inlinedAt: !3132)
!3304 = !DILocation(line: 377, column: 6, scope: !3305, inlinedAt: !3132)
!3305 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 377, column: 6)
!3306 = !DILocation(line: 377, column: 11, scope: !3305, inlinedAt: !3132)
!3307 = !DILocation(line: 377, column: 6, scope: !3128, inlinedAt: !3132)
!3308 = !DILocation(line: 377, column: 32, scope: !3305, inlinedAt: !3132)
!3309 = !DILocation(line: 378, column: 6, scope: !3310, inlinedAt: !3132)
!3310 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 378, column: 6)
!3311 = !DILocation(line: 378, column: 11, scope: !3310, inlinedAt: !3132)
!3312 = !DILocation(line: 378, column: 6, scope: !3128, inlinedAt: !3132)
!3313 = !DILocation(line: 378, column: 32, scope: !3310, inlinedAt: !3132)
!3314 = !DILocation(line: 379, column: 6, scope: !3315, inlinedAt: !3132)
!3315 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 379, column: 6)
!3316 = !DILocation(line: 379, column: 11, scope: !3315, inlinedAt: !3132)
!3317 = !DILocation(line: 379, column: 6, scope: !3128, inlinedAt: !3132)
!3318 = !DILocation(line: 379, column: 33, scope: !3315, inlinedAt: !3132)
!3319 = !DILocation(line: 380, column: 6, scope: !3320, inlinedAt: !3132)
!3320 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 380, column: 6)
!3321 = !DILocation(line: 380, column: 11, scope: !3320, inlinedAt: !3132)
!3322 = !DILocation(line: 380, column: 6, scope: !3128, inlinedAt: !3132)
!3323 = !DILocation(line: 380, column: 33, scope: !3320, inlinedAt: !3132)
!3324 = !DILocation(line: 381, column: 6, scope: !3325, inlinedAt: !3132)
!3325 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 381, column: 6)
!3326 = !DILocation(line: 381, column: 11, scope: !3325, inlinedAt: !3132)
!3327 = !DILocation(line: 381, column: 6, scope: !3128, inlinedAt: !3132)
!3328 = !DILocation(line: 381, column: 33, scope: !3325, inlinedAt: !3132)
!3329 = !DILocation(line: 382, column: 2, scope: !3330, inlinedAt: !3132)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !100, line: 382, column: 2)
!3331 = distinct !DILexicalBlock(scope: !3128, file: !100, line: 382, column: 2)
!3332 = !{i32 -2143366226, i32 -2143366197, i32 -2143366151, i32 -2143366093, i32 -2143366039, i32 -2143365985, i32 -2143365930, i32 -2143365899}
!3333 = !DILocation(line: 382, column: 2, scope: !3334, inlinedAt: !3132)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !100, line: 382, column: 2)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !100, line: 382, column: 2)
!3336 = !{i32 -2143365456, i32 -2143365449, i32 -2143365395, i32 -2143365364, i32 -2143365334}
!3337 = !DILocation(line: 382, column: 2, scope: !3335, inlinedAt: !3132)
!3338 = !DILocation(line: 386, column: 1, scope: !3128, inlinedAt: !3132)
!3339 = !DILocation(line: 547, column: 9, scope: !3111, inlinedAt: !3114)
!3340 = !DILocation(line: 549, column: 8, scope: !3341, inlinedAt: !3114)
!3341 = distinct !DILexicalBlock(scope: !3111, file: !100, line: 549, column: 7)
!3342 = !DILocation(line: 549, column: 7, scope: !3111, inlinedAt: !3114)
!3343 = !DILocation(line: 550, column: 4, scope: !3341, inlinedAt: !3114)
!3344 = !DILocation(line: 553, column: 33, scope: !3111, inlinedAt: !3114)
!3345 = !DILocation(line: 325, column: 6, scope: !3346, inlinedAt: !3126)
!3346 = distinct !DILexicalBlock(scope: !3122, file: !100, line: 325, column: 6)
!3347 = !DILocation(line: 325, column: 6, scope: !3122, inlinedAt: !3126)
!3348 = !DILocation(line: 326, column: 3, scope: !3346, inlinedAt: !3126)
!3349 = !DILocation(line: 332, column: 9, scope: !3122, inlinedAt: !3126)
!3350 = !DILocation(line: 332, column: 15, scope: !3122, inlinedAt: !3126)
!3351 = !DILocation(line: 332, column: 2, scope: !3122, inlinedAt: !3126)
!3352 = !DILocation(line: 336, column: 1, scope: !3122, inlinedAt: !3126)
!3353 = !DILocation(line: 553, column: 5, scope: !3111, inlinedAt: !3114)
!3354 = !DILocation(line: 553, column: 41, scope: !3111, inlinedAt: !3114)
!3355 = !DILocation(line: 554, column: 5, scope: !3111, inlinedAt: !3114)
!3356 = !DILocation(line: 554, column: 12, scope: !3111, inlinedAt: !3114)
!3357 = !DILocation(line: 448, column: 31, scope: !3106, inlinedAt: !3110)
!3358 = !DILocation(line: 448, column: 34, scope: !3106, inlinedAt: !3110)
!3359 = !DILocation(line: 448, column: 14, scope: !3106, inlinedAt: !3110)
!3360 = !DILocation(line: 450, column: 22, scope: !3106, inlinedAt: !3110)
!3361 = !DILocation(line: 450, column: 25, scope: !3106, inlinedAt: !3110)
!3362 = !DILocation(line: 450, column: 30, scope: !3106, inlinedAt: !3110)
!3363 = !DILocation(line: 450, column: 36, scope: !3106, inlinedAt: !3110)
!3364 = !DILocation(line: 450, column: 8, scope: !3106, inlinedAt: !3110)
!3365 = !DILocation(line: 450, column: 6, scope: !3106, inlinedAt: !3110)
!3366 = !DILocation(line: 451, column: 9, scope: !3106, inlinedAt: !3110)
!3367 = !DILocation(line: 552, column: 3, scope: !3111, inlinedAt: !3114)
!3368 = !DILocation(line: 557, column: 19, scope: !3113, inlinedAt: !3114)
!3369 = !DILocation(line: 557, column: 25, scope: !3113, inlinedAt: !3114)
!3370 = !DILocation(line: 557, column: 9, scope: !3113, inlinedAt: !3114)
!3371 = !DILocation(line: 557, column: 2, scope: !3113, inlinedAt: !3114)
!3372 = !DILocation(line: 558, column: 1, scope: !3113, inlinedAt: !3114)
!3373 = !DILocation(line: 664, column: 2, scope: !3102)
!3374 = distinct !DISubprogram(name: "int3400_thermal_get_uuids", scope: !3, file: !3, line: 190, type: !3375, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!140, !2493}
!3377 = !DILocalVariable(name: "priv", arg: 1, scope: !3374, file: !3, line: 190, type: !2493)
!3378 = !DILocation(line: 190, column: 67, scope: !3374)
!3379 = !DILocalVariable(name: "buf", scope: !3374, file: !3, line: 192, type: !3380)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !143, line: 969, size: 128, elements: !3381)
!3381 = !{!3382, !3384}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3380, file: !143, line: 970, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !143, line: 127, baseType: !363)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3380, file: !143, line: 971, baseType: !134, size: 64, offset: 64)
!3385 = !DILocation(line: 192, column: 21, scope: !3374)
!3386 = !DILocalVariable(name: "obja", scope: !3374, file: !3, line: 193, type: !2264)
!3387 = !DILocation(line: 193, column: 21, scope: !3374)
!3388 = !DILocalVariable(name: "objb", scope: !3374, file: !3, line: 193, type: !2264)
!3389 = !DILocation(line: 193, column: 28, scope: !3374)
!3390 = !DILocalVariable(name: "i", scope: !3374, file: !3, line: 194, type: !140)
!3391 = !DILocation(line: 194, column: 6, scope: !3374)
!3392 = !DILocalVariable(name: "j", scope: !3374, file: !3, line: 194, type: !140)
!3393 = !DILocation(line: 194, column: 9, scope: !3374)
!3394 = !DILocalVariable(name: "result", scope: !3374, file: !3, line: 195, type: !140)
!3395 = !DILocation(line: 195, column: 6, scope: !3374)
!3396 = !DILocalVariable(name: "status", scope: !3374, file: !3, line: 196, type: !3397)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !143, line: 421, baseType: !517)
!3398 = !DILocation(line: 196, column: 14, scope: !3374)
!3399 = !DILocation(line: 198, column: 32, scope: !3374)
!3400 = !DILocation(line: 198, column: 38, scope: !3374)
!3401 = !DILocation(line: 198, column: 44, scope: !3374)
!3402 = !DILocation(line: 198, column: 11, scope: !3374)
!3403 = !DILocation(line: 198, column: 9, scope: !3374)
!3404 = !DILocation(line: 199, column: 6, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 199, column: 6)
!3406 = !DILocation(line: 199, column: 6, scope: !3374)
!3407 = !DILocation(line: 200, column: 3, scope: !3405)
!3408 = !DILocation(line: 202, column: 34, scope: !3374)
!3409 = !DILocation(line: 202, column: 9, scope: !3374)
!3410 = !DILocation(line: 202, column: 7, scope: !3374)
!3411 = !DILocation(line: 203, column: 6, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 203, column: 6)
!3413 = !DILocation(line: 203, column: 12, scope: !3412)
!3414 = !DILocation(line: 203, column: 17, scope: !3412)
!3415 = !DILocation(line: 203, column: 6, scope: !3374)
!3416 = !DILocation(line: 204, column: 10, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 203, column: 39)
!3418 = !DILocation(line: 205, column: 3, scope: !3417)
!3419 = !DILocation(line: 208, column: 9, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 208, column: 2)
!3421 = !DILocation(line: 208, column: 7, scope: !3420)
!3422 = !DILocation(line: 208, column: 14, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 208, column: 2)
!3424 = !DILocation(line: 208, column: 18, scope: !3423)
!3425 = !DILocation(line: 208, column: 24, scope: !3423)
!3426 = !DILocation(line: 208, column: 32, scope: !3423)
!3427 = !DILocation(line: 208, column: 16, scope: !3423)
!3428 = !DILocation(line: 208, column: 2, scope: !3420)
!3429 = !DILocation(line: 209, column: 11, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 208, column: 44)
!3431 = !DILocation(line: 209, column: 17, scope: !3430)
!3432 = !DILocation(line: 209, column: 25, scope: !3430)
!3433 = !DILocation(line: 209, column: 34, scope: !3430)
!3434 = !DILocation(line: 209, column: 8, scope: !3430)
!3435 = !DILocation(line: 210, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 210, column: 7)
!3437 = !DILocation(line: 210, column: 13, scope: !3436)
!3438 = !DILocation(line: 210, column: 18, scope: !3436)
!3439 = !DILocation(line: 210, column: 7, scope: !3430)
!3440 = !DILocation(line: 211, column: 11, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 210, column: 39)
!3442 = !DILocation(line: 212, column: 4, scope: !3441)
!3443 = !DILocation(line: 216, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 216, column: 7)
!3445 = !DILocation(line: 216, column: 13, scope: !3444)
!3446 = !DILocation(line: 216, column: 20, scope: !3444)
!3447 = !DILocation(line: 216, column: 27, scope: !3444)
!3448 = !DILocation(line: 216, column: 7, scope: !3430)
!3449 = !DILocation(line: 217, column: 11, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 216, column: 34)
!3451 = !DILocation(line: 218, column: 4, scope: !3450)
!3452 = !DILocation(line: 221, column: 10, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 221, column: 3)
!3454 = !DILocation(line: 221, column: 8, scope: !3453)
!3455 = !DILocation(line: 221, column: 15, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 221, column: 3)
!3457 = !DILocation(line: 221, column: 17, scope: !3456)
!3458 = !DILocation(line: 221, column: 3, scope: !3453)
!3459 = !DILocalVariable(name: "guid", scope: !3460, file: !3, line: 222, type: !2482)
!3460 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 221, column: 54)
!3461 = !DILocation(line: 222, column: 11, scope: !3460)
!3462 = !DILocation(line: 224, column: 37, scope: !3460)
!3463 = !DILocation(line: 224, column: 15, scope: !3460)
!3464 = !DILocation(line: 224, column: 4, scope: !3460)
!3465 = !DILocation(line: 225, column: 29, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 225, column: 8)
!3467 = !DILocation(line: 225, column: 35, scope: !3466)
!3468 = !DILocation(line: 225, column: 42, scope: !3466)
!3469 = !DILocation(line: 225, column: 19, scope: !3466)
!3470 = !DILocation(line: 225, column: 8, scope: !3466)
!3471 = !DILocation(line: 225, column: 8, scope: !3460)
!3472 = !DILocation(line: 226, column: 32, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 225, column: 59)
!3474 = !DILocation(line: 226, column: 29, scope: !3473)
!3475 = !DILocation(line: 226, column: 5, scope: !3473)
!3476 = !DILocation(line: 226, column: 11, scope: !3473)
!3477 = !DILocation(line: 226, column: 23, scope: !3473)
!3478 = !DILocation(line: 227, column: 5, scope: !3473)
!3479 = !DILocation(line: 229, column: 3, scope: !3460)
!3480 = !DILocation(line: 221, column: 50, scope: !3456)
!3481 = !DILocation(line: 221, column: 3, scope: !3456)
!3482 = distinct !{!3482, !3458, !3483}
!3483 = !DILocation(line: 229, column: 3, scope: !3453)
!3484 = !DILocation(line: 230, column: 2, scope: !3430)
!3485 = !DILocation(line: 208, column: 40, scope: !3423)
!3486 = !DILocation(line: 208, column: 2, scope: !3423)
!3487 = distinct !{!3487, !3428, !3488}
!3488 = !DILocation(line: 230, column: 2, scope: !3420)
!3489 = !DILabel(scope: !3374, name: "end", file: !3, line: 232)
!3490 = !DILocation(line: 232, column: 1, scope: !3374)
!3491 = !DILocation(line: 233, column: 12, scope: !3374)
!3492 = !DILocation(line: 233, column: 2, scope: !3374)
!3493 = !DILocation(line: 234, column: 9, scope: !3374)
!3494 = !DILocation(line: 234, column: 2, scope: !3374)
!3495 = !DILocation(line: 235, column: 1, scope: !3374)
!3496 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2500, file: !2500, line: 236, type: !3497, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !2498, !134}
!3499 = !DILocalVariable(name: "pdev", arg: 1, scope: !3496, file: !2500, line: 236, type: !2498)
!3500 = !DILocation(line: 236, column: 65, scope: !3496)
!3501 = !DILocalVariable(name: "data", arg: 2, scope: !3496, file: !2500, line: 237, type: !134)
!3502 = !DILocation(line: 237, column: 12, scope: !3496)
!3503 = !DILocation(line: 239, column: 19, scope: !3496)
!3504 = !DILocation(line: 239, column: 25, scope: !3496)
!3505 = !DILocation(line: 239, column: 30, scope: !3496)
!3506 = !DILocation(line: 239, column: 2, scope: !3496)
!3507 = !DILocation(line: 240, column: 1, scope: !3496)
!3508 = distinct !DISubprogram(name: "int3400_setup_gddv", scope: !3, file: !3, line: 444, type: !3509, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !2493}
!3511 = !DILocalVariable(name: "priv", arg: 1, scope: !3508, file: !3, line: 444, type: !2493)
!3512 = !DILocation(line: 444, column: 61, scope: !3508)
!3513 = !DILocalVariable(name: "buffer", scope: !3508, file: !3, line: 446, type: !3380)
!3514 = !DILocation(line: 446, column: 21, scope: !3508)
!3515 = !DILocalVariable(name: "obj", scope: !3508, file: !3, line: 447, type: !2264)
!3516 = !DILocation(line: 447, column: 21, scope: !3508)
!3517 = !DILocalVariable(name: "status", scope: !3508, file: !3, line: 448, type: !3397)
!3518 = !DILocation(line: 448, column: 14, scope: !3508)
!3519 = !DILocation(line: 450, column: 32, scope: !3508)
!3520 = !DILocation(line: 450, column: 38, scope: !3508)
!3521 = !DILocation(line: 450, column: 44, scope: !3508)
!3522 = !DILocation(line: 450, column: 11, scope: !3508)
!3523 = !DILocation(line: 450, column: 9, scope: !3508)
!3524 = !DILocation(line: 452, column: 6, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 452, column: 6)
!3526 = !DILocation(line: 452, column: 27, scope: !3525)
!3527 = !DILocation(line: 452, column: 38, scope: !3525)
!3528 = !DILocation(line: 452, column: 31, scope: !3525)
!3529 = !DILocation(line: 452, column: 6, scope: !3508)
!3530 = !DILocation(line: 453, column: 3, scope: !3525)
!3531 = !DILocation(line: 455, column: 15, scope: !3508)
!3532 = !DILocation(line: 455, column: 8, scope: !3508)
!3533 = !DILocation(line: 455, column: 6, scope: !3508)
!3534 = !DILocation(line: 456, column: 6, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 456, column: 6)
!3536 = !DILocation(line: 456, column: 11, scope: !3535)
!3537 = !DILocation(line: 456, column: 16, scope: !3535)
!3538 = !DILocation(line: 456, column: 37, scope: !3535)
!3539 = !DILocation(line: 456, column: 40, scope: !3535)
!3540 = !DILocation(line: 456, column: 45, scope: !3535)
!3541 = !DILocation(line: 456, column: 53, scope: !3535)
!3542 = !DILocation(line: 456, column: 59, scope: !3535)
!3543 = !DILocation(line: 457, column: 6, scope: !3535)
!3544 = !DILocation(line: 457, column: 9, scope: !3535)
!3545 = !DILocation(line: 457, column: 14, scope: !3535)
!3546 = !DILocation(line: 457, column: 22, scope: !3535)
!3547 = !DILocation(line: 457, column: 34, scope: !3535)
!3548 = !DILocation(line: 457, column: 39, scope: !3535)
!3549 = !DILocation(line: 456, column: 6, scope: !3508)
!3550 = !DILocation(line: 458, column: 16, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 457, column: 60)
!3552 = !DILocation(line: 458, column: 3, scope: !3551)
!3553 = !DILocation(line: 459, column: 3, scope: !3551)
!3554 = !DILocation(line: 462, column: 29, scope: !3508)
!3555 = !DILocation(line: 462, column: 34, scope: !3508)
!3556 = !DILocation(line: 462, column: 42, scope: !3508)
!3557 = !DILocation(line: 462, column: 54, scope: !3508)
!3558 = !DILocation(line: 462, column: 61, scope: !3508)
!3559 = !DILocation(line: 463, column: 8, scope: !3508)
!3560 = !DILocation(line: 463, column: 13, scope: !3508)
!3561 = !DILocation(line: 463, column: 21, scope: !3508)
!3562 = !DILocation(line: 463, column: 33, scope: !3508)
!3563 = !DILocation(line: 463, column: 40, scope: !3508)
!3564 = !DILocation(line: 462, column: 21, scope: !3508)
!3565 = !DILocation(line: 462, column: 2, scope: !3508)
!3566 = !DILocation(line: 462, column: 8, scope: !3508)
!3567 = !DILocation(line: 462, column: 19, scope: !3508)
!3568 = !DILocation(line: 465, column: 32, scope: !3508)
!3569 = !DILocation(line: 465, column: 38, scope: !3508)
!3570 = !DILocation(line: 465, column: 30, scope: !3508)
!3571 = !DILocation(line: 466, column: 29, scope: !3508)
!3572 = !DILocation(line: 466, column: 34, scope: !3508)
!3573 = !DILocation(line: 466, column: 42, scope: !3508)
!3574 = !DILocation(line: 466, column: 54, scope: !3508)
!3575 = !DILocation(line: 466, column: 61, scope: !3508)
!3576 = !DILocation(line: 466, column: 27, scope: !3508)
!3577 = !DILocation(line: 467, column: 15, scope: !3508)
!3578 = !DILocation(line: 467, column: 2, scope: !3508)
!3579 = !DILocation(line: 468, column: 1, scope: !3508)
!3580 = distinct !DISubprogram(name: "evaluate_odvp", scope: !3, file: !3, line: 298, type: !3375, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3581 = !DILocalVariable(name: "priv", arg: 1, scope: !3580, file: !3, line: 298, type: !2493)
!3582 = !DILocation(line: 298, column: 55, scope: !3580)
!3583 = !DILocalVariable(name: "odvp", scope: !3580, file: !3, line: 300, type: !3380)
!3584 = !DILocation(line: 300, column: 21, scope: !3580)
!3585 = !DILocalVariable(name: "obj", scope: !3580, file: !3, line: 301, type: !2264)
!3586 = !DILocation(line: 301, column: 21, scope: !3580)
!3587 = !DILocalVariable(name: "status", scope: !3580, file: !3, line: 302, type: !3397)
!3588 = !DILocation(line: 302, column: 14, scope: !3580)
!3589 = !DILocalVariable(name: "i", scope: !3580, file: !3, line: 303, type: !140)
!3590 = !DILocation(line: 303, column: 6, scope: !3580)
!3591 = !DILocalVariable(name: "ret", scope: !3580, file: !3, line: 303, type: !140)
!3592 = !DILocation(line: 303, column: 9, scope: !3580)
!3593 = !DILocation(line: 305, column: 32, scope: !3580)
!3594 = !DILocation(line: 305, column: 38, scope: !3580)
!3595 = !DILocation(line: 305, column: 44, scope: !3580)
!3596 = !DILocation(line: 305, column: 11, scope: !3580)
!3597 = !DILocation(line: 305, column: 9, scope: !3580)
!3598 = !DILocation(line: 306, column: 6, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 306, column: 6)
!3600 = !DILocation(line: 306, column: 6, scope: !3580)
!3601 = !DILocation(line: 307, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 306, column: 28)
!3603 = !DILocation(line: 308, column: 3, scope: !3602)
!3604 = !DILocation(line: 311, column: 13, scope: !3580)
!3605 = !DILocation(line: 311, column: 8, scope: !3580)
!3606 = !DILocation(line: 311, column: 6, scope: !3580)
!3607 = !DILocation(line: 312, column: 6, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 312, column: 6)
!3609 = !DILocation(line: 312, column: 11, scope: !3608)
!3610 = !DILocation(line: 312, column: 16, scope: !3608)
!3611 = !DILocation(line: 312, column: 6, scope: !3580)
!3612 = !DILocation(line: 313, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 312, column: 38)
!3614 = !DILocation(line: 314, column: 3, scope: !3613)
!3615 = !DILocation(line: 317, column: 6, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 317, column: 6)
!3617 = !DILocation(line: 317, column: 12, scope: !3616)
!3618 = !DILocation(line: 317, column: 17, scope: !3616)
!3619 = !DILocation(line: 317, column: 6, scope: !3580)
!3620 = !DILocation(line: 318, column: 22, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 317, column: 26)
!3622 = !DILocation(line: 318, column: 27, scope: !3621)
!3623 = !DILocation(line: 318, column: 35, scope: !3621)
!3624 = !DILocation(line: 318, column: 3, scope: !3621)
!3625 = !DILocation(line: 318, column: 9, scope: !3621)
!3626 = !DILocation(line: 318, column: 20, scope: !3621)
!3627 = !DILocation(line: 319, column: 30, scope: !3621)
!3628 = !DILocation(line: 319, column: 36, scope: !3621)
!3629 = !DILocation(line: 319, column: 16, scope: !3621)
!3630 = !DILocation(line: 319, column: 3, scope: !3621)
!3631 = !DILocation(line: 319, column: 9, scope: !3621)
!3632 = !DILocation(line: 319, column: 14, scope: !3621)
!3633 = !DILocation(line: 321, column: 8, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 321, column: 7)
!3635 = !DILocation(line: 321, column: 14, scope: !3634)
!3636 = !DILocation(line: 321, column: 7, scope: !3621)
!3637 = !DILocation(line: 322, column: 8, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 321, column: 20)
!3639 = !DILocation(line: 323, column: 4, scope: !3638)
!3640 = !DILocation(line: 325, column: 2, scope: !3621)
!3641 = !DILocation(line: 327, column: 6, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 327, column: 6)
!3643 = !DILocation(line: 327, column: 12, scope: !3642)
!3644 = !DILocation(line: 327, column: 23, scope: !3642)
!3645 = !DILocation(line: 327, column: 6, scope: !3580)
!3646 = !DILocation(line: 328, column: 30, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 327, column: 32)
!3648 = !DILocation(line: 328, column: 36, scope: !3647)
!3649 = !DILocation(line: 328, column: 22, scope: !3647)
!3650 = !DILocation(line: 328, column: 3, scope: !3647)
!3651 = !DILocation(line: 328, column: 9, scope: !3647)
!3652 = !DILocation(line: 328, column: 20, scope: !3647)
!3653 = !DILocation(line: 331, column: 8, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 331, column: 7)
!3655 = !DILocation(line: 331, column: 14, scope: !3654)
!3656 = !DILocation(line: 331, column: 7, scope: !3647)
!3657 = !DILocation(line: 332, column: 8, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 331, column: 26)
!3659 = !DILocation(line: 333, column: 4, scope: !3658)
!3660 = !DILocation(line: 335, column: 10, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 335, column: 3)
!3662 = !DILocation(line: 335, column: 8, scope: !3661)
!3663 = !DILocation(line: 335, column: 15, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 335, column: 3)
!3665 = !DILocation(line: 335, column: 19, scope: !3664)
!3666 = !DILocation(line: 335, column: 25, scope: !3664)
!3667 = !DILocation(line: 335, column: 17, scope: !3664)
!3668 = !DILocation(line: 335, column: 3, scope: !3661)
!3669 = !DILocalVariable(name: "odvp", scope: !3670, file: !3, line: 336, type: !2488)
!3670 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 335, column: 42)
!3671 = !DILocation(line: 336, column: 22, scope: !3670)
!3672 = !DILocation(line: 336, column: 30, scope: !3670)
!3673 = !DILocation(line: 336, column: 36, scope: !3670)
!3674 = !DILocation(line: 336, column: 47, scope: !3670)
!3675 = !DILocation(line: 338, column: 4, scope: !3670)
!3676 = !DILocation(line: 338, column: 4, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 338, column: 4)
!3678 = !DILocation(line: 339, column: 17, scope: !3670)
!3679 = !DILocation(line: 339, column: 4, scope: !3670)
!3680 = !DILocation(line: 339, column: 10, scope: !3670)
!3681 = !DILocation(line: 339, column: 15, scope: !3670)
!3682 = !DILocation(line: 340, column: 17, scope: !3670)
!3683 = !DILocation(line: 340, column: 4, scope: !3670)
!3684 = !DILocation(line: 340, column: 10, scope: !3670)
!3685 = !DILocation(line: 340, column: 15, scope: !3670)
!3686 = !DILocation(line: 342, column: 19, scope: !3670)
!3687 = !DILocation(line: 341, column: 27, scope: !3670)
!3688 = !DILocation(line: 341, column: 4, scope: !3670)
!3689 = !DILocation(line: 341, column: 10, scope: !3670)
!3690 = !DILocation(line: 341, column: 15, scope: !3670)
!3691 = !DILocation(line: 341, column: 20, scope: !3670)
!3692 = !DILocation(line: 341, column: 25, scope: !3670)
!3693 = !DILocation(line: 344, column: 9, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 344, column: 8)
!3695 = !DILocation(line: 344, column: 15, scope: !3694)
!3696 = !DILocation(line: 344, column: 20, scope: !3694)
!3697 = !DILocation(line: 344, column: 25, scope: !3694)
!3698 = !DILocation(line: 344, column: 8, scope: !3670)
!3699 = !DILocation(line: 345, column: 9, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 344, column: 31)
!3701 = !DILocation(line: 346, column: 5, scope: !3700)
!3702 = !DILocation(line: 348, column: 4, scope: !3670)
!3703 = !DILocation(line: 348, column: 10, scope: !3670)
!3704 = !DILocation(line: 348, column: 15, scope: !3670)
!3705 = !DILocation(line: 348, column: 20, scope: !3670)
!3706 = !DILocation(line: 348, column: 25, scope: !3670)
!3707 = !DILocation(line: 349, column: 4, scope: !3670)
!3708 = !DILocation(line: 349, column: 10, scope: !3670)
!3709 = !DILocation(line: 349, column: 15, scope: !3670)
!3710 = !DILocation(line: 349, column: 20, scope: !3670)
!3711 = !DILocation(line: 350, column: 4, scope: !3670)
!3712 = !DILocation(line: 350, column: 10, scope: !3670)
!3713 = !DILocation(line: 350, column: 15, scope: !3670)
!3714 = !DILocation(line: 350, column: 21, scope: !3670)
!3715 = !DILocation(line: 351, column: 29, scope: !3670)
!3716 = !DILocation(line: 351, column: 35, scope: !3670)
!3717 = !DILocation(line: 351, column: 41, scope: !3670)
!3718 = !DILocation(line: 351, column: 45, scope: !3670)
!3719 = !DILocation(line: 352, column: 8, scope: !3670)
!3720 = !DILocation(line: 352, column: 14, scope: !3670)
!3721 = !DILocation(line: 352, column: 19, scope: !3670)
!3722 = !DILocation(line: 351, column: 10, scope: !3670)
!3723 = !DILocation(line: 351, column: 8, scope: !3670)
!3724 = !DILocation(line: 353, column: 8, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 353, column: 8)
!3726 = !DILocation(line: 353, column: 8, scope: !3670)
!3727 = !DILocation(line: 354, column: 5, scope: !3725)
!3728 = !DILocation(line: 355, column: 3, scope: !3670)
!3729 = !DILocation(line: 335, column: 38, scope: !3664)
!3730 = !DILocation(line: 335, column: 3, scope: !3664)
!3731 = distinct !{!3731, !3668, !3732}
!3732 = !DILocation(line: 355, column: 3, scope: !3661)
!3733 = !DILocation(line: 356, column: 2, scope: !3647)
!3734 = !DILocation(line: 358, column: 9, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 358, column: 2)
!3736 = !DILocation(line: 358, column: 7, scope: !3735)
!3737 = !DILocation(line: 358, column: 14, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 358, column: 2)
!3739 = !DILocation(line: 358, column: 18, scope: !3738)
!3740 = !DILocation(line: 358, column: 23, scope: !3738)
!3741 = !DILocation(line: 358, column: 31, scope: !3738)
!3742 = !DILocation(line: 358, column: 16, scope: !3738)
!3743 = !DILocation(line: 358, column: 2, scope: !3735)
!3744 = !DILocation(line: 359, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3746, file: !3, line: 359, column: 7)
!3746 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 358, column: 43)
!3747 = !DILocation(line: 359, column: 12, scope: !3745)
!3748 = !DILocation(line: 359, column: 20, scope: !3745)
!3749 = !DILocation(line: 359, column: 29, scope: !3745)
!3750 = !DILocation(line: 359, column: 32, scope: !3745)
!3751 = !DILocation(line: 359, column: 37, scope: !3745)
!3752 = !DILocation(line: 359, column: 7, scope: !3746)
!3753 = !DILocation(line: 360, column: 20, scope: !3745)
!3754 = !DILocation(line: 360, column: 25, scope: !3745)
!3755 = !DILocation(line: 360, column: 33, scope: !3745)
!3756 = !DILocation(line: 360, column: 42, scope: !3745)
!3757 = !DILocation(line: 360, column: 45, scope: !3745)
!3758 = !DILocation(line: 360, column: 53, scope: !3745)
!3759 = !DILocation(line: 360, column: 4, scope: !3745)
!3760 = !DILocation(line: 360, column: 10, scope: !3745)
!3761 = !DILocation(line: 360, column: 15, scope: !3745)
!3762 = !DILocation(line: 360, column: 18, scope: !3745)
!3763 = !DILocation(line: 361, column: 2, scope: !3746)
!3764 = !DILocation(line: 358, column: 39, scope: !3738)
!3765 = !DILocation(line: 358, column: 2, scope: !3738)
!3766 = distinct !{!3766, !3743, !3767}
!3767 = !DILocation(line: 361, column: 2, scope: !3735)
!3768 = !DILocation(line: 363, column: 8, scope: !3580)
!3769 = !DILocation(line: 363, column: 2, scope: !3580)
!3770 = !DILocation(line: 364, column: 2, scope: !3580)
!3771 = !DILabel(scope: !3580, name: "out_err", file: !3, line: 366)
!3772 = !DILocation(line: 366, column: 1, scope: !3580)
!3773 = !DILocation(line: 367, column: 15, scope: !3580)
!3774 = !DILocation(line: 367, column: 2, scope: !3580)
!3775 = !DILocation(line: 368, column: 8, scope: !3580)
!3776 = !DILocation(line: 368, column: 2, scope: !3580)
!3777 = !DILocation(line: 369, column: 9, scope: !3580)
!3778 = !DILocation(line: 369, column: 2, scope: !3580)
!3779 = !DILocation(line: 370, column: 1, scope: !3580)
!3780 = distinct !DISubprogram(name: "IS_ERR", scope: !3781, file: !3781, line: 34, type: !3782, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3781 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!167, !176}
!3784 = !DILocalVariable(name: "ptr", arg: 1, scope: !3780, file: !3781, line: 34, type: !176)
!3785 = !DILocation(line: 34, column: 60, scope: !3780)
!3786 = !DILocation(line: 36, column: 9, scope: !3780)
!3787 = !DILocation(line: 36, column: 2, scope: !3780)
!3788 = distinct !DISubprogram(name: "PTR_ERR", scope: !3781, file: !3781, line: 29, type: !3789, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!279, !176}
!3791 = !DILocalVariable(name: "ptr", arg: 1, scope: !3788, file: !3781, line: 29, type: !176)
!3792 = !DILocation(line: 29, column: 61, scope: !3788)
!3793 = !DILocation(line: 31, column: 16, scope: !3788)
!3794 = !DILocation(line: 31, column: 9, scope: !3788)
!3795 = !DILocation(line: 31, column: 2, scope: !3788)
!3796 = distinct !DISubprogram(name: "int3400_notify", scope: !3, file: !3, line: 372, type: !3797, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !142, !517, !134}
!3799 = !DILocalVariable(name: "handle", arg: 1, scope: !3796, file: !3, line: 372, type: !142)
!3800 = !DILocation(line: 372, column: 40, scope: !3796)
!3801 = !DILocalVariable(name: "event", arg: 2, scope: !3796, file: !3, line: 373, type: !517)
!3802 = !DILocation(line: 373, column: 8, scope: !3796)
!3803 = !DILocalVariable(name: "data", arg: 3, scope: !3796, file: !3, line: 374, type: !134)
!3804 = !DILocation(line: 374, column: 10, scope: !3796)
!3805 = !DILocalVariable(name: "priv", scope: !3796, file: !3, line: 376, type: !2493)
!3806 = !DILocation(line: 376, column: 31, scope: !3796)
!3807 = !DILocation(line: 376, column: 38, scope: !3796)
!3808 = !DILocalVariable(name: "thermal_prop", scope: !3796, file: !3, line: 377, type: !3809)
!3809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 320, elements: !2340)
!3810 = !DILocation(line: 377, column: 8, scope: !3796)
!3811 = !DILocalVariable(name: "therm_event", scope: !3796, file: !3, line: 378, type: !140)
!3812 = !DILocation(line: 378, column: 6, scope: !3796)
!3813 = !DILocation(line: 380, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 380, column: 6)
!3815 = !DILocation(line: 380, column: 6, scope: !3796)
!3816 = !DILocation(line: 381, column: 3, scope: !3814)
!3817 = !DILocation(line: 383, column: 10, scope: !3796)
!3818 = !DILocation(line: 383, column: 2, scope: !3796)
!3819 = !DILocation(line: 385, column: 15, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 383, column: 17)
!3821 = !DILocation(line: 386, column: 3, scope: !3820)
!3822 = !DILocation(line: 388, column: 15, scope: !3820)
!3823 = !DILocation(line: 389, column: 3, scope: !3820)
!3824 = !DILocation(line: 391, column: 17, scope: !3820)
!3825 = !DILocation(line: 391, column: 3, scope: !3820)
!3826 = !DILocation(line: 392, column: 15, scope: !3820)
!3827 = !DILocation(line: 393, column: 3, scope: !3820)
!3828 = !DILocation(line: 396, column: 3, scope: !3820)
!3829 = !DILocation(line: 399, column: 53, scope: !3796)
!3830 = !DILocation(line: 399, column: 59, scope: !3796)
!3831 = !DILocation(line: 399, column: 68, scope: !3796)
!3832 = !DILocation(line: 399, column: 20, scope: !3796)
!3833 = !DILocation(line: 399, column: 2, scope: !3796)
!3834 = !DILocation(line: 399, column: 18, scope: !3796)
!3835 = !DILocation(line: 400, column: 53, scope: !3796)
!3836 = !DILocation(line: 400, column: 59, scope: !3796)
!3837 = !DILocation(line: 400, column: 68, scope: !3796)
!3838 = !DILocation(line: 400, column: 20, scope: !3796)
!3839 = !DILocation(line: 400, column: 2, scope: !3796)
!3840 = !DILocation(line: 400, column: 18, scope: !3796)
!3841 = !DILocation(line: 401, column: 20, scope: !3796)
!3842 = !DILocation(line: 401, column: 2, scope: !3796)
!3843 = !DILocation(line: 401, column: 18, scope: !3796)
!3844 = !DILocation(line: 402, column: 54, scope: !3796)
!3845 = !DILocation(line: 402, column: 20, scope: !3796)
!3846 = !DILocation(line: 402, column: 2, scope: !3796)
!3847 = !DILocation(line: 402, column: 18, scope: !3796)
!3848 = !DILocation(line: 403, column: 2, scope: !3796)
!3849 = !DILocation(line: 403, column: 18, scope: !3796)
!3850 = !DILocation(line: 404, column: 22, scope: !3796)
!3851 = !DILocation(line: 404, column: 28, scope: !3796)
!3852 = !DILocation(line: 404, column: 37, scope: !3796)
!3853 = !DILocation(line: 404, column: 44, scope: !3796)
!3854 = !DILocation(line: 404, column: 63, scope: !3796)
!3855 = !DILocation(line: 404, column: 2, scope: !3796)
!3856 = !DILocation(line: 405, column: 1, scope: !3796)
!3857 = distinct !DISubprogram(name: "cleanup_odvp", scope: !3, file: !3, line: 282, type: !3509, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3858 = !DILocalVariable(name: "priv", arg: 1, scope: !3857, file: !3, line: 282, type: !2493)
!3859 = !DILocation(line: 282, column: 55, scope: !3857)
!3860 = !DILocalVariable(name: "i", scope: !3857, file: !3, line: 284, type: !140)
!3861 = !DILocation(line: 284, column: 6, scope: !3857)
!3862 = !DILocation(line: 286, column: 6, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 286, column: 6)
!3864 = !DILocation(line: 286, column: 12, scope: !3863)
!3865 = !DILocation(line: 286, column: 6, scope: !3857)
!3866 = !DILocation(line: 287, column: 10, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 287, column: 3)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 286, column: 24)
!3869 = !DILocation(line: 287, column: 8, scope: !3867)
!3870 = !DILocation(line: 287, column: 15, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 287, column: 3)
!3872 = !DILocation(line: 287, column: 19, scope: !3871)
!3873 = !DILocation(line: 287, column: 25, scope: !3871)
!3874 = !DILocation(line: 287, column: 17, scope: !3871)
!3875 = !DILocation(line: 287, column: 3, scope: !3867)
!3876 = !DILocation(line: 288, column: 23, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 287, column: 42)
!3878 = !DILocation(line: 288, column: 29, scope: !3877)
!3879 = !DILocation(line: 288, column: 35, scope: !3877)
!3880 = !DILocation(line: 288, column: 39, scope: !3877)
!3881 = !DILocation(line: 289, column: 9, scope: !3877)
!3882 = !DILocation(line: 289, column: 15, scope: !3877)
!3883 = !DILocation(line: 289, column: 26, scope: !3877)
!3884 = !DILocation(line: 289, column: 29, scope: !3877)
!3885 = !DILocation(line: 289, column: 34, scope: !3877)
!3886 = !DILocation(line: 288, column: 4, scope: !3877)
!3887 = !DILocation(line: 290, column: 10, scope: !3877)
!3888 = !DILocation(line: 290, column: 16, scope: !3877)
!3889 = !DILocation(line: 290, column: 27, scope: !3877)
!3890 = !DILocation(line: 290, column: 30, scope: !3877)
!3891 = !DILocation(line: 290, column: 35, scope: !3877)
!3892 = !DILocation(line: 290, column: 40, scope: !3877)
!3893 = !DILocation(line: 290, column: 4, scope: !3877)
!3894 = !DILocation(line: 291, column: 3, scope: !3877)
!3895 = !DILocation(line: 287, column: 38, scope: !3871)
!3896 = !DILocation(line: 287, column: 3, scope: !3871)
!3897 = distinct !{!3897, !3875, !3898}
!3898 = !DILocation(line: 291, column: 3, scope: !3867)
!3899 = !DILocation(line: 292, column: 9, scope: !3868)
!3900 = !DILocation(line: 292, column: 15, scope: !3868)
!3901 = !DILocation(line: 292, column: 3, scope: !3868)
!3902 = !DILocation(line: 293, column: 2, scope: !3868)
!3903 = !DILocation(line: 294, column: 8, scope: !3857)
!3904 = !DILocation(line: 294, column: 14, scope: !3857)
!3905 = !DILocation(line: 294, column: 2, scope: !3857)
!3906 = !DILocation(line: 295, column: 2, scope: !3857)
!3907 = !DILocation(line: 295, column: 8, scope: !3857)
!3908 = !DILocation(line: 295, column: 19, scope: !3857)
!3909 = !DILocation(line: 296, column: 1, scope: !3857)
!3910 = distinct !DISubprogram(name: "get_order", scope: !3911, file: !3911, line: 29, type: !3912, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3911 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!140, !294}
!3914 = !DILocalVariable(name: "x", arg: 1, scope: !3915, file: !3916, line: 366, type: !365)
!3915 = distinct !DISubprogram(name: "fls64", scope: !3916, file: !3916, line: 366, type: !3917, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3916 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!140, !365}
!3919 = !DILocation(line: 366, column: 40, scope: !3915, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 46, column: 9, scope: !3910)
!3921 = !DILocalVariable(name: "bitpos", scope: !3915, file: !3916, line: 368, type: !140)
!3922 = !DILocation(line: 368, column: 6, scope: !3915, inlinedAt: !3920)
!3923 = !DILocalVariable(name: "size", arg: 1, scope: !3910, file: !3911, line: 29, type: !294)
!3924 = !DILocation(line: 29, column: 63, scope: !3910)
!3925 = !DILocation(line: 31, column: 27, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3910, file: !3911, line: 31, column: 6)
!3927 = !DILocation(line: 31, column: 6, scope: !3926)
!3928 = !DILocation(line: 31, column: 6, scope: !3910)
!3929 = !DILocation(line: 32, column: 8, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !3911, line: 32, column: 7)
!3931 = distinct !DILexicalBlock(scope: !3926, file: !3911, line: 31, column: 34)
!3932 = !DILocation(line: 32, column: 7, scope: !3931)
!3933 = !DILocation(line: 33, column: 4, scope: !3930)
!3934 = !DILocation(line: 35, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3931, file: !3911, line: 35, column: 7)
!3936 = !DILocation(line: 35, column: 12, scope: !3935)
!3937 = !DILocation(line: 35, column: 7, scope: !3931)
!3938 = !DILocation(line: 36, column: 4, scope: !3935)
!3939 = !DILocation(line: 38, column: 10, scope: !3931)
!3940 = !DILocation(line: 38, column: 28, scope: !3931)
!3941 = !DILocation(line: 38, column: 41, scope: !3931)
!3942 = !DILocation(line: 38, column: 3, scope: !3931)
!3943 = !DILocation(line: 41, column: 6, scope: !3910)
!3944 = !DILocation(line: 42, column: 7, scope: !3910)
!3945 = !DILocation(line: 46, column: 15, scope: !3910)
!3946 = !DILocation(line: 374, column: 2, scope: !3915, inlinedAt: !3920)
!3947 = !DILocation(line: 376, column: 14, scope: !3915, inlinedAt: !3920)
!3948 = !{i32 310922}
!3949 = !DILocation(line: 377, column: 9, scope: !3915, inlinedAt: !3920)
!3950 = !DILocation(line: 377, column: 16, scope: !3915, inlinedAt: !3920)
!3951 = !DILocation(line: 46, column: 2, scope: !3910)
!3952 = !DILocation(line: 48, column: 1, scope: !3910)
!3953 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3954, file: !3954, line: 30, type: !3955, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3954 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!140, !363}
!3957 = !DILocation(line: 366, column: 40, scope: !3915, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 32, column: 9, scope: !3953)
!3959 = !DILocation(line: 368, column: 6, scope: !3915, inlinedAt: !3958)
!3960 = !DILocalVariable(name: "n", arg: 1, scope: !3953, file: !3954, line: 30, type: !363)
!3961 = !DILocation(line: 30, column: 21, scope: !3953)
!3962 = !DILocation(line: 32, column: 15, scope: !3953)
!3963 = !DILocation(line: 374, column: 2, scope: !3915, inlinedAt: !3958)
!3964 = !DILocation(line: 376, column: 14, scope: !3915, inlinedAt: !3958)
!3965 = !DILocation(line: 377, column: 9, scope: !3915, inlinedAt: !3958)
!3966 = !DILocation(line: 377, column: 16, scope: !3915, inlinedAt: !3958)
!3967 = !DILocation(line: 32, column: 18, scope: !3953)
!3968 = !DILocation(line: 32, column: 2, scope: !3953)
!3969 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3970, file: !3970, line: 137, type: !3971, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3970 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!134, !1137, !176, !291, !1557}
!3973 = !DILocalVariable(name: "s", arg: 1, scope: !3969, file: !3970, line: 137, type: !1137)
!3974 = !DILocation(line: 137, column: 54, scope: !3969)
!3975 = !DILocalVariable(name: "object", arg: 2, scope: !3969, file: !3970, line: 137, type: !176)
!3976 = !DILocation(line: 137, column: 69, scope: !3969)
!3977 = !DILocalVariable(name: "size", arg: 3, scope: !3969, file: !3970, line: 138, type: !291)
!3978 = !DILocation(line: 138, column: 12, scope: !3969)
!3979 = !DILocalVariable(name: "flags", arg: 4, scope: !3969, file: !3970, line: 138, type: !1557)
!3980 = !DILocation(line: 138, column: 24, scope: !3969)
!3981 = !DILocation(line: 140, column: 17, scope: !3969)
!3982 = !DILocation(line: 140, column: 2, scope: !3969)
!3983 = distinct !DISubprogram(name: "guid_equal", scope: !3984, file: !3984, line: 36, type: !3985, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3984 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!167, !3987, !3987}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2482)
!3989 = !DILocalVariable(name: "u1", arg: 1, scope: !3983, file: !3984, line: 36, type: !3987)
!3990 = !DILocation(line: 36, column: 45, scope: !3983)
!3991 = !DILocalVariable(name: "u2", arg: 2, scope: !3983, file: !3984, line: 36, type: !3987)
!3992 = !DILocation(line: 36, column: 63, scope: !3983)
!3993 = !DILocation(line: 38, column: 16, scope: !3983)
!3994 = !DILocation(line: 38, column: 20, scope: !3983)
!3995 = !DILocation(line: 38, column: 9, scope: !3983)
!3996 = !DILocation(line: 38, column: 40, scope: !3983)
!3997 = !DILocation(line: 38, column: 2, scope: !3983)
!3998 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3999, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !1686, !134}
!4001 = !DILocalVariable(name: "dev", arg: 1, scope: !3998, file: !30, line: 660, type: !1686)
!4002 = !DILocation(line: 660, column: 51, scope: !3998)
!4003 = !DILocalVariable(name: "data", arg: 2, scope: !3998, file: !30, line: 660, type: !134)
!4004 = !DILocation(line: 660, column: 62, scope: !3998)
!4005 = !DILocation(line: 662, column: 21, scope: !3998)
!4006 = !DILocation(line: 662, column: 2, scope: !3998)
!4007 = !DILocation(line: 662, column: 7, scope: !3998)
!4008 = !DILocation(line: 662, column: 19, scope: !3998)
!4009 = !DILocation(line: 663, column: 1, scope: !3998)
!4010 = distinct !DISubprogram(name: "data_vault_read", scope: !3, file: !3, line: 73, type: !320, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4011 = !DILocalVariable(name: "file", arg: 1, scope: !4010, file: !3, line: 73, type: !322)
!4012 = !DILocation(line: 73, column: 45, scope: !4010)
!4013 = !DILocalVariable(name: "kobj", arg: 2, scope: !4010, file: !3, line: 73, type: !196)
!4014 = !DILocation(line: 73, column: 67, scope: !4010)
!4015 = !DILocalVariable(name: "attr", arg: 3, scope: !4010, file: !3, line: 74, type: !312)
!4016 = !DILocation(line: 74, column: 29, scope: !4010)
!4017 = !DILocalVariable(name: "buf", arg: 4, scope: !4010, file: !3, line: 74, type: !244)
!4018 = !DILocation(line: 74, column: 41, scope: !4010)
!4019 = !DILocalVariable(name: "off", arg: 5, scope: !4010, file: !3, line: 74, type: !325)
!4020 = !DILocation(line: 74, column: 53, scope: !4010)
!4021 = !DILocalVariable(name: "count", arg: 6, scope: !4010, file: !3, line: 74, type: !291)
!4022 = !DILocation(line: 74, column: 65, scope: !4010)
!4023 = !DILocation(line: 76, column: 9, scope: !4010)
!4024 = !DILocation(line: 76, column: 14, scope: !4010)
!4025 = !DILocation(line: 76, column: 20, scope: !4010)
!4026 = !DILocation(line: 76, column: 30, scope: !4010)
!4027 = !DILocation(line: 76, column: 28, scope: !4010)
!4028 = !DILocation(line: 76, column: 35, scope: !4010)
!4029 = !DILocation(line: 76, column: 2, scope: !4010)
!4030 = !DILocation(line: 77, column: 9, scope: !4010)
!4031 = !DILocation(line: 77, column: 2, scope: !4010)
!4032 = distinct !DISubprogram(name: "kmalloc_array", scope: !100, file: !100, line: 584, type: !4033, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!134, !291, !291, !1557}
!4035 = !DILocation(line: 445, column: 72, scope: !3106, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 552, column: 10, scope: !3111, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 591, column: 10, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4032, file: !100, line: 590, column: 6)
!4039 = !DILocation(line: 446, column: 9, scope: !3106, inlinedAt: !4036)
!4040 = !DILocation(line: 446, column: 23, scope: !3106, inlinedAt: !4036)
!4041 = !DILocation(line: 448, column: 8, scope: !3106, inlinedAt: !4036)
!4042 = !DILocation(line: 318, column: 67, scope: !3122, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 553, column: 20, scope: !3111, inlinedAt: !4037)
!4044 = !DILocation(line: 346, column: 58, scope: !3128, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 547, column: 11, scope: !3111, inlinedAt: !4037)
!4046 = !DILocation(line: 472, column: 28, scope: !3134, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 481, column: 9, scope: !3139, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 545, column: 11, scope: !3141, inlinedAt: !4037)
!4049 = !DILocation(line: 472, column: 40, scope: !3134, inlinedAt: !4047)
!4050 = !DILocation(line: 472, column: 60, scope: !3134, inlinedAt: !4047)
!4051 = !DILocation(line: 478, column: 51, scope: !3139, inlinedAt: !4048)
!4052 = !DILocation(line: 478, column: 63, scope: !3139, inlinedAt: !4048)
!4053 = !DILocation(line: 480, column: 15, scope: !3139, inlinedAt: !4048)
!4054 = !DILocation(line: 538, column: 45, scope: !3113, inlinedAt: !4037)
!4055 = !DILocation(line: 538, column: 57, scope: !3113, inlinedAt: !4037)
!4056 = !DILocation(line: 542, column: 16, scope: !3111, inlinedAt: !4037)
!4057 = !DILocalVariable(name: "n", arg: 1, scope: !4032, file: !100, line: 584, type: !291)
!4058 = !DILocation(line: 584, column: 42, scope: !4032)
!4059 = !DILocalVariable(name: "size", arg: 2, scope: !4032, file: !100, line: 584, type: !291)
!4060 = !DILocation(line: 584, column: 52, scope: !4032)
!4061 = !DILocalVariable(name: "flags", arg: 3, scope: !4032, file: !100, line: 584, type: !1557)
!4062 = !DILocation(line: 584, column: 64, scope: !4032)
!4063 = !DILocalVariable(name: "bytes", scope: !4032, file: !100, line: 586, type: !291)
!4064 = !DILocation(line: 586, column: 9, scope: !4032)
!4065 = !DILocalVariable(name: "__a", scope: !4066, file: !100, line: 588, type: !291)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !100, line: 588, column: 6)
!4067 = distinct !DILexicalBlock(scope: !4032, file: !100, line: 588, column: 6)
!4068 = !DILocation(line: 588, column: 6, scope: !4066)
!4069 = !DILocalVariable(name: "__b", scope: !4066, file: !100, line: 588, type: !291)
!4070 = !DILocalVariable(name: "__d", scope: !4066, file: !100, line: 588, type: !4071)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!4072 = !DILocation(line: 588, column: 6, scope: !4067)
!4073 = !DILocation(line: 588, column: 6, scope: !4032)
!4074 = !DILocation(line: 589, column: 3, scope: !4067)
!4075 = !DILocation(line: 590, column: 27, scope: !4038)
!4076 = !DILocation(line: 590, column: 6, scope: !4038)
!4077 = !DILocation(line: 590, column: 30, scope: !4038)
!4078 = !DILocation(line: 590, column: 54, scope: !4038)
!4079 = !DILocation(line: 590, column: 33, scope: !4038)
!4080 = !DILocation(line: 590, column: 6, scope: !4032)
!4081 = !DILocation(line: 591, column: 18, scope: !4038)
!4082 = !DILocation(line: 591, column: 25, scope: !4038)
!4083 = !DILocation(line: 540, column: 27, scope: !3112, inlinedAt: !4037)
!4084 = !DILocation(line: 540, column: 6, scope: !3112, inlinedAt: !4037)
!4085 = !DILocation(line: 540, column: 6, scope: !3113, inlinedAt: !4037)
!4086 = !DILocation(line: 544, column: 7, scope: !3141, inlinedAt: !4037)
!4087 = !DILocation(line: 544, column: 12, scope: !3141, inlinedAt: !4037)
!4088 = !DILocation(line: 544, column: 7, scope: !3111, inlinedAt: !4037)
!4089 = !DILocation(line: 545, column: 25, scope: !3141, inlinedAt: !4037)
!4090 = !DILocation(line: 545, column: 31, scope: !3141, inlinedAt: !4037)
!4091 = !DILocation(line: 480, column: 33, scope: !3139, inlinedAt: !4048)
!4092 = !DILocation(line: 480, column: 23, scope: !3139, inlinedAt: !4048)
!4093 = !DILocation(line: 481, column: 29, scope: !3139, inlinedAt: !4048)
!4094 = !DILocation(line: 481, column: 35, scope: !3139, inlinedAt: !4048)
!4095 = !DILocation(line: 481, column: 42, scope: !3139, inlinedAt: !4048)
!4096 = !DILocation(line: 474, column: 23, scope: !3134, inlinedAt: !4047)
!4097 = !DILocation(line: 474, column: 29, scope: !3134, inlinedAt: !4047)
!4098 = !DILocation(line: 474, column: 36, scope: !3134, inlinedAt: !4047)
!4099 = !DILocation(line: 474, column: 9, scope: !3134, inlinedAt: !4047)
!4100 = !DILocation(line: 545, column: 4, scope: !3141, inlinedAt: !4037)
!4101 = !DILocation(line: 547, column: 25, scope: !3111, inlinedAt: !4037)
!4102 = !DILocation(line: 348, column: 7, scope: !3185, inlinedAt: !4045)
!4103 = !DILocation(line: 348, column: 6, scope: !3128, inlinedAt: !4045)
!4104 = !DILocation(line: 349, column: 3, scope: !3185, inlinedAt: !4045)
!4105 = !DILocation(line: 351, column: 6, scope: !3189, inlinedAt: !4045)
!4106 = !DILocation(line: 351, column: 11, scope: !3189, inlinedAt: !4045)
!4107 = !DILocation(line: 351, column: 6, scope: !3128, inlinedAt: !4045)
!4108 = !DILocation(line: 352, column: 3, scope: !3189, inlinedAt: !4045)
!4109 = !DILocation(line: 354, column: 32, scope: !3194, inlinedAt: !4045)
!4110 = !DILocation(line: 354, column: 37, scope: !3194, inlinedAt: !4045)
!4111 = !DILocation(line: 354, column: 42, scope: !3194, inlinedAt: !4045)
!4112 = !DILocation(line: 354, column: 45, scope: !3194, inlinedAt: !4045)
!4113 = !DILocation(line: 354, column: 50, scope: !3194, inlinedAt: !4045)
!4114 = !DILocation(line: 354, column: 6, scope: !3128, inlinedAt: !4045)
!4115 = !DILocation(line: 355, column: 3, scope: !3194, inlinedAt: !4045)
!4116 = !DILocation(line: 356, column: 32, scope: !3202, inlinedAt: !4045)
!4117 = !DILocation(line: 356, column: 37, scope: !3202, inlinedAt: !4045)
!4118 = !DILocation(line: 356, column: 43, scope: !3202, inlinedAt: !4045)
!4119 = !DILocation(line: 356, column: 46, scope: !3202, inlinedAt: !4045)
!4120 = !DILocation(line: 356, column: 51, scope: !3202, inlinedAt: !4045)
!4121 = !DILocation(line: 356, column: 6, scope: !3128, inlinedAt: !4045)
!4122 = !DILocation(line: 357, column: 3, scope: !3202, inlinedAt: !4045)
!4123 = !DILocation(line: 358, column: 6, scope: !3210, inlinedAt: !4045)
!4124 = !DILocation(line: 358, column: 11, scope: !3210, inlinedAt: !4045)
!4125 = !DILocation(line: 358, column: 6, scope: !3128, inlinedAt: !4045)
!4126 = !DILocation(line: 358, column: 26, scope: !3210, inlinedAt: !4045)
!4127 = !DILocation(line: 359, column: 6, scope: !3215, inlinedAt: !4045)
!4128 = !DILocation(line: 359, column: 11, scope: !3215, inlinedAt: !4045)
!4129 = !DILocation(line: 359, column: 6, scope: !3128, inlinedAt: !4045)
!4130 = !DILocation(line: 359, column: 26, scope: !3215, inlinedAt: !4045)
!4131 = !DILocation(line: 360, column: 6, scope: !3220, inlinedAt: !4045)
!4132 = !DILocation(line: 360, column: 11, scope: !3220, inlinedAt: !4045)
!4133 = !DILocation(line: 360, column: 6, scope: !3128, inlinedAt: !4045)
!4134 = !DILocation(line: 360, column: 26, scope: !3220, inlinedAt: !4045)
!4135 = !DILocation(line: 361, column: 6, scope: !3225, inlinedAt: !4045)
!4136 = !DILocation(line: 361, column: 11, scope: !3225, inlinedAt: !4045)
!4137 = !DILocation(line: 361, column: 6, scope: !3128, inlinedAt: !4045)
!4138 = !DILocation(line: 361, column: 26, scope: !3225, inlinedAt: !4045)
!4139 = !DILocation(line: 362, column: 6, scope: !3230, inlinedAt: !4045)
!4140 = !DILocation(line: 362, column: 11, scope: !3230, inlinedAt: !4045)
!4141 = !DILocation(line: 362, column: 6, scope: !3128, inlinedAt: !4045)
!4142 = !DILocation(line: 362, column: 26, scope: !3230, inlinedAt: !4045)
!4143 = !DILocation(line: 363, column: 6, scope: !3235, inlinedAt: !4045)
!4144 = !DILocation(line: 363, column: 11, scope: !3235, inlinedAt: !4045)
!4145 = !DILocation(line: 363, column: 6, scope: !3128, inlinedAt: !4045)
!4146 = !DILocation(line: 363, column: 26, scope: !3235, inlinedAt: !4045)
!4147 = !DILocation(line: 364, column: 6, scope: !3240, inlinedAt: !4045)
!4148 = !DILocation(line: 364, column: 11, scope: !3240, inlinedAt: !4045)
!4149 = !DILocation(line: 364, column: 6, scope: !3128, inlinedAt: !4045)
!4150 = !DILocation(line: 364, column: 26, scope: !3240, inlinedAt: !4045)
!4151 = !DILocation(line: 365, column: 6, scope: !3245, inlinedAt: !4045)
!4152 = !DILocation(line: 365, column: 11, scope: !3245, inlinedAt: !4045)
!4153 = !DILocation(line: 365, column: 6, scope: !3128, inlinedAt: !4045)
!4154 = !DILocation(line: 365, column: 26, scope: !3245, inlinedAt: !4045)
!4155 = !DILocation(line: 366, column: 6, scope: !3250, inlinedAt: !4045)
!4156 = !DILocation(line: 366, column: 11, scope: !3250, inlinedAt: !4045)
!4157 = !DILocation(line: 366, column: 6, scope: !3128, inlinedAt: !4045)
!4158 = !DILocation(line: 366, column: 26, scope: !3250, inlinedAt: !4045)
!4159 = !DILocation(line: 367, column: 6, scope: !3255, inlinedAt: !4045)
!4160 = !DILocation(line: 367, column: 11, scope: !3255, inlinedAt: !4045)
!4161 = !DILocation(line: 367, column: 6, scope: !3128, inlinedAt: !4045)
!4162 = !DILocation(line: 367, column: 26, scope: !3255, inlinedAt: !4045)
!4163 = !DILocation(line: 368, column: 6, scope: !3260, inlinedAt: !4045)
!4164 = !DILocation(line: 368, column: 11, scope: !3260, inlinedAt: !4045)
!4165 = !DILocation(line: 368, column: 6, scope: !3128, inlinedAt: !4045)
!4166 = !DILocation(line: 368, column: 26, scope: !3260, inlinedAt: !4045)
!4167 = !DILocation(line: 369, column: 6, scope: !3265, inlinedAt: !4045)
!4168 = !DILocation(line: 369, column: 11, scope: !3265, inlinedAt: !4045)
!4169 = !DILocation(line: 369, column: 6, scope: !3128, inlinedAt: !4045)
!4170 = !DILocation(line: 369, column: 26, scope: !3265, inlinedAt: !4045)
!4171 = !DILocation(line: 370, column: 6, scope: !3270, inlinedAt: !4045)
!4172 = !DILocation(line: 370, column: 11, scope: !3270, inlinedAt: !4045)
!4173 = !DILocation(line: 370, column: 6, scope: !3128, inlinedAt: !4045)
!4174 = !DILocation(line: 370, column: 26, scope: !3270, inlinedAt: !4045)
!4175 = !DILocation(line: 371, column: 6, scope: !3275, inlinedAt: !4045)
!4176 = !DILocation(line: 371, column: 11, scope: !3275, inlinedAt: !4045)
!4177 = !DILocation(line: 371, column: 6, scope: !3128, inlinedAt: !4045)
!4178 = !DILocation(line: 371, column: 26, scope: !3275, inlinedAt: !4045)
!4179 = !DILocation(line: 372, column: 6, scope: !3280, inlinedAt: !4045)
!4180 = !DILocation(line: 372, column: 11, scope: !3280, inlinedAt: !4045)
!4181 = !DILocation(line: 372, column: 6, scope: !3128, inlinedAt: !4045)
!4182 = !DILocation(line: 372, column: 26, scope: !3280, inlinedAt: !4045)
!4183 = !DILocation(line: 373, column: 6, scope: !3285, inlinedAt: !4045)
!4184 = !DILocation(line: 373, column: 11, scope: !3285, inlinedAt: !4045)
!4185 = !DILocation(line: 373, column: 6, scope: !3128, inlinedAt: !4045)
!4186 = !DILocation(line: 373, column: 26, scope: !3285, inlinedAt: !4045)
!4187 = !DILocation(line: 374, column: 6, scope: !3290, inlinedAt: !4045)
!4188 = !DILocation(line: 374, column: 11, scope: !3290, inlinedAt: !4045)
!4189 = !DILocation(line: 374, column: 6, scope: !3128, inlinedAt: !4045)
!4190 = !DILocation(line: 374, column: 26, scope: !3290, inlinedAt: !4045)
!4191 = !DILocation(line: 375, column: 6, scope: !3295, inlinedAt: !4045)
!4192 = !DILocation(line: 375, column: 11, scope: !3295, inlinedAt: !4045)
!4193 = !DILocation(line: 375, column: 6, scope: !3128, inlinedAt: !4045)
!4194 = !DILocation(line: 375, column: 27, scope: !3295, inlinedAt: !4045)
!4195 = !DILocation(line: 376, column: 6, scope: !3300, inlinedAt: !4045)
!4196 = !DILocation(line: 376, column: 11, scope: !3300, inlinedAt: !4045)
!4197 = !DILocation(line: 376, column: 6, scope: !3128, inlinedAt: !4045)
!4198 = !DILocation(line: 376, column: 32, scope: !3300, inlinedAt: !4045)
!4199 = !DILocation(line: 377, column: 6, scope: !3305, inlinedAt: !4045)
!4200 = !DILocation(line: 377, column: 11, scope: !3305, inlinedAt: !4045)
!4201 = !DILocation(line: 377, column: 6, scope: !3128, inlinedAt: !4045)
!4202 = !DILocation(line: 377, column: 32, scope: !3305, inlinedAt: !4045)
!4203 = !DILocation(line: 378, column: 6, scope: !3310, inlinedAt: !4045)
!4204 = !DILocation(line: 378, column: 11, scope: !3310, inlinedAt: !4045)
!4205 = !DILocation(line: 378, column: 6, scope: !3128, inlinedAt: !4045)
!4206 = !DILocation(line: 378, column: 32, scope: !3310, inlinedAt: !4045)
!4207 = !DILocation(line: 379, column: 6, scope: !3315, inlinedAt: !4045)
!4208 = !DILocation(line: 379, column: 11, scope: !3315, inlinedAt: !4045)
!4209 = !DILocation(line: 379, column: 6, scope: !3128, inlinedAt: !4045)
!4210 = !DILocation(line: 379, column: 33, scope: !3315, inlinedAt: !4045)
!4211 = !DILocation(line: 380, column: 6, scope: !3320, inlinedAt: !4045)
!4212 = !DILocation(line: 380, column: 11, scope: !3320, inlinedAt: !4045)
!4213 = !DILocation(line: 380, column: 6, scope: !3128, inlinedAt: !4045)
!4214 = !DILocation(line: 380, column: 33, scope: !3320, inlinedAt: !4045)
!4215 = !DILocation(line: 381, column: 6, scope: !3325, inlinedAt: !4045)
!4216 = !DILocation(line: 381, column: 11, scope: !3325, inlinedAt: !4045)
!4217 = !DILocation(line: 381, column: 6, scope: !3128, inlinedAt: !4045)
!4218 = !DILocation(line: 381, column: 33, scope: !3325, inlinedAt: !4045)
!4219 = !DILocation(line: 382, column: 2, scope: !3330, inlinedAt: !4045)
!4220 = !DILocation(line: 382, column: 2, scope: !3334, inlinedAt: !4045)
!4221 = !DILocation(line: 382, column: 2, scope: !3335, inlinedAt: !4045)
!4222 = !DILocation(line: 386, column: 1, scope: !3128, inlinedAt: !4045)
!4223 = !DILocation(line: 547, column: 9, scope: !3111, inlinedAt: !4037)
!4224 = !DILocation(line: 549, column: 8, scope: !3341, inlinedAt: !4037)
!4225 = !DILocation(line: 549, column: 7, scope: !3111, inlinedAt: !4037)
!4226 = !DILocation(line: 550, column: 4, scope: !3341, inlinedAt: !4037)
!4227 = !DILocation(line: 553, column: 33, scope: !3111, inlinedAt: !4037)
!4228 = !DILocation(line: 325, column: 6, scope: !3346, inlinedAt: !4043)
!4229 = !DILocation(line: 325, column: 6, scope: !3122, inlinedAt: !4043)
!4230 = !DILocation(line: 326, column: 3, scope: !3346, inlinedAt: !4043)
!4231 = !DILocation(line: 332, column: 9, scope: !3122, inlinedAt: !4043)
!4232 = !DILocation(line: 332, column: 15, scope: !3122, inlinedAt: !4043)
!4233 = !DILocation(line: 332, column: 2, scope: !3122, inlinedAt: !4043)
!4234 = !DILocation(line: 336, column: 1, scope: !3122, inlinedAt: !4043)
!4235 = !DILocation(line: 553, column: 5, scope: !3111, inlinedAt: !4037)
!4236 = !DILocation(line: 553, column: 41, scope: !3111, inlinedAt: !4037)
!4237 = !DILocation(line: 554, column: 5, scope: !3111, inlinedAt: !4037)
!4238 = !DILocation(line: 554, column: 12, scope: !3111, inlinedAt: !4037)
!4239 = !DILocation(line: 448, column: 31, scope: !3106, inlinedAt: !4036)
!4240 = !DILocation(line: 448, column: 34, scope: !3106, inlinedAt: !4036)
!4241 = !DILocation(line: 448, column: 14, scope: !3106, inlinedAt: !4036)
!4242 = !DILocation(line: 450, column: 22, scope: !3106, inlinedAt: !4036)
!4243 = !DILocation(line: 450, column: 25, scope: !3106, inlinedAt: !4036)
!4244 = !DILocation(line: 450, column: 30, scope: !3106, inlinedAt: !4036)
!4245 = !DILocation(line: 450, column: 36, scope: !3106, inlinedAt: !4036)
!4246 = !DILocation(line: 450, column: 8, scope: !3106, inlinedAt: !4036)
!4247 = !DILocation(line: 450, column: 6, scope: !3106, inlinedAt: !4036)
!4248 = !DILocation(line: 451, column: 9, scope: !3106, inlinedAt: !4036)
!4249 = !DILocation(line: 552, column: 3, scope: !3111, inlinedAt: !4037)
!4250 = !DILocation(line: 557, column: 19, scope: !3113, inlinedAt: !4037)
!4251 = !DILocation(line: 557, column: 25, scope: !3113, inlinedAt: !4037)
!4252 = !DILocation(line: 557, column: 9, scope: !3113, inlinedAt: !4037)
!4253 = !DILocation(line: 557, column: 2, scope: !3113, inlinedAt: !4037)
!4254 = !DILocation(line: 558, column: 1, scope: !3113, inlinedAt: !4037)
!4255 = !DILocation(line: 591, column: 3, scope: !4038)
!4256 = !DILocation(line: 592, column: 19, scope: !4032)
!4257 = !DILocation(line: 592, column: 26, scope: !4032)
!4258 = !DILocation(line: 592, column: 9, scope: !4032)
!4259 = !DILocation(line: 592, column: 2, scope: !4032)
!4260 = !DILocation(line: 593, column: 1, scope: !4032)
!4261 = distinct !DISubprogram(name: "kcalloc", scope: !100, file: !100, line: 601, type: !4033, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4262 = !DILocalVariable(name: "n", arg: 1, scope: !4261, file: !100, line: 601, type: !291)
!4263 = !DILocation(line: 601, column: 36, scope: !4261)
!4264 = !DILocalVariable(name: "size", arg: 2, scope: !4261, file: !100, line: 601, type: !291)
!4265 = !DILocation(line: 601, column: 46, scope: !4261)
!4266 = !DILocalVariable(name: "flags", arg: 3, scope: !4261, file: !100, line: 601, type: !1557)
!4267 = !DILocation(line: 601, column: 58, scope: !4261)
!4268 = !DILocation(line: 603, column: 23, scope: !4261)
!4269 = !DILocation(line: 603, column: 26, scope: !4261)
!4270 = !DILocation(line: 603, column: 32, scope: !4261)
!4271 = !DILocation(line: 603, column: 38, scope: !4261)
!4272 = !DILocation(line: 603, column: 9, scope: !4261)
!4273 = !DILocation(line: 603, column: 2, scope: !4261)
!4274 = distinct !DISubprogram(name: "odvp_show", scope: !3, file: !3, line: 272, type: !2751, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4275 = !DILocalVariable(name: "kobj", arg: 1, scope: !4274, file: !3, line: 272, type: !196)
!4276 = !DILocation(line: 272, column: 42, scope: !4274)
!4277 = !DILocalVariable(name: "attr", arg: 2, scope: !4274, file: !3, line: 272, type: !2753)
!4278 = !DILocation(line: 272, column: 71, scope: !4274)
!4279 = !DILocalVariable(name: "buf", arg: 3, scope: !4274, file: !3, line: 273, type: !244)
!4280 = !DILocation(line: 273, column: 11, scope: !4274)
!4281 = !DILocalVariable(name: "odvp_attr", scope: !4274, file: !3, line: 275, type: !2488)
!4282 = !DILocation(line: 275, column: 20, scope: !4274)
!4283 = !DILocalVariable(name: "__mptr", scope: !4284, file: !3, line: 277, type: !134)
!4284 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 277, column: 14)
!4285 = !DILocation(line: 277, column: 14, scope: !4284)
!4286 = !DILocation(line: 277, column: 14, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 277, column: 14)
!4288 = !DILocation(line: 277, column: 12, scope: !4274)
!4289 = !DILocation(line: 279, column: 17, scope: !4274)
!4290 = !DILocation(line: 279, column: 30, scope: !4274)
!4291 = !DILocation(line: 279, column: 41, scope: !4274)
!4292 = !DILocation(line: 279, column: 47, scope: !4274)
!4293 = !DILocation(line: 279, column: 52, scope: !4274)
!4294 = !DILocation(line: 279, column: 63, scope: !4274)
!4295 = !DILocation(line: 279, column: 9, scope: !4274)
!4296 = !DILocation(line: 279, column: 2, scope: !4274)
!4297 = distinct !DISubprogram(name: "sysfs_create_file", scope: !269, file: !269, line: 596, type: !4298, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!140, !196, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!4302 = !DILocalVariable(name: "kobj", arg: 1, scope: !4297, file: !269, line: 596, type: !196)
!4303 = !DILocation(line: 596, column: 66, scope: !4297)
!4304 = !DILocalVariable(name: "attr", arg: 2, scope: !4297, file: !269, line: 597, type: !4300)
!4305 = !DILocation(line: 597, column: 32, scope: !4297)
!4306 = !DILocation(line: 599, column: 30, scope: !4297)
!4307 = !DILocation(line: 599, column: 36, scope: !4297)
!4308 = !DILocation(line: 599, column: 9, scope: !4297)
!4309 = !DILocation(line: 599, column: 2, scope: !4297)
!4310 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4311, file: !4311, line: 52, type: !4312, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4311 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!167, !167}
!4314 = !DILocalVariable(name: "overflow", arg: 1, scope: !4310, file: !4311, line: 52, type: !167)
!4315 = !DILocation(line: 52, column: 60, scope: !4310)
!4316 = !DILocation(line: 54, column: 9, scope: !4310)
!4317 = !DILocation(line: 54, column: 2, scope: !4310)
!4318 = distinct !DISubprogram(name: "int3400_thermal_get_temp", scope: !3, file: !3, line: 407, type: !2613, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4319 = !DILocalVariable(name: "thermal", arg: 1, scope: !4318, file: !3, line: 407, type: !2537)
!4320 = !DILocation(line: 407, column: 65, scope: !4318)
!4321 = !DILocalVariable(name: "temp", arg: 2, scope: !4318, file: !3, line: 408, type: !834)
!4322 = !DILocation(line: 408, column: 9, scope: !4318)
!4323 = !DILocation(line: 410, column: 3, scope: !4318)
!4324 = !DILocation(line: 410, column: 8, scope: !4318)
!4325 = !DILocation(line: 411, column: 2, scope: !4318)
!4326 = distinct !DISubprogram(name: "int3400_thermal_change_mode", scope: !3, file: !3, line: 414, type: !2621, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4327 = !DILocalVariable(name: "thermal", arg: 1, scope: !4326, file: !3, line: 414, type: !2537)
!4328 = !DILocation(line: 414, column: 68, scope: !4326)
!4329 = !DILocalVariable(name: "mode", arg: 2, scope: !4326, file: !3, line: 415, type: !64)
!4330 = !DILocation(line: 415, column: 37, scope: !4326)
!4331 = !DILocalVariable(name: "priv", scope: !4326, file: !3, line: 417, type: !2493)
!4332 = !DILocation(line: 417, column: 31, scope: !4326)
!4333 = !DILocation(line: 417, column: 38, scope: !4326)
!4334 = !DILocation(line: 417, column: 47, scope: !4326)
!4335 = !DILocalVariable(name: "result", scope: !4326, file: !3, line: 418, type: !140)
!4336 = !DILocation(line: 418, column: 6, scope: !4326)
!4337 = !DILocation(line: 420, column: 7, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 420, column: 6)
!4339 = !DILocation(line: 420, column: 6, scope: !4326)
!4340 = !DILocation(line: 421, column: 3, scope: !4338)
!4341 = !DILocation(line: 423, column: 6, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 423, column: 6)
!4343 = !DILocation(line: 423, column: 14, scope: !4342)
!4344 = !DILocation(line: 423, column: 23, scope: !4342)
!4345 = !DILocation(line: 423, column: 11, scope: !4342)
!4346 = !DILocation(line: 423, column: 6, scope: !4326)
!4347 = !DILocation(line: 424, column: 36, scope: !4342)
!4348 = !DILocation(line: 424, column: 42, scope: !4342)
!4349 = !DILocation(line: 424, column: 48, scope: !4342)
!4350 = !DILocation(line: 425, column: 7, scope: !4342)
!4351 = !DILocation(line: 425, column: 13, scope: !4342)
!4352 = !DILocation(line: 426, column: 7, scope: !4342)
!4353 = !DILocation(line: 426, column: 12, scope: !4342)
!4354 = !DILocation(line: 424, column: 12, scope: !4342)
!4355 = !DILocation(line: 424, column: 10, scope: !4342)
!4356 = !DILocation(line: 424, column: 3, scope: !4342)
!4357 = !DILocation(line: 429, column: 16, scope: !4326)
!4358 = !DILocation(line: 429, column: 2, scope: !4326)
!4359 = !DILocation(line: 431, column: 9, scope: !4326)
!4360 = !DILocation(line: 431, column: 2, scope: !4326)
!4361 = !DILocation(line: 432, column: 1, scope: !4326)
!4362 = distinct !DISubprogram(name: "int3400_thermal_run_osc", scope: !3, file: !3, line: 237, type: !4363, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!140, !142, !106, !167}
!4365 = !DILocalVariable(name: "handle", arg: 1, scope: !4362, file: !3, line: 237, type: !142)
!4366 = !DILocation(line: 237, column: 48, scope: !4362)
!4367 = !DILocalVariable(name: "uuid", arg: 2, scope: !4362, file: !3, line: 238, type: !106)
!4368 = !DILocation(line: 238, column: 31, scope: !4362)
!4369 = !DILocalVariable(name: "enable", arg: 3, scope: !4362, file: !3, line: 238, type: !167)
!4370 = !DILocation(line: 238, column: 42, scope: !4362)
!4371 = !DILocalVariable(name: "ret", scope: !4362, file: !3, line: 240, type: !517)
!4372 = !DILocation(line: 240, column: 6, scope: !4362)
!4373 = !DILocalVariable(name: "buf", scope: !4362, file: !3, line: 240, type: !4374)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 64, elements: !1061)
!4375 = !DILocation(line: 240, column: 11, scope: !4362)
!4376 = !DILocalVariable(name: "status", scope: !4362, file: !3, line: 241, type: !3397)
!4377 = !DILocation(line: 241, column: 14, scope: !4362)
!4378 = !DILocalVariable(name: "result", scope: !4362, file: !3, line: 242, type: !140)
!4379 = !DILocation(line: 242, column: 6, scope: !4362)
!4380 = !DILocalVariable(name: "context", scope: !4362, file: !3, line: 243, type: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_osc_context", file: !4382, line: 516, size: 384, elements: !4383)
!4382 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!4383 = !{!4384, !4385, !4386, !4387}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_str", scope: !4381, file: !4382, line: 517, baseType: !244, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4381, file: !4382, line: 518, baseType: !140, size: 32, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4381, file: !4382, line: 519, baseType: !3380, size: 128, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !4381, file: !4382, line: 520, baseType: !3380, size: 128, offset: 256)
!4388 = !DILocation(line: 243, column: 26, scope: !4362)
!4389 = !DILocation(line: 249, column: 6, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 249, column: 6)
!4391 = !DILocation(line: 249, column: 11, scope: !4390)
!4392 = !DILocation(line: 249, column: 15, scope: !4390)
!4393 = !DILocation(line: 249, column: 18, scope: !4390)
!4394 = !DILocation(line: 249, column: 23, scope: !4390)
!4395 = !DILocation(line: 249, column: 6, scope: !4362)
!4396 = !DILocation(line: 250, column: 3, scope: !4390)
!4397 = !DILocation(line: 252, column: 43, scope: !4362)
!4398 = !DILocation(line: 252, column: 21, scope: !4362)
!4399 = !DILocation(line: 252, column: 10, scope: !4362)
!4400 = !DILocation(line: 252, column: 19, scope: !4362)
!4401 = !DILocation(line: 254, column: 2, scope: !4362)
!4402 = !DILocation(line: 254, column: 23, scope: !4362)
!4403 = !DILocation(line: 255, column: 27, scope: !4362)
!4404 = !DILocation(line: 255, column: 2, scope: !4362)
!4405 = !DILocation(line: 255, column: 25, scope: !4362)
!4406 = !DILocation(line: 257, column: 24, scope: !4362)
!4407 = !DILocation(line: 257, column: 10, scope: !4362)
!4408 = !DILocation(line: 257, column: 14, scope: !4362)
!4409 = !DILocation(line: 257, column: 22, scope: !4362)
!4410 = !DILocation(line: 259, column: 24, scope: !4362)
!4411 = !DILocation(line: 259, column: 11, scope: !4362)
!4412 = !DILocation(line: 259, column: 9, scope: !4362)
!4413 = !DILocation(line: 260, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 260, column: 6)
!4415 = !DILocation(line: 260, column: 6, scope: !4362)
!4416 = !DILocation(line: 261, column: 27, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 260, column: 28)
!4418 = !DILocation(line: 261, column: 31, scope: !4417)
!4419 = !DILocation(line: 261, column: 39, scope: !4417)
!4420 = !DILocation(line: 261, column: 11, scope: !4417)
!4421 = !DILocation(line: 261, column: 9, scope: !4417)
!4422 = !DILocation(line: 261, column: 7, scope: !4417)
!4423 = !DILocation(line: 262, column: 7, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 262, column: 7)
!4425 = !DILocation(line: 262, column: 14, scope: !4424)
!4426 = !DILocation(line: 262, column: 11, scope: !4424)
!4427 = !DILocation(line: 262, column: 7, scope: !4417)
!4428 = !DILocation(line: 263, column: 11, scope: !4424)
!4429 = !DILocation(line: 263, column: 4, scope: !4424)
!4430 = !DILocation(line: 264, column: 2, scope: !4417)
!4431 = !DILocation(line: 265, column: 10, scope: !4414)
!4432 = !DILocation(line: 267, column: 16, scope: !4362)
!4433 = !DILocation(line: 267, column: 20, scope: !4362)
!4434 = !DILocation(line: 267, column: 2, scope: !4362)
!4435 = !DILocation(line: 269, column: 9, scope: !4362)
!4436 = !DILocation(line: 269, column: 2, scope: !4362)
!4437 = !DILocation(line: 270, column: 1, scope: !4362)
!4438 = distinct !DISubprogram(name: "available_uuids_show", scope: !3, file: !3, line: 116, type: !2830, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4439 = !DILocalVariable(name: "dev", arg: 1, scope: !4438, file: !3, line: 116, type: !1686)
!4440 = !DILocation(line: 116, column: 52, scope: !4438)
!4441 = !DILocalVariable(name: "attr", arg: 2, scope: !4438, file: !3, line: 117, type: !2832)
!4442 = !DILocation(line: 117, column: 34, scope: !4438)
!4443 = !DILocalVariable(name: "buf", arg: 3, scope: !4438, file: !3, line: 118, type: !244)
!4444 = !DILocation(line: 118, column: 15, scope: !4438)
!4445 = !DILocalVariable(name: "priv", scope: !4438, file: !3, line: 120, type: !2493)
!4446 = !DILocation(line: 120, column: 31, scope: !4438)
!4447 = !DILocation(line: 120, column: 54, scope: !4438)
!4448 = !DILocation(line: 120, column: 38, scope: !4438)
!4449 = !DILocalVariable(name: "i", scope: !4438, file: !3, line: 121, type: !140)
!4450 = !DILocation(line: 121, column: 6, scope: !4438)
!4451 = !DILocalVariable(name: "length", scope: !4438, file: !3, line: 122, type: !140)
!4452 = !DILocation(line: 122, column: 6, scope: !4438)
!4453 = !DILocation(line: 124, column: 7, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 124, column: 6)
!4455 = !DILocation(line: 124, column: 13, scope: !4454)
!4456 = !DILocation(line: 124, column: 6, scope: !4438)
!4457 = !DILocation(line: 125, column: 18, scope: !4454)
!4458 = !DILocation(line: 125, column: 10, scope: !4454)
!4459 = !DILocation(line: 125, column: 3, scope: !4454)
!4460 = !DILocation(line: 127, column: 9, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 127, column: 2)
!4462 = !DILocation(line: 127, column: 7, scope: !4461)
!4463 = !DILocation(line: 127, column: 14, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 127, column: 2)
!4465 = !DILocation(line: 127, column: 16, scope: !4464)
!4466 = !DILocation(line: 127, column: 2, scope: !4461)
!4467 = !DILocation(line: 128, column: 7, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 128, column: 7)
!4469 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 127, column: 53)
!4470 = !DILocation(line: 128, column: 13, scope: !4468)
!4471 = !DILocation(line: 128, column: 33, scope: !4468)
!4472 = !DILocation(line: 128, column: 30, scope: !4468)
!4473 = !DILocation(line: 128, column: 25, scope: !4468)
!4474 = !DILocation(line: 128, column: 7, scope: !4469)
!4475 = !DILocation(line: 129, column: 20, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 129, column: 8)
!4477 = !DILocation(line: 129, column: 18, scope: !4476)
!4478 = !DILocation(line: 129, column: 27, scope: !4476)
!4479 = !DILocation(line: 129, column: 8, scope: !4468)
!4480 = !DILocation(line: 130, column: 26, scope: !4476)
!4481 = !DILocation(line: 130, column: 30, scope: !4476)
!4482 = !DILocation(line: 131, column: 22, scope: !4476)
!4483 = !DILocation(line: 131, column: 20, scope: !4476)
!4484 = !DILocation(line: 133, column: 32, scope: !4476)
!4485 = !DILocation(line: 133, column: 10, scope: !4476)
!4486 = !DILocation(line: 130, column: 15, scope: !4476)
!4487 = !DILocation(line: 130, column: 12, scope: !4476)
!4488 = !DILocation(line: 130, column: 5, scope: !4476)
!4489 = !DILocation(line: 129, column: 29, scope: !4476)
!4490 = !DILocation(line: 134, column: 2, scope: !4469)
!4491 = !DILocation(line: 127, column: 49, scope: !4464)
!4492 = !DILocation(line: 127, column: 2, scope: !4464)
!4493 = distinct !{!4493, !4466, !4494}
!4494 = !DILocation(line: 134, column: 2, scope: !4461)
!4495 = !DILocation(line: 136, column: 9, scope: !4438)
!4496 = !DILocation(line: 136, column: 2, scope: !4438)
!4497 = !DILocation(line: 137, column: 1, scope: !4438)
!4498 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !4499, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!134, !178}
!4501 = !DILocalVariable(name: "dev", arg: 1, scope: !4498, file: !30, line: 655, type: !178)
!4502 = !DILocation(line: 655, column: 58, scope: !4498)
!4503 = !DILocation(line: 657, column: 9, scope: !4498)
!4504 = !DILocation(line: 657, column: 14, scope: !4498)
!4505 = !DILocation(line: 657, column: 2, scope: !4498)
!4506 = distinct !DISubprogram(name: "current_uuid_show", scope: !3, file: !3, line: 139, type: !2830, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4507 = !DILocalVariable(name: "dev", arg: 1, scope: !4506, file: !3, line: 139, type: !1686)
!4508 = !DILocation(line: 139, column: 49, scope: !4506)
!4509 = !DILocalVariable(name: "devattr", arg: 2, scope: !4506, file: !3, line: 140, type: !2832)
!4510 = !DILocation(line: 140, column: 31, scope: !4506)
!4511 = !DILocalVariable(name: "buf", arg: 3, scope: !4506, file: !3, line: 140, type: !244)
!4512 = !DILocation(line: 140, column: 46, scope: !4506)
!4513 = !DILocalVariable(name: "priv", scope: !4506, file: !3, line: 142, type: !2493)
!4514 = !DILocation(line: 142, column: 31, scope: !4506)
!4515 = !DILocation(line: 142, column: 54, scope: !4506)
!4516 = !DILocation(line: 142, column: 38, scope: !4506)
!4517 = !DILocation(line: 144, column: 6, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 144, column: 6)
!4519 = !DILocation(line: 144, column: 12, scope: !4518)
!4520 = !DILocation(line: 144, column: 31, scope: !4518)
!4521 = !DILocation(line: 144, column: 6, scope: !4506)
!4522 = !DILocation(line: 145, column: 18, scope: !4518)
!4523 = !DILocation(line: 145, column: 10, scope: !4518)
!4524 = !DILocation(line: 145, column: 3, scope: !4518)
!4525 = !DILocation(line: 147, column: 17, scope: !4506)
!4526 = !DILocation(line: 148, column: 32, scope: !4506)
!4527 = !DILocation(line: 148, column: 38, scope: !4506)
!4528 = !DILocation(line: 148, column: 10, scope: !4506)
!4529 = !DILocation(line: 147, column: 9, scope: !4506)
!4530 = !DILocation(line: 147, column: 2, scope: !4506)
!4531 = !DILocation(line: 149, column: 1, scope: !4506)
!4532 = distinct !DISubprogram(name: "current_uuid_store", scope: !3, file: !3, line: 151, type: !2835, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4533 = !DILocalVariable(name: "dev", arg: 1, scope: !4532, file: !3, line: 151, type: !1686)
!4534 = !DILocation(line: 151, column: 50, scope: !4532)
!4535 = !DILocalVariable(name: "attr", arg: 2, scope: !4532, file: !3, line: 152, type: !2832)
!4536 = !DILocation(line: 152, column: 32, scope: !4532)
!4537 = !DILocalVariable(name: "buf", arg: 3, scope: !4532, file: !3, line: 153, type: !186)
!4538 = !DILocation(line: 153, column: 19, scope: !4532)
!4539 = !DILocalVariable(name: "count", arg: 4, scope: !4532, file: !3, line: 153, type: !291)
!4540 = !DILocation(line: 153, column: 31, scope: !4532)
!4541 = !DILocalVariable(name: "priv", scope: !4532, file: !3, line: 155, type: !2493)
!4542 = !DILocation(line: 155, column: 31, scope: !4532)
!4543 = !DILocation(line: 155, column: 54, scope: !4532)
!4544 = !DILocation(line: 155, column: 38, scope: !4532)
!4545 = !DILocalVariable(name: "i", scope: !4532, file: !3, line: 156, type: !140)
!4546 = !DILocation(line: 156, column: 6, scope: !4532)
!4547 = !DILocation(line: 158, column: 9, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 158, column: 2)
!4549 = !DILocation(line: 158, column: 7, scope: !4548)
!4550 = !DILocation(line: 158, column: 14, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 158, column: 2)
!4552 = !DILocation(line: 158, column: 16, scope: !4551)
!4553 = !DILocation(line: 158, column: 2, scope: !4548)
!4554 = !DILocation(line: 159, column: 16, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 159, column: 7)
!4556 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 158, column: 53)
!4557 = !DILocation(line: 159, column: 43, scope: !4555)
!4558 = !DILocation(line: 159, column: 21, scope: !4555)
!4559 = !DILocation(line: 159, column: 8, scope: !4555)
!4560 = !DILocation(line: 159, column: 7, scope: !4556)
!4561 = !DILocation(line: 165, column: 8, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 165, column: 8)
!4563 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 160, column: 48)
!4564 = !DILocation(line: 165, column: 14, scope: !4562)
!4565 = !DILocation(line: 165, column: 26, scope: !4562)
!4566 = !DILocation(line: 166, column: 10, scope: !4562)
!4567 = !DILocation(line: 166, column: 16, scope: !4562)
!4568 = !DILocation(line: 166, column: 36, scope: !4562)
!4569 = !DILocation(line: 166, column: 33, scope: !4562)
!4570 = !DILocation(line: 166, column: 28, scope: !4562)
!4571 = !DILocation(line: 165, column: 8, scope: !4563)
!4572 = !DILocation(line: 167, column: 5, scope: !4562)
!4573 = !DILocation(line: 169, column: 31, scope: !4563)
!4574 = !DILocation(line: 169, column: 4, scope: !4563)
!4575 = !DILocation(line: 169, column: 10, scope: !4563)
!4576 = !DILocation(line: 169, column: 29, scope: !4563)
!4577 = !DILocation(line: 170, column: 11, scope: !4563)
!4578 = !DILocation(line: 170, column: 4, scope: !4563)
!4579 = !DILocation(line: 172, column: 2, scope: !4556)
!4580 = !DILocation(line: 158, column: 48, scope: !4551)
!4581 = !DILocation(line: 158, column: 2, scope: !4551)
!4582 = distinct !{!4582, !4553, !4583}
!4583 = !DILocation(line: 172, column: 2, scope: !4548)
!4584 = !DILocation(line: 174, column: 2, scope: !4532)
!4585 = !DILocation(line: 175, column: 1, scope: !4532)
!4586 = distinct !DISubprogram(name: "imok_store", scope: !3, file: !3, line: 87, type: !2835, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4587 = !DILocalVariable(name: "dev", arg: 1, scope: !4586, file: !3, line: 87, type: !1686)
!4588 = !DILocation(line: 87, column: 42, scope: !4586)
!4589 = !DILocalVariable(name: "attr", arg: 2, scope: !4586, file: !3, line: 87, type: !2832)
!4590 = !DILocation(line: 87, column: 72, scope: !4586)
!4591 = !DILocalVariable(name: "buf", arg: 3, scope: !4586, file: !3, line: 88, type: !186)
!4592 = !DILocation(line: 88, column: 18, scope: !4586)
!4593 = !DILocalVariable(name: "count", arg: 4, scope: !4586, file: !3, line: 88, type: !291)
!4594 = !DILocation(line: 88, column: 30, scope: !4586)
!4595 = !DILocalVariable(name: "priv", scope: !4586, file: !3, line: 90, type: !2493)
!4596 = !DILocation(line: 90, column: 31, scope: !4586)
!4597 = !DILocation(line: 90, column: 54, scope: !4586)
!4598 = !DILocation(line: 90, column: 38, scope: !4586)
!4599 = !DILocalVariable(name: "status", scope: !4586, file: !3, line: 91, type: !3397)
!4600 = !DILocation(line: 91, column: 14, scope: !4586)
!4601 = !DILocalVariable(name: "input", scope: !4586, file: !3, line: 92, type: !140)
!4602 = !DILocation(line: 92, column: 6, scope: !4586)
!4603 = !DILocalVariable(name: "ret", scope: !4586, file: !3, line: 92, type: !140)
!4604 = !DILocation(line: 92, column: 13, scope: !4586)
!4605 = !DILocation(line: 94, column: 19, scope: !4586)
!4606 = !DILocation(line: 94, column: 8, scope: !4586)
!4607 = !DILocation(line: 94, column: 6, scope: !4586)
!4608 = !DILocation(line: 95, column: 6, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 95, column: 6)
!4610 = !DILocation(line: 95, column: 6, scope: !4586)
!4611 = !DILocation(line: 96, column: 10, scope: !4609)
!4612 = !DILocation(line: 96, column: 3, scope: !4609)
!4613 = !DILocation(line: 97, column: 38, scope: !4586)
!4614 = !DILocation(line: 97, column: 44, scope: !4586)
!4615 = !DILocation(line: 97, column: 50, scope: !4586)
!4616 = !DILocation(line: 97, column: 66, scope: !4586)
!4617 = !DILocation(line: 97, column: 11, scope: !4586)
!4618 = !DILocation(line: 97, column: 9, scope: !4586)
!4619 = !DILocation(line: 98, column: 6, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 98, column: 6)
!4621 = !DILocation(line: 98, column: 6, scope: !4586)
!4622 = !DILocation(line: 99, column: 3, scope: !4620)
!4623 = !DILocation(line: 101, column: 9, scope: !4586)
!4624 = !DILocation(line: 101, column: 2, scope: !4586)
!4625 = !DILocation(line: 102, column: 1, scope: !4586)
!4626 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !269, file: !269, line: 602, type: !4627, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !196, !4300}
!4629 = !DILocalVariable(name: "kobj", arg: 1, scope: !4626, file: !269, line: 602, type: !196)
!4630 = !DILocation(line: 602, column: 54, scope: !4626)
!4631 = !DILocalVariable(name: "attr", arg: 2, scope: !4626, file: !269, line: 603, type: !4300)
!4632 = !DILocation(line: 603, column: 34, scope: !4626)
!4633 = !DILocation(line: 605, column: 23, scope: !4626)
!4634 = !DILocation(line: 605, column: 29, scope: !4626)
!4635 = !DILocation(line: 605, column: 2, scope: !4626)
!4636 = !DILocation(line: 606, column: 1, scope: !4626)
!4637 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2500, file: !2500, line: 231, type: !4638, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !217)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!134, !4640}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2499)
!4642 = !DILocalVariable(name: "pdev", arg: 1, scope: !4637, file: !2500, line: 231, type: !4640)
!4643 = !DILocation(line: 231, column: 72, scope: !4637)
!4644 = !DILocation(line: 233, column: 26, scope: !4637)
!4645 = !DILocation(line: 233, column: 32, scope: !4637)
!4646 = !DILocation(line: 233, column: 9, scope: !4637)
!4647 = !DILocation(line: 233, column: 2, scope: !4637)
