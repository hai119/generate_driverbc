; ModuleID = '../bcout/drivers/thermal/intel/int340x_thermal/int3403_thermal.llvm.bc'
source_filename = "drivers/thermal/intel/int340x_thermal/int3403_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_int3403_driver_init6:\09\09\09"
module asm ".long\09int3403_driver_init - .\09\09\09"
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
%struct.acpi_buffer = type { i64, i8* }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.int3403_priv = type { %struct.platform_device*, %struct.acpi_device*, i64, i8* }
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
%struct.int3403_sensor = type { %struct.int34x_thermal_zone* }
%struct.int34x_thermal_zone = type { %struct.acpi_device*, [10 x %struct.active_trip], i64*, i32, i32, i32, i32, i32, i32, i32, %struct.thermal_zone_device*, %struct.thermal_zone_device_ops*, i8*, %struct.acpi_lpat_conversion_table* }
%struct.active_trip = type { i32, i32, i8 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.thermal_attr = type opaque
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.acpi_lpat_conversion_table = type { %struct.acpi_lpat*, i32 }
%struct.acpi_lpat = type { i32, i32 }
%struct.int3403_cdev = type { %struct.thermal_cooling_device*, i64 }
%struct.anon.41 = type { i32, i32, %union.acpi_object* }

@__UNIQUE_ID___addressable_int3403_driver_init170 = internal global i8* bitcast (i32 ()* @int3403_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@int3403_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @int3403_add, i32 (%struct.platform_device*)* @int3403_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* getelementptr inbounds ([3 x %struct.acpi_device_id], [3 x %struct.acpi_device_id]* @int3403_device_ids, i32 0, i32 0), i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2474
@__exitcall_int3403_driver_exit = internal global void ()* @int3403_driver_exit, section ".exitcall.exit", align 8, !dbg !2447
@__UNIQUE_ID_author171 = internal constant [81 x i8] c"int3403_thermal.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1, !dbg !2454
@__UNIQUE_ID_file172 = internal constant [75 x i8] c"int3403_thermal.file=drivers/thermal/intel/int340x_thermal/int3403_thermal\00", section ".modinfo", align 1, !dbg !2459
@__UNIQUE_ID_license173 = internal constant [31 x i8] c"int3403_thermal.license=GPL v2\00", section ".modinfo", align 1, !dbg !2464
@__UNIQUE_ID_description174 = internal constant [56 x i8] c"int3403_thermal.description=ACPI INT3403 thermal driver\00", section ".modinfo", align 1, !dbg !2469
@.str = private unnamed_addr constant [16 x i8] c"int3403 thermal\00", align 1
@int3403_device_ids = internal constant [3 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT3403\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INTC1043\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2574
@.str.1 = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PTYP\00", align 1
@__const.int3403_cdev_add.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"PPSS\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\014Invalid PPSS data\0A\00", align 1
@int3403_cooling_ops = internal constant %struct.thermal_cooling_device_ops { i32 (%struct.thermal_cooling_device*, i64*)* @int3403_get_max_state, i32 (%struct.thermal_cooling_device*, i64*)* @int3403_get_cur_state, i32 (%struct.thermal_cooling_device*, i64)* @int3403_set_cur_state, i32 (%struct.thermal_cooling_device*, i32*)* null, i32 (%struct.thermal_cooling_device*, i64, i32*)* null, i32 (%struct.thermal_cooling_device*, i32, i64*)* null }, align 8, !dbg !2533
@.str.5 = private unnamed_addr constant [5 x i8] c"PPPC\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"SPPC\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_int3403_driver_init170 to i8*), i8* bitcast (void ()* @int3403_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_int3403_driver_exit to i8*), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__UNIQUE_ID_author171, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_file172, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_license173, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_description174, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_driver_init() #0 section ".init.text" !dbg !2582 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @int3403_driver, %struct.module* null) #6, !dbg !2585
  ret i32 %call, !dbg !2585
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @int3403_driver_exit() #0 section ".exit.text" !dbg !2586 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @int3403_driver) #6, !dbg !2587
  ret void, !dbg !2587
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_add(%struct.platform_device* %pdev) #2 !dbg !2588 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv = alloca %struct.int3403_priv*, align 8
  %result = alloca i32, align 4
  %tmp = alloca i64, align 8
  %status = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp3 = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2589, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv, metadata !2591, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2600, metadata !DIExpression()), !dbg !2601
  store i32 0, i32* %result, align 4, !dbg !2601
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2602, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2604, metadata !DIExpression()), !dbg !2606
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2607
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2608
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 32, i32 3264) #6, !dbg !2609
  %1 = bitcast i8* %call to %struct.int3403_priv*, !dbg !2609
  store %struct.int3403_priv* %1, %struct.int3403_priv** %priv, align 8, !dbg !2610
  %2 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2611
  %tobool = icmp ne %struct.int3403_priv* %2, null, !dbg !2611
  br i1 %tobool, label %if.end, label %if.then, !dbg !2613

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2614
  br label %return, !dbg !2614

if.end:                                           ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2615
  %4 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2616
  %pdev1 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %4, i32 0, i32 0, !dbg !2617
  store %struct.platform_device* %3, %struct.platform_device** %pdev1, align 8, !dbg !2618
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2619, metadata !DIExpression()), !dbg !2621
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2621
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !2621
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 24, !dbg !2621
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2621
  store %struct.fwnode_handle* %6, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2621
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2621
  %call4 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %7) #6, !dbg !2621
  br i1 %call4, label %cond.true, label %cond.false, !dbg !2621

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2622, metadata !DIExpression()), !dbg !2624
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2624
  %9 = bitcast %struct.fwnode_handle* %8 to i8*, !dbg !2624
  store i8* %9, i8** %__mptr, align 8, !dbg !2624
  br label %do.body, !dbg !2624

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2625

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %__mptr, align 8, !dbg !2624
  %add.ptr = getelementptr i8, i8* %10, i64 -16, !dbg !2624
  %11 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2624
  store %struct.acpi_device* %11, %struct.acpi_device** %tmp5, align 8, !dbg !2625
  %12 = load %struct.acpi_device*, %struct.acpi_device** %tmp5, align 8, !dbg !2624
  br label %cond.end, !dbg !2621

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2621

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %12, %do.end ], [ null, %cond.false ], !dbg !2621
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp3, align 8, !dbg !2621
  %13 = load %struct.acpi_device*, %struct.acpi_device** %tmp3, align 8, !dbg !2621
  %14 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2627
  %adev = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %14, i32 0, i32 1, !dbg !2628
  store %struct.acpi_device* %13, %struct.acpi_device** %adev, align 8, !dbg !2629
  %15 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2630
  %adev6 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %15, i32 0, i32 1, !dbg !2632
  %16 = load %struct.acpi_device*, %struct.acpi_device** %adev6, align 8, !dbg !2632
  %tobool7 = icmp ne %struct.acpi_device* %16, null, !dbg !2630
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2633

if.then8:                                         ; preds = %cond.end
  store i32 -22, i32* %result, align 4, !dbg !2634
  br label %err, !dbg !2636

if.end9:                                          ; preds = %cond.end
  %17 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2637
  %adev10 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %17, i32 0, i32 1, !dbg !2638
  %18 = load %struct.acpi_device*, %struct.acpi_device** %adev10, align 8, !dbg !2638
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 1, !dbg !2639
  %19 = load i8*, i8** %handle, align 8, !dbg !2639
  %call11 = call i32 @acpi_evaluate_integer(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #6, !dbg !2640
  store i32 %call11, i32* %status, align 4, !dbg !2641
  %20 = load i32, i32* %status, align 4, !dbg !2642
  %tobool12 = icmp ne i32 %20, 0, !dbg !2642
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !2644

if.then13:                                        ; preds = %if.end9
  %21 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2645
  %adev14 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %21, i32 0, i32 1, !dbg !2647
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev14, align 8, !dbg !2647
  %handle15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 1, !dbg !2648
  %23 = load i8*, i8** %handle15, align 8, !dbg !2648
  %24 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2649
  %type = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %24, i32 0, i32 2, !dbg !2650
  %call16 = call i32 @acpi_evaluate_integer(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_object_list* null, i64* %type) #6, !dbg !2651
  store i32 %call16, i32* %status, align 4, !dbg !2652
  %25 = load i32, i32* %status, align 4, !dbg !2653
  %tobool17 = icmp ne i32 %25, 0, !dbg !2653
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2655

if.then18:                                        ; preds = %if.then13
  store i32 -22, i32* %result, align 4, !dbg !2656
  br label %err, !dbg !2658

if.end19:                                         ; preds = %if.then13
  br label %if.end21, !dbg !2659

if.else:                                          ; preds = %if.end9
  %26 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2660
  %type20 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %26, i32 0, i32 2, !dbg !2662
  store i64 3, i64* %type20, align 8, !dbg !2663
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end19
  %27 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2664
  %28 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2665
  %29 = bitcast %struct.int3403_priv* %28 to i8*, !dbg !2665
  call void @platform_set_drvdata(%struct.platform_device* %27, i8* %29) #6, !dbg !2666
  %30 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2667
  %type22 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %30, i32 0, i32 2, !dbg !2668
  %31 = load i64, i64* %type22, align 8, !dbg !2668
  switch i64 %31, label %sw.default [
    i64 3, label %sw.bb
    i64 11, label %sw.bb24
    i64 12, label %sw.bb24
  ], !dbg !2669

sw.bb:                                            ; preds = %if.end21
  %32 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2670
  %call23 = call i32 @int3403_sensor_add(%struct.int3403_priv* %32) #6, !dbg !2672
  store i32 %call23, i32* %result, align 4, !dbg !2673
  br label %sw.epilog, !dbg !2674

sw.bb24:                                          ; preds = %if.end21, %if.end21
  %33 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2675
  %call25 = call i32 @int3403_cdev_add(%struct.int3403_priv* %33) #6, !dbg !2676
  store i32 %call25, i32* %result, align 4, !dbg !2677
  br label %sw.epilog, !dbg !2678

sw.default:                                       ; preds = %if.end21
  store i32 -22, i32* %result, align 4, !dbg !2679
  br label %sw.epilog, !dbg !2680

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %sw.bb
  %34 = load i32, i32* %result, align 4, !dbg !2681
  %tobool26 = icmp ne i32 %34, 0, !dbg !2681
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !2683

if.then27:                                        ; preds = %sw.epilog
  br label %err, !dbg !2684

if.end28:                                         ; preds = %sw.epilog
  %35 = load i32, i32* %result, align 4, !dbg !2685
  store i32 %35, i32* %retval, align 4, !dbg !2686
  br label %return, !dbg !2686

err:                                              ; preds = %if.then27, %if.then18, %if.then8
  call void @llvm.dbg.label(metadata !2687), !dbg !2688
  %36 = load i32, i32* %result, align 4, !dbg !2689
  store i32 %36, i32* %retval, align 4, !dbg !2690
  br label %return, !dbg !2690

return:                                           ; preds = %err, %if.end28, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !2691
  ret i32 %37, !dbg !2691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_remove(%struct.platform_device* %pdev) #2 !dbg !2692 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %priv = alloca %struct.int3403_priv*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv, metadata !2695, metadata !DIExpression()), !dbg !2696
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2697
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #6, !dbg !2698
  %1 = bitcast i8* %call to %struct.int3403_priv*, !dbg !2698
  store %struct.int3403_priv* %1, %struct.int3403_priv** %priv, align 8, !dbg !2696
  %2 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2699
  %type = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %2, i32 0, i32 2, !dbg !2700
  %3 = load i64, i64* %type, align 8, !dbg !2700
  switch i64 %3, label %sw.default [
    i64 3, label %sw.bb
    i64 11, label %sw.bb2
    i64 12, label %sw.bb2
  ], !dbg !2701

sw.bb:                                            ; preds = %entry
  %4 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2702
  %call1 = call i32 @int3403_sensor_remove(%struct.int3403_priv* %4) #6, !dbg !2704
  br label %sw.epilog, !dbg !2705

sw.bb2:                                           ; preds = %entry, %entry
  %5 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !2706
  %call3 = call i32 @int3403_cdev_remove(%struct.int3403_priv* %5) #6, !dbg !2707
  br label %sw.epilog, !dbg !2708

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2709

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  ret i32 0, !dbg !2710
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2711 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2714, metadata !DIExpression()), !dbg !2715
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2716, metadata !DIExpression()), !dbg !2717
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2718, metadata !DIExpression()), !dbg !2719
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2720
  %1 = load i64, i64* %size.addr, align 8, !dbg !2721
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2722
  %or = or i32 %2, 256, !dbg !2723
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !2724
  ret i8* %call, !dbg !2725
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2726 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2729, metadata !DIExpression()), !dbg !2730
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2731, metadata !DIExpression()), !dbg !2732
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2733
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2734
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2735
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !2736
  ret void, !dbg !2737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_sensor_add(%struct.int3403_priv* %priv) #2 !dbg !2738 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.int3403_priv*, align 8
  %result = alloca i32, align 4
  %obj = alloca %struct.int3403_sensor*, align 8
  store %struct.int3403_priv* %priv, %struct.int3403_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv.addr, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2743, metadata !DIExpression()), !dbg !2744
  store i32 0, i32* %result, align 4, !dbg !2744
  call void @llvm.dbg.declare(metadata %struct.int3403_sensor** %obj, metadata !2745, metadata !DIExpression()), !dbg !2917
  %0 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !2918
  %pdev = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %0, i32 0, i32 0, !dbg !2919
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2919
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %1, i32 0, i32 3, !dbg !2920
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 8, i32 3264) #6, !dbg !2921
  %2 = bitcast i8* %call to %struct.int3403_sensor*, !dbg !2921
  store %struct.int3403_sensor* %2, %struct.int3403_sensor** %obj, align 8, !dbg !2922
  %3 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !2923
  %tobool = icmp ne %struct.int3403_sensor* %3, null, !dbg !2923
  br i1 %tobool, label %if.end, label %if.then, !dbg !2925

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2926
  br label %return, !dbg !2926

if.end:                                           ; preds = %entry
  %4 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !2927
  %5 = bitcast %struct.int3403_sensor* %4 to i8*, !dbg !2927
  %6 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !2928
  %priv1 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %6, i32 0, i32 3, !dbg !2929
  store i8* %5, i8** %priv1, align 8, !dbg !2930
  %7 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !2931
  %adev = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %7, i32 0, i32 1, !dbg !2932
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !2932
  %call2 = call %struct.int34x_thermal_zone* @int340x_thermal_zone_add(%struct.acpi_device* %8, %struct.thermal_zone_device_ops* null) #6, !dbg !2933
  %9 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !2934
  %int340x_zone = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %9, i32 0, i32 0, !dbg !2935
  store %struct.int34x_thermal_zone* %call2, %struct.int34x_thermal_zone** %int340x_zone, align 8, !dbg !2936
  %10 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !2937
  %int340x_zone3 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %10, i32 0, i32 0, !dbg !2939
  %11 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone3, align 8, !dbg !2939
  %12 = bitcast %struct.int34x_thermal_zone* %11 to i8*, !dbg !2937
  %call4 = call zeroext i1 @IS_ERR(i8* %12) #6, !dbg !2940
  br i1 %call4, label %if.then5, label %if.end8, !dbg !2941

if.then5:                                         ; preds = %if.end
  %13 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !2942
  %int340x_zone6 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %13, i32 0, i32 0, !dbg !2943
  %14 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone6, align 8, !dbg !2943
  %15 = bitcast %struct.int34x_thermal_zone* %14 to i8*, !dbg !2942
  %call7 = call i64 @PTR_ERR(i8* %15) #6, !dbg !2944
  %conv = trunc i64 %call7 to i32, !dbg !2944
  store i32 %conv, i32* %retval, align 4, !dbg !2945
  br label %return, !dbg !2945

if.end8:                                          ; preds = %if.end
  %16 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !2946
  %adev9 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %16, i32 0, i32 1, !dbg !2947
  %17 = load %struct.acpi_device*, %struct.acpi_device** %adev9, align 8, !dbg !2947
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 1, !dbg !2948
  %18 = load i8*, i8** %handle, align 8, !dbg !2948
  %19 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !2949
  %20 = bitcast %struct.int3403_priv* %19 to i8*, !dbg !2950
  %call10 = call i32 @acpi_install_notify_handler(i8* %18, i32 2, void (i8*, i32, i8*)* @int3403_notify, i8* %20) #6, !dbg !2951
  store i32 %call10, i32* %result, align 4, !dbg !2952
  %21 = load i32, i32* %result, align 4, !dbg !2953
  %tobool11 = icmp ne i32 %21, 0, !dbg !2953
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2955

if.then12:                                        ; preds = %if.end8
  br label %err_free_obj, !dbg !2956

if.end13:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4, !dbg !2957
  br label %return, !dbg !2957

err_free_obj:                                     ; preds = %if.then12
  call void @llvm.dbg.label(metadata !2958), !dbg !2959
  %22 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !2960
  %int340x_zone14 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %22, i32 0, i32 0, !dbg !2961
  %23 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone14, align 8, !dbg !2961
  call void @int340x_thermal_zone_remove(%struct.int34x_thermal_zone* %23) #6, !dbg !2962
  %24 = load i32, i32* %result, align 4, !dbg !2963
  store i32 %24, i32* %retval, align 4, !dbg !2964
  br label %return, !dbg !2964

return:                                           ; preds = %err_free_obj, %if.end13, %if.then5, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !2965
  ret i32 %25, !dbg !2965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_cdev_add(%struct.int3403_priv* %priv) #2 !dbg !2966 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.int3403_priv*, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %obj = alloca %struct.int3403_cdev*, align 8
  %buf = alloca %struct.acpi_buffer, align 8
  %p = alloca %union.acpi_object*, align 8
  store %struct.int3403_priv* %priv, %struct.int3403_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i32 0, i32* %result, align 4, !dbg !2970
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.declare(metadata %struct.int3403_cdev** %obj, metadata !2973, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buf, metadata !2980, metadata !DIExpression()), !dbg !2986
  %0 = bitcast %struct.acpi_buffer* %buf to i8*, !dbg !2986
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.int3403_cdev_add.buf to i8*), i64 16, i1 false), !dbg !2986
  call void @llvm.dbg.declare(metadata %union.acpi_object** %p, metadata !2987, metadata !DIExpression()), !dbg !2988
  %1 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !2989
  %pdev = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %1, i32 0, i32 0, !dbg !2990
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2990
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !2991
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 16, i32 3264) #6, !dbg !2992
  %3 = bitcast i8* %call to %struct.int3403_cdev*, !dbg !2992
  store %struct.int3403_cdev* %3, %struct.int3403_cdev** %obj, align 8, !dbg !2993
  %4 = load %struct.int3403_cdev*, %struct.int3403_cdev** %obj, align 8, !dbg !2994
  %tobool = icmp ne %struct.int3403_cdev* %4, null, !dbg !2994
  br i1 %tobool, label %if.end, label %if.then, !dbg !2996

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2997
  br label %return, !dbg !2997

if.end:                                           ; preds = %entry
  %5 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !2998
  %adev = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %5, i32 0, i32 1, !dbg !2999
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !2999
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1, !dbg !3000
  %7 = load i8*, i8** %handle, align 8, !dbg !3000
  %call1 = call i32 @acpi_evaluate_object(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buf) #6, !dbg !3001
  store i32 %call1, i32* %status, align 4, !dbg !3002
  %8 = load i32, i32* %status, align 4, !dbg !3003
  %tobool2 = icmp ne i32 %8, 0, !dbg !3003
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3005

if.then3:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3006
  br label %return, !dbg !3006

if.end4:                                          ; preds = %if.end
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !3007
  %9 = load i8*, i8** %pointer, align 8, !dbg !3007
  %10 = bitcast i8* %9 to %union.acpi_object*, !dbg !3008
  store %union.acpi_object* %10, %union.acpi_object** %p, align 8, !dbg !3009
  %11 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !3010
  %tobool5 = icmp ne %union.acpi_object* %11, null, !dbg !3010
  br i1 %tobool5, label %lor.lhs.false, label %if.then6, !dbg !3012

lor.lhs.false:                                    ; preds = %if.end4
  %12 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !3013
  %type = bitcast %union.acpi_object* %12 to i32*, !dbg !3014
  %13 = load i32, i32* %type, align 8, !dbg !3014
  %cmp = icmp ne i32 %13, 4, !dbg !3015
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !3016

if.then6:                                         ; preds = %lor.lhs.false, %if.end4
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !3017
  %pointer8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !3019
  %14 = load i8*, i8** %pointer8, align 8, !dbg !3019
  call void @kfree(i8* %14) #6, !dbg !3020
  store i32 -14, i32* %retval, align 4, !dbg !3021
  br label %return, !dbg !3021

if.end9:                                          ; preds = %lor.lhs.false
  %15 = load %struct.int3403_cdev*, %struct.int3403_cdev** %obj, align 8, !dbg !3022
  %16 = bitcast %struct.int3403_cdev* %15 to i8*, !dbg !3022
  %17 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !3023
  %priv10 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %17, i32 0, i32 3, !dbg !3024
  store i8* %16, i8** %priv10, align 8, !dbg !3025
  %18 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !3026
  %package = bitcast %union.acpi_object* %18 to %struct.anon.41*, !dbg !3027
  %count = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package, i32 0, i32 1, !dbg !3028
  %19 = load i32, i32* %count, align 4, !dbg !3028
  %sub = sub i32 %19, 1, !dbg !3029
  %conv = zext i32 %sub to i64, !dbg !3026
  %20 = load %struct.int3403_cdev*, %struct.int3403_cdev** %obj, align 8, !dbg !3030
  %max_state = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %20, i32 0, i32 1, !dbg !3031
  store i64 %conv, i64* %max_state, align 8, !dbg !3032
  %21 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !3033
  %adev11 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %21, i32 0, i32 1, !dbg !3033
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev11, align 8, !dbg !3033
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 10, !dbg !3033
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !3033
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !3033
  %23 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !3034
  %24 = bitcast %struct.int3403_priv* %23 to i8*, !dbg !3034
  %call12 = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* %arraydecay, i8* %24, %struct.thermal_cooling_device_ops* @int3403_cooling_ops) #6, !dbg !3035
  %25 = load %struct.int3403_cdev*, %struct.int3403_cdev** %obj, align 8, !dbg !3036
  %cdev = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %25, i32 0, i32 0, !dbg !3037
  store %struct.thermal_cooling_device* %call12, %struct.thermal_cooling_device** %cdev, align 8, !dbg !3038
  %26 = load %struct.int3403_cdev*, %struct.int3403_cdev** %obj, align 8, !dbg !3039
  %cdev13 = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %26, i32 0, i32 0, !dbg !3041
  %27 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev13, align 8, !dbg !3041
  %28 = bitcast %struct.thermal_cooling_device* %27 to i8*, !dbg !3039
  %call14 = call zeroext i1 @IS_ERR(i8* %28) #6, !dbg !3042
  br i1 %call14, label %if.then15, label %if.end19, !dbg !3043

if.then15:                                        ; preds = %if.end9
  %29 = load %struct.int3403_cdev*, %struct.int3403_cdev** %obj, align 8, !dbg !3044
  %cdev16 = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %29, i32 0, i32 0, !dbg !3045
  %30 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev16, align 8, !dbg !3045
  %31 = bitcast %struct.thermal_cooling_device* %30 to i8*, !dbg !3044
  %call17 = call i64 @PTR_ERR(i8* %31) #6, !dbg !3046
  %conv18 = trunc i64 %call17 to i32, !dbg !3046
  store i32 %conv18, i32* %result, align 4, !dbg !3047
  br label %if.end19, !dbg !3048

