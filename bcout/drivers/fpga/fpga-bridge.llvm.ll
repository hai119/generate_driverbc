; ModuleID = '../bcout/drivers/fpga/fpga-bridge.llvm.bc'
source_filename = "drivers/fpga/fpga-bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_fpga_bridge_dev_init4:\09\09\09"
module asm ".long\09fpga_bridge_dev_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.fpga_bridge = type { i8*, %struct.device, %struct.mutex, %struct.fpga_bridge_ops*, %struct.fpga_image_info*, %struct.list_head, i8* }
%struct.fpga_bridge_ops = type { {}*, i32 (%struct.fpga_bridge*, i1)*, void (%struct.fpga_bridge*)*, %struct.attribute_group** }
%struct.fpga_image_info = type { i32, i32, i32, i32, i8*, %struct.sg_table*, i8*, i64, i32, %struct.device*, %struct.device_node* }
%struct.sg_table = type opaque
%struct.of_dev_auxdata = type { i8*, i64, i8*, i8* }

@fpga_bridge_class = internal global %struct.class* null, align 8, !dbg !0
@bridge_list_lock = internal global %struct.spinlock zeroinitializer, align 1, !dbg !2122
@.str = private unnamed_addr constant [35 x i8] c"Attempt to register with no name!\0A\00", align 1
@fpga_bridge_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !2124
@fpga_bridge_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2088
@.str.1 = private unnamed_addr constant [15 x i8] c"&bridge->mutex\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"br%d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"fpga bridge [%s] registered\0A\00", align 1
@__UNIQUE_ID_description171 = internal constant [43 x i8] c"fpga_bridge.description=FPGA Bridge Driver\00", section ".modinfo", align 1, !dbg !2093
@__UNIQUE_ID_author172 = internal constant [48 x i8] c"fpga_bridge.author=Alan Tull <atull@kernel.org>\00", section ".modinfo", align 1, !dbg !2098
@__UNIQUE_ID_file173 = internal constant [42 x i8] c"fpga_bridge.file=drivers/fpga/fpga-bridge\00", section ".modinfo", align 1, !dbg !2103
@__UNIQUE_ID_license174 = internal constant [27 x i8] c"fpga_bridge.license=GPL v2\00", section ".modinfo", align 1, !dbg !2108
@__UNIQUE_ID___addressable_fpga_bridge_dev_init175 = internal global i8* bitcast (i32 ()* @fpga_bridge_dev_init to i8*), section ".discard.addressable", align 8, !dbg !2113
@__exitcall_fpga_bridge_dev_exit = internal global void ()* @fpga_bridge_dev_exit, section ".exitcall.exit", align 8, !dbg !2115
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@fpga_bridge_dev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2129
@.str.5 = private unnamed_addr constant [12 x i8] c"fpga_bridge\00", align 1
@fpga_bridge_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @fpga_bridge_group, %struct.attribute_group* null], align 16, !dbg !2134
@fpga_bridge_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @fpga_bridge_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2137
@fpga_bridge_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_name, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_state, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2139
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @name_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2142
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @state_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2156
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @fpga_bridge_dev_exit to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_description171, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_author172, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file173, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license174, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_fpga_bridge_dev_init175 to i8*), i8* bitcast (void ()** @__exitcall_fpga_bridge_dev_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fpga_bridge_enable(%struct.fpga_bridge* %bridge) #0 !dbg !2164 {
entry:
  %retval = alloca i32, align 4
  %bridge.addr = alloca %struct.fpga_bridge*, align 8
  store %struct.fpga_bridge* %bridge, %struct.fpga_bridge** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge.addr, metadata !2165, metadata !DIExpression()), !dbg !2166
  %0 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2167
  %br_ops = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %0, i32 0, i32 3, !dbg !2169
  %1 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops, align 8, !dbg !2169
  %tobool = icmp ne %struct.fpga_bridge_ops* %1, null, !dbg !2167
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2170

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2171
  %br_ops1 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %2, i32 0, i32 3, !dbg !2172
  %3 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops1, align 8, !dbg !2172
  %enable_set = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %3, i32 0, i32 1, !dbg !2173
  %4 = load i32 (%struct.fpga_bridge*, i1)*, i32 (%struct.fpga_bridge*, i1)** %enable_set, align 8, !dbg !2173
  %tobool2 = icmp ne i32 (%struct.fpga_bridge*, i1)* %4, null, !dbg !2171
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2174

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2175
  %br_ops3 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %5, i32 0, i32 3, !dbg !2176
  %6 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops3, align 8, !dbg !2176
  %enable_set4 = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %6, i32 0, i32 1, !dbg !2177
  %7 = load i32 (%struct.fpga_bridge*, i1)*, i32 (%struct.fpga_bridge*, i1)** %enable_set4, align 8, !dbg !2177
  %8 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2178
  %call = call i32 %7(%struct.fpga_bridge* %8, i1 zeroext true) #11, !dbg !2175
  store i32 %call, i32* %retval, align 4, !dbg !2179
  br label %return, !dbg !2179

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !2180
  br label %return, !dbg !2180

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2181
  ret i32 %9, !dbg !2181
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fpga_bridge_disable(%struct.fpga_bridge* %bridge) #0 !dbg !2182 {
entry:
  %retval = alloca i32, align 4
  %bridge.addr = alloca %struct.fpga_bridge*, align 8
  store %struct.fpga_bridge* %bridge, %struct.fpga_bridge** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge.addr, metadata !2183, metadata !DIExpression()), !dbg !2184
  %0 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2185
  %br_ops = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %0, i32 0, i32 3, !dbg !2187
  %1 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops, align 8, !dbg !2187
  %tobool = icmp ne %struct.fpga_bridge_ops* %1, null, !dbg !2185
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2188

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2189
  %br_ops1 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %2, i32 0, i32 3, !dbg !2190
  %3 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops1, align 8, !dbg !2190
  %enable_set = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %3, i32 0, i32 1, !dbg !2191
  %4 = load i32 (%struct.fpga_bridge*, i1)*, i32 (%struct.fpga_bridge*, i1)** %enable_set, align 8, !dbg !2191
  %tobool2 = icmp ne i32 (%struct.fpga_bridge*, i1)* %4, null, !dbg !2189
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2192

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2193
  %br_ops3 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %5, i32 0, i32 3, !dbg !2194
  %6 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops3, align 8, !dbg !2194
  %enable_set4 = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %6, i32 0, i32 1, !dbg !2195
  %7 = load i32 (%struct.fpga_bridge*, i1)*, i32 (%struct.fpga_bridge*, i1)** %enable_set4, align 8, !dbg !2195
  %8 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2196
  %call = call i32 %7(%struct.fpga_bridge* %8, i1 zeroext false) #11, !dbg !2193
  store i32 %call, i32* %retval, align 4, !dbg !2197
  br label %return, !dbg !2197

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !2198
  br label %return, !dbg !2198

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2199
  ret i32 %9, !dbg !2199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fpga_bridge* @of_fpga_bridge_get(%struct.device_node* %np, %struct.fpga_image_info* %info) #0 !dbg !2200 {
entry:
  %retval = alloca %struct.fpga_bridge*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %info.addr = alloca %struct.fpga_image_info*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2203, metadata !DIExpression()), !dbg !2204
  store %struct.fpga_image_info* %info, %struct.fpga_image_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_image_info** %info.addr, metadata !2205, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2207, metadata !DIExpression()), !dbg !2208
  %0 = load %struct.class*, %struct.class** @fpga_bridge_class, align 8, !dbg !2209
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2210
  %call = call %struct.device* @class_find_device_by_of_node(%struct.class* %0, %struct.device_node* %1) #11, !dbg !2211
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2212
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2213
  %tobool = icmp ne %struct.device* %2, null, !dbg !2213
  br i1 %tobool, label %if.end, label %if.then, !dbg !2215

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -19) #11, !dbg !2216
  %3 = bitcast i8* %call1 to %struct.fpga_bridge*, !dbg !2216
  store %struct.fpga_bridge* %3, %struct.fpga_bridge** %retval, align 8, !dbg !2217
  br label %return, !dbg !2217

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2218
  %5 = load %struct.fpga_image_info*, %struct.fpga_image_info** %info.addr, align 8, !dbg !2219
  %call2 = call %struct.fpga_bridge* @__fpga_bridge_get(%struct.device* %4, %struct.fpga_image_info* %5) #11, !dbg !2220
  store %struct.fpga_bridge* %call2, %struct.fpga_bridge** %retval, align 8, !dbg !2221
  br label %return, !dbg !2221

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %retval, align 8, !dbg !2222
  ret %struct.fpga_bridge* %6, !dbg !2222
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @class_find_device_by_of_node(%struct.class* %class, %struct.device_node* %np) #0 !dbg !2223 {
entry:
  %class.addr = alloca %struct.class*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.class* %class, %struct.class** %class.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.class** %class.addr, metadata !2228, metadata !DIExpression()), !dbg !2229
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2230, metadata !DIExpression()), !dbg !2231
  %0 = load %struct.class*, %struct.class** %class.addr, align 8, !dbg !2232
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2233
  %2 = bitcast %struct.device_node* %1 to i8*, !dbg !2233
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @device_match_of_node) #11, !dbg !2234
  ret %struct.device* %call, !dbg !2235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2236 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2240, metadata !DIExpression()), !dbg !2241
  %0 = load i64, i64* %error.addr, align 8, !dbg !2242
  %1 = inttoptr i64 %0 to i8*, !dbg !2243
  ret i8* %1, !dbg !2244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fpga_bridge* @__fpga_bridge_get(%struct.device* %dev, %struct.fpga_image_info* %info) #0 !dbg !2245 {
entry:
  %retval = alloca %struct.fpga_bridge*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %info.addr = alloca %struct.fpga_image_info*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fpga_bridge*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2248, metadata !DIExpression()), !dbg !2249
  store %struct.fpga_image_info* %info, %struct.fpga_image_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_image_info** %info.addr, metadata !2250, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !2252, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2254, metadata !DIExpression()), !dbg !2255
  store i32 -19, i32* %ret, align 4, !dbg !2255
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2256, metadata !DIExpression()), !dbg !2258
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2258
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2258
  store i8* %1, i8** %__mptr, align 8, !dbg !2258
  br label %do.body, !dbg !2258

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2259

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2258
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !2258
  %3 = bitcast i8* %add.ptr to %struct.fpga_bridge*, !dbg !2258
  store %struct.fpga_bridge* %3, %struct.fpga_bridge** %tmp, align 8, !dbg !2259
  %4 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp, align 8, !dbg !2258
  store %struct.fpga_bridge* %4, %struct.fpga_bridge** %bridge, align 8, !dbg !2261
  %5 = load %struct.fpga_image_info*, %struct.fpga_image_info** %info.addr, align 8, !dbg !2262
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2263
  %info1 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %6, i32 0, i32 4, !dbg !2264
  store %struct.fpga_image_info* %5, %struct.fpga_image_info** %info1, align 8, !dbg !2265
  %7 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2266
  %mutex = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %7, i32 0, i32 2, !dbg !2268
  %call = call i32 @mutex_trylock(%struct.mutex* %mutex) #11, !dbg !2269
  %tobool = icmp ne i32 %call, 0, !dbg !2269
  br i1 %tobool, label %if.end, label %if.then, !dbg !2270

if.then:                                          ; preds = %do.end
  store i32 -16, i32* %ret, align 4, !dbg !2271
  br label %err_dev, !dbg !2273

if.end:                                           ; preds = %do.end
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2274
  %parent = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1, !dbg !2276
  %9 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2276
  %driver = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 6, !dbg !2277
  %10 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2277
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %10, i32 0, i32 2, !dbg !2278
  %11 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2278
  %call2 = call zeroext i1 @try_module_get(%struct.module* %11) #11, !dbg !2279
  br i1 %call2, label %if.end4, label %if.then3, !dbg !2280

if.then3:                                         ; preds = %if.end
  br label %err_ll_mod, !dbg !2281

if.end4:                                          ; preds = %if.end
  %12 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2282
  store %struct.fpga_bridge* %12, %struct.fpga_bridge** %retval, align 8, !dbg !2283
  br label %return, !dbg !2283

err_ll_mod:                                       ; preds = %if.then3
  call void @llvm.dbg.label(metadata !2284), !dbg !2285
  %13 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2286
  %mutex5 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %13, i32 0, i32 2, !dbg !2287
  call void @mutex_unlock(%struct.mutex* %mutex5) #11, !dbg !2288
  br label %err_dev, !dbg !2288

err_dev:                                          ; preds = %err_ll_mod, %if.then
  call void @llvm.dbg.label(metadata !2289), !dbg !2290
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2291
  call void @put_device(%struct.device* %14) #11, !dbg !2292
  %15 = load i32, i32* %ret, align 4, !dbg !2293
  %conv = sext i32 %15 to i64, !dbg !2293
  %call6 = call i8* @ERR_PTR(i64 %conv) #11, !dbg !2294
  %16 = bitcast i8* %call6 to %struct.fpga_bridge*, !dbg !2294
  store %struct.fpga_bridge* %16, %struct.fpga_bridge** %retval, align 8, !dbg !2295
  br label %return, !dbg !2295

return:                                           ; preds = %err_dev, %if.end4
  %17 = load %struct.fpga_bridge*, %struct.fpga_bridge** %retval, align 8, !dbg !2296
  ret %struct.fpga_bridge* %17, !dbg !2296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fpga_bridge* @fpga_bridge_get(%struct.device* %dev, %struct.fpga_image_info* %info) #0 !dbg !2297 {
entry:
  %retval = alloca %struct.fpga_bridge*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %info.addr = alloca %struct.fpga_image_info*, align 8
  %bridge_dev = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2298, metadata !DIExpression()), !dbg !2299
  store %struct.fpga_image_info* %info, %struct.fpga_image_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_image_info** %info.addr, metadata !2300, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.declare(metadata %struct.device** %bridge_dev, metadata !2302, metadata !DIExpression()), !dbg !2303
  %0 = load %struct.class*, %struct.class** @fpga_bridge_class, align 8, !dbg !2304
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2305
  %2 = bitcast %struct.device* %1 to i8*, !dbg !2305
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @fpga_bridge_dev_match) #11, !dbg !2306
  store %struct.device* %call, %struct.device** %bridge_dev, align 8, !dbg !2307
  %3 = load %struct.device*, %struct.device** %bridge_dev, align 8, !dbg !2308
  %tobool = icmp ne %struct.device* %3, null, !dbg !2308
  br i1 %tobool, label %if.end, label %if.then, !dbg !2310

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -19) #11, !dbg !2311
  %4 = bitcast i8* %call1 to %struct.fpga_bridge*, !dbg !2311
  store %struct.fpga_bridge* %4, %struct.fpga_bridge** %retval, align 8, !dbg !2312
  br label %return, !dbg !2312

if.end:                                           ; preds = %entry
  %5 = load %struct.device*, %struct.device** %bridge_dev, align 8, !dbg !2313
  %6 = load %struct.fpga_image_info*, %struct.fpga_image_info** %info.addr, align 8, !dbg !2314
  %call2 = call %struct.fpga_bridge* @__fpga_bridge_get(%struct.device* %5, %struct.fpga_image_info* %6) #11, !dbg !2315
  store %struct.fpga_bridge* %call2, %struct.fpga_bridge** %retval, align 8, !dbg !2316
  br label %return, !dbg !2316

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.fpga_bridge*, %struct.fpga_bridge** %retval, align 8, !dbg !2317
  ret %struct.fpga_bridge* %7, !dbg !2317
}

; Function Attrs: noredzone
declare dso_local %struct.device* @class_find_device(%struct.class*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fpga_bridge_dev_match(%struct.device* %dev, i8* %data) #0 !dbg !2318 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2321, metadata !DIExpression()), !dbg !2322
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2323, metadata !DIExpression()), !dbg !2324
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2325
  %parent = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 1, !dbg !2326
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2326
  %2 = load i8*, i8** %data.addr, align 8, !dbg !2327
  %3 = bitcast i8* %2 to %struct.device*, !dbg !2327
  %cmp = icmp eq %struct.device* %1, %3, !dbg !2328
  %conv = zext i1 %cmp to i32, !dbg !2328
  ret i32 %conv, !dbg !2329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fpga_bridge_put(%struct.fpga_bridge* %bridge) #0 !dbg !2330 {
entry:
  %bridge.addr = alloca %struct.fpga_bridge*, align 8
  store %struct.fpga_bridge* %bridge, %struct.fpga_bridge** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  %0 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2333
  %info = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %0, i32 0, i32 4, !dbg !2334
  store %struct.fpga_image_info* null, %struct.fpga_image_info** %info, align 8, !dbg !2335
  %1 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2336
  %dev = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %1, i32 0, i32 1, !dbg !2337
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2338
  %2 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2338
  %driver = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2339
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2339
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 2, !dbg !2340
  %4 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2340
  call void @module_put(%struct.module* %4) #11, !dbg !2341
  %5 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2342
  %mutex = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %5, i32 0, i32 2, !dbg !2343
  call void @mutex_unlock(%struct.mutex* %mutex) #11, !dbg !2344
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !2345
  %dev1 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %6, i32 0, i32 1, !dbg !2346
  call void @put_device(%struct.device* %dev1) #11, !dbg !2347
  ret void, !dbg !2348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !2349 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2353, metadata !DIExpression()), !dbg !2354
  ret void, !dbg !2355
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fpga_bridges_enable(%struct.list_head* %bridge_list) #0 !dbg !2356 {
entry:
  %retval = alloca i32, align 4
  %bridge_list.addr = alloca %struct.list_head*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fpga_bridge*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp6 = alloca %struct.fpga_bridge*, align 8
  store %struct.list_head* %bridge_list, %struct.list_head** %bridge_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %bridge_list.addr, metadata !2359, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !2361, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2363, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2365, metadata !DIExpression()), !dbg !2368
  %0 = load %struct.list_head*, %struct.list_head** %bridge_list.addr, align 8, !dbg !2368
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2368
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2368
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !2368
  store i8* %2, i8** %__mptr, align 8, !dbg !2368
  br label %do.body, !dbg !2368

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2369

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2368
  %add.ptr = getelementptr i8, i8* %3, i64 -744, !dbg !2368
  %4 = bitcast i8* %add.ptr to %struct.fpga_bridge*, !dbg !2368
  store %struct.fpga_bridge* %4, %struct.fpga_bridge** %tmp, align 8, !dbg !2369
  %5 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp, align 8, !dbg !2368
  store %struct.fpga_bridge* %5, %struct.fpga_bridge** %bridge, align 8, !dbg !2371
  br label %for.cond, !dbg !2371

for.cond:                                         ; preds = %do.end5, %do.end
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2372
  %node = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %6, i32 0, i32 5, !dbg !2372
  %7 = load %struct.list_head*, %struct.list_head** %bridge_list.addr, align 8, !dbg !2372
  %cmp = icmp eq %struct.list_head* %node, %7, !dbg !2372
  %lnot = xor i1 %cmp, true, !dbg !2372
  br i1 %lnot, label %for.body, label %for.end, !dbg !2371

for.body:                                         ; preds = %for.cond
  %8 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2374
  %call = call i32 @fpga_bridge_enable(%struct.fpga_bridge* %8) #11, !dbg !2376
  store i32 %call, i32* %ret, align 4, !dbg !2377
  %9 = load i32, i32* %ret, align 4, !dbg !2378
  %tobool = icmp ne i32 %9, 0, !dbg !2378
  br i1 %tobool, label %if.then, label %if.end, !dbg !2380

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %ret, align 4, !dbg !2381
  store i32 %10, i32* %retval, align 4, !dbg !2382
  br label %return, !dbg !2382

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2383

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2384, metadata !DIExpression()), !dbg !2386
  %11 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2386
  %node2 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %11, i32 0, i32 5, !dbg !2386
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %node2, i32 0, i32 0, !dbg !2386
  %12 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !2386
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !2386
  store i8* %13, i8** %__mptr1, align 8, !dbg !2386
  br label %do.body4, !dbg !2386

do.body4:                                         ; preds = %for.inc
  br label %do.end5, !dbg !2387

do.end5:                                          ; preds = %do.body4
  %14 = load i8*, i8** %__mptr1, align 8, !dbg !2386
  %add.ptr7 = getelementptr i8, i8* %14, i64 -744, !dbg !2386
  %15 = bitcast i8* %add.ptr7 to %struct.fpga_bridge*, !dbg !2386
  store %struct.fpga_bridge* %15, %struct.fpga_bridge** %tmp6, align 8, !dbg !2387
  %16 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp6, align 8, !dbg !2386
  store %struct.fpga_bridge* %16, %struct.fpga_bridge** %bridge, align 8, !dbg !2372
  br label %for.cond, !dbg !2372, !llvm.loop !2389

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2391
  br label %return, !dbg !2391

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !2392
  ret i32 %17, !dbg !2392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fpga_bridges_disable(%struct.list_head* %bridge_list) #0 !dbg !2393 {
entry:
  %retval = alloca i32, align 4
  %bridge_list.addr = alloca %struct.list_head*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fpga_bridge*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp6 = alloca %struct.fpga_bridge*, align 8
  store %struct.list_head* %bridge_list, %struct.list_head** %bridge_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %bridge_list.addr, metadata !2394, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !2396, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2398, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2400, metadata !DIExpression()), !dbg !2403
  %0 = load %struct.list_head*, %struct.list_head** %bridge_list.addr, align 8, !dbg !2403
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2403
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2403
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !2403
  store i8* %2, i8** %__mptr, align 8, !dbg !2403
  br label %do.body, !dbg !2403

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2404

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2403
  %add.ptr = getelementptr i8, i8* %3, i64 -744, !dbg !2403
  %4 = bitcast i8* %add.ptr to %struct.fpga_bridge*, !dbg !2403
  store %struct.fpga_bridge* %4, %struct.fpga_bridge** %tmp, align 8, !dbg !2404
  %5 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp, align 8, !dbg !2403
  store %struct.fpga_bridge* %5, %struct.fpga_bridge** %bridge, align 8, !dbg !2406
  br label %for.cond, !dbg !2406

for.cond:                                         ; preds = %do.end5, %do.end
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2407
  %node = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %6, i32 0, i32 5, !dbg !2407
  %7 = load %struct.list_head*, %struct.list_head** %bridge_list.addr, align 8, !dbg !2407
  %cmp = icmp eq %struct.list_head* %node, %7, !dbg !2407
  %lnot = xor i1 %cmp, true, !dbg !2407
  br i1 %lnot, label %for.body, label %for.end, !dbg !2406

for.body:                                         ; preds = %for.cond
  %8 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2409
  %call = call i32 @fpga_bridge_disable(%struct.fpga_bridge* %8) #11, !dbg !2411
  store i32 %call, i32* %ret, align 4, !dbg !2412
  %9 = load i32, i32* %ret, align 4, !dbg !2413
  %tobool = icmp ne i32 %9, 0, !dbg !2413
  br i1 %tobool, label %if.then, label %if.end, !dbg !2415

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %ret, align 4, !dbg !2416
  store i32 %10, i32* %retval, align 4, !dbg !2417
  br label %return, !dbg !2417

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2418

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2419, metadata !DIExpression()), !dbg !2421
  %11 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2421
  %node2 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %11, i32 0, i32 5, !dbg !2421
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %node2, i32 0, i32 0, !dbg !2421
  %12 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !2421
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !2421
  store i8* %13, i8** %__mptr1, align 8, !dbg !2421
  br label %do.body4, !dbg !2421

do.body4:                                         ; preds = %for.inc
  br label %do.end5, !dbg !2422

do.end5:                                          ; preds = %do.body4
  %14 = load i8*, i8** %__mptr1, align 8, !dbg !2421
  %add.ptr7 = getelementptr i8, i8* %14, i64 -744, !dbg !2421
  %15 = bitcast i8* %add.ptr7 to %struct.fpga_bridge*, !dbg !2421
  store %struct.fpga_bridge* %15, %struct.fpga_bridge** %tmp6, align 8, !dbg !2422
  %16 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp6, align 8, !dbg !2421
  store %struct.fpga_bridge* %16, %struct.fpga_bridge** %bridge, align 8, !dbg !2407
  br label %for.cond, !dbg !2407, !llvm.loop !2424

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2426
  br label %return, !dbg !2426

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !2427
  ret i32 %17, !dbg !2427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fpga_bridges_put(%struct.list_head* %bridge_list) #0 !dbg !2428 {
entry:
  %lock.addr.i39 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i39, metadata !2431, metadata !DIExpression()), !dbg !2437
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2442, metadata !DIExpression()), !dbg !2443
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2444, metadata !DIExpression()), !dbg !2449
  %bridge_list.addr = alloca %struct.list_head*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %next = alloca %struct.fpga_bridge*, align 8
  %flags = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fpga_bridge*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.fpga_bridge*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  %__mptr32 = alloca i8*, align 8
  %tmp37 = alloca %struct.fpga_bridge*, align 8
  store %struct.list_head* %bridge_list, %struct.list_head** %bridge_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %bridge_list.addr, metadata !2456, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %next, metadata !2460, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2462, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2464, metadata !DIExpression()), !dbg !2466
  %0 = load %struct.list_head*, %struct.list_head** %bridge_list.addr, align 8, !dbg !2466
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2466
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !2466
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !2466
  store i8* %2, i8** %__mptr, align 8, !dbg !2466
  br label %do.body, !dbg !2466

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2467

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2466
  %add.ptr = getelementptr i8, i8* %3, i64 -744, !dbg !2466
  %4 = bitcast i8* %add.ptr to %struct.fpga_bridge*, !dbg !2466
  store %struct.fpga_bridge* %4, %struct.fpga_bridge** %tmp, align 8, !dbg !2467
  %5 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp, align 8, !dbg !2466
  store %struct.fpga_bridge* %5, %struct.fpga_bridge** %bridge, align 8, !dbg !2469
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2470, metadata !DIExpression()), !dbg !2472
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2472
  %node = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %6, i32 0, i32 5, !dbg !2472
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !2472
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !2472
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !2472
  store i8* %8, i8** %__mptr2, align 8, !dbg !2472
  br label %do.body4, !dbg !2472

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2473

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !2472
  %add.ptr7 = getelementptr i8, i8* %9, i64 -744, !dbg !2472
  %10 = bitcast i8* %add.ptr7 to %struct.fpga_bridge*, !dbg !2472
  store %struct.fpga_bridge* %10, %struct.fpga_bridge** %tmp6, align 8, !dbg !2473
  %11 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp6, align 8, !dbg !2472
  store %struct.fpga_bridge* %11, %struct.fpga_bridge** %next, align 8, !dbg !2469
  br label %for.cond, !dbg !2469

for.cond:                                         ; preds = %do.end36, %do.end5
  %12 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2475
  %node8 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %12, i32 0, i32 5, !dbg !2475
  %13 = load %struct.list_head*, %struct.list_head** %bridge_list.addr, align 8, !dbg !2475
  %cmp = icmp eq %struct.list_head* %node8, %13, !dbg !2475
  %lnot = xor i1 %cmp, true, !dbg !2475
  br i1 %lnot, label %for.body, label %for.end, !dbg !2469

for.body:                                         ; preds = %for.cond
  %14 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2476
  call void @fpga_bridge_put(%struct.fpga_bridge* %14) #11, !dbg !2477
  br label %do.body9, !dbg !2478

do.body9:                                         ; preds = %for.body
  br label %do.body10, !dbg !2479

do.body10:                                        ; preds = %do.body9
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2483, metadata !DIExpression()), !dbg !2482
  %cmp11 = icmp eq i64* %__dummy, %__dummy2, !dbg !2482
  %conv = zext i1 %cmp11 to i32, !dbg !2482
  store i32 1, i32* %tmp12, align 4, !dbg !2482
  %15 = load i32, i32* %tmp12, align 4, !dbg !2482
  br label %do.body13, !dbg !2484

do.body13:                                        ; preds = %do.body10
  br label %do.body14, !dbg !2485

do.body14:                                        ; preds = %do.body13
  br label %do.body15, !dbg !2486

do.body15:                                        ; preds = %do.body14
  call void @llvm.dbg.declare(metadata i64* %__dummy16, metadata !2488, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.declare(metadata i64* %__dummy217, metadata !2492, metadata !DIExpression()), !dbg !2491
  %cmp18 = icmp eq i64* %__dummy16, %__dummy217, !dbg !2491
  %conv19 = zext i1 %cmp18 to i32, !dbg !2491
  store i32 1, i32* %tmp20, align 4, !dbg !2491
  %16 = load i32, i32* %tmp20, align 4, !dbg !2491
  %call = call i64 @arch_local_irq_save() #11, !dbg !2493
  store i64 %call, i64* %flags, align 8, !dbg !2493
  br label %do.end21, !dbg !2493

do.end21:                                         ; preds = %do.body15
  br label %do.end22, !dbg !2486

do.end22:                                         ; preds = %do.end21
  br label %do.body23, !dbg !2485

do.body23:                                        ; preds = %do.end22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !2494, !srcloc !2495
  br label %do.body24, !dbg !2494

do.body24:                                        ; preds = %do.body23
  store %struct.spinlock* @bridge_list_lock, %struct.spinlock** %lock.addr.i, align 8
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2496
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !2497
  %rlock.i = bitcast %union.anon* %18 to %struct.raw_spinlock*, !dbg !2497
  br label %do.end26, !dbg !2498

do.end26:                                         ; preds = %do.body24
  br label %do.end27, !dbg !2494

do.end27:                                         ; preds = %do.end26
  br label %do.end28, !dbg !2485

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !2484

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !2479

do.end30:                                         ; preds = %do.end29
  %19 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2499
  %node31 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %19, i32 0, i32 5, !dbg !2500
  call void @list_del(%struct.list_head* %node31) #11, !dbg !2501
  %20 = load i64, i64* %flags, align 8, !dbg !2502
  store %struct.spinlock* @bridge_list_lock, %struct.spinlock** %lock.addr.i39, align 8
  store i64 %20, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !109, metadata !2503, metadata !DIExpression()) #6, !dbg !2506
  call void @llvm.dbg.declare(metadata !109, metadata !2507, metadata !DIExpression()) #6, !dbg !2506
  store i32 1, i32* %tmp.i, align 4, !dbg !2506
  %21 = load i32, i32* %tmp.i, align 4, !dbg !2506
  call void @llvm.dbg.declare(metadata !109, metadata !2508, metadata !DIExpression()) #6, !dbg !2513
  call void @llvm.dbg.declare(metadata !109, metadata !2514, metadata !DIExpression()) #6, !dbg !2513
  store i32 1, i32* %tmp8.i, align 4, !dbg !2513
  %22 = load i32, i32* %tmp8.i, align 4, !dbg !2513
  %23 = load i64, i64* %flags.addr.i, align 8, !dbg !2515
  call void @arch_local_irq_restore(i64 %23) #12, !dbg !2515
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !2516, !srcloc !2518
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i39, align 8, !dbg !2519
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !2519
  %rlock.i40 = bitcast %union.anon* %25 to %struct.raw_spinlock*, !dbg !2519
  br label %for.inc, !dbg !2521

for.inc:                                          ; preds = %do.end30
  %26 = load %struct.fpga_bridge*, %struct.fpga_bridge** %next, align 8, !dbg !2475
  store %struct.fpga_bridge* %26, %struct.fpga_bridge** %bridge, align 8, !dbg !2475
  call void @llvm.dbg.declare(metadata i8** %__mptr32, metadata !2522, metadata !DIExpression()), !dbg !2524
  %27 = load %struct.fpga_bridge*, %struct.fpga_bridge** %next, align 8, !dbg !2524
  %node33 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %27, i32 0, i32 5, !dbg !2524
  %next34 = getelementptr inbounds %struct.list_head, %struct.list_head* %node33, i32 0, i32 0, !dbg !2524
  %28 = load %struct.list_head*, %struct.list_head** %next34, align 8, !dbg !2524
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !2524
  store i8* %29, i8** %__mptr32, align 8, !dbg !2524
  br label %do.body35, !dbg !2524

do.body35:                                        ; preds = %for.inc
  br label %do.end36, !dbg !2525

do.end36:                                         ; preds = %do.body35
  %30 = load i8*, i8** %__mptr32, align 8, !dbg !2524
  %add.ptr38 = getelementptr i8, i8* %30, i64 -744, !dbg !2524
  %31 = bitcast i8* %add.ptr38 to %struct.fpga_bridge*, !dbg !2524
  store %struct.fpga_bridge* %31, %struct.fpga_bridge** %tmp37, align 8, !dbg !2525
  %32 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp37, align 8, !dbg !2524
  store %struct.fpga_bridge* %32, %struct.fpga_bridge** %next, align 8, !dbg !2475
  br label %for.cond, !dbg !2475, !llvm.loop !2527

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2530 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2534, metadata !DIExpression()), !dbg !2535
  %call = call i64 @arch_local_save_flags() #11, !dbg !2536
  store i64 %call, i64* %f, align 8, !dbg !2537
  call void @arch_local_irq_disable() #11, !dbg !2538
  %0 = load i64, i64* %f, align 8, !dbg !2539
  ret i64 %0, !dbg !2540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2541 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2543, metadata !DIExpression()), !dbg !2544
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2545
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !2546
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2547
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2548
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2549
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2550
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2551
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2552
  ret void, !dbg !2553
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_fpga_bridge_get_to_list(%struct.device_node* %np, %struct.fpga_image_info* %info, %struct.list_head* %bridge_list) #0 !dbg !2554 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !2431, metadata !DIExpression()), !dbg !2557
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2442, metadata !DIExpression()), !dbg !2559
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2444, metadata !DIExpression()), !dbg !2560
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %info.addr = alloca %struct.fpga_image_info*, align 8
  %bridge_list.addr = alloca %struct.list_head*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2567, metadata !DIExpression()), !dbg !2568
  store %struct.fpga_image_info* %info, %struct.fpga_image_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_image_info** %info.addr, metadata !2569, metadata !DIExpression()), !dbg !2570
  store %struct.list_head* %bridge_list, %struct.list_head** %bridge_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %bridge_list.addr, metadata !2571, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !2573, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2575, metadata !DIExpression()), !dbg !2576
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2577
  %1 = load %struct.fpga_image_info*, %struct.fpga_image_info** %info.addr, align 8, !dbg !2578
  %call = call %struct.fpga_bridge* @of_fpga_bridge_get(%struct.device_node* %0, %struct.fpga_image_info* %1) #11, !dbg !2579
  store %struct.fpga_bridge* %call, %struct.fpga_bridge** %bridge, align 8, !dbg !2580
  %2 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2581
  %3 = bitcast %struct.fpga_bridge* %2 to i8*, !dbg !2581
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #11, !dbg !2583
  br i1 %call1, label %if.then, label %if.end, !dbg !2584

if.then:                                          ; preds = %entry
  %4 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2585
  %5 = bitcast %struct.fpga_bridge* %4 to i8*, !dbg !2585
  %call2 = call i64 @PTR_ERR(i8* %5) #11, !dbg !2586
  %conv = trunc i64 %call2 to i32, !dbg !2586
  store i32 %conv, i32* %retval, align 4, !dbg !2587
  br label %return, !dbg !2587

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2588

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !2589

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2593, metadata !DIExpression()), !dbg !2592
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2592
  %conv4 = zext i1 %cmp to i32, !dbg !2592
  store i32 1, i32* %tmp, align 4, !dbg !2592
  %6 = load i32, i32* %tmp, align 4, !dbg !2592
  br label %do.body5, !dbg !2594

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !2595

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !2596

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !2598, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !2602, metadata !DIExpression()), !dbg !2601
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !2601
  %conv11 = zext i1 %cmp10 to i32, !dbg !2601
  store i32 1, i32* %tmp12, align 4, !dbg !2601
  %7 = load i32, i32* %tmp12, align 4, !dbg !2601
  %call13 = call i64 @arch_local_irq_save() #11, !dbg !2603
  store i64 %call13, i64* %flags, align 8, !dbg !2603
  br label %do.end, !dbg !2603