if.end19:                                         ; preds = %if.then15, %if.end9
  %pointer20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !3049
  %32 = load i8*, i8** %pointer20, align 8, !dbg !3049
  call void @kfree(i8* %32) #6, !dbg !3050
  %33 = load i32, i32* %result, align 4, !dbg !3051
  store i32 %33, i32* %retval, align 4, !dbg !3052
  br label %return, !dbg !3052

return:                                           ; preds = %if.end19, %if.then6, %if.then3, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !3053
  ret i32 %34, !dbg !3053
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !3054 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3057, metadata !DIExpression()), !dbg !3058
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3059, metadata !DIExpression()), !dbg !3060
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3061
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3062
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3063
  store i8* %0, i8** %driver_data, align 8, !dbg !3064
  ret void, !dbg !3065
}

; Function Attrs: noredzone
declare dso_local %struct.int34x_thermal_zone* @int340x_thermal_zone_add(%struct.acpi_device*, %struct.thermal_zone_device_ops*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !3066 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3070, metadata !DIExpression()), !dbg !3071
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3072
  %1 = ptrtoint i8* %0 to i64, !dbg !3072
  %2 = inttoptr i64 %1 to i8*, !dbg !3072
  %3 = ptrtoint i8* %2 to i64, !dbg !3072
  %cmp = icmp uge i64 %3, -4095, !dbg !3072
  %lnot = xor i1 %cmp, true, !dbg !3072
  %lnot1 = xor i1 %lnot, true, !dbg !3072
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3072
  %conv = sext i32 %lnot.ext to i64, !dbg !3072
  %tobool = icmp ne i64 %conv, 0, !dbg !3072
  ret i1 %tobool, !dbg !3073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !3074 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3079
  %1 = ptrtoint i8* %0 to i64, !dbg !3080
  ret i64 %1, !dbg !3081
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_notify_handler(i8*, i32, void (i8*, i32, i8*)*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @int3403_notify(i8* %handle, i32 %event, i8* %data) #2 !dbg !3082 {
entry:
  %handle.addr = alloca i8*, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %priv = alloca %struct.int3403_priv*, align 8
  %obj = alloca %struct.int3403_sensor*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3085, metadata !DIExpression()), !dbg !3086
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !3087, metadata !DIExpression()), !dbg !3088
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv, metadata !3091, metadata !DIExpression()), !dbg !3092
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3093
  %1 = bitcast i8* %0 to %struct.int3403_priv*, !dbg !3093
  store %struct.int3403_priv* %1, %struct.int3403_priv** %priv, align 8, !dbg !3092
  call void @llvm.dbg.declare(metadata %struct.int3403_sensor** %obj, metadata !3094, metadata !DIExpression()), !dbg !3095
  %2 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !3096
  %tobool = icmp ne %struct.int3403_priv* %2, null, !dbg !3096
  br i1 %tobool, label %if.end, label %if.then, !dbg !3098

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !3099

if.end:                                           ; preds = %entry
  %3 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !3100
  %priv1 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %3, i32 0, i32 3, !dbg !3101
  %4 = load i8*, i8** %priv1, align 8, !dbg !3101
  %5 = bitcast i8* %4 to %struct.int3403_sensor*, !dbg !3100
  store %struct.int3403_sensor* %5, %struct.int3403_sensor** %obj, align 8, !dbg !3102
  %6 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !3103
  %type = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %6, i32 0, i32 2, !dbg !3105
  %7 = load i64, i64* %type, align 8, !dbg !3105
  %cmp = icmp ne i64 %7, 3, !dbg !3106
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !3107

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !3108
  %tobool2 = icmp ne %struct.int3403_sensor* %8, null, !dbg !3108
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3109

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %sw.epilog, !dbg !3110

if.end4:                                          ; preds = %lor.lhs.false
  %9 = load i32, i32* %event.addr, align 4, !dbg !3111
  switch i32 %9, label %sw.default [
    i32 128, label %sw.bb
    i32 144, label %sw.bb5
    i32 129, label %sw.bb6
  ], !dbg !3112

sw.bb:                                            ; preds = %if.end4
  br label %sw.epilog, !dbg !3113

sw.bb5:                                           ; preds = %if.end4
  %10 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !3115
  %int340x_zone = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %10, i32 0, i32 0, !dbg !3116
  %11 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone, align 8, !dbg !3116
  call void @int340x_thermal_zone_device_update(%struct.int34x_thermal_zone* %11, i32 2) #6, !dbg !3117
  br label %sw.epilog, !dbg !3118

sw.bb6:                                           ; preds = %if.end4
  %12 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !3119
  %int340x_zone7 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %12, i32 0, i32 0, !dbg !3120
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone7, align 8, !dbg !3120
  %call = call i32 @int340x_thermal_read_trips(%struct.int34x_thermal_zone* %13) #6, !dbg !3121
  %14 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !3122
  %int340x_zone8 = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %14, i32 0, i32 0, !dbg !3123
  %15 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone8, align 8, !dbg !3123
  call void @int340x_thermal_zone_device_update(%struct.int34x_thermal_zone* %15, i32 3) #6, !dbg !3124
  br label %sw.epilog, !dbg !3125

sw.default:                                       ; preds = %if.end4
  br label %sw.epilog, !dbg !3126

sw.epilog:                                        ; preds = %if.then, %if.then3, %sw.default, %sw.bb6, %sw.bb5, %sw.bb
  ret void, !dbg !3127
}

; Function Attrs: noredzone
declare dso_local void @int340x_thermal_zone_remove(%struct.int34x_thermal_zone*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @int340x_thermal_zone_device_update(%struct.int34x_thermal_zone* %tzone, i32 %event) #2 !dbg !3128 {
entry:
  %tzone.addr = alloca %struct.int34x_thermal_zone*, align 8
  %event.addr = alloca i32, align 4
  store %struct.int34x_thermal_zone* %tzone, %struct.int34x_thermal_zone** %tzone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %tzone.addr, metadata !3131, metadata !DIExpression()), !dbg !3132
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !3133, metadata !DIExpression()), !dbg !3134
  %0 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %tzone.addr, align 8, !dbg !3135
  %zone = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %0, i32 0, i32 10, !dbg !3136
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !3136
  %2 = load i32, i32* %event.addr, align 4, !dbg !3137
  call void @thermal_zone_device_update(%struct.thermal_zone_device* %1, i32 %2) #6, !dbg !3138
  ret void, !dbg !3139
}

; Function Attrs: noredzone
declare dso_local i32 @int340x_thermal_read_trips(%struct.int34x_thermal_zone*) #1

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, i8*, %struct.thermal_cooling_device_ops*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_get_max_state(%struct.thermal_cooling_device* %cdev, i64* %state) #2 !dbg !3140 {
entry:
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64*, align 8
  %priv = alloca %struct.int3403_priv*, align 8
  %obj = alloca %struct.int3403_cdev*, align 8
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !3141, metadata !DIExpression()), !dbg !3142
  store i64* %state, i64** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %state.addr, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv, metadata !3145, metadata !DIExpression()), !dbg !3146
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !3147
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !3148
  %1 = load i8*, i8** %devdata, align 8, !dbg !3148
  %2 = bitcast i8* %1 to %struct.int3403_priv*, !dbg !3147
  store %struct.int3403_priv* %2, %struct.int3403_priv** %priv, align 8, !dbg !3146
  call void @llvm.dbg.declare(metadata %struct.int3403_cdev** %obj, metadata !3149, metadata !DIExpression()), !dbg !3150
  %3 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !3151
  %priv1 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %3, i32 0, i32 3, !dbg !3152
  %4 = load i8*, i8** %priv1, align 8, !dbg !3152
  %5 = bitcast i8* %4 to %struct.int3403_cdev*, !dbg !3151
  store %struct.int3403_cdev* %5, %struct.int3403_cdev** %obj, align 8, !dbg !3150
  %6 = load %struct.int3403_cdev*, %struct.int3403_cdev** %obj, align 8, !dbg !3153
  %max_state = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %6, i32 0, i32 1, !dbg !3154
  %7 = load i64, i64* %max_state, align 8, !dbg !3154
  %8 = load i64*, i64** %state.addr, align 8, !dbg !3155
  store i64 %7, i64* %8, align 8, !dbg !3156
  ret i32 0, !dbg !3157
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_get_cur_state(%struct.thermal_cooling_device* %cdev, i64* %state) #2 !dbg !3158 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64*, align 8
  %priv = alloca %struct.int3403_priv*, align 8
  %level = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i64* %state, i64** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %state.addr, metadata !3161, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv, metadata !3163, metadata !DIExpression()), !dbg !3164
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !3165
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !3166
  %1 = load i8*, i8** %devdata, align 8, !dbg !3166
  %2 = bitcast i8* %1 to %struct.int3403_priv*, !dbg !3165
  store %struct.int3403_priv* %2, %struct.int3403_priv** %priv, align 8, !dbg !3164
  call void @llvm.dbg.declare(metadata i64* %level, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3169, metadata !DIExpression()), !dbg !3170
  %3 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !3171
  %adev = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %3, i32 0, i32 1, !dbg !3172
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3172
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !3173
  %5 = load i8*, i8** %handle, align 8, !dbg !3173
  %call = call i32 @acpi_evaluate_integer(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* null, i64* %level) #6, !dbg !3174
  store i32 %call, i32* %status, align 4, !dbg !3175
  %6 = load i32, i32* %status, align 4, !dbg !3176
  %tobool = icmp ne i32 %6, 0, !dbg !3176
  br i1 %tobool, label %if.else, label %if.then, !dbg !3178

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %level, align 8, !dbg !3179
  %8 = load i64*, i64** %state.addr, align 8, !dbg !3181
  store i64 %7, i64* %8, align 8, !dbg !3182
  store i32 0, i32* %retval, align 4, !dbg !3183
  br label %return, !dbg !3183

if.else:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3184
  br label %return, !dbg !3184

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3185
  ret i32 %9, !dbg !3185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_set_cur_state(%struct.thermal_cooling_device* %cdev, i64 %state) #2 !dbg !3186 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.thermal_cooling_device*, align 8
  %state.addr = alloca i64, align 8
  %priv = alloca %struct.int3403_priv*, align 8
  %status = alloca i32, align 4
  store %struct.thermal_cooling_device* %cdev, %struct.thermal_cooling_device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_cooling_device** %cdev.addr, metadata !3187, metadata !DIExpression()), !dbg !3188
  store i64 %state, i64* %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %state.addr, metadata !3189, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv, metadata !3191, metadata !DIExpression()), !dbg !3192
  %0 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev.addr, align 8, !dbg !3193
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %0, i32 0, i32 4, !dbg !3194
  %1 = load i8*, i8** %devdata, align 8, !dbg !3194
  %2 = bitcast i8* %1 to %struct.int3403_priv*, !dbg !3193
  store %struct.int3403_priv* %2, %struct.int3403_priv** %priv, align 8, !dbg !3192
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3195, metadata !DIExpression()), !dbg !3196
  %3 = load %struct.int3403_priv*, %struct.int3403_priv** %priv, align 8, !dbg !3197
  %adev = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %3, i32 0, i32 1, !dbg !3198
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3198
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !3199
  %5 = load i8*, i8** %handle, align 8, !dbg !3199
  %6 = load i64, i64* %state.addr, align 8, !dbg !3200
  %call = call i32 @acpi_execute_simple_method(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %6) #6, !dbg !3201
  store i32 %call, i32* %status, align 4, !dbg !3202
  %7 = load i32, i32* %status, align 4, !dbg !3203
  %tobool = icmp ne i32 %7, 0, !dbg !3203
  br i1 %tobool, label %if.else, label %if.then, !dbg !3205

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3206
  br label %return, !dbg !3206

if.else:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3207
  br label %return, !dbg !3207

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3208
  ret i32 %8, !dbg !3208
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_execute_simple_method(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3209 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3214, metadata !DIExpression()), !dbg !3215
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3216
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3217
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !3218
  ret i8* %call, !dbg !3219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_sensor_remove(%struct.int3403_priv* %priv) #2 !dbg !3220 {
entry:
  %priv.addr = alloca %struct.int3403_priv*, align 8
  %obj = alloca %struct.int3403_sensor*, align 8
  store %struct.int3403_priv* %priv, %struct.int3403_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.declare(metadata %struct.int3403_sensor** %obj, metadata !3223, metadata !DIExpression()), !dbg !3224
  %0 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !3225
  %priv1 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %0, i32 0, i32 3, !dbg !3226
  %1 = load i8*, i8** %priv1, align 8, !dbg !3226
  %2 = bitcast i8* %1 to %struct.int3403_sensor*, !dbg !3225
  store %struct.int3403_sensor* %2, %struct.int3403_sensor** %obj, align 8, !dbg !3224
  %3 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !3227
  %adev = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %3, i32 0, i32 1, !dbg !3228
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3228
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1, !dbg !3229
  %5 = load i8*, i8** %handle, align 8, !dbg !3229
  %call = call i32 @acpi_remove_notify_handler(i8* %5, i32 2, void (i8*, i32, i8*)* @int3403_notify) #6, !dbg !3230
  %6 = load %struct.int3403_sensor*, %struct.int3403_sensor** %obj, align 8, !dbg !3231
  %int340x_zone = getelementptr inbounds %struct.int3403_sensor, %struct.int3403_sensor* %6, i32 0, i32 0, !dbg !3232
  %7 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone, align 8, !dbg !3232
  call void @int340x_thermal_zone_remove(%struct.int34x_thermal_zone* %7) #6, !dbg !3233
  ret i32 0, !dbg !3234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3403_cdev_remove(%struct.int3403_priv* %priv) #2 !dbg !3235 {
entry:
  %priv.addr = alloca %struct.int3403_priv*, align 8
  %obj = alloca %struct.int3403_cdev*, align 8
  store %struct.int3403_priv* %priv, %struct.int3403_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int3403_priv** %priv.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.declare(metadata %struct.int3403_cdev** %obj, metadata !3238, metadata !DIExpression()), !dbg !3239
  %0 = load %struct.int3403_priv*, %struct.int3403_priv** %priv.addr, align 8, !dbg !3240
  %priv1 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %0, i32 0, i32 3, !dbg !3241
  %1 = load i8*, i8** %priv1, align 8, !dbg !3241
  %2 = bitcast i8* %1 to %struct.int3403_cdev*, !dbg !3240
  store %struct.int3403_cdev* %2, %struct.int3403_cdev** %obj, align 8, !dbg !3239
  %3 = load %struct.int3403_cdev*, %struct.int3403_cdev** %obj, align 8, !dbg !3242
  %cdev = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %3, i32 0, i32 0, !dbg !3243
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !3243
  call void @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %4) #6, !dbg !3244
  ret i32 0, !dbg !3245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3246 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3249, metadata !DIExpression()), !dbg !3250
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3251
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3252
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3252
  ret i8* %1, !dbg !3253
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_notify_handler(i8*, i32, void (i8*, i32, i8*)*) #1

; Function Attrs: noredzone
declare dso_local void @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2577, !2578, !2579, !2580}
!llvm.ident = !{!2581}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_int3403_driver_init170", scope: !2, file: !3, line: 300, type: !100, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !94, globals: !2446, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/int3403_thermal.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69, !75, !83}
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
!94 = !{!95, !98, !100, !101, !260, !245}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !97, line: 76, flags: DIFlagFwdDecl)
!97 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !99, line: 148, baseType: !7)
!99 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !103, line: 351, size: 10880, elements: !104)
!103 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !107, !110, !2173, !2174, !2175, !2176, !2177, !2178, !2187, !2204, !2278, !2307, !2331, !2352, !2358, !2367, !2399, !2413, !2435, !2439, !2440, !2441, !2442, !2443, !2444, !2445}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !102, file: !103, line: 352, baseType: !106, size: 32)
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !102, file: !103, line: 353, baseType: !108, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !109, line: 424, baseType: !100)
!109 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !102, file: !103, line: 354, baseType: !111, size: 192, offset: 128)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !112, line: 17, size: 192, elements: !113)
!112 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !116, !2172}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !111, file: !112, line: 18, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !111, file: !112, line: 19, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !112, line: 110, size: 1152, elements: !120)
!120 = !{!121, !125, !129, !137, !2114, !2118, !2122, !2127, !2131, !2132, !2136, !2140, !2144, !2155, !2156, !2157, !2158, !2168}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !119, file: !112, line: 111, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!115, !115}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !119, file: !112, line: 112, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !115}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !119, file: !112, line: 113, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !99, line: 30, baseType: !134)
!134 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !119, file: !112, line: 114, baseType: !138, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !135, !143}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !146)
!146 = !{!147, !1650, !1652, !1655, !1656, !1707, !1801, !1802, !1803, !1804, !1805, !1814, !1919, !1932, !2039, !2040, !2044, !2046, !2047, !2048, !2052, !2058, !2059, !2062, !2063, !2064, !2067, !2068, !2069, !2070, !2102, !2103, !2104, !2107, !2110, !2111, !2112, !2113}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !145, file: !30, line: 462, baseType: !148, size: 512)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !149, line: 64, size: 512, elements: !150)
!149 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !155, !161, !163, !223, !1487, !1640, !1645, !1646, !1647, !1648, !1649}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !149, line: 65, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !148, file: !149, line: 66, baseType: !156, size: 128, offset: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !99, line: 178, size: 128, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !99, line: 179, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !156, file: !99, line: 179, baseType: !159, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !148, file: !149, line: 67, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !148, file: !149, line: 68, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !149, line: 192, size: 704, elements: !166)
!166 = !{!167, !168, !184, !185}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !149, line: 193, baseType: !156, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !165, file: !149, line: 194, baseType: !169, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !170, line: 83, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !170, line: 71, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 72, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 72, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !174, file: !170, line: 73, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !170, line: 20, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !170, line: 21, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !181, line: 25, baseType: !182)
!181 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 25, elements: !183)
!183 = !{}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !149, line: 195, baseType: !148, size: 512, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !165, file: !149, line: 196, baseType: !186, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !149, line: 156, size: 192, elements: !189)
!189 = !{!190, !195, !200}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !188, file: !149, line: 157, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!106, !164, !162}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !149, line: 158, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!152, !164, !162}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !188, file: !149, line: 159, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!106, !164, !162, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !149, line: 148, size: 20736, elements: !207)
!207 = !{!208, !213, !217, !218, !222}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !206, file: !149, line: 149, baseType: !209, size: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 192, elements: !211)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!211 = !{!212}
!212 = !DISubrange(count: 3)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !206, file: !149, line: 150, baseType: !214, size: 4096, offset: 192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 4096, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !206, file: !149, line: 151, baseType: !106, size: 32, offset: 4288)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !206, file: !149, line: 152, baseType: !219, size: 16384, offset: 4320)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 16384, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 2048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !206, file: !149, line: 153, baseType: !106, size: 32, offset: 20704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !148, file: !149, line: 69, baseType: !224, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !149, line: 138, size: 448, elements: !226)
!226 = !{!227, !231, !261, !263, !1435, !1466, !1470}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !149, line: 139, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !162}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !225, file: !149, line: 140, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !235, line: 230, size: 128, elements: !236)
!235 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!236 = !{!237, !253}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !234, file: !235, line: 231, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !162, !246, !210}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !99, line: 60, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !243, line: 73, baseType: !244)
!243 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !243, line: 15, baseType: !245)
!245 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !235, line: 30, size: 128, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !235, line: 31, baseType: !152, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !247, file: !235, line: 32, baseType: !251, size: 16, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !99, line: 19, baseType: !252)
!252 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !234, file: !235, line: 232, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!241, !162, !246, !152, !257}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 55, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !243, line: 72, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !243, line: 16, baseType: !260)
!260 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !225, file: !149, line: 141, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !225, file: !149, line: 142, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !235, line: 84, size: 320, elements: !268)
!268 = !{!269, !270, !274, !1432, !1433}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !235, line: 85, baseType: !152, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !267, file: !235, line: 86, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!251, !162, !246, !106}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !267, file: !235, line: 88, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!251, !162, !278, !106}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !235, line: 168, size: 448, elements: !280)
!280 = !{!281, !282, !283, !284, !294, !295}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !279, file: !235, line: 169, baseType: !247, size: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !279, file: !235, line: 170, baseType: !257, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !279, file: !235, line: 171, baseType: !100, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !279, file: !235, line: 172, baseType: !285, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!241, !288, !162, !278, !210, !291, !257}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !290, line: 526, flags: DIFlagFwdDecl)
!290 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !99, line: 46, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !243, line: 88, baseType: !293)
!293 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !279, file: !235, line: 174, baseType: !285, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !279, file: !235, line: 176, baseType: !296, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!106, !288, !162, !278, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !301, line: 305, size: 1472, elements: !302)
!301 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !304, !305, !306, !307, !315, !316, !1406, !1412, !1413, !1418, !1419, !1422, !1426, !1427, !1428, !1429, !1430}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !300, file: !301, line: 308, baseType: !260, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !300, file: !301, line: 309, baseType: !260, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !300, file: !301, line: 313, baseType: !299, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !300, file: !301, line: 313, baseType: !299, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !300, file: !301, line: 315, baseType: !308, size: 192, align: 64, offset: 256)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !309, line: 24, size: 192, align: 64, elements: !310)
!309 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!310 = !{!311, !312, !314}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !308, file: !309, line: 25, baseType: !260, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !308, file: !309, line: 26, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !308, file: !309, line: 27, baseType: !313, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !300, file: !301, line: 323, baseType: !260, size: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !300, file: !301, line: 327, baseType: !317, size: 64, offset: 512)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !301, line: 388, size: 7296, elements: !319)
!319 = !{!320, !1402}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !301, line: 389, baseType: !321, size: 7296)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !301, line: 389, size: 7296, elements: !322)
!322 = !{!323, !324, !328, !334, !338, !339, !340, !341, !342, !350, !355, !356, !357, !358, !367, !368, !369, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !404, !412, !415, !463, !464, !1372, !1373, !1376, !1380, !1381, !1384, !1385, !1386, !1389, !1401}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !321, file: !301, line: 390, baseType: !299, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !321, file: !301, line: 391, baseType: !325, size: 64, offset: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !309, line: 31, size: 64, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !325, file: !309, line: 32, baseType: !313, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !321, file: !301, line: 392, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !330, line: 23, baseType: !331)
!330 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !332, line: 31, baseType: !333)
!332 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !321, file: !301, line: 394, baseType: !335, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!260, !288, !260, !260, !260, !260}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !321, file: !301, line: 398, baseType: !260, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !321, file: !301, line: 399, baseType: !260, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !321, file: !301, line: 405, baseType: !260, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !321, file: !301, line: 406, baseType: !260, size: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !321, file: !301, line: 407, baseType: !343, size: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !290, line: 286, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 286, size: 64, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !345, file: !290, line: 286, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !349, line: 18, baseType: !260)
!349 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!350 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !321, file: !301, line: 416, baseType: !351, size: 32, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !99, line: 168, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 166, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !352, file: !99, line: 167, baseType: !106, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !321, file: !301, line: 428, baseType: !351, size: 32, offset: 608)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !321, file: !301, line: 437, baseType: !351, size: 32, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !321, file: !301, line: 447, baseType: !351, size: 32, offset: 672)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !321, file: !301, line: 450, baseType: !359, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !360, line: 13, baseType: !361)
!360 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !99, line: 175, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 173, size: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !362, file: !99, line: 174, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !330, line: 22, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !332, line: 30, baseType: !293)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !321, file: !301, line: 452, baseType: !106, size: 32, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !321, file: !301, line: 454, baseType: !169, offset: 800)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !321, file: !301, line: 457, baseType: !370, size: 256, offset: 832)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !371, line: 35, size: 256, elements: !372)
!371 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !374, !375, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !370, file: !371, line: 36, baseType: !359, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !370, file: !371, line: 42, baseType: !359, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !370, file: !371, line: 46, baseType: !376, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !170, line: 29, baseType: !177)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !370, file: !371, line: 47, baseType: !156, size: 128, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !321, file: !301, line: 459, baseType: !156, size: 128, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !321, file: !301, line: 466, baseType: !260, size: 64, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !321, file: !301, line: 467, baseType: !260, size: 64, offset: 1280)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !321, file: !301, line: 469, baseType: !260, size: 64, offset: 1344)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !321, file: !301, line: 470, baseType: !260, size: 64, offset: 1408)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !321, file: !301, line: 471, baseType: !361, size: 64, offset: 1472)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !321, file: !301, line: 472, baseType: !260, size: 64, offset: 1536)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !321, file: !301, line: 473, baseType: !260, size: 64, offset: 1600)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !321, file: !301, line: 474, baseType: !260, size: 64, offset: 1664)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !321, file: !301, line: 475, baseType: !260, size: 64, offset: 1728)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !321, file: !301, line: 477, baseType: !169, offset: 1792)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !321, file: !301, line: 478, baseType: !260, size: 64, offset: 1792)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !321, file: !301, line: 478, baseType: !260, size: 64, offset: 1856)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !321, file: !301, line: 478, baseType: !260, size: 64, offset: 1920)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !321, file: !301, line: 478, baseType: !260, size: 64, offset: 1984)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !321, file: !301, line: 479, baseType: !260, size: 64, offset: 2048)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !321, file: !301, line: 479, baseType: !260, size: 64, offset: 2112)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !321, file: !301, line: 479, baseType: !260, size: 64, offset: 2176)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !321, file: !301, line: 480, baseType: !260, size: 64, offset: 2240)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !321, file: !301, line: 480, baseType: !260, size: 64, offset: 2304)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !321, file: !301, line: 480, baseType: !260, size: 64, offset: 2368)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !321, file: !301, line: 480, baseType: !260, size: 64, offset: 2432)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !321, file: !301, line: 482, baseType: !401, size: 2816, offset: 2496)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2816, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 44)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !321, file: !301, line: 488, baseType: !405, size: 256, offset: 5312)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !406, line: 60, size: 256, elements: !407)
!406 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !405, file: !406, line: 61, baseType: !409, size: 256)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 4)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !321, file: !301, line: 490, baseType: !413, size: 64, offset: 5568)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !301, line: 490, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !321, file: !301, line: 493, baseType: !416, size: 896, offset: 5632)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !417, line: 53, baseType: !418)
!417 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !417, line: 13, size: 896, elements: !419)
!419 = !{!420, !421, !422, !423, !426, !427, !434, !435, !455, !456, !459}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !418, file: !417, line: 18, baseType: !329, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !418, file: !417, line: 28, baseType: !361, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !418, file: !417, line: 31, baseType: !370, size: 256, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !418, file: !417, line: 32, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !417, line: 32, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !418, file: !417, line: 37, baseType: !252, size: 16, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !418, file: !417, line: 40, baseType: !428, size: 192, offset: 512)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !429, line: 53, size: 192, elements: !430)
!429 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!430 = !{!431, !432, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !428, file: !429, line: 54, baseType: !359, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !428, file: !429, line: 55, baseType: !169, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !428, file: !429, line: 59, baseType: !156, size: 128, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !418, file: !417, line: 41, baseType: !100, size: 64, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !418, file: !417, line: 42, baseType: !436, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !439, line: 13, size: 896, elements: !440)
!439 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !438, file: !439, line: 14, baseType: !100, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !438, file: !439, line: 15, baseType: !260, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !438, file: !439, line: 17, baseType: !260, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !438, file: !439, line: 17, baseType: !260, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !438, file: !439, line: 19, baseType: !245, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !438, file: !439, line: 21, baseType: !245, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !438, file: !439, line: 22, baseType: !245, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !438, file: !439, line: 23, baseType: !245, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !438, file: !439, line: 24, baseType: !245, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !438, file: !439, line: 25, baseType: !245, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !438, file: !439, line: 26, baseType: !245, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !438, file: !439, line: 27, baseType: !245, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !438, file: !439, line: 28, baseType: !245, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !438, file: !439, line: 29, baseType: !245, size: 64, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !418, file: !417, line: 44, baseType: !351, size: 32, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !418, file: !417, line: 50, baseType: !457, size: 16, offset: 864)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !330, line: 19, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !332, line: 24, baseType: !252)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !418, file: !417, line: 51, baseType: !460, size: 16, offset: 880)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !330, line: 18, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !332, line: 23, baseType: !462)
!462 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !301, line: 495, baseType: !260, size: 64, offset: 6528)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !321, file: !301, line: 497, baseType: !465, size: 64, offset: 6592)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !301, line: 381, size: 384, elements: !467)
!467 = !{!468, !469, !1371}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !466, file: !301, line: 382, baseType: !351, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !466, file: !301, line: 383, baseType: !470, size: 128, offset: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !301, line: 376, size: 128, elements: !471)
!471 = !{!472, !1369}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !470, file: !301, line: 377, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !475, line: 640, size: 48640, elements: !476)
!475 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !485, !487, !488, !494, !495, !496, !497, !498, !499, !500, !501, !505, !523, !534, !629, !630, !631, !642, !643, !645, !646, !647, !648, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !727, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !783, !785, !786, !787, !799, !801, !802, !803, !804, !805, !811, !812, !813, !814, !815, !816, !817, !829, !834, !839, !840, !841, !844, !848, !851, !854, !857, !860, !864, !867, !870, !876, !877, !878, !884, !885, !886, !887, !888, !897, !898, !899, !900, !901, !906, !907, !908, !911, !912, !915, !918, !921, !924, !927, !930, !931, !1011, !1014, !1017, !1018, !1021, !1022, !1023, !1029, !1030, !1031, !1044, !1045, !1046, !1056, !1061, !1064, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !474, file: !475, line: 646, baseType: !478, size: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !479, line: 56, size: 128, elements: !480)
!479 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !479, line: 57, baseType: !260, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !478, file: !479, line: 58, baseType: !483, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !330, line: 21, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !332, line: 27, baseType: !7)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !474, file: !475, line: 649, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !245)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !474, file: !475, line: 657, baseType: !100, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !474, file: !475, line: 658, baseType: !489, size: 32, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !490, line: 113, baseType: !491)
!490 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !490, line: 111, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !491, file: !490, line: 112, baseType: !351, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !475, line: 660, baseType: !7, size: 32, offset: 288)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !474, file: !475, line: 661, baseType: !7, size: 32, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !474, file: !475, line: 684, baseType: !106, size: 32, offset: 352)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !474, file: !475, line: 686, baseType: !106, size: 32, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !474, file: !475, line: 687, baseType: !106, size: 32, offset: 416)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !474, file: !475, line: 688, baseType: !106, size: 32, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !474, file: !475, line: 689, baseType: !7, size: 32, offset: 480)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !474, file: !475, line: 691, baseType: !502, size: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !475, line: 691, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !474, file: !475, line: 692, baseType: !506, size: 832, offset: 576)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !475, line: 451, size: 832, elements: !507)
!507 = !{!508, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !506, file: !475, line: 453, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !475, line: 325, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !509, file: !475, line: 326, baseType: !260, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !509, file: !475, line: 327, baseType: !483, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !506, file: !475, line: 454, baseType: !308, size: 192, align: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !506, file: !475, line: 455, baseType: !156, size: 128, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !506, file: !475, line: 456, baseType: !7, size: 32, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !506, file: !475, line: 458, baseType: !329, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !506, file: !475, line: 459, baseType: !329, size: 64, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !506, file: !475, line: 460, baseType: !329, size: 64, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !506, file: !475, line: 461, baseType: !329, size: 64, offset: 704)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !506, file: !475, line: 463, baseType: !329, size: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !506, file: !475, line: 465, baseType: !522, offset: 832)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !475, line: 415, elements: !183)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !474, file: !475, line: 693, baseType: !524, size: 384, offset: 1408)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !475, line: 489, size: 384, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !524, file: !475, line: 490, baseType: !156, size: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !524, file: !475, line: 491, baseType: !260, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !524, file: !475, line: 492, baseType: !260, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !524, file: !475, line: 493, baseType: !7, size: 32, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !524, file: !475, line: 494, baseType: !252, size: 16, offset: 288)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !524, file: !475, line: 495, baseType: !252, size: 16, offset: 304)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !524, file: !475, line: 497, baseType: !533, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !474, file: !475, line: 697, baseType: !535, size: 1792, offset: 1792)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !475, line: 507, size: 1792, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !626, !627}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !535, file: !475, line: 508, baseType: !308, size: 192, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !535, file: !475, line: 515, baseType: !329, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !535, file: !475, line: 516, baseType: !329, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !535, file: !475, line: 517, baseType: !329, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !535, file: !475, line: 518, baseType: !329, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !535, file: !475, line: 519, baseType: !329, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !535, file: !475, line: 526, baseType: !365, size: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !535, file: !475, line: 527, baseType: !329, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !475, line: 528, baseType: !7, size: 32, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !535, file: !475, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !535, file: !475, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !535, file: !475, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !535, file: !475, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !535, file: !475, line: 563, baseType: !551, size: 512, offset: 704)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !552)
!552 = !{!553, !561, !562, !567, !619, !623, !624, !625}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !551, file: !6, line: 119, baseType: !554, size: 256)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !555, line: 9, size: 256, elements: !556)
!555 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !554, file: !555, line: 10, baseType: !308, size: 192, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !554, file: !555, line: 11, baseType: !559, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !560, line: 29, baseType: !365)
!560 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !551, file: !6, line: 120, baseType: !559, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !551, file: !6, line: 121, baseType: !563, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!5, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !551, file: !6, line: 122, baseType: !568, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !570)
!570 = !{!571, !591, !592, !595, !605, !606, !614, !618}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !569, file: !6, line: 160, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !6, line: 215, baseType: !376)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !573, file: !6, line: 216, baseType: !7, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !573, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !573, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !573, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !573, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !573, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !573, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !573, file: !6, line: 233, baseType: !559, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !573, file: !6, line: 234, baseType: !566, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !573, file: !6, line: 235, baseType: !559, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !573, file: !6, line: 236, baseType: !566, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !573, file: !6, line: 237, baseType: !588, size: 4096, offset: 512)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 4096, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 8)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !569, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !569, file: !6, line: 162, baseType: !593, size: 32, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !99, line: 27, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !243, line: 96, baseType: !106)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !569, file: !6, line: 163, baseType: !596, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !597, line: 276, baseType: !598)
!597 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !597, line: 276, size: 32, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !598, file: !597, line: 276, baseType: !601, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !597, line: 70, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !597, line: 65, size: 32, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !602, file: !597, line: 66, baseType: !7, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !569, file: !6, line: 164, baseType: !566, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !569, file: !6, line: 165, baseType: !607, size: 128, offset: 256)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !555, line: 14, size: 128, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !607, file: !555, line: 15, baseType: !610, size: 128)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !309, line: 125, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !610, file: !309, line: 126, baseType: !325, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !610, file: !309, line: 127, baseType: !313, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !569, file: !6, line: 166, baseType: !615, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!559}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !569, file: !6, line: 167, baseType: !559, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !551, file: !6, line: 123, baseType: !620, size: 8, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !330, line: 17, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !332, line: 21, baseType: !622)
!622 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !551, file: !6, line: 124, baseType: !620, size: 8, offset: 456)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !551, file: !6, line: 125, baseType: !620, size: 8, offset: 464)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !551, file: !6, line: 126, baseType: !620, size: 8, offset: 472)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !535, file: !475, line: 572, baseType: !551, size: 512, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !535, file: !475, line: 580, baseType: !628, size: 64, offset: 1728)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !474, file: !475, line: 721, baseType: !7, size: 32, offset: 3584)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !474, file: !475, line: 722, baseType: !106, size: 32, offset: 3616)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !474, file: !475, line: 723, baseType: !632, size: 64, offset: 3648)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !635, line: 17, baseType: !636)
!635 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !635, line: 17, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !636, file: !635, line: 17, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 1)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !474, file: !475, line: 724, baseType: !634, size: 64, offset: 3712)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !474, file: !475, line: 749, baseType: !644, offset: 3776)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !475, line: 290, elements: !183)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !474, file: !475, line: 751, baseType: !156, size: 128, offset: 3776)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !474, file: !475, line: 757, baseType: !317, size: 64, offset: 3904)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !474, file: !475, line: 758, baseType: !317, size: 64, offset: 3968)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !474, file: !475, line: 761, baseType: !649, size: 320, offset: 4032)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !406, line: 34, size: 320, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !649, file: !406, line: 35, baseType: !329, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !649, file: !406, line: 36, baseType: !653, size: 256, offset: 64)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !410)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !474, file: !475, line: 766, baseType: !106, size: 32, offset: 4352)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !474, file: !475, line: 767, baseType: !106, size: 32, offset: 4384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !474, file: !475, line: 768, baseType: !106, size: 32, offset: 4416)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !474, file: !475, line: 770, baseType: !106, size: 32, offset: 4448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !474, file: !475, line: 772, baseType: !260, size: 64, offset: 4480)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !474, file: !475, line: 775, baseType: !7, size: 32, offset: 4544)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !474, file: !475, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !474, file: !475, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !474, file: !475, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !474, file: !475, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !474, file: !475, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !474, file: !475, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !474, file: !475, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !474, file: !475, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !474, file: !475, line: 831, baseType: !260, size: 64, offset: 4672)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !474, file: !475, line: 833, baseType: !670, size: 384, offset: 4736)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !671)
!671 = !{!672, !677}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !670, file: !12, line: 26, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!245, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !12, line: 27, baseType: !678, size: 320, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !12, line: 27, size: 320, elements: !679)
!679 = !{!680, !690, !717}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !678, file: !12, line: 36, baseType: !681, size: 320)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !12, line: 29, size: 320, elements: !682)
!682 = !{!683, !685, !686, !687, !688, !689}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !681, file: !12, line: 30, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !12, line: 31, baseType: !483, size: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !12, line: 32, baseType: !483, size: 32, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !681, file: !12, line: 33, baseType: !483, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !681, file: !12, line: 34, baseType: !329, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !681, file: !12, line: 35, baseType: !684, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !678, file: !12, line: 46, baseType: !691, size: 192)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !12, line: 38, size: 192, elements: !692)
!692 = !{!693, !694, !695, !716}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !691, file: !12, line: 39, baseType: !593, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !12, line: 41, baseType: !696, size: 64, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !12, line: 41, size: 64, elements: !697)
!697 = !{!698, !706}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !696, file: !12, line: 42, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !701, line: 7, size: 128, elements: !702)
!701 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!702 = !{!703, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !700, file: !701, line: 8, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !243, line: 93, baseType: !293)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !700, file: !701, line: 9, baseType: !293, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !696, file: !12, line: 43, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !709, line: 7, size: 64, elements: !710)
!709 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!710 = !{!711, !715}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !708, file: !709, line: 8, baseType: !712, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !709, line: 5, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !330, line: 20, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !332, line: 26, baseType: !106)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !708, file: !709, line: 9, baseType: !713, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !691, file: !12, line: 45, baseType: !329, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !678, file: !12, line: 54, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !12, line: 48, size: 256, elements: !719)
!719 = !{!720, !723, !724, !725, !726}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !718, file: !12, line: 49, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !718, file: !12, line: 50, baseType: !106, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !718, file: !12, line: 51, baseType: !106, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !718, file: !12, line: 52, baseType: !260, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !718, file: !12, line: 53, baseType: !260, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !474, file: !475, line: 835, baseType: !728, size: 32, offset: 5120)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !99, line: 22, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !243, line: 28, baseType: !106)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !474, file: !475, line: 836, baseType: !728, size: 32, offset: 5152)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !474, file: !475, line: 840, baseType: !260, size: 64, offset: 5184)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !474, file: !475, line: 849, baseType: !473, size: 64, offset: 5248)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !474, file: !475, line: 852, baseType: !473, size: 64, offset: 5312)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !474, file: !475, line: 857, baseType: !156, size: 128, offset: 5376)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !474, file: !475, line: 858, baseType: !156, size: 128, offset: 5504)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !474, file: !475, line: 859, baseType: !473, size: 64, offset: 5632)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !474, file: !475, line: 867, baseType: !156, size: 128, offset: 5696)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !474, file: !475, line: 868, baseType: !156, size: 128, offset: 5824)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !474, file: !475, line: 871, baseType: !740, size: 64, offset: 5952)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !742, line: 59, size: 768, elements: !743)
!742 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !746, !747, !758, !759, !766, !775}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !741, file: !742, line: 61, baseType: !489, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !741, file: !742, line: 62, baseType: !7, size: 32, offset: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !742, line: 63, baseType: !169, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !741, file: !742, line: 65, baseType: !748, size: 256, offset: 64)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 256, elements: !410)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !99, line: 182, size: 64, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !749, file: !99, line: 183, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !99, line: 186, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !99, line: 187, baseType: !752, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !753, file: !99, line: 187, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !741, file: !742, line: 66, baseType: !749, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !741, file: !742, line: 68, baseType: !760, size: 128, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !761, line: 40, baseType: !762)
!761 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !761, line: 36, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !762, file: !761, line: 37, baseType: !169)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !762, file: !761, line: 38, baseType: !156, size: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !741, file: !742, line: 69, baseType: !767, size: 128, align: 64, offset: 512)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !99, line: 216, size: 128, align: 64, elements: !768)
!768 = !{!769, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !99, line: 217, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !767, file: !99, line: 218, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !770}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !741, file: !742, line: 70, baseType: !776, size: 128, offset: 640)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 128, elements: !640)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !742, line: 54, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !777, file: !742, line: 55, baseType: !106, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !777, file: !742, line: 56, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !742, line: 56, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !474, file: !475, line: 872, baseType: !784, size: 512, offset: 6016)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 512, elements: !410)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !474, file: !475, line: 873, baseType: !156, size: 128, offset: 6528)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !474, file: !475, line: 874, baseType: !156, size: 128, offset: 6656)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !474, file: !475, line: 876, baseType: !788, size: 64, offset: 6784)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !790, line: 26, size: 192, elements: !791)
!790 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !789, file: !790, line: 27, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !789, file: !790, line: 28, baseType: !794, size: 128, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !795, line: 43, size: 128, elements: !796)
!795 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !795, line: 44, baseType: !376)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !794, file: !795, line: 45, baseType: !156, size: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !474, file: !475, line: 879, baseType: !800, size: 64, offset: 6848)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !474, file: !475, line: 882, baseType: !800, size: 64, offset: 6912)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !474, file: !475, line: 884, baseType: !329, size: 64, offset: 6976)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !474, file: !475, line: 885, baseType: !329, size: 64, offset: 7040)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !474, file: !475, line: 890, baseType: !329, size: 64, offset: 7104)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !474, file: !475, line: 891, baseType: !806, size: 128, offset: 7168)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !475, line: 242, size: 128, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !806, file: !475, line: 244, baseType: !329, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !806, file: !475, line: 245, baseType: !329, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !806, file: !475, line: 246, baseType: !376, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !474, file: !475, line: 900, baseType: !260, size: 64, offset: 7296)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !474, file: !475, line: 901, baseType: !260, size: 64, offset: 7360)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !474, file: !475, line: 904, baseType: !329, size: 64, offset: 7424)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !474, file: !475, line: 907, baseType: !329, size: 64, offset: 7488)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !474, file: !475, line: 910, baseType: !260, size: 64, offset: 7552)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !474, file: !475, line: 911, baseType: !260, size: 64, offset: 7616)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !474, file: !475, line: 914, baseType: !818, size: 640, offset: 7680)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !819, line: 123, size: 640, elements: !820)
!819 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !827, !828}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !818, file: !819, line: 124, baseType: !822, size: 576)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 576, elements: !211)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !819, line: 108, size: 192, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !823, file: !819, line: 109, baseType: !329, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !823, file: !819, line: 110, baseType: !607, size: 128, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !818, file: !819, line: 125, baseType: !7, size: 32, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !818, file: !819, line: 126, baseType: !7, size: 32, offset: 608)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !474, file: !475, line: 917, baseType: !830, size: 192, offset: 8320)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !819, line: 134, size: 192, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !830, file: !819, line: 135, baseType: !767, size: 128, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !830, file: !819, line: 136, baseType: !7, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !474, file: !475, line: 923, baseType: !835, size: 64, offset: 8512)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !838, line: 11, flags: DIFlagFwdDecl)
!838 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!839 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !474, file: !475, line: 926, baseType: !835, size: 64, offset: 8576)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !474, file: !475, line: 929, baseType: !835, size: 64, offset: 8640)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !474, file: !475, line: 933, baseType: !842, size: 64, offset: 8704)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !475, line: 933, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !474, file: !475, line: 943, baseType: !845, size: 128, offset: 8768)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 16)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !474, file: !475, line: 945, baseType: !849, size: 64, offset: 8896)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !475, line: 49, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !474, file: !475, line: 956, baseType: !852, size: 64, offset: 8960)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !475, line: 45, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !474, file: !475, line: 959, baseType: !855, size: 64, offset: 9024)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !475, line: 959, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !474, file: !475, line: 962, baseType: !858, size: 64, offset: 9088)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !475, line: 66, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !474, file: !475, line: 966, baseType: !861, size: 64, offset: 9152)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !863, line: 35, flags: DIFlagFwdDecl)
!863 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !474, file: !475, line: 969, baseType: !865, size: 64, offset: 9216)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !819, line: 223, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !474, file: !475, line: 970, baseType: !868, size: 64, offset: 9280)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !475, line: 62, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !474, file: !475, line: 971, baseType: !871, size: 64, offset: 9344)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !872, line: 25, baseType: !873)
!872 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !872, line: 23, size: 64, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !873, file: !872, line: 24, baseType: !639, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !474, file: !475, line: 972, baseType: !871, size: 64, offset: 9408)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !474, file: !475, line: 974, baseType: !871, size: 64, offset: 9472)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !474, file: !475, line: 975, baseType: !879, size: 192, offset: 9536)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !880, line: 30, size: 192, elements: !881)
!880 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !879, file: !880, line: 31, baseType: !156, size: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !879, file: !880, line: 32, baseType: !871, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !474, file: !475, line: 976, baseType: !260, size: 64, offset: 9728)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !474, file: !475, line: 977, baseType: !257, size: 64, offset: 9792)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !474, file: !475, line: 978, baseType: !7, size: 32, offset: 9856)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !474, file: !475, line: 980, baseType: !770, size: 64, offset: 9920)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !474, file: !475, line: 989, baseType: !889, size: 128, offset: 9984)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !890, line: 35, size: 128, elements: !891)
!890 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!891 = !{!892, !893, !894}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !889, file: !890, line: 36, baseType: !106, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !889, file: !890, line: 37, baseType: !351, size: 32, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !889, file: !890, line: 38, baseType: !895, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !890, line: 23, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !474, file: !475, line: 992, baseType: !329, size: 64, offset: 10112)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !474, file: !475, line: 993, baseType: !329, size: 64, offset: 10176)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !474, file: !475, line: 996, baseType: !169, offset: 10240)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !474, file: !475, line: 999, baseType: !376, offset: 10240)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !474, file: !475, line: 1001, baseType: !902, size: 64, offset: 10240)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !475, line: 636, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !475, line: 637, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !474, file: !475, line: 1005, baseType: !610, size: 128, offset: 10304)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !474, file: !475, line: 1007, baseType: !473, size: 64, offset: 10432)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !474, file: !475, line: 1009, baseType: !909, size: 64, offset: 10496)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !475, line: 1009, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !474, file: !475, line: 1043, baseType: !100, size: 64, offset: 10560)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !474, file: !475, line: 1046, baseType: !913, size: 64, offset: 10624)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !475, line: 41, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !474, file: !475, line: 1050, baseType: !916, size: 64, offset: 10688)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !475, line: 42, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !474, file: !475, line: 1054, baseType: !919, size: 64, offset: 10752)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !475, line: 55, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !474, file: !475, line: 1056, baseType: !922, size: 64, offset: 10816)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !475, line: 40, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !474, file: !475, line: 1058, baseType: !925, size: 64, offset: 10880)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !475, line: 47, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !474, file: !475, line: 1061, baseType: !928, size: 64, offset: 10944)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !475, line: 43, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !474, file: !475, line: 1064, baseType: !260, size: 64, offset: 11008)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !474, file: !475, line: 1065, baseType: !932, size: 64, offset: 11072)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !880, line: 14, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !880, line: 12, size: 384, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !880, line: 13, baseType: !937, size: 384)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !880, line: 13, size: 384, elements: !938)
!938 = !{!939, !940, !941, !942}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !937, file: !880, line: 13, baseType: !106, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !937, file: !880, line: 13, baseType: !106, size: 32, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !937, file: !880, line: 13, baseType: !106, size: 32, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !937, file: !880, line: 13, baseType: !943, size: 256, offset: 128)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !944, line: 32, size: 256, elements: !945)
!944 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!945 = !{!946, !952, !965, !971, !980, !1000, !1005}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !943, file: !944, line: 37, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !944, line: 34, size: 64, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !947, file: !944, line: 35, baseType: !729, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !947, file: !944, line: 36, baseType: !951, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !243, line: 49, baseType: !7)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !943, file: !944, line: 45, baseType: !953, size: 192)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !944, line: 40, size: 192, elements: !954)
!954 = !{!955, !957, !958, !964}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !953, file: !944, line: 41, baseType: !956, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !243, line: 95, baseType: !106)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !953, file: !944, line: 42, baseType: !106, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !953, file: !944, line: 43, baseType: !959, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !944, line: 11, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !944, line: 8, size: 64, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !960, file: !944, line: 9, baseType: !106, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !960, file: !944, line: 10, baseType: !100, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !953, file: !944, line: 44, baseType: !106, size: 32, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !943, file: !944, line: 52, baseType: !966, size: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !944, line: 48, size: 128, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !966, file: !944, line: 49, baseType: !729, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !966, file: !944, line: 50, baseType: !951, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !966, file: !944, line: 51, baseType: !959, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !943, file: !944, line: 61, baseType: !972, size: 256)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !944, line: 55, size: 256, elements: !973)
!973 = !{!974, !975, !976, !977, !979}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !972, file: !944, line: 56, baseType: !729, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !972, file: !944, line: 57, baseType: !951, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !972, file: !944, line: 58, baseType: !106, size: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !972, file: !944, line: 59, baseType: !978, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !243, line: 94, baseType: !244)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !972, file: !944, line: 60, baseType: !978, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !943, file: !944, line: 95, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !944, line: 64, size: 256, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !981, file: !944, line: 65, baseType: !100, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !944, line: 77, baseType: !985, size: 192, offset: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !944, line: 77, size: 192, elements: !986)
!986 = !{!987, !988, !995}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !985, file: !944, line: 82, baseType: !462, size: 16)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !985, file: !944, line: 88, baseType: !989, size: 192)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !944, line: 84, size: 192, elements: !990)
!990 = !{!991, !993, !994}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !989, file: !944, line: 85, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !589)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !989, file: !944, line: 86, baseType: !100, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !989, file: !944, line: 87, baseType: !100, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !985, file: !944, line: 93, baseType: !996, size: 96)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !944, line: 90, size: 96, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !996, file: !944, line: 91, baseType: !992, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !996, file: !944, line: 92, baseType: !484, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !943, file: !944, line: 101, baseType: !1001, size: 128)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !944, line: 98, size: 128, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1001, file: !944, line: 99, baseType: !245, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1001, file: !944, line: 100, baseType: !106, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !943, file: !944, line: 108, baseType: !1006, size: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !944, line: 104, size: 128, elements: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1006, file: !944, line: 105, baseType: !100, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1006, file: !944, line: 106, baseType: !106, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1006, file: !944, line: 107, baseType: !7, size: 32, offset: 96)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !474, file: !475, line: 1067, baseType: !1012, offset: 11136)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1013, line: 12, elements: !183)
!1013 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !474, file: !475, line: 1099, baseType: !1015, size: 64, offset: 11136)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !475, line: 56, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !474, file: !475, line: 1103, baseType: !156, size: 128, offset: 11200)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !474, file: !475, line: 1104, baseType: !1019, size: 64, offset: 11328)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !475, line: 46, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !474, file: !475, line: 1105, baseType: !428, size: 192, offset: 11392)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !474, file: !475, line: 1106, baseType: !7, size: 32, offset: 11584)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !474, file: !475, line: 1109, baseType: !1024, size: 128, offset: 11648)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 128, elements: !1027)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !475, line: 51, flags: DIFlagFwdDecl)
!1027 = !{!1028}
!1028 = !DISubrange(count: 2)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !474, file: !475, line: 1110, baseType: !428, size: 192, offset: 11776)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !474, file: !475, line: 1111, baseType: !156, size: 128, offset: 11968)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !474, file: !475, line: 1173, baseType: !1032, size: 64, offset: 12096)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1034, line: 62, size: 256, align: 256, elements: !1035)
!1034 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1035 = !{!1036, !1037, !1038, !1043}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1033, file: !1034, line: 75, baseType: !484, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1033, file: !1034, line: 90, baseType: !484, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1033, file: !1034, line: 124, baseType: !1039, size: 64, offset: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !1034, line: 109, size: 64, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1039, file: !1034, line: 110, baseType: !331, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1039, file: !1034, line: 112, baseType: !331, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !1034, line: 144, baseType: !484, size: 32, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !474, file: !475, line: 1174, baseType: !483, size: 32, offset: 12160)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !474, file: !475, line: 1179, baseType: !260, size: 64, offset: 12224)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !474, file: !475, line: 1182, baseType: !1047, size: 128, offset: 12288)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !406, line: 76, size: 128, elements: !1048)
!1048 = !{!1049, !1054, !1055}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1047, file: !406, line: 85, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1051, line: 7, size: 64, elements: !1052)
!1051 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1050, file: !1051, line: 12, baseType: !636, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1047, file: !406, line: 88, baseType: !133, size: 8, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1047, file: !406, line: 95, baseType: !133, size: 8, offset: 72)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !475, line: 1184, baseType: !1057, size: 128, offset: 12416)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !475, line: 1184, size: 128, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1057, file: !475, line: 1185, baseType: !489, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1057, file: !475, line: 1186, baseType: !767, size: 128, align: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !474, file: !475, line: 1190, baseType: !1062, size: 64, offset: 12544)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !475, line: 53, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !474, file: !475, line: 1192, baseType: !1065, size: 128, offset: 12608)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !406, line: 64, size: 128, elements: !1066)
!1066 = !{!1067, !1160, !1161}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1065, file: !406, line: 65, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !301, line: 68, size: 512, align: 128, elements: !1070)
!1070 = !{!1071, !1072, !1152, !1159}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1069, file: !301, line: 69, baseType: !260, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !301, line: 77, baseType: !1073, size: 320, offset: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !301, line: 77, size: 320, elements: !1074)
!1074 = !{!1075, !1084, !1089, !1117, !1125, !1131, !1144, !1151}
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !301, line: 78, baseType: !1076, size: 320)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !301, line: 78, size: 320, elements: !1077)
!1077 = !{!1078, !1079, !1082, !1083}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1076, file: !301, line: 84, baseType: !156, size: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1076, file: !301, line: 86, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !301, line: 26, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1076, file: !301, line: 87, baseType: !260, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1076, file: !301, line: 94, baseType: !260, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !301, line: 96, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !301, line: 96, size: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1085, file: !301, line: 101, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !99, line: 143, baseType: !329)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !301, line: 103, baseType: !1090, size: 320)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !301, line: 103, size: 320, elements: !1091)
!1091 = !{!1092, !1102, !1105, !1106}
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !301, line: 104, baseType: !1093, size: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !301, line: 104, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1093, file: !301, line: 105, baseType: !156, size: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !301, line: 106, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !301, line: 106, size: 128, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !301, line: 107, baseType: !1068, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1097, file: !301, line: 109, baseType: !106, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1097, file: !301, line: 110, baseType: !106, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1090, file: !301, line: 117, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !301, line: 117, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1090, file: !301, line: 119, baseType: !100, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !301, line: 120, baseType: !1107, size: 64, offset: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !301, line: 120, size: 64, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1107, file: !301, line: 121, baseType: !100, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1107, file: !301, line: 122, baseType: !260, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !301, line: 123, baseType: !1112, size: 32)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !301, line: 123, size: 32, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1112, file: !301, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1112, file: !301, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1112, file: !301, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !301, line: 130, baseType: !1118, size: 192)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !301, line: 130, size: 192, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123, !1124}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1118, file: !301, line: 131, baseType: !260, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1118, file: !301, line: 134, baseType: !622, size: 8, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1118, file: !301, line: 135, baseType: !622, size: 8, offset: 72)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1118, file: !301, line: 136, baseType: !351, size: 32, offset: 96)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1118, file: !301, line: 137, baseType: !7, size: 32, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !301, line: 139, baseType: !1126, size: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !301, line: 139, size: 256, elements: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1126, file: !301, line: 140, baseType: !260, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1126, file: !301, line: 141, baseType: !351, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1126, file: !301, line: 143, baseType: !156, size: 128, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !301, line: 145, baseType: !1132, size: 256)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !301, line: 145, size: 256, elements: !1133)
!1133 = !{!1134, !1135, !1137, !1138, !1143}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1132, file: !301, line: 146, baseType: !260, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1132, file: !301, line: 147, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !290, line: 509, baseType: !1068)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1132, file: !301, line: 148, baseType: !260, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1132, file: !301, line: 149, baseType: !1139, size: 64, offset: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1132, file: !301, line: 149, size: 64, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1139, file: !301, line: 150, baseType: !317, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1139, file: !301, line: 151, baseType: !351, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1132, file: !301, line: 156, baseType: !169, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !301, line: 159, baseType: !1145, size: 128)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !301, line: 159, size: 128, elements: !1146)
!1146 = !{!1147, !1150}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1145, file: !301, line: 161, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !301, line: 161, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1145, file: !301, line: 162, baseType: !100, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1073, file: !301, line: 176, baseType: !767, size: 128, align: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !301, line: 179, baseType: !1153, size: 32, offset: 384)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !301, line: 179, size: 32, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1153, file: !301, line: 184, baseType: !351, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1153, file: !301, line: 192, baseType: !7, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1153, file: !301, line: 194, baseType: !7, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1153, file: !301, line: 195, baseType: !106, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1069, file: !301, line: 199, baseType: !351, size: 32, offset: 416)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1065, file: !406, line: 67, baseType: !484, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1065, file: !406, line: 68, baseType: !484, size: 32, offset: 96)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !474, file: !475, line: 1206, baseType: !106, size: 32, offset: 12736)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !474, file: !475, line: 1207, baseType: !106, size: 32, offset: 12768)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !474, file: !475, line: 1209, baseType: !260, size: 64, offset: 12800)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !474, file: !475, line: 1219, baseType: !329, size: 64, offset: 12864)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !474, file: !475, line: 1220, baseType: !329, size: 64, offset: 12928)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !474, file: !475, line: 1317, baseType: !106, size: 32, offset: 12992)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !474, file: !475, line: 1319, baseType: !473, size: 64, offset: 13056)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !474, file: !475, line: 1322, baseType: !1170, size: 64, offset: 13120)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1172, line: 56, size: 512, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1180, !1181, !1183}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !1172, line: 57, baseType: !1170, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1171, file: !1172, line: 58, baseType: !100, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1171, file: !1172, line: 59, baseType: !260, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1171, file: !1172, line: 60, baseType: !260, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1171, file: !1172, line: 61, baseType: !1179, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1171, file: !1172, line: 62, baseType: !7, size: 32, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1171, file: !1172, line: 63, baseType: !1182, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !99, line: 153, baseType: !329)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1171, file: !1172, line: 64, baseType: !141, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !474, file: !475, line: 1326, baseType: !489, size: 32, offset: 13184)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !474, file: !475, line: 1342, baseType: !100, size: 64, offset: 13248)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !474, file: !475, line: 1343, baseType: !331, size: 64, offset: 13312)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !474, file: !475, line: 1344, baseType: !329, size: 64, offset: 13376)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !474, file: !475, line: 1345, baseType: !331, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !474, file: !475, line: 1346, baseType: !331, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !474, file: !475, line: 1347, baseType: !331, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !474, file: !475, line: 1348, baseType: !767, size: 128, align: 64, offset: 13504)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !474, file: !475, line: 1358, baseType: !1193, size: 34816, offset: 13824)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1194, line: 485, size: 34816, elements: !1195)
!1194 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !{!1196, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1225, !1226, !1227, !1228, !1229, !1230, !1233, !1234, !1235}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1193, file: !1194, line: 487, baseType: !1197, size: 192)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 192, elements: !211)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1199, line: 16, size: 64, elements: !1200)
!1199 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1198, file: !1199, line: 17, baseType: !457, size: 16)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1198, file: !1199, line: 18, baseType: !457, size: 16, offset: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1198, file: !1199, line: 19, baseType: !457, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1198, file: !1199, line: 19, baseType: !457, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1198, file: !1199, line: 19, baseType: !457, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1198, file: !1199, line: 19, baseType: !457, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1198, file: !1199, line: 19, baseType: !457, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1198, file: !1199, line: 20, baseType: !457, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1198, file: !1199, line: 20, baseType: !457, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1198, file: !1199, line: 20, baseType: !457, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1198, file: !1199, line: 20, baseType: !457, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1198, file: !1199, line: 20, baseType: !457, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1198, file: !1199, line: 20, baseType: !457, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1193, file: !1194, line: 491, baseType: !260, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1193, file: !1194, line: 495, baseType: !252, size: 16, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1193, file: !1194, line: 496, baseType: !252, size: 16, offset: 272)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1193, file: !1194, line: 497, baseType: !252, size: 16, offset: 288)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1193, file: !1194, line: 498, baseType: !252, size: 16, offset: 304)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1193, file: !1194, line: 502, baseType: !260, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1193, file: !1194, line: 503, baseType: !260, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1193, file: !1194, line: 514, baseType: !1222, size: 256, offset: 448)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1223, size: 256, elements: !410)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1194, line: 483, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1193, file: !1194, line: 516, baseType: !260, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1193, file: !1194, line: 518, baseType: !260, size: 64, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1193, file: !1194, line: 520, baseType: !260, size: 64, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1193, file: !1194, line: 521, baseType: !260, size: 64, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1193, file: !1194, line: 522, baseType: !260, size: 64, offset: 960)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1193, file: !1194, line: 528, baseType: !1231, size: 64, offset: 1024)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1194, line: 10, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1193, file: !1194, line: 535, baseType: !260, size: 64, offset: 1088)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1193, file: !1194, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1193, file: !1194, line: 540, baseType: !1236, size: 33280, offset: 1536)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1237, line: 317, size: 33280, elements: !1238)
!1237 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !{!1239, !1240, !1241}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1236, file: !1237, line: 330, baseType: !7, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1236, file: !1237, line: 337, baseType: !260, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1236, file: !1237, line: 348, baseType: !1242, size: 32768, offset: 512)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1237, line: 304, size: 32768, elements: !1243)
!1243 = !{!1244, !1259, !1298, !1348, !1365}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1242, file: !1237, line: 305, baseType: !1245, size: 896)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1237, line: 12, size: 896, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1258}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1245, file: !1237, line: 13, baseType: !483, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1245, file: !1237, line: 14, baseType: !483, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1245, file: !1237, line: 15, baseType: !483, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1245, file: !1237, line: 16, baseType: !483, size: 32, offset: 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1245, file: !1237, line: 17, baseType: !483, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1245, file: !1237, line: 18, baseType: !483, size: 32, offset: 160)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1245, file: !1237, line: 19, baseType: !483, size: 32, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1245, file: !1237, line: 22, baseType: !1255, size: 640, offset: 224)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 640, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 20)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1245, file: !1237, line: 25, baseType: !483, size: 32, offset: 864)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1242, file: !1237, line: 306, baseType: !1260, size: 4096, align: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1237, line: 34, size: 4096, align: 128, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1281, !1282, !1283, !1287, !1289, !1293}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1260, file: !1237, line: 35, baseType: !457, size: 16)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1260, file: !1237, line: 36, baseType: !457, size: 16, offset: 16)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1260, file: !1237, line: 37, baseType: !457, size: 16, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1260, file: !1237, line: 38, baseType: !457, size: 16, offset: 48)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1237, line: 39, baseType: !1267, size: 128, offset: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1237, line: 39, size: 128, elements: !1268)
!1268 = !{!1269, !1274}
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1237, line: 40, baseType: !1270, size: 128)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1267, file: !1237, line: 40, size: 128, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1270, file: !1237, line: 41, baseType: !329, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1270, file: !1237, line: 42, baseType: !329, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1237, line: 44, baseType: !1275, size: 128)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1267, file: !1237, line: 44, size: 128, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1275, file: !1237, line: 45, baseType: !483, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1275, file: !1237, line: 46, baseType: !483, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1275, file: !1237, line: 47, baseType: !483, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1275, file: !1237, line: 48, baseType: !483, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1260, file: !1237, line: 51, baseType: !483, size: 32, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1260, file: !1237, line: 52, baseType: !483, size: 32, offset: 224)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1260, file: !1237, line: 55, baseType: !1284, size: 1024, offset: 256)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 1024, elements: !1285)
!1285 = !{!1286}
!1286 = !DISubrange(count: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1260, file: !1237, line: 58, baseType: !1288, size: 2048, offset: 1280)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 2048, elements: !215)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1260, file: !1237, line: 60, baseType: !1290, size: 384, offset: 3328)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 384, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 12)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1237, line: 62, baseType: !1294, size: 384, offset: 3712)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1237, line: 62, size: 384, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1294, file: !1237, line: 63, baseType: !1290, size: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1294, file: !1237, line: 64, baseType: !1290, size: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1242, file: !1237, line: 307, baseType: !1299, size: 1088)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1237, line: 79, size: 1088, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1347}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1299, file: !1237, line: 80, baseType: !483, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1299, file: !1237, line: 81, baseType: !483, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1299, file: !1237, line: 82, baseType: !483, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1299, file: !1237, line: 83, baseType: !483, size: 32, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1299, file: !1237, line: 84, baseType: !483, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1299, file: !1237, line: 85, baseType: !483, size: 32, offset: 160)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1299, file: !1237, line: 86, baseType: !483, size: 32, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1299, file: !1237, line: 88, baseType: !1255, size: 640, offset: 224)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1299, file: !1237, line: 89, baseType: !620, size: 8, offset: 864)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1299, file: !1237, line: 90, baseType: !620, size: 8, offset: 872)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1299, file: !1237, line: 91, baseType: !620, size: 8, offset: 880)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1299, file: !1237, line: 92, baseType: !620, size: 8, offset: 888)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1299, file: !1237, line: 93, baseType: !620, size: 8, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1299, file: !1237, line: 94, baseType: !620, size: 8, offset: 904)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1299, file: !1237, line: 95, baseType: !1316, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1318, line: 11, size: 128, elements: !1319)
!1318 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1317, file: !1318, line: 12, baseType: !245, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1317, file: !1318, line: 13, baseType: !1322, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1324, line: 56, size: 1344, elements: !1325)
!1324 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1323, file: !1324, line: 61, baseType: !260, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1323, file: !1324, line: 62, baseType: !260, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1323, file: !1324, line: 63, baseType: !260, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1323, file: !1324, line: 64, baseType: !260, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1323, file: !1324, line: 65, baseType: !260, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1323, file: !1324, line: 66, baseType: !260, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1323, file: !1324, line: 68, baseType: !260, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1323, file: !1324, line: 69, baseType: !260, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1323, file: !1324, line: 70, baseType: !260, size: 64, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1323, file: !1324, line: 71, baseType: !260, size: 64, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1323, file: !1324, line: 72, baseType: !260, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1323, file: !1324, line: 73, baseType: !260, size: 64, offset: 704)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1323, file: !1324, line: 74, baseType: !260, size: 64, offset: 768)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1323, file: !1324, line: 75, baseType: !260, size: 64, offset: 832)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1323, file: !1324, line: 76, baseType: !260, size: 64, offset: 896)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1323, file: !1324, line: 81, baseType: !260, size: 64, offset: 960)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1323, file: !1324, line: 83, baseType: !260, size: 64, offset: 1024)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1323, file: !1324, line: 84, baseType: !260, size: 64, offset: 1088)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1323, file: !1324, line: 85, baseType: !260, size: 64, offset: 1152)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1323, file: !1324, line: 86, baseType: !260, size: 64, offset: 1216)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1323, file: !1324, line: 87, baseType: !260, size: 64, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1299, file: !1237, line: 96, baseType: !483, size: 32, offset: 1024)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1242, file: !1237, line: 308, baseType: !1349, size: 4608, align: 512)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1237, line: 289, size: 4608, align: 512, elements: !1350)
!1350 = !{!1351, !1352, !1361}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1349, file: !1237, line: 290, baseType: !1260, size: 4096, align: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1349, file: !1237, line: 291, baseType: !1353, size: 512, offset: 4096)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1237, line: 268, size: 512, elements: !1354)
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1353, file: !1237, line: 269, baseType: !329, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1353, file: !1237, line: 270, baseType: !329, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1353, file: !1237, line: 271, baseType: !1358, size: 384, offset: 128)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 384, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 6)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1349, file: !1237, line: 292, baseType: !1362, offset: 4608)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, elements: !1363)
!1363 = !{!1364}
!1364 = !DISubrange(count: 0)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1242, file: !1237, line: 309, baseType: !1366, size: 32768)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 32768, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: 4096)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !301, line: 378, baseType: !1370, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !466, file: !301, line: 384, baseType: !789, size: 192, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !321, file: !301, line: 500, baseType: !169, offset: 6656)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !321, file: !301, line: 501, baseType: !1374, size: 64, offset: 6656)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !301, line: 387, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !321, file: !301, line: 516, baseType: !1377, size: 64, offset: 6720)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1379, line: 18, flags: DIFlagFwdDecl)
!1379 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !321, file: !301, line: 519, baseType: !288, size: 64, offset: 6784)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !321, file: !301, line: 521, baseType: !1382, size: 64, offset: 6848)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !301, line: 521, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !321, file: !301, line: 545, baseType: !351, size: 32, offset: 6912)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !321, file: !301, line: 548, baseType: !133, size: 8, offset: 6944)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !321, file: !301, line: 550, baseType: !1387, offset: 6952)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1388, line: 142, elements: !183)
!1388 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !321, file: !301, line: 554, baseType: !1390, size: 256, offset: 6976)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1391, line: 102, size: 256, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1392 = !{!1393, !1394, !1395}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1390, file: !1391, line: 103, baseType: !359, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1390, file: !1391, line: 104, baseType: !156, size: 128, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1390, file: !1391, line: 105, baseType: !1396, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1391, line: 21, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !321, file: !301, line: 557, baseType: !483, size: 32, offset: 7232)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !318, file: !301, line: 565, baseType: !1403, offset: 7296)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !1404)
!1404 = !{!1405}
!1405 = !DISubrange(count: -1)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !300, file: !301, line: 333, baseType: !1407, size: 64, offset: 576)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !290, line: 284, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !290, line: 284, size: 64, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1408, file: !290, line: 284, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !349, line: 19, baseType: !260)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !300, file: !301, line: 334, baseType: !260, size: 64, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !300, file: !301, line: 343, baseType: !1414, size: 256, offset: 704)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !301, line: 340, size: 256, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1414, file: !301, line: 341, baseType: !308, size: 192, align: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1414, file: !301, line: 342, baseType: !260, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !300, file: !301, line: 351, baseType: !156, size: 128, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !300, file: !301, line: 353, baseType: !1420, size: 64, offset: 1088)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !301, line: 353, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !300, file: !301, line: 356, baseType: !1423, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !301, line: 356, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !300, file: !301, line: 359, baseType: !260, size: 64, offset: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !300, file: !301, line: 361, baseType: !288, size: 64, offset: 1280)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !300, file: !301, line: 362, baseType: !100, size: 64, offset: 1344)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !300, file: !301, line: 365, baseType: !359, size: 64, offset: 1408)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !300, file: !301, line: 373, baseType: !1431, offset: 1472)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !301, line: 296, elements: !183)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !267, file: !235, line: 90, baseType: !262, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !267, file: !235, line: 91, baseType: !1434, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !225, file: !149, line: 143, baseType: !1436, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !162}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1442)
!1442 = !{!1443, !1444, !1448, !1452, !1458, !1462}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1441, file: !18, line: 40, baseType: !17, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1441, file: !18, line: 41, baseType: !1445, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!133}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1441, file: !18, line: 42, baseType: !1449, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!100}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1441, file: !18, line: 43, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!141, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1441, file: !18, line: 44, baseType: !1459, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!141}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1441, file: !18, line: 45, baseType: !1463, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !100}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !225, file: !149, line: 144, baseType: !1467, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!141, !162}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !225, file: !149, line: 145, baseType: !1471, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !162, !1474, !1480}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1379, line: 23, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1379, line: 21, size: 32, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1476, file: !1379, line: 22, baseType: !1479, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !99, line: 32, baseType: !951)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1379, line: 28, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1379, line: 26, size: 32, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1482, file: !1379, line: 27, baseType: !1485, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !99, line: 33, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !243, line: 50, baseType: !7)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !148, file: !149, line: 70, baseType: !1488, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1490, line: 123, size: 1024, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1633, !1634, !1635, !1636, !1637}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1489, file: !1490, line: 124, baseType: !351, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1489, file: !1490, line: 125, baseType: !351, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1489, file: !1490, line: 135, baseType: !1488, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1489, file: !1490, line: 136, baseType: !152, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1489, file: !1490, line: 138, baseType: !308, size: 192, align: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1489, file: !1490, line: 140, baseType: !141, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1489, file: !1490, line: 141, baseType: !7, size: 32, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1490, line: 142, baseType: !1500, size: 256, offset: 512)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1489, file: !1490, line: 142, size: 256, elements: !1501)
!1501 = !{!1502, !1556, !1560}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1500, file: !1490, line: 143, baseType: !1503, size: 192)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1490, line: 91, size: 192, elements: !1504)
!1504 = !{!1505, !1506, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1503, file: !1490, line: 92, baseType: !260, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1503, file: !1490, line: 94, baseType: !325, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1503, file: !1490, line: 100, baseType: !1508, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1490, line: 180, size: 704, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1526, !1527, !1528, !1554, !1555}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1509, file: !1490, line: 182, baseType: !1488, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1509, file: !1490, line: 183, baseType: !7, size: 32, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1509, file: !1490, line: 186, baseType: !1514, size: 192, offset: 128)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1515, line: 19, size: 192, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1524, !1525}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1514, file: !1515, line: 20, baseType: !1518, size: 128)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1519, line: 292, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1518, file: !1519, line: 293, baseType: !169)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1518, file: !1519, line: 295, baseType: !98, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1518, file: !1519, line: 296, baseType: !100, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1514, file: !1515, line: 21, baseType: !7, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1514, file: !1515, line: 22, baseType: !7, size: 32, offset: 160)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1509, file: !1490, line: 187, baseType: !483, size: 32, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1509, file: !1490, line: 188, baseType: !483, size: 32, offset: 352)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1509, file: !1490, line: 189, baseType: !1529, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1490, line: 168, size: 320, elements: !1531)
!1531 = !{!1532, !1538, !1542, !1546, !1550}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1530, file: !1490, line: 169, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!106, !1536, !1508}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !290, line: 539, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1530, file: !1490, line: 171, baseType: !1539, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!106, !1488, !152, !251}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1530, file: !1490, line: 173, baseType: !1543, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!106, !1488}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1530, file: !1490, line: 174, baseType: !1547, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!106, !1488, !1488, !152}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1530, file: !1490, line: 176, baseType: !1551, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!106, !1536, !1488, !1508}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1509, file: !1490, line: 192, baseType: !156, size: 128, offset: 448)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1509, file: !1490, line: 194, baseType: !760, size: 128, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1500, file: !1490, line: 144, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1490, line: 103, size: 64, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1557, file: !1490, line: 104, baseType: !1488, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1500, file: !1490, line: 145, baseType: !1561, size: 256)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1490, line: 107, size: 256, elements: !1562)
!1562 = !{!1563, !1628, !1631, !1632}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1561, file: !1490, line: 108, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1490, line: 217, size: 768, elements: !1567)
!1567 = !{!1568, !1588, !1592, !1596, !1601, !1605, !1609, !1613, !1614, !1615, !1616, !1624}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1566, file: !1490, line: 222, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!106, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1490, line: 197, size: 1088, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1573, file: !1490, line: 199, baseType: !1488, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1573, file: !1490, line: 200, baseType: !288, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1573, file: !1490, line: 201, baseType: !1536, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1573, file: !1490, line: 202, baseType: !100, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1573, file: !1490, line: 205, baseType: !428, size: 192, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1573, file: !1490, line: 206, baseType: !428, size: 192, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1573, file: !1490, line: 207, baseType: !106, size: 32, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1573, file: !1490, line: 208, baseType: !156, size: 128, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1573, file: !1490, line: 209, baseType: !210, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1573, file: !1490, line: 211, baseType: !257, size: 64, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1573, file: !1490, line: 212, baseType: !133, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1573, file: !1490, line: 213, baseType: !133, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1573, file: !1490, line: 214, baseType: !1423, size: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1566, file: !1490, line: 223, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1572}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1566, file: !1490, line: 236, baseType: !1593, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!106, !1536, !100}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1566, file: !1490, line: 238, baseType: !1597, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!100, !1536, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1566, file: !1490, line: 239, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!100, !1536, !100, !1600}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1566, file: !1490, line: 240, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !1536, !100}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1566, file: !1490, line: 242, baseType: !1610, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!241, !1572, !210, !257, !291}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1566, file: !1490, line: 252, baseType: !257, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1566, file: !1490, line: 259, baseType: !133, size: 8, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1566, file: !1490, line: 260, baseType: !1610, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1566, file: !1490, line: 263, baseType: !1617, size: 64, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1620, !1572, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1621, line: 52, baseType: !7)
!1621 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1490, line: 27, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1566, file: !1490, line: 266, baseType: !1625, size: 64, offset: 704)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!106, !1572, !299}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1561, file: !1490, line: 109, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1490, line: 31, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1561, file: !1490, line: 110, baseType: !291, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1561, file: !1490, line: 111, baseType: !1488, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1489, file: !1490, line: 148, baseType: !100, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1489, file: !1490, line: 154, baseType: !329, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1489, file: !1490, line: 156, baseType: !252, size: 16, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1489, file: !1490, line: 157, baseType: !251, size: 16, offset: 912)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1489, file: !1490, line: 158, baseType: !1638, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1490, line: 32, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !148, file: !149, line: 71, baseType: !1641, size: 32, offset: 448)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1642, line: 19, size: 32, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !{!1644}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1641, file: !1642, line: 20, baseType: !489, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !148, file: !149, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !148, file: !149, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !148, file: !149, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !148, file: !149, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !148, file: !149, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !30, line: 463, baseType: !1651, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !145, file: !30, line: 465, baseType: !1653, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !145, file: !30, line: 467, baseType: !152, size: 64, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !30, line: 468, baseType: !1657, size: 64, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1667, !1672, !1676}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !30, line: 88, baseType: !152, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1659, file: !30, line: 89, baseType: !264, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1659, file: !30, line: 90, baseType: !1664, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!106, !1651, !205}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1659, file: !30, line: 91, baseType: !1668, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!210, !1651, !1671, !1474, !1480}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1659, file: !30, line: 93, baseType: !1673, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1651}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1659, file: !30, line: 95, baseType: !1677, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1680)
!1680 = !{!1681, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1679, file: !37, line: 279, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!106, !1651}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1679, file: !37, line: 280, baseType: !1673, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1679, file: !37, line: 281, baseType: !1682, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1679, file: !37, line: 282, baseType: !1682, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1679, file: !37, line: 283, baseType: !1682, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1679, file: !37, line: 284, baseType: !1682, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1679, file: !37, line: 285, baseType: !1682, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1679, file: !37, line: 286, baseType: !1682, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1679, file: !37, line: 287, baseType: !1682, size: 64, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1679, file: !37, line: 288, baseType: !1682, size: 64, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1679, file: !37, line: 289, baseType: !1682, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1679, file: !37, line: 290, baseType: !1682, size: 64, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1679, file: !37, line: 291, baseType: !1682, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1679, file: !37, line: 292, baseType: !1682, size: 64, offset: 832)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1679, file: !37, line: 293, baseType: !1682, size: 64, offset: 896)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1679, file: !37, line: 294, baseType: !1682, size: 64, offset: 960)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1679, file: !37, line: 295, baseType: !1682, size: 64, offset: 1024)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1679, file: !37, line: 296, baseType: !1682, size: 64, offset: 1088)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1679, file: !37, line: 297, baseType: !1682, size: 64, offset: 1152)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1679, file: !37, line: 298, baseType: !1682, size: 64, offset: 1216)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1679, file: !37, line: 299, baseType: !1682, size: 64, offset: 1280)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1679, file: !37, line: 300, baseType: !1682, size: 64, offset: 1344)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1679, file: !37, line: 301, baseType: !1682, size: 64, offset: 1408)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !145, file: !30, line: 470, baseType: !1708, size: 64, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1710, line: 82, size: 1408, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1794, !1797, !1800}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !1710, line: 83, baseType: !152, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1709, file: !1710, line: 84, baseType: !152, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1709, file: !1710, line: 85, baseType: !1651, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1709, file: !1710, line: 86, baseType: !264, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1709, file: !1710, line: 87, baseType: !264, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1709, file: !1710, line: 88, baseType: !264, size: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1709, file: !1710, line: 90, baseType: !1719, size: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!106, !1651, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1745, !1758, !1759, !1760, !1761, !1762, !1770, !1771, !1772, !1773, !1774, !1775}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1723, file: !24, line: 96, baseType: !152, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1723, file: !24, line: 97, baseType: !1708, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1723, file: !24, line: 99, baseType: !95, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1723, file: !24, line: 100, baseType: !152, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1723, file: !24, line: 102, baseType: !133, size: 8, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1723, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1723, file: !24, line: 105, baseType: !1732, size: 64, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1735, line: 262, size: 1600, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !{!1737, !1739, !1740, !1744}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1734, file: !1735, line: 263, baseType: !1738, size: 256)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !1285)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1734, file: !1735, line: 264, baseType: !1738, size: 256, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1734, file: !1735, line: 265, baseType: !1741, size: 1024, offset: 512)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 1024, elements: !1742)
!1742 = !{!1743}
!1743 = !DISubrange(count: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1734, file: !1735, line: 266, baseType: !141, size: 64, offset: 1536)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1723, file: !24, line: 106, baseType: !1746, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1735, line: 210, size: 256, elements: !1749)
!1749 = !{!1750, !1754, !1756, !1757}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1748, file: !1735, line: 211, baseType: !1751, size: 72)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 72, elements: !1752)
!1752 = !{!1753}
!1753 = !DISubrange(count: 9)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1748, file: !1735, line: 212, baseType: !1755, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1735, line: 14, baseType: !260)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1748, file: !1735, line: 213, baseType: !484, size: 32, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1748, file: !1735, line: 214, baseType: !484, size: 32, offset: 224)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1723, file: !24, line: 108, baseType: !1682, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1723, file: !24, line: 109, baseType: !1673, size: 64, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1723, file: !24, line: 110, baseType: !1682, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1723, file: !24, line: 111, baseType: !1673, size: 64, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1723, file: !24, line: 112, baseType: !1763, size: 64, offset: 704)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!106, !1651, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1767, file: !37, line: 51, baseType: !106, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1723, file: !24, line: 113, baseType: !1682, size: 64, offset: 768)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1723, file: !24, line: 114, baseType: !264, size: 64, offset: 832)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1723, file: !24, line: 115, baseType: !264, size: 64, offset: 896)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1723, file: !24, line: 117, baseType: !1677, size: 64, offset: 960)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1723, file: !24, line: 118, baseType: !1673, size: 64, offset: 1024)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1723, file: !24, line: 120, baseType: !1776, size: 64, offset: 1088)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1709, file: !1710, line: 91, baseType: !1664, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1709, file: !1710, line: 92, baseType: !1682, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1709, file: !1710, line: 93, baseType: !1673, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1709, file: !1710, line: 94, baseType: !1682, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1709, file: !1710, line: 95, baseType: !1673, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1709, file: !1710, line: 97, baseType: !1682, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1709, file: !1710, line: 98, baseType: !1682, size: 64, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1709, file: !1710, line: 100, baseType: !1763, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1709, file: !1710, line: 101, baseType: !1682, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1709, file: !1710, line: 103, baseType: !1682, size: 64, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1709, file: !1710, line: 105, baseType: !1682, size: 64, offset: 1088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1709, file: !1710, line: 107, baseType: !1677, size: 64, offset: 1152)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1709, file: !1710, line: 109, baseType: !1791, size: 64, offset: 1216)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1710, line: 109, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1709, file: !1710, line: 111, baseType: !1795, size: 64, offset: 1280)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1710, line: 111, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1709, file: !1710, line: 112, baseType: !1798, offset: 1344)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1799, line: 187, elements: !183)
!1799 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1709, file: !1710, line: 114, baseType: !133, size: 8, offset: 1344)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !145, file: !30, line: 471, baseType: !1722, size: 64, offset: 832)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !145, file: !30, line: 473, baseType: !100, size: 64, offset: 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !145, file: !30, line: 475, baseType: !100, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !145, file: !30, line: 480, baseType: !428, size: 192, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !145, file: !30, line: 484, baseType: !1806, size: 576, offset: 1216)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1806, file: !30, line: 362, baseType: !156, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1806, file: !30, line: 363, baseType: !156, size: 128, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1806, file: !30, line: 364, baseType: !156, size: 128, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1806, file: !30, line: 365, baseType: !156, size: 128, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1806, file: !30, line: 366, baseType: !133, size: 8, offset: 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1806, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !145, file: !30, line: 485, baseType: !1815, size: 2304, offset: 1792)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1912, !1916}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1815, file: !37, line: 566, baseType: !1766, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1815, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1815, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1815, file: !37, line: 569, baseType: !133, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1815, file: !37, line: 570, baseType: !133, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1815, file: !37, line: 571, baseType: !133, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1815, file: !37, line: 572, baseType: !133, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1815, file: !37, line: 573, baseType: !133, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1815, file: !37, line: 574, baseType: !133, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1815, file: !37, line: 575, baseType: !133, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1815, file: !37, line: 576, baseType: !133, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1815, file: !37, line: 577, baseType: !483, size: 32, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !37, line: 578, baseType: !169, offset: 96)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1815, file: !37, line: 580, baseType: !156, size: 128, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1815, file: !37, line: 581, baseType: !789, size: 192, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1815, file: !37, line: 582, baseType: !1833, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1835, line: 43, size: 1472, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1844, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1834, file: !1835, line: 44, baseType: !152, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1834, file: !1835, line: 45, baseType: !106, size: 32, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1834, file: !1835, line: 46, baseType: !156, size: 128, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1834, file: !1835, line: 47, baseType: !169, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1834, file: !1835, line: 48, baseType: !1842, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1834, file: !1835, line: 49, baseType: !1845, size: 320, offset: 320)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1846, line: 11, size: 320, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1849, !1850, !1855}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1845, file: !1846, line: 16, baseType: !753, size: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1845, file: !1846, line: 17, baseType: !260, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1845, file: !1846, line: 18, baseType: !1851, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1846, line: 19, baseType: !483, size: 32, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1834, file: !1835, line: 50, baseType: !260, size: 64, offset: 640)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1834, file: !1835, line: 51, baseType: !559, size: 64, offset: 704)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1834, file: !1835, line: 52, baseType: !559, size: 64, offset: 768)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1834, file: !1835, line: 53, baseType: !559, size: 64, offset: 832)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1834, file: !1835, line: 54, baseType: !559, size: 64, offset: 896)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1834, file: !1835, line: 55, baseType: !559, size: 64, offset: 960)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1834, file: !1835, line: 56, baseType: !260, size: 64, offset: 1024)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1834, file: !1835, line: 57, baseType: !260, size: 64, offset: 1088)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1834, file: !1835, line: 58, baseType: !260, size: 64, offset: 1152)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1834, file: !1835, line: 59, baseType: !260, size: 64, offset: 1216)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1834, file: !1835, line: 60, baseType: !260, size: 64, offset: 1280)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1834, file: !1835, line: 61, baseType: !1651, size: 64, offset: 1344)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1834, file: !1835, line: 62, baseType: !133, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1834, file: !1835, line: 63, baseType: !133, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1815, file: !37, line: 583, baseType: !133, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1815, file: !37, line: 584, baseType: !133, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1815, file: !37, line: 585, baseType: !133, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1815, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1815, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1815, file: !37, line: 592, baseType: !551, size: 512, offset: 576)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1815, file: !37, line: 593, baseType: !329, size: 64, offset: 1088)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1815, file: !37, line: 594, baseType: !1390, size: 256, offset: 1152)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1815, file: !37, line: 595, baseType: !760, size: 128, offset: 1408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1815, file: !37, line: 596, baseType: !1842, size: 64, offset: 1536)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1815, file: !37, line: 597, baseType: !351, size: 32, offset: 1600)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1815, file: !37, line: 598, baseType: !351, size: 32, offset: 1632)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1815, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1815, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1815, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1815, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1815, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1815, file: !37, line: 604, baseType: !133, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1815, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1815, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1815, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1815, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1815, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1815, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1815, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1815, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1815, file: !37, line: 613, baseType: !106, size: 32, offset: 1792)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1815, file: !37, line: 614, baseType: !106, size: 32, offset: 1824)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1815, file: !37, line: 615, baseType: !329, size: 64, offset: 1856)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1815, file: !37, line: 616, baseType: !329, size: 64, offset: 1920)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1815, file: !37, line: 617, baseType: !329, size: 64, offset: 1984)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1815, file: !37, line: 618, baseType: !329, size: 64, offset: 2048)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1815, file: !37, line: 620, baseType: !1903, size: 64, offset: 2112)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1905)
!1905 = !{!1906, !1907, !1908, !1909}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1904, file: !37, line: 537, baseType: !169)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1904, file: !37, line: 538, baseType: !7, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1904, file: !37, line: 540, baseType: !156, size: 128, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1904, file: !37, line: 543, baseType: !1910, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1815, file: !37, line: 621, baseType: !1913, size: 64, offset: 2176)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1651, !713}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1815, file: !37, line: 622, baseType: !1917, size: 64, offset: 2240)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !145, file: !30, line: 486, baseType: !1920, size: 64, offset: 4096)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1929, !1930, !1931}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1921, file: !37, line: 643, baseType: !1679, size: 1472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1921, file: !37, line: 644, baseType: !1682, size: 64, offset: 1472)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1921, file: !37, line: 645, baseType: !1926, size: 64, offset: 1536)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1651, !133}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1921, file: !37, line: 646, baseType: !1682, size: 64, offset: 1600)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1921, file: !37, line: 647, baseType: !1673, size: 64, offset: 1664)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1921, file: !37, line: 648, baseType: !1673, size: 64, offset: 1728)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !145, file: !30, line: 493, baseType: !1933, size: 64, offset: 4160)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1935)
!1935 = !{!1936, !1937, !1938, !2023, !2024, !2025, !2026, !2027, !2028, !2031, !2032, !2033, !2034, !2035, !2036, !2037}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1934, file: !51, line: 163, baseType: !156, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1934, file: !51, line: 164, baseType: !152, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1934, file: !51, line: 165, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1942)
!1942 = !{!1943, !1972, !1983, !1988, !1992, !2000, !2004, !2008, !2015, !2019}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1941, file: !51, line: 106, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!106, !1933, !1947, !50}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1949, line: 51, size: 1344, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !1952, !1954, !1955, !1956, !1965, !1966, !1967, !1968, !1969, !1970, !1971}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1948, file: !1949, line: 52, baseType: !152, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1948, file: !1949, line: 53, baseType: !1953, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1949, line: 28, baseType: !483)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1948, file: !1949, line: 54, baseType: !152, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1948, file: !1949, line: 55, baseType: !111, size: 192, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1948, file: !1949, line: 57, baseType: !1957, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1949, line: 31, size: 704, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963, !1964}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1958, file: !1949, line: 32, baseType: !210, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1958, file: !1949, line: 33, baseType: !106, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1958, file: !1949, line: 34, baseType: !100, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1958, file: !1949, line: 35, baseType: !1957, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1958, file: !1949, line: 43, baseType: !279, size: 448, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1948, file: !1949, line: 58, baseType: !1957, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1948, file: !1949, line: 59, baseType: !1947, size: 64, offset: 512)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1948, file: !1949, line: 60, baseType: !1947, size: 64, offset: 576)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1948, file: !1949, line: 61, baseType: !1947, size: 64, offset: 640)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1948, file: !1949, line: 63, baseType: !148, size: 512, offset: 704)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1948, file: !1949, line: 65, baseType: !260, size: 64, offset: 1216)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1948, file: !1949, line: 66, baseType: !100, size: 64, offset: 1280)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1941, file: !51, line: 108, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!106, !1933, !1976, !50}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1978)
!1978 = !{!1979, !1980, !1981}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1977, file: !51, line: 64, baseType: !115, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1977, file: !51, line: 65, baseType: !106, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1977, file: !51, line: 66, baseType: !1982, size: 512, offset: 96)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 512, elements: !846)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1941, file: !51, line: 110, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!106, !1933, !7, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !99, line: 164, baseType: !260)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1941, file: !51, line: 111, baseType: !1989, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1933, !7}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1941, file: !51, line: 112, baseType: !1993, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!106, !1933, !1947, !1996, !7, !1998, !1999}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1941, file: !51, line: 117, baseType: !2001, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!106, !1933, !7, !7, !100}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1941, file: !51, line: 119, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !1933, !7, !7}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1941, file: !51, line: 121, baseType: !2009, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!106, !1933, !2012, !133}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2014, line: 11, flags: DIFlagFwdDecl)
!2014 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1941, file: !51, line: 122, baseType: !2016, size: 64, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !1933, !2012}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1941, file: !51, line: 123, baseType: !2020, size: 64, offset: 576)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!106, !1933, !1976, !1998, !1999}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1934, file: !51, line: 166, baseType: !100, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1934, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1934, file: !51, line: 171, baseType: !115, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1934, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1934, file: !51, line: 173, baseType: !2029, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1934, file: !51, line: 175, baseType: !1933, size: 64, offset: 576)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1934, file: !51, line: 182, baseType: !1987, size: 64, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1934, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1934, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1934, file: !51, line: 185, baseType: !1518, size: 128, offset: 768)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1934, file: !51, line: 186, baseType: !428, size: 192, offset: 896)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1934, file: !51, line: 187, baseType: !2038, offset: 1088)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1404)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !145, file: !30, line: 499, baseType: !156, size: 128, offset: 4224)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !145, file: !30, line: 502, baseType: !2041, size: 64, offset: 4352)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2043)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !145, file: !30, line: 504, baseType: !2045, size: 64, offset: 4416)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !145, file: !30, line: 505, baseType: !329, size: 64, offset: 4480)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !145, file: !30, line: 510, baseType: !329, size: 64, offset: 4544)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !145, file: !30, line: 511, baseType: !2049, size: 64, offset: 4608)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !145, file: !30, line: 513, baseType: !2053, size: 64, offset: 4672)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2054, file: !30, line: 293, baseType: !7, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2054, file: !30, line: 294, baseType: !260, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !145, file: !30, line: 515, baseType: !156, size: 128, offset: 4736)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !145, file: !30, line: 526, baseType: !2060, offset: 4864)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2061, line: 5, elements: !183)
!2061 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !145, file: !30, line: 528, baseType: !1947, size: 64, offset: 4864)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !145, file: !30, line: 529, baseType: !115, size: 64, offset: 4928)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !145, file: !30, line: 534, baseType: !2065, size: 32, offset: 4992)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !99, line: 16, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !99, line: 13, baseType: !483)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !145, file: !30, line: 535, baseType: !483, size: 32, offset: 5024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !145, file: !30, line: 537, baseType: !169, offset: 5056)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !145, file: !30, line: 538, baseType: !156, size: 128, offset: 5056)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !145, file: !30, line: 540, baseType: !2071, size: 64, offset: 5184)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2073, line: 54, size: 960, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2085, !2089, !2090, !2091, !2092, !2096, !2100, !2101}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2072, file: !2073, line: 55, baseType: !152, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2072, file: !2073, line: 56, baseType: !95, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2072, file: !2073, line: 58, baseType: !264, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2072, file: !2073, line: 59, baseType: !264, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2072, file: !2073, line: 60, baseType: !162, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2072, file: !2073, line: 62, baseType: !1664, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2072, file: !2073, line: 63, baseType: !2082, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!210, !1651, !1671}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2072, file: !2073, line: 65, baseType: !2086, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !2071}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2072, file: !2073, line: 66, baseType: !1673, size: 64, offset: 512)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2072, file: !2073, line: 68, baseType: !1682, size: 64, offset: 576)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2072, file: !2073, line: 70, baseType: !1439, size: 64, offset: 640)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2072, file: !2073, line: 71, baseType: !2093, size: 64, offset: 704)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!141, !1651}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2072, file: !2073, line: 73, baseType: !2097, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !1651, !1474, !1480}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2072, file: !2073, line: 75, baseType: !1677, size: 64, offset: 832)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2072, file: !2073, line: 77, baseType: !1795, size: 64, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !145, file: !30, line: 541, baseType: !264, size: 64, offset: 5248)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !145, file: !30, line: 543, baseType: !1673, size: 64, offset: 5312)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !145, file: !30, line: 544, baseType: !2105, size: 64, offset: 5376)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !145, file: !30, line: 545, baseType: !2108, size: 64, offset: 5440)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !145, file: !30, line: 547, baseType: !133, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !145, file: !30, line: 548, baseType: !133, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !145, file: !30, line: 549, baseType: !133, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !145, file: !30, line: 550, baseType: !133, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !119, file: !112, line: 116, baseType: !2115, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!133, !135, !152}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !119, file: !112, line: 118, baseType: !2119, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!106, !135, !152, !7, !100, !257}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !119, file: !112, line: 123, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!106, !135, !152, !2126, !257}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !119, file: !112, line: 126, baseType: !2128, size: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!152, !135}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !119, file: !112, line: 127, baseType: !2128, size: 64, offset: 512)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !119, file: !112, line: 128, baseType: !2133, size: 64, offset: 576)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!115, !135}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !119, file: !112, line: 130, baseType: !2137, size: 64, offset: 640)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!115, !135, !115}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !119, file: !112, line: 133, baseType: !2141, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!115, !135, !152}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !119, file: !112, line: 135, baseType: !2145, size: 64, offset: 768)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!106, !135, !152, !152, !7, !7, !2148}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !112, line: 43, size: 640, elements: !2150)
!2150 = !{!2151, !2152, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2149, file: !112, line: 44, baseType: !115, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2149, file: !112, line: 45, baseType: !7, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2149, file: !112, line: 46, baseType: !2154, size: 512, offset: 128)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 512, elements: !589)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !119, file: !112, line: 140, baseType: !2137, size: 64, offset: 832)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !119, file: !112, line: 143, baseType: !2133, size: 64, offset: 896)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !119, file: !112, line: 145, baseType: !122, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !119, file: !112, line: 146, baseType: !2159, size: 64, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!106, !135, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !112, line: 29, size: 128, elements: !2164)
!2164 = !{!2165, !2166, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2163, file: !112, line: 30, baseType: !7, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2163, file: !112, line: 31, baseType: !7, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2163, file: !112, line: 32, baseType: !135, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !119, file: !112, line: 148, baseType: !2169, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!106, !135, !1651}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !111, file: !112, line: 20, baseType: !1651, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !103, line: 355, baseType: !101, size: 64, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !102, file: !103, line: 356, baseType: !156, size: 128, offset: 384)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !103, line: 357, baseType: !156, size: 128, offset: 512)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !102, file: !103, line: 358, baseType: !156, size: 128, offset: 640)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !102, file: !103, line: 359, baseType: !156, size: 128, offset: 768)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !102, file: !103, line: 360, baseType: !2179, size: 32, offset: 896)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !103, line: 179, size: 32, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2179, file: !103, line: 180, baseType: !483, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2179, file: !103, line: 181, baseType: !483, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2179, file: !103, line: 182, baseType: !483, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2179, file: !103, line: 183, baseType: !483, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2179, file: !103, line: 184, baseType: !483, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2179, file: !103, line: 185, baseType: !483, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !103, line: 361, baseType: !2188, size: 32, offset: 928)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !103, line: 190, size: 32, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2188, file: !103, line: 191, baseType: !483, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2188, file: !103, line: 192, baseType: !483, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2188, file: !103, line: 193, baseType: !483, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2188, file: !103, line: 194, baseType: !483, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2188, file: !103, line: 195, baseType: !483, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2188, file: !103, line: 196, baseType: !483, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2188, file: !103, line: 197, baseType: !483, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2188, file: !103, line: 198, baseType: !483, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2188, file: !103, line: 199, baseType: !483, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2188, file: !103, line: 200, baseType: !483, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2188, file: !103, line: 201, baseType: !483, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2188, file: !103, line: 202, baseType: !483, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2188, file: !103, line: 203, baseType: !483, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2188, file: !103, line: 204, baseType: !483, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !102, file: !103, line: 362, baseType: !2205, size: 960, offset: 960)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !103, line: 234, size: 960, elements: !2206)
!2206 = !{!2207, !2209, !2216, !2218, !2219, !2220, !2225, !2228}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2205, file: !103, line: 235, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !103, line: 217, baseType: !992)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2205, file: !103, line: 236, baseType: !2210, size: 32, offset: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !103, line: 227, size: 32, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2210, file: !103, line: 228, baseType: !483, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2210, file: !103, line: 229, baseType: !483, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2210, file: !103, line: 230, baseType: !483, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2210, file: !103, line: 231, baseType: !483, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2205, file: !103, line: 237, baseType: !2217, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !103, line: 218, baseType: !329)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2205, file: !103, line: 238, baseType: !210, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2205, file: !103, line: 239, baseType: !156, size: 128, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2205, file: !103, line: 240, baseType: !2221, size: 320, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !103, line: 219, baseType: !2222)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 320, elements: !2223)
!2223 = !{!2224}
!2224 = !DISubrange(count: 40)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2205, file: !103, line: 241, baseType: !2226, size: 160, offset: 704)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !103, line: 220, baseType: !2227)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 160, elements: !1256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2205, file: !103, line: 242, baseType: !2229, size: 64, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !109, line: 899, size: 192, elements: !2231)
!2231 = !{!2232, !2234, !2239, !2245, !2252, !2258, !2264, !2272}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2230, file: !109, line: 900, baseType: !2233, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !109, line: 635, baseType: !483)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2230, file: !109, line: 904, baseType: !2235, size: 128)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !109, line: 901, size: 128, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2235, file: !109, line: 902, baseType: !2233, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2235, file: !109, line: 903, baseType: !329, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2230, file: !109, line: 910, baseType: !2240, size: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !109, line: 906, size: 128, elements: !2241)
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2240, file: !109, line: 907, baseType: !2233, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2240, file: !109, line: 908, baseType: !483, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2240, file: !109, line: 909, baseType: !210, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2230, file: !109, line: 916, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !109, line: 912, size: 128, elements: !2247)
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2246, file: !109, line: 913, baseType: !2233, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2246, file: !109, line: 914, baseType: !483, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2246, file: !109, line: 915, baseType: !2251, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2230, file: !109, line: 922, baseType: !2253, size: 128)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !109, line: 918, size: 128, elements: !2254)
!2254 = !{!2255, !2256, !2257}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2253, file: !109, line: 919, baseType: !2233, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2253, file: !109, line: 920, baseType: !483, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2253, file: !109, line: 921, baseType: !2229, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2230, file: !109, line: 928, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !109, line: 924, size: 128, elements: !2260)
!2260 = !{!2261, !2262, !2263}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2259, file: !109, line: 925, baseType: !2233, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2259, file: !109, line: 926, baseType: !2233, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2259, file: !109, line: 927, baseType: !108, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2230, file: !109, line: 935, baseType: !2265, size: 192)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !109, line: 930, size: 192, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2271}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2265, file: !109, line: 931, baseType: !2233, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2265, file: !109, line: 932, baseType: !483, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2265, file: !109, line: 933, baseType: !2270, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !109, line: 128, baseType: !329)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2265, file: !109, line: 934, baseType: !483, size: 32, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2230, file: !109, line: 941, baseType: !2273, size: 96)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !109, line: 937, size: 96, elements: !2274)
!2274 = !{!2275, !2276, !2277}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2273, file: !109, line: 938, baseType: !2233, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2273, file: !109, line: 939, baseType: !483, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2273, file: !109, line: 940, baseType: !483, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !102, file: !103, line: 363, baseType: !2279, size: 1344, offset: 1920)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !103, line: 275, size: 1344, elements: !2280)
!2280 = !{!2281, !2282, !2292}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2279, file: !103, line: 276, baseType: !106, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !103, line: 277, baseType: !2283, size: 32, offset: 32)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !103, line: 254, size: 32, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2283, file: !103, line: 255, baseType: !483, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2283, file: !103, line: 256, baseType: !483, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2283, file: !103, line: 257, baseType: !483, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2283, file: !103, line: 258, baseType: !483, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2283, file: !103, line: 259, baseType: !483, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2283, file: !103, line: 260, baseType: !483, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2283, file: !103, line: 261, baseType: !483, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2279, file: !103, line: 278, baseType: !2293, size: 1280, offset: 64)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2294, size: 1280, elements: !2305)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !103, line: 264, size: 256, elements: !2295)
!2295 = !{!2296, !2302, !2303, !2304}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !103, line: 269, baseType: !2297, size: 8)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2294, file: !103, line: 265, size: 8, elements: !2298)
!2298 = !{!2299, !2300, !2301}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2297, file: !103, line: 266, baseType: !620, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2297, file: !103, line: 267, baseType: !620, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2297, file: !103, line: 268, baseType: !620, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2294, file: !103, line: 270, baseType: !106, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2294, file: !103, line: 271, baseType: !106, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2294, file: !103, line: 272, baseType: !156, size: 128, offset: 128)
!2305 = !{!2306}
!2306 = !DISubrange(count: 5)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !102, file: !103, line: 364, baseType: !2308, size: 640, offset: 3264)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !103, line: 315, size: 640, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2319, !2328, !2329, !2330}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2308, file: !103, line: 316, baseType: !108, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2308, file: !103, line: 317, baseType: !329, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2308, file: !103, line: 318, baseType: !329, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2308, file: !103, line: 319, baseType: !156, size: 128, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2308, file: !103, line: 320, baseType: !2315, size: 8, offset: 320)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !103, line: 305, size: 8, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2315, file: !103, line: 306, baseType: !620, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2315, file: !103, line: 307, baseType: !620, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2308, file: !103, line: 321, baseType: !2320, size: 128, offset: 384)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !103, line: 310, size: 128, elements: !2321)
!2321 = !{!2322, !2327}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2320, file: !103, line: 311, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2320, file: !103, line: 312, baseType: !1651, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2308, file: !103, line: 322, baseType: !1833, size: 64, offset: 512)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2308, file: !103, line: 323, baseType: !106, size: 32, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2308, file: !103, line: 324, baseType: !106, size: 32, offset: 608)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !102, file: !103, line: 365, baseType: !2332, size: 192, offset: 3904)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !103, line: 297, size: 192, elements: !2333)
!2333 = !{!2334, !2335, !2339, !2340}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2332, file: !103, line: 298, baseType: !106, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2332, file: !103, line: 299, baseType: !2336, size: 8, offset: 32)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !103, line: 283, size: 8, elements: !2337)
!2337 = !{!2338}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2336, file: !103, line: 284, baseType: !620, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2332, file: !103, line: 300, baseType: !106, size: 32, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2332, file: !103, line: 301, baseType: !2341, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !103, line: 287, size: 64, elements: !2343)
!2343 = !{!2344, !2349, !2350, !2351}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2342, file: !103, line: 291, baseType: !2345, size: 8)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2342, file: !103, line: 288, size: 8, elements: !2346)
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2345, file: !103, line: 289, baseType: !620, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2345, file: !103, line: 290, baseType: !620, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2342, file: !103, line: 292, baseType: !620, size: 8, offset: 8)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2342, file: !103, line: 293, baseType: !620, size: 8, offset: 16)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2342, file: !103, line: 294, baseType: !106, size: 32, offset: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !102, file: !103, line: 366, baseType: !2353, size: 64, offset: 4096)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !103, line: 209, size: 64, elements: !2354)
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2353, file: !103, line: 210, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !103, line: 84, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !102, file: !103, line: 367, baseType: !2359, size: 384, offset: 4160)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !103, line: 341, size: 384, elements: !2360)
!2360 = !{!2361, !2364, !2365, !2366}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2359, file: !103, line: 342, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2359, file: !103, line: 343, baseType: !156, size: 128, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2359, file: !103, line: 344, baseType: !2362, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2359, file: !103, line: 345, baseType: !156, size: 128, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !102, file: !103, line: 368, baseType: !2368, size: 64, offset: 4544)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !103, line: 122, size: 1216, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2378, !2382, !2386, !2387, !2388}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2369, file: !103, line: 123, baseType: !1746, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2369, file: !103, line: 124, baseType: !156, size: 128, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2369, file: !103, line: 125, baseType: !2374, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!133, !152, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2369, file: !103, line: 126, baseType: !2379, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!106, !101, !1746}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2369, file: !103, line: 127, baseType: !2383, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !101}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2369, file: !103, line: 128, baseType: !1673, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2369, file: !103, line: 129, baseType: !1673, size: 64, offset: 448)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2369, file: !103, line: 130, baseType: !2389, size: 704, offset: 512)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !103, line: 108, size: 704, elements: !2390)
!2390 = !{!2391, !2392, !2396, !2397, !2398}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2389, file: !103, line: 109, baseType: !148, size: 512)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2389, file: !103, line: 110, baseType: !2393, size: 64, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!106, !101}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2389, file: !103, line: 111, baseType: !2383, size: 64, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2389, file: !103, line: 112, baseType: !133, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2389, file: !103, line: 113, baseType: !133, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !102, file: !103, line: 369, baseType: !2400, size: 64, offset: 4608)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !103, line: 138, size: 256, elements: !2402)
!2402 = !{!2403, !2404, !2408, !2412}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2401, file: !103, line: 139, baseType: !101, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2401, file: !103, line: 140, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!106, !101, !483}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2401, file: !103, line: 141, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !101, !483}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2401, file: !103, line: 142, baseType: !2383, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !102, file: !103, line: 370, baseType: !2414, size: 64, offset: 4672)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !103, line: 162, size: 2816, elements: !2416)
!2416 = !{!2417, !2421, !2422, !2423, !2424, !2433, !2434}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2415, file: !103, line: 163, baseType: !2418, size: 640)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 640, elements: !2419)
!2419 = !{!2420}
!2420 = !DISubrange(count: 80)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2415, file: !103, line: 164, baseType: !2418, size: 640, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2415, file: !103, line: 165, baseType: !1746, size: 64, offset: 1280)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2415, file: !103, line: 166, baseType: !7, size: 32, offset: 1344)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2415, file: !103, line: 167, baseType: !2425, size: 192, offset: 1408)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !103, line: 154, size: 192, elements: !2426)
!2426 = !{!2427, !2429, !2431}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2425, file: !103, line: 155, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !103, line: 150, baseType: !2393)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2425, file: !103, line: 156, baseType: !2430, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !103, line: 151, baseType: !2393)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2425, file: !103, line: 157, baseType: !2432, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !103, line: 152, baseType: !2409)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2415, file: !103, line: 168, baseType: !1723, size: 1152, offset: 1600)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2415, file: !103, line: 169, baseType: !95, size: 64, offset: 2752)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !102, file: !103, line: 371, baseType: !2436, size: 64, offset: 4736)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !103, line: 348, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !102, file: !103, line: 372, baseType: !100, size: 64, offset: 4800)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !102, file: !103, line: 373, baseType: !145, size: 5568, offset: 4864)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !102, file: !103, line: 374, baseType: !7, size: 32, offset: 10432)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !102, file: !103, line: 375, baseType: !7, size: 32, offset: 10464)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !102, file: !103, line: 376, baseType: !156, size: 128, offset: 10496)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !102, file: !103, line: 377, baseType: !428, size: 192, offset: 10624)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !102, file: !103, line: 378, baseType: !2383, size: 64, offset: 10816)
!2446 = !{!0, !2447, !2454, !2459, !2464, !2469, !2474, !2533, !2574}
!2447 = !DIGlobalVariableExpression(var: !2448, expr: !DIExpression())
!2448 = distinct !DIGlobalVariable(name: "__exitcall_int3403_driver_exit", scope: !2, file: !3, line: 300, type: !2449, isLocal: true, isDefinition: true)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2450, line: 117, baseType: !2451)
!2450 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null}
!2454 = !DIGlobalVariableExpression(var: !2455, expr: !DIExpression())
!2455 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author171", scope: !2, file: !3, line: 302, type: !2456, isLocal: true, isDefinition: true, align: 8)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 648, elements: !2457)
!2457 = !{!2458}
!2458 = !DISubrange(count: 81)
!2459 = !DIGlobalVariableExpression(var: !2460, expr: !DIExpression())
!2460 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file172", scope: !2, file: !3, line: 303, type: !2461, isLocal: true, isDefinition: true, align: 8)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 600, elements: !2462)
!2462 = !{!2463}
!2463 = !DISubrange(count: 75)
!2464 = !DIGlobalVariableExpression(var: !2465, expr: !DIExpression())
!2465 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license173", scope: !2, file: !3, line: 303, type: !2466, isLocal: true, isDefinition: true, align: 8)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 248, elements: !2467)
!2467 = !{!2468}
!2468 = !DISubrange(count: 31)
!2469 = !DIGlobalVariableExpression(var: !2470, expr: !DIExpression())
!2470 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description174", scope: !2, file: !3, line: 304, type: !2471, isLocal: true, isDefinition: true, align: 8)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 448, elements: !2472)
!2472 = !{!2473}
!2473 = !DISubrange(count: 56)
!2474 = !DIGlobalVariableExpression(var: !2475, expr: !DIExpression())
!2475 = distinct !DIGlobalVariable(name: "int3403_driver", scope: !2, file: !3, line: 291, type: !2476, isLocal: true, isDefinition: true)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2477, line: 200, size: 1600, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2478 = !{!2479, !2520, !2521, !2525, !2529, !2530, !2531, !2532}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2476, file: !2477, line: 201, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!106, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2477, line: 22, size: 6208, elements: !2485)
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2507, !2514, !2515, !2518}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2484, file: !2477, line: 23, baseType: !152, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2484, file: !2477, line: 24, baseType: !106, size: 32, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2484, file: !2477, line: 25, baseType: !133, size: 8, offset: 96)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2484, file: !2477, line: 26, baseType: !145, size: 5568, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2484, file: !2477, line: 27, baseType: !329, size: 64, offset: 5696)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2484, file: !2477, line: 28, baseType: !2054, size: 128, offset: 5760)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2484, file: !2477, line: 29, baseType: !483, size: 32, offset: 5888)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2484, file: !2477, line: 30, baseType: !2494, size: 64, offset: 5952)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2496, line: 20, size: 512, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2497 = !{!2498, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2495, file: !2496, line: 21, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !99, line: 158, baseType: !1182)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2495, file: !2496, line: 22, baseType: !2499, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2495, file: !2496, line: 23, baseType: !152, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2495, file: !2496, line: 24, baseType: !260, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2495, file: !2496, line: 25, baseType: !260, size: 64, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2495, file: !2496, line: 26, baseType: !2494, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2495, file: !2496, line: 26, baseType: !2494, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2495, file: !2496, line: 26, baseType: !2494, size: 64, offset: 448)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2484, file: !2477, line: 32, baseType: !2508, size: 64, offset: 6016)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1735, line: 586, size: 256, elements: !2511)
!2511 = !{!2512, !2513}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2510, file: !1735, line: 587, baseType: !2227, size: 160)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2510, file: !1735, line: 588, baseType: !1755, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2484, file: !2477, line: 33, baseType: !210, size: 64, offset: 6080)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2484, file: !2477, line: 36, baseType: !2516, size: 64, offset: 6144)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2477, line: 18, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2484, file: !2477, line: 39, baseType: !2519, offset: 6208)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2061, line: 8, elements: !183)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2476, file: !2477, line: 202, baseType: !2480, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2476, file: !2477, line: 203, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2483}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2476, file: !2477, line: 204, baseType: !2526, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!106, !2483, !1766}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2476, file: !2477, line: 205, baseType: !2480, size: 64, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2476, file: !2477, line: 206, baseType: !1723, size: 1152, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2476, file: !2477, line: 207, baseType: !2508, size: 64, offset: 1472)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2476, file: !2477, line: 208, baseType: !133, size: 8, offset: 1536)
!2533 = !DIGlobalVariableExpression(var: !2534, expr: !DIExpression())
!2534 = distinct !DIGlobalVariable(name: "int3403_cooling_ops", scope: !2, file: !3, line: 160, type: !2535, isLocal: true, isDefinition: true)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !76, line: 84, size: 384, elements: !2537)
!2537 = !{!2538, !2557, !2558, !2562, !2566, !2570}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2536, file: !76, line: 85, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!106, !2542, !1998}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !76, line: 93, size: 6528, elements: !2544)
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2553, !2554, !2555, !2556}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2543, file: !76, line: 94, baseType: !106, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2543, file: !76, line: 95, baseType: !2227, size: 160, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2543, file: !76, line: 96, baseType: !145, size: 5568, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2543, file: !76, line: 97, baseType: !1947, size: 64, offset: 5760)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2543, file: !76, line: 98, baseType: !100, size: 64, offset: 5824)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2543, file: !76, line: 99, baseType: !100, size: 64, offset: 5888)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2543, file: !76, line: 100, baseType: !2552, size: 64, offset: 5952)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2543, file: !76, line: 101, baseType: !133, size: 8, offset: 6016)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2543, file: !76, line: 102, baseType: !428, size: 192, offset: 6080)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2543, file: !76, line: 103, baseType: !156, size: 128, offset: 6272)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2543, file: !76, line: 104, baseType: !156, size: 128, offset: 6400)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2536, file: !76, line: 86, baseType: !2539, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2536, file: !76, line: 87, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!106, !2542, !260}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2536, file: !76, line: 88, baseType: !2563, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!106, !2542, !684}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2536, file: !76, line: 89, baseType: !2567, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!106, !2542, !260, !684}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2536, file: !76, line: 90, baseType: !2571, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!106, !2542, !483, !1998}
!2574 = !DIGlobalVariableExpression(var: !2575, expr: !DIExpression())
!2575 = distinct !DIGlobalVariable(name: "int3403_device_ids", scope: !2, file: !3, line: 284, type: !2576, isLocal: true, isDefinition: true)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1747, size: 768, elements: !211)
!2577 = !{i32 7, !"Dwarf Version", i32 4}
!2578 = !{i32 2, !"Debug Info Version", i32 3}
!2579 = !{i32 1, !"wchar_size", i32 2}
!2580 = !{i32 1, !"Code Model", i32 2}
!2581 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2582 = distinct !DISubprogram(name: "int3403_driver_init", scope: !3, file: !3, line: 300, type: !2583, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!106}
!2585 = !DILocation(line: 300, column: 1, scope: !2582)
!2586 = distinct !DISubprogram(name: "int3403_driver_exit", scope: !3, file: !3, line: 300, type: !2452, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!2587 = !DILocation(line: 300, column: 1, scope: !2586)
!2588 = distinct !DISubprogram(name: "int3403_add", scope: !3, file: !3, line: 211, type: !2481, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!2589 = !DILocalVariable(name: "pdev", arg: 1, scope: !2588, file: !3, line: 211, type: !2483)
!2590 = !DILocation(line: 211, column: 48, scope: !2588)
!2591 = !DILocalVariable(name: "priv", scope: !2588, file: !3, line: 213, type: !2592)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int3403_priv", file: !3, line: 44, size: 256, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2598}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !2593, file: !3, line: 45, baseType: !2483, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !2593, file: !3, line: 46, baseType: !101, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2593, file: !3, line: 47, baseType: !333, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2593, file: !3, line: 48, baseType: !100, size: 64, offset: 192)
!2599 = !DILocation(line: 213, column: 23, scope: !2588)
!2600 = !DILocalVariable(name: "result", scope: !2588, file: !3, line: 214, type: !106)
!2601 = !DILocation(line: 214, column: 6, scope: !2588)
!2602 = !DILocalVariable(name: "tmp", scope: !2588, file: !3, line: 215, type: !333)
!2603 = !DILocation(line: 215, column: 21, scope: !2588)
!2604 = !DILocalVariable(name: "status", scope: !2588, file: !3, line: 216, type: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !109, line: 421, baseType: !483)
!2606 = !DILocation(line: 216, column: 14, scope: !2588)
!2607 = !DILocation(line: 218, column: 23, scope: !2588)
!2608 = !DILocation(line: 218, column: 29, scope: !2588)
!2609 = !DILocation(line: 218, column: 9, scope: !2588)
!2610 = !DILocation(line: 218, column: 7, scope: !2588)
!2611 = !DILocation(line: 220, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 220, column: 6)
!2613 = !DILocation(line: 220, column: 6, scope: !2588)
!2614 = !DILocation(line: 221, column: 3, scope: !2612)
!2615 = !DILocation(line: 223, column: 15, scope: !2588)
!2616 = !DILocation(line: 223, column: 2, scope: !2588)
!2617 = !DILocation(line: 223, column: 8, scope: !2588)
!2618 = !DILocation(line: 223, column: 13, scope: !2588)
!2619 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2620, file: !3, line: 224, type: !115)
!2620 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 224, column: 15)
!2621 = !DILocation(line: 224, column: 15, scope: !2620)
!2622 = !DILocalVariable(name: "__mptr", scope: !2623, file: !3, line: 224, type: !100)
!2623 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 224, column: 15)
!2624 = !DILocation(line: 224, column: 15, scope: !2623)
!2625 = !DILocation(line: 224, column: 15, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 224, column: 15)
!2627 = !DILocation(line: 224, column: 2, scope: !2588)
!2628 = !DILocation(line: 224, column: 8, scope: !2588)
!2629 = !DILocation(line: 224, column: 13, scope: !2588)
!2630 = !DILocation(line: 225, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 225, column: 6)
!2632 = !DILocation(line: 225, column: 13, scope: !2631)
!2633 = !DILocation(line: 225, column: 6, scope: !2588)
!2634 = !DILocation(line: 226, column: 10, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 225, column: 19)
!2636 = !DILocation(line: 227, column: 3, scope: !2635)
!2637 = !DILocation(line: 231, column: 33, scope: !2588)
!2638 = !DILocation(line: 231, column: 39, scope: !2588)
!2639 = !DILocation(line: 231, column: 45, scope: !2588)
!2640 = !DILocation(line: 231, column: 11, scope: !2588)
!2641 = !DILocation(line: 231, column: 9, scope: !2588)
!2642 = !DILocation(line: 233, column: 6, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 233, column: 6)
!2644 = !DILocation(line: 233, column: 6, scope: !2588)
!2645 = !DILocation(line: 234, column: 34, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 233, column: 28)
!2647 = !DILocation(line: 234, column: 40, scope: !2646)
!2648 = !DILocation(line: 234, column: 46, scope: !2646)
!2649 = !DILocation(line: 235, column: 19, scope: !2646)
!2650 = !DILocation(line: 235, column: 25, scope: !2646)
!2651 = !DILocation(line: 234, column: 12, scope: !2646)
!2652 = !DILocation(line: 234, column: 10, scope: !2646)
!2653 = !DILocation(line: 236, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 236, column: 7)
!2655 = !DILocation(line: 236, column: 7, scope: !2646)
!2656 = !DILocation(line: 237, column: 11, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 236, column: 29)
!2658 = !DILocation(line: 238, column: 4, scope: !2657)
!2659 = !DILocation(line: 240, column: 2, scope: !2646)
!2660 = !DILocation(line: 241, column: 3, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 240, column: 9)
!2662 = !DILocation(line: 241, column: 9, scope: !2661)
!2663 = !DILocation(line: 241, column: 14, scope: !2661)
!2664 = !DILocation(line: 244, column: 23, scope: !2588)
!2665 = !DILocation(line: 244, column: 29, scope: !2588)
!2666 = !DILocation(line: 244, column: 2, scope: !2588)
!2667 = !DILocation(line: 245, column: 10, scope: !2588)
!2668 = !DILocation(line: 245, column: 16, scope: !2588)
!2669 = !DILocation(line: 245, column: 2, scope: !2588)
!2670 = !DILocation(line: 247, column: 31, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 245, column: 22)
!2672 = !DILocation(line: 247, column: 12, scope: !2671)
!2673 = !DILocation(line: 247, column: 10, scope: !2671)
!2674 = !DILocation(line: 248, column: 3, scope: !2671)
!2675 = !DILocation(line: 251, column: 29, scope: !2671)
!2676 = !DILocation(line: 251, column: 12, scope: !2671)
!2677 = !DILocation(line: 251, column: 10, scope: !2671)
!2678 = !DILocation(line: 252, column: 3, scope: !2671)
!2679 = !DILocation(line: 254, column: 10, scope: !2671)
!2680 = !DILocation(line: 255, column: 2, scope: !2671)
!2681 = !DILocation(line: 257, column: 6, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 257, column: 6)
!2683 = !DILocation(line: 257, column: 6, scope: !2588)
!2684 = !DILocation(line: 258, column: 3, scope: !2682)
!2685 = !DILocation(line: 259, column: 9, scope: !2588)
!2686 = !DILocation(line: 259, column: 2, scope: !2588)
!2687 = !DILabel(scope: !2588, name: "err", file: !3, line: 261)
!2688 = !DILocation(line: 261, column: 1, scope: !2588)
!2689 = !DILocation(line: 262, column: 9, scope: !2588)
!2690 = !DILocation(line: 262, column: 2, scope: !2588)
!2691 = !DILocation(line: 263, column: 1, scope: !2588)
!2692 = distinct !DISubprogram(name: "int3403_remove", scope: !3, file: !3, line: 265, type: !2481, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!2693 = !DILocalVariable(name: "pdev", arg: 1, scope: !2692, file: !3, line: 265, type: !2483)
!2694 = !DILocation(line: 265, column: 51, scope: !2692)
!2695 = !DILocalVariable(name: "priv", scope: !2692, file: !3, line: 267, type: !2592)
!2696 = !DILocation(line: 267, column: 23, scope: !2692)
!2697 = !DILocation(line: 267, column: 51, scope: !2692)
!2698 = !DILocation(line: 267, column: 30, scope: !2692)
!2699 = !DILocation(line: 269, column: 10, scope: !2692)
!2700 = !DILocation(line: 269, column: 16, scope: !2692)
!2701 = !DILocation(line: 269, column: 2, scope: !2692)
!2702 = !DILocation(line: 271, column: 25, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 269, column: 22)
!2704 = !DILocation(line: 271, column: 3, scope: !2703)
!2705 = !DILocation(line: 272, column: 3, scope: !2703)
!2706 = !DILocation(line: 275, column: 23, scope: !2703)
!2707 = !DILocation(line: 275, column: 3, scope: !2703)
!2708 = !DILocation(line: 276, column: 3, scope: !2703)
!2709 = !DILocation(line: 278, column: 3, scope: !2703)
!2710 = !DILocation(line: 281, column: 2, scope: !2692)
!2711 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2712, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!100, !1651, !257, !98}
!2714 = !DILocalVariable(name: "dev", arg: 1, scope: !2711, file: !30, line: 215, type: !1651)
!2715 = !DILocation(line: 215, column: 49, scope: !2711)
!2716 = !DILocalVariable(name: "size", arg: 2, scope: !2711, file: !30, line: 215, type: !257)
!2717 = !DILocation(line: 215, column: 61, scope: !2711)
!2718 = !DILocalVariable(name: "gfp", arg: 3, scope: !2711, file: !30, line: 215, type: !98)
!2719 = !DILocation(line: 215, column: 73, scope: !2711)
!2720 = !DILocation(line: 217, column: 22, scope: !2711)
!2721 = !DILocation(line: 217, column: 27, scope: !2711)
!2722 = !DILocation(line: 217, column: 33, scope: !2711)
!2723 = !DILocation(line: 217, column: 37, scope: !2711)
!2724 = !DILocation(line: 217, column: 9, scope: !2711)
!2725 = !DILocation(line: 217, column: 2, scope: !2711)
!2726 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2477, file: !2477, line: 236, type: !2727, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !2483, !100}
!2729 = !DILocalVariable(name: "pdev", arg: 1, scope: !2726, file: !2477, line: 236, type: !2483)
!2730 = !DILocation(line: 236, column: 65, scope: !2726)
!2731 = !DILocalVariable(name: "data", arg: 2, scope: !2726, file: !2477, line: 237, type: !100)
!2732 = !DILocation(line: 237, column: 12, scope: !2726)
!2733 = !DILocation(line: 239, column: 19, scope: !2726)
!2734 = !DILocation(line: 239, column: 25, scope: !2726)
!2735 = !DILocation(line: 239, column: 30, scope: !2726)
!2736 = !DILocation(line: 239, column: 2, scope: !2726)
!2737 = !DILocation(line: 240, column: 1, scope: !2726)
!2738 = distinct !DISubprogram(name: "int3403_sensor_add", scope: !3, file: !3, line: 82, type: !2739, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!106, !2592}
!2741 = !DILocalVariable(name: "priv", arg: 1, scope: !2738, file: !3, line: 82, type: !2592)
!2742 = !DILocation(line: 82, column: 52, scope: !2738)
!2743 = !DILocalVariable(name: "result", scope: !2738, file: !3, line: 84, type: !106)
!2744 = !DILocation(line: 84, column: 6, scope: !2738)
!2745 = !DILocalVariable(name: "obj", scope: !2738, file: !3, line: 85, type: !2746)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int3403_sensor", file: !3, line: 24, size: 64, elements: !2748)
!2748 = !{!2749}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "int340x_zone", scope: !2747, file: !3, line: 25, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int34x_thermal_zone", file: !2752, line: 20, size: 1600, elements: !2753)
!2752 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.h", directory: "/home/lizy2001/genbc/linux")
!2753 = !{!2754, !2755, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2903, !2904, !2905}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !2751, file: !2752, line: 21, baseType: !101, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "act_trips", scope: !2751, file: !2752, line: 22, baseType: !2756, size: 960, offset: 64)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2757, size: 960, elements: !2762)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "active_trip", file: !2752, line: 14, size: 96, elements: !2758)
!2758 = !{!2759, !2760, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2757, file: !2752, line: 15, baseType: !106, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2757, file: !2752, line: 16, baseType: !106, size: 32, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2757, file: !2752, line: 17, baseType: !133, size: 8, offset: 64)
!2762 = !{!2763}
!2763 = !DISubrange(count: 10)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "aux_trips", scope: !2751, file: !2752, line: 23, baseType: !1998, size: 64, offset: 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "aux_trip_nr", scope: !2751, file: !2752, line: 24, baseType: !106, size: 32, offset: 1088)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "psv_temp", scope: !2751, file: !2752, line: 25, baseType: !106, size: 32, offset: 1120)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "psv_trip_id", scope: !2751, file: !2752, line: 26, baseType: !106, size: 32, offset: 1152)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "crt_temp", scope: !2751, file: !2752, line: 27, baseType: !106, size: 32, offset: 1184)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "crt_trip_id", scope: !2751, file: !2752, line: 28, baseType: !106, size: 32, offset: 1216)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "hot_temp", scope: !2751, file: !2752, line: 29, baseType: !106, size: 32, offset: 1248)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "hot_trip_id", scope: !2751, file: !2752, line: 30, baseType: !106, size: 32, offset: 1280)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !2751, file: !2752, line: 31, baseType: !2773, size: 64, offset: 1344)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !76, line: 150, size: 8448, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2846, !2870, !2885, !2886, !2887, !2891, !2892, !2893, !2902}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2774, file: !76, line: 151, baseType: !106, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2774, file: !76, line: 152, baseType: !2227, size: 160, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2774, file: !76, line: 153, baseType: !145, size: 5568, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2774, file: !76, line: 154, baseType: !267, size: 320, offset: 5760)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2774, file: !76, line: 155, baseType: !2781, size: 64, offset: 6080)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !76, line: 38, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2774, file: !76, line: 156, baseType: !2781, size: 64, offset: 6144)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2774, file: !76, line: 157, baseType: !2781, size: 64, offset: 6208)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2774, file: !76, line: 158, baseType: !64, size: 32, offset: 6272)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2774, file: !76, line: 159, baseType: !100, size: 64, offset: 6336)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2774, file: !76, line: 160, baseType: !106, size: 32, offset: 6400)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2774, file: !76, line: 161, baseType: !260, size: 64, offset: 6464)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !2774, file: !76, line: 162, baseType: !106, size: 32, offset: 6528)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !2774, file: !76, line: 163, baseType: !106, size: 32, offset: 6560)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2774, file: !76, line: 164, baseType: !106, size: 32, offset: 6592)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2774, file: !76, line: 165, baseType: !106, size: 32, offset: 6624)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2774, file: !76, line: 166, baseType: !106, size: 32, offset: 6656)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2774, file: !76, line: 167, baseType: !106, size: 32, offset: 6688)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2774, file: !76, line: 168, baseType: !106, size: 32, offset: 6720)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2774, file: !76, line: 169, baseType: !106, size: 32, offset: 6752)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !2774, file: !76, line: 170, baseType: !7, size: 32, offset: 6784)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2774, file: !76, line: 171, baseType: !351, size: 32, offset: 6816)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2774, file: !76, line: 172, baseType: !2800, size: 64, offset: 6848)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !76, line: 61, size: 896, elements: !2802)
!2802 = !{!2803, !2807, !2808, !2812, !2816, !2820, !2825, !2829, !2830, !2831, !2832, !2833, !2837, !2842}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2801, file: !76, line: 62, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!106, !2773, !2542}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2801, file: !76, line: 64, baseType: !2804, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2801, file: !76, line: 66, baseType: !2809, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!106, !2773, !800}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2801, file: !76, line: 67, baseType: !2813, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!106, !2773, !106, !106}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2801, file: !76, line: 68, baseType: !2817, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!106, !2773, !64}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2801, file: !76, line: 70, baseType: !2821, size: 64, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!106, !2773, !106, !2824}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2801, file: !76, line: 72, baseType: !2826, size: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!106, !2773, !106, !800}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2801, file: !76, line: 73, baseType: !2813, size: 64, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2801, file: !76, line: 74, baseType: !2826, size: 64, offset: 512)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2801, file: !76, line: 75, baseType: !2813, size: 64, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2801, file: !76, line: 76, baseType: !2809, size: 64, offset: 640)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2801, file: !76, line: 77, baseType: !2834, size: 64, offset: 704)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!106, !2773, !106}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2801, file: !76, line: 78, baseType: !2838, size: 64, offset: 768)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!106, !2773, !106, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2801, file: !76, line: 80, baseType: !2843, size: 64, offset: 832)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!106, !2773, !106, !69}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2774, file: !76, line: 173, baseType: !2847, size: 64, offset: 6912)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !76, line: 240, size: 576, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2853, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2848, file: !76, line: 241, baseType: !2227, size: 160)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2848, file: !76, line: 248, baseType: !133, size: 8, offset: 160)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2848, file: !76, line: 250, baseType: !106, size: 32, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2848, file: !76, line: 251, baseType: !2854, size: 64, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !76, line: 205, size: 256, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2855, file: !76, line: 206, baseType: !2542, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2855, file: !76, line: 217, baseType: !106, size: 32, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2855, file: !76, line: 224, baseType: !106, size: 32, offset: 96)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2855, file: !76, line: 234, baseType: !1998, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2855, file: !76, line: 235, baseType: !2804, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2848, file: !76, line: 257, baseType: !483, size: 32, offset: 320)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2848, file: !76, line: 263, baseType: !713, size: 32, offset: 352)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2848, file: !76, line: 269, baseType: !713, size: 32, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2848, file: !76, line: 272, baseType: !713, size: 32, offset: 416)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2848, file: !76, line: 275, baseType: !713, size: 32, offset: 448)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2848, file: !76, line: 278, baseType: !713, size: 32, offset: 480)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2848, file: !76, line: 284, baseType: !106, size: 32, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2848, file: !76, line: 289, baseType: !106, size: 32, offset: 544)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2774, file: !76, line: 174, baseType: !2871, size: 64, offset: 6976)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !76, line: 196, size: 512, elements: !2873)
!2873 = !{!2874, !2875, !2879, !2883, !2884}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2872, file: !76, line: 197, baseType: !2227, size: 160)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2872, file: !76, line: 198, baseType: !2876, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!106, !2773}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2872, file: !76, line: 199, baseType: !2880, size: 64, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{null, !2773}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2872, file: !76, line: 200, baseType: !2834, size: 64, offset: 320)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2872, file: !76, line: 201, baseType: !156, size: 128, offset: 384)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2774, file: !76, line: 175, baseType: !100, size: 64, offset: 7040)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2774, file: !76, line: 176, baseType: !156, size: 128, offset: 7104)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2774, file: !76, line: 177, baseType: !2888, size: 128, offset: 7232)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1515, line: 244, size: 128, elements: !2889)
!2889 = !{!2890}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2888, file: !1515, line: 245, baseType: !1518, size: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2774, file: !76, line: 178, baseType: !428, size: 192, offset: 7360)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2774, file: !76, line: 179, baseType: !156, size: 128, offset: 7552)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2774, file: !76, line: 180, baseType: !2894, size: 704, offset: 7680)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1391, line: 115, size: 704, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2901}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2894, file: !1391, line: 116, baseType: !1390, size: 256)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2894, file: !1391, line: 117, baseType: !1845, size: 320, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2894, file: !1391, line: 120, baseType: !2899, size: 64, offset: 576)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1391, line: 18, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2894, file: !1391, line: 121, baseType: !106, size: 32, offset: 640)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2774, file: !76, line: 181, baseType: !83, size: 32, offset: 8384)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "override_ops", scope: !2751, file: !2752, line: 32, baseType: !2800, size: 64, offset: 1408)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "priv_data", scope: !2751, file: !2752, line: 33, baseType: !100, size: 64, offset: 1472)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "lpat_table", scope: !2751, file: !2752, line: 34, baseType: !2906, size: 64, offset: 1536)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat_conversion_table", file: !2908, line: 16, size: 128, elements: !2909)
!2908 = !DIFile(filename: "./include/acpi/acpi_lpat.h", directory: "/home/lizy2001/genbc/linux")
!2909 = !{!2910, !2916}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "lpat", scope: !2907, file: !2908, line: 17, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat", file: !2908, line: 11, size: 64, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2912, file: !2908, line: 12, baseType: !106, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2912, file: !2908, line: 13, baseType: !106, size: 32, offset: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "lpat_count", scope: !2907, file: !2908, line: 18, baseType: !106, size: 32, offset: 64)
!2917 = !DILocation(line: 85, column: 25, scope: !2738)
!2918 = !DILocation(line: 87, column: 22, scope: !2738)
!2919 = !DILocation(line: 87, column: 28, scope: !2738)
!2920 = !DILocation(line: 87, column: 34, scope: !2738)
!2921 = !DILocation(line: 87, column: 8, scope: !2738)
!2922 = !DILocation(line: 87, column: 6, scope: !2738)
!2923 = !DILocation(line: 88, column: 7, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 88, column: 6)
!2925 = !DILocation(line: 88, column: 6, scope: !2738)
!2926 = !DILocation(line: 89, column: 3, scope: !2924)
!2927 = !DILocation(line: 91, column: 15, scope: !2738)
!2928 = !DILocation(line: 91, column: 2, scope: !2738)
!2929 = !DILocation(line: 91, column: 8, scope: !2738)
!2930 = !DILocation(line: 91, column: 13, scope: !2738)
!2931 = !DILocation(line: 93, column: 47, scope: !2738)
!2932 = !DILocation(line: 93, column: 53, scope: !2738)
!2933 = !DILocation(line: 93, column: 22, scope: !2738)
!2934 = !DILocation(line: 93, column: 2, scope: !2738)
!2935 = !DILocation(line: 93, column: 7, scope: !2738)
!2936 = !DILocation(line: 93, column: 20, scope: !2738)
!2937 = !DILocation(line: 94, column: 13, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 94, column: 6)
!2939 = !DILocation(line: 94, column: 18, scope: !2938)
!2940 = !DILocation(line: 94, column: 6, scope: !2938)
!2941 = !DILocation(line: 94, column: 6, scope: !2738)
!2942 = !DILocation(line: 95, column: 18, scope: !2938)
!2943 = !DILocation(line: 95, column: 23, scope: !2938)
!2944 = !DILocation(line: 95, column: 10, scope: !2938)
!2945 = !DILocation(line: 95, column: 3, scope: !2938)
!2946 = !DILocation(line: 97, column: 39, scope: !2738)
!2947 = !DILocation(line: 97, column: 45, scope: !2738)
!2948 = !DILocation(line: 97, column: 51, scope: !2738)
!2949 = !DILocation(line: 99, column: 12, scope: !2738)
!2950 = !DILocation(line: 99, column: 4, scope: !2738)
!2951 = !DILocation(line: 97, column: 11, scope: !2738)
!2952 = !DILocation(line: 97, column: 9, scope: !2738)
!2953 = !DILocation(line: 100, column: 6, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 100, column: 6)
!2955 = !DILocation(line: 100, column: 6, scope: !2738)
!2956 = !DILocation(line: 101, column: 3, scope: !2954)
!2957 = !DILocation(line: 103, column: 2, scope: !2738)
!2958 = !DILabel(scope: !2738, name: "err_free_obj", file: !3, line: 105)
!2959 = !DILocation(line: 105, column: 2, scope: !2738)
!2960 = !DILocation(line: 106, column: 30, scope: !2738)
!2961 = !DILocation(line: 106, column: 35, scope: !2738)
!2962 = !DILocation(line: 106, column: 2, scope: !2738)
!2963 = !DILocation(line: 107, column: 9, scope: !2738)
!2964 = !DILocation(line: 107, column: 2, scope: !2738)
!2965 = !DILocation(line: 108, column: 1, scope: !2738)
!2966 = distinct !DISubprogram(name: "int3403_cdev_add", scope: !3, file: !3, line: 166, type: !2739, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!2967 = !DILocalVariable(name: "priv", arg: 1, scope: !2966, file: !3, line: 166, type: !2592)
!2968 = !DILocation(line: 166, column: 50, scope: !2966)
!2969 = !DILocalVariable(name: "result", scope: !2966, file: !3, line: 168, type: !106)
!2970 = !DILocation(line: 168, column: 6, scope: !2966)
!2971 = !DILocalVariable(name: "status", scope: !2966, file: !3, line: 169, type: !2605)
!2972 = !DILocation(line: 169, column: 14, scope: !2966)
!2973 = !DILocalVariable(name: "obj", scope: !2966, file: !3, line: 170, type: !2974)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int3403_cdev", file: !3, line: 39, size: 128, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2975, file: !3, line: 40, baseType: !2542, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !2975, file: !3, line: 41, baseType: !260, size: 64, offset: 64)
!2979 = !DILocation(line: 170, column: 23, scope: !2966)
!2980 = !DILocalVariable(name: "buf", scope: !2966, file: !3, line: 171, type: !2981)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !109, line: 969, size: 128, elements: !2982)
!2982 = !{!2983, !2985}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2981, file: !109, line: 970, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !109, line: 127, baseType: !329)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2981, file: !109, line: 971, baseType: !100, size: 64, offset: 64)
!2986 = !DILocation(line: 171, column: 21, scope: !2966)
!2987 = !DILocalVariable(name: "p", scope: !2966, file: !3, line: 172, type: !2229)
!2988 = !DILocation(line: 172, column: 21, scope: !2966)
!2989 = !DILocation(line: 174, column: 22, scope: !2966)
!2990 = !DILocation(line: 174, column: 28, scope: !2966)
!2991 = !DILocation(line: 174, column: 34, scope: !2966)
!2992 = !DILocation(line: 174, column: 8, scope: !2966)
!2993 = !DILocation(line: 174, column: 6, scope: !2966)
!2994 = !DILocation(line: 175, column: 7, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 175, column: 6)
!2996 = !DILocation(line: 175, column: 6, scope: !2966)
!2997 = !DILocation(line: 176, column: 3, scope: !2995)
!2998 = !DILocation(line: 178, column: 32, scope: !2966)
!2999 = !DILocation(line: 178, column: 38, scope: !2966)
!3000 = !DILocation(line: 178, column: 44, scope: !2966)
!3001 = !DILocation(line: 178, column: 11, scope: !2966)
!3002 = !DILocation(line: 178, column: 9, scope: !2966)
!3003 = !DILocation(line: 179, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 179, column: 6)
!3005 = !DILocation(line: 179, column: 6, scope: !2966)
!3006 = !DILocation(line: 180, column: 3, scope: !3004)
!3007 = !DILocation(line: 182, column: 10, scope: !2966)
!3008 = !DILocation(line: 182, column: 6, scope: !2966)
!3009 = !DILocation(line: 182, column: 4, scope: !2966)
!3010 = !DILocation(line: 183, column: 7, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 183, column: 6)
!3012 = !DILocation(line: 183, column: 9, scope: !3011)
!3013 = !DILocation(line: 183, column: 13, scope: !3011)
!3014 = !DILocation(line: 183, column: 16, scope: !3011)
!3015 = !DILocation(line: 183, column: 21, scope: !3011)
!3016 = !DILocation(line: 183, column: 6, scope: !2966)
!3017 = !DILocation(line: 184, column: 3, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 183, column: 44)
!3019 = !DILocation(line: 185, column: 13, scope: !3018)
!3020 = !DILocation(line: 185, column: 3, scope: !3018)
!3021 = !DILocation(line: 186, column: 3, scope: !3018)
!3022 = !DILocation(line: 189, column: 15, scope: !2966)
!3023 = !DILocation(line: 189, column: 2, scope: !2966)
!3024 = !DILocation(line: 189, column: 8, scope: !2966)
!3025 = !DILocation(line: 189, column: 13, scope: !2966)
!3026 = !DILocation(line: 190, column: 19, scope: !2966)
!3027 = !DILocation(line: 190, column: 22, scope: !2966)
!3028 = !DILocation(line: 190, column: 30, scope: !2966)
!3029 = !DILocation(line: 190, column: 36, scope: !2966)
!3030 = !DILocation(line: 190, column: 2, scope: !2966)
!3031 = !DILocation(line: 190, column: 7, scope: !2966)
!3032 = !DILocation(line: 190, column: 17, scope: !2966)
!3033 = !DILocation(line: 192, column: 35, scope: !2966)
!3034 = !DILocation(line: 193, column: 5, scope: !2966)
!3035 = !DILocation(line: 192, column: 3, scope: !2966)
!3036 = !DILocation(line: 191, column: 2, scope: !2966)
!3037 = !DILocation(line: 191, column: 7, scope: !2966)
!3038 = !DILocation(line: 191, column: 12, scope: !2966)
!3039 = !DILocation(line: 194, column: 13, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 194, column: 6)
!3041 = !DILocation(line: 194, column: 18, scope: !3040)
!3042 = !DILocation(line: 194, column: 6, scope: !3040)
!3043 = !DILocation(line: 194, column: 6, scope: !2966)
!3044 = !DILocation(line: 195, column: 20, scope: !3040)
!3045 = !DILocation(line: 195, column: 25, scope: !3040)
!3046 = !DILocation(line: 195, column: 12, scope: !3040)
!3047 = !DILocation(line: 195, column: 10, scope: !3040)
!3048 = !DILocation(line: 195, column: 3, scope: !3040)
!3049 = !DILocation(line: 197, column: 12, scope: !2966)
!3050 = !DILocation(line: 197, column: 2, scope: !2966)
!3051 = !DILocation(line: 200, column: 9, scope: !2966)
!3052 = !DILocation(line: 200, column: 2, scope: !2966)
!3053 = !DILocation(line: 201, column: 1, scope: !2966)
!3054 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3055, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{null, !1651, !100}
!3057 = !DILocalVariable(name: "dev", arg: 1, scope: !3054, file: !30, line: 660, type: !1651)
!3058 = !DILocation(line: 660, column: 51, scope: !3054)
!3059 = !DILocalVariable(name: "data", arg: 2, scope: !3054, file: !30, line: 660, type: !100)
!3060 = !DILocation(line: 660, column: 62, scope: !3054)
!3061 = !DILocation(line: 662, column: 21, scope: !3054)
!3062 = !DILocation(line: 662, column: 2, scope: !3054)
!3063 = !DILocation(line: 662, column: 7, scope: !3054)
!3064 = !DILocation(line: 662, column: 19, scope: !3054)
!3065 = !DILocation(line: 663, column: 1, scope: !3054)
!3066 = distinct !DISubprogram(name: "IS_ERR", scope: !3067, file: !3067, line: 34, type: !3068, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3067 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!133, !141}
!3070 = !DILocalVariable(name: "ptr", arg: 1, scope: !3066, file: !3067, line: 34, type: !141)
!3071 = !DILocation(line: 34, column: 60, scope: !3066)
!3072 = !DILocation(line: 36, column: 9, scope: !3066)
!3073 = !DILocation(line: 36, column: 2, scope: !3066)
!3074 = distinct !DISubprogram(name: "PTR_ERR", scope: !3067, file: !3067, line: 29, type: !3075, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!245, !141}
!3077 = !DILocalVariable(name: "ptr", arg: 1, scope: !3074, file: !3067, line: 29, type: !141)
!3078 = !DILocation(line: 29, column: 61, scope: !3074)
!3079 = !DILocation(line: 31, column: 16, scope: !3074)
!3080 = !DILocation(line: 31, column: 9, scope: !3074)
!3081 = !DILocation(line: 31, column: 2, scope: !3074)
!3082 = distinct !DISubprogram(name: "int3403_notify", scope: !3, file: !3, line: 51, type: !3083, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !108, !483, !100}
!3085 = !DILocalVariable(name: "handle", arg: 1, scope: !3082, file: !3, line: 51, type: !108)
!3086 = !DILocation(line: 51, column: 40, scope: !3082)
!3087 = !DILocalVariable(name: "event", arg: 2, scope: !3082, file: !3, line: 52, type: !483)
!3088 = !DILocation(line: 52, column: 7, scope: !3082)
!3089 = !DILocalVariable(name: "data", arg: 3, scope: !3082, file: !3, line: 52, type: !100)
!3090 = !DILocation(line: 52, column: 20, scope: !3082)
!3091 = !DILocalVariable(name: "priv", scope: !3082, file: !3, line: 54, type: !2592)
!3092 = !DILocation(line: 54, column: 23, scope: !3082)
!3093 = !DILocation(line: 54, column: 30, scope: !3082)
!3094 = !DILocalVariable(name: "obj", scope: !3082, file: !3, line: 55, type: !2746)
!3095 = !DILocation(line: 55, column: 25, scope: !3082)
!3096 = !DILocation(line: 57, column: 7, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 57, column: 6)
!3098 = !DILocation(line: 57, column: 6, scope: !3082)
!3099 = !DILocation(line: 58, column: 3, scope: !3097)
!3100 = !DILocation(line: 60, column: 8, scope: !3082)
!3101 = !DILocation(line: 60, column: 14, scope: !3082)
!3102 = !DILocation(line: 60, column: 6, scope: !3082)
!3103 = !DILocation(line: 61, column: 6, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 61, column: 6)
!3105 = !DILocation(line: 61, column: 12, scope: !3104)
!3106 = !DILocation(line: 61, column: 17, scope: !3104)
!3107 = !DILocation(line: 61, column: 40, scope: !3104)
!3108 = !DILocation(line: 61, column: 44, scope: !3104)
!3109 = !DILocation(line: 61, column: 6, scope: !3082)
!3110 = !DILocation(line: 62, column: 3, scope: !3104)
!3111 = !DILocation(line: 64, column: 10, scope: !3082)
!3112 = !DILocation(line: 64, column: 2, scope: !3082)
!3113 = !DILocation(line: 66, column: 3, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 64, column: 17)
!3115 = !DILocation(line: 68, column: 38, scope: !3114)
!3116 = !DILocation(line: 68, column: 43, scope: !3114)
!3117 = !DILocation(line: 68, column: 3, scope: !3114)
!3118 = !DILocation(line: 70, column: 3, scope: !3114)
!3119 = !DILocation(line: 72, column: 30, scope: !3114)
!3120 = !DILocation(line: 72, column: 35, scope: !3114)
!3121 = !DILocation(line: 72, column: 3, scope: !3114)
!3122 = !DILocation(line: 73, column: 38, scope: !3114)
!3123 = !DILocation(line: 73, column: 43, scope: !3114)
!3124 = !DILocation(line: 73, column: 3, scope: !3114)
!3125 = !DILocation(line: 75, column: 3, scope: !3114)
!3126 = !DILocation(line: 78, column: 3, scope: !3114)
!3127 = !DILocation(line: 80, column: 1, scope: !3082)
!3128 = distinct !DISubprogram(name: "int340x_thermal_zone_device_update", scope: !2752, file: !2752, line: 54, type: !3129, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{null, !2750, !83}
!3131 = !DILocalVariable(name: "tzone", arg: 1, scope: !3128, file: !2752, line: 55, type: !2750)
!3132 = !DILocation(line: 55, column: 34, scope: !3128)
!3133 = !DILocalVariable(name: "event", arg: 2, scope: !3128, file: !2752, line: 56, type: !83)
!3134 = !DILocation(line: 56, column: 32, scope: !3128)
!3135 = !DILocation(line: 58, column: 29, scope: !3128)
!3136 = !DILocation(line: 58, column: 36, scope: !3128)
!3137 = !DILocation(line: 58, column: 42, scope: !3128)
!3138 = !DILocation(line: 58, column: 2, scope: !3128)
!3139 = !DILocation(line: 59, column: 1, scope: !3128)
!3140 = distinct !DISubprogram(name: "int3403_get_max_state", scope: !3, file: !3, line: 122, type: !2540, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3141 = !DILocalVariable(name: "cdev", arg: 1, scope: !3140, file: !3, line: 122, type: !2542)
!3142 = !DILocation(line: 122, column: 65, scope: !3140)
!3143 = !DILocalVariable(name: "state", arg: 2, scope: !3140, file: !3, line: 123, type: !1998)
!3144 = !DILocation(line: 123, column: 21, scope: !3140)
!3145 = !DILocalVariable(name: "priv", scope: !3140, file: !3, line: 125, type: !2592)
!3146 = !DILocation(line: 125, column: 23, scope: !3140)
!3147 = !DILocation(line: 125, column: 30, scope: !3140)
!3148 = !DILocation(line: 125, column: 36, scope: !3140)
!3149 = !DILocalVariable(name: "obj", scope: !3140, file: !3, line: 126, type: !2974)
!3150 = !DILocation(line: 126, column: 23, scope: !3140)
!3151 = !DILocation(line: 126, column: 29, scope: !3140)
!3152 = !DILocation(line: 126, column: 35, scope: !3140)
!3153 = !DILocation(line: 128, column: 11, scope: !3140)
!3154 = !DILocation(line: 128, column: 16, scope: !3140)
!3155 = !DILocation(line: 128, column: 3, scope: !3140)
!3156 = !DILocation(line: 128, column: 9, scope: !3140)
!3157 = !DILocation(line: 129, column: 2, scope: !3140)
!3158 = distinct !DISubprogram(name: "int3403_get_cur_state", scope: !3, file: !3, line: 132, type: !2540, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3159 = !DILocalVariable(name: "cdev", arg: 1, scope: !3158, file: !3, line: 132, type: !2542)
!3160 = !DILocation(line: 132, column: 65, scope: !3158)
!3161 = !DILocalVariable(name: "state", arg: 2, scope: !3158, file: !3, line: 133, type: !1998)
!3162 = !DILocation(line: 133, column: 21, scope: !3158)
!3163 = !DILocalVariable(name: "priv", scope: !3158, file: !3, line: 135, type: !2592)
!3164 = !DILocation(line: 135, column: 23, scope: !3158)
!3165 = !DILocation(line: 135, column: 30, scope: !3158)
!3166 = !DILocation(line: 135, column: 36, scope: !3158)
!3167 = !DILocalVariable(name: "level", scope: !3158, file: !3, line: 136, type: !333)
!3168 = !DILocation(line: 136, column: 21, scope: !3158)
!3169 = !DILocalVariable(name: "status", scope: !3158, file: !3, line: 137, type: !2605)
!3170 = !DILocation(line: 137, column: 14, scope: !3158)
!3171 = !DILocation(line: 139, column: 33, scope: !3158)
!3172 = !DILocation(line: 139, column: 39, scope: !3158)
!3173 = !DILocation(line: 139, column: 45, scope: !3158)
!3174 = !DILocation(line: 139, column: 11, scope: !3158)
!3175 = !DILocation(line: 139, column: 9, scope: !3158)
!3176 = !DILocation(line: 140, column: 6, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 140, column: 6)
!3178 = !DILocation(line: 140, column: 6, scope: !3158)
!3179 = !DILocation(line: 141, column: 12, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 140, column: 28)
!3181 = !DILocation(line: 141, column: 4, scope: !3180)
!3182 = !DILocation(line: 141, column: 10, scope: !3180)
!3183 = !DILocation(line: 142, column: 3, scope: !3180)
!3184 = !DILocation(line: 144, column: 3, scope: !3177)
!3185 = !DILocation(line: 145, column: 1, scope: !3158)
!3186 = distinct !DISubprogram(name: "int3403_set_cur_state", scope: !3, file: !3, line: 148, type: !2560, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3187 = !DILocalVariable(name: "cdev", arg: 1, scope: !3186, file: !3, line: 148, type: !2542)
!3188 = !DILocation(line: 148, column: 54, scope: !3186)
!3189 = !DILocalVariable(name: "state", arg: 2, scope: !3186, file: !3, line: 148, type: !260)
!3190 = !DILocation(line: 148, column: 74, scope: !3186)
!3191 = !DILocalVariable(name: "priv", scope: !3186, file: !3, line: 150, type: !2592)
!3192 = !DILocation(line: 150, column: 23, scope: !3186)
!3193 = !DILocation(line: 150, column: 30, scope: !3186)
!3194 = !DILocation(line: 150, column: 36, scope: !3186)
!3195 = !DILocalVariable(name: "status", scope: !3186, file: !3, line: 151, type: !2605)
!3196 = !DILocation(line: 151, column: 14, scope: !3186)
!3197 = !DILocation(line: 153, column: 38, scope: !3186)
!3198 = !DILocation(line: 153, column: 44, scope: !3186)
!3199 = !DILocation(line: 153, column: 50, scope: !3186)
!3200 = !DILocation(line: 153, column: 66, scope: !3186)
!3201 = !DILocation(line: 153, column: 11, scope: !3186)
!3202 = !DILocation(line: 153, column: 9, scope: !3186)
!3203 = !DILocation(line: 154, column: 6, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 154, column: 6)
!3205 = !DILocation(line: 154, column: 6, scope: !3186)
!3206 = !DILocation(line: 155, column: 3, scope: !3204)
!3207 = !DILocation(line: 157, column: 3, scope: !3204)
!3208 = !DILocation(line: 158, column: 1, scope: !3186)
!3209 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2477, file: !2477, line: 231, type: !3210, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!100, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!3214 = !DILocalVariable(name: "pdev", arg: 1, scope: !3209, file: !2477, line: 231, type: !3212)
!3215 = !DILocation(line: 231, column: 72, scope: !3209)
!3216 = !DILocation(line: 233, column: 26, scope: !3209)
!3217 = !DILocation(line: 233, column: 32, scope: !3209)
!3218 = !DILocation(line: 233, column: 9, scope: !3209)
!3219 = !DILocation(line: 233, column: 2, scope: !3209)
!3220 = distinct !DISubprogram(name: "int3403_sensor_remove", scope: !3, file: !3, line: 110, type: !2739, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3221 = !DILocalVariable(name: "priv", arg: 1, scope: !3220, file: !3, line: 110, type: !2592)
!3222 = !DILocation(line: 110, column: 55, scope: !3220)
!3223 = !DILocalVariable(name: "obj", scope: !3220, file: !3, line: 112, type: !2746)
!3224 = !DILocation(line: 112, column: 25, scope: !3220)
!3225 = !DILocation(line: 112, column: 31, scope: !3220)
!3226 = !DILocation(line: 112, column: 37, scope: !3220)
!3227 = !DILocation(line: 114, column: 29, scope: !3220)
!3228 = !DILocation(line: 114, column: 35, scope: !3220)
!3229 = !DILocation(line: 114, column: 41, scope: !3220)
!3230 = !DILocation(line: 114, column: 2, scope: !3220)
!3231 = !DILocation(line: 116, column: 30, scope: !3220)
!3232 = !DILocation(line: 116, column: 35, scope: !3220)
!3233 = !DILocation(line: 116, column: 2, scope: !3220)
!3234 = !DILocation(line: 118, column: 2, scope: !3220)
!3235 = distinct !DISubprogram(name: "int3403_cdev_remove", scope: !3, file: !3, line: 203, type: !2739, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3236 = !DILocalVariable(name: "priv", arg: 1, scope: !3235, file: !3, line: 203, type: !2592)
!3237 = !DILocation(line: 203, column: 53, scope: !3235)
!3238 = !DILocalVariable(name: "obj", scope: !3235, file: !3, line: 205, type: !2974)
!3239 = !DILocation(line: 205, column: 23, scope: !3235)
!3240 = !DILocation(line: 205, column: 29, scope: !3235)
!3241 = !DILocation(line: 205, column: 35, scope: !3235)
!3242 = !DILocation(line: 207, column: 36, scope: !3235)
!3243 = !DILocation(line: 207, column: 41, scope: !3235)
!3244 = !DILocation(line: 207, column: 2, scope: !3235)
!3245 = !DILocation(line: 208, column: 2, scope: !3235)
!3246 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3247, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!100, !143}
!3249 = !DILocalVariable(name: "dev", arg: 1, scope: !3246, file: !30, line: 655, type: !143)
!3250 = !DILocation(line: 655, column: 58, scope: !3246)
!3251 = !DILocation(line: 657, column: 9, scope: !3246)
!3252 = !DILocation(line: 657, column: 14, scope: !3246)
!3253 = !DILocation(line: 657, column: 2, scope: !3246)