do.end:                                           ; preds = %do.body7
  br label %do.end14, !dbg !2596

do.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !2595

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !2604, !srcloc !2605
  br label %do.body16, !dbg !2604

do.body16:                                        ; preds = %do.body15
  store %struct.spinlock* @bridge_list_lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2606
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2607
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2607
  br label %do.end18, !dbg !2608

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !2604

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2595

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2594

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !2589

do.end22:                                         ; preds = %do.end21
  %10 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2609
  %node = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %10, i32 0, i32 5, !dbg !2610
  %11 = load %struct.list_head*, %struct.list_head** %bridge_list.addr, align 8, !dbg !2611
  call void @list_add(%struct.list_head* %node, %struct.list_head* %11) #11, !dbg !2612
  %12 = load i64, i64* %flags, align 8, !dbg !2613
  store %struct.spinlock* @bridge_list_lock, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !109, metadata !2503, metadata !DIExpression()) #6, !dbg !2614
  call void @llvm.dbg.declare(metadata !109, metadata !2507, metadata !DIExpression()) #6, !dbg !2614
  store i32 1, i32* %tmp.i, align 4, !dbg !2614
  %13 = load i32, i32* %tmp.i, align 4, !dbg !2614
  call void @llvm.dbg.declare(metadata !109, metadata !2508, metadata !DIExpression()) #6, !dbg !2615
  call void @llvm.dbg.declare(metadata !109, metadata !2514, metadata !DIExpression()) #6, !dbg !2615
  store i32 1, i32* %tmp8.i, align 4, !dbg !2615
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !2615
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !2616
  call void @arch_local_irq_restore(i64 %15) #12, !dbg !2616
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !2617, !srcloc !2518
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !2618
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !2618
  %rlock.i24 = bitcast %union.anon* %17 to %struct.raw_spinlock*, !dbg !2618
  store i32 0, i32* %retval, align 4, !dbg !2619
  br label %return, !dbg !2619

return:                                           ; preds = %do.end22, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !2620
  ret i32 %18, !dbg !2620
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2621 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2624, metadata !DIExpression()), !dbg !2625
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2626
  %1 = ptrtoint i8* %0 to i64, !dbg !2626
  %2 = inttoptr i64 %1 to i8*, !dbg !2626
  %3 = ptrtoint i8* %2 to i64, !dbg !2626
  %cmp = icmp uge i64 %3, -4095, !dbg !2626
  %lnot = xor i1 %cmp, true, !dbg !2626
  %lnot1 = xor i1 %lnot, true, !dbg !2626
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2626
  %conv = sext i32 %lnot.ext to i64, !dbg !2626
  %tobool = icmp ne i64 %conv, 0, !dbg !2626
  ret i1 %tobool, !dbg !2627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2628 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2633
  %1 = ptrtoint i8* %0 to i64, !dbg !2634
  ret i64 %1, !dbg !2635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2636 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2639, metadata !DIExpression()), !dbg !2640
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2641, metadata !DIExpression()), !dbg !2642
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2643
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2644
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2645
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !2646
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2646
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #11, !dbg !2647
  ret void, !dbg !2648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fpga_bridge_get_to_list(%struct.device* %dev, %struct.fpga_image_info* %info, %struct.list_head* %bridge_list) #0 !dbg !2649 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !2431, metadata !DIExpression()), !dbg !2652
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2442, metadata !DIExpression()), !dbg !2654
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2444, metadata !DIExpression()), !dbg !2655
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %info.addr = alloca %struct.fpga_image_info*, align 8
  %bridge_list.addr = alloca %struct.list_head*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2662, metadata !DIExpression()), !dbg !2663
  store %struct.fpga_image_info* %info, %struct.fpga_image_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_image_info** %info.addr, metadata !2664, metadata !DIExpression()), !dbg !2665
  store %struct.list_head* %bridge_list, %struct.list_head** %bridge_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %bridge_list.addr, metadata !2666, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2670, metadata !DIExpression()), !dbg !2671
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2672
  %1 = load %struct.fpga_image_info*, %struct.fpga_image_info** %info.addr, align 8, !dbg !2673
  %call = call %struct.fpga_bridge* @fpga_bridge_get(%struct.device* %0, %struct.fpga_image_info* %1) #11, !dbg !2674
  store %struct.fpga_bridge* %call, %struct.fpga_bridge** %bridge, align 8, !dbg !2675
  %2 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2676
  %3 = bitcast %struct.fpga_bridge* %2 to i8*, !dbg !2676
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #11, !dbg !2678
  br i1 %call1, label %if.then, label %if.end, !dbg !2679

if.then:                                          ; preds = %entry
  %4 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2680
  %5 = bitcast %struct.fpga_bridge* %4 to i8*, !dbg !2680
  %call2 = call i64 @PTR_ERR(i8* %5) #11, !dbg !2681
  %conv = trunc i64 %call2 to i32, !dbg !2681
  store i32 %conv, i32* %retval, align 4, !dbg !2682
  br label %return, !dbg !2682

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2683

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !2684

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2685, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2688, metadata !DIExpression()), !dbg !2687
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2687
  %conv4 = zext i1 %cmp to i32, !dbg !2687
  store i32 1, i32* %tmp, align 4, !dbg !2687
  %6 = load i32, i32* %tmp, align 4, !dbg !2687
  br label %do.body5, !dbg !2689

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !2690

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !2691

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !2697, metadata !DIExpression()), !dbg !2696
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !2696
  %conv11 = zext i1 %cmp10 to i32, !dbg !2696
  store i32 1, i32* %tmp12, align 4, !dbg !2696
  %7 = load i32, i32* %tmp12, align 4, !dbg !2696
  %call13 = call i64 @arch_local_irq_save() #11, !dbg !2698
  store i64 %call13, i64* %flags, align 8, !dbg !2698
  br label %do.end, !dbg !2698

do.end:                                           ; preds = %do.body7
  br label %do.end14, !dbg !2691

do.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !2690

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !2699, !srcloc !2700
  br label %do.body16, !dbg !2699

do.body16:                                        ; preds = %do.body15
  store %struct.spinlock* @bridge_list_lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2701
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2702
  %rlock.i = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2702
  br label %do.end18, !dbg !2703

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !2699

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !2690

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !2689

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !2684

do.end22:                                         ; preds = %do.end21
  %10 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2704
  %node = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %10, i32 0, i32 5, !dbg !2705
  %11 = load %struct.list_head*, %struct.list_head** %bridge_list.addr, align 8, !dbg !2706
  call void @list_add(%struct.list_head* %node, %struct.list_head* %11) #11, !dbg !2707
  %12 = load i64, i64* %flags, align 8, !dbg !2708
  store %struct.spinlock* @bridge_list_lock, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !109, metadata !2503, metadata !DIExpression()) #6, !dbg !2709
  call void @llvm.dbg.declare(metadata !109, metadata !2507, metadata !DIExpression()) #6, !dbg !2709
  store i32 1, i32* %tmp.i, align 4, !dbg !2709
  %13 = load i32, i32* %tmp.i, align 4, !dbg !2709
  call void @llvm.dbg.declare(metadata !109, metadata !2508, metadata !DIExpression()) #6, !dbg !2710
  call void @llvm.dbg.declare(metadata !109, metadata !2514, metadata !DIExpression()) #6, !dbg !2710
  store i32 1, i32* %tmp8.i, align 4, !dbg !2710
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !2710
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !2711
  call void @arch_local_irq_restore(i64 %15) #12, !dbg !2711
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !2712, !srcloc !2518
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !2713
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !2713
  %rlock.i24 = bitcast %union.anon* %17 to %struct.raw_spinlock*, !dbg !2713
  store i32 0, i32* %retval, align 4, !dbg !2714
  br label %return, !dbg !2714

return:                                           ; preds = %do.end22, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !2715
  ret i32 %18, !dbg !2715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fpga_bridge* @fpga_bridge_create(%struct.device* %dev, i8* %name, %struct.fpga_bridge_ops* %br_ops, i8* %priv) #0 !dbg !2090 {
entry:
  %retval = alloca %struct.fpga_bridge*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %br_ops.addr = alloca %struct.fpga_bridge_ops*, align 8
  %priv.addr = alloca i8*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %id = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2716, metadata !DIExpression()), !dbg !2717
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2718, metadata !DIExpression()), !dbg !2719
  store %struct.fpga_bridge_ops* %br_ops, %struct.fpga_bridge_ops** %br_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge_ops** %br_ops.addr, metadata !2720, metadata !DIExpression()), !dbg !2721
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !2722, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !2724, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.declare(metadata i32* %id, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2728, metadata !DIExpression()), !dbg !2729
  %0 = load i8*, i8** %name.addr, align 8, !dbg !2730
  %tobool = icmp ne i8* %0, null, !dbg !2730
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2732

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2733
  %call = call i64 @strlen(i8* %1) #11, !dbg !2734
  %tobool1 = icmp ne i64 %call, 0, !dbg !2734
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2735

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2736
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #13, !dbg !2736
  store %struct.fpga_bridge* null, %struct.fpga_bridge** %retval, align 8, !dbg !2738
  br label %return, !dbg !2738

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i8* @kzalloc(i64 768, i32 3264) #11, !dbg !2739
  %3 = bitcast i8* %call2 to %struct.fpga_bridge*, !dbg !2739
  store %struct.fpga_bridge* %3, %struct.fpga_bridge** %bridge, align 8, !dbg !2740
  %4 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2741
  %tobool3 = icmp ne %struct.fpga_bridge* %4, null, !dbg !2741
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2743

if.then4:                                         ; preds = %if.end
  store %struct.fpga_bridge* null, %struct.fpga_bridge** %retval, align 8, !dbg !2744
  br label %return, !dbg !2744

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @ida_alloc_range(%struct.ida* @fpga_bridge_ida, i32 0, i32 -1, i32 3264) #11, !dbg !2745
  store i32 %call6, i32* %id, align 4, !dbg !2746
  %5 = load i32, i32* %id, align 4, !dbg !2747
  %cmp = icmp slt i32 %5, 0, !dbg !2749
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !2750

if.then7:                                         ; preds = %if.end5
  br label %error_kfree, !dbg !2751

if.end8:                                          ; preds = %if.end5
  br label %do.body, !dbg !2752

do.body:                                          ; preds = %if.end8
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2753
  %mutex = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %6, i32 0, i32 2, !dbg !2753
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @fpga_bridge_create.__key) #11, !dbg !2753
  br label %do.end, !dbg !2753

do.end:                                           ; preds = %do.body
  %7 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2755
  %node = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %7, i32 0, i32 5, !dbg !2756
  call void @INIT_LIST_HEAD(%struct.list_head* %node) #11, !dbg !2757
  %8 = load i8*, i8** %name.addr, align 8, !dbg !2758
  %9 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2759
  %name9 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %9, i32 0, i32 0, !dbg !2760
  store i8* %8, i8** %name9, align 8, !dbg !2761
  %10 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops.addr, align 8, !dbg !2762
  %11 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2763
  %br_ops10 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %11, i32 0, i32 3, !dbg !2764
  store %struct.fpga_bridge_ops* %10, %struct.fpga_bridge_ops** %br_ops10, align 8, !dbg !2765
  %12 = load i8*, i8** %priv.addr, align 8, !dbg !2766
  %13 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2767
  %priv11 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %13, i32 0, i32 6, !dbg !2768
  store i8* %12, i8** %priv11, align 8, !dbg !2769
  %14 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2770
  %dev12 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %14, i32 0, i32 1, !dbg !2771
  call void @device_initialize(%struct.device* %dev12) #11, !dbg !2772
  %15 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops.addr, align 8, !dbg !2773
  %groups = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %15, i32 0, i32 3, !dbg !2774
  %16 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8, !dbg !2774
  %17 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2775
  %dev13 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %17, i32 0, i32 1, !dbg !2776
  %groups14 = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 30, !dbg !2777
  store %struct.attribute_group** %16, %struct.attribute_group*** %groups14, align 8, !dbg !2778
  %18 = load %struct.class*, %struct.class** @fpga_bridge_class, align 8, !dbg !2779
  %19 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2780
  %dev15 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %19, i32 0, i32 1, !dbg !2781
  %class = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 29, !dbg !2782
  store %struct.class* %18, %struct.class** %class, align 8, !dbg !2783
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2784
  %21 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2785
  %dev16 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %21, i32 0, i32 1, !dbg !2786
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev16, i32 0, i32 1, !dbg !2787
  store %struct.device* %20, %struct.device** %parent, align 8, !dbg !2788
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2789
  %of_node = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 23, !dbg !2790
  %23 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2790
  %24 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2791
  %dev17 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %24, i32 0, i32 1, !dbg !2792
  %of_node18 = getelementptr inbounds %struct.device, %struct.device* %dev17, i32 0, i32 23, !dbg !2793
  store %struct.device_node* %23, %struct.device_node** %of_node18, align 8, !dbg !2794
  %25 = load i32, i32* %id, align 4, !dbg !2795
  %26 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2796
  %dev19 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %26, i32 0, i32 1, !dbg !2797
  %id20 = getelementptr inbounds %struct.device, %struct.device* %dev19, i32 0, i32 26, !dbg !2798
  store i32 %25, i32* %id20, align 4, !dbg !2799
  %27 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2800
  %dev21 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %27, i32 0, i32 1, !dbg !2801
  %28 = load i32, i32* %id, align 4, !dbg !2802
  %call22 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %28) #11, !dbg !2803
  store i32 %call22, i32* %ret, align 4, !dbg !2804
  %29 = load i32, i32* %ret, align 4, !dbg !2805
  %tobool23 = icmp ne i32 %29, 0, !dbg !2805
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2807

if.then24:                                        ; preds = %do.end
  br label %error_device, !dbg !2808

if.end25:                                         ; preds = %do.end
  %30 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2809
  store %struct.fpga_bridge* %30, %struct.fpga_bridge** %retval, align 8, !dbg !2810
  br label %return, !dbg !2810

error_device:                                     ; preds = %if.then24
  call void @llvm.dbg.label(metadata !2811), !dbg !2812
  %31 = load i32, i32* %id, align 4, !dbg !2813
  call void @ida_free(%struct.ida* @fpga_bridge_ida, i32 %31) #11, !dbg !2813
  br label %error_kfree, !dbg !2813

error_kfree:                                      ; preds = %error_device, %if.then7
  call void @llvm.dbg.label(metadata !2814), !dbg !2815
  %32 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !2816
  %33 = bitcast %struct.fpga_bridge* %32 to i8*, !dbg !2816
  call void @kfree(i8* %33) #11, !dbg !2817
  store %struct.fpga_bridge* null, %struct.fpga_bridge** %retval, align 8, !dbg !2818
  br label %return, !dbg !2818

return:                                           ; preds = %error_kfree, %if.end25, %if.then4, %if.then
  %34 = load %struct.fpga_bridge*, %struct.fpga_bridge** %retval, align 8, !dbg !2819
  ret %struct.fpga_bridge* %34, !dbg !2819
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2820 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2823, metadata !DIExpression()), !dbg !2827
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2833, metadata !DIExpression()), !dbg !2834
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2835, metadata !DIExpression()), !dbg !2836
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2837, metadata !DIExpression()), !dbg !2838
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2839, metadata !DIExpression()), !dbg !2843
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2845, metadata !DIExpression()), !dbg !2849
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2851, metadata !DIExpression()), !dbg !2855
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2860, metadata !DIExpression()), !dbg !2861
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2862, metadata !DIExpression()), !dbg !2863
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2864, metadata !DIExpression()), !dbg !2865
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2866, metadata !DIExpression()), !dbg !2867
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2868, metadata !DIExpression()), !dbg !2869
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2870, metadata !DIExpression()), !dbg !2871
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2872, metadata !DIExpression()), !dbg !2873
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2874, metadata !DIExpression()), !dbg !2875
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2876, metadata !DIExpression()), !dbg !2877
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2878, metadata !DIExpression()), !dbg !2879
  %0 = load i64, i64* %size.addr, align 8, !dbg !2880
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2881
  %or = or i32 %1, 256, !dbg !2882
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2883
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #6, !dbg !2884
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2885

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2886
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2887
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2888

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2889
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2890
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2891
  %call.i.i = call i32 @get_order(i64 %7) #14, !dbg !2892
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2869
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2893
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2894
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2895
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2896
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2897
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2898
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !2899
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2899
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2899
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2899
  call void @llvm.assume(i1 %maskcond.i.i.i) #6, !dbg !2899
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2900
  br label %kmalloc.exit, !dbg !2900

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2901
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2902
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2902
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2904

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2905
  br label %kmalloc_index.exit.i, !dbg !2905

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2906
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2908
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2909

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2910
  br label %kmalloc_index.exit.i, !dbg !2910

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2911
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2913
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2914

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2915
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2916
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2917

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2918
  br label %kmalloc_index.exit.i, !dbg !2918

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2919
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2921
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2922

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2923
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2924
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2925

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2926
  br label %kmalloc_index.exit.i, !dbg !2926

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2927
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2929
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2930

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2931
  br label %kmalloc_index.exit.i, !dbg !2931

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2932
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2934
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2935

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2936
  br label %kmalloc_index.exit.i, !dbg !2936

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2937
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2939
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2940

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2941
  br label %kmalloc_index.exit.i, !dbg !2941

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2942
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2944
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2945

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2946
  br label %kmalloc_index.exit.i, !dbg !2946

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2947
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2949
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2950

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2951
  br label %kmalloc_index.exit.i, !dbg !2951

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2952
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2954
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2955

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2956
  br label %kmalloc_index.exit.i, !dbg !2956

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2957
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2959
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2960

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2961
  br label %kmalloc_index.exit.i, !dbg !2961

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2962
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2964
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2965

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2966
  br label %kmalloc_index.exit.i, !dbg !2966

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2967
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2969
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2970

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2971
  br label %kmalloc_index.exit.i, !dbg !2971

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2972
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2974
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2975

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2976
  br label %kmalloc_index.exit.i, !dbg !2976

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2977
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2979
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2980

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2981
  br label %kmalloc_index.exit.i, !dbg !2981

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2982
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2984
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2985

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2986
  br label %kmalloc_index.exit.i, !dbg !2986

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2987
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2989
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2990

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2991
  br label %kmalloc_index.exit.i, !dbg !2991

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2992
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2994
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2995

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2996
  br label %kmalloc_index.exit.i, !dbg !2996

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2997
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2999
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3000

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3001
  br label %kmalloc_index.exit.i, !dbg !3001

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3002
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3004
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3005

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3006
  br label %kmalloc_index.exit.i, !dbg !3006

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3007
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3009
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3010

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3011
  br label %kmalloc_index.exit.i, !dbg !3011

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3012
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3014
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3015

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3016
  br label %kmalloc_index.exit.i, !dbg !3016

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3017
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3019
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3020

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3021
  br label %kmalloc_index.exit.i, !dbg !3021

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3022
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3024
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3025

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3026
  br label %kmalloc_index.exit.i, !dbg !3026

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3027
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3029
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3030

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3031
  br label %kmalloc_index.exit.i, !dbg !3031

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3032
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3034
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3035

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3036
  br label %kmalloc_index.exit.i, !dbg !3036

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3037
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3039
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3040

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3041
  br label %kmalloc_index.exit.i, !dbg !3041

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3042
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3044
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3045

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3046
  br label %kmalloc_index.exit.i, !dbg !3046

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #6, !dbg !3047, !srcloc !3050
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #6, !dbg !3051, !srcloc !3054
  unreachable, !dbg !3055

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3056
  store i32 %45, i32* %index.i, align 4, !dbg !3057
  %46 = load i32, i32* %index.i, align 4, !dbg !3058
  %tobool.i = icmp ne i32 %46, 0, !dbg !3058
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3060

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3061
  br label %kmalloc.exit, !dbg !3061

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3062
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3063
  %and.i.i = and i32 %48, 17, !dbg !3063
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3063
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3063
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3063
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3063
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3065

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3066
  br label %kmalloc_type.exit.i, !dbg !3066

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3067
  %and2.i.i = and i32 %49, 1, !dbg !3068
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3067
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3067
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3067
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3069
  br label %kmalloc_type.exit.i, !dbg !3069

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3070
  %idxprom.i = zext i32 %51 to i64, !dbg !3071
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3071
  %52 = load i32, i32* %index.i, align 4, !dbg !3072
  %idxprom6.i = zext i32 %52 to i64, !dbg !3071
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3071
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3071
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3073
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3074
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3075
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3076
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3077
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3077
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3077
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3077
  call void @llvm.assume(i1 %maskcond.i.i) #6, !dbg !3077
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2838
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3078
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3079
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3080
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3081
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3082
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3083
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3084
  store i8* %62, i8** %retval.i, align 8, !dbg !3085
  br label %kmalloc.exit, !dbg !3085

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3086
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3087
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3088
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3088
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3088
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3088
  call void @llvm.assume(i1 %maskcond.i) #6, !dbg !3088
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3089
  br label %kmalloc.exit, !dbg !3089

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3090
  ret i8* %65, !dbg !3091
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3092 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3093, metadata !DIExpression()), !dbg !3094
  br label %do.body, !dbg !3095

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3096

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3098

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3096

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3100
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3100
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3100
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3100
  br label %do.end3, !dbg !3100

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3096

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3102
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3103
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3104
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3105
  ret void, !dbg !3106
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fpga_bridge_free(%struct.fpga_bridge* %bridge) #0 !dbg !3107 {
entry:
  %bridge.addr = alloca %struct.fpga_bridge*, align 8
  store %struct.fpga_bridge* %bridge, %struct.fpga_bridge** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge.addr, metadata !3108, metadata !DIExpression()), !dbg !3109
  %0 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3110
  %dev = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %0, i32 0, i32 1, !dbg !3110
  %id = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 26, !dbg !3110
  %1 = load i32, i32* %id, align 4, !dbg !3110
  call void @ida_free(%struct.ida* @fpga_bridge_ida, i32 %1) #11, !dbg !3110
  %2 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3111
  %3 = bitcast %struct.fpga_bridge* %2 to i8*, !dbg !3111
  call void @kfree(i8* %3) #11, !dbg !3112
  ret void, !dbg !3113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fpga_bridge* @devm_fpga_bridge_create(%struct.device* %dev, i8* %name, %struct.fpga_bridge_ops* %br_ops, i8* %priv) #0 !dbg !3114 {
entry:
  %retval = alloca %struct.fpga_bridge*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %br_ops.addr = alloca %struct.fpga_bridge_ops*, align 8
  %priv.addr = alloca i8*, align 8
  %ptr = alloca %struct.fpga_bridge**, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3115, metadata !DIExpression()), !dbg !3116
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3117, metadata !DIExpression()), !dbg !3118
  store %struct.fpga_bridge_ops* %br_ops, %struct.fpga_bridge_ops** %br_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge_ops** %br_ops.addr, metadata !3119, metadata !DIExpression()), !dbg !3120
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge*** %ptr, metadata !3123, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !3125, metadata !DIExpression()), !dbg !3126
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_fpga_bridge_release, i64 8, i32 3264) #11, !dbg !3127
  %0 = bitcast i8* %call to %struct.fpga_bridge**, !dbg !3127
  store %struct.fpga_bridge** %0, %struct.fpga_bridge*** %ptr, align 8, !dbg !3128
  %1 = load %struct.fpga_bridge**, %struct.fpga_bridge*** %ptr, align 8, !dbg !3129
  %tobool = icmp ne %struct.fpga_bridge** %1, null, !dbg !3129
  br i1 %tobool, label %if.end, label %if.then, !dbg !3131

if.then:                                          ; preds = %entry
  store %struct.fpga_bridge* null, %struct.fpga_bridge** %retval, align 8, !dbg !3132
  br label %return, !dbg !3132

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3133
  %3 = load i8*, i8** %name.addr, align 8, !dbg !3134
  %4 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops.addr, align 8, !dbg !3135
  %5 = load i8*, i8** %priv.addr, align 8, !dbg !3136
  %call1 = call %struct.fpga_bridge* @fpga_bridge_create(%struct.device* %2, i8* %3, %struct.fpga_bridge_ops* %4, i8* %5) #11, !dbg !3137
  store %struct.fpga_bridge* %call1, %struct.fpga_bridge** %bridge, align 8, !dbg !3138
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3139
  %tobool2 = icmp ne %struct.fpga_bridge* %6, null, !dbg !3139
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3141

if.then3:                                         ; preds = %if.end
  %7 = load %struct.fpga_bridge**, %struct.fpga_bridge*** %ptr, align 8, !dbg !3142
  %8 = bitcast %struct.fpga_bridge** %7 to i8*, !dbg !3142
  call void @devres_free(i8* %8) #11, !dbg !3144
  br label %if.end4, !dbg !3145

if.else:                                          ; preds = %if.end
  %9 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3146
  %10 = load %struct.fpga_bridge**, %struct.fpga_bridge*** %ptr, align 8, !dbg !3148
  store %struct.fpga_bridge* %9, %struct.fpga_bridge** %10, align 8, !dbg !3149
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3150
  %12 = load %struct.fpga_bridge**, %struct.fpga_bridge*** %ptr, align 8, !dbg !3151
  %13 = bitcast %struct.fpga_bridge** %12 to i8*, !dbg !3151
  call void @devres_add(%struct.device* %11, i8* %13) #11, !dbg !3152
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %14 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3153
  store %struct.fpga_bridge* %14, %struct.fpga_bridge** %retval, align 8, !dbg !3154
  br label %return, !dbg !3154

return:                                           ; preds = %if.end4, %if.then
  %15 = load %struct.fpga_bridge*, %struct.fpga_bridge** %retval, align 8, !dbg !3155
  ret %struct.fpga_bridge* %15, !dbg !3155
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !3156 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3165, metadata !DIExpression()), !dbg !3166
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !3167, metadata !DIExpression()), !dbg !3168
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !3169
  %1 = load i64, i64* %size.addr, align 8, !dbg !3170
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !3171
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #11, !dbg !3172
  ret i8* %call, !dbg !3173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_fpga_bridge_release(%struct.device* %dev, i8* %res) #0 !dbg !3174 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3175, metadata !DIExpression()), !dbg !3176
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3177, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !3179, metadata !DIExpression()), !dbg !3180
  %0 = load i8*, i8** %res.addr, align 8, !dbg !3181
  %1 = bitcast i8* %0 to %struct.fpga_bridge**, !dbg !3182
  %2 = load %struct.fpga_bridge*, %struct.fpga_bridge** %1, align 8, !dbg !3183
  store %struct.fpga_bridge* %2, %struct.fpga_bridge** %bridge, align 8, !dbg !3180
  %3 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3184
  call void @fpga_bridge_free(%struct.fpga_bridge* %3) #11, !dbg !3185
  ret void, !dbg !3186
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fpga_bridge_register(%struct.fpga_bridge* %bridge) #0 !dbg !3187 {
entry:
  %retval = alloca i32, align 4
  %bridge.addr = alloca %struct.fpga_bridge*, align 8
  %dev = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.fpga_bridge* %bridge, %struct.fpga_bridge** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge.addr, metadata !3188, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3190, metadata !DIExpression()), !dbg !3191
  %0 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3192
  %dev1 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %0, i32 0, i32 1, !dbg !3193
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3194, metadata !DIExpression()), !dbg !3195
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3196
  %call = call i32 @device_add(%struct.device* %1) #11, !dbg !3197
  store i32 %call, i32* %ret, align 4, !dbg !3198
  %2 = load i32, i32* %ret, align 4, !dbg !3199
  %tobool = icmp ne i32 %2, 0, !dbg !3199
  br i1 %tobool, label %if.then, label %if.end, !dbg !3201

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !3202
  store i32 %3, i32* %retval, align 4, !dbg !3203
  br label %return, !dbg !3203

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3204
  %of_node = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 23, !dbg !3205
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3205
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3206
  %call2 = call i32 @of_platform_populate(%struct.device_node* %5, %struct.of_device_id* null, %struct.of_dev_auxdata* null, %struct.device* %6) #11, !dbg !3207
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3208
  %parent = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 1, !dbg !3208
  %8 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3208
  %9 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3208
  %name = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %9, i32 0, i32 0, !dbg !3208
  %10 = load i8*, i8** %name, align 8, !dbg !3208
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %10) #13, !dbg !3208
  store i32 0, i32* %retval, align 4, !dbg !3209
  br label %return, !dbg !3209

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3210
  ret i32 %11, !dbg !3210
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_platform_populate(%struct.device_node*, %struct.of_device_id*, %struct.of_dev_auxdata*, %struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fpga_bridge_unregister(%struct.fpga_bridge* %bridge) #0 !dbg !3211 {
entry:
  %bridge.addr = alloca %struct.fpga_bridge*, align 8
  store %struct.fpga_bridge* %bridge, %struct.fpga_bridge** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge.addr, metadata !3212, metadata !DIExpression()), !dbg !3213
  %0 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3214
  %br_ops = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %0, i32 0, i32 3, !dbg !3216
  %1 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops, align 8, !dbg !3216
  %tobool = icmp ne %struct.fpga_bridge_ops* %1, null, !dbg !3214
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3217

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3218
  %br_ops1 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %2, i32 0, i32 3, !dbg !3219
  %3 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops1, align 8, !dbg !3219
  %fpga_bridge_remove = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %3, i32 0, i32 2, !dbg !3220
  %4 = load void (%struct.fpga_bridge*)*, void (%struct.fpga_bridge*)** %fpga_bridge_remove, align 8, !dbg !3220
  %tobool2 = icmp ne void (%struct.fpga_bridge*)* %4, null, !dbg !3218
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3221

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3222
  %br_ops3 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %5, i32 0, i32 3, !dbg !3223
  %6 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops3, align 8, !dbg !3223
  %fpga_bridge_remove4 = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %6, i32 0, i32 2, !dbg !3224
  %7 = load void (%struct.fpga_bridge*)*, void (%struct.fpga_bridge*)** %fpga_bridge_remove4, align 8, !dbg !3224
  %8 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3225
  call void %7(%struct.fpga_bridge* %8) #11, !dbg !3222
  br label %if.end, !dbg !3222

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge.addr, align 8, !dbg !3226
  %dev = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %9, i32 0, i32 1, !dbg !3227
  call void @device_unregister(%struct.device* %dev) #11, !dbg !3228
  ret void, !dbg !3229
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @fpga_bridge_dev_exit() #4 section ".exit.text" !dbg !3230 {
entry:
  %0 = load %struct.class*, %struct.class** @fpga_bridge_class, align 8, !dbg !3231
  call void @class_destroy(%struct.class* %0) #11, !dbg !3232
  call void @ida_destroy(%struct.ida* @fpga_bridge_ida) #11, !dbg !3233
  ret void, !dbg !3234
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #2

; Function Attrs: noredzone
declare dso_local void @ida_destroy(%struct.ida*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @fpga_bridge_dev_init() #4 section ".init.text" !dbg !2131 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2444, metadata !DIExpression()), !dbg !3235
  %retval = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  %tmp = alloca %struct.class*, align 8
  br label %do.body, !dbg !3238

do.body:                                          ; preds = %entry
  store %struct.spinlock* @bridge_list_lock, %struct.spinlock** %lock.addr.i, align 8
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3239
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !3240
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !3240
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !3241
  %rlock = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !3241
  %3 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !3241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 bitcast (%struct.spinlock* @bridge_list_lock to i8*), i8* align 1 %3, i64 0, i1 false), !dbg !3241
  br label %do.end, !dbg !3241

do.end:                                           ; preds = %do.body
  %call1 = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* @fpga_bridge_dev_init.__key) #11, !dbg !3242
  store %struct.class* %call1, %struct.class** %tmp, align 8, !dbg !3242
  %4 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !3242
  store %struct.class* %4, %struct.class** @fpga_bridge_class, align 8, !dbg !3244
  %5 = load %struct.class*, %struct.class** @fpga_bridge_class, align 8, !dbg !3245
  %6 = bitcast %struct.class* %5 to i8*, !dbg !3245
  %call2 = call zeroext i1 @IS_ERR(i8* %6) #11, !dbg !3247
  br i1 %call2, label %if.then, label %if.end, !dbg !3248

if.then:                                          ; preds = %do.end
  %7 = load %struct.class*, %struct.class** @fpga_bridge_class, align 8, !dbg !3249
  %8 = bitcast %struct.class* %7 to i8*, !dbg !3249
  %call3 = call i64 @PTR_ERR(i8* %8) #11, !dbg !3250
  %conv = trunc i64 %call3 to i32, !dbg !3250
  store i32 %conv, i32* %retval, align 4, !dbg !3251
  br label %return, !dbg !3251

if.end:                                           ; preds = %do.end
  %9 = load %struct.class*, %struct.class** @fpga_bridge_class, align 8, !dbg !3252
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %9, i32 0, i32 3, !dbg !3253
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @fpga_bridge_groups, i64 0, i64 0), %struct.attribute_group*** %dev_groups, align 8, !dbg !3254
  %10 = load %struct.class*, %struct.class** @fpga_bridge_class, align 8, !dbg !3255
  %dev_release = getelementptr inbounds %struct.class, %struct.class* %10, i32 0, i32 8, !dbg !3256
  store void (%struct.device*)* @fpga_bridge_dev_release, void (%struct.device*)** %dev_release, align 8, !dbg !3257
  store i32 0, i32* %retval, align 4, !dbg !3258
  br label %return, !dbg !3258

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3259
  ret i32 %11, !dbg !3259
}

; Function Attrs: noredzone
declare dso_local i32 @device_match_of_node(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @mutex_trylock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !3260 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3263, metadata !DIExpression()), !dbg !3264
  ret i1 true, !dbg !3265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3266 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3267, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3270, metadata !DIExpression()), !dbg !3269
  %0 = load i64, i64* %__edi, align 8, !dbg !3269
  store i64 %0, i64* %__edi, align 8, !dbg !3269
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3271, metadata !DIExpression()), !dbg !3269
  %1 = load i64, i64* %__esi, align 8, !dbg !3269
  store i64 %1, i64* %__esi, align 8, !dbg !3269
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3272, metadata !DIExpression()), !dbg !3269
  %2 = load i64, i64* %__edx, align 8, !dbg !3269
  store i64 %2, i64* %__edx, align 8, !dbg !3269
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3273, metadata !DIExpression()), !dbg !3269
  %3 = load i64, i64* %__ecx, align 8, !dbg !3269
  store i64 %3, i64* %__ecx, align 8, !dbg !3269
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3274, metadata !DIExpression()), !dbg !3269
  %4 = load i64, i64* %__eax, align 8, !dbg !3269
  store i64 %4, i64* %__eax, align 8, !dbg !3269
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3269
  %6 = call i64 @llvm.read_register.i64(metadata !2158), !dbg !3275
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !3275, !srcloc !3278
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3275
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3275
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3275
  call void @llvm.write_register.i64(metadata !2158, i64 %asmresult1), !dbg !3275
  %8 = load i64, i64* %__eax, align 8, !dbg !3275
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3279, metadata !DIExpression()), !dbg !3281
  store i64 -1, i64* %__mask, align 8, !dbg !3281
  %9 = load i64, i64* %__mask, align 8, !dbg !3281
  store i64 %9, i64* %tmp, align 8, !dbg !3281
  %10 = load i64, i64* %tmp, align 8, !dbg !3281
  %and = and i64 %8, %10, !dbg !3275
  store i64 %and, i64* %__ret, align 8, !dbg !3275
  %11 = load i64, i64* %__ret, align 8, !dbg !3269
  store i64 %11, i64* %tmp2, align 8, !dbg !3282
  %12 = load i64, i64* %tmp2, align 8, !dbg !3269
  ret i64 %12, !dbg !3283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !3284 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3285, metadata !DIExpression()), !dbg !3287
  %0 = load i64, i64* %__edi, align 8, !dbg !3287
  store i64 %0, i64* %__edi, align 8, !dbg !3287
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3288, metadata !DIExpression()), !dbg !3287
  %1 = load i64, i64* %__esi, align 8, !dbg !3287
  store i64 %1, i64* %__esi, align 8, !dbg !3287
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3289, metadata !DIExpression()), !dbg !3287
  %2 = load i64, i64* %__edx, align 8, !dbg !3287
  store i64 %2, i64* %__edx, align 8, !dbg !3287
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3290, metadata !DIExpression()), !dbg !3287
  %3 = load i64, i64* %__ecx, align 8, !dbg !3287
  store i64 %3, i64* %__ecx, align 8, !dbg !3287
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3291, metadata !DIExpression()), !dbg !3287
  %4 = load i64, i64* %__eax, align 8, !dbg !3287
  store i64 %4, i64* %__eax, align 8, !dbg !3287
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3287
  %6 = call i64 @llvm.read_register.i64(metadata !2158), !dbg !3287
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !3287, !srcloc !3292
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3287
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3287
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3287
  call void @llvm.write_register.i64(metadata !2158, i64 %asmresult1), !dbg !3287
  ret void, !dbg !3293
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3294 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3295, metadata !DIExpression()), !dbg !3296
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3297
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !3299
  br i1 %call, label %if.end, label %if.then, !dbg !3300

if.then:                                          ; preds = %entry
  br label %return, !dbg !3301

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3302
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3303
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3303
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3304
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3305
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3305
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !3306
  br label %return, !dbg !3307

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3307
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3308 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3311, metadata !DIExpression()), !dbg !3312
  ret i1 true, !dbg !3313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3314 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3315, metadata !DIExpression()), !dbg !3316
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3317, metadata !DIExpression()), !dbg !3318
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3319
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3320
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3321
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3322
  br label %do.body, !dbg !3323

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3324

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3326

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3324

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3328
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3328
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3328
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3328
  br label %do.end5, !dbg !3328

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3324

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !3331 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3336, metadata !DIExpression()), !dbg !3338
  %0 = load i64, i64* %__edi, align 8, !dbg !3338
  store i64 %0, i64* %__edi, align 8, !dbg !3338
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3339, metadata !DIExpression()), !dbg !3338
  %1 = load i64, i64* %__esi, align 8, !dbg !3338
  store i64 %1, i64* %__esi, align 8, !dbg !3338
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3340, metadata !DIExpression()), !dbg !3338
  %2 = load i64, i64* %__edx, align 8, !dbg !3338
  store i64 %2, i64* %__edx, align 8, !dbg !3338
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3341, metadata !DIExpression()), !dbg !3338
  %3 = load i64, i64* %__ecx, align 8, !dbg !3338
  store i64 %3, i64* %__ecx, align 8, !dbg !3338
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3342, metadata !DIExpression()), !dbg !3338
  %4 = load i64, i64* %__eax, align 8, !dbg !3338
  store i64 %4, i64* %__eax, align 8, !dbg !3338
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3338
  %6 = call i64 @llvm.read_register.i64(metadata !2158), !dbg !3338
  %7 = load i64, i64* %f.addr, align 8, !dbg !3338
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !3338, !srcloc !3343
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3338
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3338
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3338
  call void @llvm.write_register.i64(metadata !2158, i64 %asmresult1), !dbg !3338
  ret void, !dbg !3344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3345 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3348, metadata !DIExpression()), !dbg !3349
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3350, metadata !DIExpression()), !dbg !3351
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3352, metadata !DIExpression()), !dbg !3353
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3354
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3356
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3357
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !3358
  br i1 %call, label %if.end, label %if.then, !dbg !3359

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3360

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3361
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3362
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3363
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3364
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3365
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3366
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3367
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3368
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3369
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3370
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3371
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3372
  br label %do.body, !dbg !3373

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3374

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3376

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3374

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3378
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3378
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3378
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3378
  br label %do.end7, !dbg !3378

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3374

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3381 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3384, metadata !DIExpression()), !dbg !3385
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3386, metadata !DIExpression()), !dbg !3387
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3388, metadata !DIExpression()), !dbg !3389
  ret i1 true, !dbg !3390
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !3391 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3395, metadata !DIExpression()), !dbg !3400
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3402, metadata !DIExpression()), !dbg !3403
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3404, metadata !DIExpression()), !dbg !3405
  %0 = load i64, i64* %size.addr, align 8, !dbg !3406
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3408
  br i1 %1, label %if.then, label %if.end447, !dbg !3409

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3410
  %tobool = icmp ne i64 %2, 0, !dbg !3410
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3413

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3414
  br label %return, !dbg !3414

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3415
  %cmp = icmp ult i64 %3, 4096, !dbg !3417
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3418

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3419
  br label %return, !dbg !3419

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub = sub i64 %4, 1, !dbg !3420
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3420
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3420

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub4 = sub i64 %6, 1, !dbg !3420
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3420
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3420

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub6 = sub i64 %8, 1, !dbg !3420
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3420
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3420

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3420

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub9 = sub i64 %9, 1, !dbg !3420
  %and = and i64 %sub9, -9223372036854775808, !dbg !3420
  %tobool10 = icmp ne i64 %and, 0, !dbg !3420
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3420

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3420

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub13 = sub i64 %10, 1, !dbg !3420
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3420
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3420
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3420

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3420

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub18 = sub i64 %11, 1, !dbg !3420
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3420
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3420
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3420

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3420

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub23 = sub i64 %12, 1, !dbg !3420
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3420
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3420
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3420

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3420

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub28 = sub i64 %13, 1, !dbg !3420
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3420
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3420
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3420

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3420

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub33 = sub i64 %14, 1, !dbg !3420
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3420
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3420
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3420

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3420

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub38 = sub i64 %15, 1, !dbg !3420
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3420
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3420
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3420

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3420

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub43 = sub i64 %16, 1, !dbg !3420
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3420
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3420
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3420

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3420

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub48 = sub i64 %17, 1, !dbg !3420
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3420
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3420
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3420

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3420

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub53 = sub i64 %18, 1, !dbg !3420
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3420
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3420
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3420

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3420

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub58 = sub i64 %19, 1, !dbg !3420
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3420
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3420
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3420

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3420

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub63 = sub i64 %20, 1, !dbg !3420
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3420
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3420
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3420

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3420

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub68 = sub i64 %21, 1, !dbg !3420
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3420
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3420
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3420

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3420

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub73 = sub i64 %22, 1, !dbg !3420
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3420
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3420
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3420

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3420

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub78 = sub i64 %23, 1, !dbg !3420
  %and79 = and i64 %sub78, 562949953421312, !dbg !3420
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3420
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3420

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3420

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub83 = sub i64 %24, 1, !dbg !3420
  %and84 = and i64 %sub83, 281474976710656, !dbg !3420
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3420
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3420

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3420

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub88 = sub i64 %25, 1, !dbg !3420
  %and89 = and i64 %sub88, 140737488355328, !dbg !3420
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3420
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3420

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3420

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub93 = sub i64 %26, 1, !dbg !3420
  %and94 = and i64 %sub93, 70368744177664, !dbg !3420
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3420
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3420

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3420

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub98 = sub i64 %27, 1, !dbg !3420
  %and99 = and i64 %sub98, 35184372088832, !dbg !3420
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3420
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3420

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3420

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub103 = sub i64 %28, 1, !dbg !3420
  %and104 = and i64 %sub103, 17592186044416, !dbg !3420
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3420
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3420

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3420

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub108 = sub i64 %29, 1, !dbg !3420
  %and109 = and i64 %sub108, 8796093022208, !dbg !3420
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3420
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3420

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3420

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub113 = sub i64 %30, 1, !dbg !3420
  %and114 = and i64 %sub113, 4398046511104, !dbg !3420
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3420
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3420

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3420

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub118 = sub i64 %31, 1, !dbg !3420
  %and119 = and i64 %sub118, 2199023255552, !dbg !3420
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3420
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3420

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3420

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub123 = sub i64 %32, 1, !dbg !3420
  %and124 = and i64 %sub123, 1099511627776, !dbg !3420
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3420
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3420

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3420

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub128 = sub i64 %33, 1, !dbg !3420
  %and129 = and i64 %sub128, 549755813888, !dbg !3420
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3420
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3420

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3420

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub133 = sub i64 %34, 1, !dbg !3420
  %and134 = and i64 %sub133, 274877906944, !dbg !3420
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3420
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3420

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3420

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub138 = sub i64 %35, 1, !dbg !3420
  %and139 = and i64 %sub138, 137438953472, !dbg !3420
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3420
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3420

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3420

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub143 = sub i64 %36, 1, !dbg !3420
  %and144 = and i64 %sub143, 68719476736, !dbg !3420
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3420
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3420

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3420

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub148 = sub i64 %37, 1, !dbg !3420
  %and149 = and i64 %sub148, 34359738368, !dbg !3420
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3420
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3420

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3420

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub153 = sub i64 %38, 1, !dbg !3420
  %and154 = and i64 %sub153, 17179869184, !dbg !3420
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3420
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3420

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3420

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub158 = sub i64 %39, 1, !dbg !3420
  %and159 = and i64 %sub158, 8589934592, !dbg !3420
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3420
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3420

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3420

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub163 = sub i64 %40, 1, !dbg !3420
  %and164 = and i64 %sub163, 4294967296, !dbg !3420
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3420
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3420

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3420

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub168 = sub i64 %41, 1, !dbg !3420
  %and169 = and i64 %sub168, 2147483648, !dbg !3420
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3420
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3420

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3420

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub173 = sub i64 %42, 1, !dbg !3420
  %and174 = and i64 %sub173, 1073741824, !dbg !3420
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3420
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3420

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3420

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub178 = sub i64 %43, 1, !dbg !3420
  %and179 = and i64 %sub178, 536870912, !dbg !3420
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3420
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3420

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3420

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub183 = sub i64 %44, 1, !dbg !3420
  %and184 = and i64 %sub183, 268435456, !dbg !3420
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3420
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3420

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3420

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub188 = sub i64 %45, 1, !dbg !3420
  %and189 = and i64 %sub188, 134217728, !dbg !3420
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3420
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3420

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3420

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub193 = sub i64 %46, 1, !dbg !3420
  %and194 = and i64 %sub193, 67108864, !dbg !3420
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3420
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3420

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3420

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub198 = sub i64 %47, 1, !dbg !3420
  %and199 = and i64 %sub198, 33554432, !dbg !3420
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3420
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3420

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3420

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub203 = sub i64 %48, 1, !dbg !3420
  %and204 = and i64 %sub203, 16777216, !dbg !3420
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3420
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3420

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3420

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub208 = sub i64 %49, 1, !dbg !3420
  %and209 = and i64 %sub208, 8388608, !dbg !3420
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3420
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3420

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3420

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub213 = sub i64 %50, 1, !dbg !3420
  %and214 = and i64 %sub213, 4194304, !dbg !3420
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3420
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3420

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3420

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub218 = sub i64 %51, 1, !dbg !3420
  %and219 = and i64 %sub218, 2097152, !dbg !3420
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3420
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3420

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3420

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub223 = sub i64 %52, 1, !dbg !3420
  %and224 = and i64 %sub223, 1048576, !dbg !3420
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3420
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3420

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3420

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub228 = sub i64 %53, 1, !dbg !3420
  %and229 = and i64 %sub228, 524288, !dbg !3420
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3420
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3420

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3420

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub233 = sub i64 %54, 1, !dbg !3420
  %and234 = and i64 %sub233, 262144, !dbg !3420
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3420
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3420

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3420

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub238 = sub i64 %55, 1, !dbg !3420
  %and239 = and i64 %sub238, 131072, !dbg !3420
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3420
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3420

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3420

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub243 = sub i64 %56, 1, !dbg !3420
  %and244 = and i64 %sub243, 65536, !dbg !3420
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3420
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3420

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3420

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub248 = sub i64 %57, 1, !dbg !3420
  %and249 = and i64 %sub248, 32768, !dbg !3420
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3420
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3420

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3420

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub253 = sub i64 %58, 1, !dbg !3420
  %and254 = and i64 %sub253, 16384, !dbg !3420
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3420
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3420

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3420

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub258 = sub i64 %59, 1, !dbg !3420
  %and259 = and i64 %sub258, 8192, !dbg !3420
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3420
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3420

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3420

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub263 = sub i64 %60, 1, !dbg !3420
  %and264 = and i64 %sub263, 4096, !dbg !3420
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3420
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3420

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3420

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub268 = sub i64 %61, 1, !dbg !3420
  %and269 = and i64 %sub268, 2048, !dbg !3420
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3420
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3420

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3420

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub273 = sub i64 %62, 1, !dbg !3420
  %and274 = and i64 %sub273, 1024, !dbg !3420
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3420
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3420

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3420

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub278 = sub i64 %63, 1, !dbg !3420
  %and279 = and i64 %sub278, 512, !dbg !3420
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3420
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3420

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3420

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub283 = sub i64 %64, 1, !dbg !3420
  %and284 = and i64 %sub283, 256, !dbg !3420
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3420
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3420

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3420

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub288 = sub i64 %65, 1, !dbg !3420
  %and289 = and i64 %sub288, 128, !dbg !3420
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3420
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3420

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3420

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub293 = sub i64 %66, 1, !dbg !3420
  %and294 = and i64 %sub293, 64, !dbg !3420
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3420
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3420

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3420

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub298 = sub i64 %67, 1, !dbg !3420
  %and299 = and i64 %sub298, 32, !dbg !3420
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3420
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3420

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3420

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub303 = sub i64 %68, 1, !dbg !3420
  %and304 = and i64 %sub303, 16, !dbg !3420
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3420
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3420

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3420

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub308 = sub i64 %69, 1, !dbg !3420
  %and309 = and i64 %sub308, 8, !dbg !3420
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3420
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3420

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3420

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub313 = sub i64 %70, 1, !dbg !3420
  %and314 = and i64 %sub313, 4, !dbg !3420
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3420
  %71 = zext i1 %tobool315 to i64, !dbg !3420
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3420
  br label %cond.end, !dbg !3420

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3420
  br label %cond.end317, !dbg !3420

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3420
  br label %cond.end319, !dbg !3420

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3420
  br label %cond.end321, !dbg !3420

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3420
  br label %cond.end323, !dbg !3420

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3420
  br label %cond.end325, !dbg !3420

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3420
  br label %cond.end327, !dbg !3420

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3420
  br label %cond.end329, !dbg !3420

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3420
  br label %cond.end331, !dbg !3420

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3420
  br label %cond.end333, !dbg !3420

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3420
  br label %cond.end335, !dbg !3420

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3420
  br label %cond.end337, !dbg !3420

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3420
  br label %cond.end339, !dbg !3420

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3420
  br label %cond.end341, !dbg !3420

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3420
  br label %cond.end343, !dbg !3420

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3420
  br label %cond.end345, !dbg !3420

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3420
  br label %cond.end347, !dbg !3420

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3420
  br label %cond.end349, !dbg !3420

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3420
  br label %cond.end351, !dbg !3420

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3420
  br label %cond.end353, !dbg !3420

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3420
  br label %cond.end355, !dbg !3420

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3420
  br label %cond.end357, !dbg !3420

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3420
  br label %cond.end359, !dbg !3420

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3420
  br label %cond.end361, !dbg !3420

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3420
  br label %cond.end363, !dbg !3420

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3420
  br label %cond.end365, !dbg !3420

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3420
  br label %cond.end367, !dbg !3420

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3420
  br label %cond.end369, !dbg !3420

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3420
  br label %cond.end371, !dbg !3420

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3420
  br label %cond.end373, !dbg !3420

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3420
  br label %cond.end375, !dbg !3420

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3420
  br label %cond.end377, !dbg !3420

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3420
  br label %cond.end379, !dbg !3420

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3420
  br label %cond.end381, !dbg !3420

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3420
  br label %cond.end383, !dbg !3420

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3420
  br label %cond.end385, !dbg !3420

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3420
  br label %cond.end387, !dbg !3420

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3420
  br label %cond.end389, !dbg !3420

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3420
  br label %cond.end391, !dbg !3420

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3420
  br label %cond.end393, !dbg !3420

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3420
  br label %cond.end395, !dbg !3420

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3420
  br label %cond.end397, !dbg !3420

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3420
  br label %cond.end399, !dbg !3420

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3420
  br label %cond.end401, !dbg !3420

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3420
  br label %cond.end403, !dbg !3420

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3420
  br label %cond.end405, !dbg !3420

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3420
  br label %cond.end407, !dbg !3420

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3420
  br label %cond.end409, !dbg !3420

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3420
  br label %cond.end411, !dbg !3420

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3420
  br label %cond.end413, !dbg !3420

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3420
  br label %cond.end415, !dbg !3420

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3420
  br label %cond.end417, !dbg !3420

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3420
  br label %cond.end419, !dbg !3420

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3420
  br label %cond.end421, !dbg !3420

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3420
  br label %cond.end423, !dbg !3420

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3420
  br label %cond.end425, !dbg !3420

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3420
  br label %cond.end427, !dbg !3420

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3420
  br label %cond.end429, !dbg !3420

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3420
  br label %cond.end431, !dbg !3420

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3420
  br label %cond.end433, !dbg !3420

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3420
  br label %cond.end435, !dbg !3420

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3420
  br label %cond.end437, !dbg !3420

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3420
  br label %cond.end440, !dbg !3420

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3420

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3420
  br label %cond.end444, !dbg !3420

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3420
  %sub443 = sub i64 %72, 1, !dbg !3420
  %call = call i32 @__ilog2_u64(i64 %sub443) #14, !dbg !3420
  br label %cond.end444, !dbg !3420

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3420
  %sub446 = sub i32 %cond445, 12, !dbg !3421
  %add = add i32 %sub446, 1, !dbg !3422
  store i32 %add, i32* %retval, align 4, !dbg !3423
  br label %return, !dbg !3423

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3424
  %dec = add i64 %73, -1, !dbg !3424
  store i64 %dec, i64* %size.addr, align 8, !dbg !3424
  %74 = load i64, i64* %size.addr, align 8, !dbg !3425
  %shr = lshr i64 %74, 12, !dbg !3425
  store i64 %shr, i64* %size.addr, align 8, !dbg !3425
  %75 = load i64, i64* %size.addr, align 8, !dbg !3426
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3403
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3427
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3428
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #5, !dbg !3427, !srcloc !3429
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3427
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3430
  %add.i = add i32 %79, 1, !dbg !3431
  store i32 %add.i, i32* %retval, align 4, !dbg !3432
  br label %return, !dbg !3432

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3433
  ret i32 %80, !dbg !3433
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !3434 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3395, metadata !DIExpression()), !dbg !3438
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3402, metadata !DIExpression()), !dbg !3440
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  %0 = load i64, i64* %n.addr, align 8, !dbg !3443
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3440
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3444
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3445
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #5, !dbg !3444, !srcloc !3429
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3444
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3446
  %add.i = add i32 %4, 1, !dbg !3447
  %sub = sub i32 %add.i, 1, !dbg !3448
  ret i32 %sub, !dbg !3449
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3450 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3454, metadata !DIExpression()), !dbg !3455
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3456, metadata !DIExpression()), !dbg !3457
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3458, metadata !DIExpression()), !dbg !3459
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3460, metadata !DIExpression()), !dbg !3461
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3462
  ret i8* %0, !dbg !3463
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fpga_bridge_dev_release(%struct.device* %dev) #0 !dbg !3464 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3465, metadata !DIExpression()), !dbg !3466
  ret void, !dbg !3467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @name_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3468 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fpga_bridge*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3469, metadata !DIExpression()), !dbg !3470
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3471, metadata !DIExpression()), !dbg !3472
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3473, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !3475, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3477, metadata !DIExpression()), !dbg !3479
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3479
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3479
  store i8* %1, i8** %__mptr, align 8, !dbg !3479
  br label %do.body, !dbg !3479

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3480

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3479
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3479
  %3 = bitcast i8* %add.ptr to %struct.fpga_bridge*, !dbg !3479
  store %struct.fpga_bridge* %3, %struct.fpga_bridge** %tmp, align 8, !dbg !3480
  %4 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp, align 8, !dbg !3479
  store %struct.fpga_bridge* %4, %struct.fpga_bridge** %bridge, align 8, !dbg !3476
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3482
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3483
  %name = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %6, i32 0, i32 0, !dbg !3484
  %7 = load i8*, i8** %name, align 8, !dbg !3484
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %7) #11, !dbg !3485
  %conv = sext i32 %call to i64, !dbg !3485
  ret i64 %conv, !dbg !3486
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @state_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3487 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bridge = alloca %struct.fpga_bridge*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fpga_bridge*, align 8
  %enable = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3488, metadata !DIExpression()), !dbg !3489
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3490, metadata !DIExpression()), !dbg !3491
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3492, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.declare(metadata %struct.fpga_bridge** %bridge, metadata !3494, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3496, metadata !DIExpression()), !dbg !3498
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3498
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3498
  store i8* %1, i8** %__mptr, align 8, !dbg !3498
  br label %do.body, !dbg !3498

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3499

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3498
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3498
  %3 = bitcast i8* %add.ptr to %struct.fpga_bridge*, !dbg !3498
  store %struct.fpga_bridge* %3, %struct.fpga_bridge** %tmp, align 8, !dbg !3499
  %4 = load %struct.fpga_bridge*, %struct.fpga_bridge** %tmp, align 8, !dbg !3498
  store %struct.fpga_bridge* %4, %struct.fpga_bridge** %bridge, align 8, !dbg !3495
  call void @llvm.dbg.declare(metadata i32* %enable, metadata !3501, metadata !DIExpression()), !dbg !3502
  store i32 1, i32* %enable, align 4, !dbg !3502
  %5 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3503
  %br_ops = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %5, i32 0, i32 3, !dbg !3505
  %6 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops, align 8, !dbg !3505
  %tobool = icmp ne %struct.fpga_bridge_ops* %6, null, !dbg !3503
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3506

land.lhs.true:                                    ; preds = %do.end
  %7 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3507
  %br_ops1 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %7, i32 0, i32 3, !dbg !3508
  %8 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops1, align 8, !dbg !3508
  %enable_show = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %8, i32 0, i32 0, !dbg !3509
  %enable_show2 = bitcast {}** %enable_show to i32 (%struct.fpga_bridge*)**, !dbg !3509
  %9 = load i32 (%struct.fpga_bridge*)*, i32 (%struct.fpga_bridge*)** %enable_show2, align 8, !dbg !3509
  %tobool3 = icmp ne i32 (%struct.fpga_bridge*)* %9, null, !dbg !3507
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3510

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3511
  %br_ops4 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %10, i32 0, i32 3, !dbg !3512
  %11 = load %struct.fpga_bridge_ops*, %struct.fpga_bridge_ops** %br_ops4, align 8, !dbg !3512
  %enable_show5 = getelementptr inbounds %struct.fpga_bridge_ops, %struct.fpga_bridge_ops* %11, i32 0, i32 0, !dbg !3513
  %enable_show6 = bitcast {}** %enable_show5 to i32 (%struct.fpga_bridge*)**, !dbg !3513
  %12 = load i32 (%struct.fpga_bridge*)*, i32 (%struct.fpga_bridge*)** %enable_show6, align 8, !dbg !3513
  %13 = load %struct.fpga_bridge*, %struct.fpga_bridge** %bridge, align 8, !dbg !3514
  %call = call i32 %12(%struct.fpga_bridge* %13) #11, !dbg !3511
  store i32 %call, i32* %enable, align 4, !dbg !3515
  br label %if.end, !dbg !3516

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !3517
  %15 = load i32, i32* %enable, align 4, !dbg !3518
  %tobool7 = icmp ne i32 %15, 0, !dbg !3518
  %16 = zext i1 %tobool7 to i64, !dbg !3518
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), !dbg !3518
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %cond) #11, !dbg !3519
  %conv = sext i32 %call8 to i64, !dbg !3519
  ret i64 %conv, !dbg !3520
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind willreturn }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2158}
!llvm.module.flags = !{!2159, !2160, !2161, !2162}
!llvm.ident = !{!2163}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fpga_bridge_class", scope: !2, file: !3, line: 17, type: !2002, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !2087, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/fpga/fpga-bridge.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55}
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
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !56, line: 305, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!62 = !{!63, !64, !1440, !187, !2084, !172, !2086, !1646}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpga_bridge", file: !66, line: 35, size: 6144, elements: !67)
!66 = !DIFile(filename: "./include/linux/fpga/fpga-bridge.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !72, !2045, !2046, !2064, !2082, !2083}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 36, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !65, file: !66, line: 37, baseType: !73, size: 5568, offset: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !74)
!74 = !{!75, !1568, !1570, !1573, !1574, !1625, !1722, !1723, !1724, !1725, !1726, !1735, !1840, !1853, !1856, !1857, !1861, !1863, !1864, !1865, !1869, !1875, !1876, !1879, !1994, !1995, !1998, !1999, !2000, !2001, !2033, !2034, !2035, !2038, !2041, !2042, !2043, !2044}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !73, file: !30, line: 462, baseType: !76, size: 512)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !77, line: 64, size: 512, elements: !78)
!77 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !80, !87, !89, !150, !1404, !1558, !1563, !1564, !1565, !1566, !1567}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !77, line: 65, baseType: !69, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !76, file: !77, line: 66, baseType: !81, size: 128, offset: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !82, line: 178, size: 128, elements: !83)
!82 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !82, line: 179, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !81, file: !82, line: 179, baseType: !85, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !76, file: !77, line: 67, baseType: !88, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !76, file: !77, line: 68, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !77, line: 192, size: 704, elements: !92)
!92 = !{!93, !94, !110, !111}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !91, file: !77, line: 193, baseType: !81, size: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !91, file: !77, line: 194, baseType: !95, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !96, line: 83, baseType: !97)
!96 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !96, line: 71, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !96, line: 72, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !97, file: !96, line: 72, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !100, file: !96, line: 73, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !96, line: 20, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !103, file: !96, line: 21, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !107, line: 25, baseType: !108)
!107 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 25, elements: !109)
!109 = !{}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !91, file: !77, line: 195, baseType: !76, size: 512, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !91, file: !77, line: 196, baseType: !112, size: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !77, line: 156, size: 192, elements: !115)
!115 = !{!116, !122, !127}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !114, file: !77, line: 157, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !90, !88}
!121 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !77, line: 158, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!69, !90, !88}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !114, file: !77, line: 159, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!121, !90, !88, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !77, line: 148, size: 20736, elements: !134)
!134 = !{!135, !140, !144, !145, !149}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !133, file: !77, line: 149, baseType: !136, size: 192)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!138 = !{!139}
!139 = !DISubrange(count: 3)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !133, file: !77, line: 150, baseType: !141, size: 4096, offset: 192)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 4096, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !133, file: !77, line: 151, baseType: !121, size: 32, offset: 4288)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !133, file: !77, line: 152, baseType: !146, size: 16384, offset: 4320)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16384, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 2048)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !133, file: !77, line: 153, baseType: !121, size: 32, offset: 20704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !76, file: !77, line: 69, baseType: !151, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !77, line: 138, size: 448, elements: !153)
!153 = !{!154, !158, !188, !190, !1350, !1383, !1387}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !152, file: !77, line: 139, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !88}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !152, file: !77, line: 140, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !162, line: 230, size: 128, elements: !163)
!162 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!163 = !{!164, !180}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !161, file: !162, line: 231, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !88, !173, !137}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !82, line: 60, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !170, line: 73, baseType: !171)
!170 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !170, line: 15, baseType: !172)
!172 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !162, line: 30, size: 128, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !162, line: 31, baseType: !69, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !174, file: !162, line: 32, baseType: !178, size: 16, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !82, line: 19, baseType: !179)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !161, file: !162, line: 232, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!168, !88, !173, !69, !184}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 55, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !170, line: 72, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !170, line: 16, baseType: !187)
!187 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !152, file: !77, line: 141, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !152, file: !77, line: 142, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !162, line: 84, size: 320, elements: !195)
!195 = !{!196, !197, !201, !1347, !1348}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !162, line: 85, baseType: !69, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !194, file: !162, line: 86, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!178, !88, !173, !121}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !194, file: !162, line: 88, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!178, !88, !205, !121}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !162, line: 168, size: 448, elements: !207)
!207 = !{!208, !209, !210, !211, !221, !222}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !206, file: !162, line: 169, baseType: !174, size: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !162, line: 170, baseType: !184, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !206, file: !162, line: 171, baseType: !63, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !206, file: !162, line: 172, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!168, !215, !88, !205, !137, !218, !184}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !217, line: 526, flags: DIFlagFwdDecl)
!217 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !82, line: 46, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !170, line: 88, baseType: !220)
!220 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !206, file: !162, line: 174, baseType: !212, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !206, file: !162, line: 176, baseType: !223, size: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!121, !215, !88, !205, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !228, line: 305, size: 1472, elements: !229)
!228 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!229 = !{!230, !231, !232, !233, !234, !242, !243, !1321, !1327, !1328, !1333, !1334, !1337, !1341, !1342, !1343, !1344, !1345}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !227, file: !228, line: 308, baseType: !187, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !227, file: !228, line: 309, baseType: !187, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !227, file: !228, line: 313, baseType: !226, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !227, file: !228, line: 313, baseType: !226, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !227, file: !228, line: 315, baseType: !235, size: 192, align: 64, offset: 256)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !236, line: 24, size: 192, align: 64, elements: !237)
!236 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !239, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !235, file: !236, line: 25, baseType: !187, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !235, file: !236, line: 26, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !235, file: !236, line: 27, baseType: !240, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !227, file: !228, line: 323, baseType: !187, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !227, file: !228, line: 327, baseType: !244, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !228, line: 388, size: 7296, elements: !246)
!246 = !{!247, !1317}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !228, line: 389, baseType: !248, size: 7296)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !228, line: 389, size: 7296, elements: !249)
!249 = !{!250, !251, !255, !261, !265, !266, !267, !268, !269, !277, !282, !283, !284, !285, !294, !295, !296, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !331, !339, !342, !390, !391, !1287, !1288, !1291, !1295, !1296, !1299, !1300, !1301, !1304, !1316}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !248, file: !228, line: 390, baseType: !226, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !248, file: !228, line: 391, baseType: !252, size: 64, offset: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !236, line: 31, size: 64, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !252, file: !236, line: 32, baseType: !240, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !248, file: !228, line: 392, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !257, line: 23, baseType: !258)
!257 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !259, line: 31, baseType: !260)
!259 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!260 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !248, file: !228, line: 394, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!187, !215, !187, !187, !187, !187}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !248, file: !228, line: 398, baseType: !187, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !248, file: !228, line: 399, baseType: !187, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !248, file: !228, line: 405, baseType: !187, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !248, file: !228, line: 406, baseType: !187, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !248, file: !228, line: 407, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !217, line: 286, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 286, size: 64, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !272, file: !217, line: 286, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !276, line: 18, baseType: !187)
!276 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!277 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !248, file: !228, line: 416, baseType: !278, size: 32, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !82, line: 168, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 166, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !279, file: !82, line: 167, baseType: !121, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !248, file: !228, line: 428, baseType: !278, size: 32, offset: 608)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !248, file: !228, line: 437, baseType: !278, size: 32, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !248, file: !228, line: 447, baseType: !278, size: 32, offset: 672)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !248, file: !228, line: 450, baseType: !286, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !287, line: 13, baseType: !288)
!287 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !82, line: 175, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 173, size: 64, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !289, file: !82, line: 174, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !257, line: 22, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !259, line: 30, baseType: !220)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !248, file: !228, line: 452, baseType: !121, size: 32, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !248, file: !228, line: 454, baseType: !95, offset: 800)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !248, file: !228, line: 457, baseType: !297, size: 256, offset: 832)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !298, line: 35, size: 256, elements: !299)
!298 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301, !302, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !297, file: !298, line: 36, baseType: !286, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !297, file: !298, line: 42, baseType: !286, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !297, file: !298, line: 46, baseType: !303, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !96, line: 29, baseType: !103)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !297, file: !298, line: 47, baseType: !81, size: 128, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !248, file: !228, line: 459, baseType: !81, size: 128, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !248, file: !228, line: 466, baseType: !187, size: 64, offset: 1216)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !248, file: !228, line: 467, baseType: !187, size: 64, offset: 1280)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !248, file: !228, line: 469, baseType: !187, size: 64, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !248, file: !228, line: 470, baseType: !187, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !248, file: !228, line: 471, baseType: !288, size: 64, offset: 1472)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !248, file: !228, line: 472, baseType: !187, size: 64, offset: 1536)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !248, file: !228, line: 473, baseType: !187, size: 64, offset: 1600)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !248, file: !228, line: 474, baseType: !187, size: 64, offset: 1664)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !248, file: !228, line: 475, baseType: !187, size: 64, offset: 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !248, file: !228, line: 477, baseType: !95, offset: 1792)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !248, file: !228, line: 478, baseType: !187, size: 64, offset: 1792)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !248, file: !228, line: 478, baseType: !187, size: 64, offset: 1856)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !248, file: !228, line: 478, baseType: !187, size: 64, offset: 1920)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !248, file: !228, line: 478, baseType: !187, size: 64, offset: 1984)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !248, file: !228, line: 479, baseType: !187, size: 64, offset: 2048)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !248, file: !228, line: 479, baseType: !187, size: 64, offset: 2112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !248, file: !228, line: 479, baseType: !187, size: 64, offset: 2176)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !248, file: !228, line: 480, baseType: !187, size: 64, offset: 2240)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !248, file: !228, line: 480, baseType: !187, size: 64, offset: 2304)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !248, file: !228, line: 480, baseType: !187, size: 64, offset: 2368)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !248, file: !228, line: 480, baseType: !187, size: 64, offset: 2432)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !248, file: !228, line: 482, baseType: !328, size: 2816, offset: 2496)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 2816, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 44)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !248, file: !228, line: 488, baseType: !332, size: 256, offset: 5312)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !333, line: 60, size: 256, elements: !334)
!333 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !332, file: !333, line: 61, baseType: !336, size: 256)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 4)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !248, file: !228, line: 490, baseType: !340, size: 64, offset: 5568)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !228, line: 490, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !248, file: !228, line: 493, baseType: !343, size: 896, offset: 5632)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !344, line: 53, baseType: !345)
!344 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 896, elements: !346)
!346 = !{!347, !348, !349, !350, !353, !354, !361, !362, !382, !383, !386}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !345, file: !344, line: 18, baseType: !256, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !345, file: !344, line: 28, baseType: !288, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !345, file: !344, line: 31, baseType: !297, size: 256, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !345, file: !344, line: 32, baseType: !351, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !344, line: 32, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !345, file: !344, line: 37, baseType: !179, size: 16, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !345, file: !344, line: 40, baseType: !355, size: 192, offset: 512)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !356, line: 53, size: 192, elements: !357)
!356 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!357 = !{!358, !359, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !355, file: !356, line: 54, baseType: !286, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !355, file: !356, line: 55, baseType: !95, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !355, file: !356, line: 59, baseType: !81, size: 128, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !345, file: !344, line: 41, baseType: !63, size: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !345, file: !344, line: 42, baseType: !363, size: 64, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !366, line: 13, size: 896, elements: !367)
!366 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !365, file: !366, line: 14, baseType: !63, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !365, file: !366, line: 15, baseType: !187, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !365, file: !366, line: 17, baseType: !187, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !365, file: !366, line: 17, baseType: !187, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !365, file: !366, line: 19, baseType: !172, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !365, file: !366, line: 21, baseType: !172, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !365, file: !366, line: 22, baseType: !172, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !365, file: !366, line: 23, baseType: !172, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !365, file: !366, line: 24, baseType: !172, size: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !365, file: !366, line: 25, baseType: !172, size: 64, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !365, file: !366, line: 26, baseType: !172, size: 64, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !365, file: !366, line: 27, baseType: !172, size: 64, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !365, file: !366, line: 28, baseType: !172, size: 64, offset: 768)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !365, file: !366, line: 29, baseType: !172, size: 64, offset: 832)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !345, file: !344, line: 44, baseType: !278, size: 32, offset: 832)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !345, file: !344, line: 50, baseType: !384, size: 16, offset: 864)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !257, line: 19, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !259, line: 24, baseType: !179)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !345, file: !344, line: 51, baseType: !387, size: 16, offset: 880)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !257, line: 18, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !259, line: 23, baseType: !389)
!389 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !228, line: 495, baseType: !187, size: 64, offset: 6528)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !248, file: !228, line: 497, baseType: !392, size: 64, offset: 6592)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !228, line: 381, size: 384, elements: !394)
!394 = !{!395, !396, !1286}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !393, file: !228, line: 382, baseType: !278, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !393, file: !228, line: 383, baseType: !397, size: 128, offset: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !228, line: 376, size: 128, elements: !398)
!398 = !{!399, !1284}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !397, file: !228, line: 377, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !402, line: 640, size: 48640, elements: !403)
!402 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !412, !414, !415, !421, !422, !423, !424, !425, !426, !427, !428, !432, !450, !461, !556, !557, !558, !569, !570, !572, !573, !574, !575, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !654, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !710, !712, !713, !714, !726, !728, !729, !730, !731, !732, !738, !739, !740, !741, !742, !743, !744, !756, !761, !765, !766, !767, !770, !774, !777, !780, !783, !786, !789, !792, !795, !801, !802, !803, !809, !810, !811, !812, !813, !822, !823, !824, !825, !826, !831, !832, !833, !836, !837, !840, !843, !846, !849, !852, !855, !856, !936, !939, !942, !943, !946, !947, !948, !954, !955, !956, !969, !970, !971, !983, !988, !991, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !401, file: !402, line: 646, baseType: !405, size: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !406, line: 56, size: 128, elements: !407)
!406 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !406, line: 57, baseType: !187, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !405, file: !406, line: 58, baseType: !410, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !257, line: 21, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !259, line: 27, baseType: !7)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !401, file: !402, line: 649, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !401, file: !402, line: 657, baseType: !63, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !401, file: !402, line: 658, baseType: !416, size: 32, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !417, line: 113, baseType: !418)
!417 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !417, line: 111, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !418, file: !417, line: 112, baseType: !278, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !402, line: 660, baseType: !7, size: 32, offset: 288)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !401, file: !402, line: 661, baseType: !7, size: 32, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !401, file: !402, line: 684, baseType: !121, size: 32, offset: 352)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !401, file: !402, line: 686, baseType: !121, size: 32, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !401, file: !402, line: 687, baseType: !121, size: 32, offset: 416)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !401, file: !402, line: 688, baseType: !121, size: 32, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !401, file: !402, line: 689, baseType: !7, size: 32, offset: 480)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !401, file: !402, line: 691, baseType: !429, size: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !402, line: 691, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !401, file: !402, line: 692, baseType: !433, size: 832, offset: 576)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !402, line: 451, size: 832, elements: !434)
!434 = !{!435, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !433, file: !402, line: 453, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !402, line: 325, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !436, file: !402, line: 326, baseType: !187, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !436, file: !402, line: 327, baseType: !410, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !433, file: !402, line: 454, baseType: !235, size: 192, align: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !433, file: !402, line: 455, baseType: !81, size: 128, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !433, file: !402, line: 456, baseType: !7, size: 32, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !433, file: !402, line: 458, baseType: !256, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !433, file: !402, line: 459, baseType: !256, size: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !433, file: !402, line: 460, baseType: !256, size: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !433, file: !402, line: 461, baseType: !256, size: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !433, file: !402, line: 463, baseType: !256, size: 64, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !433, file: !402, line: 465, baseType: !449, offset: 832)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !402, line: 415, elements: !109)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !401, file: !402, line: 693, baseType: !451, size: 384, offset: 1408)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !402, line: 489, size: 384, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !451, file: !402, line: 490, baseType: !81, size: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !451, file: !402, line: 491, baseType: !187, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !451, file: !402, line: 492, baseType: !187, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !451, file: !402, line: 493, baseType: !7, size: 32, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !451, file: !402, line: 494, baseType: !179, size: 16, offset: 288)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !451, file: !402, line: 495, baseType: !179, size: 16, offset: 304)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !451, file: !402, line: 497, baseType: !460, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !401, file: !402, line: 697, baseType: !462, size: 1792, offset: 1792)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !402, line: 507, size: 1792, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !553, !554}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !462, file: !402, line: 508, baseType: !235, size: 192, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !462, file: !402, line: 515, baseType: !256, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !462, file: !402, line: 516, baseType: !256, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !462, file: !402, line: 517, baseType: !256, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !462, file: !402, line: 518, baseType: !256, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !462, file: !402, line: 519, baseType: !256, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !462, file: !402, line: 526, baseType: !292, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !462, file: !402, line: 527, baseType: !256, size: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !402, line: 528, baseType: !7, size: 32, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !462, file: !402, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !462, file: !402, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !462, file: !402, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !462, file: !402, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !462, file: !402, line: 563, baseType: !478, size: 512, offset: 704)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !479)
!479 = !{!480, !488, !489, !494, !546, !550, !551, !552}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !478, file: !6, line: 119, baseType: !481, size: 256)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !482, line: 9, size: 256, elements: !483)
!482 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !481, file: !482, line: 10, baseType: !235, size: 192, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !481, file: !482, line: 11, baseType: !486, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !487, line: 29, baseType: !292)
!487 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !478, file: !6, line: 120, baseType: !486, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !478, file: !6, line: 121, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!5, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !478, file: !6, line: 122, baseType: !495, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !497)
!497 = !{!498, !518, !519, !522, !532, !533, !541, !545}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !496, file: !6, line: 160, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !500, file: !6, line: 215, baseType: !303)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !500, file: !6, line: 216, baseType: !7, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !500, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !500, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !500, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !500, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !500, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !500, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !500, file: !6, line: 233, baseType: !486, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !500, file: !6, line: 234, baseType: !493, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !500, file: !6, line: 235, baseType: !486, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !500, file: !6, line: 236, baseType: !493, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !500, file: !6, line: 237, baseType: !515, size: 4096, offset: 512)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 4096, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 8)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !496, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !496, file: !6, line: 162, baseType: !520, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !82, line: 27, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !170, line: 96, baseType: !121)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !496, file: !6, line: 163, baseType: !523, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !524, line: 276, baseType: !525)
!524 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !524, line: 276, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !525, file: !524, line: 276, baseType: !528, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !524, line: 70, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !524, line: 65, size: 32, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !529, file: !524, line: 66, baseType: !7, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !496, file: !6, line: 164, baseType: !493, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !496, file: !6, line: 165, baseType: !534, size: 128, offset: 256)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !482, line: 14, size: 128, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !534, file: !482, line: 15, baseType: !537, size: 128)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !236, line: 125, size: 128, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !537, file: !236, line: 126, baseType: !252, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !537, file: !236, line: 127, baseType: !240, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !496, file: !6, line: 166, baseType: !542, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!486}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !496, file: !6, line: 167, baseType: !486, size: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !478, file: !6, line: 123, baseType: !547, size: 8, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !257, line: 17, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !259, line: 21, baseType: !549)
!549 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !478, file: !6, line: 124, baseType: !547, size: 8, offset: 456)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !478, file: !6, line: 125, baseType: !547, size: 8, offset: 464)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !478, file: !6, line: 126, baseType: !547, size: 8, offset: 472)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !462, file: !402, line: 572, baseType: !478, size: 512, offset: 1216)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !462, file: !402, line: 580, baseType: !555, size: 64, offset: 1728)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !401, file: !402, line: 721, baseType: !7, size: 32, offset: 3584)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !401, file: !402, line: 722, baseType: !121, size: 32, offset: 3616)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !401, file: !402, line: 723, baseType: !559, size: 64, offset: 3648)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !562, line: 17, baseType: !563)
!562 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !562, line: 17, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !563, file: !562, line: 17, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 64, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 1)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !401, file: !402, line: 724, baseType: !561, size: 64, offset: 3712)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !401, file: !402, line: 749, baseType: !571, offset: 3776)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !402, line: 290, elements: !109)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !401, file: !402, line: 751, baseType: !81, size: 128, offset: 3776)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !401, file: !402, line: 757, baseType: !244, size: 64, offset: 3904)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !401, file: !402, line: 758, baseType: !244, size: 64, offset: 3968)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !401, file: !402, line: 761, baseType: !576, size: 320, offset: 4032)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !333, line: 34, size: 320, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !576, file: !333, line: 35, baseType: !256, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !576, file: !333, line: 36, baseType: !580, size: 256, offset: 64)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !337)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !401, file: !402, line: 766, baseType: !121, size: 32, offset: 4352)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !401, file: !402, line: 767, baseType: !121, size: 32, offset: 4384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !401, file: !402, line: 768, baseType: !121, size: 32, offset: 4416)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !401, file: !402, line: 770, baseType: !121, size: 32, offset: 4448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !401, file: !402, line: 772, baseType: !187, size: 64, offset: 4480)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !401, file: !402, line: 775, baseType: !7, size: 32, offset: 4544)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !401, file: !402, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !401, file: !402, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !401, file: !402, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !401, file: !402, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !401, file: !402, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !401, file: !402, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !401, file: !402, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !401, file: !402, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !401, file: !402, line: 831, baseType: !187, size: 64, offset: 4672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !401, file: !402, line: 833, baseType: !597, size: 384, offset: 4736)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !598)
!598 = !{!599, !604}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !597, file: !12, line: 26, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!172, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !12, line: 27, baseType: !605, size: 320, offset: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !12, line: 27, size: 320, elements: !606)
!606 = !{!607, !617, !644}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !605, file: !12, line: 36, baseType: !608, size: 320)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !12, line: 29, size: 320, elements: !609)
!609 = !{!610, !612, !613, !614, !615, !616}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !608, file: !12, line: 30, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !608, file: !12, line: 31, baseType: !410, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !12, line: 32, baseType: !410, size: 32, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !608, file: !12, line: 33, baseType: !410, size: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !608, file: !12, line: 34, baseType: !256, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !608, file: !12, line: 35, baseType: !611, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !605, file: !12, line: 46, baseType: !618, size: 192)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !12, line: 38, size: 192, elements: !619)
!619 = !{!620, !621, !622, !643}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !618, file: !12, line: 39, baseType: !520, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, scope: !618, file: !12, line: 41, baseType: !623, size: 64, offset: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !12, line: 41, size: 64, elements: !624)
!624 = !{!625, !633}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !623, file: !12, line: 42, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !628, line: 7, size: 128, elements: !629)
!628 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!629 = !{!630, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !627, file: !628, line: 8, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !170, line: 93, baseType: !220)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !627, file: !628, line: 9, baseType: !220, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !623, file: !12, line: 43, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !636, line: 7, size: 64, elements: !637)
!636 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!637 = !{!638, !642}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !635, file: !636, line: 8, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !636, line: 5, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !257, line: 20, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !259, line: 26, baseType: !121)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !635, file: !636, line: 9, baseType: !640, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !618, file: !12, line: 45, baseType: !256, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !605, file: !12, line: 54, baseType: !645, size: 256)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !12, line: 48, size: 256, elements: !646)
!646 = !{!647, !650, !651, !652, !653}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !645, file: !12, line: 49, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !645, file: !12, line: 50, baseType: !121, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !645, file: !12, line: 51, baseType: !121, size: 32, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !645, file: !12, line: 52, baseType: !187, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !645, file: !12, line: 53, baseType: !187, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !401, file: !402, line: 835, baseType: !655, size: 32, offset: 5120)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !82, line: 22, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !170, line: 28, baseType: !121)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !401, file: !402, line: 836, baseType: !655, size: 32, offset: 5152)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !401, file: !402, line: 840, baseType: !187, size: 64, offset: 5184)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !401, file: !402, line: 849, baseType: !400, size: 64, offset: 5248)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !401, file: !402, line: 852, baseType: !400, size: 64, offset: 5312)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !401, file: !402, line: 857, baseType: !81, size: 128, offset: 5376)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !401, file: !402, line: 858, baseType: !81, size: 128, offset: 5504)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !401, file: !402, line: 859, baseType: !400, size: 64, offset: 5632)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !401, file: !402, line: 867, baseType: !81, size: 128, offset: 5696)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !401, file: !402, line: 868, baseType: !81, size: 128, offset: 5824)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !401, file: !402, line: 871, baseType: !667, size: 64, offset: 5952)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !669, line: 59, size: 768, elements: !670)
!669 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!670 = !{!671, !672, !673, !674, !685, !686, !693, !702}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !669, line: 61, baseType: !416, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !668, file: !669, line: 62, baseType: !7, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !669, line: 63, baseType: !95, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !668, file: !669, line: 65, baseType: !675, size: 256, offset: 64)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 256, elements: !337)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !82, line: 182, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !676, file: !82, line: 183, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !82, line: 186, size: 128, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !82, line: 187, baseType: !679, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !680, file: !82, line: 187, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !668, file: !669, line: 66, baseType: !676, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !668, file: !669, line: 68, baseType: !687, size: 128, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !688, line: 40, baseType: !689)
!688 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !688, line: 36, size: 128, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !689, file: !688, line: 37, baseType: !95)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !689, file: !688, line: 38, baseType: !81, size: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !668, file: !669, line: 69, baseType: !694, size: 128, align: 64, offset: 512)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !82, line: 216, size: 128, align: 64, elements: !695)
!695 = !{!696, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !82, line: 217, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !694, file: !82, line: 218, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !697}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !668, file: !669, line: 70, baseType: !703, size: 128, offset: 640)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 128, elements: !567)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !669, line: 54, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !704, file: !669, line: 55, baseType: !121, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !704, file: !669, line: 56, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !669, line: 56, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !401, file: !402, line: 872, baseType: !711, size: 512, offset: 6016)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 512, elements: !337)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !401, file: !402, line: 873, baseType: !81, size: 128, offset: 6528)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !401, file: !402, line: 874, baseType: !81, size: 128, offset: 6656)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !401, file: !402, line: 876, baseType: !715, size: 64, offset: 6784)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !717, line: 26, size: 192, elements: !718)
!717 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !716, file: !717, line: 27, baseType: !7, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !716, file: !717, line: 28, baseType: !721, size: 128, offset: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !722, line: 43, size: 128, elements: !723)
!722 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !722, line: 44, baseType: !303)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !721, file: !722, line: 45, baseType: !81, size: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !401, file: !402, line: 879, baseType: !727, size: 64, offset: 6848)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !401, file: !402, line: 882, baseType: !727, size: 64, offset: 6912)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !401, file: !402, line: 884, baseType: !256, size: 64, offset: 6976)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !401, file: !402, line: 885, baseType: !256, size: 64, offset: 7040)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !401, file: !402, line: 890, baseType: !256, size: 64, offset: 7104)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !401, file: !402, line: 891, baseType: !733, size: 128, offset: 7168)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !402, line: 242, size: 128, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !733, file: !402, line: 244, baseType: !256, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !733, file: !402, line: 245, baseType: !256, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !733, file: !402, line: 246, baseType: !303, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !401, file: !402, line: 900, baseType: !187, size: 64, offset: 7296)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !401, file: !402, line: 901, baseType: !187, size: 64, offset: 7360)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !401, file: !402, line: 904, baseType: !256, size: 64, offset: 7424)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !401, file: !402, line: 907, baseType: !256, size: 64, offset: 7488)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !401, file: !402, line: 910, baseType: !187, size: 64, offset: 7552)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !401, file: !402, line: 911, baseType: !187, size: 64, offset: 7616)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !401, file: !402, line: 914, baseType: !745, size: 640, offset: 7680)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !746, line: 123, size: 640, elements: !747)
!746 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !754, !755}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !745, file: !746, line: 124, baseType: !749, size: 576)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 576, elements: !138)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !746, line: 108, size: 192, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !750, file: !746, line: 109, baseType: !256, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !750, file: !746, line: 110, baseType: !534, size: 128, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !745, file: !746, line: 125, baseType: !7, size: 32, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !745, file: !746, line: 126, baseType: !7, size: 32, offset: 608)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !401, file: !402, line: 917, baseType: !757, size: 192, offset: 8320)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !746, line: 134, size: 192, elements: !758)
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !757, file: !746, line: 135, baseType: !694, size: 128, align: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !757, file: !746, line: 136, baseType: !7, size: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !401, file: !402, line: 923, baseType: !762, size: 64, offset: 8512)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !402, line: 923, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !401, file: !402, line: 926, baseType: !762, size: 64, offset: 8576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !401, file: !402, line: 929, baseType: !762, size: 64, offset: 8640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !401, file: !402, line: 933, baseType: !768, size: 64, offset: 8704)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !402, line: 933, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !401, file: !402, line: 943, baseType: !771, size: 128, offset: 8768)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 128, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 16)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !401, file: !402, line: 945, baseType: !775, size: 64, offset: 8896)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !402, line: 49, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !401, file: !402, line: 956, baseType: !778, size: 64, offset: 8960)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !402, line: 45, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !401, file: !402, line: 959, baseType: !781, size: 64, offset: 9024)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !402, line: 959, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !401, file: !402, line: 962, baseType: !784, size: 64, offset: 9088)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !402, line: 66, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !401, file: !402, line: 966, baseType: !787, size: 64, offset: 9152)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !402, line: 50, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !401, file: !402, line: 969, baseType: !790, size: 64, offset: 9216)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !746, line: 223, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !401, file: !402, line: 970, baseType: !793, size: 64, offset: 9280)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !402, line: 62, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !401, file: !402, line: 971, baseType: !796, size: 64, offset: 9344)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !797, line: 25, baseType: !798)
!797 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !797, line: 23, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !798, file: !797, line: 24, baseType: !566, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !401, file: !402, line: 972, baseType: !796, size: 64, offset: 9408)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !401, file: !402, line: 974, baseType: !796, size: 64, offset: 9472)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !401, file: !402, line: 975, baseType: !804, size: 192, offset: 9536)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !805, line: 30, size: 192, elements: !806)
!805 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !804, file: !805, line: 31, baseType: !81, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !804, file: !805, line: 32, baseType: !796, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !401, file: !402, line: 976, baseType: !187, size: 64, offset: 9728)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !401, file: !402, line: 977, baseType: !184, size: 64, offset: 9792)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !401, file: !402, line: 978, baseType: !7, size: 32, offset: 9856)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !401, file: !402, line: 980, baseType: !697, size: 64, offset: 9920)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !401, file: !402, line: 989, baseType: !814, size: 128, offset: 9984)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !815, line: 35, size: 128, elements: !816)
!815 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !814, file: !815, line: 36, baseType: !121, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !814, file: !815, line: 37, baseType: !278, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !814, file: !815, line: 38, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !815, line: 23, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !401, file: !402, line: 992, baseType: !256, size: 64, offset: 10112)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !401, file: !402, line: 993, baseType: !256, size: 64, offset: 10176)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !401, file: !402, line: 996, baseType: !95, offset: 10240)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !401, file: !402, line: 999, baseType: !303, offset: 10240)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !401, file: !402, line: 1001, baseType: !827, size: 64, offset: 10240)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !402, line: 636, size: 64, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !827, file: !402, line: 637, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !401, file: !402, line: 1005, baseType: !537, size: 128, offset: 10304)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !401, file: !402, line: 1007, baseType: !400, size: 64, offset: 10432)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !401, file: !402, line: 1009, baseType: !834, size: 64, offset: 10496)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !402, line: 1009, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !401, file: !402, line: 1043, baseType: !63, size: 64, offset: 10560)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !401, file: !402, line: 1046, baseType: !838, size: 64, offset: 10624)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !402, line: 41, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !401, file: !402, line: 1050, baseType: !841, size: 64, offset: 10688)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !402, line: 42, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !401, file: !402, line: 1054, baseType: !844, size: 64, offset: 10752)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !402, line: 55, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !401, file: !402, line: 1056, baseType: !847, size: 64, offset: 10816)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !402, line: 40, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !401, file: !402, line: 1058, baseType: !850, size: 64, offset: 10880)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !402, line: 47, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !401, file: !402, line: 1061, baseType: !853, size: 64, offset: 10944)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !402, line: 43, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !401, file: !402, line: 1064, baseType: !187, size: 64, offset: 11008)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !401, file: !402, line: 1065, baseType: !857, size: 64, offset: 11072)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !805, line: 14, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !805, line: 12, size: 384, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !805, line: 13, baseType: !862, size: 384)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !805, line: 13, size: 384, elements: !863)
!863 = !{!864, !865, !866, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !862, file: !805, line: 13, baseType: !121, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !862, file: !805, line: 13, baseType: !121, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !862, file: !805, line: 13, baseType: !121, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !862, file: !805, line: 13, baseType: !868, size: 256, offset: 128)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !869, line: 32, size: 256, elements: !870)
!869 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!870 = !{!871, !877, !890, !896, !905, !925, !930}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !868, file: !869, line: 37, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 34, size: 64, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !872, file: !869, line: 35, baseType: !656, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !872, file: !869, line: 36, baseType: !876, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !170, line: 49, baseType: !7)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !868, file: !869, line: 45, baseType: !878, size: 192)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 40, size: 192, elements: !879)
!879 = !{!880, !882, !883, !889}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !878, file: !869, line: 41, baseType: !881, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !170, line: 95, baseType: !121)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !878, file: !869, line: 42, baseType: !121, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !878, file: !869, line: 43, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !869, line: 11, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !869, line: 8, size: 64, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !885, file: !869, line: 9, baseType: !121, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !885, file: !869, line: 10, baseType: !63, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !878, file: !869, line: 44, baseType: !121, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !868, file: !869, line: 52, baseType: !891, size: 128)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 48, size: 128, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !891, file: !869, line: 49, baseType: !656, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !891, file: !869, line: 50, baseType: !876, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !891, file: !869, line: 51, baseType: !884, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !868, file: !869, line: 61, baseType: !897, size: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 55, size: 256, elements: !898)
!898 = !{!899, !900, !901, !902, !904}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !897, file: !869, line: 56, baseType: !656, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !897, file: !869, line: 57, baseType: !876, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !897, file: !869, line: 58, baseType: !121, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !897, file: !869, line: 59, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !170, line: 94, baseType: !171)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !897, file: !869, line: 60, baseType: !903, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !868, file: !869, line: 95, baseType: !906, size: 256)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 64, size: 256, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !906, file: !869, line: 65, baseType: !63, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !869, line: 77, baseType: !910, size: 192, offset: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !869, line: 77, size: 192, elements: !911)
!911 = !{!912, !913, !920}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !910, file: !869, line: 82, baseType: !389, size: 16)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !910, file: !869, line: 88, baseType: !914, size: 192)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !869, line: 84, size: 192, elements: !915)
!915 = !{!916, !918, !919}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !914, file: !869, line: 85, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !516)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !914, file: !869, line: 86, baseType: !63, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !914, file: !869, line: 87, baseType: !63, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !910, file: !869, line: 93, baseType: !921, size: 96)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !869, line: 90, size: 96, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !921, file: !869, line: 91, baseType: !917, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !921, file: !869, line: 92, baseType: !411, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !868, file: !869, line: 101, baseType: !926, size: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 98, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !926, file: !869, line: 99, baseType: !172, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !926, file: !869, line: 100, baseType: !121, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !868, file: !869, line: 108, baseType: !931, size: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 104, size: 128, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !931, file: !869, line: 105, baseType: !63, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !931, file: !869, line: 106, baseType: !121, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !931, file: !869, line: 107, baseType: !7, size: 32, offset: 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !401, file: !402, line: 1067, baseType: !937, offset: 11136)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !938, line: 12, elements: !109)
!938 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!939 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !401, file: !402, line: 1099, baseType: !940, size: 64, offset: 11136)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !402, line: 56, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !401, file: !402, line: 1103, baseType: !81, size: 128, offset: 11200)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !401, file: !402, line: 1104, baseType: !944, size: 64, offset: 11328)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !402, line: 46, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !401, file: !402, line: 1105, baseType: !355, size: 192, offset: 11392)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !401, file: !402, line: 1106, baseType: !7, size: 32, offset: 11584)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !401, file: !402, line: 1109, baseType: !949, size: 128, offset: 11648)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 128, elements: !952)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !402, line: 51, flags: DIFlagFwdDecl)
!952 = !{!953}
!953 = !DISubrange(count: 2)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !401, file: !402, line: 1110, baseType: !355, size: 192, offset: 11776)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !401, file: !402, line: 1111, baseType: !81, size: 128, offset: 11968)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !401, file: !402, line: 1173, baseType: !957, size: 64, offset: 12096)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !959, line: 62, size: 256, align: 256, elements: !960)
!959 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!960 = !{!961, !962, !963, !968}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !958, file: !959, line: 75, baseType: !411, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !958, file: !959, line: 90, baseType: !411, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !958, file: !959, line: 124, baseType: !964, size: 64, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !959, line: 109, size: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !964, file: !959, line: 110, baseType: !258, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !964, file: !959, line: 112, baseType: !258, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !959, line: 144, baseType: !411, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !401, file: !402, line: 1174, baseType: !410, size: 32, offset: 12160)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !401, file: !402, line: 1179, baseType: !187, size: 64, offset: 12224)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !401, file: !402, line: 1182, baseType: !972, size: 128, offset: 12288)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !333, line: 76, size: 128, elements: !973)
!973 = !{!974, !979, !982}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !972, file: !333, line: 85, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !976, line: 7, size: 64, elements: !977)
!976 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !975, file: !976, line: 12, baseType: !563, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !972, file: !333, line: 88, baseType: !980, size: 8, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !82, line: 30, baseType: !981)
!981 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !972, file: !333, line: 95, baseType: !980, size: 8, offset: 72)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !402, line: 1184, baseType: !984, size: 128, offset: 12416)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !402, line: 1184, size: 128, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !984, file: !402, line: 1185, baseType: !416, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !984, file: !402, line: 1186, baseType: !694, size: 128, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !401, file: !402, line: 1190, baseType: !989, size: 64, offset: 12544)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !402, line: 53, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !401, file: !402, line: 1192, baseType: !992, size: 128, offset: 12608)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !333, line: 64, size: 128, elements: !993)
!993 = !{!994, !1087, !1088}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !992, file: !333, line: 65, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !228, line: 68, size: 512, align: 128, elements: !997)
!997 = !{!998, !999, !1079, !1086}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !228, line: 69, baseType: !187, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !228, line: 77, baseType: !1000, size: 320, offset: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !228, line: 77, size: 320, elements: !1001)
!1001 = !{!1002, !1011, !1016, !1044, !1052, !1058, !1071, !1078}
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !228, line: 78, baseType: !1003, size: 320)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !228, line: 78, size: 320, elements: !1004)
!1004 = !{!1005, !1006, !1009, !1010}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1003, file: !228, line: 84, baseType: !81, size: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1003, file: !228, line: 86, baseType: !1007, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !228, line: 26, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1003, file: !228, line: 87, baseType: !187, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1003, file: !228, line: 94, baseType: !187, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !228, line: 96, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !228, line: 96, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1012, file: !228, line: 101, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !82, line: 143, baseType: !256)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !228, line: 103, baseType: !1017, size: 320)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !228, line: 103, size: 320, elements: !1018)
!1018 = !{!1019, !1029, !1032, !1033}
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !228, line: 104, baseType: !1020, size: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !228, line: 104, size: 128, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1020, file: !228, line: 105, baseType: !81, size: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !228, line: 106, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !228, line: 106, size: 128, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1024, file: !228, line: 107, baseType: !995, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1024, file: !228, line: 109, baseType: !121, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1024, file: !228, line: 110, baseType: !121, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1017, file: !228, line: 117, baseType: !1030, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !228, line: 117, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1017, file: !228, line: 119, baseType: !63, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !228, line: 120, baseType: !1034, size: 64, offset: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !228, line: 120, size: 64, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1034, file: !228, line: 121, baseType: !63, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1034, file: !228, line: 122, baseType: !187, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !228, line: 123, baseType: !1039, size: 32)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !228, line: 123, size: 32, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1039, file: !228, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1039, file: !228, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1039, file: !228, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !228, line: 130, baseType: !1045, size: 192)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !228, line: 130, size: 192, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1045, file: !228, line: 131, baseType: !187, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1045, file: !228, line: 134, baseType: !549, size: 8, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1045, file: !228, line: 135, baseType: !549, size: 8, offset: 72)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1045, file: !228, line: 136, baseType: !278, size: 32, offset: 96)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1045, file: !228, line: 137, baseType: !7, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !228, line: 139, baseType: !1053, size: 256)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !228, line: 139, size: 256, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1053, file: !228, line: 140, baseType: !187, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1053, file: !228, line: 141, baseType: !278, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1053, file: !228, line: 143, baseType: !81, size: 128, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !228, line: 145, baseType: !1059, size: 256)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !228, line: 145, size: 256, elements: !1060)
!1060 = !{!1061, !1062, !1064, !1065, !1070}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1059, file: !228, line: 146, baseType: !187, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1059, file: !228, line: 147, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !217, line: 509, baseType: !995)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1059, file: !228, line: 148, baseType: !187, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !228, line: 149, baseType: !1066, size: 64, offset: 192)
!1066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !228, line: 149, size: 64, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1066, file: !228, line: 150, baseType: !244, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1066, file: !228, line: 151, baseType: !278, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1059, file: !228, line: 156, baseType: !95, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !228, line: 159, baseType: !1072, size: 128)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !228, line: 159, size: 128, elements: !1073)
!1073 = !{!1074, !1077}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1072, file: !228, line: 161, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !228, line: 161, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1072, file: !228, line: 162, baseType: !63, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1000, file: !228, line: 176, baseType: !694, size: 128, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !228, line: 179, baseType: !1080, size: 32, offset: 384)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !228, line: 179, size: 32, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1080, file: !228, line: 184, baseType: !278, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1080, file: !228, line: 192, baseType: !7, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1080, file: !228, line: 194, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1080, file: !228, line: 195, baseType: !121, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !996, file: !228, line: 199, baseType: !278, size: 32, offset: 416)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !992, file: !333, line: 67, baseType: !411, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !333, line: 68, baseType: !411, size: 32, offset: 96)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !401, file: !402, line: 1206, baseType: !121, size: 32, offset: 12736)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !401, file: !402, line: 1207, baseType: !121, size: 32, offset: 12768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !401, file: !402, line: 1209, baseType: !187, size: 64, offset: 12800)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !401, file: !402, line: 1219, baseType: !256, size: 64, offset: 12864)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !401, file: !402, line: 1220, baseType: !256, size: 64, offset: 12928)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !401, file: !402, line: 1317, baseType: !121, size: 32, offset: 12992)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !401, file: !402, line: 1319, baseType: !400, size: 64, offset: 13056)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !401, file: !402, line: 1322, baseType: !1097, size: 64, offset: 13120)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !402, line: 1322, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !401, file: !402, line: 1326, baseType: !416, size: 32, offset: 13184)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !401, file: !402, line: 1342, baseType: !63, size: 64, offset: 13248)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !401, file: !402, line: 1343, baseType: !258, size: 64, offset: 13312)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !401, file: !402, line: 1344, baseType: !256, size: 64, offset: 13376)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !401, file: !402, line: 1345, baseType: !258, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !401, file: !402, line: 1346, baseType: !258, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !401, file: !402, line: 1347, baseType: !258, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !401, file: !402, line: 1348, baseType: !694, size: 128, align: 64, offset: 13504)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !401, file: !402, line: 1358, baseType: !1108, size: 34816, offset: 13824)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1109, line: 485, size: 34816, elements: !1110)
!1109 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1140, !1141, !1142, !1143, !1144, !1145, !1148, !1149, !1150}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1108, file: !1109, line: 487, baseType: !1112, size: 192)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 192, elements: !138)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1114, line: 16, size: 64, elements: !1115)
!1114 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1113, file: !1114, line: 17, baseType: !384, size: 16)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1113, file: !1114, line: 18, baseType: !384, size: 16, offset: 16)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1113, file: !1114, line: 19, baseType: !384, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1113, file: !1114, line: 19, baseType: !384, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1113, file: !1114, line: 19, baseType: !384, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1113, file: !1114, line: 19, baseType: !384, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1113, file: !1114, line: 19, baseType: !384, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1113, file: !1114, line: 20, baseType: !384, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1113, file: !1114, line: 20, baseType: !384, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1113, file: !1114, line: 20, baseType: !384, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1113, file: !1114, line: 20, baseType: !384, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1113, file: !1114, line: 20, baseType: !384, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1113, file: !1114, line: 20, baseType: !384, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1108, file: !1109, line: 491, baseType: !187, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1108, file: !1109, line: 495, baseType: !179, size: 16, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1108, file: !1109, line: 496, baseType: !179, size: 16, offset: 272)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1108, file: !1109, line: 497, baseType: !179, size: 16, offset: 288)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1108, file: !1109, line: 498, baseType: !179, size: 16, offset: 304)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1108, file: !1109, line: 502, baseType: !187, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1108, file: !1109, line: 503, baseType: !187, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1108, file: !1109, line: 514, baseType: !1137, size: 256, offset: 448)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 256, elements: !337)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1109, line: 483, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1108, file: !1109, line: 516, baseType: !187, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1108, file: !1109, line: 518, baseType: !187, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1108, file: !1109, line: 520, baseType: !187, size: 64, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1108, file: !1109, line: 521, baseType: !187, size: 64, offset: 896)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1108, file: !1109, line: 522, baseType: !187, size: 64, offset: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1108, file: !1109, line: 528, baseType: !1146, size: 64, offset: 1024)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1109, line: 10, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1108, file: !1109, line: 535, baseType: !187, size: 64, offset: 1088)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1108, file: !1109, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1108, file: !1109, line: 540, baseType: !1151, size: 33280, offset: 1536)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1152, line: 317, size: 33280, elements: !1153)
!1152 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1151, file: !1152, line: 330, baseType: !7, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1151, file: !1152, line: 337, baseType: !187, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1151, file: !1152, line: 348, baseType: !1157, size: 32768, offset: 512)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1152, line: 304, size: 32768, elements: !1158)
!1158 = !{!1159, !1174, !1213, !1263, !1280}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1157, file: !1152, line: 305, baseType: !1160, size: 896)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1152, line: 12, size: 896, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1173}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1160, file: !1152, line: 13, baseType: !410, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1160, file: !1152, line: 14, baseType: !410, size: 32, offset: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1160, file: !1152, line: 15, baseType: !410, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1160, file: !1152, line: 16, baseType: !410, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1160, file: !1152, line: 17, baseType: !410, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1160, file: !1152, line: 18, baseType: !410, size: 32, offset: 160)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1160, file: !1152, line: 19, baseType: !410, size: 32, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1160, file: !1152, line: 22, baseType: !1170, size: 640, offset: 224)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 640, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 20)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1160, file: !1152, line: 25, baseType: !410, size: 32, offset: 864)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1157, file: !1152, line: 306, baseType: !1175, size: 4096, align: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1152, line: 34, size: 4096, align: 128, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1196, !1197, !1198, !1202, !1204, !1208}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1175, file: !1152, line: 35, baseType: !384, size: 16)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1175, file: !1152, line: 36, baseType: !384, size: 16, offset: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1175, file: !1152, line: 37, baseType: !384, size: 16, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1175, file: !1152, line: 38, baseType: !384, size: 16, offset: 48)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1152, line: 39, baseType: !1182, size: 128, offset: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1152, line: 39, size: 128, elements: !1183)
!1183 = !{!1184, !1189}
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1152, line: 40, baseType: !1185, size: 128)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !1152, line: 40, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1185, file: !1152, line: 41, baseType: !256, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1185, file: !1152, line: 42, baseType: !256, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1152, line: 44, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !1152, line: 44, size: 128, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1190, file: !1152, line: 45, baseType: !410, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1190, file: !1152, line: 46, baseType: !410, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1190, file: !1152, line: 47, baseType: !410, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1190, file: !1152, line: 48, baseType: !410, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1175, file: !1152, line: 51, baseType: !410, size: 32, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1175, file: !1152, line: 52, baseType: !410, size: 32, offset: 224)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1175, file: !1152, line: 55, baseType: !1199, size: 1024, offset: 256)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 1024, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1175, file: !1152, line: 58, baseType: !1203, size: 2048, offset: 1280)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 2048, elements: !142)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1175, file: !1152, line: 60, baseType: !1205, size: 384, offset: 3328)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 384, elements: !1206)
!1206 = !{!1207}
!1207 = !DISubrange(count: 12)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1152, line: 62, baseType: !1209, size: 384, offset: 3712)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1152, line: 62, size: 384, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1209, file: !1152, line: 63, baseType: !1205, size: 384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1209, file: !1152, line: 64, baseType: !1205, size: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1157, file: !1152, line: 307, baseType: !1214, size: 1088)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1152, line: 79, size: 1088, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1262}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1214, file: !1152, line: 80, baseType: !410, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1214, file: !1152, line: 81, baseType: !410, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1214, file: !1152, line: 82, baseType: !410, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1214, file: !1152, line: 83, baseType: !410, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1214, file: !1152, line: 84, baseType: !410, size: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1214, file: !1152, line: 85, baseType: !410, size: 32, offset: 160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1214, file: !1152, line: 86, baseType: !410, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1214, file: !1152, line: 88, baseType: !1170, size: 640, offset: 224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1214, file: !1152, line: 89, baseType: !547, size: 8, offset: 864)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1214, file: !1152, line: 90, baseType: !547, size: 8, offset: 872)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1214, file: !1152, line: 91, baseType: !547, size: 8, offset: 880)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1214, file: !1152, line: 92, baseType: !547, size: 8, offset: 888)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1214, file: !1152, line: 93, baseType: !547, size: 8, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1214, file: !1152, line: 94, baseType: !547, size: 8, offset: 904)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1214, file: !1152, line: 95, baseType: !1231, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1233, line: 11, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1232, file: !1233, line: 12, baseType: !172, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1232, file: !1233, line: 13, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1239, line: 56, size: 1344, elements: !1240)
!1239 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1238, file: !1239, line: 61, baseType: !187, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1238, file: !1239, line: 62, baseType: !187, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1238, file: !1239, line: 63, baseType: !187, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1238, file: !1239, line: 64, baseType: !187, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1238, file: !1239, line: 65, baseType: !187, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1238, file: !1239, line: 66, baseType: !187, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1238, file: !1239, line: 68, baseType: !187, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1238, file: !1239, line: 69, baseType: !187, size: 64, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1238, file: !1239, line: 70, baseType: !187, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1238, file: !1239, line: 71, baseType: !187, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1238, file: !1239, line: 72, baseType: !187, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1238, file: !1239, line: 73, baseType: !187, size: 64, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1238, file: !1239, line: 74, baseType: !187, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1238, file: !1239, line: 75, baseType: !187, size: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1238, file: !1239, line: 76, baseType: !187, size: 64, offset: 896)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1238, file: !1239, line: 81, baseType: !187, size: 64, offset: 960)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1238, file: !1239, line: 83, baseType: !187, size: 64, offset: 1024)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1238, file: !1239, line: 84, baseType: !187, size: 64, offset: 1088)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !1239, line: 85, baseType: !187, size: 64, offset: 1152)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1238, file: !1239, line: 86, baseType: !187, size: 64, offset: 1216)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1238, file: !1239, line: 87, baseType: !187, size: 64, offset: 1280)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1214, file: !1152, line: 96, baseType: !410, size: 32, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1157, file: !1152, line: 308, baseType: !1264, size: 4608, align: 512)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1152, line: 289, size: 4608, align: 512, elements: !1265)
!1265 = !{!1266, !1267, !1276}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1264, file: !1152, line: 290, baseType: !1175, size: 4096, align: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1264, file: !1152, line: 291, baseType: !1268, size: 512, offset: 4096)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1152, line: 268, size: 512, elements: !1269)
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1268, file: !1152, line: 269, baseType: !256, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1268, file: !1152, line: 270, baseType: !256, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1268, file: !1152, line: 271, baseType: !1273, size: 384, offset: 128)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 384, elements: !1274)
!1274 = !{!1275}
!1275 = !DISubrange(count: 6)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1264, file: !1152, line: 292, baseType: !1277, offset: 4608)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 0)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1157, file: !1152, line: 309, baseType: !1281, size: 32768)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 32768, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 4096)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !228, line: 378, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !393, file: !228, line: 384, baseType: !716, size: 192, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !248, file: !228, line: 500, baseType: !95, offset: 6656)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !248, file: !228, line: 501, baseType: !1289, size: 64, offset: 6656)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !228, line: 387, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !248, file: !228, line: 516, baseType: !1292, size: 64, offset: 6720)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1294, line: 18, flags: DIFlagFwdDecl)
!1294 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !248, file: !228, line: 519, baseType: !215, size: 64, offset: 6784)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !248, file: !228, line: 521, baseType: !1297, size: 64, offset: 6848)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !228, line: 521, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !248, file: !228, line: 545, baseType: !278, size: 32, offset: 6912)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !248, file: !228, line: 548, baseType: !980, size: 8, offset: 6944)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !248, file: !228, line: 550, baseType: !1302, offset: 6952)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1303, line: 142, elements: !109)
!1303 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !248, file: !228, line: 554, baseType: !1305, size: 256, offset: 6976)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1306, line: 102, size: 256, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !{!1308, !1309, !1310}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1305, file: !1306, line: 103, baseType: !286, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1305, file: !1306, line: 104, baseType: !81, size: 128, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1305, file: !1306, line: 105, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1306, line: 21, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !248, file: !228, line: 557, baseType: !410, size: 32, offset: 7232)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !245, file: !228, line: 565, baseType: !1318, offset: 7296)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: -1)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !227, file: !228, line: 333, baseType: !1322, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !217, line: 284, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !217, line: 284, size: 64, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1323, file: !217, line: 284, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !276, line: 19, baseType: !187)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !227, file: !228, line: 334, baseType: !187, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !227, file: !228, line: 343, baseType: !1329, size: 256, offset: 704)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !228, line: 340, size: 256, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1329, file: !228, line: 341, baseType: !235, size: 192, align: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1329, file: !228, line: 342, baseType: !187, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !227, file: !228, line: 351, baseType: !81, size: 128, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !227, file: !228, line: 353, baseType: !1335, size: 64, offset: 1088)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !228, line: 353, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !227, file: !228, line: 356, baseType: !1338, size: 64, offset: 1152)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !228, line: 356, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !227, file: !228, line: 359, baseType: !187, size: 64, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !227, file: !228, line: 361, baseType: !215, size: 64, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !227, file: !228, line: 362, baseType: !63, size: 64, offset: 1344)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !227, file: !228, line: 365, baseType: !286, size: 64, offset: 1408)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !227, file: !228, line: 373, baseType: !1346, offset: 1472)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !228, line: 296, elements: !109)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !194, file: !162, line: 90, baseType: !189, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !194, file: !162, line: 91, baseType: !1349, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !152, file: !77, line: 143, baseType: !1351, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1354, !88}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1357)
!1357 = !{!1358, !1359, !1363, !1367, !1375, !1379}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1356, file: !18, line: 40, baseType: !17, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1356, file: !18, line: 41, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!980}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1356, file: !18, line: 42, baseType: !1364, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!63}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1356, file: !18, line: 43, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1371, !1373}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1356, file: !18, line: 44, baseType: !1376, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1371}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1356, file: !18, line: 45, baseType: !1380, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !63}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !152, file: !77, line: 144, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1371, !88}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !152, file: !77, line: 145, baseType: !1388, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !88, !1391, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1294, line: 23, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1294, line: 21, size: 32, elements: !1394)
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1393, file: !1294, line: 22, baseType: !1396, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !82, line: 32, baseType: !876)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1294, line: 28, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1294, line: 26, size: 32, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1399, file: !1294, line: 27, baseType: !1402, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !82, line: 33, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !170, line: 50, baseType: !7)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !76, file: !77, line: 70, baseType: !1405, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1407, line: 123, size: 1024, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1551, !1552, !1553, !1554, !1555}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1406, file: !1407, line: 124, baseType: !278, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1406, file: !1407, line: 125, baseType: !278, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1406, file: !1407, line: 135, baseType: !1405, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1406, file: !1407, line: 136, baseType: !69, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1406, file: !1407, line: 138, baseType: !235, size: 192, align: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1406, file: !1407, line: 140, baseType: !1371, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1406, file: !1407, line: 141, baseType: !7, size: 32, offset: 448)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 142, baseType: !1417, size: 256, offset: 512)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 142, size: 256, elements: !1418)
!1418 = !{!1419, !1474, !1478}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1417, file: !1407, line: 143, baseType: !1420, size: 192)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1407, line: 91, size: 192, elements: !1421)
!1421 = !{!1422, !1423, !1424}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1420, file: !1407, line: 92, baseType: !187, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1420, file: !1407, line: 94, baseType: !252, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1420, file: !1407, line: 100, baseType: !1425, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1407, line: 180, size: 704, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1444, !1445, !1446, !1472, !1473}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1426, file: !1407, line: 182, baseType: !1405, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1426, file: !1407, line: 183, baseType: !7, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1426, file: !1407, line: 186, baseType: !1431, size: 192, offset: 128)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1432, line: 19, size: 192, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1433 = !{!1434, !1442, !1443}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1431, file: !1432, line: 20, baseType: !1435, size: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1436, line: 292, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1435, file: !1436, line: 293, baseType: !95)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1435, file: !1436, line: 295, baseType: !1440, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !82, line: 148, baseType: !7)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1435, file: !1436, line: 296, baseType: !63, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1431, file: !1432, line: 21, baseType: !7, size: 32, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1431, file: !1432, line: 22, baseType: !7, size: 32, offset: 160)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1426, file: !1407, line: 187, baseType: !410, size: 32, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1426, file: !1407, line: 188, baseType: !410, size: 32, offset: 352)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1426, file: !1407, line: 189, baseType: !1447, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1407, line: 168, size: 320, elements: !1449)
!1449 = !{!1450, !1456, !1460, !1464, !1468}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1448, file: !1407, line: 169, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!121, !1454, !1425}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !217, line: 539, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1448, file: !1407, line: 171, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!121, !1405, !69, !178}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1448, file: !1407, line: 173, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!121, !1405}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1448, file: !1407, line: 174, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!121, !1405, !1405, !69}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1448, file: !1407, line: 176, baseType: !1469, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!121, !1454, !1405, !1425}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1426, file: !1407, line: 192, baseType: !81, size: 128, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1426, file: !1407, line: 194, baseType: !687, size: 128, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1417, file: !1407, line: 144, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1407, line: 103, size: 64, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1475, file: !1407, line: 104, baseType: !1405, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1417, file: !1407, line: 145, baseType: !1479, size: 256)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1407, line: 107, size: 256, elements: !1480)
!1480 = !{!1481, !1546, !1549, !1550}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1479, file: !1407, line: 108, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1407, line: 217, size: 768, elements: !1485)
!1485 = !{!1486, !1506, !1510, !1514, !1519, !1523, !1527, !1531, !1532, !1533, !1534, !1542}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1484, file: !1407, line: 222, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!121, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1407, line: 197, size: 1088, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1491, file: !1407, line: 199, baseType: !1405, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1491, file: !1407, line: 200, baseType: !215, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1491, file: !1407, line: 201, baseType: !1454, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1491, file: !1407, line: 202, baseType: !63, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1491, file: !1407, line: 205, baseType: !355, size: 192, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1491, file: !1407, line: 206, baseType: !355, size: 192, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1491, file: !1407, line: 207, baseType: !121, size: 32, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1491, file: !1407, line: 208, baseType: !81, size: 128, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1491, file: !1407, line: 209, baseType: !137, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1491, file: !1407, line: 211, baseType: !184, size: 64, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1491, file: !1407, line: 212, baseType: !980, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1491, file: !1407, line: 213, baseType: !980, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1491, file: !1407, line: 214, baseType: !1338, size: 64, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1484, file: !1407, line: 223, baseType: !1507, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1490}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1484, file: !1407, line: 236, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!121, !1454, !63}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1484, file: !1407, line: 238, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!63, !1454, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1484, file: !1407, line: 239, baseType: !1520, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!63, !1454, !63, !1518}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1484, file: !1407, line: 240, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1454, !63}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1484, file: !1407, line: 242, baseType: !1528, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!168, !1490, !137, !184, !218}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1484, file: !1407, line: 252, baseType: !184, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1484, file: !1407, line: 259, baseType: !980, size: 8, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1484, file: !1407, line: 260, baseType: !1528, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1484, file: !1407, line: 263, baseType: !1535, size: 64, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1538, !1490, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1539, line: 52, baseType: !7)
!1539 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1407, line: 27, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1484, file: !1407, line: 266, baseType: !1543, size: 64, offset: 704)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!121, !1490, !226}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1479, file: !1407, line: 109, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1407, line: 31, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1479, file: !1407, line: 110, baseType: !218, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1479, file: !1407, line: 111, baseType: !1405, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1406, file: !1407, line: 148, baseType: !63, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1406, file: !1407, line: 154, baseType: !256, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1407, line: 156, baseType: !179, size: 16, offset: 896)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1406, file: !1407, line: 157, baseType: !178, size: 16, offset: 912)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1406, file: !1407, line: 158, baseType: !1556, size: 64, offset: 960)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1407, line: 32, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !76, file: !77, line: 71, baseType: !1559, size: 32, offset: 448)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1560, line: 19, size: 32, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1559, file: !1560, line: 20, baseType: !416, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !76, file: !77, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !76, file: !77, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !76, file: !77, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !76, file: !77, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !76, file: !77, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !73, file: !30, line: 463, baseType: !1569, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !73, file: !30, line: 465, baseType: !1571, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !73, file: !30, line: 467, baseType: !69, size: 64, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !30, line: 468, baseType: !1575, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1585, !1590, !1594}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1577, file: !30, line: 88, baseType: !69, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1577, file: !30, line: 89, baseType: !191, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1577, file: !30, line: 90, baseType: !1582, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!121, !1569, !132}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1577, file: !30, line: 91, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!137, !1569, !1589, !1391, !1397}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1577, file: !30, line: 93, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !1569}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1577, file: !30, line: 95, baseType: !1595, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1598)
!1598 = !{!1599, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1597, file: !37, line: 279, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!121, !1569}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1597, file: !37, line: 280, baseType: !1591, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1597, file: !37, line: 281, baseType: !1600, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1597, file: !37, line: 282, baseType: !1600, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1597, file: !37, line: 283, baseType: !1600, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1597, file: !37, line: 284, baseType: !1600, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1597, file: !37, line: 285, baseType: !1600, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1597, file: !37, line: 286, baseType: !1600, size: 64, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1597, file: !37, line: 287, baseType: !1600, size: 64, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1597, file: !37, line: 288, baseType: !1600, size: 64, offset: 576)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1597, file: !37, line: 289, baseType: !1600, size: 64, offset: 640)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1597, file: !37, line: 290, baseType: !1600, size: 64, offset: 704)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1597, file: !37, line: 291, baseType: !1600, size: 64, offset: 768)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1597, file: !37, line: 292, baseType: !1600, size: 64, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1597, file: !37, line: 293, baseType: !1600, size: 64, offset: 896)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1597, file: !37, line: 294, baseType: !1600, size: 64, offset: 960)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1597, file: !37, line: 295, baseType: !1600, size: 64, offset: 1024)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1597, file: !37, line: 296, baseType: !1600, size: 64, offset: 1088)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1597, file: !37, line: 297, baseType: !1600, size: 64, offset: 1152)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1597, file: !37, line: 298, baseType: !1600, size: 64, offset: 1216)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1597, file: !37, line: 299, baseType: !1600, size: 64, offset: 1280)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1597, file: !37, line: 300, baseType: !1600, size: 64, offset: 1344)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1597, file: !37, line: 301, baseType: !1600, size: 64, offset: 1408)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !73, file: !30, line: 470, baseType: !1626, size: 64, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1628, line: 82, size: 1408, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1715, !1718, !1721}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1627, file: !1628, line: 83, baseType: !69, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1627, file: !1628, line: 84, baseType: !69, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1627, file: !1628, line: 85, baseType: !1569, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1627, file: !1628, line: 86, baseType: !191, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1627, file: !1628, line: 87, baseType: !191, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1627, file: !1628, line: 88, baseType: !191, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1627, file: !1628, line: 90, baseType: !1637, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!121, !1569, !1640}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1649, !1650, !1651, !1652, !1666, !1679, !1680, !1681, !1682, !1683, !1691, !1692, !1693, !1694, !1695, !1696}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1641, file: !24, line: 96, baseType: !69, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1641, file: !24, line: 97, baseType: !1626, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1641, file: !24, line: 99, baseType: !1646, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1648, line: 76, flags: DIFlagFwdDecl)
!1648 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1641, file: !24, line: 100, baseType: !69, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1641, file: !24, line: 102, baseType: !980, size: 8, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1641, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1641, file: !24, line: 105, baseType: !1653, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1656, line: 262, size: 1600, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !{!1658, !1660, !1661, !1665}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1655, file: !1656, line: 263, baseType: !1659, size: 256)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 256, elements: !1200)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1655, file: !1656, line: 264, baseType: !1659, size: 256, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1655, file: !1656, line: 265, baseType: !1662, size: 1024, offset: 512)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1024, elements: !1663)
!1663 = !{!1664}
!1664 = !DISubrange(count: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1655, file: !1656, line: 266, baseType: !1371, size: 64, offset: 1536)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1641, file: !24, line: 106, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1656, line: 210, size: 256, elements: !1670)
!1670 = !{!1671, !1675, !1677, !1678}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1669, file: !1656, line: 211, baseType: !1672, size: 72)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 72, elements: !1673)
!1673 = !{!1674}
!1674 = !DISubrange(count: 9)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1669, file: !1656, line: 212, baseType: !1676, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1656, line: 14, baseType: !187)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1669, file: !1656, line: 213, baseType: !411, size: 32, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1669, file: !1656, line: 214, baseType: !411, size: 32, offset: 224)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1641, file: !24, line: 108, baseType: !1600, size: 64, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1641, file: !24, line: 109, baseType: !1591, size: 64, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1641, file: !24, line: 110, baseType: !1600, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1641, file: !24, line: 111, baseType: !1591, size: 64, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1641, file: !24, line: 112, baseType: !1684, size: 64, offset: 704)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!121, !1569, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1688, file: !37, line: 51, baseType: !121, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1641, file: !24, line: 113, baseType: !1600, size: 64, offset: 768)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1641, file: !24, line: 114, baseType: !191, size: 64, offset: 832)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1641, file: !24, line: 115, baseType: !191, size: 64, offset: 896)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1641, file: !24, line: 117, baseType: !1595, size: 64, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1641, file: !24, line: 118, baseType: !1591, size: 64, offset: 1024)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1641, file: !24, line: 120, baseType: !1697, size: 64, offset: 1088)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1627, file: !1628, line: 91, baseType: !1582, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1627, file: !1628, line: 92, baseType: !1600, size: 64, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1627, file: !1628, line: 93, baseType: !1591, size: 64, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1627, file: !1628, line: 94, baseType: !1600, size: 64, offset: 640)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1627, file: !1628, line: 95, baseType: !1591, size: 64, offset: 704)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1627, file: !1628, line: 97, baseType: !1600, size: 64, offset: 768)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1627, file: !1628, line: 98, baseType: !1600, size: 64, offset: 832)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1627, file: !1628, line: 100, baseType: !1684, size: 64, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1627, file: !1628, line: 101, baseType: !1600, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1627, file: !1628, line: 103, baseType: !1600, size: 64, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1627, file: !1628, line: 105, baseType: !1600, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1627, file: !1628, line: 107, baseType: !1595, size: 64, offset: 1152)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1627, file: !1628, line: 109, baseType: !1712, size: 64, offset: 1216)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1628, line: 109, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1627, file: !1628, line: 111, baseType: !1716, size: 64, offset: 1280)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1628, line: 111, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1627, file: !1628, line: 112, baseType: !1719, offset: 1344)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1720, line: 187, elements: !109)
!1720 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1627, file: !1628, line: 114, baseType: !980, size: 8, offset: 1344)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !73, file: !30, line: 471, baseType: !1640, size: 64, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !73, file: !30, line: 473, baseType: !63, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !73, file: !30, line: 475, baseType: !63, size: 64, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !73, file: !30, line: 480, baseType: !355, size: 192, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !73, file: !30, line: 484, baseType: !1727, size: 576, offset: 1216)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1727, file: !30, line: 362, baseType: !81, size: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1727, file: !30, line: 363, baseType: !81, size: 128, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1727, file: !30, line: 364, baseType: !81, size: 128, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1727, file: !30, line: 365, baseType: !81, size: 128, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1727, file: !30, line: 366, baseType: !980, size: 8, offset: 512)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1727, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !73, file: !30, line: 485, baseType: !1736, size: 2304, offset: 1792)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1737)
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1833, !1837}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1736, file: !37, line: 566, baseType: !1687, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1736, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1736, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1736, file: !37, line: 569, baseType: !980, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1736, file: !37, line: 570, baseType: !980, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1736, file: !37, line: 571, baseType: !980, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1736, file: !37, line: 572, baseType: !980, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1736, file: !37, line: 573, baseType: !980, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1736, file: !37, line: 574, baseType: !980, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1736, file: !37, line: 575, baseType: !980, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1736, file: !37, line: 576, baseType: !980, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1736, file: !37, line: 577, baseType: !410, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1736, file: !37, line: 578, baseType: !95, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1736, file: !37, line: 580, baseType: !81, size: 128, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1736, file: !37, line: 581, baseType: !716, size: 192, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1736, file: !37, line: 582, baseType: !1754, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1756, line: 43, size: 1472, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1765, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1755, file: !1756, line: 44, baseType: !69, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1755, file: !1756, line: 45, baseType: !121, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1755, file: !1756, line: 46, baseType: !81, size: 128, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1755, file: !1756, line: 47, baseType: !95, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1755, file: !1756, line: 48, baseType: !1763, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1755, file: !1756, line: 49, baseType: !1766, size: 320, offset: 320)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1767, line: 11, size: 320, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !{!1769, !1770, !1771, !1776}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1766, file: !1767, line: 16, baseType: !680, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1766, file: !1767, line: 17, baseType: !187, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1766, file: !1767, line: 18, baseType: !1772, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !1775}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1766, file: !1767, line: 19, baseType: !410, size: 32, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1755, file: !1756, line: 50, baseType: !187, size: 64, offset: 640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1755, file: !1756, line: 51, baseType: !486, size: 64, offset: 704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1755, file: !1756, line: 52, baseType: !486, size: 64, offset: 768)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1755, file: !1756, line: 53, baseType: !486, size: 64, offset: 832)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1755, file: !1756, line: 54, baseType: !486, size: 64, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1755, file: !1756, line: 55, baseType: !486, size: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1755, file: !1756, line: 56, baseType: !187, size: 64, offset: 1024)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1755, file: !1756, line: 57, baseType: !187, size: 64, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1755, file: !1756, line: 58, baseType: !187, size: 64, offset: 1152)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1755, file: !1756, line: 59, baseType: !187, size: 64, offset: 1216)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1755, file: !1756, line: 60, baseType: !187, size: 64, offset: 1280)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1755, file: !1756, line: 61, baseType: !1569, size: 64, offset: 1344)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1755, file: !1756, line: 62, baseType: !980, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1755, file: !1756, line: 63, baseType: !980, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1736, file: !37, line: 583, baseType: !980, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1736, file: !37, line: 584, baseType: !980, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1736, file: !37, line: 585, baseType: !980, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1736, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1736, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1736, file: !37, line: 592, baseType: !478, size: 512, offset: 576)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1736, file: !37, line: 593, baseType: !256, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1736, file: !37, line: 594, baseType: !1305, size: 256, offset: 1152)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1736, file: !37, line: 595, baseType: !687, size: 128, offset: 1408)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1736, file: !37, line: 596, baseType: !1763, size: 64, offset: 1536)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1736, file: !37, line: 597, baseType: !278, size: 32, offset: 1600)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1736, file: !37, line: 598, baseType: !278, size: 32, offset: 1632)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1736, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1736, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1736, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1736, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1736, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1736, file: !37, line: 604, baseType: !980, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1736, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1736, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1736, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1736, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1736, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1736, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1736, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1736, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1736, file: !37, line: 613, baseType: !121, size: 32, offset: 1792)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1736, file: !37, line: 614, baseType: !121, size: 32, offset: 1824)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1736, file: !37, line: 615, baseType: !256, size: 64, offset: 1856)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1736, file: !37, line: 616, baseType: !256, size: 64, offset: 1920)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1736, file: !37, line: 617, baseType: !256, size: 64, offset: 1984)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1736, file: !37, line: 618, baseType: !256, size: 64, offset: 2048)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1736, file: !37, line: 620, baseType: !1824, size: 64, offset: 2112)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1830}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1825, file: !37, line: 537, baseType: !95)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1825, file: !37, line: 538, baseType: !7, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1825, file: !37, line: 540, baseType: !81, size: 128, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1825, file: !37, line: 543, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1736, file: !37, line: 621, baseType: !1834, size: 64, offset: 2176)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1569, !640}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1736, file: !37, line: 622, baseType: !1838, size: 64, offset: 2240)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !73, file: !30, line: 486, baseType: !1841, size: 64, offset: 4096)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1850, !1851, !1852}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1842, file: !37, line: 643, baseType: !1597, size: 1472)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1842, file: !37, line: 644, baseType: !1600, size: 64, offset: 1472)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1842, file: !37, line: 645, baseType: !1847, size: 64, offset: 1536)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1569, !980}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1842, file: !37, line: 646, baseType: !1600, size: 64, offset: 1600)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1842, file: !37, line: 647, baseType: !1591, size: 64, offset: 1664)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1842, file: !37, line: 648, baseType: !1591, size: 64, offset: 1728)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !73, file: !30, line: 493, baseType: !1854, size: 64, offset: 4160)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !73, file: !30, line: 499, baseType: !81, size: 128, offset: 4224)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !73, file: !30, line: 502, baseType: !1858, size: 64, offset: 4352)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1860)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !73, file: !30, line: 504, baseType: !1862, size: 64, offset: 4416)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !73, file: !30, line: 505, baseType: !256, size: 64, offset: 4480)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !73, file: !30, line: 510, baseType: !256, size: 64, offset: 4544)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !73, file: !30, line: 511, baseType: !1866, size: 64, offset: 4608)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !73, file: !30, line: 513, baseType: !1870, size: 64, offset: 4672)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1871, file: !30, line: 293, baseType: !7, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1871, file: !30, line: 294, baseType: !187, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !73, file: !30, line: 515, baseType: !81, size: 128, offset: 4736)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !73, file: !30, line: 526, baseType: !1877, offset: 4864)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1878, line: 5, elements: !109)
!1878 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !73, file: !30, line: 528, baseType: !1880, size: 64, offset: 4864)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1882, line: 51, size: 1344, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !{!1884, !1885, !1887, !1888, !1978, !1987, !1988, !1989, !1990, !1991, !1992, !1993}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1881, file: !1882, line: 52, baseType: !69, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1881, file: !1882, line: 53, baseType: !1886, size: 32, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1882, line: 28, baseType: !410)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1881, file: !1882, line: 54, baseType: !69, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1881, file: !1882, line: 55, baseType: !1889, size: 192, offset: 192)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1890, line: 17, size: 192, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !{!1892, !1894, !1977}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1889, file: !1890, line: 18, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1889, file: !1890, line: 19, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1890, line: 110, size: 1152, elements: !1898)
!1898 = !{!1899, !1903, !1907, !1913, !1919, !1923, !1927, !1932, !1936, !1937, !1941, !1945, !1949, !1960, !1961, !1962, !1963, !1973}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1897, file: !1890, line: 111, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!1893, !1893}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1897, file: !1890, line: 112, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1893}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1897, file: !1890, line: 113, baseType: !1908, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!980, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1897, file: !1890, line: 114, baseType: !1914, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1371, !1911, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1897, file: !1890, line: 116, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!980, !1911, !69}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1897, file: !1890, line: 118, baseType: !1924, size: 64, offset: 320)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!121, !1911, !69, !7, !63, !184}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1897, file: !1890, line: 123, baseType: !1928, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!121, !1911, !69, !1931, !184}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1897, file: !1890, line: 126, baseType: !1933, size: 64, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!69, !1911}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1897, file: !1890, line: 127, baseType: !1933, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1897, file: !1890, line: 128, baseType: !1938, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1893, !1911}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1897, file: !1890, line: 130, baseType: !1942, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1893, !1911, !1893}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1897, file: !1890, line: 133, baseType: !1946, size: 64, offset: 704)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1893, !1911, !69}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1897, file: !1890, line: 135, baseType: !1950, size: 64, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!121, !1911, !69, !69, !7, !7, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1890, line: 43, size: 640, elements: !1955)
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1954, file: !1890, line: 44, baseType: !1893, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1954, file: !1890, line: 45, baseType: !7, size: 32, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1954, file: !1890, line: 46, baseType: !1959, size: 512, offset: 128)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 512, elements: !516)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1897, file: !1890, line: 140, baseType: !1942, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1897, file: !1890, line: 143, baseType: !1938, size: 64, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1897, file: !1890, line: 145, baseType: !1900, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1897, file: !1890, line: 146, baseType: !1964, size: 64, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!121, !1911, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1890, line: 29, size: 128, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1968, file: !1890, line: 30, baseType: !7, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1968, file: !1890, line: 31, baseType: !7, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1968, file: !1890, line: 32, baseType: !1911, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1897, file: !1890, line: 148, baseType: !1974, size: 64, offset: 1088)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!121, !1911, !1569}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1889, file: !1890, line: 20, baseType: !1569, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1881, file: !1882, line: 57, baseType: !1979, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1882, line: 31, size: 704, elements: !1981)
!1981 = !{!1982, !1983, !1984, !1985, !1986}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1980, file: !1882, line: 32, baseType: !137, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1980, file: !1882, line: 33, baseType: !121, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1980, file: !1882, line: 34, baseType: !63, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1980, file: !1882, line: 35, baseType: !1979, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1980, file: !1882, line: 43, baseType: !206, size: 448, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1881, file: !1882, line: 58, baseType: !1979, size: 64, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1881, file: !1882, line: 59, baseType: !1880, size: 64, offset: 512)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1881, file: !1882, line: 60, baseType: !1880, size: 64, offset: 576)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1881, file: !1882, line: 61, baseType: !1880, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1881, file: !1882, line: 63, baseType: !76, size: 512, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1881, file: !1882, line: 65, baseType: !187, size: 64, offset: 1216)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1881, file: !1882, line: 66, baseType: !63, size: 64, offset: 1280)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !73, file: !30, line: 529, baseType: !1893, size: 64, offset: 4928)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !73, file: !30, line: 534, baseType: !1996, size: 32, offset: 4992)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !82, line: 16, baseType: !1997)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !82, line: 13, baseType: !410)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !73, file: !30, line: 535, baseType: !410, size: 32, offset: 5024)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !73, file: !30, line: 537, baseType: !95, offset: 5056)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !73, file: !30, line: 538, baseType: !81, size: 128, offset: 5056)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !73, file: !30, line: 540, baseType: !2002, size: 64, offset: 5184)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2004, line: 54, size: 960, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2016, !2020, !2021, !2022, !2023, !2027, !2031, !2032}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2003, file: !2004, line: 55, baseType: !69, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2003, file: !2004, line: 56, baseType: !1646, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2003, file: !2004, line: 58, baseType: !191, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2003, file: !2004, line: 59, baseType: !191, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2003, file: !2004, line: 60, baseType: !88, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2003, file: !2004, line: 62, baseType: !1582, size: 64, offset: 320)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2003, file: !2004, line: 63, baseType: !2013, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!137, !1569, !1589}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2003, file: !2004, line: 65, baseType: !2017, size: 64, offset: 448)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !2002}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2003, file: !2004, line: 66, baseType: !1591, size: 64, offset: 512)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2003, file: !2004, line: 68, baseType: !1600, size: 64, offset: 576)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2003, file: !2004, line: 70, baseType: !1354, size: 64, offset: 640)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2003, file: !2004, line: 71, baseType: !2024, size: 64, offset: 704)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!1371, !1569}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2003, file: !2004, line: 73, baseType: !2028, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !1569, !1391, !1397}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2003, file: !2004, line: 75, baseType: !1595, size: 64, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2003, file: !2004, line: 77, baseType: !1716, size: 64, offset: 896)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !73, file: !30, line: 541, baseType: !191, size: 64, offset: 5248)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !73, file: !30, line: 543, baseType: !1591, size: 64, offset: 5312)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !73, file: !30, line: 544, baseType: !2036, size: 64, offset: 5376)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !73, file: !30, line: 545, baseType: !2039, size: 64, offset: 5440)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !73, file: !30, line: 547, baseType: !980, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !73, file: !30, line: 548, baseType: !980, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !73, file: !30, line: 549, baseType: !980, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !73, file: !30, line: 550, baseType: !980, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !65, file: !66, line: 38, baseType: !355, size: 192, offset: 5632)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "br_ops", scope: !65, file: !66, line: 39, baseType: !2047, size: 64, offset: 5824)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpga_bridge_ops", file: !66, line: 18, size: 256, elements: !2050)
!2050 = !{!2051, !2055, !2059, !2063}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "enable_show", scope: !2049, file: !66, line: 19, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!121, !64}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "enable_set", scope: !2049, file: !66, line: 20, baseType: !2056, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!121, !64, !980}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fpga_bridge_remove", scope: !2049, file: !66, line: 21, baseType: !2060, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !64}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2049, file: !66, line: 22, baseType: !191, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !65, file: !66, line: 40, baseType: !2065, size: 64, offset: 5888)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpga_image_info", file: !2067, line: 92, size: 576, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/fpga/fpga-mgr.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2074, !2077, !2078, !2079, !2080, !2081}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2066, file: !2067, line: 93, baseType: !410, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "enable_timeout_us", scope: !2066, file: !2067, line: 94, baseType: !410, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timeout_us", scope: !2066, file: !2067, line: 95, baseType: !410, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "config_complete_timeout_us", scope: !2066, file: !2067, line: 96, baseType: !410, size: 32, offset: 96)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_name", scope: !2066, file: !2067, line: 97, baseType: !137, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !2066, file: !2067, line: 98, baseType: !2075, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !2067, line: 15, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2066, file: !2067, line: 99, baseType: !69, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2066, file: !2067, line: 100, baseType: !184, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "region_id", scope: !2066, file: !2067, line: 101, baseType: !121, size: 32, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2066, file: !2067, line: 102, baseType: !1569, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "overlay", scope: !2066, file: !2067, line: 104, baseType: !1880, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !66, line: 41, baseType: !81, size: 128, offset: 5952)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !65, file: !66, line: 42, baseType: !63, size: 64, offset: 6080)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2087 = !{!2088, !2093, !2098, !2103, !2108, !2113, !2115, !0, !2122, !2124, !2129, !2134, !2137, !2139, !2142, !2156}
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(name: "__key", scope: !2090, file: !3, line: 346, type: !1719, isLocal: true, isDefinition: true)
!2090 = distinct !DISubprogram(name: "fpga_bridge_create", scope: !3, file: !3, line: 326, type: !2091, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!64, !1569, !69, !2047, !63}
!2093 = !DIGlobalVariableExpression(var: !2094, expr: !DIExpression())
!2094 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description171", scope: !2, file: !3, line: 500, type: !2095, isLocal: true, isDefinition: true, align: 8)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 344, elements: !2096)
!2096 = !{!2097}
!2097 = !DISubrange(count: 43)
!2098 = !DIGlobalVariableExpression(var: !2099, expr: !DIExpression())
!2099 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author172", scope: !2, file: !3, line: 501, type: !2100, isLocal: true, isDefinition: true, align: 8)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 384, elements: !2101)
!2101 = !{!2102}
!2102 = !DISubrange(count: 48)
!2103 = !DIGlobalVariableExpression(var: !2104, expr: !DIExpression())
!2104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file173", scope: !2, file: !3, line: 502, type: !2105, isLocal: true, isDefinition: true, align: 8)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 336, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 42)
!2108 = !DIGlobalVariableExpression(var: !2109, expr: !DIExpression())
!2109 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license174", scope: !2, file: !3, line: 502, type: !2110, isLocal: true, isDefinition: true, align: 8)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 216, elements: !2111)
!2111 = !{!2112}
!2112 = !DISubrange(count: 27)
!2113 = !DIGlobalVariableExpression(var: !2114, expr: !DIExpression())
!2114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fpga_bridge_dev_init175", scope: !2, file: !3, line: 504, type: !63, isLocal: true, isDefinition: true)
!2115 = !DIGlobalVariableExpression(var: !2116, expr: !DIExpression())
!2116 = distinct !DIGlobalVariable(name: "__exitcall_fpga_bridge_dev_exit", scope: !2, file: !3, line: 505, type: !2117, isLocal: true, isDefinition: true)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2118, line: 117, baseType: !2119)
!2118 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null}
!2122 = !DIGlobalVariableExpression(var: !2123, expr: !DIExpression())
!2123 = distinct !DIGlobalVariable(name: "bridge_list_lock", scope: !2, file: !3, line: 20, type: !95, isLocal: true, isDefinition: true)
!2124 = !DIGlobalVariableExpression(var: !2125, expr: !DIExpression())
!2125 = distinct !DIGlobalVariable(name: "fpga_bridge_ida", scope: !2, file: !3, line: 16, type: !2126, isLocal: true, isDefinition: true)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1432, line: 244, size: 128, elements: !2127)
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2126, file: !1432, line: 245, baseType: !1435, size: 128)
!2129 = !DIGlobalVariableExpression(var: !2130, expr: !DIExpression())
!2130 = distinct !DIGlobalVariable(name: "__key", scope: !2131, file: !3, line: 484, type: !1719, isLocal: true, isDefinition: true)
!2131 = distinct !DISubprogram(name: "fpga_bridge_dev_init", scope: !3, file: !3, line: 480, type: !2132, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!121}
!2134 = !DIGlobalVariableExpression(var: !2135, expr: !DIExpression())
!2135 = distinct !DIGlobalVariable(name: "fpga_bridge_groups", scope: !2, file: !3, line: 312, type: !2136, isLocal: true, isDefinition: true)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 128, elements: !952)
!2137 = !DIGlobalVariableExpression(var: !2138, expr: !DIExpression())
!2138 = distinct !DIGlobalVariable(name: "fpga_bridge_group", scope: !2, file: !3, line: 312, type: !193, isLocal: true, isDefinition: true)
!2139 = !DIGlobalVariableExpression(var: !2140, expr: !DIExpression())
!2140 = distinct !DIGlobalVariable(name: "fpga_bridge_attrs", scope: !2, file: !3, line: 307, type: !2141, isLocal: true, isDefinition: true)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !138)
!2142 = !DIGlobalVariableExpression(var: !2143, expr: !DIExpression())
!2143 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 304, type: !2144, isLocal: true, isDefinition: true)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2145)
!2145 = !{!2146, !2147, !2152}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2144, file: !30, line: 100, baseType: !174, size: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2144, file: !30, line: 101, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!168, !1569, !2151, !137}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2144, file: !30, line: 103, baseType: !2153, size: 64, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!168, !1569, !2151, !69, !184}
!2156 = !DIGlobalVariableExpression(var: !2157, expr: !DIExpression())
!2157 = distinct !DIGlobalVariable(name: "dev_attr_state", scope: !2, file: !3, line: 305, type: !2144, isLocal: true, isDefinition: true)
!2158 = !{!"rsp"}
!2159 = !{i32 7, !"Dwarf Version", i32 4}
!2160 = !{i32 2, !"Debug Info Version", i32 3}
!2161 = !{i32 1, !"wchar_size", i32 2}
!2162 = !{i32 1, !"Code Model", i32 2}
!2163 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2164 = distinct !DISubprogram(name: "fpga_bridge_enable", scope: !3, file: !3, line: 29, type: !2053, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2165 = !DILocalVariable(name: "bridge", arg: 1, scope: !2164, file: !3, line: 29, type: !64)
!2166 = !DILocation(line: 29, column: 44, scope: !2164)
!2167 = !DILocation(line: 33, column: 6, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 33, column: 6)
!2169 = !DILocation(line: 33, column: 14, scope: !2168)
!2170 = !DILocation(line: 33, column: 21, scope: !2168)
!2171 = !DILocation(line: 33, column: 24, scope: !2168)
!2172 = !DILocation(line: 33, column: 32, scope: !2168)
!2173 = !DILocation(line: 33, column: 40, scope: !2168)
!2174 = !DILocation(line: 33, column: 6, scope: !2164)
!2175 = !DILocation(line: 34, column: 10, scope: !2168)
!2176 = !DILocation(line: 34, column: 18, scope: !2168)
!2177 = !DILocation(line: 34, column: 26, scope: !2168)
!2178 = !DILocation(line: 34, column: 37, scope: !2168)
!2179 = !DILocation(line: 34, column: 3, scope: !2168)
!2180 = !DILocation(line: 36, column: 2, scope: !2164)
!2181 = !DILocation(line: 37, column: 1, scope: !2164)
!2182 = distinct !DISubprogram(name: "fpga_bridge_disable", scope: !3, file: !3, line: 47, type: !2053, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2183 = !DILocalVariable(name: "bridge", arg: 1, scope: !2182, file: !3, line: 47, type: !64)
!2184 = !DILocation(line: 47, column: 45, scope: !2182)
!2185 = !DILocation(line: 51, column: 6, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 51, column: 6)
!2187 = !DILocation(line: 51, column: 14, scope: !2186)
!2188 = !DILocation(line: 51, column: 21, scope: !2186)
!2189 = !DILocation(line: 51, column: 24, scope: !2186)
!2190 = !DILocation(line: 51, column: 32, scope: !2186)
!2191 = !DILocation(line: 51, column: 40, scope: !2186)
!2192 = !DILocation(line: 51, column: 6, scope: !2182)
!2193 = !DILocation(line: 52, column: 10, scope: !2186)
!2194 = !DILocation(line: 52, column: 18, scope: !2186)
!2195 = !DILocation(line: 52, column: 26, scope: !2186)
!2196 = !DILocation(line: 52, column: 37, scope: !2186)
!2197 = !DILocation(line: 52, column: 3, scope: !2186)
!2198 = !DILocation(line: 54, column: 2, scope: !2182)
!2199 = !DILocation(line: 55, column: 1, scope: !2182)
!2200 = distinct !DISubprogram(name: "of_fpga_bridge_get", scope: !3, file: !3, line: 97, type: !2201, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!64, !1880, !2065}
!2203 = !DILocalVariable(name: "np", arg: 1, scope: !2200, file: !3, line: 97, type: !1880)
!2204 = !DILocation(line: 97, column: 60, scope: !2200)
!2205 = !DILocalVariable(name: "info", arg: 2, scope: !2200, file: !3, line: 98, type: !2065)
!2206 = !DILocation(line: 98, column: 36, scope: !2200)
!2207 = !DILocalVariable(name: "dev", scope: !2200, file: !3, line: 100, type: !1569)
!2208 = !DILocation(line: 100, column: 17, scope: !2200)
!2209 = !DILocation(line: 102, column: 37, scope: !2200)
!2210 = !DILocation(line: 102, column: 56, scope: !2200)
!2211 = !DILocation(line: 102, column: 8, scope: !2200)
!2212 = !DILocation(line: 102, column: 6, scope: !2200)
!2213 = !DILocation(line: 103, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 103, column: 6)
!2215 = !DILocation(line: 103, column: 6, scope: !2200)
!2216 = !DILocation(line: 104, column: 10, scope: !2214)
!2217 = !DILocation(line: 104, column: 3, scope: !2214)
!2218 = !DILocation(line: 106, column: 27, scope: !2200)
!2219 = !DILocation(line: 106, column: 32, scope: !2200)
!2220 = !DILocation(line: 106, column: 9, scope: !2200)
!2221 = !DILocation(line: 106, column: 2, scope: !2200)
!2222 = !DILocation(line: 107, column: 1, scope: !2200)
!2223 = distinct !DISubprogram(name: "class_find_device_by_of_node", scope: !2004, file: !2004, line: 140, type: !2224, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!1569, !2002, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!2228 = !DILocalVariable(name: "class", arg: 1, scope: !2223, file: !2004, line: 140, type: !2002)
!2229 = !DILocation(line: 140, column: 44, scope: !2223)
!2230 = !DILocalVariable(name: "np", arg: 2, scope: !2223, file: !2004, line: 140, type: !2226)
!2231 = !DILocation(line: 140, column: 77, scope: !2223)
!2232 = !DILocation(line: 142, column: 27, scope: !2223)
!2233 = !DILocation(line: 142, column: 40, scope: !2223)
!2234 = !DILocation(line: 142, column: 9, scope: !2223)
!2235 = !DILocation(line: 142, column: 2, scope: !2223)
!2236 = distinct !DISubprogram(name: "ERR_PTR", scope: !2237, file: !2237, line: 24, type: !2238, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2237 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!63, !172}
!2240 = !DILocalVariable(name: "error", arg: 1, scope: !2236, file: !2237, line: 24, type: !172)
!2241 = !DILocation(line: 24, column: 48, scope: !2236)
!2242 = !DILocation(line: 26, column: 18, scope: !2236)
!2243 = !DILocation(line: 26, column: 9, scope: !2236)
!2244 = !DILocation(line: 26, column: 2, scope: !2236)
!2245 = distinct !DISubprogram(name: "__fpga_bridge_get", scope: !3, file: !3, line: 58, type: !2246, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!64, !1569, !2065}
!2248 = !DILocalVariable(name: "dev", arg: 1, scope: !2245, file: !3, line: 58, type: !1569)
!2249 = !DILocation(line: 58, column: 61, scope: !2245)
!2250 = !DILocalVariable(name: "info", arg: 2, scope: !2245, file: !3, line: 59, type: !2065)
!2251 = !DILocation(line: 59, column: 35, scope: !2245)
!2252 = !DILocalVariable(name: "bridge", scope: !2245, file: !3, line: 61, type: !64)
!2253 = !DILocation(line: 61, column: 22, scope: !2245)
!2254 = !DILocalVariable(name: "ret", scope: !2245, file: !3, line: 62, type: !121)
!2255 = !DILocation(line: 62, column: 6, scope: !2245)
!2256 = !DILocalVariable(name: "__mptr", scope: !2257, file: !3, line: 64, type: !63)
!2257 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 64, column: 11)
!2258 = !DILocation(line: 64, column: 11, scope: !2257)
!2259 = !DILocation(line: 64, column: 11, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 64, column: 11)
!2261 = !DILocation(line: 64, column: 9, scope: !2245)
!2262 = !DILocation(line: 66, column: 17, scope: !2245)
!2263 = !DILocation(line: 66, column: 2, scope: !2245)
!2264 = !DILocation(line: 66, column: 10, scope: !2245)
!2265 = !DILocation(line: 66, column: 15, scope: !2245)
!2266 = !DILocation(line: 68, column: 22, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 68, column: 6)
!2268 = !DILocation(line: 68, column: 30, scope: !2267)
!2269 = !DILocation(line: 68, column: 7, scope: !2267)
!2270 = !DILocation(line: 68, column: 6, scope: !2245)
!2271 = !DILocation(line: 69, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 68, column: 38)
!2273 = !DILocation(line: 70, column: 3, scope: !2272)
!2274 = !DILocation(line: 73, column: 22, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 73, column: 6)
!2276 = !DILocation(line: 73, column: 27, scope: !2275)
!2277 = !DILocation(line: 73, column: 35, scope: !2275)
!2278 = !DILocation(line: 73, column: 43, scope: !2275)
!2279 = !DILocation(line: 73, column: 7, scope: !2275)
!2280 = !DILocation(line: 73, column: 6, scope: !2245)
!2281 = !DILocation(line: 74, column: 3, scope: !2275)
!2282 = !DILocation(line: 78, column: 9, scope: !2245)
!2283 = !DILocation(line: 78, column: 2, scope: !2245)
!2284 = !DILabel(scope: !2245, name: "err_ll_mod", file: !3, line: 80)
!2285 = !DILocation(line: 80, column: 1, scope: !2245)
!2286 = !DILocation(line: 81, column: 16, scope: !2245)
!2287 = !DILocation(line: 81, column: 24, scope: !2245)
!2288 = !DILocation(line: 81, column: 2, scope: !2245)
!2289 = !DILabel(scope: !2245, name: "err_dev", file: !3, line: 82)
!2290 = !DILocation(line: 82, column: 1, scope: !2245)
!2291 = !DILocation(line: 83, column: 13, scope: !2245)
!2292 = !DILocation(line: 83, column: 2, scope: !2245)
!2293 = !DILocation(line: 84, column: 17, scope: !2245)
!2294 = !DILocation(line: 84, column: 9, scope: !2245)
!2295 = !DILocation(line: 84, column: 2, scope: !2245)
!2296 = !DILocation(line: 85, column: 1, scope: !2245)
!2297 = distinct !DISubprogram(name: "fpga_bridge_get", scope: !3, file: !3, line: 124, type: !2246, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2298 = !DILocalVariable(name: "dev", arg: 1, scope: !2297, file: !3, line: 124, type: !1569)
!2299 = !DILocation(line: 124, column: 52, scope: !2297)
!2300 = !DILocalVariable(name: "info", arg: 2, scope: !2297, file: !3, line: 125, type: !2065)
!2301 = !DILocation(line: 125, column: 33, scope: !2297)
!2302 = !DILocalVariable(name: "bridge_dev", scope: !2297, file: !3, line: 127, type: !1569)
!2303 = !DILocation(line: 127, column: 17, scope: !2297)
!2304 = !DILocation(line: 129, column: 33, scope: !2297)
!2305 = !DILocation(line: 129, column: 58, scope: !2297)
!2306 = !DILocation(line: 129, column: 15, scope: !2297)
!2307 = !DILocation(line: 129, column: 13, scope: !2297)
!2308 = !DILocation(line: 131, column: 7, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 131, column: 6)
!2310 = !DILocation(line: 131, column: 6, scope: !2297)
!2311 = !DILocation(line: 132, column: 10, scope: !2309)
!2312 = !DILocation(line: 132, column: 3, scope: !2309)
!2313 = !DILocation(line: 134, column: 27, scope: !2297)
!2314 = !DILocation(line: 134, column: 39, scope: !2297)
!2315 = !DILocation(line: 134, column: 9, scope: !2297)
!2316 = !DILocation(line: 134, column: 2, scope: !2297)
!2317 = !DILocation(line: 135, column: 1, scope: !2297)
!2318 = distinct !DISubprogram(name: "fpga_bridge_dev_match", scope: !3, file: !3, line: 110, type: !2319, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!121, !1569, !1371}
!2321 = !DILocalVariable(name: "dev", arg: 1, scope: !2318, file: !3, line: 110, type: !1569)
!2322 = !DILocation(line: 110, column: 49, scope: !2318)
!2323 = !DILocalVariable(name: "data", arg: 2, scope: !2318, file: !3, line: 110, type: !1371)
!2324 = !DILocation(line: 110, column: 66, scope: !2318)
!2325 = !DILocation(line: 112, column: 9, scope: !2318)
!2326 = !DILocation(line: 112, column: 14, scope: !2318)
!2327 = !DILocation(line: 112, column: 24, scope: !2318)
!2328 = !DILocation(line: 112, column: 21, scope: !2318)
!2329 = !DILocation(line: 112, column: 2, scope: !2318)
!2330 = distinct !DISubprogram(name: "fpga_bridge_put", scope: !3, file: !3, line: 143, type: !2061, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2331 = !DILocalVariable(name: "bridge", arg: 1, scope: !2330, file: !3, line: 143, type: !64)
!2332 = !DILocation(line: 143, column: 42, scope: !2330)
!2333 = !DILocation(line: 147, column: 2, scope: !2330)
!2334 = !DILocation(line: 147, column: 10, scope: !2330)
!2335 = !DILocation(line: 147, column: 15, scope: !2330)
!2336 = !DILocation(line: 148, column: 13, scope: !2330)
!2337 = !DILocation(line: 148, column: 21, scope: !2330)
!2338 = !DILocation(line: 148, column: 25, scope: !2330)
!2339 = !DILocation(line: 148, column: 33, scope: !2330)
!2340 = !DILocation(line: 148, column: 41, scope: !2330)
!2341 = !DILocation(line: 148, column: 2, scope: !2330)
!2342 = !DILocation(line: 149, column: 16, scope: !2330)
!2343 = !DILocation(line: 149, column: 24, scope: !2330)
!2344 = !DILocation(line: 149, column: 2, scope: !2330)
!2345 = !DILocation(line: 150, column: 14, scope: !2330)
!2346 = !DILocation(line: 150, column: 22, scope: !2330)
!2347 = !DILocation(line: 150, column: 2, scope: !2330)
!2348 = !DILocation(line: 151, column: 1, scope: !2330)
!2349 = distinct !DISubprogram(name: "module_put", scope: !2350, file: !2350, line: 756, type: !2351, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2350 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !1646}
!2353 = !DILocalVariable(name: "module", arg: 1, scope: !2349, file: !2350, line: 756, type: !1646)
!2354 = !DILocation(line: 756, column: 46, scope: !2349)
!2355 = !DILocation(line: 758, column: 1, scope: !2349)
!2356 = distinct !DISubprogram(name: "fpga_bridges_enable", scope: !3, file: !3, line: 162, type: !2357, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!121, !85}
!2359 = !DILocalVariable(name: "bridge_list", arg: 1, scope: !2356, file: !3, line: 162, type: !85)
!2360 = !DILocation(line: 162, column: 43, scope: !2356)
!2361 = !DILocalVariable(name: "bridge", scope: !2356, file: !3, line: 164, type: !64)
!2362 = !DILocation(line: 164, column: 22, scope: !2356)
!2363 = !DILocalVariable(name: "ret", scope: !2356, file: !3, line: 165, type: !121)
!2364 = !DILocation(line: 165, column: 6, scope: !2356)
!2365 = !DILocalVariable(name: "__mptr", scope: !2366, file: !3, line: 167, type: !63)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 167, column: 2)
!2367 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 167, column: 2)
!2368 = !DILocation(line: 167, column: 2, scope: !2366)
!2369 = !DILocation(line: 167, column: 2, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 167, column: 2)
!2371 = !DILocation(line: 167, column: 2, scope: !2367)
!2372 = !DILocation(line: 167, column: 2, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 167, column: 2)
!2374 = !DILocation(line: 168, column: 28, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 167, column: 49)
!2376 = !DILocation(line: 168, column: 9, scope: !2375)
!2377 = !DILocation(line: 168, column: 7, scope: !2375)
!2378 = !DILocation(line: 169, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 169, column: 7)
!2380 = !DILocation(line: 169, column: 7, scope: !2375)
!2381 = !DILocation(line: 170, column: 11, scope: !2379)
!2382 = !DILocation(line: 170, column: 4, scope: !2379)
!2383 = !DILocation(line: 171, column: 2, scope: !2375)
!2384 = !DILocalVariable(name: "__mptr", scope: !2385, file: !3, line: 167, type: !63)
!2385 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 167, column: 2)
!2386 = !DILocation(line: 167, column: 2, scope: !2385)
!2387 = !DILocation(line: 167, column: 2, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 167, column: 2)
!2389 = distinct !{!2389, !2371, !2390}
!2390 = !DILocation(line: 171, column: 2, scope: !2367)
!2391 = !DILocation(line: 173, column: 2, scope: !2356)
!2392 = !DILocation(line: 174, column: 1, scope: !2356)
!2393 = distinct !DISubprogram(name: "fpga_bridges_disable", scope: !3, file: !3, line: 186, type: !2357, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2394 = !DILocalVariable(name: "bridge_list", arg: 1, scope: !2393, file: !3, line: 186, type: !85)
!2395 = !DILocation(line: 186, column: 44, scope: !2393)
!2396 = !DILocalVariable(name: "bridge", scope: !2393, file: !3, line: 188, type: !64)
!2397 = !DILocation(line: 188, column: 22, scope: !2393)
!2398 = !DILocalVariable(name: "ret", scope: !2393, file: !3, line: 189, type: !121)
!2399 = !DILocation(line: 189, column: 6, scope: !2393)
!2400 = !DILocalVariable(name: "__mptr", scope: !2401, file: !3, line: 191, type: !63)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 191, column: 2)
!2402 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 191, column: 2)
!2403 = !DILocation(line: 191, column: 2, scope: !2401)
!2404 = !DILocation(line: 191, column: 2, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 191, column: 2)
!2406 = !DILocation(line: 191, column: 2, scope: !2402)
!2407 = !DILocation(line: 191, column: 2, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 191, column: 2)
!2409 = !DILocation(line: 192, column: 29, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 191, column: 49)
!2411 = !DILocation(line: 192, column: 9, scope: !2410)
!2412 = !DILocation(line: 192, column: 7, scope: !2410)
!2413 = !DILocation(line: 193, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 193, column: 7)
!2415 = !DILocation(line: 193, column: 7, scope: !2410)
!2416 = !DILocation(line: 194, column: 11, scope: !2414)
!2417 = !DILocation(line: 194, column: 4, scope: !2414)
!2418 = !DILocation(line: 195, column: 2, scope: !2410)
!2419 = !DILocalVariable(name: "__mptr", scope: !2420, file: !3, line: 191, type: !63)
!2420 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 191, column: 2)
!2421 = !DILocation(line: 191, column: 2, scope: !2420)
!2422 = !DILocation(line: 191, column: 2, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 191, column: 2)
!2424 = distinct !{!2424, !2406, !2425}
!2425 = !DILocation(line: 195, column: 2, scope: !2402)
!2426 = !DILocation(line: 197, column: 2, scope: !2393)
!2427 = !DILocation(line: 198, column: 1, scope: !2393)
!2428 = distinct !DISubprogram(name: "fpga_bridges_put", scope: !3, file: !3, line: 209, type: !2429, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !85}
!2431 = !DILocalVariable(name: "lock", arg: 1, scope: !2432, file: !2433, line: 407, type: !2436)
!2432 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2433, file: !2433, line: 407, type: !2434, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2433 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !2436, !187}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!2437 = !DILocation(line: 407, column: 64, scope: !2432, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 219, column: 3, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 214, column: 60)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 214, column: 2)
!2441 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 214, column: 2)
!2442 = !DILocalVariable(name: "flags", arg: 2, scope: !2432, file: !2433, line: 407, type: !187)
!2443 = !DILocation(line: 407, column: 84, scope: !2432, inlinedAt: !2438)
!2444 = !DILocalVariable(name: "lock", arg: 1, scope: !2445, file: !2433, line: 327, type: !2436)
!2445 = distinct !DISubprogram(name: "spinlock_check", scope: !2433, file: !2433, line: 327, type: !2446, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!2448, !2436}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2449 = !DILocation(line: 327, column: 67, scope: !2445, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 217, column: 3, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 217, column: 3)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 217, column: 3)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 217, column: 3)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 217, column: 3)
!2455 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 217, column: 3)
!2456 = !DILocalVariable(name: "bridge_list", arg: 1, scope: !2428, file: !3, line: 209, type: !85)
!2457 = !DILocation(line: 209, column: 41, scope: !2428)
!2458 = !DILocalVariable(name: "bridge", scope: !2428, file: !3, line: 211, type: !64)
!2459 = !DILocation(line: 211, column: 22, scope: !2428)
!2460 = !DILocalVariable(name: "next", scope: !2428, file: !3, line: 211, type: !64)
!2461 = !DILocation(line: 211, column: 31, scope: !2428)
!2462 = !DILocalVariable(name: "flags", scope: !2428, file: !3, line: 212, type: !187)
!2463 = !DILocation(line: 212, column: 16, scope: !2428)
!2464 = !DILocalVariable(name: "__mptr", scope: !2465, file: !3, line: 214, type: !63)
!2465 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 214, column: 2)
!2466 = !DILocation(line: 214, column: 2, scope: !2465)
!2467 = !DILocation(line: 214, column: 2, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 214, column: 2)
!2469 = !DILocation(line: 214, column: 2, scope: !2441)
!2470 = !DILocalVariable(name: "__mptr", scope: !2471, file: !3, line: 214, type: !63)
!2471 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 214, column: 2)
!2472 = !DILocation(line: 214, column: 2, scope: !2471)
!2473 = !DILocation(line: 214, column: 2, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 214, column: 2)
!2475 = !DILocation(line: 214, column: 2, scope: !2440)
!2476 = !DILocation(line: 215, column: 19, scope: !2439)
!2477 = !DILocation(line: 215, column: 3, scope: !2439)
!2478 = !DILocation(line: 217, column: 3, scope: !2439)
!2479 = !DILocation(line: 217, column: 3, scope: !2455)
!2480 = !DILocalVariable(name: "__dummy", scope: !2481, file: !3, line: 217, type: !187)
!2481 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 217, column: 3)
!2482 = !DILocation(line: 217, column: 3, scope: !2481)
!2483 = !DILocalVariable(name: "__dummy2", scope: !2481, file: !3, line: 217, type: !187)
!2484 = !DILocation(line: 217, column: 3, scope: !2454)
!2485 = !DILocation(line: 217, column: 3, scope: !2453)
!2486 = !DILocation(line: 217, column: 3, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 217, column: 3)
!2488 = !DILocalVariable(name: "__dummy", scope: !2489, file: !3, line: 217, type: !187)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 217, column: 3)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 217, column: 3)
!2491 = !DILocation(line: 217, column: 3, scope: !2489)
!2492 = !DILocalVariable(name: "__dummy2", scope: !2489, file: !3, line: 217, type: !187)
!2493 = !DILocation(line: 217, column: 3, scope: !2490)
!2494 = !DILocation(line: 217, column: 3, scope: !2452)
!2495 = !{i32 -2143356457}
!2496 = !DILocation(line: 329, column: 10, scope: !2445, inlinedAt: !2450)
!2497 = !DILocation(line: 329, column: 16, scope: !2445, inlinedAt: !2450)
!2498 = !DILocation(line: 217, column: 3, scope: !2451)
!2499 = !DILocation(line: 218, column: 13, scope: !2439)
!2500 = !DILocation(line: 218, column: 21, scope: !2439)
!2501 = !DILocation(line: 218, column: 3, scope: !2439)
!2502 = !DILocation(line: 219, column: 45, scope: !2439)
!2503 = !DILocalVariable(name: "__dummy", scope: !2504, file: !2433, line: 409, type: !187)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !2433, line: 409, column: 2)
!2505 = distinct !DILexicalBlock(scope: !2432, file: !2433, line: 409, column: 2)
!2506 = !DILocation(line: 409, column: 2, scope: !2504, inlinedAt: !2438)
!2507 = !DILocalVariable(name: "__dummy2", scope: !2504, file: !2433, line: 409, type: !187)
!2508 = !DILocalVariable(name: "__dummy", scope: !2509, file: !2433, line: 409, type: !187)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !2433, line: 409, column: 2)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !2433, line: 409, column: 2)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !2433, line: 409, column: 2)
!2512 = distinct !DILexicalBlock(scope: !2505, file: !2433, line: 409, column: 2)
!2513 = !DILocation(line: 409, column: 2, scope: !2509, inlinedAt: !2438)
!2514 = !DILocalVariable(name: "__dummy2", scope: !2509, file: !2433, line: 409, type: !187)
!2515 = !DILocation(line: 409, column: 2, scope: !2510, inlinedAt: !2438)
!2516 = !DILocation(line: 409, column: 2, scope: !2517, inlinedAt: !2438)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !2433, line: 409, column: 2)
!2518 = !{i32 -2145283328}
!2519 = !DILocation(line: 409, column: 2, scope: !2520, inlinedAt: !2438)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !2433, line: 409, column: 2)
!2521 = !DILocation(line: 220, column: 2, scope: !2439)
!2522 = !DILocalVariable(name: "__mptr", scope: !2523, file: !3, line: 214, type: !63)
!2523 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 214, column: 2)
!2524 = !DILocation(line: 214, column: 2, scope: !2523)
!2525 = !DILocation(line: 214, column: 2, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 214, column: 2)
!2527 = distinct !{!2527, !2469, !2528}
!2528 = !DILocation(line: 220, column: 2, scope: !2441)
!2529 = !DILocation(line: 221, column: 1, scope: !2428)
!2530 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2531, file: !2531, line: 666, type: !2532, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2531 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!187}
!2534 = !DILocalVariable(name: "f", scope: !2530, file: !2531, line: 668, type: !187)
!2535 = !DILocation(line: 668, column: 16, scope: !2530)
!2536 = !DILocation(line: 670, column: 6, scope: !2530)
!2537 = !DILocation(line: 670, column: 4, scope: !2530)
!2538 = !DILocation(line: 671, column: 2, scope: !2530)
!2539 = !DILocation(line: 672, column: 9, scope: !2530)
!2540 = !DILocation(line: 672, column: 2, scope: !2530)
!2541 = distinct !DISubprogram(name: "list_del", scope: !2542, file: !2542, line: 144, type: !2429, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2542 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2543 = !DILocalVariable(name: "entry", arg: 1, scope: !2541, file: !2542, line: 144, type: !85)
!2544 = !DILocation(line: 144, column: 47, scope: !2541)
!2545 = !DILocation(line: 146, column: 19, scope: !2541)
!2546 = !DILocation(line: 146, column: 2, scope: !2541)
!2547 = !DILocation(line: 147, column: 2, scope: !2541)
!2548 = !DILocation(line: 147, column: 9, scope: !2541)
!2549 = !DILocation(line: 147, column: 14, scope: !2541)
!2550 = !DILocation(line: 148, column: 2, scope: !2541)
!2551 = !DILocation(line: 148, column: 9, scope: !2541)
!2552 = !DILocation(line: 148, column: 14, scope: !2541)
!2553 = !DILocation(line: 149, column: 1, scope: !2541)
!2554 = distinct !DISubprogram(name: "of_fpga_bridge_get_to_list", scope: !3, file: !3, line: 235, type: !2555, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!121, !1880, !2065, !85}
!2557 = !DILocation(line: 407, column: 64, scope: !2432, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 248, column: 2, scope: !2554)
!2559 = !DILocation(line: 407, column: 84, scope: !2432, inlinedAt: !2558)
!2560 = !DILocation(line: 327, column: 67, scope: !2445, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 246, column: 2, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 246, column: 2)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 246, column: 2)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 246, column: 2)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 246, column: 2)
!2566 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 246, column: 2)
!2567 = !DILocalVariable(name: "np", arg: 1, scope: !2554, file: !3, line: 235, type: !1880)
!2568 = !DILocation(line: 235, column: 52, scope: !2554)
!2569 = !DILocalVariable(name: "info", arg: 2, scope: !2554, file: !3, line: 236, type: !2065)
!2570 = !DILocation(line: 236, column: 35, scope: !2554)
!2571 = !DILocalVariable(name: "bridge_list", arg: 3, scope: !2554, file: !3, line: 237, type: !85)
!2572 = !DILocation(line: 237, column: 29, scope: !2554)
!2573 = !DILocalVariable(name: "bridge", scope: !2554, file: !3, line: 239, type: !64)
!2574 = !DILocation(line: 239, column: 22, scope: !2554)
!2575 = !DILocalVariable(name: "flags", scope: !2554, file: !3, line: 240, type: !187)
!2576 = !DILocation(line: 240, column: 16, scope: !2554)
!2577 = !DILocation(line: 242, column: 30, scope: !2554)
!2578 = !DILocation(line: 242, column: 34, scope: !2554)
!2579 = !DILocation(line: 242, column: 11, scope: !2554)
!2580 = !DILocation(line: 242, column: 9, scope: !2554)
!2581 = !DILocation(line: 243, column: 13, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 243, column: 6)
!2583 = !DILocation(line: 243, column: 6, scope: !2582)
!2584 = !DILocation(line: 243, column: 6, scope: !2554)
!2585 = !DILocation(line: 244, column: 18, scope: !2582)
!2586 = !DILocation(line: 244, column: 10, scope: !2582)
!2587 = !DILocation(line: 244, column: 3, scope: !2582)
!2588 = !DILocation(line: 246, column: 2, scope: !2554)
!2589 = !DILocation(line: 246, column: 2, scope: !2566)
!2590 = !DILocalVariable(name: "__dummy", scope: !2591, file: !3, line: 246, type: !187)
!2591 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 246, column: 2)
!2592 = !DILocation(line: 246, column: 2, scope: !2591)
!2593 = !DILocalVariable(name: "__dummy2", scope: !2591, file: !3, line: 246, type: !187)
!2594 = !DILocation(line: 246, column: 2, scope: !2565)
!2595 = !DILocation(line: 246, column: 2, scope: !2564)
!2596 = !DILocation(line: 246, column: 2, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 246, column: 2)
!2598 = !DILocalVariable(name: "__dummy", scope: !2599, file: !3, line: 246, type: !187)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 246, column: 2)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 246, column: 2)
!2601 = !DILocation(line: 246, column: 2, scope: !2599)
!2602 = !DILocalVariable(name: "__dummy2", scope: !2599, file: !3, line: 246, type: !187)
!2603 = !DILocation(line: 246, column: 2, scope: !2600)
!2604 = !DILocation(line: 246, column: 2, scope: !2563)
!2605 = !{i32 -2143355297}
!2606 = !DILocation(line: 329, column: 10, scope: !2445, inlinedAt: !2561)
!2607 = !DILocation(line: 329, column: 16, scope: !2445, inlinedAt: !2561)
!2608 = !DILocation(line: 246, column: 2, scope: !2562)
!2609 = !DILocation(line: 247, column: 12, scope: !2554)
!2610 = !DILocation(line: 247, column: 20, scope: !2554)
!2611 = !DILocation(line: 247, column: 26, scope: !2554)
!2612 = !DILocation(line: 247, column: 2, scope: !2554)
!2613 = !DILocation(line: 248, column: 44, scope: !2554)
!2614 = !DILocation(line: 409, column: 2, scope: !2504, inlinedAt: !2558)
!2615 = !DILocation(line: 409, column: 2, scope: !2509, inlinedAt: !2558)
!2616 = !DILocation(line: 409, column: 2, scope: !2510, inlinedAt: !2558)
!2617 = !DILocation(line: 409, column: 2, scope: !2517, inlinedAt: !2558)
!2618 = !DILocation(line: 409, column: 2, scope: !2520, inlinedAt: !2558)
!2619 = !DILocation(line: 250, column: 2, scope: !2554)
!2620 = !DILocation(line: 251, column: 1, scope: !2554)
!2621 = distinct !DISubprogram(name: "IS_ERR", scope: !2237, file: !2237, line: 34, type: !2622, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!980, !1371}
!2624 = !DILocalVariable(name: "ptr", arg: 1, scope: !2621, file: !2237, line: 34, type: !1371)
!2625 = !DILocation(line: 34, column: 60, scope: !2621)
!2626 = !DILocation(line: 36, column: 9, scope: !2621)
!2627 = !DILocation(line: 36, column: 2, scope: !2621)
!2628 = distinct !DISubprogram(name: "PTR_ERR", scope: !2237, file: !2237, line: 29, type: !2629, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!172, !1371}
!2631 = !DILocalVariable(name: "ptr", arg: 1, scope: !2628, file: !2237, line: 29, type: !1371)
!2632 = !DILocation(line: 29, column: 61, scope: !2628)
!2633 = !DILocation(line: 31, column: 16, scope: !2628)
!2634 = !DILocation(line: 31, column: 9, scope: !2628)
!2635 = !DILocation(line: 31, column: 2, scope: !2628)
!2636 = distinct !DISubprogram(name: "list_add", scope: !2542, file: !2542, line: 84, type: !2637, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !85, !85}
!2639 = !DILocalVariable(name: "new", arg: 1, scope: !2636, file: !2542, line: 84, type: !85)
!2640 = !DILocation(line: 84, column: 47, scope: !2636)
!2641 = !DILocalVariable(name: "head", arg: 2, scope: !2636, file: !2542, line: 84, type: !85)
!2642 = !DILocation(line: 84, column: 70, scope: !2636)
!2643 = !DILocation(line: 86, column: 13, scope: !2636)
!2644 = !DILocation(line: 86, column: 18, scope: !2636)
!2645 = !DILocation(line: 86, column: 24, scope: !2636)
!2646 = !DILocation(line: 86, column: 30, scope: !2636)
!2647 = !DILocation(line: 86, column: 2, scope: !2636)
!2648 = !DILocation(line: 87, column: 1, scope: !2636)
!2649 = distinct !DISubprogram(name: "fpga_bridge_get_to_list", scope: !3, file: !3, line: 265, type: !2650, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!121, !1569, !2065, !85}
!2652 = !DILocation(line: 407, column: 64, scope: !2432, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 278, column: 2, scope: !2649)
!2654 = !DILocation(line: 407, column: 84, scope: !2432, inlinedAt: !2653)
!2655 = !DILocation(line: 327, column: 67, scope: !2445, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 276, column: 2, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 276, column: 2)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 276, column: 2)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 276, column: 2)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 276, column: 2)
!2661 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 276, column: 2)
!2662 = !DILocalVariable(name: "dev", arg: 1, scope: !2649, file: !3, line: 265, type: !1569)
!2663 = !DILocation(line: 265, column: 44, scope: !2649)
!2664 = !DILocalVariable(name: "info", arg: 2, scope: !2649, file: !3, line: 266, type: !2065)
!2665 = !DILocation(line: 266, column: 32, scope: !2649)
!2666 = !DILocalVariable(name: "bridge_list", arg: 3, scope: !2649, file: !3, line: 267, type: !85)
!2667 = !DILocation(line: 267, column: 26, scope: !2649)
!2668 = !DILocalVariable(name: "bridge", scope: !2649, file: !3, line: 269, type: !64)
!2669 = !DILocation(line: 269, column: 22, scope: !2649)
!2670 = !DILocalVariable(name: "flags", scope: !2649, file: !3, line: 270, type: !187)
!2671 = !DILocation(line: 270, column: 16, scope: !2649)
!2672 = !DILocation(line: 272, column: 27, scope: !2649)
!2673 = !DILocation(line: 272, column: 32, scope: !2649)
!2674 = !DILocation(line: 272, column: 11, scope: !2649)
!2675 = !DILocation(line: 272, column: 9, scope: !2649)
!2676 = !DILocation(line: 273, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 273, column: 6)
!2678 = !DILocation(line: 273, column: 6, scope: !2677)
!2679 = !DILocation(line: 273, column: 6, scope: !2649)
!2680 = !DILocation(line: 274, column: 18, scope: !2677)
!2681 = !DILocation(line: 274, column: 10, scope: !2677)
!2682 = !DILocation(line: 274, column: 3, scope: !2677)
!2683 = !DILocation(line: 276, column: 2, scope: !2649)
!2684 = !DILocation(line: 276, column: 2, scope: !2661)
!2685 = !DILocalVariable(name: "__dummy", scope: !2686, file: !3, line: 276, type: !187)
!2686 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 276, column: 2)
!2687 = !DILocation(line: 276, column: 2, scope: !2686)
!2688 = !DILocalVariable(name: "__dummy2", scope: !2686, file: !3, line: 276, type: !187)
!2689 = !DILocation(line: 276, column: 2, scope: !2660)
!2690 = !DILocation(line: 276, column: 2, scope: !2659)
!2691 = !DILocation(line: 276, column: 2, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 276, column: 2)
!2693 = !DILocalVariable(name: "__dummy", scope: !2694, file: !3, line: 276, type: !187)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 276, column: 2)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 276, column: 2)
!2696 = !DILocation(line: 276, column: 2, scope: !2694)
!2697 = !DILocalVariable(name: "__dummy2", scope: !2694, file: !3, line: 276, type: !187)
!2698 = !DILocation(line: 276, column: 2, scope: !2695)
!2699 = !DILocation(line: 276, column: 2, scope: !2658)
!2700 = !{i32 -2143354117}
!2701 = !DILocation(line: 329, column: 10, scope: !2445, inlinedAt: !2656)
!2702 = !DILocation(line: 329, column: 16, scope: !2445, inlinedAt: !2656)
!2703 = !DILocation(line: 276, column: 2, scope: !2657)
!2704 = !DILocation(line: 277, column: 12, scope: !2649)
!2705 = !DILocation(line: 277, column: 20, scope: !2649)
!2706 = !DILocation(line: 277, column: 26, scope: !2649)
!2707 = !DILocation(line: 277, column: 2, scope: !2649)
!2708 = !DILocation(line: 278, column: 44, scope: !2649)
!2709 = !DILocation(line: 409, column: 2, scope: !2504, inlinedAt: !2653)
!2710 = !DILocation(line: 409, column: 2, scope: !2509, inlinedAt: !2653)
!2711 = !DILocation(line: 409, column: 2, scope: !2510, inlinedAt: !2653)
!2712 = !DILocation(line: 409, column: 2, scope: !2517, inlinedAt: !2653)
!2713 = !DILocation(line: 409, column: 2, scope: !2520, inlinedAt: !2653)
!2714 = !DILocation(line: 280, column: 2, scope: !2649)
!2715 = !DILocation(line: 281, column: 1, scope: !2649)
!2716 = !DILocalVariable(name: "dev", arg: 1, scope: !2090, file: !3, line: 326, type: !1569)
!2717 = !DILocation(line: 326, column: 55, scope: !2090)
!2718 = !DILocalVariable(name: "name", arg: 2, scope: !2090, file: !3, line: 326, type: !69)
!2719 = !DILocation(line: 326, column: 72, scope: !2090)
!2720 = !DILocalVariable(name: "br_ops", arg: 3, scope: !2090, file: !3, line: 327, type: !2047)
!2721 = !DILocation(line: 327, column: 42, scope: !2090)
!2722 = !DILocalVariable(name: "priv", arg: 4, scope: !2090, file: !3, line: 328, type: !63)
!2723 = !DILocation(line: 328, column: 18, scope: !2090)
!2724 = !DILocalVariable(name: "bridge", scope: !2090, file: !3, line: 330, type: !64)
!2725 = !DILocation(line: 330, column: 22, scope: !2090)
!2726 = !DILocalVariable(name: "id", scope: !2090, file: !3, line: 331, type: !121)
!2727 = !DILocation(line: 331, column: 6, scope: !2090)
!2728 = !DILocalVariable(name: "ret", scope: !2090, file: !3, line: 331, type: !121)
!2729 = !DILocation(line: 331, column: 10, scope: !2090)
!2730 = !DILocation(line: 333, column: 7, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 333, column: 6)
!2732 = !DILocation(line: 333, column: 12, scope: !2731)
!2733 = !DILocation(line: 333, column: 23, scope: !2731)
!2734 = !DILocation(line: 333, column: 16, scope: !2731)
!2735 = !DILocation(line: 333, column: 6, scope: !2090)
!2736 = !DILocation(line: 334, column: 3, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 333, column: 30)
!2738 = !DILocation(line: 335, column: 3, scope: !2737)
!2739 = !DILocation(line: 338, column: 11, scope: !2090)
!2740 = !DILocation(line: 338, column: 9, scope: !2090)
!2741 = !DILocation(line: 339, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 339, column: 6)
!2743 = !DILocation(line: 339, column: 6, scope: !2090)
!2744 = !DILocation(line: 340, column: 3, scope: !2742)
!2745 = !DILocation(line: 342, column: 7, scope: !2090)
!2746 = !DILocation(line: 342, column: 5, scope: !2090)
!2747 = !DILocation(line: 343, column: 6, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 343, column: 6)
!2749 = !DILocation(line: 343, column: 9, scope: !2748)
!2750 = !DILocation(line: 343, column: 6, scope: !2090)
!2751 = !DILocation(line: 344, column: 3, scope: !2748)
!2752 = !DILocation(line: 346, column: 2, scope: !2090)
!2753 = !DILocation(line: 346, column: 2, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 346, column: 2)
!2755 = !DILocation(line: 347, column: 18, scope: !2090)
!2756 = !DILocation(line: 347, column: 26, scope: !2090)
!2757 = !DILocation(line: 347, column: 2, scope: !2090)
!2758 = !DILocation(line: 349, column: 17, scope: !2090)
!2759 = !DILocation(line: 349, column: 2, scope: !2090)
!2760 = !DILocation(line: 349, column: 10, scope: !2090)
!2761 = !DILocation(line: 349, column: 15, scope: !2090)
!2762 = !DILocation(line: 350, column: 19, scope: !2090)
!2763 = !DILocation(line: 350, column: 2, scope: !2090)
!2764 = !DILocation(line: 350, column: 10, scope: !2090)
!2765 = !DILocation(line: 350, column: 17, scope: !2090)
!2766 = !DILocation(line: 351, column: 17, scope: !2090)
!2767 = !DILocation(line: 351, column: 2, scope: !2090)
!2768 = !DILocation(line: 351, column: 10, scope: !2090)
!2769 = !DILocation(line: 351, column: 15, scope: !2090)
!2770 = !DILocation(line: 353, column: 21, scope: !2090)
!2771 = !DILocation(line: 353, column: 29, scope: !2090)
!2772 = !DILocation(line: 353, column: 2, scope: !2090)
!2773 = !DILocation(line: 354, column: 23, scope: !2090)
!2774 = !DILocation(line: 354, column: 31, scope: !2090)
!2775 = !DILocation(line: 354, column: 2, scope: !2090)
!2776 = !DILocation(line: 354, column: 10, scope: !2090)
!2777 = !DILocation(line: 354, column: 14, scope: !2090)
!2778 = !DILocation(line: 354, column: 21, scope: !2090)
!2779 = !DILocation(line: 355, column: 22, scope: !2090)
!2780 = !DILocation(line: 355, column: 2, scope: !2090)
!2781 = !DILocation(line: 355, column: 10, scope: !2090)
!2782 = !DILocation(line: 355, column: 14, scope: !2090)
!2783 = !DILocation(line: 355, column: 20, scope: !2090)
!2784 = !DILocation(line: 356, column: 23, scope: !2090)
!2785 = !DILocation(line: 356, column: 2, scope: !2090)
!2786 = !DILocation(line: 356, column: 10, scope: !2090)
!2787 = !DILocation(line: 356, column: 14, scope: !2090)
!2788 = !DILocation(line: 356, column: 21, scope: !2090)
!2789 = !DILocation(line: 357, column: 24, scope: !2090)
!2790 = !DILocation(line: 357, column: 29, scope: !2090)
!2791 = !DILocation(line: 357, column: 2, scope: !2090)
!2792 = !DILocation(line: 357, column: 10, scope: !2090)
!2793 = !DILocation(line: 357, column: 14, scope: !2090)
!2794 = !DILocation(line: 357, column: 22, scope: !2090)
!2795 = !DILocation(line: 358, column: 19, scope: !2090)
!2796 = !DILocation(line: 358, column: 2, scope: !2090)
!2797 = !DILocation(line: 358, column: 10, scope: !2090)
!2798 = !DILocation(line: 358, column: 14, scope: !2090)
!2799 = !DILocation(line: 358, column: 17, scope: !2090)
!2800 = !DILocation(line: 360, column: 22, scope: !2090)
!2801 = !DILocation(line: 360, column: 30, scope: !2090)
!2802 = !DILocation(line: 360, column: 43, scope: !2090)
!2803 = !DILocation(line: 360, column: 8, scope: !2090)
!2804 = !DILocation(line: 360, column: 6, scope: !2090)
!2805 = !DILocation(line: 361, column: 6, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 361, column: 6)
!2807 = !DILocation(line: 361, column: 6, scope: !2090)
!2808 = !DILocation(line: 362, column: 3, scope: !2806)
!2809 = !DILocation(line: 364, column: 9, scope: !2090)
!2810 = !DILocation(line: 364, column: 2, scope: !2090)
!2811 = !DILabel(scope: !2090, name: "error_device", file: !3, line: 366)
!2812 = !DILocation(line: 366, column: 1, scope: !2090)
!2813 = !DILocation(line: 367, column: 2, scope: !2090)
!2814 = !DILabel(scope: !2090, name: "error_kfree", file: !3, line: 368)
!2815 = !DILocation(line: 368, column: 1, scope: !2090)
!2816 = !DILocation(line: 369, column: 8, scope: !2090)
!2817 = !DILocation(line: 369, column: 2, scope: !2090)
!2818 = !DILocation(line: 371, column: 2, scope: !2090)
!2819 = !DILocation(line: 372, column: 1, scope: !2090)
!2820 = distinct !DISubprogram(name: "kzalloc", scope: !56, file: !56, line: 662, type: !2821, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!63, !184, !1440}
!2823 = !DILocalVariable(name: "s", arg: 1, scope: !2824, file: !56, line: 445, type: !1030)
!2824 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !56, file: !56, line: 445, type: !2825, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!63, !1030, !1440, !184}
!2827 = !DILocation(line: 445, column: 72, scope: !2824, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 552, column: 10, scope: !2829, inlinedAt: !2832)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !56, line: 540, column: 34)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !56, line: 540, column: 6)
!2831 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 538, type: !2821, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2832 = distinct !DILocation(line: 664, column: 9, scope: !2820)
!2833 = !DILocalVariable(name: "flags", arg: 2, scope: !2824, file: !56, line: 446, type: !1440)
!2834 = !DILocation(line: 446, column: 9, scope: !2824, inlinedAt: !2828)
!2835 = !DILocalVariable(name: "size", arg: 3, scope: !2824, file: !56, line: 446, type: !184)
!2836 = !DILocation(line: 446, column: 23, scope: !2824, inlinedAt: !2828)
!2837 = !DILocalVariable(name: "ret", scope: !2824, file: !56, line: 448, type: !63)
!2838 = !DILocation(line: 448, column: 8, scope: !2824, inlinedAt: !2828)
!2839 = !DILocalVariable(name: "flags", arg: 1, scope: !2840, file: !56, line: 318, type: !1440)
!2840 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 318, type: !2841, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!55, !1440}
!2843 = !DILocation(line: 318, column: 67, scope: !2840, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 553, column: 20, scope: !2829, inlinedAt: !2832)
!2845 = !DILocalVariable(name: "size", arg: 1, scope: !2846, file: !56, line: 346, type: !184)
!2846 = distinct !DISubprogram(name: "kmalloc_index", scope: !56, file: !56, line: 346, type: !2847, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!7, !184}
!2849 = !DILocation(line: 346, column: 58, scope: !2846, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 547, column: 11, scope: !2829, inlinedAt: !2832)
!2851 = !DILocalVariable(name: "size", arg: 1, scope: !2852, file: !56, line: 472, type: !184)
!2852 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !56, file: !56, line: 472, type: !2853, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!63, !184, !1440, !7}
!2855 = !DILocation(line: 472, column: 28, scope: !2852, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 481, column: 9, scope: !2857, inlinedAt: !2858)
!2857 = distinct !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 478, type: !2821, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!2858 = distinct !DILocation(line: 545, column: 11, scope: !2859, inlinedAt: !2832)
!2859 = distinct !DILexicalBlock(scope: !2829, file: !56, line: 544, column: 7)
!2860 = !DILocalVariable(name: "flags", arg: 2, scope: !2852, file: !56, line: 472, type: !1440)
!2861 = !DILocation(line: 472, column: 40, scope: !2852, inlinedAt: !2856)
!2862 = !DILocalVariable(name: "order", arg: 3, scope: !2852, file: !56, line: 472, type: !7)
!2863 = !DILocation(line: 472, column: 60, scope: !2852, inlinedAt: !2856)
!2864 = !DILocalVariable(name: "size", arg: 1, scope: !2857, file: !56, line: 478, type: !184)
!2865 = !DILocation(line: 478, column: 51, scope: !2857, inlinedAt: !2858)
!2866 = !DILocalVariable(name: "flags", arg: 2, scope: !2857, file: !56, line: 478, type: !1440)
!2867 = !DILocation(line: 478, column: 63, scope: !2857, inlinedAt: !2858)
!2868 = !DILocalVariable(name: "order", scope: !2857, file: !56, line: 480, type: !7)
!2869 = !DILocation(line: 480, column: 15, scope: !2857, inlinedAt: !2858)
!2870 = !DILocalVariable(name: "size", arg: 1, scope: !2831, file: !56, line: 538, type: !184)
!2871 = !DILocation(line: 538, column: 45, scope: !2831, inlinedAt: !2832)
!2872 = !DILocalVariable(name: "flags", arg: 2, scope: !2831, file: !56, line: 538, type: !1440)
!2873 = !DILocation(line: 538, column: 57, scope: !2831, inlinedAt: !2832)
!2874 = !DILocalVariable(name: "index", scope: !2829, file: !56, line: 542, type: !7)
!2875 = !DILocation(line: 542, column: 16, scope: !2829, inlinedAt: !2832)
!2876 = !DILocalVariable(name: "size", arg: 1, scope: !2820, file: !56, line: 662, type: !184)
!2877 = !DILocation(line: 662, column: 36, scope: !2820)
!2878 = !DILocalVariable(name: "flags", arg: 2, scope: !2820, file: !56, line: 662, type: !1440)
!2879 = !DILocation(line: 662, column: 48, scope: !2820)
!2880 = !DILocation(line: 664, column: 17, scope: !2820)
!2881 = !DILocation(line: 664, column: 23, scope: !2820)
!2882 = !DILocation(line: 664, column: 29, scope: !2820)
!2883 = !DILocation(line: 540, column: 27, scope: !2830, inlinedAt: !2832)
!2884 = !DILocation(line: 540, column: 6, scope: !2830, inlinedAt: !2832)
!2885 = !DILocation(line: 540, column: 6, scope: !2831, inlinedAt: !2832)
!2886 = !DILocation(line: 544, column: 7, scope: !2859, inlinedAt: !2832)
!2887 = !DILocation(line: 544, column: 12, scope: !2859, inlinedAt: !2832)
!2888 = !DILocation(line: 544, column: 7, scope: !2829, inlinedAt: !2832)
!2889 = !DILocation(line: 545, column: 25, scope: !2859, inlinedAt: !2832)
!2890 = !DILocation(line: 545, column: 31, scope: !2859, inlinedAt: !2832)
!2891 = !DILocation(line: 480, column: 33, scope: !2857, inlinedAt: !2858)
!2892 = !DILocation(line: 480, column: 23, scope: !2857, inlinedAt: !2858)
!2893 = !DILocation(line: 481, column: 29, scope: !2857, inlinedAt: !2858)
!2894 = !DILocation(line: 481, column: 35, scope: !2857, inlinedAt: !2858)
!2895 = !DILocation(line: 481, column: 42, scope: !2857, inlinedAt: !2858)
!2896 = !DILocation(line: 474, column: 23, scope: !2852, inlinedAt: !2856)
!2897 = !DILocation(line: 474, column: 29, scope: !2852, inlinedAt: !2856)
!2898 = !DILocation(line: 474, column: 36, scope: !2852, inlinedAt: !2856)
!2899 = !DILocation(line: 474, column: 9, scope: !2852, inlinedAt: !2856)
!2900 = !DILocation(line: 545, column: 4, scope: !2859, inlinedAt: !2832)
!2901 = !DILocation(line: 547, column: 25, scope: !2829, inlinedAt: !2832)
!2902 = !DILocation(line: 348, column: 7, scope: !2903, inlinedAt: !2850)
!2903 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 348, column: 6)
!2904 = !DILocation(line: 348, column: 6, scope: !2846, inlinedAt: !2850)
!2905 = !DILocation(line: 349, column: 3, scope: !2903, inlinedAt: !2850)
!2906 = !DILocation(line: 351, column: 6, scope: !2907, inlinedAt: !2850)
!2907 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 351, column: 6)
!2908 = !DILocation(line: 351, column: 11, scope: !2907, inlinedAt: !2850)
!2909 = !DILocation(line: 351, column: 6, scope: !2846, inlinedAt: !2850)
!2910 = !DILocation(line: 352, column: 3, scope: !2907, inlinedAt: !2850)
!2911 = !DILocation(line: 354, column: 32, scope: !2912, inlinedAt: !2850)
!2912 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 354, column: 6)
!2913 = !DILocation(line: 354, column: 37, scope: !2912, inlinedAt: !2850)
!2914 = !DILocation(line: 354, column: 42, scope: !2912, inlinedAt: !2850)
!2915 = !DILocation(line: 354, column: 45, scope: !2912, inlinedAt: !2850)
!2916 = !DILocation(line: 354, column: 50, scope: !2912, inlinedAt: !2850)
!2917 = !DILocation(line: 354, column: 6, scope: !2846, inlinedAt: !2850)
!2918 = !DILocation(line: 355, column: 3, scope: !2912, inlinedAt: !2850)
!2919 = !DILocation(line: 356, column: 32, scope: !2920, inlinedAt: !2850)
!2920 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 356, column: 6)
!2921 = !DILocation(line: 356, column: 37, scope: !2920, inlinedAt: !2850)
!2922 = !DILocation(line: 356, column: 43, scope: !2920, inlinedAt: !2850)
!2923 = !DILocation(line: 356, column: 46, scope: !2920, inlinedAt: !2850)
!2924 = !DILocation(line: 356, column: 51, scope: !2920, inlinedAt: !2850)
!2925 = !DILocation(line: 356, column: 6, scope: !2846, inlinedAt: !2850)
!2926 = !DILocation(line: 357, column: 3, scope: !2920, inlinedAt: !2850)
!2927 = !DILocation(line: 358, column: 6, scope: !2928, inlinedAt: !2850)
!2928 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 358, column: 6)
!2929 = !DILocation(line: 358, column: 11, scope: !2928, inlinedAt: !2850)
!2930 = !DILocation(line: 358, column: 6, scope: !2846, inlinedAt: !2850)
!2931 = !DILocation(line: 358, column: 26, scope: !2928, inlinedAt: !2850)
!2932 = !DILocation(line: 359, column: 6, scope: !2933, inlinedAt: !2850)
!2933 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 359, column: 6)
!2934 = !DILocation(line: 359, column: 11, scope: !2933, inlinedAt: !2850)
!2935 = !DILocation(line: 359, column: 6, scope: !2846, inlinedAt: !2850)
!2936 = !DILocation(line: 359, column: 26, scope: !2933, inlinedAt: !2850)
!2937 = !DILocation(line: 360, column: 6, scope: !2938, inlinedAt: !2850)
!2938 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 360, column: 6)
!2939 = !DILocation(line: 360, column: 11, scope: !2938, inlinedAt: !2850)
!2940 = !DILocation(line: 360, column: 6, scope: !2846, inlinedAt: !2850)
!2941 = !DILocation(line: 360, column: 26, scope: !2938, inlinedAt: !2850)
!2942 = !DILocation(line: 361, column: 6, scope: !2943, inlinedAt: !2850)
!2943 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 361, column: 6)
!2944 = !DILocation(line: 361, column: 11, scope: !2943, inlinedAt: !2850)
!2945 = !DILocation(line: 361, column: 6, scope: !2846, inlinedAt: !2850)
!2946 = !DILocation(line: 361, column: 26, scope: !2943, inlinedAt: !2850)
!2947 = !DILocation(line: 362, column: 6, scope: !2948, inlinedAt: !2850)
!2948 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 362, column: 6)
!2949 = !DILocation(line: 362, column: 11, scope: !2948, inlinedAt: !2850)
!2950 = !DILocation(line: 362, column: 6, scope: !2846, inlinedAt: !2850)
!2951 = !DILocation(line: 362, column: 26, scope: !2948, inlinedAt: !2850)
!2952 = !DILocation(line: 363, column: 6, scope: !2953, inlinedAt: !2850)
!2953 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 363, column: 6)
!2954 = !DILocation(line: 363, column: 11, scope: !2953, inlinedAt: !2850)
!2955 = !DILocation(line: 363, column: 6, scope: !2846, inlinedAt: !2850)
!2956 = !DILocation(line: 363, column: 26, scope: !2953, inlinedAt: !2850)
!2957 = !DILocation(line: 364, column: 6, scope: !2958, inlinedAt: !2850)
!2958 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 364, column: 6)
!2959 = !DILocation(line: 364, column: 11, scope: !2958, inlinedAt: !2850)
!2960 = !DILocation(line: 364, column: 6, scope: !2846, inlinedAt: !2850)
!2961 = !DILocation(line: 364, column: 26, scope: !2958, inlinedAt: !2850)
!2962 = !DILocation(line: 365, column: 6, scope: !2963, inlinedAt: !2850)
!2963 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 365, column: 6)
!2964 = !DILocation(line: 365, column: 11, scope: !2963, inlinedAt: !2850)
!2965 = !DILocation(line: 365, column: 6, scope: !2846, inlinedAt: !2850)
!2966 = !DILocation(line: 365, column: 26, scope: !2963, inlinedAt: !2850)
!2967 = !DILocation(line: 366, column: 6, scope: !2968, inlinedAt: !2850)
!2968 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 366, column: 6)
!2969 = !DILocation(line: 366, column: 11, scope: !2968, inlinedAt: !2850)
!2970 = !DILocation(line: 366, column: 6, scope: !2846, inlinedAt: !2850)
!2971 = !DILocation(line: 366, column: 26, scope: !2968, inlinedAt: !2850)
!2972 = !DILocation(line: 367, column: 6, scope: !2973, inlinedAt: !2850)
!2973 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 367, column: 6)
!2974 = !DILocation(line: 367, column: 11, scope: !2973, inlinedAt: !2850)
!2975 = !DILocation(line: 367, column: 6, scope: !2846, inlinedAt: !2850)
!2976 = !DILocation(line: 367, column: 26, scope: !2973, inlinedAt: !2850)
!2977 = !DILocation(line: 368, column: 6, scope: !2978, inlinedAt: !2850)
!2978 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 368, column: 6)
!2979 = !DILocation(line: 368, column: 11, scope: !2978, inlinedAt: !2850)
!2980 = !DILocation(line: 368, column: 6, scope: !2846, inlinedAt: !2850)
!2981 = !DILocation(line: 368, column: 26, scope: !2978, inlinedAt: !2850)
!2982 = !DILocation(line: 369, column: 6, scope: !2983, inlinedAt: !2850)
!2983 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 369, column: 6)
!2984 = !DILocation(line: 369, column: 11, scope: !2983, inlinedAt: !2850)
!2985 = !DILocation(line: 369, column: 6, scope: !2846, inlinedAt: !2850)
!2986 = !DILocation(line: 369, column: 26, scope: !2983, inlinedAt: !2850)
!2987 = !DILocation(line: 370, column: 6, scope: !2988, inlinedAt: !2850)
!2988 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 370, column: 6)
!2989 = !DILocation(line: 370, column: 11, scope: !2988, inlinedAt: !2850)
!2990 = !DILocation(line: 370, column: 6, scope: !2846, inlinedAt: !2850)
!2991 = !DILocation(line: 370, column: 26, scope: !2988, inlinedAt: !2850)
!2992 = !DILocation(line: 371, column: 6, scope: !2993, inlinedAt: !2850)
!2993 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 371, column: 6)
!2994 = !DILocation(line: 371, column: 11, scope: !2993, inlinedAt: !2850)
!2995 = !DILocation(line: 371, column: 6, scope: !2846, inlinedAt: !2850)
!2996 = !DILocation(line: 371, column: 26, scope: !2993, inlinedAt: !2850)
!2997 = !DILocation(line: 372, column: 6, scope: !2998, inlinedAt: !2850)
!2998 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 372, column: 6)
!2999 = !DILocation(line: 372, column: 11, scope: !2998, inlinedAt: !2850)
!3000 = !DILocation(line: 372, column: 6, scope: !2846, inlinedAt: !2850)
!3001 = !DILocation(line: 372, column: 26, scope: !2998, inlinedAt: !2850)
!3002 = !DILocation(line: 373, column: 6, scope: !3003, inlinedAt: !2850)
!3003 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 373, column: 6)
!3004 = !DILocation(line: 373, column: 11, scope: !3003, inlinedAt: !2850)
!3005 = !DILocation(line: 373, column: 6, scope: !2846, inlinedAt: !2850)
!3006 = !DILocation(line: 373, column: 26, scope: !3003, inlinedAt: !2850)
!3007 = !DILocation(line: 374, column: 6, scope: !3008, inlinedAt: !2850)
!3008 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 374, column: 6)
!3009 = !DILocation(line: 374, column: 11, scope: !3008, inlinedAt: !2850)
!3010 = !DILocation(line: 374, column: 6, scope: !2846, inlinedAt: !2850)
!3011 = !DILocation(line: 374, column: 26, scope: !3008, inlinedAt: !2850)
!3012 = !DILocation(line: 375, column: 6, scope: !3013, inlinedAt: !2850)
!3013 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 375, column: 6)
!3014 = !DILocation(line: 375, column: 11, scope: !3013, inlinedAt: !2850)
!3015 = !DILocation(line: 375, column: 6, scope: !2846, inlinedAt: !2850)
!3016 = !DILocation(line: 375, column: 27, scope: !3013, inlinedAt: !2850)
!3017 = !DILocation(line: 376, column: 6, scope: !3018, inlinedAt: !2850)
!3018 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 376, column: 6)
!3019 = !DILocation(line: 376, column: 11, scope: !3018, inlinedAt: !2850)
!3020 = !DILocation(line: 376, column: 6, scope: !2846, inlinedAt: !2850)
!3021 = !DILocation(line: 376, column: 32, scope: !3018, inlinedAt: !2850)
!3022 = !DILocation(line: 377, column: 6, scope: !3023, inlinedAt: !2850)
!3023 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 377, column: 6)
!3024 = !DILocation(line: 377, column: 11, scope: !3023, inlinedAt: !2850)
!3025 = !DILocation(line: 377, column: 6, scope: !2846, inlinedAt: !2850)
!3026 = !DILocation(line: 377, column: 32, scope: !3023, inlinedAt: !2850)
!3027 = !DILocation(line: 378, column: 6, scope: !3028, inlinedAt: !2850)
!3028 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 378, column: 6)
!3029 = !DILocation(line: 378, column: 11, scope: !3028, inlinedAt: !2850)
!3030 = !DILocation(line: 378, column: 6, scope: !2846, inlinedAt: !2850)
!3031 = !DILocation(line: 378, column: 32, scope: !3028, inlinedAt: !2850)
!3032 = !DILocation(line: 379, column: 6, scope: !3033, inlinedAt: !2850)
!3033 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 379, column: 6)
!3034 = !DILocation(line: 379, column: 11, scope: !3033, inlinedAt: !2850)
!3035 = !DILocation(line: 379, column: 6, scope: !2846, inlinedAt: !2850)
!3036 = !DILocation(line: 379, column: 33, scope: !3033, inlinedAt: !2850)
!3037 = !DILocation(line: 380, column: 6, scope: !3038, inlinedAt: !2850)
!3038 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 380, column: 6)
!3039 = !DILocation(line: 380, column: 11, scope: !3038, inlinedAt: !2850)
!3040 = !DILocation(line: 380, column: 6, scope: !2846, inlinedAt: !2850)
!3041 = !DILocation(line: 380, column: 33, scope: !3038, inlinedAt: !2850)
!3042 = !DILocation(line: 381, column: 6, scope: !3043, inlinedAt: !2850)
!3043 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 381, column: 6)
!3044 = !DILocation(line: 381, column: 11, scope: !3043, inlinedAt: !2850)
!3045 = !DILocation(line: 381, column: 6, scope: !2846, inlinedAt: !2850)
!3046 = !DILocation(line: 381, column: 33, scope: !3043, inlinedAt: !2850)
!3047 = !DILocation(line: 382, column: 2, scope: !3048, inlinedAt: !2850)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !56, line: 382, column: 2)
!3049 = distinct !DILexicalBlock(scope: !2846, file: !56, line: 382, column: 2)
!3050 = !{i32 -2143381542, i32 -2143381513, i32 -2143381467, i32 -2143381409, i32 -2143381355, i32 -2143381301, i32 -2143381246, i32 -2143381215}
!3051 = !DILocation(line: 382, column: 2, scope: !3052, inlinedAt: !2850)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 382, column: 2)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !56, line: 382, column: 2)
!3054 = !{i32 -2143380772, i32 -2143380765, i32 -2143380711, i32 -2143380680, i32 -2143380650}
!3055 = !DILocation(line: 382, column: 2, scope: !3053, inlinedAt: !2850)
!3056 = !DILocation(line: 386, column: 1, scope: !2846, inlinedAt: !2850)
!3057 = !DILocation(line: 547, column: 9, scope: !2829, inlinedAt: !2832)
!3058 = !DILocation(line: 549, column: 8, scope: !3059, inlinedAt: !2832)
!3059 = distinct !DILexicalBlock(scope: !2829, file: !56, line: 549, column: 7)
!3060 = !DILocation(line: 549, column: 7, scope: !2829, inlinedAt: !2832)
!3061 = !DILocation(line: 550, column: 4, scope: !3059, inlinedAt: !2832)
!3062 = !DILocation(line: 553, column: 33, scope: !2829, inlinedAt: !2832)
!3063 = !DILocation(line: 325, column: 6, scope: !3064, inlinedAt: !2844)
!3064 = distinct !DILexicalBlock(scope: !2840, file: !56, line: 325, column: 6)
!3065 = !DILocation(line: 325, column: 6, scope: !2840, inlinedAt: !2844)
!3066 = !DILocation(line: 326, column: 3, scope: !3064, inlinedAt: !2844)
!3067 = !DILocation(line: 332, column: 9, scope: !2840, inlinedAt: !2844)
!3068 = !DILocation(line: 332, column: 15, scope: !2840, inlinedAt: !2844)
!3069 = !DILocation(line: 332, column: 2, scope: !2840, inlinedAt: !2844)
!3070 = !DILocation(line: 336, column: 1, scope: !2840, inlinedAt: !2844)
!3071 = !DILocation(line: 553, column: 5, scope: !2829, inlinedAt: !2832)
!3072 = !DILocation(line: 553, column: 41, scope: !2829, inlinedAt: !2832)
!3073 = !DILocation(line: 554, column: 5, scope: !2829, inlinedAt: !2832)
!3074 = !DILocation(line: 554, column: 12, scope: !2829, inlinedAt: !2832)
!3075 = !DILocation(line: 448, column: 31, scope: !2824, inlinedAt: !2828)
!3076 = !DILocation(line: 448, column: 34, scope: !2824, inlinedAt: !2828)
!3077 = !DILocation(line: 448, column: 14, scope: !2824, inlinedAt: !2828)
!3078 = !DILocation(line: 450, column: 22, scope: !2824, inlinedAt: !2828)
!3079 = !DILocation(line: 450, column: 25, scope: !2824, inlinedAt: !2828)
!3080 = !DILocation(line: 450, column: 30, scope: !2824, inlinedAt: !2828)
!3081 = !DILocation(line: 450, column: 36, scope: !2824, inlinedAt: !2828)
!3082 = !DILocation(line: 450, column: 8, scope: !2824, inlinedAt: !2828)
!3083 = !DILocation(line: 450, column: 6, scope: !2824, inlinedAt: !2828)
!3084 = !DILocation(line: 451, column: 9, scope: !2824, inlinedAt: !2828)
!3085 = !DILocation(line: 552, column: 3, scope: !2829, inlinedAt: !2832)
!3086 = !DILocation(line: 557, column: 19, scope: !2831, inlinedAt: !2832)
!3087 = !DILocation(line: 557, column: 25, scope: !2831, inlinedAt: !2832)
!3088 = !DILocation(line: 557, column: 9, scope: !2831, inlinedAt: !2832)
!3089 = !DILocation(line: 557, column: 2, scope: !2831, inlinedAt: !2832)
!3090 = !DILocation(line: 558, column: 1, scope: !2831, inlinedAt: !2832)
!3091 = !DILocation(line: 664, column: 2, scope: !2820)
!3092 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2542, file: !2542, line: 33, type: !2429, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3093 = !DILocalVariable(name: "list", arg: 1, scope: !3092, file: !2542, line: 33, type: !85)
!3094 = !DILocation(line: 33, column: 53, scope: !3092)
!3095 = !DILocation(line: 35, column: 2, scope: !3092)
!3096 = !DILocation(line: 35, column: 2, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3092, file: !2542, line: 35, column: 2)
!3098 = !DILocation(line: 35, column: 2, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3097, file: !2542, line: 35, column: 2)
!3100 = !DILocation(line: 35, column: 2, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !2542, line: 35, column: 2)
!3102 = !DILocation(line: 36, column: 15, scope: !3092)
!3103 = !DILocation(line: 36, column: 2, scope: !3092)
!3104 = !DILocation(line: 36, column: 8, scope: !3092)
!3105 = !DILocation(line: 36, column: 13, scope: !3092)
!3106 = !DILocation(line: 37, column: 1, scope: !3092)
!3107 = distinct !DISubprogram(name: "fpga_bridge_free", scope: !3, file: !3, line: 379, type: !2061, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3108 = !DILocalVariable(name: "bridge", arg: 1, scope: !3107, file: !3, line: 379, type: !64)
!3109 = !DILocation(line: 379, column: 43, scope: !3107)
!3110 = !DILocation(line: 381, column: 2, scope: !3107)
!3111 = !DILocation(line: 382, column: 8, scope: !3107)
!3112 = !DILocation(line: 382, column: 2, scope: !3107)
!3113 = !DILocation(line: 383, column: 1, scope: !3107)
!3114 = distinct !DISubprogram(name: "devm_fpga_bridge_create", scope: !3, file: !3, line: 411, type: !2091, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3115 = !DILocalVariable(name: "dev", arg: 1, scope: !3114, file: !3, line: 411, type: !1569)
!3116 = !DILocation(line: 411, column: 41, scope: !3114)
!3117 = !DILocalVariable(name: "name", arg: 2, scope: !3114, file: !3, line: 411, type: !69)
!3118 = !DILocation(line: 411, column: 58, scope: !3114)
!3119 = !DILocalVariable(name: "br_ops", arg: 3, scope: !3114, file: !3, line: 412, type: !2047)
!3120 = !DILocation(line: 412, column: 35, scope: !3114)
!3121 = !DILocalVariable(name: "priv", arg: 4, scope: !3114, file: !3, line: 412, type: !63)
!3122 = !DILocation(line: 412, column: 49, scope: !3114)
!3123 = !DILocalVariable(name: "ptr", scope: !3114, file: !3, line: 414, type: !2086)
!3124 = !DILocation(line: 414, column: 23, scope: !3114)
!3125 = !DILocalVariable(name: "bridge", scope: !3114, file: !3, line: 414, type: !64)
!3126 = !DILocation(line: 414, column: 29, scope: !3114)
!3127 = !DILocation(line: 416, column: 8, scope: !3114)
!3128 = !DILocation(line: 416, column: 6, scope: !3114)
!3129 = !DILocation(line: 417, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 417, column: 6)
!3131 = !DILocation(line: 417, column: 6, scope: !3114)
!3132 = !DILocation(line: 418, column: 3, scope: !3130)
!3133 = !DILocation(line: 420, column: 30, scope: !3114)
!3134 = !DILocation(line: 420, column: 35, scope: !3114)
!3135 = !DILocation(line: 420, column: 41, scope: !3114)
!3136 = !DILocation(line: 420, column: 49, scope: !3114)
!3137 = !DILocation(line: 420, column: 11, scope: !3114)
!3138 = !DILocation(line: 420, column: 9, scope: !3114)
!3139 = !DILocation(line: 421, column: 7, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 421, column: 6)
!3141 = !DILocation(line: 421, column: 6, scope: !3114)
!3142 = !DILocation(line: 422, column: 15, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 421, column: 15)
!3144 = !DILocation(line: 422, column: 3, scope: !3143)
!3145 = !DILocation(line: 423, column: 2, scope: !3143)
!3146 = !DILocation(line: 424, column: 10, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 423, column: 9)
!3148 = !DILocation(line: 424, column: 4, scope: !3147)
!3149 = !DILocation(line: 424, column: 8, scope: !3147)
!3150 = !DILocation(line: 425, column: 14, scope: !3147)
!3151 = !DILocation(line: 425, column: 19, scope: !3147)
!3152 = !DILocation(line: 425, column: 3, scope: !3147)
!3153 = !DILocation(line: 428, column: 9, scope: !3114)
!3154 = !DILocation(line: 428, column: 2, scope: !3114)
!3155 = !DILocation(line: 429, column: 1, scope: !3114)
!3156 = distinct !DISubprogram(name: "devres_alloc", scope: !30, file: !30, line: 178, type: !3157, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!63, !3159, !184, !1440}
!3159 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !30, line: 165, baseType: !3160)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !1569, !63}
!3163 = !DILocalVariable(name: "release", arg: 1, scope: !3156, file: !30, line: 178, type: !3159)
!3164 = !DILocation(line: 178, column: 47, scope: !3156)
!3165 = !DILocalVariable(name: "size", arg: 2, scope: !3156, file: !30, line: 178, type: !184)
!3166 = !DILocation(line: 178, column: 63, scope: !3156)
!3167 = !DILocalVariable(name: "gfp", arg: 3, scope: !3156, file: !30, line: 178, type: !1440)
!3168 = !DILocation(line: 178, column: 75, scope: !3156)
!3169 = !DILocation(line: 180, column: 27, scope: !3156)
!3170 = !DILocation(line: 180, column: 36, scope: !3156)
!3171 = !DILocation(line: 180, column: 42, scope: !3156)
!3172 = !DILocation(line: 180, column: 9, scope: !3156)
!3173 = !DILocation(line: 180, column: 2, scope: !3156)
!3174 = distinct !DISubprogram(name: "devm_fpga_bridge_release", scope: !3, file: !3, line: 386, type: !3161, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3175 = !DILocalVariable(name: "dev", arg: 1, scope: !3174, file: !3, line: 386, type: !1569)
!3176 = !DILocation(line: 386, column: 53, scope: !3174)
!3177 = !DILocalVariable(name: "res", arg: 2, scope: !3174, file: !3, line: 386, type: !63)
!3178 = !DILocation(line: 386, column: 64, scope: !3174)
!3179 = !DILocalVariable(name: "bridge", scope: !3174, file: !3, line: 388, type: !64)
!3180 = !DILocation(line: 388, column: 22, scope: !3174)
!3181 = !DILocation(line: 388, column: 55, scope: !3174)
!3182 = !DILocation(line: 388, column: 32, scope: !3174)
!3183 = !DILocation(line: 388, column: 31, scope: !3174)
!3184 = !DILocation(line: 390, column: 19, scope: !3174)
!3185 = !DILocation(line: 390, column: 2, scope: !3174)
!3186 = !DILocation(line: 391, column: 1, scope: !3174)
!3187 = distinct !DISubprogram(name: "fpga_bridge_register", scope: !3, file: !3, line: 439, type: !2053, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3188 = !DILocalVariable(name: "bridge", arg: 1, scope: !3187, file: !3, line: 439, type: !64)
!3189 = !DILocation(line: 439, column: 46, scope: !3187)
!3190 = !DILocalVariable(name: "dev", scope: !3187, file: !3, line: 441, type: !1569)
!3191 = !DILocation(line: 441, column: 17, scope: !3187)
!3192 = !DILocation(line: 441, column: 24, scope: !3187)
!3193 = !DILocation(line: 441, column: 32, scope: !3187)
!3194 = !DILocalVariable(name: "ret", scope: !3187, file: !3, line: 442, type: !121)
!3195 = !DILocation(line: 442, column: 6, scope: !3187)
!3196 = !DILocation(line: 444, column: 19, scope: !3187)
!3197 = !DILocation(line: 444, column: 8, scope: !3187)
!3198 = !DILocation(line: 444, column: 6, scope: !3187)
!3199 = !DILocation(line: 445, column: 6, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 445, column: 6)
!3201 = !DILocation(line: 445, column: 6, scope: !3187)
!3202 = !DILocation(line: 446, column: 10, scope: !3200)
!3203 = !DILocation(line: 446, column: 3, scope: !3200)
!3204 = !DILocation(line: 448, column: 23, scope: !3187)
!3205 = !DILocation(line: 448, column: 28, scope: !3187)
!3206 = !DILocation(line: 448, column: 49, scope: !3187)
!3207 = !DILocation(line: 448, column: 2, scope: !3187)
!3208 = !DILocation(line: 450, column: 2, scope: !3187)
!3209 = !DILocation(line: 452, column: 2, scope: !3187)
!3210 = !DILocation(line: 453, column: 1, scope: !3187)
!3211 = distinct !DISubprogram(name: "fpga_bridge_unregister", scope: !3, file: !3, line: 463, type: !2061, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3212 = !DILocalVariable(name: "bridge", arg: 1, scope: !3211, file: !3, line: 463, type: !64)
!3213 = !DILocation(line: 463, column: 49, scope: !3211)
!3214 = !DILocation(line: 469, column: 6, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 469, column: 6)
!3216 = !DILocation(line: 469, column: 14, scope: !3215)
!3217 = !DILocation(line: 469, column: 21, scope: !3215)
!3218 = !DILocation(line: 469, column: 24, scope: !3215)
!3219 = !DILocation(line: 469, column: 32, scope: !3215)
!3220 = !DILocation(line: 469, column: 40, scope: !3215)
!3221 = !DILocation(line: 469, column: 6, scope: !3211)
!3222 = !DILocation(line: 470, column: 3, scope: !3215)
!3223 = !DILocation(line: 470, column: 11, scope: !3215)
!3224 = !DILocation(line: 470, column: 19, scope: !3215)
!3225 = !DILocation(line: 470, column: 38, scope: !3215)
!3226 = !DILocation(line: 472, column: 21, scope: !3211)
!3227 = !DILocation(line: 472, column: 29, scope: !3211)
!3228 = !DILocation(line: 472, column: 2, scope: !3211)
!3229 = !DILocation(line: 473, column: 1, scope: !3211)
!3230 = distinct !DISubprogram(name: "fpga_bridge_dev_exit", scope: !3, file: !3, line: 494, type: !2120, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3231 = !DILocation(line: 496, column: 16, scope: !3230)
!3232 = !DILocation(line: 496, column: 2, scope: !3230)
!3233 = !DILocation(line: 497, column: 2, scope: !3230)
!3234 = !DILocation(line: 498, column: 1, scope: !3230)
!3235 = !DILocation(line: 327, column: 67, scope: !2445, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 482, column: 2, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 482, column: 2)
!3238 = !DILocation(line: 482, column: 2, scope: !2131)
!3239 = !DILocation(line: 329, column: 10, scope: !2445, inlinedAt: !3236)
!3240 = !DILocation(line: 329, column: 16, scope: !2445, inlinedAt: !3236)
!3241 = !DILocation(line: 482, column: 2, scope: !3237)
!3242 = !DILocation(line: 484, column: 22, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 484, column: 22)
!3244 = !DILocation(line: 484, column: 20, scope: !2131)
!3245 = !DILocation(line: 485, column: 13, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 485, column: 6)
!3247 = !DILocation(line: 485, column: 6, scope: !3246)
!3248 = !DILocation(line: 485, column: 6, scope: !2131)
!3249 = !DILocation(line: 486, column: 18, scope: !3246)
!3250 = !DILocation(line: 486, column: 10, scope: !3246)
!3251 = !DILocation(line: 486, column: 3, scope: !3246)
!3252 = !DILocation(line: 488, column: 2, scope: !2131)
!3253 = !DILocation(line: 488, column: 21, scope: !2131)
!3254 = !DILocation(line: 488, column: 32, scope: !2131)
!3255 = !DILocation(line: 489, column: 2, scope: !2131)
!3256 = !DILocation(line: 489, column: 21, scope: !2131)
!3257 = !DILocation(line: 489, column: 33, scope: !2131)
!3258 = !DILocation(line: 491, column: 2, scope: !2131)
!3259 = !DILocation(line: 492, column: 1, scope: !2131)
!3260 = distinct !DISubprogram(name: "try_module_get", scope: !2350, file: !2350, line: 751, type: !3261, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!980, !1646}
!3263 = !DILocalVariable(name: "module", arg: 1, scope: !3260, file: !2350, line: 751, type: !1646)
!3264 = !DILocation(line: 751, column: 50, scope: !3260)
!3265 = !DILocation(line: 753, column: 2, scope: !3260)
!3266 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2531, file: !2531, line: 646, type: !2532, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3267 = !DILocalVariable(name: "__ret", scope: !3268, file: !2531, line: 648, type: !187)
!3268 = distinct !DILexicalBlock(scope: !3266, file: !2531, line: 648, column: 9)
!3269 = !DILocation(line: 648, column: 9, scope: !3268)
!3270 = !DILocalVariable(name: "__edi", scope: !3268, file: !2531, line: 648, type: !187)
!3271 = !DILocalVariable(name: "__esi", scope: !3268, file: !2531, line: 648, type: !187)
!3272 = !DILocalVariable(name: "__edx", scope: !3268, file: !2531, line: 648, type: !187)
!3273 = !DILocalVariable(name: "__ecx", scope: !3268, file: !2531, line: 648, type: !187)
!3274 = !DILocalVariable(name: "__eax", scope: !3268, file: !2531, line: 648, type: !187)
!3275 = !DILocation(line: 648, column: 9, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !2531, line: 648, column: 9)
!3277 = distinct !DILexicalBlock(scope: !3268, file: !2531, line: 648, column: 9)
!3278 = !{i32 -2145760171, i32 -2145757856, i32 -2145757622, i32 -2145757571, i32 -2145757543, i32 -2145757518, i32 -2145757834, i32 -2145757821, i32 -2145757383, i32 -2145757264, i32 -2145757729, i32 -2145757702, i32 -2145757674, i32 -2145757644}
!3279 = !DILocalVariable(name: "__mask", scope: !3280, file: !2531, line: 648, type: !187)
!3280 = distinct !DILexicalBlock(scope: !3276, file: !2531, line: 648, column: 9)
!3281 = !DILocation(line: 648, column: 9, scope: !3280)
!3282 = !DILocation(line: 648, column: 9, scope: !3277)
!3283 = !DILocation(line: 648, column: 2, scope: !3266)
!3284 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2531, file: !2531, line: 656, type: !2120, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3285 = !DILocalVariable(name: "__edi", scope: !3286, file: !2531, line: 658, type: !187)
!3286 = distinct !DILexicalBlock(scope: !3284, file: !2531, line: 658, column: 2)
!3287 = !DILocation(line: 658, column: 2, scope: !3286)
!3288 = !DILocalVariable(name: "__esi", scope: !3286, file: !2531, line: 658, type: !187)
!3289 = !DILocalVariable(name: "__edx", scope: !3286, file: !2531, line: 658, type: !187)
!3290 = !DILocalVariable(name: "__ecx", scope: !3286, file: !2531, line: 658, type: !187)
!3291 = !DILocalVariable(name: "__eax", scope: !3286, file: !2531, line: 658, type: !187)
!3292 = !{i32 -2145753077, i32 -2145752345, i32 -2145752111, i32 -2145752060, i32 -2145752032, i32 -2145752007, i32 -2145752323, i32 -2145752310, i32 -2145751872, i32 -2145751753, i32 -2145752218, i32 -2145752191, i32 -2145752163, i32 -2145752133}
!3293 = !DILocation(line: 659, column: 1, scope: !3284)
!3294 = distinct !DISubprogram(name: "__list_del_entry", scope: !2542, file: !2542, line: 130, type: !2429, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3295 = !DILocalVariable(name: "entry", arg: 1, scope: !3294, file: !2542, line: 130, type: !85)
!3296 = !DILocation(line: 130, column: 55, scope: !3294)
!3297 = !DILocation(line: 132, column: 30, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !2542, line: 132, column: 6)
!3299 = !DILocation(line: 132, column: 7, scope: !3298)
!3300 = !DILocation(line: 132, column: 6, scope: !3294)
!3301 = !DILocation(line: 133, column: 3, scope: !3298)
!3302 = !DILocation(line: 135, column: 13, scope: !3294)
!3303 = !DILocation(line: 135, column: 20, scope: !3294)
!3304 = !DILocation(line: 135, column: 26, scope: !3294)
!3305 = !DILocation(line: 135, column: 33, scope: !3294)
!3306 = !DILocation(line: 135, column: 2, scope: !3294)
!3307 = !DILocation(line: 136, column: 1, scope: !3294)
!3308 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2542, file: !2542, line: 51, type: !3309, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!980, !85}
!3311 = !DILocalVariable(name: "entry", arg: 1, scope: !3308, file: !2542, line: 51, type: !85)
!3312 = !DILocation(line: 51, column: 61, scope: !3308)
!3313 = !DILocation(line: 53, column: 2, scope: !3308)
!3314 = distinct !DISubprogram(name: "__list_del", scope: !2542, file: !2542, line: 110, type: !2637, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3315 = !DILocalVariable(name: "prev", arg: 1, scope: !3314, file: !2542, line: 110, type: !85)
!3316 = !DILocation(line: 110, column: 50, scope: !3314)
!3317 = !DILocalVariable(name: "next", arg: 2, scope: !3314, file: !2542, line: 110, type: !85)
!3318 = !DILocation(line: 110, column: 75, scope: !3314)
!3319 = !DILocation(line: 112, column: 15, scope: !3314)
!3320 = !DILocation(line: 112, column: 2, scope: !3314)
!3321 = !DILocation(line: 112, column: 8, scope: !3314)
!3322 = !DILocation(line: 112, column: 13, scope: !3314)
!3323 = !DILocation(line: 113, column: 2, scope: !3314)
!3324 = !DILocation(line: 113, column: 2, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3314, file: !2542, line: 113, column: 2)
!3326 = !DILocation(line: 113, column: 2, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3325, file: !2542, line: 113, column: 2)
!3328 = !DILocation(line: 113, column: 2, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3325, file: !2542, line: 113, column: 2)
!3330 = !DILocation(line: 114, column: 1, scope: !3314)
!3331 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2531, file: !2531, line: 651, type: !3332, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !187}
!3334 = !DILocalVariable(name: "f", arg: 1, scope: !3331, file: !2531, line: 651, type: !187)
!3335 = !DILocation(line: 651, column: 65, scope: !3331)
!3336 = !DILocalVariable(name: "__edi", scope: !3337, file: !2531, line: 653, type: !187)
!3337 = distinct !DILexicalBlock(scope: !3331, file: !2531, line: 653, column: 2)
!3338 = !DILocation(line: 653, column: 2, scope: !3337)
!3339 = !DILocalVariable(name: "__esi", scope: !3337, file: !2531, line: 653, type: !187)
!3340 = !DILocalVariable(name: "__edx", scope: !3337, file: !2531, line: 653, type: !187)
!3341 = !DILocalVariable(name: "__ecx", scope: !3337, file: !2531, line: 653, type: !187)
!3342 = !DILocalVariable(name: "__eax", scope: !3337, file: !2531, line: 653, type: !187)
!3343 = !{i32 -2145755704, i32 -2145754954, i32 -2145754720, i32 -2145754669, i32 -2145754641, i32 -2145754616, i32 -2145754932, i32 -2145754919, i32 -2145754481, i32 -2145754362, i32 -2145754827, i32 -2145754800, i32 -2145754772, i32 -2145754742}
!3344 = !DILocation(line: 654, column: 1, scope: !3331)
!3345 = distinct !DISubprogram(name: "__list_add", scope: !2542, file: !2542, line: 63, type: !3346, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !85, !85, !85}
!3348 = !DILocalVariable(name: "new", arg: 1, scope: !3345, file: !2542, line: 63, type: !85)
!3349 = !DILocation(line: 63, column: 49, scope: !3345)
!3350 = !DILocalVariable(name: "prev", arg: 2, scope: !3345, file: !2542, line: 64, type: !85)
!3351 = !DILocation(line: 64, column: 28, scope: !3345)
!3352 = !DILocalVariable(name: "next", arg: 3, scope: !3345, file: !2542, line: 65, type: !85)
!3353 = !DILocation(line: 65, column: 28, scope: !3345)
!3354 = !DILocation(line: 67, column: 24, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3345, file: !2542, line: 67, column: 6)
!3356 = !DILocation(line: 67, column: 29, scope: !3355)
!3357 = !DILocation(line: 67, column: 35, scope: !3355)
!3358 = !DILocation(line: 67, column: 7, scope: !3355)
!3359 = !DILocation(line: 67, column: 6, scope: !3345)
!3360 = !DILocation(line: 68, column: 3, scope: !3355)
!3361 = !DILocation(line: 70, column: 15, scope: !3345)
!3362 = !DILocation(line: 70, column: 2, scope: !3345)
!3363 = !DILocation(line: 70, column: 8, scope: !3345)
!3364 = !DILocation(line: 70, column: 13, scope: !3345)
!3365 = !DILocation(line: 71, column: 14, scope: !3345)
!3366 = !DILocation(line: 71, column: 2, scope: !3345)
!3367 = !DILocation(line: 71, column: 7, scope: !3345)
!3368 = !DILocation(line: 71, column: 12, scope: !3345)
!3369 = !DILocation(line: 72, column: 14, scope: !3345)
!3370 = !DILocation(line: 72, column: 2, scope: !3345)
!3371 = !DILocation(line: 72, column: 7, scope: !3345)
!3372 = !DILocation(line: 72, column: 12, scope: !3345)
!3373 = !DILocation(line: 73, column: 2, scope: !3345)
!3374 = !DILocation(line: 73, column: 2, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3345, file: !2542, line: 73, column: 2)
!3376 = !DILocation(line: 73, column: 2, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3375, file: !2542, line: 73, column: 2)
!3378 = !DILocation(line: 73, column: 2, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !2542, line: 73, column: 2)
!3380 = !DILocation(line: 74, column: 1, scope: !3345)
!3381 = distinct !DISubprogram(name: "__list_add_valid", scope: !2542, file: !2542, line: 45, type: !3382, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!980, !85, !85, !85}
!3384 = !DILocalVariable(name: "new", arg: 1, scope: !3381, file: !2542, line: 45, type: !85)
!3385 = !DILocation(line: 45, column: 55, scope: !3381)
!3386 = !DILocalVariable(name: "prev", arg: 2, scope: !3381, file: !2542, line: 46, type: !85)
!3387 = !DILocation(line: 46, column: 23, scope: !3381)
!3388 = !DILocalVariable(name: "next", arg: 3, scope: !3381, file: !2542, line: 47, type: !85)
!3389 = !DILocation(line: 47, column: 23, scope: !3381)
!3390 = !DILocation(line: 49, column: 2, scope: !3381)
!3391 = distinct !DISubprogram(name: "get_order", scope: !3392, file: !3392, line: 29, type: !3393, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3392 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!121, !187}
!3395 = !DILocalVariable(name: "x", arg: 1, scope: !3396, file: !3397, line: 366, type: !258)
!3396 = distinct !DISubprogram(name: "fls64", scope: !3397, file: !3397, line: 366, type: !3398, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3397 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!121, !258}
!3400 = !DILocation(line: 366, column: 40, scope: !3396, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 46, column: 9, scope: !3391)
!3402 = !DILocalVariable(name: "bitpos", scope: !3396, file: !3397, line: 368, type: !121)
!3403 = !DILocation(line: 368, column: 6, scope: !3396, inlinedAt: !3401)
!3404 = !DILocalVariable(name: "size", arg: 1, scope: !3391, file: !3392, line: 29, type: !187)
!3405 = !DILocation(line: 29, column: 63, scope: !3391)
!3406 = !DILocation(line: 31, column: 27, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3391, file: !3392, line: 31, column: 6)
!3408 = !DILocation(line: 31, column: 6, scope: !3407)
!3409 = !DILocation(line: 31, column: 6, scope: !3391)
!3410 = !DILocation(line: 32, column: 8, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !3392, line: 32, column: 7)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !3392, line: 31, column: 34)
!3413 = !DILocation(line: 32, column: 7, scope: !3412)
!3414 = !DILocation(line: 33, column: 4, scope: !3411)
!3415 = !DILocation(line: 35, column: 7, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !3392, line: 35, column: 7)
!3417 = !DILocation(line: 35, column: 12, scope: !3416)
!3418 = !DILocation(line: 35, column: 7, scope: !3412)
!3419 = !DILocation(line: 36, column: 4, scope: !3416)
!3420 = !DILocation(line: 38, column: 10, scope: !3412)
!3421 = !DILocation(line: 38, column: 28, scope: !3412)
!3422 = !DILocation(line: 38, column: 41, scope: !3412)
!3423 = !DILocation(line: 38, column: 3, scope: !3412)
!3424 = !DILocation(line: 41, column: 6, scope: !3391)
!3425 = !DILocation(line: 42, column: 7, scope: !3391)
!3426 = !DILocation(line: 46, column: 15, scope: !3391)
!3427 = !DILocation(line: 374, column: 2, scope: !3396, inlinedAt: !3401)
!3428 = !DILocation(line: 376, column: 14, scope: !3396, inlinedAt: !3401)
!3429 = !{i32 390277}
!3430 = !DILocation(line: 377, column: 9, scope: !3396, inlinedAt: !3401)
!3431 = !DILocation(line: 377, column: 16, scope: !3396, inlinedAt: !3401)
!3432 = !DILocation(line: 46, column: 2, scope: !3391)
!3433 = !DILocation(line: 48, column: 1, scope: !3391)
!3434 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3435, file: !3435, line: 30, type: !3436, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3435 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!121, !256}
!3438 = !DILocation(line: 366, column: 40, scope: !3396, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 32, column: 9, scope: !3434)
!3440 = !DILocation(line: 368, column: 6, scope: !3396, inlinedAt: !3439)
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3434, file: !3435, line: 30, type: !256)
!3442 = !DILocation(line: 30, column: 21, scope: !3434)
!3443 = !DILocation(line: 32, column: 15, scope: !3434)
!3444 = !DILocation(line: 374, column: 2, scope: !3396, inlinedAt: !3439)
!3445 = !DILocation(line: 376, column: 14, scope: !3396, inlinedAt: !3439)
!3446 = !DILocation(line: 377, column: 9, scope: !3396, inlinedAt: !3439)
!3447 = !DILocation(line: 377, column: 16, scope: !3396, inlinedAt: !3439)
!3448 = !DILocation(line: 32, column: 18, scope: !3434)
!3449 = !DILocation(line: 32, column: 2, scope: !3434)
!3450 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3451, file: !3451, line: 137, type: !3452, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3451 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!63, !1030, !1371, !184, !1440}
!3454 = !DILocalVariable(name: "s", arg: 1, scope: !3450, file: !3451, line: 137, type: !1030)
!3455 = !DILocation(line: 137, column: 54, scope: !3450)
!3456 = !DILocalVariable(name: "object", arg: 2, scope: !3450, file: !3451, line: 137, type: !1371)
!3457 = !DILocation(line: 137, column: 69, scope: !3450)
!3458 = !DILocalVariable(name: "size", arg: 3, scope: !3450, file: !3451, line: 138, type: !184)
!3459 = !DILocation(line: 138, column: 12, scope: !3450)
!3460 = !DILocalVariable(name: "flags", arg: 4, scope: !3450, file: !3451, line: 138, type: !1440)
!3461 = !DILocation(line: 138, column: 24, scope: !3450)
!3462 = !DILocation(line: 140, column: 17, scope: !3450)
!3463 = !DILocation(line: 140, column: 2, scope: !3450)
!3464 = distinct !DISubprogram(name: "fpga_bridge_dev_release", scope: !3, file: !3, line: 476, type: !1592, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3465 = !DILocalVariable(name: "dev", arg: 1, scope: !3464, file: !3, line: 476, type: !1569)
!3466 = !DILocation(line: 476, column: 52, scope: !3464)
!3467 = !DILocation(line: 478, column: 1, scope: !3464)
!3468 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 284, type: !2149, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3469 = !DILocalVariable(name: "dev", arg: 1, scope: !3468, file: !3, line: 284, type: !1569)
!3470 = !DILocation(line: 284, column: 41, scope: !3468)
!3471 = !DILocalVariable(name: "attr", arg: 2, scope: !3468, file: !3, line: 285, type: !2151)
!3472 = !DILocation(line: 285, column: 30, scope: !3468)
!3473 = !DILocalVariable(name: "buf", arg: 3, scope: !3468, file: !3, line: 285, type: !137)
!3474 = !DILocation(line: 285, column: 42, scope: !3468)
!3475 = !DILocalVariable(name: "bridge", scope: !3468, file: !3, line: 287, type: !64)
!3476 = !DILocation(line: 287, column: 22, scope: !3468)
!3477 = !DILocalVariable(name: "__mptr", scope: !3478, file: !3, line: 287, type: !63)
!3478 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 287, column: 31)
!3479 = !DILocation(line: 287, column: 31, scope: !3478)
!3480 = !DILocation(line: 287, column: 31, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 287, column: 31)
!3482 = !DILocation(line: 289, column: 17, scope: !3468)
!3483 = !DILocation(line: 289, column: 30, scope: !3468)
!3484 = !DILocation(line: 289, column: 38, scope: !3468)
!3485 = !DILocation(line: 289, column: 9, scope: !3468)
!3486 = !DILocation(line: 289, column: 2, scope: !3468)
!3487 = distinct !DISubprogram(name: "state_show", scope: !3, file: !3, line: 292, type: !2149, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !109)
!3488 = !DILocalVariable(name: "dev", arg: 1, scope: !3487, file: !3, line: 292, type: !1569)
!3489 = !DILocation(line: 292, column: 42, scope: !3487)
!3490 = !DILocalVariable(name: "attr", arg: 2, scope: !3487, file: !3, line: 293, type: !2151)
!3491 = !DILocation(line: 293, column: 31, scope: !3487)
!3492 = !DILocalVariable(name: "buf", arg: 3, scope: !3487, file: !3, line: 293, type: !137)
!3493 = !DILocation(line: 293, column: 43, scope: !3487)
!3494 = !DILocalVariable(name: "bridge", scope: !3487, file: !3, line: 295, type: !64)
!3495 = !DILocation(line: 295, column: 22, scope: !3487)
!3496 = !DILocalVariable(name: "__mptr", scope: !3497, file: !3, line: 295, type: !63)
!3497 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 295, column: 31)
!3498 = !DILocation(line: 295, column: 31, scope: !3497)
!3499 = !DILocation(line: 295, column: 31, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 295, column: 31)
!3501 = !DILocalVariable(name: "enable", scope: !3487, file: !3, line: 296, type: !121)
!3502 = !DILocation(line: 296, column: 6, scope: !3487)
!3503 = !DILocation(line: 298, column: 6, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 298, column: 6)
!3505 = !DILocation(line: 298, column: 14, scope: !3504)
!3506 = !DILocation(line: 298, column: 21, scope: !3504)
!3507 = !DILocation(line: 298, column: 24, scope: !3504)
!3508 = !DILocation(line: 298, column: 32, scope: !3504)
!3509 = !DILocation(line: 298, column: 40, scope: !3504)
!3510 = !DILocation(line: 298, column: 6, scope: !3487)
!3511 = !DILocation(line: 299, column: 12, scope: !3504)
!3512 = !DILocation(line: 299, column: 20, scope: !3504)
!3513 = !DILocation(line: 299, column: 28, scope: !3504)
!3514 = !DILocation(line: 299, column: 40, scope: !3504)
!3515 = !DILocation(line: 299, column: 10, scope: !3504)
!3516 = !DILocation(line: 299, column: 3, scope: !3504)
!3517 = !DILocation(line: 301, column: 17, scope: !3487)
!3518 = !DILocation(line: 301, column: 30, scope: !3487)
!3519 = !DILocation(line: 301, column: 9, scope: !3487)
!3520 = !DILocation(line: 301, column: 2, scope: !3487)
