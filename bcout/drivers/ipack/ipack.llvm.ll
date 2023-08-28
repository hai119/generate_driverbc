; ModuleID = '../bcout/drivers/ipack/ipack.llvm.bc'
source_filename = "drivers/ipack/ipack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ipack_init6:\09\09\09"
module asm ".long\09ipack_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.ipack_bus_device = type { %struct.module*, %struct.device*, i32, i32, %struct.ipack_bus_ops* }
%struct.ipack_bus_ops = type { i32 (%struct.ipack_device*, i32 (i8*)*, i8*)*, i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*, i32)*, i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*)* }
%struct.ipack_device = type { i32, %struct.ipack_bus_device*, %struct.device, void (%struct.ipack_device*)*, [5 x %struct.ipack_region], i8*, i64, i32, i32, i8, i8 }
%struct.ipack_region = type { i64, i64 }
%struct.ipack_driver = type { %struct.device_driver, %struct.ipack_device_id*, %struct.ipack_driver_ops* }
%struct.ipack_device_id = type { i8, i32, i32 }
%struct.ipack_driver_ops = type { i32 (%struct.ipack_device*)*, void (%struct.ipack_device*)* }

@ipack_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !0
@ipack_bus_type = internal global %struct.bus_type { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @ipack_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @ipack_bus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @ipack_uevent, i32 (%struct.device*)* @ipack_bus_probe, void (%struct.device*)* null, i32 (%struct.device*)* @ipack_bus_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !2156
@.str = private unnamed_addr constant [16 x i8] c"ipack-dev.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"failed to switch to 8 MHz operation for reading of device ID.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to reset potential timeout.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"error reading device id section.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to switch to 32 MHz operation.\0A\00", align 1
@__UNIQUE_ID___addressable_ipack_init175 = internal global i8* bitcast (i32 ()* @ipack_init to i8*), section ".discard.addressable", align 8, !dbg !2127
@__exitcall_ipack_exit = internal global void ()* @ipack_exit, section ".exitcall.exit", align 8, !dbg !2129
@__UNIQUE_ID_author176 = internal constant [62 x i8] c"ipack.author=Samuel Iglesias Gonsalvez <siglesias@igalia.com>\00", section ".modinfo", align 1, !dbg !2136
@__UNIQUE_ID_file177 = internal constant [31 x i8] c"ipack.file=drivers/ipack/ipack\00", section ".modinfo", align 1, !dbg !2141
@__UNIQUE_ID_license178 = internal constant [18 x i8] c"ipack.license=GPL\00", section ".modinfo", align 1, !dbg !2146
@__UNIQUE_ID_description179 = internal constant [41 x i8] c"ipack.description=Industry-pack bus core\00", section ".modinfo", align 1, !dbg !2151
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ipack\00", align 1
@ipack_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @ipack_group, %struct.attribute_group* null], align 16, !dbg !2158
@ipack_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([6 x %struct.attribute*], [6 x %struct.attribute*]* @ipack_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2161
@ipack_attrs = internal global [6 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id_device, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id_format, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id_vendor, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_modalias, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2163
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2166
@dev_attr_id_device = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_device_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2180
@dev_attr_id_format = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_format_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2182
@dev_attr_id_vendor = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_vendor_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2184
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @modalias_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2186
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"id_device\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"id_format\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"0x%hhx\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"id_vendor\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0x%06x\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"ipac:f%02Xv%08Xd%08X\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"MODALIAS=ipack:f%02Xv%08Xd%08X\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"error mapping memory\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"invalid id size\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"ID CRC invalid found 0x%x, expected 0x%x.\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @ipack_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_ipack_init175 to i8*), i8* bitcast (void ()** @__exitcall_ipack_exit to i8*), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_author176, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_file177, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__UNIQUE_ID_license178, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_description179, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.ipack_bus_device* @ipack_bus_register(%struct.device* %parent, i32 %slots, %struct.ipack_bus_ops* %ops, %struct.module* %owner) #0 !dbg !2196 {
entry:
  %retval = alloca %struct.ipack_bus_device*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %slots.addr = alloca i32, align 4
  %ops.addr = alloca %struct.ipack_bus_ops*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %bus_nr = alloca i32, align 4
  %bus = alloca %struct.ipack_bus_device*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2199, metadata !DIExpression()), !dbg !2200
  store i32 %slots, i32* %slots.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slots.addr, metadata !2201, metadata !DIExpression()), !dbg !2202
  store %struct.ipack_bus_ops* %ops, %struct.ipack_bus_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_bus_ops** %ops.addr, metadata !2203, metadata !DIExpression()), !dbg !2204
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2205, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.declare(metadata i32* %bus_nr, metadata !2207, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.declare(metadata %struct.ipack_bus_device** %bus, metadata !2209, metadata !DIExpression()), !dbg !2210
  %call = call i8* @kzalloc(i64 32, i32 3264) #9, !dbg !2211
  %0 = bitcast i8* %call to %struct.ipack_bus_device*, !dbg !2211
  store %struct.ipack_bus_device* %0, %struct.ipack_bus_device** %bus, align 8, !dbg !2212
  %1 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2213
  %tobool = icmp ne %struct.ipack_bus_device* %1, null, !dbg !2213
  br i1 %tobool, label %if.end, label %if.then, !dbg !2215

if.then:                                          ; preds = %entry
  store %struct.ipack_bus_device* null, %struct.ipack_bus_device** %retval, align 8, !dbg !2216
  br label %return, !dbg !2216

if.end:                                           ; preds = %entry
  %call1 = call i32 @ida_alloc_range(%struct.ida* @ipack_ida, i32 0, i32 -1, i32 3264) #9, !dbg !2217
  store i32 %call1, i32* %bus_nr, align 4, !dbg !2218
  %2 = load i32, i32* %bus_nr, align 4, !dbg !2219
  %cmp = icmp slt i32 %2, 0, !dbg !2221
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2222

if.then2:                                         ; preds = %if.end
  %3 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2223
  %4 = bitcast %struct.ipack_bus_device* %3 to i8*, !dbg !2223
  call void @kfree(i8* %4) #9, !dbg !2225
  store %struct.ipack_bus_device* null, %struct.ipack_bus_device** %retval, align 8, !dbg !2226
  br label %return, !dbg !2226

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* %bus_nr, align 4, !dbg !2227
  %6 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2228
  %bus_nr4 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %6, i32 0, i32 3, !dbg !2229
  store i32 %5, i32* %bus_nr4, align 4, !dbg !2230
  %7 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2231
  %8 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2232
  %parent5 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %8, i32 0, i32 1, !dbg !2233
  store %struct.device* %7, %struct.device** %parent5, align 8, !dbg !2234
  %9 = load i32, i32* %slots.addr, align 4, !dbg !2235
  %10 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2236
  %slots6 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %10, i32 0, i32 2, !dbg !2237
  store i32 %9, i32* %slots6, align 8, !dbg !2238
  %11 = load %struct.ipack_bus_ops*, %struct.ipack_bus_ops** %ops.addr, align 8, !dbg !2239
  %12 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2240
  %ops7 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %12, i32 0, i32 4, !dbg !2241
  store %struct.ipack_bus_ops* %11, %struct.ipack_bus_ops** %ops7, align 8, !dbg !2242
  %13 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2243
  %14 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2244
  %owner8 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %14, i32 0, i32 0, !dbg !2245
  store %struct.module* %13, %struct.module** %owner8, align 8, !dbg !2246
  %15 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2247
  store %struct.ipack_bus_device* %15, %struct.ipack_bus_device** %retval, align 8, !dbg !2248
  br label %return, !dbg !2248

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %16 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %retval, align 8, !dbg !2249
  ret %struct.ipack_bus_device* %16, !dbg !2249
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2250 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2253, metadata !DIExpression()), !dbg !2257
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2263, metadata !DIExpression()), !dbg !2264
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2265, metadata !DIExpression()), !dbg !2266
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2267, metadata !DIExpression()), !dbg !2268
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2269, metadata !DIExpression()), !dbg !2273
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2275, metadata !DIExpression()), !dbg !2279
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2281, metadata !DIExpression()), !dbg !2285
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2290, metadata !DIExpression()), !dbg !2291
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2292, metadata !DIExpression()), !dbg !2293
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2294, metadata !DIExpression()), !dbg !2295
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2296, metadata !DIExpression()), !dbg !2297
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2298, metadata !DIExpression()), !dbg !2299
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2300, metadata !DIExpression()), !dbg !2301
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2302, metadata !DIExpression()), !dbg !2303
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2304, metadata !DIExpression()), !dbg !2305
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2306, metadata !DIExpression()), !dbg !2307
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2308, metadata !DIExpression()), !dbg !2309
  %0 = load i64, i64* %size.addr, align 8, !dbg !2310
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2311
  %or = or i32 %1, 256, !dbg !2312
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2313
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !2314
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2315

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2316
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2317
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2318

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2319
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2320
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2321
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !2322
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2299
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2323
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2324
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2325
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2326
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2327
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2328
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !2329
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2329
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2329
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2329
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2329
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2330
  br label %kmalloc.exit, !dbg !2330

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2331
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2332
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2332
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2334

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2335
  br label %kmalloc_index.exit.i, !dbg !2335

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2336
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2338
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2339

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2340
  br label %kmalloc_index.exit.i, !dbg !2340

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2341
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2343
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2344

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2345
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2346
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2347

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2348
  br label %kmalloc_index.exit.i, !dbg !2348

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2349
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2351
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2352

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2353
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2354
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2355

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2356
  br label %kmalloc_index.exit.i, !dbg !2356

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2357
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2359
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2360

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2361
  br label %kmalloc_index.exit.i, !dbg !2361

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2362
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2364
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2365

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2366
  br label %kmalloc_index.exit.i, !dbg !2366

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2367
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2369
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2370

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2371
  br label %kmalloc_index.exit.i, !dbg !2371

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2372
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2374
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2375

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2376
  br label %kmalloc_index.exit.i, !dbg !2376

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2377
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2379
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2380

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2381
  br label %kmalloc_index.exit.i, !dbg !2381

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2382
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2384
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2385

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2386
  br label %kmalloc_index.exit.i, !dbg !2386

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2387
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2389
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2390

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2391
  br label %kmalloc_index.exit.i, !dbg !2391

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2392
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2394
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2395

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2396
  br label %kmalloc_index.exit.i, !dbg !2396

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2397
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2399
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2400

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2401
  br label %kmalloc_index.exit.i, !dbg !2401

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2402
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2404
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2405

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2406
  br label %kmalloc_index.exit.i, !dbg !2406

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2407
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2409
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2410

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2411
  br label %kmalloc_index.exit.i, !dbg !2411

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2412
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2414
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2415

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2416
  br label %kmalloc_index.exit.i, !dbg !2416

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2417
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2419
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2420

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2421
  br label %kmalloc_index.exit.i, !dbg !2421

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2422
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2424
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2425

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2426
  br label %kmalloc_index.exit.i, !dbg !2426

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2427
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2429
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2430

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2431
  br label %kmalloc_index.exit.i, !dbg !2431

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2432
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2434
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2435

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2436
  br label %kmalloc_index.exit.i, !dbg !2436

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2437
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2439
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2440

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2441
  br label %kmalloc_index.exit.i, !dbg !2441

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2442
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2444
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2445

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2446
  br label %kmalloc_index.exit.i, !dbg !2446

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2447
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2449
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2450

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2451
  br label %kmalloc_index.exit.i, !dbg !2451

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2452
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2454
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2455

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2456
  br label %kmalloc_index.exit.i, !dbg !2456

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2457
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2459
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2460

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2461
  br label %kmalloc_index.exit.i, !dbg !2461

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2462
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2464
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2465

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2466
  br label %kmalloc_index.exit.i, !dbg !2466

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2467
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2469
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2470

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2471
  br label %kmalloc_index.exit.i, !dbg !2471

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2472
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2474
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2475

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2476
  br label %kmalloc_index.exit.i, !dbg !2476

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !2477, !srcloc !2480
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !2481, !srcloc !2484
  unreachable, !dbg !2485

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2486
  store i32 %45, i32* %index.i, align 4, !dbg !2487
  %46 = load i32, i32* %index.i, align 4, !dbg !2488
  %tobool.i = icmp ne i32 %46, 0, !dbg !2488
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2490

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2491
  br label %kmalloc.exit, !dbg !2491

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2492
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2493
  %and.i.i = and i32 %48, 17, !dbg !2493
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2493
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2493
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2493
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2493
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2495

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2496
  br label %kmalloc_type.exit.i, !dbg !2496

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2497
  %and2.i.i = and i32 %49, 1, !dbg !2498
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2497
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2497
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2497
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2499
  br label %kmalloc_type.exit.i, !dbg !2499

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2500
  %idxprom.i = zext i32 %51 to i64, !dbg !2501
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2501
  %52 = load i32, i32* %index.i, align 4, !dbg !2502
  %idxprom6.i = zext i32 %52 to i64, !dbg !2501
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2501
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2501
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2503
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2504
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2505
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2506
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !2507
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2507
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2507
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2507
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !2507
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2268
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2508
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2509
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2510
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2511
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !2512
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2513
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2514
  store i8* %62, i8** %retval.i, align 8, !dbg !2515
  br label %kmalloc.exit, !dbg !2515

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2516
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2517
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !2518
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2518
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2518
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2518
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !2518
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2519
  br label %kmalloc.exit, !dbg !2519

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2520
  ret i8* %65, !dbg !2521
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ipack_bus_unregister(%struct.ipack_bus_device* %bus) #0 !dbg !2522 {
entry:
  %bus.addr = alloca %struct.ipack_bus_device*, align 8
  store %struct.ipack_bus_device* %bus, %struct.ipack_bus_device** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_bus_device** %bus.addr, metadata !2525, metadata !DIExpression()), !dbg !2526
  %0 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus.addr, align 8, !dbg !2527
  %1 = bitcast %struct.ipack_bus_device* %0 to i8*, !dbg !2527
  %call = call i32 @bus_for_each_dev(%struct.bus_type* @ipack_bus_type, %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @ipack_unregister_bus_member) #9, !dbg !2528
  %2 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus.addr, align 8, !dbg !2529
  %bus_nr = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %2, i32 0, i32 3, !dbg !2529
  %3 = load i32, i32* %bus_nr, align 4, !dbg !2529
  call void @ida_free(%struct.ida* @ipack_ida, i32 %3) #9, !dbg !2529
  %4 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus.addr, align 8, !dbg !2530
  %5 = bitcast %struct.ipack_bus_device* %4 to i8*, !dbg !2530
  call void @kfree(i8* %5) #9, !dbg !2531
  ret i32 0, !dbg !2532
}

; Function Attrs: noredzone
declare dso_local i32 @bus_for_each_dev(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ipack_unregister_bus_member(%struct.device* %dev, i8* %data) #0 !dbg !2533 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %idev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  %bus = alloca %struct.ipack_bus_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2536, metadata !DIExpression()), !dbg !2537
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2542, metadata !DIExpression()), !dbg !2544
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2544
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2544
  store i8* %1, i8** %__mptr, align 8, !dbg !2544
  br label %do.body, !dbg !2544

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2545

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2544
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2544
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !2544
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !2545
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !2544
  store %struct.ipack_device* %4, %struct.ipack_device** %idev, align 8, !dbg !2541
  call void @llvm.dbg.declare(metadata %struct.ipack_bus_device** %bus, metadata !2547, metadata !DIExpression()), !dbg !2548
  %5 = load i8*, i8** %data.addr, align 8, !dbg !2549
  %6 = bitcast i8* %5 to %struct.ipack_bus_device*, !dbg !2549
  store %struct.ipack_bus_device* %6, %struct.ipack_bus_device** %bus, align 8, !dbg !2548
  %7 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !2550
  %bus1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %7, i32 0, i32 1, !dbg !2552
  %8 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus1, align 8, !dbg !2552
  %9 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus, align 8, !dbg !2553
  %cmp = icmp eq %struct.ipack_bus_device* %8, %9, !dbg !2554
  br i1 %cmp, label %if.then, label %if.end, !dbg !2555

if.then:                                          ; preds = %do.end
  %10 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !2556
  call void @ipack_device_del(%struct.ipack_device* %10) #9, !dbg !2557
  br label %if.end, !dbg !2557

if.end:                                           ; preds = %if.then, %do.end
  ret i32 1, !dbg !2558
}

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ipack_driver_register(%struct.ipack_driver* %edrv, %struct.module* %owner, i8* %name) #0 !dbg !2559 {
entry:
  %edrv.addr = alloca %struct.ipack_driver*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.ipack_driver* %edrv, %struct.ipack_driver** %edrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_driver** %edrv.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2566, metadata !DIExpression()), !dbg !2567
  %0 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2568
  %1 = load %struct.ipack_driver*, %struct.ipack_driver** %edrv.addr, align 8, !dbg !2569
  %driver = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %1, i32 0, i32 0, !dbg !2570
  %owner1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 2, !dbg !2571
  store %struct.module* %0, %struct.module** %owner1, align 8, !dbg !2572
  %2 = load i8*, i8** %name.addr, align 8, !dbg !2573
  %3 = load %struct.ipack_driver*, %struct.ipack_driver** %edrv.addr, align 8, !dbg !2574
  %driver2 = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %3, i32 0, i32 0, !dbg !2575
  %name3 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver2, i32 0, i32 0, !dbg !2576
  store i8* %2, i8** %name3, align 8, !dbg !2577
  %4 = load %struct.ipack_driver*, %struct.ipack_driver** %edrv.addr, align 8, !dbg !2578
  %driver4 = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %4, i32 0, i32 0, !dbg !2579
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver4, i32 0, i32 1, !dbg !2580
  store %struct.bus_type* @ipack_bus_type, %struct.bus_type** %bus, align 8, !dbg !2581
  %5 = load %struct.ipack_driver*, %struct.ipack_driver** %edrv.addr, align 8, !dbg !2582
  %driver5 = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %5, i32 0, i32 0, !dbg !2583
  %call = call i32 @driver_register(%struct.device_driver* %driver5) #9, !dbg !2584
  ret i32 %call, !dbg !2585
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ipack_driver_unregister(%struct.ipack_driver* %edrv) #0 !dbg !2586 {
entry:
  %edrv.addr = alloca %struct.ipack_driver*, align 8
  store %struct.ipack_driver* %edrv, %struct.ipack_driver** %edrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_driver** %edrv.addr, metadata !2589, metadata !DIExpression()), !dbg !2590
  %0 = load %struct.ipack_driver*, %struct.ipack_driver** %edrv.addr, align 8, !dbg !2591
  %driver = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %0, i32 0, i32 0, !dbg !2592
  call void @driver_unregister(%struct.device_driver* %driver) #9, !dbg !2593
  ret void, !dbg !2594
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ipack_device_init(%struct.ipack_device* %dev) #0 !dbg !2595 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ipack_device*, align 8
  %ret = alloca i32, align 4
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !2596, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2598, metadata !DIExpression()), !dbg !2599
  %0 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2600
  %dev1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %0, i32 0, i32 2, !dbg !2601
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 5, !dbg !2602
  store %struct.bus_type* @ipack_bus_type, %struct.bus_type** %bus, align 8, !dbg !2603
  %1 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2604
  %dev2 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %1, i32 0, i32 2, !dbg !2605
  %release = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 31, !dbg !2606
  store void (%struct.device*)* @ipack_device_release, void (%struct.device*)** %release, align 8, !dbg !2607
  %2 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2608
  %bus3 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %2, i32 0, i32 1, !dbg !2609
  %3 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus3, align 8, !dbg !2609
  %parent = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %3, i32 0, i32 1, !dbg !2610
  %4 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2610
  %5 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2611
  %dev4 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 2, !dbg !2612
  %parent5 = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 1, !dbg !2613
  store %struct.device* %4, %struct.device** %parent5, align 8, !dbg !2614
  %6 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2615
  %dev6 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %6, i32 0, i32 2, !dbg !2616
  %7 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2617
  %bus7 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %7, i32 0, i32 1, !dbg !2618
  %8 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus7, align 8, !dbg !2618
  %bus_nr = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %8, i32 0, i32 3, !dbg !2619
  %9 = load i32, i32* %bus_nr, align 4, !dbg !2619
  %10 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2620
  %slot = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %10, i32 0, i32 0, !dbg !2621
  %11 = load i32, i32* %slot, align 8, !dbg !2621
  %call = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11) #9, !dbg !2622
  %12 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2623
  %dev8 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %12, i32 0, i32 2, !dbg !2624
  call void @device_initialize(%struct.device* %dev8) #9, !dbg !2625
  %13 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2626
  %bus9 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %13, i32 0, i32 1, !dbg !2628
  %14 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus9, align 8, !dbg !2628
  %ops = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %14, i32 0, i32 4, !dbg !2629
  %15 = load %struct.ipack_bus_ops*, %struct.ipack_bus_ops** %ops, align 8, !dbg !2629
  %set_clockrate = getelementptr inbounds %struct.ipack_bus_ops, %struct.ipack_bus_ops* %15, i32 0, i32 3, !dbg !2630
  %16 = load i32 (%struct.ipack_device*, i32)*, i32 (%struct.ipack_device*, i32)** %set_clockrate, align 8, !dbg !2630
  %17 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2631
  %call10 = call i32 %16(%struct.ipack_device* %17, i32 8) #9, !dbg !2626
  %tobool = icmp ne i32 %call10, 0, !dbg !2626
  br i1 %tobool, label %if.then, label %if.end, !dbg !2632

if.then:                                          ; preds = %entry
  %18 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2633
  %dev11 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %18, i32 0, i32 2, !dbg !2633
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0)) #13, !dbg !2633
  br label %if.end, !dbg !2633

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2634
  %bus12 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %19, i32 0, i32 1, !dbg !2636
  %20 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus12, align 8, !dbg !2636
  %ops13 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %20, i32 0, i32 4, !dbg !2637
  %21 = load %struct.ipack_bus_ops*, %struct.ipack_bus_ops** %ops13, align 8, !dbg !2637
  %reset_timeout = getelementptr inbounds %struct.ipack_bus_ops, %struct.ipack_bus_ops* %21, i32 0, i32 6, !dbg !2638
  %22 = load i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*)** %reset_timeout, align 8, !dbg !2638
  %23 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2639
  %call14 = call i32 %22(%struct.ipack_device* %23) #9, !dbg !2634
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2634
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2640

if.then16:                                        ; preds = %if.end
  %24 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2641
  %dev17 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %24, i32 0, i32 2, !dbg !2641
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)) #13, !dbg !2641
  br label %if.end18, !dbg !2641

if.end18:                                         ; preds = %if.then16, %if.end
  %25 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2642
  %call19 = call i32 @ipack_device_read_id(%struct.ipack_device* %25) #9, !dbg !2643
  store i32 %call19, i32* %ret, align 4, !dbg !2644
  %26 = load i32, i32* %ret, align 4, !dbg !2645
  %cmp = icmp slt i32 %26, 0, !dbg !2647
  br i1 %cmp, label %if.then20, label %if.end22, !dbg !2648

if.then20:                                        ; preds = %if.end18
  %27 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2649
  %dev21 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %27, i32 0, i32 2, !dbg !2649
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !2649
  %28 = load i32, i32* %ret, align 4, !dbg !2651
  store i32 %28, i32* %retval, align 4, !dbg !2652
  br label %return, !dbg !2652

if.end22:                                         ; preds = %if.end18
  %29 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2653
  %speed_32mhz = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %29, i32 0, i32 10, !dbg !2655
  %bf.load = load i8, i8* %speed_32mhz, align 1, !dbg !2655
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !2655
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2655
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2655
  %tobool23 = icmp ne i32 %bf.cast, 0, !dbg !2653
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !2656

if.then24:                                        ; preds = %if.end22
  %30 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2657
  %bus25 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %30, i32 0, i32 1, !dbg !2659
  %31 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %bus25, align 8, !dbg !2659
  %ops26 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %31, i32 0, i32 4, !dbg !2660
  %32 = load %struct.ipack_bus_ops*, %struct.ipack_bus_ops** %ops26, align 8, !dbg !2660
  %set_clockrate27 = getelementptr inbounds %struct.ipack_bus_ops, %struct.ipack_bus_ops* %32, i32 0, i32 3, !dbg !2661
  %33 = load i32 (%struct.ipack_device*, i32)*, i32 (%struct.ipack_device*, i32)** %set_clockrate27, align 8, !dbg !2661
  %34 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2662
  %call28 = call i32 %33(%struct.ipack_device* %34, i32 32) #9, !dbg !2657
  store i32 %call28, i32* %ret, align 4, !dbg !2663
  %35 = load i32, i32* %ret, align 4, !dbg !2664
  %cmp29 = icmp slt i32 %35, 0, !dbg !2666
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !2667

if.then30:                                        ; preds = %if.then24
  %36 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2668
  %dev31 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %36, i32 0, i32 2, !dbg !2668
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !2668
  br label %if.end32, !dbg !2668

if.end32:                                         ; preds = %if.then30, %if.then24
  br label %if.end33, !dbg !2669

if.end33:                                         ; preds = %if.end32, %if.end22
  store i32 0, i32* %retval, align 4, !dbg !2670
  br label %return, !dbg !2670

return:                                           ; preds = %if.end33, %if.then20
  %37 = load i32, i32* %retval, align 4, !dbg !2671
  ret i32 %37, !dbg !2671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ipack_device_release(%struct.device* %dev) #0 !dbg !2672 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %device = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %device, metadata !2675, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2677, metadata !DIExpression()), !dbg !2679
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2679
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2679
  store i8* %1, i8** %__mptr, align 8, !dbg !2679
  br label %do.body, !dbg !2679

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2680

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2679
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2679
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !2679
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !2680
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !2679
  store %struct.ipack_device* %4, %struct.ipack_device** %device, align 8, !dbg !2676
  %5 = load %struct.ipack_device*, %struct.ipack_device** %device, align 8, !dbg !2682
  %id = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 5, !dbg !2683
  %6 = load i8*, i8** %id, align 8, !dbg !2683
  call void @kfree(i8* %6) #9, !dbg !2684
  %7 = load %struct.ipack_device*, %struct.ipack_device** %device, align 8, !dbg !2685
  %release = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %7, i32 0, i32 3, !dbg !2686
  %8 = load void (%struct.ipack_device*)*, void (%struct.ipack_device*)** %release, align 8, !dbg !2686
  %9 = load %struct.ipack_device*, %struct.ipack_device** %device, align 8, !dbg !2687
  call void %8(%struct.ipack_device* %9) #9, !dbg !2685
  ret void, !dbg !2688
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ipack_device_read_id(%struct.ipack_device* %dev) #0 !dbg !2689 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2253, metadata !DIExpression()), !dbg !2690
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2263, metadata !DIExpression()), !dbg !2693
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2265, metadata !DIExpression()), !dbg !2694
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2267, metadata !DIExpression()), !dbg !2695
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2269, metadata !DIExpression()), !dbg !2696
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2275, metadata !DIExpression()), !dbg !2698
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2281, metadata !DIExpression()), !dbg !2700
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2290, metadata !DIExpression()), !dbg !2703
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2292, metadata !DIExpression()), !dbg !2704
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2294, metadata !DIExpression()), !dbg !2705
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2296, metadata !DIExpression()), !dbg !2706
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2298, metadata !DIExpression()), !dbg !2707
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2300, metadata !DIExpression()), !dbg !2708
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2302, metadata !DIExpression()), !dbg !2709
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2304, metadata !DIExpression()), !dbg !2710
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.ipack_device*, align 8
  %idmem = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !2711, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.declare(metadata i8** %idmem, metadata !2713, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2715, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2717, metadata !DIExpression()), !dbg !2718
  store i32 0, i32* %ret, align 4, !dbg !2718
  %0 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2719
  %region = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %0, i32 0, i32 4, !dbg !2720
  %arrayidx = getelementptr [5 x %struct.ipack_region], [5 x %struct.ipack_region]* %region, i64 0, i64 1, !dbg !2719
  %start = getelementptr inbounds %struct.ipack_region, %struct.ipack_region* %arrayidx, i32 0, i32 0, !dbg !2721
  %1 = load i64, i64* %start, align 8, !dbg !2721
  %2 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2722
  %region1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %2, i32 0, i32 4, !dbg !2723
  %arrayidx2 = getelementptr [5 x %struct.ipack_region], [5 x %struct.ipack_region]* %region1, i64 0, i64 1, !dbg !2722
  %size = getelementptr inbounds %struct.ipack_region, %struct.ipack_region* %arrayidx2, i32 0, i32 1, !dbg !2724
  %3 = load i64, i64* %size, align 8, !dbg !2724
  %call = call i8* @ioremap(i64 %1, i64 %3) #9, !dbg !2725
  store i8* %call, i8** %idmem, align 8, !dbg !2726
  %4 = load i8*, i8** %idmem, align 8, !dbg !2727
  %tobool = icmp ne i8* %4, null, !dbg !2727
  br i1 %tobool, label %if.end, label %if.then, !dbg !2729

if.then:                                          ; preds = %entry
  %5 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2730
  %dev3 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 2, !dbg !2730
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0)) #13, !dbg !2730
  store i32 -12, i32* %retval, align 4, !dbg !2732
  br label %return, !dbg !2732

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %idmem, align 8, !dbg !2733
  %add.ptr = getelementptr i8, i8* %6, i64 1, !dbg !2735
  %call4 = call i32 @ioread8(i8* %add.ptr) #9, !dbg !2736
  %cmp = icmp eq i32 %call4, 73, !dbg !2737
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2738

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8*, i8** %idmem, align 8, !dbg !2739
  %add.ptr5 = getelementptr i8, i8* %7, i64 3, !dbg !2740
  %call6 = call i32 @ioread8(i8* %add.ptr5) #9, !dbg !2741
  %cmp7 = icmp eq i32 %call6, 80, !dbg !2742
  br i1 %cmp7, label %land.lhs.true8, label %if.else, !dbg !2743

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = load i8*, i8** %idmem, align 8, !dbg !2744
  %add.ptr9 = getelementptr i8, i8* %8, i64 5, !dbg !2745
  %call10 = call i32 @ioread8(i8* %add.ptr9) #9, !dbg !2746
  %cmp11 = icmp eq i32 %call10, 65, !dbg !2747
  br i1 %cmp11, label %land.lhs.true12, label %if.else, !dbg !2748

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %9 = load i8*, i8** %idmem, align 8, !dbg !2749
  %add.ptr13 = getelementptr i8, i8* %9, i64 7, !dbg !2750
  %call14 = call i32 @ioread8(i8* %add.ptr13) #9, !dbg !2751
  %cmp15 = icmp eq i32 %call14, 67, !dbg !2752
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !2753

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %10 = load i8*, i8** %idmem, align 8, !dbg !2754
  %add.ptr16 = getelementptr i8, i8* %10, i64 7, !dbg !2755
  %call17 = call i32 @ioread8(i8* %add.ptr16) #9, !dbg !2756
  %cmp18 = icmp eq i32 %call17, 72, !dbg !2757
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !2758

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  %11 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2759
  %id_format = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %11, i32 0, i32 9, !dbg !2761
  store i8 1, i8* %id_format, align 8, !dbg !2762
  %12 = load i8*, i8** %idmem, align 8, !dbg !2763
  %add.ptr20 = getelementptr i8, i8* %12, i64 21, !dbg !2764
  %call21 = call i32 @ioread8(i8* %add.ptr20) #9, !dbg !2765
  %conv = zext i32 %call21 to i64, !dbg !2765
  %13 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2766
  %id_avail = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %13, i32 0, i32 6, !dbg !2767
  store i64 %conv, i64* %id_avail, align 8, !dbg !2768
  %14 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2769
  %id_avail22 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %14, i32 0, i32 6, !dbg !2771
  %15 = load i64, i64* %id_avail22, align 8, !dbg !2771
  %cmp23 = icmp ult i64 %15, 12, !dbg !2772
  br i1 %cmp23, label %if.then29, label %lor.lhs.false25, !dbg !2773

lor.lhs.false25:                                  ; preds = %if.then19
  %16 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2774
  %id_avail26 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %16, i32 0, i32 6, !dbg !2775
  %17 = load i64, i64* %id_avail26, align 8, !dbg !2775
  %cmp27 = icmp ugt i64 %17, 64, !dbg !2776
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !2777

if.then29:                                        ; preds = %lor.lhs.false25, %if.then19
  %18 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2778
  %dev30 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %18, i32 0, i32 2, !dbg !2778
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0)) #13, !dbg !2778
  %19 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2780
  %id_avail31 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %19, i32 0, i32 6, !dbg !2781
  store i64 12, i64* %id_avail31, align 8, !dbg !2782
  br label %if.end32, !dbg !2783

if.end32:                                         ; preds = %if.then29, %lor.lhs.false25
  br label %if.end83, !dbg !2784

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true8, %land.lhs.true, %if.end
  %20 = load i8*, i8** %idmem, align 8, !dbg !2785
  %add.ptr33 = getelementptr i8, i8* %20, i64 0, !dbg !2787
  %call34 = call i32 @ioread8(i8* %add.ptr33) #9, !dbg !2788
  %cmp35 = icmp eq i32 %call34, 73, !dbg !2789
  br i1 %cmp35, label %land.lhs.true37, label %if.else79, !dbg !2790

land.lhs.true37:                                  ; preds = %if.else
  %21 = load i8*, i8** %idmem, align 8, !dbg !2791
  %add.ptr38 = getelementptr i8, i8* %21, i64 1, !dbg !2792
  %call39 = call i32 @ioread8(i8* %add.ptr38) #9, !dbg !2793
  %cmp40 = icmp eq i32 %call39, 86, !dbg !2794
  br i1 %cmp40, label %land.lhs.true42, label %if.else79, !dbg !2795

land.lhs.true42:                                  ; preds = %land.lhs.true37
  %22 = load i8*, i8** %idmem, align 8, !dbg !2796
  %add.ptr43 = getelementptr i8, i8* %22, i64 2, !dbg !2797
  %call44 = call i32 @ioread8(i8* %add.ptr43) #9, !dbg !2798
  %cmp45 = icmp eq i32 %call44, 65, !dbg !2799
  br i1 %cmp45, label %land.lhs.true47, label %if.else79, !dbg !2800

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %23 = load i8*, i8** %idmem, align 8, !dbg !2801
  %add.ptr48 = getelementptr i8, i8* %23, i64 3, !dbg !2802
  %call49 = call i32 @ioread8(i8* %add.ptr48) #9, !dbg !2803
  %cmp50 = icmp eq i32 %call49, 84, !dbg !2804
  br i1 %cmp50, label %land.lhs.true52, label %if.else79, !dbg !2805

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %24 = load i8*, i8** %idmem, align 8, !dbg !2806
  %add.ptr53 = getelementptr i8, i8* %24, i64 4, !dbg !2807
  %call54 = call i32 @ioread8(i8* %add.ptr53) #9, !dbg !2808
  %cmp55 = icmp eq i32 %call54, 32, !dbg !2809
  br i1 %cmp55, label %land.lhs.true57, label %if.else79, !dbg !2810

land.lhs.true57:                                  ; preds = %land.lhs.true52
  %25 = load i8*, i8** %idmem, align 8, !dbg !2811
  %add.ptr58 = getelementptr i8, i8* %25, i64 5, !dbg !2812
  %call59 = call i32 @ioread8(i8* %add.ptr58) #9, !dbg !2813
  %cmp60 = icmp eq i32 %call59, 52, !dbg !2814
  br i1 %cmp60, label %if.then62, label %if.else79, !dbg !2815

if.then62:                                        ; preds = %land.lhs.true57
  %26 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2816
  %id_format63 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %26, i32 0, i32 9, !dbg !2818
  store i8 2, i8* %id_format63, align 8, !dbg !2819
  %27 = load i8*, i8** %idmem, align 8, !dbg !2820
  %add.ptr64 = getelementptr i8, i8* %27, i64 22, !dbg !2821
  %call65 = call i32 @ioread16be(i8* %add.ptr64) #9, !dbg !2822
  %conv66 = zext i32 %call65 to i64, !dbg !2822
  %28 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2823
  %id_avail67 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %28, i32 0, i32 6, !dbg !2824
  store i64 %conv66, i64* %id_avail67, align 8, !dbg !2825
  %29 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2826
  %id_avail68 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %29, i32 0, i32 6, !dbg !2828
  %30 = load i64, i64* %id_avail68, align 8, !dbg !2828
  %cmp69 = icmp ult i64 %30, 26, !dbg !2829
  br i1 %cmp69, label %if.then75, label %lor.lhs.false71, !dbg !2830

lor.lhs.false71:                                  ; preds = %if.then62
  %31 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2831
  %id_avail72 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %31, i32 0, i32 6, !dbg !2832
  %32 = load i64, i64* %id_avail72, align 8, !dbg !2832
  %cmp73 = icmp ugt i64 %32, 64, !dbg !2833
  br i1 %cmp73, label %if.then75, label %if.end78, !dbg !2834

if.then75:                                        ; preds = %lor.lhs.false71, %if.then62
  %33 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2835
  %dev76 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %33, i32 0, i32 2, !dbg !2835
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0)) #13, !dbg !2835
  %34 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2837
  %id_avail77 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %34, i32 0, i32 6, !dbg !2838
  store i64 26, i64* %id_avail77, align 8, !dbg !2839
  br label %if.end78, !dbg !2840

if.end78:                                         ; preds = %if.then75, %lor.lhs.false71
  br label %if.end82, !dbg !2841

if.else79:                                        ; preds = %land.lhs.true57, %land.lhs.true52, %land.lhs.true47, %land.lhs.true42, %land.lhs.true37, %if.else
  %35 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2842
  %id_format80 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %35, i32 0, i32 9, !dbg !2844
  store i8 0, i8* %id_format80, align 8, !dbg !2845
  %36 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2846
  %id_avail81 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %36, i32 0, i32 6, !dbg !2847
  store i64 0, i64* %id_avail81, align 8, !dbg !2848
  br label %if.end82

if.end82:                                         ; preds = %if.else79, %if.end78
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end32
  %37 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2849
  %id_avail84 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %37, i32 0, i32 6, !dbg !2851
  %38 = load i64, i64* %id_avail84, align 8, !dbg !2851
  %tobool85 = icmp ne i64 %38, 0, !dbg !2849
  br i1 %tobool85, label %if.end87, label %if.then86, !dbg !2852

if.then86:                                        ; preds = %if.end83
  store i32 -19, i32* %ret, align 4, !dbg !2853
  br label %out, !dbg !2855

if.end87:                                         ; preds = %if.end83
  %39 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !2856
  %id_avail88 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %39, i32 0, i32 6, !dbg !2857
  %40 = load i64, i64* %id_avail88, align 8, !dbg !2857
  store i64 %40, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %41 = load i64, i64* %size.addr.i, align 8, !dbg !2858
  %42 = call i1 @llvm.is.constant.i64(i64 %41) #10, !dbg !2859
  br i1 %42, label %if.then.i, label %if.end9.i, !dbg !2860

if.then.i:                                        ; preds = %if.end87
  %43 = load i64, i64* %size.addr.i, align 8, !dbg !2861
  %cmp.i = icmp ugt i64 %43, 8192, !dbg !2862
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2863

if.then1.i:                                       ; preds = %if.then.i
  %44 = load i64, i64* %size.addr.i, align 8, !dbg !2864
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !2865
  store i64 %44, i64* %size.addr.i.i, align 8
  store i32 %45, i32* %flags.addr.i.i, align 4
  %46 = load i64, i64* %size.addr.i.i, align 8, !dbg !2866
  %call.i.i = call i32 @get_order(i64 %46) #11, !dbg !2867
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2707
  %47 = load i64, i64* %size.addr.i.i, align 8, !dbg !2868
  %48 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2869
  %49 = load i32, i32* %order.i.i, align 4, !dbg !2870
  store i64 %47, i64* %size.addr.i.i.i, align 8
  store i32 %48, i32* %flags.addr.i.i.i, align 4
  store i32 %49, i32* %order.addr.i.i.i, align 4
  %50 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2871
  %51 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2872
  %52 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2873
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %50, i32 %51, i32 %52) #12, !dbg !2874
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2874
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2874
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2874
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2874
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2875
  br label %kmalloc.exit, !dbg !2875

if.end.i:                                         ; preds = %if.then.i
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !2876
  store i64 %53, i64* %size.addr.i11.i, align 8
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2877
  %tobool.i.i = icmp ne i64 %54, 0, !dbg !2877
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2878

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2879
  br label %kmalloc_index.exit.i, !dbg !2879

if.end.i.i:                                       ; preds = %if.end.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2880
  %cmp.i.i = icmp ule i64 %55, 8, !dbg !2881
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2882

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2883
  br label %kmalloc_index.exit.i, !dbg !2883

if.end2.i.i:                                      ; preds = %if.end.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2884
  %cmp3.i.i = icmp ugt i64 %56, 64, !dbg !2885
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2886

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2887
  %cmp4.i.i = icmp ule i64 %57, 96, !dbg !2888
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2889

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2890
  br label %kmalloc_index.exit.i, !dbg !2890

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2891
  %cmp7.i.i = icmp ugt i64 %58, 128, !dbg !2892
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2893

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2894
  %cmp9.i.i = icmp ule i64 %59, 192, !dbg !2895
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2896

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2897
  br label %kmalloc_index.exit.i, !dbg !2897

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2898
  %cmp12.i.i = icmp ule i64 %60, 8, !dbg !2899
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2900

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2901
  br label %kmalloc_index.exit.i, !dbg !2901

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2902
  %cmp15.i.i = icmp ule i64 %61, 16, !dbg !2903
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2904

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2905
  br label %kmalloc_index.exit.i, !dbg !2905

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2906
  %cmp18.i.i = icmp ule i64 %62, 32, !dbg !2907
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2908

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2909
  br label %kmalloc_index.exit.i, !dbg !2909

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2910
  %cmp21.i.i = icmp ule i64 %63, 64, !dbg !2911
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2912

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2913
  br label %kmalloc_index.exit.i, !dbg !2913

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2914
  %cmp24.i.i = icmp ule i64 %64, 128, !dbg !2915
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2916

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2917
  br label %kmalloc_index.exit.i, !dbg !2917

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2918
  %cmp27.i.i = icmp ule i64 %65, 256, !dbg !2919
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2920

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2921
  br label %kmalloc_index.exit.i, !dbg !2921

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2922
  %cmp30.i.i = icmp ule i64 %66, 512, !dbg !2923
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2924

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2925
  br label %kmalloc_index.exit.i, !dbg !2925

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2926
  %cmp33.i.i = icmp ule i64 %67, 1024, !dbg !2927
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2928

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2929
  br label %kmalloc_index.exit.i, !dbg !2929

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2930
  %cmp36.i.i = icmp ule i64 %68, 2048, !dbg !2931
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2932

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2933
  br label %kmalloc_index.exit.i, !dbg !2933

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2934
  %cmp39.i.i = icmp ule i64 %69, 4096, !dbg !2935
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2936

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2937
  br label %kmalloc_index.exit.i, !dbg !2937

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %70 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2938
  %cmp42.i.i = icmp ule i64 %70, 8192, !dbg !2939
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2940

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2941
  br label %kmalloc_index.exit.i, !dbg !2941

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %71 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2942
  %cmp45.i.i = icmp ule i64 %71, 16384, !dbg !2943
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2944

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2945
  br label %kmalloc_index.exit.i, !dbg !2945

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %72 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2946
  %cmp48.i.i = icmp ule i64 %72, 32768, !dbg !2947
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2948

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2949
  br label %kmalloc_index.exit.i, !dbg !2949

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %73 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2950
  %cmp51.i.i = icmp ule i64 %73, 65536, !dbg !2951
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2952

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2953
  br label %kmalloc_index.exit.i, !dbg !2953

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %74 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2954
  %cmp54.i.i = icmp ule i64 %74, 131072, !dbg !2955
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2956

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2957
  br label %kmalloc_index.exit.i, !dbg !2957

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %75 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2958
  %cmp57.i.i = icmp ule i64 %75, 262144, !dbg !2959
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2960

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2961
  br label %kmalloc_index.exit.i, !dbg !2961

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %76 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2962
  %cmp60.i.i = icmp ule i64 %76, 524288, !dbg !2963
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2964

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2965
  br label %kmalloc_index.exit.i, !dbg !2965

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %77 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2966
  %cmp63.i.i = icmp ule i64 %77, 1048576, !dbg !2967
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2968

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2969
  br label %kmalloc_index.exit.i, !dbg !2969

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %78 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2970
  %cmp66.i.i = icmp ule i64 %78, 2097152, !dbg !2971
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2972

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2973
  br label %kmalloc_index.exit.i, !dbg !2973

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %79 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2974
  %cmp69.i.i = icmp ule i64 %79, 4194304, !dbg !2975
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2976

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2977
  br label %kmalloc_index.exit.i, !dbg !2977

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %80 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2978
  %cmp72.i.i = icmp ule i64 %80, 8388608, !dbg !2979
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2980

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2981
  br label %kmalloc_index.exit.i, !dbg !2981

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %81 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2982
  %cmp75.i.i = icmp ule i64 %81, 16777216, !dbg !2983
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2984

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2985
  br label %kmalloc_index.exit.i, !dbg !2985

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %82 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2986
  %cmp78.i.i = icmp ule i64 %82, 33554432, !dbg !2987
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2988

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2989
  br label %kmalloc_index.exit.i, !dbg !2989

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %83 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2990
  %cmp81.i.i = icmp ule i64 %83, 67108864, !dbg !2991
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2992

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2993
  br label %kmalloc_index.exit.i, !dbg !2993

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !2994, !srcloc !2480
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !2995, !srcloc !2484
  unreachable, !dbg !2996

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %84 = load i32, i32* %retval.i.i, align 4, !dbg !2997
  store i32 %84, i32* %index.i, align 4, !dbg !2998
  %85 = load i32, i32* %index.i, align 4, !dbg !2999
  %tobool.i = icmp ne i32 %85, 0, !dbg !2999
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3000

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3001
  br label %kmalloc.exit, !dbg !3001

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %86 = load i32, i32* %flags.addr.i, align 4, !dbg !3002
  store i32 %86, i32* %flags.addr.i13.i, align 4
  %87 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3003
  %and.i.i = and i32 %87, 17, !dbg !3003
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3003
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3003
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3003
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3003
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3004

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3005
  br label %kmalloc_type.exit.i, !dbg !3005

if.end.i16.i:                                     ; preds = %if.end4.i
  %88 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3006
  %and2.i.i = and i32 %88, 1, !dbg !3007
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3006
  %89 = zext i1 %tobool3.i.i to i64, !dbg !3006
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3006
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3008
  br label %kmalloc_type.exit.i, !dbg !3008

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %90 = load i32, i32* %retval.i12.i, align 4, !dbg !3009
  %idxprom.i = zext i32 %90 to i64, !dbg !3010
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3010
  %91 = load i32, i32* %index.i, align 4, !dbg !3011
  %idxprom6.i = zext i32 %91 to i64, !dbg !3010
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3010
  %92 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3010
  %93 = load i32, i32* %flags.addr.i, align 4, !dbg !3012
  %94 = load i64, i64* %size.addr.i, align 8, !dbg !3013
  store %struct.kmem_cache* %92, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %93, i32* %flags.addr.i17.i, align 4
  store i64 %94, i64* %size.addr.i18.i, align 8
  %95 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3014
  %96 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3015
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %95, i32 %96) #12, !dbg !3016
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3016
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3016
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3016
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3016
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2695
  %97 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3017
  %98 = load i8*, i8** %ret.i.i, align 8, !dbg !3018
  %99 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3019
  %100 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3020
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %97, i8* %98, i64 %99, i32 %100) #12, !dbg !3021
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3022
  %101 = load i8*, i8** %ret.i.i, align 8, !dbg !3023
  store i8* %101, i8** %retval.i, align 8, !dbg !3024
  br label %kmalloc.exit, !dbg !3024

if.end9.i:                                        ; preds = %if.end87
  %102 = load i64, i64* %size.addr.i, align 8, !dbg !3025
  %103 = load i32, i32* %flags.addr.i, align 4, !dbg !3026
  %call10.i = call noalias i8* @__kmalloc(i64 %102, i32 %103) #12, !dbg !3027
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3027
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3027
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3027
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3027
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3028
  br label %kmalloc.exit, !dbg !3028

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %104 = load i8*, i8** %retval.i, align 8, !dbg !3029
  %105 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3030
  %id = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %105, i32 0, i32 5, !dbg !3031
  store i8* %104, i8** %id, align 8, !dbg !3032
  %106 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3033
  %id90 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %106, i32 0, i32 5, !dbg !3035
  %107 = load i8*, i8** %id90, align 8, !dbg !3035
  %tobool91 = icmp ne i8* %107, null, !dbg !3033
  br i1 %tobool91, label %if.end93, label %if.then92, !dbg !3036

if.then92:                                        ; preds = %kmalloc.exit
  store i32 -12, i32* %ret, align 4, !dbg !3037
  br label %out, !dbg !3039

if.end93:                                         ; preds = %kmalloc.exit
  store i32 0, i32* %i, align 4, !dbg !3040
  br label %for.cond, !dbg !3042

for.cond:                                         ; preds = %for.inc, %if.end93
  %108 = load i32, i32* %i, align 4, !dbg !3043
  %conv94 = sext i32 %108 to i64, !dbg !3043
  %109 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3045
  %id_avail95 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %109, i32 0, i32 6, !dbg !3046
  %110 = load i64, i64* %id_avail95, align 8, !dbg !3046
  %cmp96 = icmp ult i64 %conv94, %110, !dbg !3047
  br i1 %cmp96, label %for.body, label %for.end, !dbg !3048

for.body:                                         ; preds = %for.cond
  %111 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3049
  %id_format98 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %111, i32 0, i32 9, !dbg !3052
  %112 = load i8, i8* %id_format98, align 8, !dbg !3052
  %conv99 = zext i8 %112 to i32, !dbg !3049
  %cmp100 = icmp eq i32 %conv99, 1, !dbg !3053
  br i1 %cmp100, label %if.then102, label %if.else109, !dbg !3054

if.then102:                                       ; preds = %for.body
  %113 = load i8*, i8** %idmem, align 8, !dbg !3055
  %114 = load i32, i32* %i, align 4, !dbg !3056
  %shl = shl i32 %114, 1, !dbg !3057
  %idx.ext = sext i32 %shl to i64, !dbg !3058
  %add.ptr103 = getelementptr i8, i8* %113, i64 %idx.ext, !dbg !3058
  %add.ptr104 = getelementptr i8, i8* %add.ptr103, i64 1, !dbg !3059
  %call105 = call i32 @ioread8(i8* %add.ptr104) #9, !dbg !3060
  %conv106 = trunc i32 %call105 to i8, !dbg !3060
  %115 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3061
  %id107 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %115, i32 0, i32 5, !dbg !3062
  %116 = load i8*, i8** %id107, align 8, !dbg !3062
  %117 = load i32, i32* %i, align 4, !dbg !3063
  %idxprom = sext i32 %117 to i64, !dbg !3061
  %arrayidx108 = getelementptr i8, i8* %116, i64 %idxprom, !dbg !3061
  store i8 %conv106, i8* %arrayidx108, align 1, !dbg !3064
  br label %if.end117, !dbg !3061

if.else109:                                       ; preds = %for.body
  %118 = load i8*, i8** %idmem, align 8, !dbg !3065
  %119 = load i32, i32* %i, align 4, !dbg !3066
  %idx.ext110 = sext i32 %119 to i64, !dbg !3067
  %add.ptr111 = getelementptr i8, i8* %118, i64 %idx.ext110, !dbg !3067
  %call112 = call i32 @ioread8(i8* %add.ptr111) #9, !dbg !3068
  %conv113 = trunc i32 %call112 to i8, !dbg !3068
  %120 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3069
  %id114 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %120, i32 0, i32 5, !dbg !3070
  %121 = load i8*, i8** %id114, align 8, !dbg !3070
  %122 = load i32, i32* %i, align 4, !dbg !3071
  %idxprom115 = sext i32 %122 to i64, !dbg !3069
  %arrayidx116 = getelementptr i8, i8* %121, i64 %idxprom115, !dbg !3069
  store i8 %conv113, i8* %arrayidx116, align 1, !dbg !3072
  br label %if.end117

if.end117:                                        ; preds = %if.else109, %if.then102
  br label %for.inc, !dbg !3073

for.inc:                                          ; preds = %if.end117
  %123 = load i32, i32* %i, align 4, !dbg !3074
  %inc = add i32 %123, 1, !dbg !3074
  store i32 %inc, i32* %i, align 4, !dbg !3074
  br label %for.cond, !dbg !3075, !llvm.loop !3076

for.end:                                          ; preds = %for.cond
  %124 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3078
  %id_format118 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %124, i32 0, i32 9, !dbg !3079
  %125 = load i8, i8* %id_format118, align 8, !dbg !3079
  %conv119 = zext i8 %125 to i32, !dbg !3078
  switch i32 %conv119, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb120
  ], !dbg !3080

sw.bb:                                            ; preds = %for.end
  %126 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3081
  call void @ipack_parse_id1(%struct.ipack_device* %126) #9, !dbg !3083
  br label %sw.epilog, !dbg !3084

sw.bb120:                                         ; preds = %for.end
  %127 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3085
  call void @ipack_parse_id2(%struct.ipack_device* %127) #9, !dbg !3086
  br label %sw.epilog, !dbg !3087

sw.epilog:                                        ; preds = %for.end, %sw.bb120, %sw.bb
  br label %out, !dbg !3088

out:                                              ; preds = %sw.epilog, %if.then92, %if.then86
  call void @llvm.dbg.label(metadata !3089), !dbg !3090
  %128 = load i8*, i8** %idmem, align 8, !dbg !3091
  call void @iounmap(i8* %128) #9, !dbg !3092
  %129 = load i32, i32* %ret, align 4, !dbg !3093
  store i32 %129, i32* %retval, align 4, !dbg !3094
  br label %return, !dbg !3094

return:                                           ; preds = %out, %if.then
  %130 = load i32, i32* %retval, align 4, !dbg !3095
  ret i32 %130, !dbg !3095
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ipack_device_add(%struct.ipack_device* %dev) #0 !dbg !3096 {
entry:
  %dev.addr = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !3097, metadata !DIExpression()), !dbg !3098
  %0 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3099
  %dev1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %0, i32 0, i32 2, !dbg !3100
  %call = call i32 @device_add(%struct.device* %dev1) #9, !dbg !3101
  ret i32 %call, !dbg !3102
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ipack_device_del(%struct.ipack_device* %dev) #0 !dbg !3103 {
entry:
  %dev.addr = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !3104, metadata !DIExpression()), !dbg !3105
  %0 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3106
  %dev1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %0, i32 0, i32 2, !dbg !3107
  call void @device_del(%struct.device* %dev1) #9, !dbg !3108
  %1 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3109
  call void @ipack_put_device(%struct.ipack_device* %1) #9, !dbg !3110
  ret void, !dbg !3111
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ipack_put_device(%struct.ipack_device* %dev) #0 !dbg !3112 {
entry:
  %dev.addr = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !3113, metadata !DIExpression()), !dbg !3114
  %0 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3115
  %dev1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %0, i32 0, i32 2, !dbg !3116
  call void @put_device(%struct.device* %dev1) #9, !dbg !3117
  ret void, !dbg !3118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ipack_get_device(%struct.ipack_device* %dev) #0 !dbg !3119 {
entry:
  %dev.addr = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !3120, metadata !DIExpression()), !dbg !3121
  %0 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3122
  %dev1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %0, i32 0, i32 2, !dbg !3123
  %call = call %struct.device* @get_device(%struct.device* %dev1) #9, !dbg !3124
  ret void, !dbg !3125
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ipack_exit() #4 section ".exit.text" !dbg !3126 {
entry:
  call void @bus_unregister(%struct.bus_type* @ipack_bus_type) #9, !dbg !3127
  call void @ida_destroy(%struct.ida* @ipack_ida) #9, !dbg !3128
  ret void, !dbg !3129
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #2

; Function Attrs: noredzone
declare dso_local void @ida_destroy(%struct.ida*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ipack_init() #4 section ".init.text" !dbg !3130 {
entry:
  call void @ida_init(%struct.ida* @ipack_ida) #9, !dbg !3133
  %call = call i32 @bus_register(%struct.bus_type* @ipack_bus_type) #9, !dbg !3134
  ret i32 %call, !dbg !3135
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !3136 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3140, metadata !DIExpression()), !dbg !3145
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3147, metadata !DIExpression()), !dbg !3148
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3149, metadata !DIExpression()), !dbg !3150
  %0 = load i64, i64* %size.addr, align 8, !dbg !3151
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3153
  br i1 %1, label %if.then, label %if.end447, !dbg !3154

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3155
  %tobool = icmp ne i64 %2, 0, !dbg !3155
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3158

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3159
  br label %return, !dbg !3159

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3160
  %cmp = icmp ult i64 %3, 4096, !dbg !3162
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3163

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3164
  br label %return, !dbg !3164

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub = sub i64 %4, 1, !dbg !3165
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3165
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3165

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub4 = sub i64 %6, 1, !dbg !3165
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3165
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3165

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub6 = sub i64 %8, 1, !dbg !3165
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3165
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3165

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3165

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub9 = sub i64 %9, 1, !dbg !3165
  %and = and i64 %sub9, -9223372036854775808, !dbg !3165
  %tobool10 = icmp ne i64 %and, 0, !dbg !3165
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3165

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3165

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub13 = sub i64 %10, 1, !dbg !3165
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3165
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3165
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3165

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3165

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub18 = sub i64 %11, 1, !dbg !3165
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3165
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3165
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3165

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3165

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub23 = sub i64 %12, 1, !dbg !3165
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3165
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3165
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3165

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3165

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub28 = sub i64 %13, 1, !dbg !3165
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3165
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3165
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3165

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3165

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub33 = sub i64 %14, 1, !dbg !3165
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3165
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3165
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3165

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3165

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub38 = sub i64 %15, 1, !dbg !3165
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3165
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3165
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3165

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3165

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub43 = sub i64 %16, 1, !dbg !3165
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3165
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3165
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3165

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3165

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub48 = sub i64 %17, 1, !dbg !3165
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3165
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3165
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3165

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3165

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub53 = sub i64 %18, 1, !dbg !3165
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3165
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3165
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3165

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3165

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub58 = sub i64 %19, 1, !dbg !3165
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3165
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3165
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3165

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3165

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub63 = sub i64 %20, 1, !dbg !3165
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3165
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3165
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3165

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3165

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub68 = sub i64 %21, 1, !dbg !3165
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3165
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3165
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3165

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3165

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub73 = sub i64 %22, 1, !dbg !3165
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3165
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3165
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3165

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3165

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub78 = sub i64 %23, 1, !dbg !3165
  %and79 = and i64 %sub78, 562949953421312, !dbg !3165
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3165
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3165

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3165

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub83 = sub i64 %24, 1, !dbg !3165
  %and84 = and i64 %sub83, 281474976710656, !dbg !3165
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3165
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3165

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3165

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub88 = sub i64 %25, 1, !dbg !3165
  %and89 = and i64 %sub88, 140737488355328, !dbg !3165
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3165
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3165

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3165

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub93 = sub i64 %26, 1, !dbg !3165
  %and94 = and i64 %sub93, 70368744177664, !dbg !3165
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3165
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3165

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3165

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub98 = sub i64 %27, 1, !dbg !3165
  %and99 = and i64 %sub98, 35184372088832, !dbg !3165
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3165
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3165

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3165

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub103 = sub i64 %28, 1, !dbg !3165
  %and104 = and i64 %sub103, 17592186044416, !dbg !3165
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3165
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3165

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3165

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub108 = sub i64 %29, 1, !dbg !3165
  %and109 = and i64 %sub108, 8796093022208, !dbg !3165
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3165
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3165

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3165

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub113 = sub i64 %30, 1, !dbg !3165
  %and114 = and i64 %sub113, 4398046511104, !dbg !3165
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3165
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3165

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3165

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub118 = sub i64 %31, 1, !dbg !3165
  %and119 = and i64 %sub118, 2199023255552, !dbg !3165
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3165
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3165

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3165

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub123 = sub i64 %32, 1, !dbg !3165
  %and124 = and i64 %sub123, 1099511627776, !dbg !3165
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3165
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3165

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3165

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub128 = sub i64 %33, 1, !dbg !3165
  %and129 = and i64 %sub128, 549755813888, !dbg !3165
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3165
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3165

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3165

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub133 = sub i64 %34, 1, !dbg !3165
  %and134 = and i64 %sub133, 274877906944, !dbg !3165
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3165
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3165

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3165

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub138 = sub i64 %35, 1, !dbg !3165
  %and139 = and i64 %sub138, 137438953472, !dbg !3165
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3165
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3165

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3165

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub143 = sub i64 %36, 1, !dbg !3165
  %and144 = and i64 %sub143, 68719476736, !dbg !3165
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3165
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3165

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3165

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub148 = sub i64 %37, 1, !dbg !3165
  %and149 = and i64 %sub148, 34359738368, !dbg !3165
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3165
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3165

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3165

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub153 = sub i64 %38, 1, !dbg !3165
  %and154 = and i64 %sub153, 17179869184, !dbg !3165
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3165
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3165

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3165

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub158 = sub i64 %39, 1, !dbg !3165
  %and159 = and i64 %sub158, 8589934592, !dbg !3165
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3165
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3165

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3165

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub163 = sub i64 %40, 1, !dbg !3165
  %and164 = and i64 %sub163, 4294967296, !dbg !3165
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3165
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3165

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3165

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub168 = sub i64 %41, 1, !dbg !3165
  %and169 = and i64 %sub168, 2147483648, !dbg !3165
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3165
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3165

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3165

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub173 = sub i64 %42, 1, !dbg !3165
  %and174 = and i64 %sub173, 1073741824, !dbg !3165
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3165
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3165

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3165

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub178 = sub i64 %43, 1, !dbg !3165
  %and179 = and i64 %sub178, 536870912, !dbg !3165
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3165
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3165

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3165

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub183 = sub i64 %44, 1, !dbg !3165
  %and184 = and i64 %sub183, 268435456, !dbg !3165
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3165
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3165

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3165

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub188 = sub i64 %45, 1, !dbg !3165
  %and189 = and i64 %sub188, 134217728, !dbg !3165
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3165
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3165

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3165

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub193 = sub i64 %46, 1, !dbg !3165
  %and194 = and i64 %sub193, 67108864, !dbg !3165
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3165
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3165

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3165

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub198 = sub i64 %47, 1, !dbg !3165
  %and199 = and i64 %sub198, 33554432, !dbg !3165
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3165
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3165

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3165

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub203 = sub i64 %48, 1, !dbg !3165
  %and204 = and i64 %sub203, 16777216, !dbg !3165
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3165
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3165

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3165

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub208 = sub i64 %49, 1, !dbg !3165
  %and209 = and i64 %sub208, 8388608, !dbg !3165
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3165
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3165

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3165

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub213 = sub i64 %50, 1, !dbg !3165
  %and214 = and i64 %sub213, 4194304, !dbg !3165
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3165
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3165

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3165

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub218 = sub i64 %51, 1, !dbg !3165
  %and219 = and i64 %sub218, 2097152, !dbg !3165
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3165
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3165

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3165

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub223 = sub i64 %52, 1, !dbg !3165
  %and224 = and i64 %sub223, 1048576, !dbg !3165
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3165
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3165

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3165

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub228 = sub i64 %53, 1, !dbg !3165
  %and229 = and i64 %sub228, 524288, !dbg !3165
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3165
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3165

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3165

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub233 = sub i64 %54, 1, !dbg !3165
  %and234 = and i64 %sub233, 262144, !dbg !3165
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3165
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3165

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3165

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub238 = sub i64 %55, 1, !dbg !3165
  %and239 = and i64 %sub238, 131072, !dbg !3165
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3165
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3165

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3165

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub243 = sub i64 %56, 1, !dbg !3165
  %and244 = and i64 %sub243, 65536, !dbg !3165
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3165
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3165

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3165

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub248 = sub i64 %57, 1, !dbg !3165
  %and249 = and i64 %sub248, 32768, !dbg !3165
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3165
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3165

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3165

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub253 = sub i64 %58, 1, !dbg !3165
  %and254 = and i64 %sub253, 16384, !dbg !3165
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3165
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3165

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3165

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub258 = sub i64 %59, 1, !dbg !3165
  %and259 = and i64 %sub258, 8192, !dbg !3165
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3165
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3165

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3165

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub263 = sub i64 %60, 1, !dbg !3165
  %and264 = and i64 %sub263, 4096, !dbg !3165
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3165
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3165

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3165

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub268 = sub i64 %61, 1, !dbg !3165
  %and269 = and i64 %sub268, 2048, !dbg !3165
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3165
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3165

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3165

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub273 = sub i64 %62, 1, !dbg !3165
  %and274 = and i64 %sub273, 1024, !dbg !3165
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3165
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3165

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3165

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub278 = sub i64 %63, 1, !dbg !3165
  %and279 = and i64 %sub278, 512, !dbg !3165
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3165
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3165

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3165

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub283 = sub i64 %64, 1, !dbg !3165
  %and284 = and i64 %sub283, 256, !dbg !3165
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3165
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3165

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3165

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub288 = sub i64 %65, 1, !dbg !3165
  %and289 = and i64 %sub288, 128, !dbg !3165
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3165
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3165

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3165

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub293 = sub i64 %66, 1, !dbg !3165
  %and294 = and i64 %sub293, 64, !dbg !3165
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3165
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3165

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3165

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub298 = sub i64 %67, 1, !dbg !3165
  %and299 = and i64 %sub298, 32, !dbg !3165
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3165
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3165

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3165

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub303 = sub i64 %68, 1, !dbg !3165
  %and304 = and i64 %sub303, 16, !dbg !3165
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3165
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3165

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3165

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub308 = sub i64 %69, 1, !dbg !3165
  %and309 = and i64 %sub308, 8, !dbg !3165
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3165
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3165

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3165

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub313 = sub i64 %70, 1, !dbg !3165
  %and314 = and i64 %sub313, 4, !dbg !3165
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3165
  %71 = zext i1 %tobool315 to i64, !dbg !3165
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3165
  br label %cond.end, !dbg !3165

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3165
  br label %cond.end317, !dbg !3165

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3165
  br label %cond.end319, !dbg !3165

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3165
  br label %cond.end321, !dbg !3165

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3165
  br label %cond.end323, !dbg !3165

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3165
  br label %cond.end325, !dbg !3165

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3165
  br label %cond.end327, !dbg !3165

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3165
  br label %cond.end329, !dbg !3165

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3165
  br label %cond.end331, !dbg !3165

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3165
  br label %cond.end333, !dbg !3165

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3165
  br label %cond.end335, !dbg !3165

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3165
  br label %cond.end337, !dbg !3165

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3165
  br label %cond.end339, !dbg !3165

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3165
  br label %cond.end341, !dbg !3165

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3165
  br label %cond.end343, !dbg !3165

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3165
  br label %cond.end345, !dbg !3165

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3165
  br label %cond.end347, !dbg !3165

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3165
  br label %cond.end349, !dbg !3165

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3165
  br label %cond.end351, !dbg !3165

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3165
  br label %cond.end353, !dbg !3165

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3165
  br label %cond.end355, !dbg !3165

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3165
  br label %cond.end357, !dbg !3165

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3165
  br label %cond.end359, !dbg !3165

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3165
  br label %cond.end361, !dbg !3165

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3165
  br label %cond.end363, !dbg !3165

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3165
  br label %cond.end365, !dbg !3165

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3165
  br label %cond.end367, !dbg !3165

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3165
  br label %cond.end369, !dbg !3165

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3165
  br label %cond.end371, !dbg !3165

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3165
  br label %cond.end373, !dbg !3165

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3165
  br label %cond.end375, !dbg !3165

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3165
  br label %cond.end377, !dbg !3165

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3165
  br label %cond.end379, !dbg !3165

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3165
  br label %cond.end381, !dbg !3165

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3165
  br label %cond.end383, !dbg !3165

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3165
  br label %cond.end385, !dbg !3165

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3165
  br label %cond.end387, !dbg !3165

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3165
  br label %cond.end389, !dbg !3165

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3165
  br label %cond.end391, !dbg !3165

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3165
  br label %cond.end393, !dbg !3165

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3165
  br label %cond.end395, !dbg !3165

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3165
  br label %cond.end397, !dbg !3165

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3165
  br label %cond.end399, !dbg !3165

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3165
  br label %cond.end401, !dbg !3165

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3165
  br label %cond.end403, !dbg !3165

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3165
  br label %cond.end405, !dbg !3165

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3165
  br label %cond.end407, !dbg !3165

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3165
  br label %cond.end409, !dbg !3165

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3165
  br label %cond.end411, !dbg !3165

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3165
  br label %cond.end413, !dbg !3165

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3165
  br label %cond.end415, !dbg !3165

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3165
  br label %cond.end417, !dbg !3165

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3165
  br label %cond.end419, !dbg !3165

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3165
  br label %cond.end421, !dbg !3165

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3165
  br label %cond.end423, !dbg !3165

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3165
  br label %cond.end425, !dbg !3165

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3165
  br label %cond.end427, !dbg !3165

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3165
  br label %cond.end429, !dbg !3165

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3165
  br label %cond.end431, !dbg !3165

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3165
  br label %cond.end433, !dbg !3165

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3165
  br label %cond.end435, !dbg !3165

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3165
  br label %cond.end437, !dbg !3165

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3165
  br label %cond.end440, !dbg !3165

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3165

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3165
  br label %cond.end444, !dbg !3165

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3165
  %sub443 = sub i64 %72, 1, !dbg !3165
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3165
  br label %cond.end444, !dbg !3165

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3165
  %sub446 = sub i32 %cond445, 12, !dbg !3166
  %add = add i32 %sub446, 1, !dbg !3167
  store i32 %add, i32* %retval, align 4, !dbg !3168
  br label %return, !dbg !3168

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3169
  %dec = add i64 %73, -1, !dbg !3169
  store i64 %dec, i64* %size.addr, align 8, !dbg !3169
  %74 = load i64, i64* %size.addr, align 8, !dbg !3170
  %shr = lshr i64 %74, 12, !dbg !3170
  store i64 %shr, i64* %size.addr, align 8, !dbg !3170
  %75 = load i64, i64* %size.addr, align 8, !dbg !3171
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3148
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3172
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3173
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !3172, !srcloc !3174
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3172
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3175
  %add.i = add i32 %79, 1, !dbg !3176
  store i32 %add.i, i32* %retval, align 4, !dbg !3177
  br label %return, !dbg !3177

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3178
  ret i32 %80, !dbg !3178
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !3179 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3140, metadata !DIExpression()), !dbg !3183
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3147, metadata !DIExpression()), !dbg !3185
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  %0 = load i64, i64* %n.addr, align 8, !dbg !3188
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3185
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3189
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3190
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !3189, !srcloc !3174
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3189
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3191
  %add.i = add i32 %4, 1, !dbg !3192
  %sub = sub i32 %add.i, 1, !dbg !3193
  ret i32 %sub, !dbg !3194
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3195 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3199, metadata !DIExpression()), !dbg !3200
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3201, metadata !DIExpression()), !dbg !3202
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3207
  ret i8* %0, !dbg !3208
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ipack_bus_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !3209 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %idev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  %idrv = alloca %struct.ipack_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.ipack_driver*, align 8
  %found_id = alloca %struct.ipack_device_id*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3210, metadata !DIExpression()), !dbg !3211
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev, metadata !3214, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3216, metadata !DIExpression()), !dbg !3218
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3218
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3218
  store i8* %1, i8** %__mptr, align 8, !dbg !3218
  br label %do.body, !dbg !3218

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3219

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3218
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !3218
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3218
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !3219
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3218
  store %struct.ipack_device* %4, %struct.ipack_device** %idev, align 8, !dbg !3215
  call void @llvm.dbg.declare(metadata %struct.ipack_driver** %idrv, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3223, metadata !DIExpression()), !dbg !3225
  %5 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3225
  %6 = bitcast %struct.device_driver* %5 to i8*, !dbg !3225
  store i8* %6, i8** %__mptr1, align 8, !dbg !3225
  br label %do.body2, !dbg !3225

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3226

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !3225
  %add.ptr5 = getelementptr i8, i8* %7, i64 0, !dbg !3225
  %8 = bitcast i8* %add.ptr5 to %struct.ipack_driver*, !dbg !3225
  store %struct.ipack_driver* %8, %struct.ipack_driver** %tmp4, align 8, !dbg !3226
  %9 = load %struct.ipack_driver*, %struct.ipack_driver** %tmp4, align 8, !dbg !3225
  store %struct.ipack_driver* %9, %struct.ipack_driver** %idrv, align 8, !dbg !3222
  call void @llvm.dbg.declare(metadata %struct.ipack_device_id** %found_id, metadata !3228, metadata !DIExpression()), !dbg !3229
  %10 = load %struct.ipack_driver*, %struct.ipack_driver** %idrv, align 8, !dbg !3230
  %id_table = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %10, i32 0, i32 1, !dbg !3231
  %11 = load %struct.ipack_device_id*, %struct.ipack_device_id** %id_table, align 8, !dbg !3231
  %12 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3232
  %call = call %struct.ipack_device_id* @ipack_match_id(%struct.ipack_device_id* %11, %struct.ipack_device* %12) #9, !dbg !3233
  store %struct.ipack_device_id* %call, %struct.ipack_device_id** %found_id, align 8, !dbg !3234
  %13 = load %struct.ipack_device_id*, %struct.ipack_device_id** %found_id, align 8, !dbg !3235
  %tobool = icmp ne %struct.ipack_device_id* %13, null, !dbg !3235
  %14 = zext i1 %tobool to i64, !dbg !3235
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !3235
  ret i32 %cond, !dbg !3236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ipack_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !3237 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %idev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev, metadata !3242, metadata !DIExpression()), !dbg !3243
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3244
  %tobool = icmp ne %struct.device* %0, null, !dbg !3244
  br i1 %tobool, label %if.end, label %if.then, !dbg !3246

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3247
  br label %return, !dbg !3247

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3248, metadata !DIExpression()), !dbg !3250
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3250
  %2 = bitcast %struct.device* %1 to i8*, !dbg !3250
  store i8* %2, i8** %__mptr, align 8, !dbg !3250
  br label %do.body, !dbg !3250

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3251

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3250
  %add.ptr = getelementptr i8, i8* %3, i64 -16, !dbg !3250
  %4 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3250
  store %struct.ipack_device* %4, %struct.ipack_device** %tmp, align 8, !dbg !3251
  %5 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3250
  store %struct.ipack_device* %5, %struct.ipack_device** %idev, align 8, !dbg !3253
  %6 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3254
  %7 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3256
  %id_format = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %7, i32 0, i32 9, !dbg !3257
  %8 = load i8, i8* %id_format, align 8, !dbg !3257
  %conv = zext i8 %8 to i32, !dbg !3256
  %9 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3258
  %id_vendor = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %9, i32 0, i32 7, !dbg !3259
  %10 = load i32, i32* %id_vendor, align 8, !dbg !3259
  %11 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3260
  %id_device = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %11, i32 0, i32 8, !dbg !3261
  %12 = load i32, i32* %id_device, align 4, !dbg !3261
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %conv, i32 %10, i32 %12) #9, !dbg !3262
  %tobool1 = icmp ne i32 %call, 0, !dbg !3262
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3263

if.then2:                                         ; preds = %do.end
  store i32 -12, i32* %retval, align 4, !dbg !3264
  br label %return, !dbg !3264

if.end3:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !3265
  br label %return, !dbg !3265

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3266
  ret i32 %13, !dbg !3266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ipack_bus_probe(%struct.device* %device) #0 !dbg !3267 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.device*, align 8
  %dev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  %drv = alloca %struct.ipack_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.ipack_driver*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3272, metadata !DIExpression()), !dbg !3274
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !3274
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3274
  store i8* %1, i8** %__mptr, align 8, !dbg !3274
  br label %do.body, !dbg !3274

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3275

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3274
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !3274
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3274
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !3275
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3274
  store %struct.ipack_device* %4, %struct.ipack_device** %dev, align 8, !dbg !3271
  call void @llvm.dbg.declare(metadata %struct.ipack_driver** %drv, metadata !3277, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3279, metadata !DIExpression()), !dbg !3281
  %5 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !3281
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !3281
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3281
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !3281
  store i8* %7, i8** %__mptr1, align 8, !dbg !3281
  br label %do.body2, !dbg !3281

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3282

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3281
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !3281
  %9 = bitcast i8* %add.ptr5 to %struct.ipack_driver*, !dbg !3281
  store %struct.ipack_driver* %9, %struct.ipack_driver** %tmp4, align 8, !dbg !3282
  %10 = load %struct.ipack_driver*, %struct.ipack_driver** %tmp4, align 8, !dbg !3281
  store %struct.ipack_driver* %10, %struct.ipack_driver** %drv, align 8, !dbg !3278
  %11 = load %struct.ipack_driver*, %struct.ipack_driver** %drv, align 8, !dbg !3284
  %ops = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %11, i32 0, i32 2, !dbg !3286
  %12 = load %struct.ipack_driver_ops*, %struct.ipack_driver_ops** %ops, align 8, !dbg !3286
  %probe = getelementptr inbounds %struct.ipack_driver_ops, %struct.ipack_driver_ops* %12, i32 0, i32 0, !dbg !3287
  %13 = load i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*)** %probe, align 8, !dbg !3287
  %tobool = icmp ne i32 (%struct.ipack_device*)* %13, null, !dbg !3284
  br i1 %tobool, label %if.end, label %if.then, !dbg !3288

if.then:                                          ; preds = %do.end3
  store i32 -22, i32* %retval, align 4, !dbg !3289
  br label %return, !dbg !3289

if.end:                                           ; preds = %do.end3
  %14 = load %struct.ipack_driver*, %struct.ipack_driver** %drv, align 8, !dbg !3290
  %ops6 = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %14, i32 0, i32 2, !dbg !3291
  %15 = load %struct.ipack_driver_ops*, %struct.ipack_driver_ops** %ops6, align 8, !dbg !3291
  %probe7 = getelementptr inbounds %struct.ipack_driver_ops, %struct.ipack_driver_ops* %15, i32 0, i32 0, !dbg !3292
  %16 = load i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*)** %probe7, align 8, !dbg !3292
  %17 = load %struct.ipack_device*, %struct.ipack_device** %dev, align 8, !dbg !3293
  %call = call i32 %16(%struct.ipack_device* %17) #9, !dbg !3290
  store i32 %call, i32* %retval, align 4, !dbg !3294
  br label %return, !dbg !3294

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !3295
  ret i32 %18, !dbg !3295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ipack_bus_remove(%struct.device* %device) #0 !dbg !3296 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.device*, align 8
  %dev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  %drv = alloca %struct.ipack_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.ipack_driver*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3301, metadata !DIExpression()), !dbg !3303
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !3303
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3303
  store i8* %1, i8** %__mptr, align 8, !dbg !3303
  br label %do.body, !dbg !3303

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3304

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3303
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !3303
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3303
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !3304
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3303
  store %struct.ipack_device* %4, %struct.ipack_device** %dev, align 8, !dbg !3300
  call void @llvm.dbg.declare(metadata %struct.ipack_driver** %drv, metadata !3306, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3308, metadata !DIExpression()), !dbg !3310
  %5 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !3310
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !3310
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3310
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !3310
  store i8* %7, i8** %__mptr1, align 8, !dbg !3310
  br label %do.body2, !dbg !3310

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3311

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3310
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !3310
  %9 = bitcast i8* %add.ptr5 to %struct.ipack_driver*, !dbg !3310
  store %struct.ipack_driver* %9, %struct.ipack_driver** %tmp4, align 8, !dbg !3311
  %10 = load %struct.ipack_driver*, %struct.ipack_driver** %tmp4, align 8, !dbg !3310
  store %struct.ipack_driver* %10, %struct.ipack_driver** %drv, align 8, !dbg !3307
  %11 = load %struct.ipack_driver*, %struct.ipack_driver** %drv, align 8, !dbg !3313
  %ops = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %11, i32 0, i32 2, !dbg !3315
  %12 = load %struct.ipack_driver_ops*, %struct.ipack_driver_ops** %ops, align 8, !dbg !3315
  %remove = getelementptr inbounds %struct.ipack_driver_ops, %struct.ipack_driver_ops* %12, i32 0, i32 1, !dbg !3316
  %13 = load void (%struct.ipack_device*)*, void (%struct.ipack_device*)** %remove, align 8, !dbg !3316
  %tobool = icmp ne void (%struct.ipack_device*)* %13, null, !dbg !3313
  br i1 %tobool, label %if.end, label %if.then, !dbg !3317

if.then:                                          ; preds = %do.end3
  store i32 -22, i32* %retval, align 4, !dbg !3318
  br label %return, !dbg !3318

if.end:                                           ; preds = %do.end3
  %14 = load %struct.ipack_driver*, %struct.ipack_driver** %drv, align 8, !dbg !3319
  %ops6 = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %14, i32 0, i32 2, !dbg !3320
  %15 = load %struct.ipack_driver_ops*, %struct.ipack_driver_ops** %ops6, align 8, !dbg !3320
  %remove7 = getelementptr inbounds %struct.ipack_driver_ops, %struct.ipack_driver_ops* %15, i32 0, i32 1, !dbg !3321
  %16 = load void (%struct.ipack_device*)*, void (%struct.ipack_device*)** %remove7, align 8, !dbg !3321
  %17 = load %struct.ipack_device*, %struct.ipack_device** %dev, align 8, !dbg !3322
  call void %16(%struct.ipack_device* %17) #9, !dbg !3319
  store i32 0, i32* %retval, align 4, !dbg !3323
  br label %return, !dbg !3323

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !3324
  ret i32 %18, !dbg !3324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @id_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3325 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %l = alloca i32, align 4
  %s = alloca i32, align 4
  %idev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3328, metadata !DIExpression()), !dbg !3329
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.declare(metadata i32* %c, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.declare(metadata i32* %l, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.declare(metadata i32* %s, metadata !3338, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev, metadata !3340, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3342, metadata !DIExpression()), !dbg !3344
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3344
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3344
  store i8* %1, i8** %__mptr, align 8, !dbg !3344
  br label %do.body, !dbg !3344

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3345

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3344
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !3344
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3344
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !3345
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3344
  store %struct.ipack_device* %4, %struct.ipack_device** %idev, align 8, !dbg !3341
  %5 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3347
  %id_format = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 9, !dbg !3348
  %6 = load i8, i8* %id_format, align 8, !dbg !3348
  %conv = zext i8 %6 to i32, !dbg !3347
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !3349

sw.bb:                                            ; preds = %do.end
  store i32 7, i32* %l, align 4, !dbg !3350
  store i32 1, i32* %s, align 4, !dbg !3352
  br label %sw.epilog, !dbg !3353

sw.bb1:                                           ; preds = %do.end
  store i32 15, i32* %l, align 4, !dbg !3354
  store i32 2, i32* %s, align 4, !dbg !3355
  br label %sw.epilog, !dbg !3356

sw.default:                                       ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3357
  br label %return, !dbg !3357

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  store i32 0, i32* %c, align 4, !dbg !3358
  store i32 0, i32* %i, align 4, !dbg !3359
  br label %for.cond, !dbg !3361

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %7 = load i32, i32* %i, align 4, !dbg !3362
  %conv2 = zext i32 %7 to i64, !dbg !3362
  %8 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3364
  %id_avail = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %8, i32 0, i32 6, !dbg !3365
  %9 = load i64, i64* %id_avail, align 8, !dbg !3365
  %cmp = icmp ult i64 %conv2, %9, !dbg !3366
  br i1 %cmp, label %for.body, label %for.end, !dbg !3367

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !3368
  %cmp4 = icmp ugt i32 %10, 0, !dbg !3371
  br i1 %cmp4, label %if.then, label %if.end17, !dbg !3372

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !3373
  %12 = load i32, i32* %l, align 4, !dbg !3376
  %and = and i32 %11, %12, !dbg !3377
  %cmp6 = icmp eq i32 %and, 0, !dbg !3378
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !3379

if.then8:                                         ; preds = %if.then
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !3380
  %14 = load i32, i32* %c, align 4, !dbg !3381
  %inc = add i32 %14, 1, !dbg !3381
  store i32 %inc, i32* %c, align 4, !dbg !3381
  %idxprom = zext i32 %14 to i64, !dbg !3380
  %arrayidx = getelementptr i8, i8* %13, i64 %idxprom, !dbg !3380
  store i8 10, i8* %arrayidx, align 1, !dbg !3382
  br label %if.end16, !dbg !3380

if.else:                                          ; preds = %if.then
  %15 = load i32, i32* %i, align 4, !dbg !3383
  %16 = load i32, i32* %s, align 4, !dbg !3385
  %and9 = and i32 %15, %16, !dbg !3386
  %cmp10 = icmp eq i32 %and9, 0, !dbg !3387
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !3388

if.then12:                                        ; preds = %if.else
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !3389
  %18 = load i32, i32* %c, align 4, !dbg !3390
  %inc13 = add i32 %18, 1, !dbg !3390
  store i32 %inc13, i32* %c, align 4, !dbg !3390
  %idxprom14 = zext i32 %18 to i64, !dbg !3389
  %arrayidx15 = getelementptr i8, i8* %17, i64 %idxprom14, !dbg !3389
  store i8 32, i8* %arrayidx15, align 1, !dbg !3391
  br label %if.end, !dbg !3389

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17, !dbg !3392

if.end17:                                         ; preds = %if.end16, %for.body
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !3393
  %20 = load i32, i32* %c, align 4, !dbg !3394
  %idxprom18 = zext i32 %20 to i64, !dbg !3393
  %arrayidx19 = getelementptr i8, i8* %19, i64 %idxprom18, !dbg !3393
  %21 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3395
  %id = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %21, i32 0, i32 5, !dbg !3396
  %22 = load i8*, i8** %id, align 8, !dbg !3396
  %23 = load i32, i32* %i, align 4, !dbg !3397
  %idxprom20 = zext i32 %23 to i64, !dbg !3395
  %arrayidx21 = getelementptr i8, i8* %22, i64 %idxprom20, !dbg !3395
  %24 = load i8, i8* %arrayidx21, align 1, !dbg !3395
  %conv22 = zext i8 %24 to i32, !dbg !3395
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arrayidx19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %conv22) #9, !dbg !3398
  %25 = load i32, i32* %c, align 4, !dbg !3399
  %add = add i32 %25, 2, !dbg !3399
  store i32 %add, i32* %c, align 4, !dbg !3399
  br label %for.inc, !dbg !3400

for.inc:                                          ; preds = %if.end17
  %26 = load i32, i32* %i, align 4, !dbg !3401
  %inc23 = add i32 %26, 1, !dbg !3401
  store i32 %inc23, i32* %i, align 4, !dbg !3401
  br label %for.cond, !dbg !3402, !llvm.loop !3403

for.end:                                          ; preds = %for.cond
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !3405
  %28 = load i32, i32* %c, align 4, !dbg !3406
  %inc24 = add i32 %28, 1, !dbg !3406
  store i32 %inc24, i32* %c, align 4, !dbg !3406
  %idxprom25 = zext i32 %28 to i64, !dbg !3405
  %arrayidx26 = getelementptr i8, i8* %27, i64 %idxprom25, !dbg !3405
  store i8 10, i8* %arrayidx26, align 1, !dbg !3407
  %29 = load i32, i32* %c, align 4, !dbg !3408
  %conv27 = zext i32 %29 to i64, !dbg !3408
  store i64 %conv27, i64* %retval, align 8, !dbg !3409
  br label %return, !dbg !3409

return:                                           ; preds = %for.end, %sw.default
  %30 = load i64, i64* %retval, align 8, !dbg !3410
  ret i64 %30, !dbg !3410
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @id_device_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3411 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %idev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3420, metadata !DIExpression()), !dbg !3422
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3422
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3422
  store i8* %1, i8** %__mptr, align 8, !dbg !3422
  br label %do.body, !dbg !3422

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3423

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3422
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !3422
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3422
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !3423
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3422
  store %struct.ipack_device* %4, %struct.ipack_device** %idev, align 8, !dbg !3419
  %5 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3425
  %id_format = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 9, !dbg !3426
  %6 = load i8, i8* %id_format, align 8, !dbg !3426
  %conv = zext i8 %6 to i32, !dbg !3425
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ], !dbg !3427

sw.bb:                                            ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3428
  %8 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3430
  %id_device = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %8, i32 0, i32 8, !dbg !3431
  %9 = load i32, i32* %id_device, align 4, !dbg !3431
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %9) #9, !dbg !3432
  %conv1 = sext i32 %call to i64, !dbg !3432
  store i64 %conv1, i64* %retval, align 8, !dbg !3433
  br label %return, !dbg !3433

sw.bb2:                                           ; preds = %do.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !3434
  %11 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3435
  %id_device3 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %11, i32 0, i32 8, !dbg !3436
  %12 = load i32, i32* %id_device3, align 4, !dbg !3436
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %12) #9, !dbg !3437
  %conv5 = sext i32 %call4 to i64, !dbg !3437
  store i64 %conv5, i64* %retval, align 8, !dbg !3438
  br label %return, !dbg !3438

sw.default:                                       ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3439
  br label %return, !dbg !3439

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %13 = load i64, i64* %retval, align 8, !dbg !3440
  ret i64 %13, !dbg !3440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @id_format_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3441 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %idev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3442, metadata !DIExpression()), !dbg !3443
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3444, metadata !DIExpression()), !dbg !3443
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3445, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev, metadata !3446, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3447, metadata !DIExpression()), !dbg !3449
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3449
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3449
  store i8* %1, i8** %__mptr, align 8, !dbg !3449
  br label %do.body, !dbg !3449

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3450

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3449
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !3449
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3449
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !3450
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3449
  store %struct.ipack_device* %4, %struct.ipack_device** %idev, align 8, !dbg !3443
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3443
  %6 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3443
  %id_format = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %6, i32 0, i32 9, !dbg !3443
  %7 = load i8, i8* %id_format, align 8, !dbg !3443
  %conv = zext i8 %7 to i32, !dbg !3443
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %conv) #9, !dbg !3443
  %conv1 = sext i32 %call to i64, !dbg !3443
  ret i64 %conv1, !dbg !3443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @id_vendor_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3452 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %idev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3453, metadata !DIExpression()), !dbg !3454
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3455, metadata !DIExpression()), !dbg !3456
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev, metadata !3459, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3461, metadata !DIExpression()), !dbg !3463
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3463
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3463
  store i8* %1, i8** %__mptr, align 8, !dbg !3463
  br label %do.body, !dbg !3463

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3464

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3463
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !3463
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3463
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !3464
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3463
  store %struct.ipack_device* %4, %struct.ipack_device** %idev, align 8, !dbg !3460
  %5 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3466
  %id_format = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 9, !dbg !3467
  %6 = load i8, i8* %id_format, align 8, !dbg !3467
  %conv = zext i8 %6 to i32, !dbg !3466
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ], !dbg !3468

sw.bb:                                            ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3469
  %8 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3471
  %id_vendor = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %8, i32 0, i32 7, !dbg !3472
  %9 = load i32, i32* %id_vendor, align 8, !dbg !3472
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %9) #9, !dbg !3473
  %conv1 = sext i32 %call to i64, !dbg !3473
  store i64 %conv1, i64* %retval, align 8, !dbg !3474
  br label %return, !dbg !3474

sw.bb2:                                           ; preds = %do.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !3475
  %11 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3476
  %id_vendor3 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %11, i32 0, i32 7, !dbg !3477
  %12 = load i32, i32* %id_vendor3, align 8, !dbg !3477
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %12) #9, !dbg !3478
  %conv5 = sext i32 %call4 to i64, !dbg !3478
  store i64 %conv5, i64* %retval, align 8, !dbg !3479
  br label %return, !dbg !3479

sw.default:                                       ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3480
  br label %return, !dbg !3480

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %13 = load i64, i64* %retval, align 8, !dbg !3481
  ret i64 %13, !dbg !3481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @modalias_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3482 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %idev = alloca %struct.ipack_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ipack_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3483, metadata !DIExpression()), !dbg !3484
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3485, metadata !DIExpression()), !dbg !3486
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3487, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3491, metadata !DIExpression()), !dbg !3493
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3493
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3493
  store i8* %1, i8** %__mptr, align 8, !dbg !3493
  br label %do.body, !dbg !3493

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3494

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3493
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !3493
  %3 = bitcast i8* %add.ptr to %struct.ipack_device*, !dbg !3493
  store %struct.ipack_device* %3, %struct.ipack_device** %tmp, align 8, !dbg !3494
  %4 = load %struct.ipack_device*, %struct.ipack_device** %tmp, align 8, !dbg !3493
  store %struct.ipack_device* %4, %struct.ipack_device** %idev, align 8, !dbg !3490
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3496
  %6 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3497
  %id_format = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %6, i32 0, i32 9, !dbg !3498
  %7 = load i8, i8* %id_format, align 8, !dbg !3498
  %conv = zext i8 %7 to i32, !dbg !3497
  %8 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3499
  %id_vendor = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %8, i32 0, i32 7, !dbg !3500
  %9 = load i32, i32* %id_vendor, align 8, !dbg !3500
  %10 = load %struct.ipack_device*, %struct.ipack_device** %idev, align 8, !dbg !3501
  %id_device = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %10, i32 0, i32 8, !dbg !3502
  %11 = load i32, i32* %id_device, align 4, !dbg !3502
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %conv, i32 %9, i32 %11) #9, !dbg !3503
  %conv1 = sext i32 %call to i64, !dbg !3503
  ret i64 %conv1, !dbg !3504
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.ipack_device_id* @ipack_match_id(%struct.ipack_device_id* %ids, %struct.ipack_device* %idev) #0 !dbg !3505 {
entry:
  %retval = alloca %struct.ipack_device_id*, align 8
  %ids.addr = alloca %struct.ipack_device_id*, align 8
  %idev.addr = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device_id* %ids, %struct.ipack_device_id** %ids.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device_id** %ids.addr, metadata !3508, metadata !DIExpression()), !dbg !3509
  store %struct.ipack_device* %idev, %struct.ipack_device** %idev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %idev.addr, metadata !3510, metadata !DIExpression()), !dbg !3511
  %0 = load %struct.ipack_device_id*, %struct.ipack_device_id** %ids.addr, align 8, !dbg !3512
  %tobool = icmp ne %struct.ipack_device_id* %0, null, !dbg !3512
  br i1 %tobool, label %if.then, label %if.end5, !dbg !3514

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !3515

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load %struct.ipack_device_id*, %struct.ipack_device_id** %ids.addr, align 8, !dbg !3517
  %vendor = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %1, i32 0, i32 1, !dbg !3518
  %2 = load i32, i32* %vendor, align 4, !dbg !3518
  %tobool1 = icmp ne i32 %2, 0, !dbg !3517
  br i1 %tobool1, label %lor.end, label %lor.rhs, !dbg !3519

lor.rhs:                                          ; preds = %while.cond
  %3 = load %struct.ipack_device_id*, %struct.ipack_device_id** %ids.addr, align 8, !dbg !3520
  %device = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %3, i32 0, i32 2, !dbg !3521
  %4 = load i32, i32* %device, align 4, !dbg !3521
  %tobool2 = icmp ne i32 %4, 0, !dbg !3519
  br label %lor.end, !dbg !3519

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %5 = phi i1 [ true, %while.cond ], [ %tobool2, %lor.rhs ]
  br i1 %5, label %while.body, label %while.end, !dbg !3515

while.body:                                       ; preds = %lor.end
  %6 = load %struct.ipack_device_id*, %struct.ipack_device_id** %ids.addr, align 8, !dbg !3522
  %7 = load %struct.ipack_device*, %struct.ipack_device** %idev.addr, align 8, !dbg !3525
  %call = call %struct.ipack_device_id* @ipack_match_one_device(%struct.ipack_device_id* %6, %struct.ipack_device* %7) #9, !dbg !3526
  %tobool3 = icmp ne %struct.ipack_device_id* %call, null, !dbg !3526
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !3527

if.then4:                                         ; preds = %while.body
  %8 = load %struct.ipack_device_id*, %struct.ipack_device_id** %ids.addr, align 8, !dbg !3528
  store %struct.ipack_device_id* %8, %struct.ipack_device_id** %retval, align 8, !dbg !3529
  br label %return, !dbg !3529

if.end:                                           ; preds = %while.body
  %9 = load %struct.ipack_device_id*, %struct.ipack_device_id** %ids.addr, align 8, !dbg !3530
  %incdec.ptr = getelementptr %struct.ipack_device_id, %struct.ipack_device_id* %9, i32 1, !dbg !3530
  store %struct.ipack_device_id* %incdec.ptr, %struct.ipack_device_id** %ids.addr, align 8, !dbg !3530
  br label %while.cond, !dbg !3515, !llvm.loop !3531

while.end:                                        ; preds = %lor.end
  br label %if.end5, !dbg !3533

if.end5:                                          ; preds = %while.end, %entry
  store %struct.ipack_device_id* null, %struct.ipack_device_id** %retval, align 8, !dbg !3534
  br label %return, !dbg !3534

return:                                           ; preds = %if.end5, %if.then4
  %10 = load %struct.ipack_device_id*, %struct.ipack_device_id** %retval, align 8, !dbg !3535
  ret %struct.ipack_device_id* %10, !dbg !3535
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.ipack_device_id* @ipack_match_one_device(%struct.ipack_device_id* %id, %struct.ipack_device* %device) #0 !dbg !3536 {
entry:
  %retval = alloca %struct.ipack_device_id*, align 8
  %id.addr = alloca %struct.ipack_device_id*, align 8
  %device.addr = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device_id* %id, %struct.ipack_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device_id** %id.addr, metadata !3541, metadata !DIExpression()), !dbg !3542
  store %struct.ipack_device* %device, %struct.ipack_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %device.addr, metadata !3543, metadata !DIExpression()), !dbg !3544
  %0 = load %struct.ipack_device_id*, %struct.ipack_device_id** %id.addr, align 8, !dbg !3545
  %format = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %0, i32 0, i32 0, !dbg !3547
  %1 = load i8, i8* %format, align 4, !dbg !3547
  %conv = zext i8 %1 to i32, !dbg !3545
  %cmp = icmp eq i32 %conv, 255, !dbg !3548
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3549

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ipack_device_id*, %struct.ipack_device_id** %id.addr, align 8, !dbg !3550
  %format2 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %2, i32 0, i32 0, !dbg !3551
  %3 = load i8, i8* %format2, align 4, !dbg !3551
  %conv3 = zext i8 %3 to i32, !dbg !3550
  %4 = load %struct.ipack_device*, %struct.ipack_device** %device.addr, align 8, !dbg !3552
  %id_format = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %4, i32 0, i32 9, !dbg !3553
  %5 = load i8, i8* %id_format, align 8, !dbg !3553
  %conv4 = zext i8 %5 to i32, !dbg !3552
  %cmp5 = icmp eq i32 %conv3, %conv4, !dbg !3554
  br i1 %cmp5, label %land.lhs.true, label %if.end, !dbg !3555

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %6 = load %struct.ipack_device_id*, %struct.ipack_device_id** %id.addr, align 8, !dbg !3556
  %vendor = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %6, i32 0, i32 1, !dbg !3557
  %7 = load i32, i32* %vendor, align 4, !dbg !3557
  %cmp7 = icmp eq i32 %7, -1, !dbg !3558
  br i1 %cmp7, label %land.lhs.true13, label %lor.lhs.false9, !dbg !3559

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %8 = load %struct.ipack_device_id*, %struct.ipack_device_id** %id.addr, align 8, !dbg !3560
  %vendor10 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %8, i32 0, i32 1, !dbg !3561
  %9 = load i32, i32* %vendor10, align 4, !dbg !3561
  %10 = load %struct.ipack_device*, %struct.ipack_device** %device.addr, align 8, !dbg !3562
  %id_vendor = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %10, i32 0, i32 7, !dbg !3563
  %11 = load i32, i32* %id_vendor, align 8, !dbg !3563
  %cmp11 = icmp eq i32 %9, %11, !dbg !3564
  br i1 %cmp11, label %land.lhs.true13, label %if.end, !dbg !3565

land.lhs.true13:                                  ; preds = %lor.lhs.false9, %land.lhs.true
  %12 = load %struct.ipack_device_id*, %struct.ipack_device_id** %id.addr, align 8, !dbg !3566
  %device14 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %12, i32 0, i32 2, !dbg !3567
  %13 = load i32, i32* %device14, align 4, !dbg !3567
  %cmp15 = icmp eq i32 %13, -1, !dbg !3568
  br i1 %cmp15, label %if.then, label %lor.lhs.false17, !dbg !3569

lor.lhs.false17:                                  ; preds = %land.lhs.true13
  %14 = load %struct.ipack_device_id*, %struct.ipack_device_id** %id.addr, align 8, !dbg !3570
  %device18 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %14, i32 0, i32 2, !dbg !3571
  %15 = load i32, i32* %device18, align 4, !dbg !3571
  %16 = load %struct.ipack_device*, %struct.ipack_device** %device.addr, align 8, !dbg !3572
  %id_device = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %16, i32 0, i32 8, !dbg !3573
  %17 = load i32, i32* %id_device, align 4, !dbg !3573
  %cmp19 = icmp eq i32 %15, %17, !dbg !3574
  br i1 %cmp19, label %if.then, label %if.end, !dbg !3575

if.then:                                          ; preds = %lor.lhs.false17, %land.lhs.true13
  %18 = load %struct.ipack_device_id*, %struct.ipack_device_id** %id.addr, align 8, !dbg !3576
  store %struct.ipack_device_id* %18, %struct.ipack_device_id** %retval, align 8, !dbg !3577
  br label %return, !dbg !3577

if.end:                                           ; preds = %lor.lhs.false17, %lor.lhs.false9, %lor.lhs.false
  store %struct.ipack_device_id* null, %struct.ipack_device_id** %retval, align 8, !dbg !3578
  br label %return, !dbg !3578

return:                                           ; preds = %if.end, %if.then
  %19 = load %struct.ipack_device_id*, %struct.ipack_device_id** %retval, align 8, !dbg !3579
  ret %struct.ipack_device_id* %19, !dbg !3579
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @ioread8(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @ioread16be(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ipack_parse_id1(%struct.ipack_device* %dev) #0 !dbg !3580 {
entry:
  %dev.addr = alloca %struct.ipack_device*, align 8
  %id = alloca i8*, align 8
  %crc = alloca i8, align 1
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !3581, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.declare(metadata i8** %id, metadata !3583, metadata !DIExpression()), !dbg !3584
  %0 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3585
  %id1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %0, i32 0, i32 5, !dbg !3586
  %1 = load i8*, i8** %id1, align 8, !dbg !3586
  store i8* %1, i8** %id, align 8, !dbg !3584
  call void @llvm.dbg.declare(metadata i8* %crc, metadata !3587, metadata !DIExpression()), !dbg !3588
  %2 = load i8*, i8** %id, align 8, !dbg !3589
  %arrayidx = getelementptr i8, i8* %2, i64 4, !dbg !3589
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3589
  %conv = zext i8 %3 to i32, !dbg !3589
  %4 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3590
  %id_vendor = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %4, i32 0, i32 7, !dbg !3591
  store i32 %conv, i32* %id_vendor, align 8, !dbg !3592
  %5 = load i8*, i8** %id, align 8, !dbg !3593
  %arrayidx2 = getelementptr i8, i8* %5, i64 5, !dbg !3593
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !3593
  %conv3 = zext i8 %6 to i32, !dbg !3593
  %7 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3594
  %id_device = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %7, i32 0, i32 8, !dbg !3595
  store i32 %conv3, i32* %id_device, align 4, !dbg !3596
  %8 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3597
  %speed_8mhz = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %8, i32 0, i32 10, !dbg !3598
  %bf.load = load i8, i8* %speed_8mhz, align 1, !dbg !3599
  %bf.clear = and i8 %bf.load, -3, !dbg !3599
  %bf.set = or i8 %bf.clear, 2, !dbg !3599
  store i8 %bf.set, i8* %speed_8mhz, align 1, !dbg !3599
  %9 = load i8*, i8** %id, align 8, !dbg !3600
  %arrayidx4 = getelementptr i8, i8* %9, i64 7, !dbg !3600
  %10 = load i8, i8* %arrayidx4, align 1, !dbg !3600
  %conv5 = zext i8 %10 to i32, !dbg !3600
  %cmp = icmp eq i32 %conv5, 72, !dbg !3601
  %conv6 = zext i1 %cmp to i32, !dbg !3601
  %11 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3602
  %speed_32mhz = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %11, i32 0, i32 10, !dbg !3603
  %12 = trunc i32 %conv6 to i8, !dbg !3604
  %bf.load7 = load i8, i8* %speed_32mhz, align 1, !dbg !3604
  %bf.value = and i8 %12, 1, !dbg !3604
  %bf.shl = shl i8 %bf.value, 2, !dbg !3604
  %bf.clear8 = and i8 %bf.load7, -5, !dbg !3604
  %bf.set9 = or i8 %bf.clear8, %bf.shl, !dbg !3604
  store i8 %bf.set9, i8* %speed_32mhz, align 1, !dbg !3604
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !3604
  %13 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3605
  %call = call zeroext i8 @ipack_calc_crc1(%struct.ipack_device* %13) #9, !dbg !3606
  store i8 %call, i8* %crc, align 1, !dbg !3607
  %14 = load i8, i8* %crc, align 1, !dbg !3608
  %conv10 = zext i8 %14 to i32, !dbg !3608
  %15 = load i8*, i8** %id, align 8, !dbg !3609
  %arrayidx11 = getelementptr i8, i8* %15, i64 11, !dbg !3609
  %16 = load i8, i8* %arrayidx11, align 1, !dbg !3609
  %conv12 = zext i8 %16 to i32, !dbg !3609
  %cmp13 = icmp eq i32 %conv10, %conv12, !dbg !3610
  %conv14 = zext i1 %cmp13 to i32, !dbg !3610
  %17 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3611
  %id_crc_correct = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %17, i32 0, i32 10, !dbg !3612
  %18 = trunc i32 %conv14 to i8, !dbg !3613
  %bf.load15 = load i8, i8* %id_crc_correct, align 1, !dbg !3613
  %bf.value16 = and i8 %18, 1, !dbg !3613
  %bf.clear17 = and i8 %bf.load15, -2, !dbg !3613
  %bf.set18 = or i8 %bf.clear17, %bf.value16, !dbg !3613
  store i8 %bf.set18, i8* %id_crc_correct, align 1, !dbg !3613
  %bf.result.cast19 = zext i8 %bf.value16 to i32, !dbg !3613
  %19 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3614
  %id_crc_correct20 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %19, i32 0, i32 10, !dbg !3616
  %bf.load21 = load i8, i8* %id_crc_correct20, align 1, !dbg !3616
  %bf.clear22 = and i8 %bf.load21, 1, !dbg !3616
  %bf.cast = zext i8 %bf.clear22 to i32, !dbg !3616
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !3614
  br i1 %tobool, label %if.end, label %if.then, !dbg !3617

if.then:                                          ; preds = %entry
  %20 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3618
  %dev23 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %20, i32 0, i32 2, !dbg !3618
  %21 = load i8*, i8** %id, align 8, !dbg !3618
  %arrayidx24 = getelementptr i8, i8* %21, i64 11, !dbg !3618
  %22 = load i8, i8* %arrayidx24, align 1, !dbg !3618
  %conv25 = zext i8 %22 to i32, !dbg !3618
  %23 = load i8, i8* %crc, align 1, !dbg !3618
  %conv26 = zext i8 %23 to i32, !dbg !3618
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i32 %conv25, i32 %conv26) #13, !dbg !3618
  br label %if.end, !dbg !3620

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ipack_parse_id2(%struct.ipack_device* %dev) #0 !dbg !3622 {
entry:
  %dev.addr = alloca %struct.ipack_device*, align 8
  %id = alloca i16*, align 8
  %flags = alloca i16, align 2
  %crc = alloca i16, align 2
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !3623, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.declare(metadata i16** %id, metadata !3625, metadata !DIExpression()), !dbg !3626
  %0 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3627
  %id1 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %0, i32 0, i32 5, !dbg !3628
  %1 = load i8*, i8** %id1, align 8, !dbg !3628
  %2 = bitcast i8* %1 to i16*, !dbg !3629
  store i16* %2, i16** %id, align 8, !dbg !3626
  call void @llvm.dbg.declare(metadata i16* %flags, metadata !3630, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.declare(metadata i16* %crc, metadata !3632, metadata !DIExpression()), !dbg !3633
  %3 = load i16*, i16** %id, align 8, !dbg !3634
  %arrayidx = getelementptr i16, i16* %3, i64 3, !dbg !3634
  %4 = load i16, i16* %arrayidx, align 2, !dbg !3634
  %5 = call i1 @llvm.is.constant.i16(i16 %4), !dbg !3634
  br i1 %5, label %cond.true, label %cond.false, !dbg !3634

cond.true:                                        ; preds = %entry
  %6 = load i16*, i16** %id, align 8, !dbg !3634
  %arrayidx2 = getelementptr i16, i16* %6, i64 3, !dbg !3634
  %7 = load i16, i16* %arrayidx2, align 2, !dbg !3634
  %conv = zext i16 %7 to i32, !dbg !3634
  %and = and i32 %conv, 255, !dbg !3634
  %shl = shl i32 %and, 8, !dbg !3634
  %8 = load i16*, i16** %id, align 8, !dbg !3634
  %arrayidx3 = getelementptr i16, i16* %8, i64 3, !dbg !3634
  %9 = load i16, i16* %arrayidx3, align 2, !dbg !3634
  %conv4 = zext i16 %9 to i32, !dbg !3634
  %and5 = and i32 %conv4, 65280, !dbg !3634
  %shr = ashr i32 %and5, 8, !dbg !3634
  %or = or i32 %shl, %shr, !dbg !3634
  %conv6 = trunc i32 %or to i16, !dbg !3634
  %conv7 = zext i16 %conv6 to i32, !dbg !3634
  br label %cond.end, !dbg !3634

cond.false:                                       ; preds = %entry
  %10 = load i16*, i16** %id, align 8, !dbg !3634
  %arrayidx8 = getelementptr i16, i16* %10, i64 3, !dbg !3634
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !3634
  %call = call zeroext i16 @__fswab16(i16 zeroext %11) #11, !dbg !3634
  %conv9 = zext i16 %call to i32, !dbg !3634
  br label %cond.end, !dbg !3634

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv9, %cond.false ], !dbg !3634
  %and10 = and i32 %cond, 255, !dbg !3635
  %shl11 = shl i32 %and10, 16, !dbg !3636
  %12 = load i16*, i16** %id, align 8, !dbg !3637
  %arrayidx12 = getelementptr i16, i16* %12, i64 4, !dbg !3637
  %13 = load i16, i16* %arrayidx12, align 2, !dbg !3637
  %14 = call i1 @llvm.is.constant.i16(i16 %13), !dbg !3637
  br i1 %14, label %cond.true13, label %cond.false25, !dbg !3637

cond.true13:                                      ; preds = %cond.end
  %15 = load i16*, i16** %id, align 8, !dbg !3637
  %arrayidx14 = getelementptr i16, i16* %15, i64 4, !dbg !3637
  %16 = load i16, i16* %arrayidx14, align 2, !dbg !3637
  %conv15 = zext i16 %16 to i32, !dbg !3637
  %and16 = and i32 %conv15, 255, !dbg !3637
  %shl17 = shl i32 %and16, 8, !dbg !3637
  %17 = load i16*, i16** %id, align 8, !dbg !3637
  %arrayidx18 = getelementptr i16, i16* %17, i64 4, !dbg !3637
  %18 = load i16, i16* %arrayidx18, align 2, !dbg !3637
  %conv19 = zext i16 %18 to i32, !dbg !3637
  %and20 = and i32 %conv19, 65280, !dbg !3637
  %shr21 = ashr i32 %and20, 8, !dbg !3637
  %or22 = or i32 %shl17, %shr21, !dbg !3637
  %conv23 = trunc i32 %or22 to i16, !dbg !3637
  %conv24 = zext i16 %conv23 to i32, !dbg !3637
  br label %cond.end29, !dbg !3637

cond.false25:                                     ; preds = %cond.end
  %19 = load i16*, i16** %id, align 8, !dbg !3637
  %arrayidx26 = getelementptr i16, i16* %19, i64 4, !dbg !3637
  %20 = load i16, i16* %arrayidx26, align 2, !dbg !3637
  %call27 = call zeroext i16 @__fswab16(i16 zeroext %20) #11, !dbg !3637
  %conv28 = zext i16 %call27 to i32, !dbg !3637
  br label %cond.end29, !dbg !3637

cond.end29:                                       ; preds = %cond.false25, %cond.true13
  %cond30 = phi i32 [ %conv24, %cond.true13 ], [ %conv28, %cond.false25 ], !dbg !3637
  %add = add i32 %shl11, %cond30, !dbg !3638
  %21 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3639
  %id_vendor = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %21, i32 0, i32 7, !dbg !3640
  store i32 %add, i32* %id_vendor, align 8, !dbg !3641
  %22 = load i16*, i16** %id, align 8, !dbg !3642
  %arrayidx31 = getelementptr i16, i16* %22, i64 5, !dbg !3642
  %23 = load i16, i16* %arrayidx31, align 2, !dbg !3642
  %24 = call i1 @llvm.is.constant.i16(i16 %23), !dbg !3642
  br i1 %24, label %cond.true32, label %cond.false44, !dbg !3642

cond.true32:                                      ; preds = %cond.end29
  %25 = load i16*, i16** %id, align 8, !dbg !3642
  %arrayidx33 = getelementptr i16, i16* %25, i64 5, !dbg !3642
  %26 = load i16, i16* %arrayidx33, align 2, !dbg !3642
  %conv34 = zext i16 %26 to i32, !dbg !3642
  %and35 = and i32 %conv34, 255, !dbg !3642
  %shl36 = shl i32 %and35, 8, !dbg !3642
  %27 = load i16*, i16** %id, align 8, !dbg !3642
  %arrayidx37 = getelementptr i16, i16* %27, i64 5, !dbg !3642
  %28 = load i16, i16* %arrayidx37, align 2, !dbg !3642
  %conv38 = zext i16 %28 to i32, !dbg !3642
  %and39 = and i32 %conv38, 65280, !dbg !3642
  %shr40 = ashr i32 %and39, 8, !dbg !3642
  %or41 = or i32 %shl36, %shr40, !dbg !3642
  %conv42 = trunc i32 %or41 to i16, !dbg !3642
  %conv43 = zext i16 %conv42 to i32, !dbg !3642
  br label %cond.end48, !dbg !3642

cond.false44:                                     ; preds = %cond.end29
  %29 = load i16*, i16** %id, align 8, !dbg !3642
  %arrayidx45 = getelementptr i16, i16* %29, i64 5, !dbg !3642
  %30 = load i16, i16* %arrayidx45, align 2, !dbg !3642
  %call46 = call zeroext i16 @__fswab16(i16 zeroext %30) #11, !dbg !3642
  %conv47 = zext i16 %call46 to i32, !dbg !3642
  br label %cond.end48, !dbg !3642

cond.end48:                                       ; preds = %cond.false44, %cond.true32
  %cond49 = phi i32 [ %conv43, %cond.true32 ], [ %conv47, %cond.false44 ], !dbg !3642
  %31 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3643
  %id_device = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %31, i32 0, i32 8, !dbg !3644
  store i32 %cond49, i32* %id_device, align 4, !dbg !3645
  %32 = load i16*, i16** %id, align 8, !dbg !3646
  %arrayidx50 = getelementptr i16, i16* %32, i64 10, !dbg !3646
  %33 = load i16, i16* %arrayidx50, align 2, !dbg !3646
  %34 = call i1 @llvm.is.constant.i16(i16 %33), !dbg !3646
  br i1 %34, label %cond.true51, label %cond.false63, !dbg !3646

cond.true51:                                      ; preds = %cond.end48
  %35 = load i16*, i16** %id, align 8, !dbg !3646
  %arrayidx52 = getelementptr i16, i16* %35, i64 10, !dbg !3646
  %36 = load i16, i16* %arrayidx52, align 2, !dbg !3646
  %conv53 = zext i16 %36 to i32, !dbg !3646
  %and54 = and i32 %conv53, 255, !dbg !3646
  %shl55 = shl i32 %and54, 8, !dbg !3646
  %37 = load i16*, i16** %id, align 8, !dbg !3646
  %arrayidx56 = getelementptr i16, i16* %37, i64 10, !dbg !3646
  %38 = load i16, i16* %arrayidx56, align 2, !dbg !3646
  %conv57 = zext i16 %38 to i32, !dbg !3646
  %and58 = and i32 %conv57, 65280, !dbg !3646
  %shr59 = ashr i32 %and58, 8, !dbg !3646
  %or60 = or i32 %shl55, %shr59, !dbg !3646
  %conv61 = trunc i32 %or60 to i16, !dbg !3646
  %conv62 = zext i16 %conv61 to i32, !dbg !3646
  br label %cond.end67, !dbg !3646

cond.false63:                                     ; preds = %cond.end48
  %39 = load i16*, i16** %id, align 8, !dbg !3646
  %arrayidx64 = getelementptr i16, i16* %39, i64 10, !dbg !3646
  %40 = load i16, i16* %arrayidx64, align 2, !dbg !3646
  %call65 = call zeroext i16 @__fswab16(i16 zeroext %40) #11, !dbg !3646
  %conv66 = zext i16 %call65 to i32, !dbg !3646
  br label %cond.end67, !dbg !3646

cond.end67:                                       ; preds = %cond.false63, %cond.true51
  %cond68 = phi i32 [ %conv62, %cond.true51 ], [ %conv66, %cond.false63 ], !dbg !3646
  %conv69 = trunc i32 %cond68 to i16, !dbg !3646
  store i16 %conv69, i16* %flags, align 2, !dbg !3647
  %41 = load i16, i16* %flags, align 2, !dbg !3648
  %conv70 = zext i16 %41 to i32, !dbg !3648
  %and71 = and i32 %conv70, 2, !dbg !3649
  %tobool = icmp ne i32 %and71, 0, !dbg !3650
  %lnot = xor i1 %tobool, true, !dbg !3650
  %lnot72 = xor i1 %lnot, true, !dbg !3651
  %lnot.ext = zext i1 %lnot72 to i32, !dbg !3651
  %42 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3652
  %speed_8mhz = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %42, i32 0, i32 10, !dbg !3653
  %43 = trunc i32 %lnot.ext to i8, !dbg !3654
  %bf.load = load i8, i8* %speed_8mhz, align 1, !dbg !3654
  %bf.value = and i8 %43, 1, !dbg !3654
  %bf.shl = shl i8 %bf.value, 1, !dbg !3654
  %bf.clear = and i8 %bf.load, -3, !dbg !3654
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !3654
  store i8 %bf.set, i8* %speed_8mhz, align 1, !dbg !3654
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !3654
  %44 = load i16, i16* %flags, align 2, !dbg !3655
  %conv73 = zext i16 %44 to i32, !dbg !3655
  %and74 = and i32 %conv73, 4, !dbg !3656
  %tobool75 = icmp ne i32 %and74, 0, !dbg !3657
  %lnot76 = xor i1 %tobool75, true, !dbg !3657
  %lnot78 = xor i1 %lnot76, true, !dbg !3658
  %lnot.ext79 = zext i1 %lnot78 to i32, !dbg !3658
  %45 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3659
  %speed_32mhz = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %45, i32 0, i32 10, !dbg !3660
  %46 = trunc i32 %lnot.ext79 to i8, !dbg !3661
  %bf.load80 = load i8, i8* %speed_32mhz, align 1, !dbg !3661
  %bf.value81 = and i8 %46, 1, !dbg !3661
  %bf.shl82 = shl i8 %bf.value81, 2, !dbg !3661
  %bf.clear83 = and i8 %bf.load80, -5, !dbg !3661
  %bf.set84 = or i8 %bf.clear83, %bf.shl82, !dbg !3661
  store i8 %bf.set84, i8* %speed_32mhz, align 1, !dbg !3661
  %bf.result.cast85 = zext i8 %bf.value81 to i32, !dbg !3661
  %47 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3662
  %call86 = call zeroext i16 @ipack_calc_crc2(%struct.ipack_device* %47) #9, !dbg !3663
  store i16 %call86, i16* %crc, align 2, !dbg !3664
  %48 = load i16, i16* %crc, align 2, !dbg !3665
  %conv87 = zext i16 %48 to i32, !dbg !3665
  %49 = load i16*, i16** %id, align 8, !dbg !3666
  %arrayidx88 = getelementptr i16, i16* %49, i64 12, !dbg !3666
  %50 = load i16, i16* %arrayidx88, align 2, !dbg !3666
  %51 = call i1 @llvm.is.constant.i16(i16 %50), !dbg !3666
  br i1 %51, label %cond.true89, label %cond.false101, !dbg !3666

cond.true89:                                      ; preds = %cond.end67
  %52 = load i16*, i16** %id, align 8, !dbg !3666
  %arrayidx90 = getelementptr i16, i16* %52, i64 12, !dbg !3666
  %53 = load i16, i16* %arrayidx90, align 2, !dbg !3666
  %conv91 = zext i16 %53 to i32, !dbg !3666
  %and92 = and i32 %conv91, 255, !dbg !3666
  %shl93 = shl i32 %and92, 8, !dbg !3666
  %54 = load i16*, i16** %id, align 8, !dbg !3666
  %arrayidx94 = getelementptr i16, i16* %54, i64 12, !dbg !3666
  %55 = load i16, i16* %arrayidx94, align 2, !dbg !3666
  %conv95 = zext i16 %55 to i32, !dbg !3666
  %and96 = and i32 %conv95, 65280, !dbg !3666
  %shr97 = ashr i32 %and96, 8, !dbg !3666
  %or98 = or i32 %shl93, %shr97, !dbg !3666
  %conv99 = trunc i32 %or98 to i16, !dbg !3666
  %conv100 = zext i16 %conv99 to i32, !dbg !3666
  br label %cond.end105, !dbg !3666

cond.false101:                                    ; preds = %cond.end67
  %56 = load i16*, i16** %id, align 8, !dbg !3666
  %arrayidx102 = getelementptr i16, i16* %56, i64 12, !dbg !3666
  %57 = load i16, i16* %arrayidx102, align 2, !dbg !3666
  %call103 = call zeroext i16 @__fswab16(i16 zeroext %57) #11, !dbg !3666
  %conv104 = zext i16 %call103 to i32, !dbg !3666
  br label %cond.end105, !dbg !3666

cond.end105:                                      ; preds = %cond.false101, %cond.true89
  %cond106 = phi i32 [ %conv100, %cond.true89 ], [ %conv104, %cond.false101 ], !dbg !3666
  %cmp = icmp eq i32 %conv87, %cond106, !dbg !3667
  %conv107 = zext i1 %cmp to i32, !dbg !3667
  %58 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3668
  %id_crc_correct = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %58, i32 0, i32 10, !dbg !3669
  %59 = trunc i32 %conv107 to i8, !dbg !3670
  %bf.load108 = load i8, i8* %id_crc_correct, align 1, !dbg !3670
  %bf.value109 = and i8 %59, 1, !dbg !3670
  %bf.clear110 = and i8 %bf.load108, -2, !dbg !3670
  %bf.set111 = or i8 %bf.clear110, %bf.value109, !dbg !3670
  store i8 %bf.set111, i8* %id_crc_correct, align 1, !dbg !3670
  %bf.result.cast112 = zext i8 %bf.value109 to i32, !dbg !3670
  %60 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3671
  %id_crc_correct113 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %60, i32 0, i32 10, !dbg !3673
  %bf.load114 = load i8, i8* %id_crc_correct113, align 1, !dbg !3673
  %bf.clear115 = and i8 %bf.load114, 1, !dbg !3673
  %bf.cast = zext i8 %bf.clear115 to i32, !dbg !3673
  %tobool116 = icmp ne i32 %bf.cast, 0, !dbg !3671
  br i1 %tobool116, label %if.end, label %if.then, !dbg !3674

if.then:                                          ; preds = %cond.end105
  %61 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3675
  %dev117 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %61, i32 0, i32 2, !dbg !3675
  %62 = load i16*, i16** %id, align 8, !dbg !3675
  %arrayidx118 = getelementptr i16, i16* %62, i64 11, !dbg !3675
  %63 = load i16, i16* %arrayidx118, align 2, !dbg !3675
  %conv119 = zext i16 %63 to i32, !dbg !3675
  %64 = load i16, i16* %crc, align 2, !dbg !3675
  %conv120 = zext i16 %64 to i32, !dbg !3675
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i32 %conv119, i32 %conv120) #13, !dbg !3675
  br label %if.end, !dbg !3677

if.end:                                           ; preds = %if.then, %cond.end105
  ret void, !dbg !3678
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @ipack_calc_crc1(%struct.ipack_device* %dev) #0 !dbg !3679 {
entry:
  %dev.addr = alloca %struct.ipack_device*, align 8
  %c = alloca i8, align 1
  %crc = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.declare(metadata i8* %c, metadata !3684, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.declare(metadata i16* %crc, metadata !3686, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3688, metadata !DIExpression()), !dbg !3689
  store i16 -1, i16* %crc, align 2, !dbg !3690
  store i32 0, i32* %i, align 4, !dbg !3691
  br label %for.cond, !dbg !3693

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3694
  %conv = zext i32 %0 to i64, !dbg !3694
  %1 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3696
  %id_avail = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %1, i32 0, i32 6, !dbg !3697
  %2 = load i64, i64* %id_avail, align 8, !dbg !3697
  %cmp = icmp ult i64 %conv, %2, !dbg !3698
  br i1 %cmp, label %for.body, label %for.end, !dbg !3699

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !3700
  %cmp2 = icmp ne i32 %3, 11, !dbg !3702
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !3703

cond.true:                                        ; preds = %for.body
  %4 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3704
  %id = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %4, i32 0, i32 5, !dbg !3705
  %5 = load i8*, i8** %id, align 8, !dbg !3705
  %6 = load i32, i32* %i, align 4, !dbg !3706
  %idxprom = zext i32 %6 to i64, !dbg !3704
  %arrayidx = getelementptr i8, i8* %5, i64 %idxprom, !dbg !3704
  %7 = load i8, i8* %arrayidx, align 1, !dbg !3704
  %conv4 = zext i8 %7 to i32, !dbg !3704
  br label %cond.end, !dbg !3703

cond.false:                                       ; preds = %for.body
  br label %cond.end, !dbg !3703

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 0, %cond.false ], !dbg !3703
  %conv5 = trunc i32 %cond to i8, !dbg !3703
  store i8 %conv5, i8* %c, align 1, !dbg !3707
  %8 = load i16, i16* %crc, align 2, !dbg !3708
  %9 = load i8, i8* %c, align 1, !dbg !3709
  %call = call zeroext i16 @ipack_crc_byte(i16 zeroext %8, i8 zeroext %9) #9, !dbg !3710
  store i16 %call, i16* %crc, align 2, !dbg !3711
  br label %for.inc, !dbg !3712

for.inc:                                          ; preds = %cond.end
  %10 = load i32, i32* %i, align 4, !dbg !3713
  %inc = add i32 %10, 1, !dbg !3713
  store i32 %inc, i32* %i, align 4, !dbg !3713
  br label %for.cond, !dbg !3714, !llvm.loop !3715

for.end:                                          ; preds = %for.cond
  %11 = load i16, i16* %crc, align 2, !dbg !3717
  %conv6 = zext i16 %11 to i32, !dbg !3717
  %neg = xor i32 %conv6, -1, !dbg !3718
  %conv7 = trunc i32 %neg to i16, !dbg !3718
  store i16 %conv7, i16* %crc, align 2, !dbg !3719
  %12 = load i16, i16* %crc, align 2, !dbg !3720
  %conv8 = zext i16 %12 to i32, !dbg !3720
  %and = and i32 %conv8, 255, !dbg !3721
  %conv9 = trunc i32 %and to i8, !dbg !3720
  ret i8 %conv9, !dbg !3722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @ipack_crc_byte(i16 zeroext %crc, i8 zeroext %c) #0 !dbg !3723 {
entry:
  %crc.addr = alloca i16, align 2
  %c.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i16 %crc, i16* %crc.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %crc.addr, metadata !3726, metadata !DIExpression()), !dbg !3727
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3730, metadata !DIExpression()), !dbg !3731
  %0 = load i8, i8* %c.addr, align 1, !dbg !3732
  %conv = zext i8 %0 to i32, !dbg !3732
  %shl = shl i32 %conv, 8, !dbg !3733
  %1 = load i16, i16* %crc.addr, align 2, !dbg !3734
  %conv1 = zext i16 %1 to i32, !dbg !3734
  %xor = xor i32 %conv1, %shl, !dbg !3734
  %conv2 = trunc i32 %xor to i16, !dbg !3734
  store i16 %conv2, i16* %crc.addr, align 2, !dbg !3734
  store i32 0, i32* %i, align 4, !dbg !3735
  br label %for.cond, !dbg !3737

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3738
  %cmp = icmp slt i32 %2, 8, !dbg !3740
  br i1 %cmp, label %for.body, label %for.end, !dbg !3741

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %crc.addr, align 2, !dbg !3742
  %conv4 = zext i16 %3 to i32, !dbg !3742
  %shl5 = shl i32 %conv4, 1, !dbg !3743
  %4 = load i16, i16* %crc.addr, align 2, !dbg !3744
  %conv6 = zext i16 %4 to i32, !dbg !3744
  %and = and i32 %conv6, 32768, !dbg !3745
  %tobool = icmp ne i32 %and, 0, !dbg !3746
  %5 = zext i1 %tobool to i64, !dbg !3746
  %cond = select i1 %tobool, i32 4129, i32 0, !dbg !3746
  %xor7 = xor i32 %shl5, %cond, !dbg !3747
  %conv8 = trunc i32 %xor7 to i16, !dbg !3748
  store i16 %conv8, i16* %crc.addr, align 2, !dbg !3749
  br label %for.inc, !dbg !3750

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !3751
  %inc = add i32 %6, 1, !dbg !3751
  store i32 %inc, i32* %i, align 4, !dbg !3751
  br label %for.cond, !dbg !3752, !llvm.loop !3753

for.end:                                          ; preds = %for.cond
  %7 = load i16, i16* %crc.addr, align 2, !dbg !3755
  ret i16 %7, !dbg !3756
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #7 !dbg !3757 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !3761, metadata !DIExpression()), !dbg !3762
  %0 = load i16, i16* %val.addr, align 2, !dbg !3763
  %conv = zext i16 %0 to i32, !dbg !3763
  %and = and i32 %conv, 255, !dbg !3763
  %shl = shl i32 %and, 8, !dbg !3763
  %1 = load i16, i16* %val.addr, align 2, !dbg !3763
  %conv1 = zext i16 %1 to i32, !dbg !3763
  %and2 = and i32 %conv1, 65280, !dbg !3763
  %shr = ashr i32 %and2, 8, !dbg !3763
  %or = or i32 %shl, %shr, !dbg !3763
  %conv3 = trunc i32 %or to i16, !dbg !3763
  ret i16 %conv3, !dbg !3764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @ipack_calc_crc2(%struct.ipack_device* %dev) #0 !dbg !3765 {
entry:
  %dev.addr = alloca %struct.ipack_device*, align 8
  %c = alloca i8, align 1
  %crc = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.ipack_device* %dev, %struct.ipack_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ipack_device** %dev.addr, metadata !3768, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.declare(metadata i8* %c, metadata !3770, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.declare(metadata i16* %crc, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3774, metadata !DIExpression()), !dbg !3775
  store i16 -1, i16* %crc, align 2, !dbg !3776
  store i32 0, i32* %i, align 4, !dbg !3777
  br label %for.cond, !dbg !3779

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3780
  %conv = zext i32 %0 to i64, !dbg !3780
  %1 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3782
  %id_avail = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %1, i32 0, i32 6, !dbg !3783
  %2 = load i64, i64* %id_avail, align 8, !dbg !3783
  %cmp = icmp ult i64 %conv, %2, !dbg !3784
  br i1 %cmp, label %for.body, label %for.end, !dbg !3785

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !3786
  %cmp2 = icmp ne i32 %3, 24, !dbg !3788
  br i1 %cmp2, label %land.lhs.true, label %cond.false, !dbg !3789

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !3790
  %cmp4 = icmp ne i32 %4, 25, !dbg !3791
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !3792

cond.true:                                        ; preds = %land.lhs.true
  %5 = load %struct.ipack_device*, %struct.ipack_device** %dev.addr, align 8, !dbg !3793
  %id = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %5, i32 0, i32 5, !dbg !3794
  %6 = load i8*, i8** %id, align 8, !dbg !3794
  %7 = load i32, i32* %i, align 4, !dbg !3795
  %idxprom = zext i32 %7 to i64, !dbg !3793
  %arrayidx = getelementptr i8, i8* %6, i64 %idxprom, !dbg !3793
  %8 = load i8, i8* %arrayidx, align 1, !dbg !3793
  %conv6 = zext i8 %8 to i32, !dbg !3793
  br label %cond.end, !dbg !3792

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end, !dbg !3792

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv6, %cond.true ], [ 0, %cond.false ], !dbg !3792
  %conv7 = trunc i32 %cond to i8, !dbg !3792
  store i8 %conv7, i8* %c, align 1, !dbg !3796
  %9 = load i16, i16* %crc, align 2, !dbg !3797
  %10 = load i8, i8* %c, align 1, !dbg !3798
  %call = call zeroext i16 @ipack_crc_byte(i16 zeroext %9, i8 zeroext %10) #9, !dbg !3799
  store i16 %call, i16* %crc, align 2, !dbg !3800
  br label %for.inc, !dbg !3801

for.inc:                                          ; preds = %cond.end
  %11 = load i32, i32* %i, align 4, !dbg !3802
  %inc = add i32 %11, 1, !dbg !3802
  store i32 %inc, i32* %i, align 4, !dbg !3802
  br label %for.cond, !dbg !3803, !llvm.loop !3804

for.end:                                          ; preds = %for.cond
  %12 = load i16, i16* %crc, align 2, !dbg !3806
  %conv8 = zext i16 %12 to i32, !dbg !3806
  %neg = xor i32 %conv8, -1, !dbg !3807
  %conv9 = trunc i32 %neg to i16, !dbg !3807
  store i16 %conv9, i16* %crc, align 2, !dbg !3808
  %13 = load i16, i16* %crc, align 2, !dbg !3809
  ret i16 %13, !dbg !3810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ida_init(%struct.ida* %ida) #0 !dbg !3811 {
entry:
  %ida.addr = alloca %struct.ida*, align 8
  store %struct.ida* %ida, %struct.ida** %ida.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ida** %ida.addr, metadata !3815, metadata !DIExpression()), !dbg !3816
  %0 = load %struct.ida*, %struct.ida** %ida.addr, align 8, !dbg !3817
  %xa = getelementptr inbounds %struct.ida, %struct.ida* %0, i32 0, i32 0, !dbg !3818
  call void @xa_init_flags(%struct.xarray* %xa, i32 8388613) #9, !dbg !3819
  ret void, !dbg !3820
}

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xa_init_flags(%struct.xarray* %xa, i32 %flags) #0 !dbg !3821 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3825, metadata !DIExpression()), !dbg !3832
  %xa.addr = alloca %struct.xarray*, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.xarray* %xa, %struct.xarray** %xa.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xarray** %xa.addr, metadata !3835, metadata !DIExpression()), !dbg !3836
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3837, metadata !DIExpression()), !dbg !3838
  br label %do.body, !dbg !3839

do.body:                                          ; preds = %entry
  %0 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !3840
  %xa_lock = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i32 0, i32 0, !dbg !3840
  store %struct.spinlock* %xa_lock, %struct.spinlock** %lock.addr.i, align 8
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3841
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !3842
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !3842
  %3 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !3840
  %xa_lock1 = getelementptr inbounds %struct.xarray, %struct.xarray* %3, i32 0, i32 0, !dbg !3840
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !3840
  %rlock = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !3840
  %5 = bitcast %struct.spinlock* %xa_lock1 to i8*, !dbg !3840
  %6 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %6, i64 0, i1 false), !dbg !3840
  br label %do.end, !dbg !3840

do.end:                                           ; preds = %do.body
  %7 = load i32, i32* %flags.addr, align 4, !dbg !3843
  %8 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !3844
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %8, i32 0, i32 1, !dbg !3845
  store i32 %7, i32* %xa_flags, align 8, !dbg !3846
  %9 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !3847
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %9, i32 0, i32 2, !dbg !3848
  store i8* null, i8** %xa_head, align 8, !dbg !3849
  ret void, !dbg !3850
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2191, !2192, !2193, !2194}
!llvm.ident = !{!2195}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ipack_ida", scope: !2, file: !3, line: 18, type: !2188, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !77, globals: !2126, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ipack/ipack.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !72}
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
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !57, line: 305, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ipack_space", file: !64, line: 62, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/ipack.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DIEnumerator(name: "IPACK_IO_SPACE", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "IPACK_ID_SPACE", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "IPACK_INT_SPACE", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "IPACK_MEM8_SPACE", value: 3, isUnsigned: true)
!70 = !DIEnumerator(name: "IPACK_MEM16_SPACE", value: 4, isUnsigned: true)
!71 = !DIEnumerator(name: "IPACK_SPACE_COUNT", value: 5, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xa_lock_type", file: !73, line: 254, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "XA_LOCK_IRQ", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "XA_LOCK_BH", value: 2, isUnsigned: true)
!77 = !{!78, !80, !81, !2104, !2123, !409, !2124, !7, !2125}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !79, line: 148, baseType: !7)
!79 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipack_device", file: !64, line: 94, size: 6656, elements: !83)
!83 = !{!84, !85, !2082, !2083, !2087, !2095, !2097, !2098, !2099, !2100, !2101, !2102, !2103}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !82, file: !64, line: 95, baseType: !7, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !82, file: !64, line: 96, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipack_bus_device", file: !64, line: 171, size: 256, elements: !88)
!88 = !{!89, !93, !2055, !2056, !2057}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !87, file: !64, line: 172, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !92, line: 76, flags: DIFlagFwdDecl)
!92 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !64, line: 173, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !96)
!96 = !{!97, !1604, !1605, !1608, !1609, !1660, !1754, !1755, !1756, !1757, !1758, !1767, !1872, !1885, !1888, !1889, !1893, !1895, !1896, !1897, !1901, !1907, !1908, !1911, !1915, !2005, !2008, !2009, !2010, !2011, !2043, !2044, !2045, !2048, !2051, !2052, !2053, !2054}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !95, file: !30, line: 462, baseType: !98, size: 512)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !99, line: 64, size: 512, elements: !100)
!99 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !105, !111, !113, !174, !1442, !1594, !1599, !1600, !1601, !1602, !1603}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 65, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !98, file: !99, line: 66, baseType: !106, size: 128, offset: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !79, line: 178, size: 128, elements: !107)
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !79, line: 179, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !79, line: 179, baseType: !109, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !99, line: 67, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !98, file: !99, line: 68, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !99, line: 192, size: 704, elements: !116)
!116 = !{!117, !118, !134, !135}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !115, file: !99, line: 193, baseType: !106, size: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !115, file: !99, line: 194, baseType: !119, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !120, line: 83, baseType: !121)
!120 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !120, line: 71, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !120, line: 72, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !120, line: 72, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !124, file: !120, line: 73, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !120, line: 20, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !127, file: !120, line: 21, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !131, line: 25, baseType: !132)
!131 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 25, elements: !133)
!133 = !{}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !115, file: !99, line: 195, baseType: !98, size: 512, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !115, file: !99, line: 196, baseType: !136, size: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !99, line: 156, size: 192, elements: !139)
!139 = !{!140, !146, !151}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !138, file: !99, line: 157, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !114, !112}
!145 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !99, line: 158, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!102, !114, !112}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !138, file: !99, line: 159, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!145, !114, !112, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !99, line: 148, size: 20736, elements: !158)
!158 = !{!159, !164, !168, !169, !173}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !157, file: !99, line: 149, baseType: !160, size: 192)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 192, elements: !162)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!162 = !{!163}
!163 = !DISubrange(count: 3)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !157, file: !99, line: 150, baseType: !165, size: 4096, offset: 192)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 4096, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !157, file: !99, line: 151, baseType: !145, size: 32, offset: 4288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !157, file: !99, line: 152, baseType: !170, size: 16384, offset: 4320)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 16384, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 2048)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !157, file: !99, line: 153, baseType: !145, size: 32, offset: 20704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !98, file: !99, line: 69, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !99, line: 138, size: 448, elements: !177)
!177 = !{!178, !182, !212, !214, !1390, !1421, !1425}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !176, file: !99, line: 139, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !112}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !176, file: !99, line: 140, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !186, line: 230, size: 128, elements: !187)
!186 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !204}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !185, file: !186, line: 231, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !112, !197, !161}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !79, line: 60, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !194, line: 73, baseType: !195)
!194 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !194, line: 15, baseType: !196)
!196 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !186, line: 30, size: 128, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !186, line: 31, baseType: !102, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !198, file: !186, line: 32, baseType: !202, size: 16, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !79, line: 19, baseType: !203)
!203 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !185, file: !186, line: 232, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!192, !112, !197, !102, !208}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 55, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !194, line: 72, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !194, line: 16, baseType: !211)
!211 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !176, file: !99, line: 141, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !176, file: !99, line: 142, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !186, line: 84, size: 320, elements: !219)
!219 = !{!220, !221, !225, !1387, !1388}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !186, line: 85, baseType: !102, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !218, file: !186, line: 86, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!202, !112, !197, !145}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !218, file: !186, line: 88, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!202, !112, !229, !145}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !186, line: 168, size: 448, elements: !231)
!231 = !{!232, !233, !234, !235, !245, !246}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !230, file: !186, line: 169, baseType: !198, size: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !230, file: !186, line: 170, baseType: !208, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !230, file: !186, line: 171, baseType: !80, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !230, file: !186, line: 172, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!192, !239, !112, !229, !161, !242, !208}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !241, line: 526, flags: DIFlagFwdDecl)
!241 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !79, line: 46, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !194, line: 88, baseType: !244)
!244 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !230, file: !186, line: 174, baseType: !236, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !230, file: !186, line: 176, baseType: !247, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!145, !239, !112, !229, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !252, line: 305, size: 1472, elements: !253)
!252 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254, !255, !256, !257, !258, !266, !267, !1361, !1367, !1368, !1373, !1374, !1377, !1381, !1382, !1383, !1384, !1385}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !251, file: !252, line: 308, baseType: !211, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !251, file: !252, line: 309, baseType: !211, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !251, file: !252, line: 313, baseType: !250, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !251, file: !252, line: 313, baseType: !250, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !251, file: !252, line: 315, baseType: !259, size: 192, align: 64, offset: 256)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !260, line: 24, size: 192, align: 64, elements: !261)
!260 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !263, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !259, file: !260, line: 25, baseType: !211, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !259, file: !260, line: 26, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !259, file: !260, line: 27, baseType: !264, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !251, file: !252, line: 323, baseType: !211, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !251, file: !252, line: 327, baseType: !268, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !252, line: 388, size: 7296, elements: !270)
!270 = !{!271, !1357}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !252, line: 389, baseType: !272, size: 7296)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !252, line: 389, size: 7296, elements: !273)
!273 = !{!274, !275, !279, !285, !289, !290, !291, !292, !293, !301, !306, !307, !308, !309, !318, !319, !320, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !355, !363, !366, !414, !415, !1327, !1328, !1331, !1335, !1336, !1339, !1340, !1341, !1344, !1356}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !272, file: !252, line: 390, baseType: !250, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !272, file: !252, line: 391, baseType: !276, size: 64, offset: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !260, line: 31, size: 64, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !276, file: !260, line: 32, baseType: !264, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !272, file: !252, line: 392, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !281, line: 23, baseType: !282)
!281 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !283, line: 31, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !272, file: !252, line: 394, baseType: !286, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!211, !239, !211, !211, !211, !211}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !272, file: !252, line: 398, baseType: !211, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !272, file: !252, line: 399, baseType: !211, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !272, file: !252, line: 405, baseType: !211, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !272, file: !252, line: 406, baseType: !211, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !272, file: !252, line: 407, baseType: !294, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !241, line: 286, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 286, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !296, file: !241, line: 286, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !300, line: 18, baseType: !211)
!300 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!301 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !272, file: !252, line: 416, baseType: !302, size: 32, offset: 576)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !79, line: 168, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 166, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !303, file: !79, line: 167, baseType: !145, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !272, file: !252, line: 428, baseType: !302, size: 32, offset: 608)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !272, file: !252, line: 437, baseType: !302, size: 32, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !272, file: !252, line: 447, baseType: !302, size: 32, offset: 672)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !272, file: !252, line: 450, baseType: !310, size: 64, offset: 704)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !311, line: 13, baseType: !312)
!311 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !79, line: 175, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 173, size: 64, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !313, file: !79, line: 174, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !281, line: 22, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !283, line: 30, baseType: !244)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !272, file: !252, line: 452, baseType: !145, size: 32, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !272, file: !252, line: 454, baseType: !119, offset: 800)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !272, file: !252, line: 457, baseType: !321, size: 256, offset: 832)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !322, line: 35, size: 256, elements: !323)
!322 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324, !325, !326, !328}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !321, file: !322, line: 36, baseType: !310, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !321, file: !322, line: 42, baseType: !310, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !321, file: !322, line: 46, baseType: !327, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !120, line: 29, baseType: !127)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !321, file: !322, line: 47, baseType: !106, size: 128, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !272, file: !252, line: 459, baseType: !106, size: 128, offset: 1088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !272, file: !252, line: 466, baseType: !211, size: 64, offset: 1216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !272, file: !252, line: 467, baseType: !211, size: 64, offset: 1280)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !272, file: !252, line: 469, baseType: !211, size: 64, offset: 1344)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !272, file: !252, line: 470, baseType: !211, size: 64, offset: 1408)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !272, file: !252, line: 471, baseType: !312, size: 64, offset: 1472)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !272, file: !252, line: 472, baseType: !211, size: 64, offset: 1536)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !272, file: !252, line: 473, baseType: !211, size: 64, offset: 1600)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !272, file: !252, line: 474, baseType: !211, size: 64, offset: 1664)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !272, file: !252, line: 475, baseType: !211, size: 64, offset: 1728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !272, file: !252, line: 477, baseType: !119, offset: 1792)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !272, file: !252, line: 478, baseType: !211, size: 64, offset: 1792)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !272, file: !252, line: 478, baseType: !211, size: 64, offset: 1856)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !272, file: !252, line: 478, baseType: !211, size: 64, offset: 1920)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !272, file: !252, line: 478, baseType: !211, size: 64, offset: 1984)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !272, file: !252, line: 479, baseType: !211, size: 64, offset: 2048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !272, file: !252, line: 479, baseType: !211, size: 64, offset: 2112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !272, file: !252, line: 479, baseType: !211, size: 64, offset: 2176)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !272, file: !252, line: 480, baseType: !211, size: 64, offset: 2240)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !272, file: !252, line: 480, baseType: !211, size: 64, offset: 2304)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !272, file: !252, line: 480, baseType: !211, size: 64, offset: 2368)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !272, file: !252, line: 480, baseType: !211, size: 64, offset: 2432)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !272, file: !252, line: 482, baseType: !352, size: 2816, offset: 2496)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 2816, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 44)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !272, file: !252, line: 488, baseType: !356, size: 256, offset: 5312)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !357, line: 60, size: 256, elements: !358)
!357 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !356, file: !357, line: 61, baseType: !360, size: 256)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 4)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !272, file: !252, line: 490, baseType: !364, size: 64, offset: 5568)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !252, line: 490, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !272, file: !252, line: 493, baseType: !367, size: 896, offset: 5632)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !368, line: 53, baseType: !369)
!368 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 13, size: 896, elements: !370)
!370 = !{!371, !372, !373, !374, !377, !378, !385, !386, !406, !407, !410}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !369, file: !368, line: 18, baseType: !280, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !369, file: !368, line: 28, baseType: !312, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !369, file: !368, line: 31, baseType: !321, size: 256, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !369, file: !368, line: 32, baseType: !375, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !368, line: 32, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !369, file: !368, line: 37, baseType: !203, size: 16, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !369, file: !368, line: 40, baseType: !379, size: 192, offset: 512)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !380, line: 53, size: 192, elements: !381)
!380 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382, !383, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !379, file: !380, line: 54, baseType: !310, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !379, file: !380, line: 55, baseType: !119, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !379, file: !380, line: 59, baseType: !106, size: 128, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !369, file: !368, line: 41, baseType: !80, size: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !369, file: !368, line: 42, baseType: !387, size: 64, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !390, line: 13, size: 896, elements: !391)
!390 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !389, file: !390, line: 14, baseType: !80, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !389, file: !390, line: 15, baseType: !211, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !389, file: !390, line: 17, baseType: !211, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !389, file: !390, line: 17, baseType: !211, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !389, file: !390, line: 19, baseType: !196, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !389, file: !390, line: 21, baseType: !196, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !389, file: !390, line: 22, baseType: !196, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !389, file: !390, line: 23, baseType: !196, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !389, file: !390, line: 24, baseType: !196, size: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !389, file: !390, line: 25, baseType: !196, size: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !389, file: !390, line: 26, baseType: !196, size: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !389, file: !390, line: 27, baseType: !196, size: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !389, file: !390, line: 28, baseType: !196, size: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !389, file: !390, line: 29, baseType: !196, size: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !369, file: !368, line: 44, baseType: !302, size: 32, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !369, file: !368, line: 50, baseType: !408, size: 16, offset: 864)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !281, line: 19, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !283, line: 24, baseType: !203)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !369, file: !368, line: 51, baseType: !411, size: 16, offset: 880)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !281, line: 18, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !283, line: 23, baseType: !413)
!413 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !252, line: 495, baseType: !211, size: 64, offset: 6528)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !272, file: !252, line: 497, baseType: !416, size: 64, offset: 6592)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !252, line: 381, size: 384, elements: !418)
!418 = !{!419, !420, !1326}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !417, file: !252, line: 382, baseType: !302, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !417, file: !252, line: 383, baseType: !421, size: 128, offset: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !252, line: 376, size: 128, elements: !422)
!422 = !{!423, !1324}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !421, file: !252, line: 377, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !426, line: 640, size: 48640, elements: !427)
!426 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !436, !438, !439, !445, !446, !447, !448, !449, !450, !451, !452, !456, !474, !485, !580, !581, !582, !593, !594, !596, !597, !598, !599, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !678, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !734, !736, !737, !738, !750, !752, !753, !754, !755, !756, !762, !763, !764, !765, !766, !767, !768, !780, !785, !790, !791, !792, !795, !799, !802, !805, !808, !811, !815, !818, !821, !827, !828, !829, !835, !836, !837, !838, !839, !848, !849, !850, !851, !852, !857, !858, !859, !862, !863, !866, !869, !872, !875, !878, !881, !882, !962, !965, !968, !969, !972, !973, !974, !980, !981, !982, !995, !996, !997, !1009, !1014, !1017, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !425, file: !426, line: 646, baseType: !429, size: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !430, line: 56, size: 128, elements: !431)
!430 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !430, line: 57, baseType: !211, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !429, file: !430, line: 58, baseType: !434, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !281, line: 21, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !283, line: 27, baseType: !7)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !425, file: !426, line: 649, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !196)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !425, file: !426, line: 657, baseType: !80, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !425, file: !426, line: 658, baseType: !440, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !441, line: 113, baseType: !442)
!441 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !441, line: 111, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !442, file: !441, line: 112, baseType: !302, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !426, line: 660, baseType: !7, size: 32, offset: 288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !425, file: !426, line: 661, baseType: !7, size: 32, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !425, file: !426, line: 684, baseType: !145, size: 32, offset: 352)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !425, file: !426, line: 686, baseType: !145, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !425, file: !426, line: 687, baseType: !145, size: 32, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !425, file: !426, line: 688, baseType: !145, size: 32, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !425, file: !426, line: 689, baseType: !7, size: 32, offset: 480)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !425, file: !426, line: 691, baseType: !453, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !426, line: 691, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !425, file: !426, line: 692, baseType: !457, size: 832, offset: 576)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !426, line: 451, size: 832, elements: !458)
!458 = !{!459, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !457, file: !426, line: 453, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !426, line: 325, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !460, file: !426, line: 326, baseType: !211, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !460, file: !426, line: 327, baseType: !434, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !457, file: !426, line: 454, baseType: !259, size: 192, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !457, file: !426, line: 455, baseType: !106, size: 128, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !457, file: !426, line: 456, baseType: !7, size: 32, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !457, file: !426, line: 458, baseType: !280, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !457, file: !426, line: 459, baseType: !280, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !457, file: !426, line: 460, baseType: !280, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !457, file: !426, line: 461, baseType: !280, size: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !457, file: !426, line: 463, baseType: !280, size: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !457, file: !426, line: 465, baseType: !473, offset: 832)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !426, line: 415, elements: !133)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !425, file: !426, line: 693, baseType: !475, size: 384, offset: 1408)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !426, line: 489, size: 384, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !475, file: !426, line: 490, baseType: !106, size: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !475, file: !426, line: 491, baseType: !211, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !475, file: !426, line: 492, baseType: !211, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !475, file: !426, line: 493, baseType: !7, size: 32, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !475, file: !426, line: 494, baseType: !203, size: 16, offset: 288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !475, file: !426, line: 495, baseType: !203, size: 16, offset: 304)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !475, file: !426, line: 497, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !425, file: !426, line: 697, baseType: !486, size: 1792, offset: 1792)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !426, line: 507, size: 1792, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !577, !578}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !486, file: !426, line: 508, baseType: !259, size: 192, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !486, file: !426, line: 515, baseType: !280, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !486, file: !426, line: 516, baseType: !280, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !486, file: !426, line: 517, baseType: !280, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !486, file: !426, line: 518, baseType: !280, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !486, file: !426, line: 519, baseType: !280, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !486, file: !426, line: 526, baseType: !316, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !486, file: !426, line: 527, baseType: !280, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !426, line: 528, baseType: !7, size: 32, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !486, file: !426, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !486, file: !426, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !486, file: !426, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !486, file: !426, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !486, file: !426, line: 563, baseType: !502, size: 512, offset: 704)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !503)
!503 = !{!504, !512, !513, !518, !570, !574, !575, !576}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !6, line: 119, baseType: !505, size: 256)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !506, line: 9, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !506, line: 10, baseType: !259, size: 192, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !505, file: !506, line: 11, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !511, line: 29, baseType: !316)
!511 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !502, file: !6, line: 120, baseType: !510, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !502, file: !6, line: 121, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!5, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !502, file: !6, line: 122, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !521)
!521 = !{!522, !542, !543, !546, !556, !557, !565, !569}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !520, file: !6, line: 160, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !6, line: 215, baseType: !327)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !524, file: !6, line: 216, baseType: !7, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !524, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !524, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !524, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !524, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !524, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !524, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !524, file: !6, line: 233, baseType: !510, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !524, file: !6, line: 234, baseType: !517, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !524, file: !6, line: 235, baseType: !510, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !524, file: !6, line: 236, baseType: !517, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !524, file: !6, line: 237, baseType: !539, size: 4096, offset: 512)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 4096, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !520, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !520, file: !6, line: 162, baseType: !544, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !79, line: 27, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !194, line: 96, baseType: !145)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !520, file: !6, line: 163, baseType: !547, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !548, line: 276, baseType: !549)
!548 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !548, line: 276, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !549, file: !548, line: 276, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !548, line: 70, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !548, line: 65, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !553, file: !548, line: 66, baseType: !7, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !520, file: !6, line: 164, baseType: !517, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !520, file: !6, line: 165, baseType: !558, size: 128, offset: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !506, line: 14, size: 128, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !558, file: !506, line: 15, baseType: !561, size: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !260, line: 125, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !561, file: !260, line: 126, baseType: !276, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !561, file: !260, line: 127, baseType: !264, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !520, file: !6, line: 166, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!510}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !520, file: !6, line: 167, baseType: !510, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !502, file: !6, line: 123, baseType: !571, size: 8, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !281, line: 17, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !283, line: 21, baseType: !573)
!573 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !502, file: !6, line: 124, baseType: !571, size: 8, offset: 456)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !502, file: !6, line: 125, baseType: !571, size: 8, offset: 464)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !502, file: !6, line: 126, baseType: !571, size: 8, offset: 472)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !486, file: !426, line: 572, baseType: !502, size: 512, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !486, file: !426, line: 580, baseType: !579, size: 64, offset: 1728)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !425, file: !426, line: 721, baseType: !7, size: 32, offset: 3584)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !425, file: !426, line: 722, baseType: !145, size: 32, offset: 3616)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !425, file: !426, line: 723, baseType: !583, size: 64, offset: 3648)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !586, line: 17, baseType: !587)
!586 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !586, line: 17, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !587, file: !586, line: 17, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 64, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 1)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !425, file: !426, line: 724, baseType: !585, size: 64, offset: 3712)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !425, file: !426, line: 749, baseType: !595, offset: 3776)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !426, line: 290, elements: !133)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !425, file: !426, line: 751, baseType: !106, size: 128, offset: 3776)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !425, file: !426, line: 757, baseType: !268, size: 64, offset: 3904)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !425, file: !426, line: 758, baseType: !268, size: 64, offset: 3968)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !425, file: !426, line: 761, baseType: !600, size: 320, offset: 4032)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !357, line: 34, size: 320, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !600, file: !357, line: 35, baseType: !280, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !600, file: !357, line: 36, baseType: !604, size: 256, offset: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !361)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !425, file: !426, line: 766, baseType: !145, size: 32, offset: 4352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !425, file: !426, line: 767, baseType: !145, size: 32, offset: 4384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !425, file: !426, line: 768, baseType: !145, size: 32, offset: 4416)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !425, file: !426, line: 770, baseType: !145, size: 32, offset: 4448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !425, file: !426, line: 772, baseType: !211, size: 64, offset: 4480)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !425, file: !426, line: 775, baseType: !7, size: 32, offset: 4544)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !425, file: !426, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !425, file: !426, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !425, file: !426, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !425, file: !426, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !425, file: !426, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !425, file: !426, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !425, file: !426, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !425, file: !426, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !425, file: !426, line: 831, baseType: !211, size: 64, offset: 4672)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !425, file: !426, line: 833, baseType: !621, size: 384, offset: 4736)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !622)
!622 = !{!623, !628}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !621, file: !12, line: 26, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!196, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !12, line: 27, baseType: !629, size: 320, offset: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !12, line: 27, size: 320, elements: !630)
!630 = !{!631, !641, !668}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !629, file: !12, line: 36, baseType: !632, size: 320)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !12, line: 29, size: 320, elements: !633)
!633 = !{!634, !636, !637, !638, !639, !640}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !632, file: !12, line: 30, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !632, file: !12, line: 31, baseType: !434, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !12, line: 32, baseType: !434, size: 32, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !632, file: !12, line: 33, baseType: !434, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !632, file: !12, line: 34, baseType: !280, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !632, file: !12, line: 35, baseType: !635, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !629, file: !12, line: 46, baseType: !642, size: 192)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !12, line: 38, size: 192, elements: !643)
!643 = !{!644, !645, !646, !667}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !642, file: !12, line: 39, baseType: !544, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !12, line: 41, baseType: !647, size: 64, offset: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !12, line: 41, size: 64, elements: !648)
!648 = !{!649, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !647, file: !12, line: 42, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !652, line: 7, size: 128, elements: !653)
!652 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!653 = !{!654, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !651, file: !652, line: 8, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !194, line: 93, baseType: !244)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !651, file: !652, line: 9, baseType: !244, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !647, file: !12, line: 43, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !660, line: 7, size: 64, elements: !661)
!660 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!661 = !{!662, !666}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !659, file: !660, line: 8, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !660, line: 5, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !281, line: 20, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !283, line: 26, baseType: !145)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !659, file: !660, line: 9, baseType: !664, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !642, file: !12, line: 45, baseType: !280, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !629, file: !12, line: 54, baseType: !669, size: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !12, line: 48, size: 256, elements: !670)
!670 = !{!671, !674, !675, !676, !677}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !669, file: !12, line: 49, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !669, file: !12, line: 50, baseType: !145, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !669, file: !12, line: 51, baseType: !145, size: 32, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !669, file: !12, line: 52, baseType: !211, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !669, file: !12, line: 53, baseType: !211, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !425, file: !426, line: 835, baseType: !679, size: 32, offset: 5120)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !79, line: 22, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !194, line: 28, baseType: !145)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !425, file: !426, line: 836, baseType: !679, size: 32, offset: 5152)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !425, file: !426, line: 840, baseType: !211, size: 64, offset: 5184)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !425, file: !426, line: 849, baseType: !424, size: 64, offset: 5248)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !425, file: !426, line: 852, baseType: !424, size: 64, offset: 5312)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !425, file: !426, line: 857, baseType: !106, size: 128, offset: 5376)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !425, file: !426, line: 858, baseType: !106, size: 128, offset: 5504)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !425, file: !426, line: 859, baseType: !424, size: 64, offset: 5632)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !425, file: !426, line: 867, baseType: !106, size: 128, offset: 5696)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !425, file: !426, line: 868, baseType: !106, size: 128, offset: 5824)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !425, file: !426, line: 871, baseType: !691, size: 64, offset: 5952)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !693, line: 59, size: 768, elements: !694)
!693 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!694 = !{!695, !696, !697, !698, !709, !710, !717, !726}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !692, file: !693, line: 61, baseType: !440, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !692, file: !693, line: 62, baseType: !7, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !693, line: 63, baseType: !119, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !692, file: !693, line: 65, baseType: !699, size: 256, offset: 64)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 256, elements: !361)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !79, line: 182, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !700, file: !79, line: 183, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !79, line: 186, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !79, line: 187, baseType: !703, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !704, file: !79, line: 187, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !692, file: !693, line: 66, baseType: !700, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !692, file: !693, line: 68, baseType: !711, size: 128, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !712, line: 40, baseType: !713)
!712 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !712, line: 36, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !713, file: !712, line: 37, baseType: !119)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !713, file: !712, line: 38, baseType: !106, size: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !692, file: !693, line: 69, baseType: !718, size: 128, align: 64, offset: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !79, line: 216, size: 128, align: 64, elements: !719)
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !79, line: 217, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !718, file: !79, line: 218, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !721}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !692, file: !693, line: 70, baseType: !727, size: 128, offset: 640)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 128, elements: !591)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !693, line: 54, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !728, file: !693, line: 55, baseType: !145, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !728, file: !693, line: 56, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !693, line: 56, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !425, file: !426, line: 872, baseType: !735, size: 512, offset: 6016)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 512, elements: !361)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !425, file: !426, line: 873, baseType: !106, size: 128, offset: 6528)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !425, file: !426, line: 874, baseType: !106, size: 128, offset: 6656)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !425, file: !426, line: 876, baseType: !739, size: 64, offset: 6784)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !741, line: 26, size: 192, elements: !742)
!741 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !740, file: !741, line: 27, baseType: !7, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !740, file: !741, line: 28, baseType: !745, size: 128, offset: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !746, line: 43, size: 128, elements: !747)
!746 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !745, file: !746, line: 44, baseType: !327)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !745, file: !746, line: 45, baseType: !106, size: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !425, file: !426, line: 879, baseType: !751, size: 64, offset: 6848)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !425, file: !426, line: 882, baseType: !751, size: 64, offset: 6912)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !425, file: !426, line: 884, baseType: !280, size: 64, offset: 6976)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !425, file: !426, line: 885, baseType: !280, size: 64, offset: 7040)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !425, file: !426, line: 890, baseType: !280, size: 64, offset: 7104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !425, file: !426, line: 891, baseType: !757, size: 128, offset: 7168)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !426, line: 242, size: 128, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !757, file: !426, line: 244, baseType: !280, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !757, file: !426, line: 245, baseType: !280, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !757, file: !426, line: 246, baseType: !327, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !425, file: !426, line: 900, baseType: !211, size: 64, offset: 7296)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !425, file: !426, line: 901, baseType: !211, size: 64, offset: 7360)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !425, file: !426, line: 904, baseType: !280, size: 64, offset: 7424)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !425, file: !426, line: 907, baseType: !280, size: 64, offset: 7488)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !425, file: !426, line: 910, baseType: !211, size: 64, offset: 7552)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !425, file: !426, line: 911, baseType: !211, size: 64, offset: 7616)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !425, file: !426, line: 914, baseType: !769, size: 640, offset: 7680)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !770, line: 123, size: 640, elements: !771)
!770 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !778, !779}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !769, file: !770, line: 124, baseType: !773, size: 576)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 576, elements: !162)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !770, line: 108, size: 192, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !774, file: !770, line: 109, baseType: !280, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !774, file: !770, line: 110, baseType: !558, size: 128, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !769, file: !770, line: 125, baseType: !7, size: 32, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !769, file: !770, line: 126, baseType: !7, size: 32, offset: 608)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !425, file: !426, line: 917, baseType: !781, size: 192, offset: 8320)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !770, line: 134, size: 192, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !781, file: !770, line: 135, baseType: !718, size: 128, align: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !781, file: !770, line: 136, baseType: !7, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !425, file: !426, line: 923, baseType: !786, size: 64, offset: 8512)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !789, line: 11, flags: DIFlagFwdDecl)
!789 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!790 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !425, file: !426, line: 926, baseType: !786, size: 64, offset: 8576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !425, file: !426, line: 929, baseType: !786, size: 64, offset: 8640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !425, file: !426, line: 933, baseType: !793, size: 64, offset: 8704)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !426, line: 933, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !425, file: !426, line: 943, baseType: !796, size: 128, offset: 8768)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 16)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !425, file: !426, line: 945, baseType: !800, size: 64, offset: 8896)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !426, line: 49, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !425, file: !426, line: 956, baseType: !803, size: 64, offset: 8960)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !426, line: 45, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !425, file: !426, line: 959, baseType: !806, size: 64, offset: 9024)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !426, line: 959, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !425, file: !426, line: 962, baseType: !809, size: 64, offset: 9088)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !426, line: 66, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !425, file: !426, line: 966, baseType: !812, size: 64, offset: 9152)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !814, line: 35, flags: DIFlagFwdDecl)
!814 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!815 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !425, file: !426, line: 969, baseType: !816, size: 64, offset: 9216)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !770, line: 223, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !425, file: !426, line: 970, baseType: !819, size: 64, offset: 9280)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !426, line: 62, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !425, file: !426, line: 971, baseType: !822, size: 64, offset: 9344)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !823, line: 25, baseType: !824)
!823 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !823, line: 23, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !824, file: !823, line: 24, baseType: !590, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !425, file: !426, line: 972, baseType: !822, size: 64, offset: 9408)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !425, file: !426, line: 974, baseType: !822, size: 64, offset: 9472)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !425, file: !426, line: 975, baseType: !830, size: 192, offset: 9536)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !831, line: 30, size: 192, elements: !832)
!831 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !830, file: !831, line: 31, baseType: !106, size: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !830, file: !831, line: 32, baseType: !822, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !425, file: !426, line: 976, baseType: !211, size: 64, offset: 9728)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !425, file: !426, line: 977, baseType: !208, size: 64, offset: 9792)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !425, file: !426, line: 978, baseType: !7, size: 32, offset: 9856)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !425, file: !426, line: 980, baseType: !721, size: 64, offset: 9920)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !425, file: !426, line: 989, baseType: !840, size: 128, offset: 9984)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !841, line: 35, size: 128, elements: !842)
!841 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !840, file: !841, line: 36, baseType: !145, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !840, file: !841, line: 37, baseType: !302, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !840, file: !841, line: 38, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !841, line: 23, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !425, file: !426, line: 992, baseType: !280, size: 64, offset: 10112)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !425, file: !426, line: 993, baseType: !280, size: 64, offset: 10176)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !425, file: !426, line: 996, baseType: !119, offset: 10240)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !425, file: !426, line: 999, baseType: !327, offset: 10240)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !425, file: !426, line: 1001, baseType: !853, size: 64, offset: 10240)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !426, line: 636, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !426, line: 637, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !425, file: !426, line: 1005, baseType: !561, size: 128, offset: 10304)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !425, file: !426, line: 1007, baseType: !424, size: 64, offset: 10432)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !425, file: !426, line: 1009, baseType: !860, size: 64, offset: 10496)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !426, line: 1009, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !425, file: !426, line: 1043, baseType: !80, size: 64, offset: 10560)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !425, file: !426, line: 1046, baseType: !864, size: 64, offset: 10624)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !426, line: 41, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !425, file: !426, line: 1050, baseType: !867, size: 64, offset: 10688)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !426, line: 42, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !425, file: !426, line: 1054, baseType: !870, size: 64, offset: 10752)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !426, line: 55, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !425, file: !426, line: 1056, baseType: !873, size: 64, offset: 10816)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !426, line: 40, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !425, file: !426, line: 1058, baseType: !876, size: 64, offset: 10880)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !426, line: 47, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !425, file: !426, line: 1061, baseType: !879, size: 64, offset: 10944)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !426, line: 43, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !425, file: !426, line: 1064, baseType: !211, size: 64, offset: 11008)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !425, file: !426, line: 1065, baseType: !883, size: 64, offset: 11072)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !831, line: 14, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !831, line: 12, size: 384, elements: !886)
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !831, line: 13, baseType: !888, size: 384)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !885, file: !831, line: 13, size: 384, elements: !889)
!889 = !{!890, !891, !892, !893}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !888, file: !831, line: 13, baseType: !145, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !888, file: !831, line: 13, baseType: !145, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !888, file: !831, line: 13, baseType: !145, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !888, file: !831, line: 13, baseType: !894, size: 256, offset: 128)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !895, line: 32, size: 256, elements: !896)
!895 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!896 = !{!897, !903, !916, !922, !931, !951, !956}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !894, file: !895, line: 37, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 34, size: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !898, file: !895, line: 35, baseType: !680, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !898, file: !895, line: 36, baseType: !902, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !194, line: 49, baseType: !7)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !894, file: !895, line: 45, baseType: !904, size: 192)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 40, size: 192, elements: !905)
!905 = !{!906, !908, !909, !915}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !904, file: !895, line: 41, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !194, line: 95, baseType: !145)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !904, file: !895, line: 42, baseType: !145, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !904, file: !895, line: 43, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !895, line: 11, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !895, line: 8, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !911, file: !895, line: 9, baseType: !145, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !911, file: !895, line: 10, baseType: !80, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !904, file: !895, line: 44, baseType: !145, size: 32, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !894, file: !895, line: 52, baseType: !917, size: 128)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 48, size: 128, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !917, file: !895, line: 49, baseType: !680, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !917, file: !895, line: 50, baseType: !902, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !917, file: !895, line: 51, baseType: !910, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !894, file: !895, line: 61, baseType: !923, size: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 55, size: 256, elements: !924)
!924 = !{!925, !926, !927, !928, !930}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !923, file: !895, line: 56, baseType: !680, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !923, file: !895, line: 57, baseType: !902, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !923, file: !895, line: 58, baseType: !145, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !923, file: !895, line: 59, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !194, line: 94, baseType: !195)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !923, file: !895, line: 60, baseType: !929, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !894, file: !895, line: 95, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 64, size: 256, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !932, file: !895, line: 65, baseType: !80, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !895, line: 77, baseType: !936, size: 192, offset: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !932, file: !895, line: 77, size: 192, elements: !937)
!937 = !{!938, !939, !946}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !936, file: !895, line: 82, baseType: !413, size: 16)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !936, file: !895, line: 88, baseType: !940, size: 192)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !895, line: 84, size: 192, elements: !941)
!941 = !{!942, !944, !945}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !940, file: !895, line: 85, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !540)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !940, file: !895, line: 86, baseType: !80, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !940, file: !895, line: 87, baseType: !80, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !936, file: !895, line: 93, baseType: !947, size: 96)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !895, line: 90, size: 96, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !947, file: !895, line: 91, baseType: !943, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !947, file: !895, line: 92, baseType: !435, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !894, file: !895, line: 101, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 98, size: 128, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !952, file: !895, line: 99, baseType: !196, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !952, file: !895, line: 100, baseType: !145, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !894, file: !895, line: 108, baseType: !957, size: 128)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 104, size: 128, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !957, file: !895, line: 105, baseType: !80, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !957, file: !895, line: 106, baseType: !145, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !957, file: !895, line: 107, baseType: !7, size: 32, offset: 96)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !425, file: !426, line: 1067, baseType: !963, offset: 11136)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !964, line: 12, elements: !133)
!964 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !425, file: !426, line: 1099, baseType: !966, size: 64, offset: 11136)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !426, line: 56, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !425, file: !426, line: 1103, baseType: !106, size: 128, offset: 11200)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !425, file: !426, line: 1104, baseType: !970, size: 64, offset: 11328)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !426, line: 46, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !425, file: !426, line: 1105, baseType: !379, size: 192, offset: 11392)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !425, file: !426, line: 1106, baseType: !7, size: 32, offset: 11584)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !425, file: !426, line: 1109, baseType: !975, size: 128, offset: 11648)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 128, elements: !978)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !426, line: 51, flags: DIFlagFwdDecl)
!978 = !{!979}
!979 = !DISubrange(count: 2)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !425, file: !426, line: 1110, baseType: !379, size: 192, offset: 11776)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !425, file: !426, line: 1111, baseType: !106, size: 128, offset: 11968)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !425, file: !426, line: 1173, baseType: !983, size: 64, offset: 12096)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !985, line: 62, size: 256, align: 256, elements: !986)
!985 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !988, !989, !994}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !984, file: !985, line: 75, baseType: !435, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !984, file: !985, line: 90, baseType: !435, size: 32, offset: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !984, file: !985, line: 124, baseType: !990, size: 64, offset: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !984, file: !985, line: 109, size: 64, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !990, file: !985, line: 110, baseType: !282, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !990, file: !985, line: 112, baseType: !282, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !985, line: 144, baseType: !435, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !425, file: !426, line: 1174, baseType: !434, size: 32, offset: 12160)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !425, file: !426, line: 1179, baseType: !211, size: 64, offset: 12224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !425, file: !426, line: 1182, baseType: !998, size: 128, offset: 12288)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !357, line: 76, size: 128, elements: !999)
!999 = !{!1000, !1005, !1008}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !998, file: !357, line: 85, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1002, line: 7, size: 64, elements: !1003)
!1002 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1001, file: !1002, line: 12, baseType: !587, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !998, file: !357, line: 88, baseType: !1006, size: 8, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !79, line: 30, baseType: !1007)
!1007 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !998, file: !357, line: 95, baseType: !1006, size: 8, offset: 72)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !426, line: 1184, baseType: !1010, size: 128, offset: 12416)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 1184, size: 128, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1010, file: !426, line: 1185, baseType: !440, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1010, file: !426, line: 1186, baseType: !718, size: 128, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !425, file: !426, line: 1190, baseType: !1015, size: 64, offset: 12544)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !426, line: 53, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !425, file: !426, line: 1192, baseType: !1018, size: 128, offset: 12608)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !357, line: 64, size: 128, elements: !1019)
!1019 = !{!1020, !1113, !1114}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1018, file: !357, line: 65, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !252, line: 68, size: 512, align: 128, elements: !1023)
!1023 = !{!1024, !1025, !1105, !1112}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1022, file: !252, line: 69, baseType: !211, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !252, line: 77, baseType: !1026, size: 320, offset: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !252, line: 77, size: 320, elements: !1027)
!1027 = !{!1028, !1037, !1042, !1070, !1078, !1084, !1097, !1104}
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !252, line: 78, baseType: !1029, size: 320)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !252, line: 78, size: 320, elements: !1030)
!1030 = !{!1031, !1032, !1035, !1036}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1029, file: !252, line: 84, baseType: !106, size: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1029, file: !252, line: 86, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !252, line: 26, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1029, file: !252, line: 87, baseType: !211, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1029, file: !252, line: 94, baseType: !211, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !252, line: 96, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !252, line: 96, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1038, file: !252, line: 101, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !79, line: 143, baseType: !280)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !252, line: 103, baseType: !1043, size: 320)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !252, line: 103, size: 320, elements: !1044)
!1044 = !{!1045, !1055, !1058, !1059}
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !252, line: 104, baseType: !1046, size: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !252, line: 104, size: 128, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1046, file: !252, line: 105, baseType: !106, size: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !252, line: 106, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1046, file: !252, line: 106, size: 128, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1050, file: !252, line: 107, baseType: !1021, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1050, file: !252, line: 109, baseType: !145, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1050, file: !252, line: 110, baseType: !145, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1043, file: !252, line: 117, baseType: !1056, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !252, line: 117, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1043, file: !252, line: 119, baseType: !80, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !252, line: 120, baseType: !1060, size: 64, offset: 256)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !252, line: 120, size: 64, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1060, file: !252, line: 121, baseType: !80, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1060, file: !252, line: 122, baseType: !211, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !252, line: 123, baseType: !1065, size: 32)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !252, line: 123, size: 32, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1065, file: !252, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1065, file: !252, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1065, file: !252, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !252, line: 130, baseType: !1071, size: 192)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !252, line: 130, size: 192, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1071, file: !252, line: 131, baseType: !211, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1071, file: !252, line: 134, baseType: !573, size: 8, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1071, file: !252, line: 135, baseType: !573, size: 8, offset: 72)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1071, file: !252, line: 136, baseType: !302, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1071, file: !252, line: 137, baseType: !7, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !252, line: 139, baseType: !1079, size: 256)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !252, line: 139, size: 256, elements: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1079, file: !252, line: 140, baseType: !211, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1079, file: !252, line: 141, baseType: !302, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1079, file: !252, line: 143, baseType: !106, size: 128, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !252, line: 145, baseType: !1085, size: 256)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !252, line: 145, size: 256, elements: !1086)
!1086 = !{!1087, !1088, !1090, !1091, !1096}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1085, file: !252, line: 146, baseType: !211, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1085, file: !252, line: 147, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !241, line: 509, baseType: !1021)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1085, file: !252, line: 148, baseType: !211, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !252, line: 149, baseType: !1092, size: 64, offset: 192)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !252, line: 149, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1092, file: !252, line: 150, baseType: !268, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1092, file: !252, line: 151, baseType: !302, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1085, file: !252, line: 156, baseType: !119, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !252, line: 159, baseType: !1098, size: 128)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !252, line: 159, size: 128, elements: !1099)
!1099 = !{!1100, !1103}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1098, file: !252, line: 161, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !252, line: 161, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1098, file: !252, line: 162, baseType: !80, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1026, file: !252, line: 176, baseType: !718, size: 128, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !252, line: 179, baseType: !1106, size: 32, offset: 384)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !252, line: 179, size: 32, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1106, file: !252, line: 184, baseType: !302, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1106, file: !252, line: 192, baseType: !7, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1106, file: !252, line: 194, baseType: !7, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1106, file: !252, line: 195, baseType: !145, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1022, file: !252, line: 199, baseType: !302, size: 32, offset: 416)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1018, file: !357, line: 67, baseType: !435, size: 32, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1018, file: !357, line: 68, baseType: !435, size: 32, offset: 96)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !425, file: !426, line: 1206, baseType: !145, size: 32, offset: 12736)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !425, file: !426, line: 1207, baseType: !145, size: 32, offset: 12768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !425, file: !426, line: 1209, baseType: !211, size: 64, offset: 12800)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !425, file: !426, line: 1219, baseType: !280, size: 64, offset: 12864)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !425, file: !426, line: 1220, baseType: !280, size: 64, offset: 12928)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !425, file: !426, line: 1317, baseType: !145, size: 32, offset: 12992)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !425, file: !426, line: 1319, baseType: !424, size: 64, offset: 13056)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !425, file: !426, line: 1322, baseType: !1123, size: 64, offset: 13120)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1125, line: 56, size: 512, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1133, !1134, !1136}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1124, file: !1125, line: 57, baseType: !1123, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1124, file: !1125, line: 58, baseType: !80, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1124, file: !1125, line: 59, baseType: !211, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1124, file: !1125, line: 60, baseType: !211, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1124, file: !1125, line: 61, baseType: !1132, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1124, file: !1125, line: 62, baseType: !7, size: 32, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1124, file: !1125, line: 63, baseType: !1135, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !79, line: 153, baseType: !280)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1124, file: !1125, line: 64, baseType: !1137, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !425, file: !426, line: 1326, baseType: !440, size: 32, offset: 13184)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !425, file: !426, line: 1342, baseType: !80, size: 64, offset: 13248)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !425, file: !426, line: 1343, baseType: !282, size: 64, offset: 13312)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !425, file: !426, line: 1344, baseType: !280, size: 64, offset: 13376)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !425, file: !426, line: 1345, baseType: !282, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !425, file: !426, line: 1346, baseType: !282, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !425, file: !426, line: 1347, baseType: !282, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !425, file: !426, line: 1348, baseType: !718, size: 128, align: 64, offset: 13504)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !425, file: !426, line: 1358, baseType: !1148, size: 34816, offset: 13824)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1149, line: 485, size: 34816, elements: !1150)
!1149 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1150 = !{!1151, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1180, !1181, !1182, !1183, !1184, !1185, !1188, !1189, !1190}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1148, file: !1149, line: 487, baseType: !1152, size: 192)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 192, elements: !162)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1154, line: 16, size: 64, elements: !1155)
!1154 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1153, file: !1154, line: 17, baseType: !408, size: 16)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1153, file: !1154, line: 18, baseType: !408, size: 16, offset: 16)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1153, file: !1154, line: 19, baseType: !408, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1153, file: !1154, line: 19, baseType: !408, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1153, file: !1154, line: 19, baseType: !408, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1153, file: !1154, line: 19, baseType: !408, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1153, file: !1154, line: 19, baseType: !408, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1153, file: !1154, line: 20, baseType: !408, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1153, file: !1154, line: 20, baseType: !408, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1153, file: !1154, line: 20, baseType: !408, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1153, file: !1154, line: 20, baseType: !408, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1153, file: !1154, line: 20, baseType: !408, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1153, file: !1154, line: 20, baseType: !408, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1148, file: !1149, line: 491, baseType: !211, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1148, file: !1149, line: 495, baseType: !203, size: 16, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1148, file: !1149, line: 496, baseType: !203, size: 16, offset: 272)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1148, file: !1149, line: 497, baseType: !203, size: 16, offset: 288)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1148, file: !1149, line: 498, baseType: !203, size: 16, offset: 304)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1148, file: !1149, line: 502, baseType: !211, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1148, file: !1149, line: 503, baseType: !211, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1148, file: !1149, line: 514, baseType: !1177, size: 256, offset: 448)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 256, elements: !361)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1149, line: 483, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1148, file: !1149, line: 516, baseType: !211, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1148, file: !1149, line: 518, baseType: !211, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1148, file: !1149, line: 520, baseType: !211, size: 64, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1148, file: !1149, line: 521, baseType: !211, size: 64, offset: 896)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1148, file: !1149, line: 522, baseType: !211, size: 64, offset: 960)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1148, file: !1149, line: 528, baseType: !1186, size: 64, offset: 1024)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1149, line: 10, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1148, file: !1149, line: 535, baseType: !211, size: 64, offset: 1088)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1148, file: !1149, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1148, file: !1149, line: 540, baseType: !1191, size: 33280, offset: 1536)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1192, line: 317, size: 33280, elements: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1191, file: !1192, line: 330, baseType: !7, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1191, file: !1192, line: 337, baseType: !211, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1191, file: !1192, line: 348, baseType: !1197, size: 32768, offset: 512)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1192, line: 304, size: 32768, elements: !1198)
!1198 = !{!1199, !1214, !1253, !1303, !1320}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1197, file: !1192, line: 305, baseType: !1200, size: 896)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1192, line: 12, size: 896, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1213}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1200, file: !1192, line: 13, baseType: !434, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1200, file: !1192, line: 14, baseType: !434, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1200, file: !1192, line: 15, baseType: !434, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1200, file: !1192, line: 16, baseType: !434, size: 32, offset: 96)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1200, file: !1192, line: 17, baseType: !434, size: 32, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1200, file: !1192, line: 18, baseType: !434, size: 32, offset: 160)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1200, file: !1192, line: 19, baseType: !434, size: 32, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1200, file: !1192, line: 22, baseType: !1210, size: 640, offset: 224)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 640, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 20)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1200, file: !1192, line: 25, baseType: !434, size: 32, offset: 864)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1197, file: !1192, line: 306, baseType: !1215, size: 4096, align: 128)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1192, line: 34, size: 4096, align: 128, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1236, !1237, !1238, !1242, !1244, !1248}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1215, file: !1192, line: 35, baseType: !408, size: 16)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1215, file: !1192, line: 36, baseType: !408, size: 16, offset: 16)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1215, file: !1192, line: 37, baseType: !408, size: 16, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1215, file: !1192, line: 38, baseType: !408, size: 16, offset: 48)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1192, line: 39, baseType: !1222, size: 128, offset: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !1192, line: 39, size: 128, elements: !1223)
!1223 = !{!1224, !1229}
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1192, line: 40, baseType: !1225, size: 128)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !1192, line: 40, size: 128, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1225, file: !1192, line: 41, baseType: !280, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1225, file: !1192, line: 42, baseType: !280, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1192, line: 44, baseType: !1230, size: 128)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !1192, line: 44, size: 128, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1230, file: !1192, line: 45, baseType: !434, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1230, file: !1192, line: 46, baseType: !434, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1230, file: !1192, line: 47, baseType: !434, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1230, file: !1192, line: 48, baseType: !434, size: 32, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1215, file: !1192, line: 51, baseType: !434, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1215, file: !1192, line: 52, baseType: !434, size: 32, offset: 224)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1215, file: !1192, line: 55, baseType: !1239, size: 1024, offset: 256)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 1024, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1215, file: !1192, line: 58, baseType: !1243, size: 2048, offset: 1280)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 2048, elements: !166)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1215, file: !1192, line: 60, baseType: !1245, size: 384, offset: 3328)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 384, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 12)
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1192, line: 62, baseType: !1249, size: 384, offset: 3712)
!1249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !1192, line: 62, size: 384, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1249, file: !1192, line: 63, baseType: !1245, size: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1249, file: !1192, line: 64, baseType: !1245, size: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1197, file: !1192, line: 307, baseType: !1254, size: 1088)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1192, line: 79, size: 1088, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1302}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1254, file: !1192, line: 80, baseType: !434, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1254, file: !1192, line: 81, baseType: !434, size: 32, offset: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1254, file: !1192, line: 82, baseType: !434, size: 32, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1254, file: !1192, line: 83, baseType: !434, size: 32, offset: 96)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1254, file: !1192, line: 84, baseType: !434, size: 32, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1254, file: !1192, line: 85, baseType: !434, size: 32, offset: 160)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1254, file: !1192, line: 86, baseType: !434, size: 32, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1254, file: !1192, line: 88, baseType: !1210, size: 640, offset: 224)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1254, file: !1192, line: 89, baseType: !571, size: 8, offset: 864)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1254, file: !1192, line: 90, baseType: !571, size: 8, offset: 872)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1254, file: !1192, line: 91, baseType: !571, size: 8, offset: 880)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1254, file: !1192, line: 92, baseType: !571, size: 8, offset: 888)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1254, file: !1192, line: 93, baseType: !571, size: 8, offset: 896)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1254, file: !1192, line: 94, baseType: !571, size: 8, offset: 904)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1254, file: !1192, line: 95, baseType: !1271, size: 64, offset: 960)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1273, line: 11, size: 128, elements: !1274)
!1273 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1272, file: !1273, line: 12, baseType: !196, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1272, file: !1273, line: 13, baseType: !1277, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1279, line: 56, size: 1344, elements: !1280)
!1279 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1278, file: !1279, line: 61, baseType: !211, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1278, file: !1279, line: 62, baseType: !211, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1278, file: !1279, line: 63, baseType: !211, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1278, file: !1279, line: 64, baseType: !211, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1278, file: !1279, line: 65, baseType: !211, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1278, file: !1279, line: 66, baseType: !211, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1278, file: !1279, line: 68, baseType: !211, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1278, file: !1279, line: 69, baseType: !211, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1278, file: !1279, line: 70, baseType: !211, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1278, file: !1279, line: 71, baseType: !211, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1278, file: !1279, line: 72, baseType: !211, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1278, file: !1279, line: 73, baseType: !211, size: 64, offset: 704)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1278, file: !1279, line: 74, baseType: !211, size: 64, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1278, file: !1279, line: 75, baseType: !211, size: 64, offset: 832)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1278, file: !1279, line: 76, baseType: !211, size: 64, offset: 896)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1278, file: !1279, line: 81, baseType: !211, size: 64, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1278, file: !1279, line: 83, baseType: !211, size: 64, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1278, file: !1279, line: 84, baseType: !211, size: 64, offset: 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !1279, line: 85, baseType: !211, size: 64, offset: 1152)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1278, file: !1279, line: 86, baseType: !211, size: 64, offset: 1216)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1278, file: !1279, line: 87, baseType: !211, size: 64, offset: 1280)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1254, file: !1192, line: 96, baseType: !434, size: 32, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1197, file: !1192, line: 308, baseType: !1304, size: 4608, align: 512)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1192, line: 289, size: 4608, align: 512, elements: !1305)
!1305 = !{!1306, !1307, !1316}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1304, file: !1192, line: 290, baseType: !1215, size: 4096, align: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1304, file: !1192, line: 291, baseType: !1308, size: 512, offset: 4096)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1192, line: 268, size: 512, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1308, file: !1192, line: 269, baseType: !280, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1308, file: !1192, line: 270, baseType: !280, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1308, file: !1192, line: 271, baseType: !1313, size: 384, offset: 128)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 384, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 6)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1304, file: !1192, line: 292, baseType: !1317, offset: 4608)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 0)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1197, file: !1192, line: 309, baseType: !1321, size: 32768)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 32768, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 4096)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !252, line: 378, baseType: !1325, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !417, file: !252, line: 384, baseType: !740, size: 192, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !272, file: !252, line: 500, baseType: !119, offset: 6656)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !272, file: !252, line: 501, baseType: !1329, size: 64, offset: 6656)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !252, line: 387, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !272, file: !252, line: 516, baseType: !1332, size: 64, offset: 6720)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1334, line: 18, flags: DIFlagFwdDecl)
!1334 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !272, file: !252, line: 519, baseType: !239, size: 64, offset: 6784)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !272, file: !252, line: 521, baseType: !1337, size: 64, offset: 6848)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !252, line: 521, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !272, file: !252, line: 545, baseType: !302, size: 32, offset: 6912)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !272, file: !252, line: 548, baseType: !1006, size: 8, offset: 6944)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !272, file: !252, line: 550, baseType: !1342, offset: 6952)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1343, line: 142, elements: !133)
!1343 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !272, file: !252, line: 554, baseType: !1345, size: 256, offset: 6976)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1346, line: 102, size: 256, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1347 = !{!1348, !1349, !1350}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1345, file: !1346, line: 103, baseType: !310, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1345, file: !1346, line: 104, baseType: !106, size: 128, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1345, file: !1346, line: 105, baseType: !1351, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1346, line: 21, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !272, file: !252, line: 557, baseType: !434, size: 32, offset: 7232)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !269, file: !252, line: 565, baseType: !1358, offset: 7296)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: -1)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !251, file: !252, line: 333, baseType: !1362, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !241, line: 284, baseType: !1363)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !241, line: 284, size: 64, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1363, file: !241, line: 284, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !300, line: 19, baseType: !211)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !251, file: !252, line: 334, baseType: !211, size: 64, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !251, file: !252, line: 343, baseType: !1369, size: 256, offset: 704)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !252, line: 340, size: 256, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1369, file: !252, line: 341, baseType: !259, size: 192, align: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1369, file: !252, line: 342, baseType: !211, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !251, file: !252, line: 351, baseType: !106, size: 128, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !251, file: !252, line: 353, baseType: !1375, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !252, line: 353, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !251, file: !252, line: 356, baseType: !1378, size: 64, offset: 1152)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !252, line: 356, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !251, file: !252, line: 359, baseType: !211, size: 64, offset: 1216)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !251, file: !252, line: 361, baseType: !239, size: 64, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !251, file: !252, line: 362, baseType: !80, size: 64, offset: 1344)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !251, file: !252, line: 365, baseType: !310, size: 64, offset: 1408)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !251, file: !252, line: 373, baseType: !1386, offset: 1472)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !252, line: 296, elements: !133)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !218, file: !186, line: 90, baseType: !213, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !218, file: !186, line: 91, baseType: !1389, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !176, file: !99, line: 143, baseType: !1391, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1394, !112}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1397)
!1397 = !{!1398, !1399, !1403, !1407, !1413, !1417}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1396, file: !18, line: 40, baseType: !17, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1396, file: !18, line: 41, baseType: !1400, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1006}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1396, file: !18, line: 42, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!80}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1396, file: !18, line: 43, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1137, !1411}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1396, file: !18, line: 44, baseType: !1414, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1137}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1396, file: !18, line: 45, baseType: !1418, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !80}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !176, file: !99, line: 144, baseType: !1422, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!1137, !112}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !176, file: !99, line: 145, baseType: !1426, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !112, !1429, !1435}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1334, line: 23, baseType: !1431)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1334, line: 21, size: 32, elements: !1432)
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1431, file: !1334, line: 22, baseType: !1434, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !79, line: 32, baseType: !902)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1334, line: 28, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1334, line: 26, size: 32, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1437, file: !1334, line: 27, baseType: !1440, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !79, line: 33, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !194, line: 50, baseType: !7)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !98, file: !99, line: 70, baseType: !1443, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1445, line: 123, size: 1024, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1587, !1588, !1589, !1590, !1591}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1444, file: !1445, line: 124, baseType: !302, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1444, file: !1445, line: 125, baseType: !302, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1444, file: !1445, line: 135, baseType: !1443, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1444, file: !1445, line: 136, baseType: !102, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1444, file: !1445, line: 138, baseType: !259, size: 192, align: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1444, file: !1445, line: 140, baseType: !1137, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1444, file: !1445, line: 141, baseType: !7, size: 32, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 142, baseType: !1455, size: 256, offset: 512)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !1445, line: 142, size: 256, elements: !1456)
!1456 = !{!1457, !1510, !1514}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1455, file: !1445, line: 143, baseType: !1458, size: 192)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1445, line: 91, size: 192, elements: !1459)
!1459 = !{!1460, !1461, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1458, file: !1445, line: 92, baseType: !211, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1458, file: !1445, line: 94, baseType: !276, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1458, file: !1445, line: 100, baseType: !1463, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1445, line: 180, size: 704, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1480, !1481, !1482, !1508, !1509}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1464, file: !1445, line: 182, baseType: !1443, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1464, file: !1445, line: 183, baseType: !7, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1464, file: !1445, line: 186, baseType: !1469, size: 192, offset: 128)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1470, line: 19, size: 192, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1478, !1479}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1469, file: !1470, line: 20, baseType: !1473, size: 128)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !73, line: 292, size: 128, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1473, file: !73, line: 293, baseType: !119)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1473, file: !73, line: 295, baseType: !78, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1473, file: !73, line: 296, baseType: !80, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1469, file: !1470, line: 21, baseType: !7, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1469, file: !1470, line: 22, baseType: !7, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1464, file: !1445, line: 187, baseType: !434, size: 32, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1464, file: !1445, line: 188, baseType: !434, size: 32, offset: 352)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1464, file: !1445, line: 189, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1445, line: 168, size: 320, elements: !1485)
!1485 = !{!1486, !1492, !1496, !1500, !1504}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1484, file: !1445, line: 169, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!145, !1490, !1463}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !241, line: 539, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1484, file: !1445, line: 171, baseType: !1493, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!145, !1443, !102, !202}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1484, file: !1445, line: 173, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!145, !1443}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1484, file: !1445, line: 174, baseType: !1501, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!145, !1443, !1443, !102}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1484, file: !1445, line: 176, baseType: !1505, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!145, !1490, !1443, !1463}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1464, file: !1445, line: 192, baseType: !106, size: 128, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1464, file: !1445, line: 194, baseType: !711, size: 128, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1455, file: !1445, line: 144, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1445, line: 103, size: 64, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1511, file: !1445, line: 104, baseType: !1443, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1455, file: !1445, line: 145, baseType: !1515, size: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1445, line: 107, size: 256, elements: !1516)
!1516 = !{!1517, !1582, !1585, !1586}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1515, file: !1445, line: 108, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1445, line: 217, size: 768, elements: !1521)
!1521 = !{!1522, !1542, !1546, !1550, !1555, !1559, !1563, !1567, !1568, !1569, !1570, !1578}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1520, file: !1445, line: 222, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!145, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1445, line: 197, size: 1088, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1527, file: !1445, line: 199, baseType: !1443, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1527, file: !1445, line: 200, baseType: !239, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1527, file: !1445, line: 201, baseType: !1490, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1527, file: !1445, line: 202, baseType: !80, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1527, file: !1445, line: 205, baseType: !379, size: 192, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1527, file: !1445, line: 206, baseType: !379, size: 192, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1527, file: !1445, line: 207, baseType: !145, size: 32, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1527, file: !1445, line: 208, baseType: !106, size: 128, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1527, file: !1445, line: 209, baseType: !161, size: 64, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1527, file: !1445, line: 211, baseType: !208, size: 64, offset: 896)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1527, file: !1445, line: 212, baseType: !1006, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1527, file: !1445, line: 213, baseType: !1006, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1527, file: !1445, line: 214, baseType: !1378, size: 64, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1520, file: !1445, line: 223, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1526}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1520, file: !1445, line: 236, baseType: !1547, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!145, !1490, !80}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1520, file: !1445, line: 238, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!80, !1490, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1520, file: !1445, line: 239, baseType: !1556, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!80, !1490, !80, !1554}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1520, file: !1445, line: 240, baseType: !1560, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1490, !80}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1520, file: !1445, line: 242, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!192, !1526, !161, !208, !242}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1520, file: !1445, line: 252, baseType: !208, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1520, file: !1445, line: 259, baseType: !1006, size: 8, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1520, file: !1445, line: 260, baseType: !1564, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1520, file: !1445, line: 263, baseType: !1571, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1574, !1526, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1575, line: 52, baseType: !7)
!1575 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1445, line: 27, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1520, file: !1445, line: 266, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!145, !1526, !250}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1515, file: !1445, line: 109, baseType: !1583, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1445, line: 31, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1515, file: !1445, line: 110, baseType: !242, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1515, file: !1445, line: 111, baseType: !1443, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1444, file: !1445, line: 148, baseType: !80, size: 64, offset: 768)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1444, file: !1445, line: 154, baseType: !280, size: 64, offset: 832)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !1445, line: 156, baseType: !203, size: 16, offset: 896)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1444, file: !1445, line: 157, baseType: !202, size: 16, offset: 912)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1444, file: !1445, line: 158, baseType: !1592, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1445, line: 32, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !98, file: !99, line: 71, baseType: !1595, size: 32, offset: 448)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1596, line: 19, size: 32, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1595, file: !1596, line: 20, baseType: !440, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !98, file: !99, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !98, file: !99, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !98, file: !99, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !98, file: !99, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !98, file: !99, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !95, file: !30, line: 463, baseType: !94, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !95, file: !30, line: 465, baseType: !1606, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !95, file: !30, line: 467, baseType: !102, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !30, line: 468, baseType: !1610, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1620, !1625, !1629}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1612, file: !30, line: 88, baseType: !102, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1612, file: !30, line: 89, baseType: !215, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1612, file: !30, line: 90, baseType: !1617, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!145, !94, !156}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1612, file: !30, line: 91, baseType: !1621, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!161, !94, !1624, !1429, !1435}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1612, file: !30, line: 93, baseType: !1626, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !94}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1612, file: !30, line: 95, baseType: !1630, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1633)
!1633 = !{!1634, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1632, file: !37, line: 279, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!145, !94}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1632, file: !37, line: 280, baseType: !1626, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1632, file: !37, line: 281, baseType: !1635, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1632, file: !37, line: 282, baseType: !1635, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1632, file: !37, line: 283, baseType: !1635, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1632, file: !37, line: 284, baseType: !1635, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1632, file: !37, line: 285, baseType: !1635, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1632, file: !37, line: 286, baseType: !1635, size: 64, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1632, file: !37, line: 287, baseType: !1635, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1632, file: !37, line: 288, baseType: !1635, size: 64, offset: 576)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1632, file: !37, line: 289, baseType: !1635, size: 64, offset: 640)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1632, file: !37, line: 290, baseType: !1635, size: 64, offset: 704)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1632, file: !37, line: 291, baseType: !1635, size: 64, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1632, file: !37, line: 292, baseType: !1635, size: 64, offset: 832)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1632, file: !37, line: 293, baseType: !1635, size: 64, offset: 896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1632, file: !37, line: 294, baseType: !1635, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1632, file: !37, line: 295, baseType: !1635, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1632, file: !37, line: 296, baseType: !1635, size: 64, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1632, file: !37, line: 297, baseType: !1635, size: 64, offset: 1152)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1632, file: !37, line: 298, baseType: !1635, size: 64, offset: 1216)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1632, file: !37, line: 299, baseType: !1635, size: 64, offset: 1280)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1632, file: !37, line: 300, baseType: !1635, size: 64, offset: 1344)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1632, file: !37, line: 301, baseType: !1635, size: 64, offset: 1408)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !95, file: !30, line: 470, baseType: !1661, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1663, line: 82, size: 1408, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1747, !1750, !1753}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1662, file: !1663, line: 83, baseType: !102, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1662, file: !1663, line: 84, baseType: !102, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1662, file: !1663, line: 85, baseType: !94, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1662, file: !1663, line: 86, baseType: !215, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1662, file: !1663, line: 87, baseType: !215, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1662, file: !1663, line: 88, baseType: !215, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1662, file: !1663, line: 90, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!145, !94, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1698, !1711, !1712, !1713, !1714, !1715, !1723, !1724, !1725, !1726, !1727, !1728}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1676, file: !24, line: 96, baseType: !102, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1676, file: !24, line: 97, baseType: !1661, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1676, file: !24, line: 99, baseType: !90, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1676, file: !24, line: 100, baseType: !102, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1676, file: !24, line: 102, baseType: !1006, size: 8, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1676, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1676, file: !24, line: 105, baseType: !1685, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1688, line: 262, size: 1600, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1689 = !{!1690, !1692, !1693, !1697}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1687, file: !1688, line: 263, baseType: !1691, size: 256)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !1240)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1687, file: !1688, line: 264, baseType: !1691, size: 256, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1687, file: !1688, line: 265, baseType: !1694, size: 1024, offset: 512)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1024, elements: !1695)
!1695 = !{!1696}
!1696 = !DISubrange(count: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1687, file: !1688, line: 266, baseType: !1137, size: 64, offset: 1536)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1676, file: !24, line: 106, baseType: !1699, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1688, line: 210, size: 256, elements: !1702)
!1702 = !{!1703, !1707, !1709, !1710}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1701, file: !1688, line: 211, baseType: !1704, size: 72)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 72, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 9)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1701, file: !1688, line: 212, baseType: !1708, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1688, line: 14, baseType: !211)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1701, file: !1688, line: 213, baseType: !435, size: 32, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1701, file: !1688, line: 214, baseType: !435, size: 32, offset: 224)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1676, file: !24, line: 108, baseType: !1635, size: 64, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1676, file: !24, line: 109, baseType: !1626, size: 64, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1676, file: !24, line: 110, baseType: !1635, size: 64, offset: 576)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1676, file: !24, line: 111, baseType: !1626, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1676, file: !24, line: 112, baseType: !1716, size: 64, offset: 704)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!145, !94, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1721)
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1720, file: !37, line: 51, baseType: !145, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1676, file: !24, line: 113, baseType: !1635, size: 64, offset: 768)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1676, file: !24, line: 114, baseType: !215, size: 64, offset: 832)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1676, file: !24, line: 115, baseType: !215, size: 64, offset: 896)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1676, file: !24, line: 117, baseType: !1630, size: 64, offset: 960)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1676, file: !24, line: 118, baseType: !1626, size: 64, offset: 1024)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1676, file: !24, line: 120, baseType: !1729, size: 64, offset: 1088)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1662, file: !1663, line: 91, baseType: !1617, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1662, file: !1663, line: 92, baseType: !1635, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1662, file: !1663, line: 93, baseType: !1626, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1662, file: !1663, line: 94, baseType: !1635, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1662, file: !1663, line: 95, baseType: !1626, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1662, file: !1663, line: 97, baseType: !1635, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1662, file: !1663, line: 98, baseType: !1635, size: 64, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1662, file: !1663, line: 100, baseType: !1716, size: 64, offset: 896)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1662, file: !1663, line: 101, baseType: !1635, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1662, file: !1663, line: 103, baseType: !1635, size: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1662, file: !1663, line: 105, baseType: !1635, size: 64, offset: 1088)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1662, file: !1663, line: 107, baseType: !1630, size: 64, offset: 1152)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1662, file: !1663, line: 109, baseType: !1744, size: 64, offset: 1216)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1746)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1663, line: 109, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1662, file: !1663, line: 111, baseType: !1748, size: 64, offset: 1280)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1663, line: 111, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1662, file: !1663, line: 112, baseType: !1751, offset: 1344)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1752, line: 187, elements: !133)
!1752 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1662, file: !1663, line: 114, baseType: !1006, size: 8, offset: 1344)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !95, file: !30, line: 471, baseType: !1675, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !95, file: !30, line: 473, baseType: !80, size: 64, offset: 896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !95, file: !30, line: 475, baseType: !80, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !95, file: !30, line: 480, baseType: !379, size: 192, offset: 1024)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !95, file: !30, line: 484, baseType: !1759, size: 576, offset: 1216)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1760)
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1766}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1759, file: !30, line: 362, baseType: !106, size: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1759, file: !30, line: 363, baseType: !106, size: 128, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1759, file: !30, line: 364, baseType: !106, size: 128, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1759, file: !30, line: 365, baseType: !106, size: 128, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1759, file: !30, line: 366, baseType: !1006, size: 8, offset: 512)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1759, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !95, file: !30, line: 485, baseType: !1768, size: 2304, offset: 1792)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1865, !1869}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1768, file: !37, line: 566, baseType: !1719, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1768, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1768, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1768, file: !37, line: 569, baseType: !1006, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1768, file: !37, line: 570, baseType: !1006, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1768, file: !37, line: 571, baseType: !1006, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1768, file: !37, line: 572, baseType: !1006, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1768, file: !37, line: 573, baseType: !1006, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1768, file: !37, line: 574, baseType: !1006, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1768, file: !37, line: 575, baseType: !1006, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1768, file: !37, line: 576, baseType: !1006, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1768, file: !37, line: 577, baseType: !434, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !37, line: 578, baseType: !119, offset: 96)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1768, file: !37, line: 580, baseType: !106, size: 128, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1768, file: !37, line: 581, baseType: !740, size: 192, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1768, file: !37, line: 582, baseType: !1786, size: 64, offset: 448)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1788, line: 43, size: 1472, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1797, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1787, file: !1788, line: 44, baseType: !102, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1787, file: !1788, line: 45, baseType: !145, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1787, file: !1788, line: 46, baseType: !106, size: 128, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1787, file: !1788, line: 47, baseType: !119, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1787, file: !1788, line: 48, baseType: !1795, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1787, file: !1788, line: 49, baseType: !1798, size: 320, offset: 320)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1799, line: 11, size: 320, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !{!1801, !1802, !1803, !1808}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1798, file: !1799, line: 16, baseType: !704, size: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1798, file: !1799, line: 17, baseType: !211, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1798, file: !1799, line: 18, baseType: !1804, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !1799, line: 19, baseType: !434, size: 32, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1787, file: !1788, line: 50, baseType: !211, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1787, file: !1788, line: 51, baseType: !510, size: 64, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1787, file: !1788, line: 52, baseType: !510, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1787, file: !1788, line: 53, baseType: !510, size: 64, offset: 832)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1787, file: !1788, line: 54, baseType: !510, size: 64, offset: 896)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1787, file: !1788, line: 55, baseType: !510, size: 64, offset: 960)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1787, file: !1788, line: 56, baseType: !211, size: 64, offset: 1024)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1787, file: !1788, line: 57, baseType: !211, size: 64, offset: 1088)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1787, file: !1788, line: 58, baseType: !211, size: 64, offset: 1152)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1787, file: !1788, line: 59, baseType: !211, size: 64, offset: 1216)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1787, file: !1788, line: 60, baseType: !211, size: 64, offset: 1280)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1787, file: !1788, line: 61, baseType: !94, size: 64, offset: 1344)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1787, file: !1788, line: 62, baseType: !1006, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1787, file: !1788, line: 63, baseType: !1006, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1768, file: !37, line: 583, baseType: !1006, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1768, file: !37, line: 584, baseType: !1006, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1768, file: !37, line: 585, baseType: !1006, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1768, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1768, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1768, file: !37, line: 592, baseType: !502, size: 512, offset: 576)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1768, file: !37, line: 593, baseType: !280, size: 64, offset: 1088)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1768, file: !37, line: 594, baseType: !1345, size: 256, offset: 1152)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1768, file: !37, line: 595, baseType: !711, size: 128, offset: 1408)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1768, file: !37, line: 596, baseType: !1795, size: 64, offset: 1536)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1768, file: !37, line: 597, baseType: !302, size: 32, offset: 1600)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1768, file: !37, line: 598, baseType: !302, size: 32, offset: 1632)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1768, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1768, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1768, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1768, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1768, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1768, file: !37, line: 604, baseType: !1006, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1768, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1768, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1768, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1768, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1768, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1768, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1768, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1768, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1768, file: !37, line: 613, baseType: !145, size: 32, offset: 1792)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1768, file: !37, line: 614, baseType: !145, size: 32, offset: 1824)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1768, file: !37, line: 615, baseType: !280, size: 64, offset: 1856)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1768, file: !37, line: 616, baseType: !280, size: 64, offset: 1920)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1768, file: !37, line: 617, baseType: !280, size: 64, offset: 1984)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1768, file: !37, line: 618, baseType: !280, size: 64, offset: 2048)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1768, file: !37, line: 620, baseType: !1856, size: 64, offset: 2112)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1862}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !37, line: 537, baseType: !119)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1857, file: !37, line: 538, baseType: !7, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1857, file: !37, line: 540, baseType: !106, size: 128, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1857, file: !37, line: 543, baseType: !1863, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1768, file: !37, line: 621, baseType: !1866, size: 64, offset: 2176)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !94, !664}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1768, file: !37, line: 622, baseType: !1870, size: 64, offset: 2240)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !95, file: !30, line: 486, baseType: !1873, size: 64, offset: 4096)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1882, !1883, !1884}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1874, file: !37, line: 643, baseType: !1632, size: 1472)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1874, file: !37, line: 644, baseType: !1635, size: 64, offset: 1472)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1874, file: !37, line: 645, baseType: !1879, size: 64, offset: 1536)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !94, !1006}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1874, file: !37, line: 646, baseType: !1635, size: 64, offset: 1600)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1874, file: !37, line: 647, baseType: !1626, size: 64, offset: 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1874, file: !37, line: 648, baseType: !1626, size: 64, offset: 1728)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !95, file: !30, line: 493, baseType: !1886, size: 64, offset: 4160)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !95, file: !30, line: 499, baseType: !106, size: 128, offset: 4224)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !95, file: !30, line: 502, baseType: !1890, size: 64, offset: 4352)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !95, file: !30, line: 504, baseType: !1894, size: 64, offset: 4416)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !95, file: !30, line: 505, baseType: !280, size: 64, offset: 4480)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !95, file: !30, line: 510, baseType: !280, size: 64, offset: 4544)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !95, file: !30, line: 511, baseType: !1898, size: 64, offset: 4608)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !95, file: !30, line: 513, baseType: !1902, size: 64, offset: 4672)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1903, file: !30, line: 293, baseType: !7, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1903, file: !30, line: 294, baseType: !211, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !95, file: !30, line: 515, baseType: !106, size: 128, offset: 4736)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !95, file: !30, line: 526, baseType: !1909, offset: 4864)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1910, line: 5, elements: !133)
!1910 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !95, file: !30, line: 528, baseType: !1912, size: 64, offset: 4864)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1914, line: 14, flags: DIFlagFwdDecl)
!1914 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !95, file: !30, line: 529, baseType: !1916, size: 64, offset: 4928)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1918, line: 17, size: 192, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !{!1920, !1921, !2004}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1917, file: !1918, line: 18, baseType: !1916, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1917, file: !1918, line: 19, baseType: !1922, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1918, line: 110, size: 1152, elements: !1925)
!1925 = !{!1926, !1930, !1934, !1940, !1946, !1950, !1954, !1959, !1963, !1964, !1968, !1972, !1976, !1987, !1988, !1989, !1990, !2000}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1924, file: !1918, line: 111, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1916, !1916}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1924, file: !1918, line: 112, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1916}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1924, file: !1918, line: 113, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1006, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1917)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1924, file: !1918, line: 114, baseType: !1941, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1137, !1938, !1944}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1924, file: !1918, line: 116, baseType: !1947, size: 64, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1006, !1938, !102}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1924, file: !1918, line: 118, baseType: !1951, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!145, !1938, !102, !7, !80, !208}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1924, file: !1918, line: 123, baseType: !1955, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!145, !1938, !102, !1958, !208}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1924, file: !1918, line: 126, baseType: !1960, size: 64, offset: 448)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!102, !1938}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1924, file: !1918, line: 127, baseType: !1960, size: 64, offset: 512)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1924, file: !1918, line: 128, baseType: !1965, size: 64, offset: 576)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1916, !1938}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1924, file: !1918, line: 130, baseType: !1969, size: 64, offset: 640)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1916, !1938, !1916}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1924, file: !1918, line: 133, baseType: !1973, size: 64, offset: 704)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!1916, !1938, !102}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1924, file: !1918, line: 135, baseType: !1977, size: 64, offset: 768)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!145, !1938, !102, !102, !7, !7, !1980}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1918, line: 43, size: 640, elements: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1981, file: !1918, line: 44, baseType: !1916, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1981, file: !1918, line: 45, baseType: !7, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1981, file: !1918, line: 46, baseType: !1986, size: 512, offset: 128)
!1986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 512, elements: !540)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1924, file: !1918, line: 140, baseType: !1969, size: 64, offset: 832)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1924, file: !1918, line: 143, baseType: !1965, size: 64, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1924, file: !1918, line: 145, baseType: !1927, size: 64, offset: 960)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1924, file: !1918, line: 146, baseType: !1991, size: 64, offset: 1024)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!145, !1938, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1918, line: 29, size: 128, elements: !1996)
!1996 = !{!1997, !1998, !1999}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1995, file: !1918, line: 30, baseType: !7, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1995, file: !1918, line: 31, baseType: !7, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1995, file: !1918, line: 32, baseType: !1938, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1924, file: !1918, line: 148, baseType: !2001, size: 64, offset: 1088)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!145, !1938, !94}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1917, file: !1918, line: 20, baseType: !94, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !95, file: !30, line: 534, baseType: !2006, size: 32, offset: 4992)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !79, line: 16, baseType: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !79, line: 13, baseType: !434)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !95, file: !30, line: 535, baseType: !434, size: 32, offset: 5024)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !95, file: !30, line: 537, baseType: !119, offset: 5056)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !95, file: !30, line: 538, baseType: !106, size: 128, offset: 5056)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !95, file: !30, line: 540, baseType: !2012, size: 64, offset: 5184)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2014, line: 54, size: 960, elements: !2015)
!2014 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2026, !2030, !2031, !2032, !2033, !2037, !2041, !2042}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2013, file: !2014, line: 55, baseType: !102, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2013, file: !2014, line: 56, baseType: !90, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2013, file: !2014, line: 58, baseType: !215, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2013, file: !2014, line: 59, baseType: !215, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2013, file: !2014, line: 60, baseType: !112, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2013, file: !2014, line: 62, baseType: !1617, size: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2013, file: !2014, line: 63, baseType: !2023, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!161, !94, !1624}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2013, file: !2014, line: 65, baseType: !2027, size: 64, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !2012}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2013, file: !2014, line: 66, baseType: !1626, size: 64, offset: 512)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2013, file: !2014, line: 68, baseType: !1635, size: 64, offset: 576)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2013, file: !2014, line: 70, baseType: !1394, size: 64, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2013, file: !2014, line: 71, baseType: !2034, size: 64, offset: 704)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!1137, !94}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2013, file: !2014, line: 73, baseType: !2038, size: 64, offset: 768)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !94, !1429, !1435}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2013, file: !2014, line: 75, baseType: !1630, size: 64, offset: 832)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2013, file: !2014, line: 77, baseType: !1748, size: 64, offset: 896)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !95, file: !30, line: 541, baseType: !215, size: 64, offset: 5248)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !95, file: !30, line: 543, baseType: !1626, size: 64, offset: 5312)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !95, file: !30, line: 544, baseType: !2046, size: 64, offset: 5376)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !95, file: !30, line: 545, baseType: !2049, size: 64, offset: 5440)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !95, file: !30, line: 547, baseType: !1006, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !95, file: !30, line: 548, baseType: !1006, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !95, file: !30, line: 549, baseType: !1006, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !95, file: !30, line: 550, baseType: !1006, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !87, file: !64, line: 174, baseType: !145, size: 32, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "bus_nr", scope: !87, file: !64, line: 175, baseType: !145, size: 32, offset: 160)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !87, file: !64, line: 176, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2060)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipack_bus_ops", file: !64, line: 152, size: 448, elements: !2061)
!2061 = !{!2062, !2070, !2074, !2075, !2079, !2080, !2081}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "request_irq", scope: !2060, file: !64, line: 153, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!145, !81, !2066, !80}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!2069, !80}
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !51, line: 17, baseType: !50)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "free_irq", scope: !2060, file: !64, line: 155, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!145, !81}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "get_clockrate", scope: !2060, file: !64, line: 156, baseType: !2071, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "set_clockrate", scope: !2060, file: !64, line: 157, baseType: !2076, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!145, !81, !145}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "get_error", scope: !2060, file: !64, line: 158, baseType: !2071, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !2060, file: !64, line: 159, baseType: !2071, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timeout", scope: !2060, file: !64, line: 160, baseType: !2071, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !82, file: !64, line: 97, baseType: !95, size: 5568, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !82, file: !64, line: 98, baseType: !2084, size: 64, offset: 5696)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !81}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !82, file: !64, line: 99, baseType: !2088, size: 640, offset: 5760)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2089, size: 640, elements: !2093)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipack_region", file: !64, line: 75, size: 128, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2089, file: !64, line: 76, baseType: !1135, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2089, file: !64, line: 77, baseType: !208, size: 64, offset: 64)
!2093 = !{!2094}
!2094 = !DISubrange(count: 5)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !82, file: !64, line: 100, baseType: !2096, size: 64, offset: 6400)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "id_avail", scope: !82, file: !64, line: 101, baseType: !208, size: 64, offset: 6464)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "id_vendor", scope: !82, file: !64, line: 102, baseType: !434, size: 32, offset: 6528)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "id_device", scope: !82, file: !64, line: 103, baseType: !434, size: 32, offset: 6560)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "id_format", scope: !82, file: !64, line: 104, baseType: !571, size: 8, offset: 6592)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "id_crc_correct", scope: !82, file: !64, line: 105, baseType: !7, size: 1, offset: 6600, flags: DIFlagBitField, extraData: i64 6600)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "speed_8mhz", scope: !82, file: !64, line: 106, baseType: !7, size: 1, offset: 6601, flags: DIFlagBitField, extraData: i64 6600)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "speed_32mhz", scope: !82, file: !64, line: 107, baseType: !7, size: 1, offset: 6602, flags: DIFlagBitField, extraData: i64 6600)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipack_driver", file: !64, line: 129, size: 1280, elements: !2106)
!2106 = !{!2107, !2108, !2116}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2105, file: !64, line: 130, baseType: !1676, size: 1152)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2105, file: !64, line: 131, baseType: !2109, size: 64, offset: 1152)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipack_device_id", file: !1688, line: 693, size: 96, elements: !2112)
!2112 = !{!2113, !2114, !2115}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !2111, file: !1688, line: 694, baseType: !572, size: 8)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2111, file: !1688, line: 695, baseType: !435, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2111, file: !1688, line: 696, baseType: !435, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2105, file: !64, line: 132, baseType: !2117, size: 64, offset: 1216)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipack_driver_ops", file: !64, line: 118, size: 128, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2119, file: !64, line: 119, baseType: !2071, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2119, file: !64, line: 120, baseType: !2084, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !1575, line: 30, baseType: !409)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !73, line: 246, baseType: !7)
!2126 = !{!2127, !2129, !2136, !2141, !2146, !2151, !0, !2156, !2158, !2161, !2163, !2166, !2180, !2182, !2184, !2186}
!2127 = !DIGlobalVariableExpression(var: !2128, expr: !DIExpression())
!2128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ipack_init175", scope: !2, file: !3, line: 498, type: !80, isLocal: true, isDefinition: true)
!2129 = !DIGlobalVariableExpression(var: !2130, expr: !DIExpression())
!2130 = distinct !DIGlobalVariable(name: "__exitcall_ipack_exit", scope: !2, file: !3, line: 499, type: !2131, isLocal: true, isDefinition: true)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2132, line: 117, baseType: !2133)
!2132 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null}
!2136 = !DIGlobalVariableExpression(var: !2137, expr: !DIExpression())
!2137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author176", scope: !2, file: !3, line: 501, type: !2138, isLocal: true, isDefinition: true, align: 8)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 496, elements: !2139)
!2139 = !{!2140}
!2140 = !DISubrange(count: 62)
!2141 = !DIGlobalVariableExpression(var: !2142, expr: !DIExpression())
!2142 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file177", scope: !2, file: !3, line: 502, type: !2143, isLocal: true, isDefinition: true, align: 8)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 248, elements: !2144)
!2144 = !{!2145}
!2145 = !DISubrange(count: 31)
!2146 = !DIGlobalVariableExpression(var: !2147, expr: !DIExpression())
!2147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license178", scope: !2, file: !3, line: 502, type: !2148, isLocal: true, isDefinition: true, align: 8)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 144, elements: !2149)
!2149 = !{!2150}
!2150 = !DISubrange(count: 18)
!2151 = !DIGlobalVariableExpression(var: !2152, expr: !DIExpression())
!2152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description179", scope: !2, file: !3, line: 503, type: !2153, isLocal: true, isDefinition: true, align: 8)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 328, elements: !2154)
!2154 = !{!2155}
!2155 = !DISubrange(count: 41)
!2156 = !DIGlobalVariableExpression(var: !2157, expr: !DIExpression())
!2157 = distinct !DIGlobalVariable(name: "ipack_bus_type", scope: !2, file: !3, line: 196, type: !1662, isLocal: true, isDefinition: true)
!2158 = !DIGlobalVariableExpression(var: !2159, expr: !DIExpression())
!2159 = distinct !DIGlobalVariable(name: "ipack_groups", scope: !2, file: !3, line: 194, type: !2160, isLocal: true, isDefinition: true)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 128, elements: !978)
!2161 = !DIGlobalVariableExpression(var: !2162, expr: !DIExpression())
!2162 = distinct !DIGlobalVariable(name: "ipack_group", scope: !2, file: !3, line: 194, type: !217, isLocal: true, isDefinition: true)
!2163 = !DIGlobalVariableExpression(var: !2164, expr: !DIExpression())
!2164 = distinct !DIGlobalVariable(name: "ipack_attrs", scope: !2, file: !3, line: 186, type: !2165, isLocal: true, isDefinition: true)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 384, elements: !1314)
!2166 = !DIGlobalVariableExpression(var: !2167, expr: !DIExpression())
!2167 = distinct !DIGlobalVariable(name: "dev_attr_id", scope: !2, file: !3, line: 180, type: !2168, isLocal: true, isDefinition: true)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2169)
!2169 = !{!2170, !2171, !2176}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2168, file: !30, line: 100, baseType: !198, size: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2168, file: !30, line: 101, baseType: !2172, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!192, !94, !2175, !161}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2168, file: !30, line: 103, baseType: !2177, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!192, !94, !2175, !102, !208}
!2180 = !DIGlobalVariableExpression(var: !2181, expr: !DIExpression())
!2181 = distinct !DIGlobalVariable(name: "dev_attr_id_device", scope: !2, file: !3, line: 181, type: !2168, isLocal: true, isDefinition: true)
!2182 = !DIGlobalVariableExpression(var: !2183, expr: !DIExpression())
!2183 = distinct !DIGlobalVariable(name: "dev_attr_id_format", scope: !2, file: !3, line: 182, type: !2168, isLocal: true, isDefinition: true)
!2184 = !DIGlobalVariableExpression(var: !2185, expr: !DIExpression())
!2185 = distinct !DIGlobalVariable(name: "dev_attr_id_vendor", scope: !2, file: !3, line: 183, type: !2168, isLocal: true, isDefinition: true)
!2186 = !DIGlobalVariableExpression(var: !2187, expr: !DIExpression())
!2187 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 184, type: !2168, isLocal: true, isDefinition: true)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1470, line: 244, size: 128, elements: !2189)
!2189 = !{!2190}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2188, file: !1470, line: 245, baseType: !1473, size: 128)
!2191 = !{i32 7, !"Dwarf Version", i32 4}
!2192 = !{i32 2, !"Debug Info Version", i32 3}
!2193 = !{i32 1, !"wchar_size", i32 2}
!2194 = !{i32 1, !"Code Model", i32 2}
!2195 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2196 = distinct !DISubprogram(name: "ipack_bus_register", scope: !3, file: !3, line: 205, type: !2197, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!86, !94, !145, !2058, !90}
!2199 = !DILocalVariable(name: "parent", arg: 1, scope: !2196, file: !3, line: 205, type: !94)
!2200 = !DILocation(line: 205, column: 60, scope: !2196)
!2201 = !DILocalVariable(name: "slots", arg: 2, scope: !2196, file: !3, line: 205, type: !145)
!2202 = !DILocation(line: 205, column: 72, scope: !2196)
!2203 = !DILocalVariable(name: "ops", arg: 3, scope: !2196, file: !3, line: 206, type: !2058)
!2204 = !DILocation(line: 206, column: 38, scope: !2196)
!2205 = !DILocalVariable(name: "owner", arg: 4, scope: !2196, file: !3, line: 207, type: !90)
!2206 = !DILocation(line: 207, column: 25, scope: !2196)
!2207 = !DILocalVariable(name: "bus_nr", scope: !2196, file: !3, line: 209, type: !145)
!2208 = !DILocation(line: 209, column: 6, scope: !2196)
!2209 = !DILocalVariable(name: "bus", scope: !2196, file: !3, line: 210, type: !86)
!2210 = !DILocation(line: 210, column: 27, scope: !2196)
!2211 = !DILocation(line: 212, column: 8, scope: !2196)
!2212 = !DILocation(line: 212, column: 6, scope: !2196)
!2213 = !DILocation(line: 213, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 213, column: 6)
!2215 = !DILocation(line: 213, column: 6, scope: !2196)
!2216 = !DILocation(line: 214, column: 3, scope: !2214)
!2217 = !DILocation(line: 216, column: 11, scope: !2196)
!2218 = !DILocation(line: 216, column: 9, scope: !2196)
!2219 = !DILocation(line: 217, column: 6, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 217, column: 6)
!2221 = !DILocation(line: 217, column: 13, scope: !2220)
!2222 = !DILocation(line: 217, column: 6, scope: !2196)
!2223 = !DILocation(line: 218, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 217, column: 18)
!2225 = !DILocation(line: 218, column: 3, scope: !2224)
!2226 = !DILocation(line: 219, column: 3, scope: !2224)
!2227 = !DILocation(line: 222, column: 16, scope: !2196)
!2228 = !DILocation(line: 222, column: 2, scope: !2196)
!2229 = !DILocation(line: 222, column: 7, scope: !2196)
!2230 = !DILocation(line: 222, column: 14, scope: !2196)
!2231 = !DILocation(line: 223, column: 16, scope: !2196)
!2232 = !DILocation(line: 223, column: 2, scope: !2196)
!2233 = !DILocation(line: 223, column: 7, scope: !2196)
!2234 = !DILocation(line: 223, column: 14, scope: !2196)
!2235 = !DILocation(line: 224, column: 15, scope: !2196)
!2236 = !DILocation(line: 224, column: 2, scope: !2196)
!2237 = !DILocation(line: 224, column: 7, scope: !2196)
!2238 = !DILocation(line: 224, column: 13, scope: !2196)
!2239 = !DILocation(line: 225, column: 13, scope: !2196)
!2240 = !DILocation(line: 225, column: 2, scope: !2196)
!2241 = !DILocation(line: 225, column: 7, scope: !2196)
!2242 = !DILocation(line: 225, column: 11, scope: !2196)
!2243 = !DILocation(line: 226, column: 15, scope: !2196)
!2244 = !DILocation(line: 226, column: 2, scope: !2196)
!2245 = !DILocation(line: 226, column: 7, scope: !2196)
!2246 = !DILocation(line: 226, column: 13, scope: !2196)
!2247 = !DILocation(line: 227, column: 9, scope: !2196)
!2248 = !DILocation(line: 227, column: 2, scope: !2196)
!2249 = !DILocation(line: 228, column: 1, scope: !2196)
!2250 = distinct !DISubprogram(name: "kzalloc", scope: !57, file: !57, line: 662, type: !2251, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!80, !208, !78}
!2253 = !DILocalVariable(name: "s", arg: 1, scope: !2254, file: !57, line: 445, type: !1056)
!2254 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !57, file: !57, line: 445, type: !2255, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!80, !1056, !78, !208}
!2257 = !DILocation(line: 445, column: 72, scope: !2254, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 552, column: 10, scope: !2259, inlinedAt: !2262)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !57, line: 540, column: 34)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !57, line: 540, column: 6)
!2261 = distinct !DISubprogram(name: "kmalloc", scope: !57, file: !57, line: 538, type: !2251, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2262 = distinct !DILocation(line: 664, column: 9, scope: !2250)
!2263 = !DILocalVariable(name: "flags", arg: 2, scope: !2254, file: !57, line: 446, type: !78)
!2264 = !DILocation(line: 446, column: 9, scope: !2254, inlinedAt: !2258)
!2265 = !DILocalVariable(name: "size", arg: 3, scope: !2254, file: !57, line: 446, type: !208)
!2266 = !DILocation(line: 446, column: 23, scope: !2254, inlinedAt: !2258)
!2267 = !DILocalVariable(name: "ret", scope: !2254, file: !57, line: 448, type: !80)
!2268 = !DILocation(line: 448, column: 8, scope: !2254, inlinedAt: !2258)
!2269 = !DILocalVariable(name: "flags", arg: 1, scope: !2270, file: !57, line: 318, type: !78)
!2270 = distinct !DISubprogram(name: "kmalloc_type", scope: !57, file: !57, line: 318, type: !2271, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!56, !78}
!2273 = !DILocation(line: 318, column: 67, scope: !2270, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 553, column: 20, scope: !2259, inlinedAt: !2262)
!2275 = !DILocalVariable(name: "size", arg: 1, scope: !2276, file: !57, line: 346, type: !208)
!2276 = distinct !DISubprogram(name: "kmalloc_index", scope: !57, file: !57, line: 346, type: !2277, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!7, !208}
!2279 = !DILocation(line: 346, column: 58, scope: !2276, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 547, column: 11, scope: !2259, inlinedAt: !2262)
!2281 = !DILocalVariable(name: "size", arg: 1, scope: !2282, file: !57, line: 472, type: !208)
!2282 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !57, file: !57, line: 472, type: !2283, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!80, !208, !78, !7}
!2285 = !DILocation(line: 472, column: 28, scope: !2282, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 481, column: 9, scope: !2287, inlinedAt: !2288)
!2287 = distinct !DISubprogram(name: "kmalloc_large", scope: !57, file: !57, line: 478, type: !2251, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2288 = distinct !DILocation(line: 545, column: 11, scope: !2289, inlinedAt: !2262)
!2289 = distinct !DILexicalBlock(scope: !2259, file: !57, line: 544, column: 7)
!2290 = !DILocalVariable(name: "flags", arg: 2, scope: !2282, file: !57, line: 472, type: !78)
!2291 = !DILocation(line: 472, column: 40, scope: !2282, inlinedAt: !2286)
!2292 = !DILocalVariable(name: "order", arg: 3, scope: !2282, file: !57, line: 472, type: !7)
!2293 = !DILocation(line: 472, column: 60, scope: !2282, inlinedAt: !2286)
!2294 = !DILocalVariable(name: "size", arg: 1, scope: !2287, file: !57, line: 478, type: !208)
!2295 = !DILocation(line: 478, column: 51, scope: !2287, inlinedAt: !2288)
!2296 = !DILocalVariable(name: "flags", arg: 2, scope: !2287, file: !57, line: 478, type: !78)
!2297 = !DILocation(line: 478, column: 63, scope: !2287, inlinedAt: !2288)
!2298 = !DILocalVariable(name: "order", scope: !2287, file: !57, line: 480, type: !7)
!2299 = !DILocation(line: 480, column: 15, scope: !2287, inlinedAt: !2288)
!2300 = !DILocalVariable(name: "size", arg: 1, scope: !2261, file: !57, line: 538, type: !208)
!2301 = !DILocation(line: 538, column: 45, scope: !2261, inlinedAt: !2262)
!2302 = !DILocalVariable(name: "flags", arg: 2, scope: !2261, file: !57, line: 538, type: !78)
!2303 = !DILocation(line: 538, column: 57, scope: !2261, inlinedAt: !2262)
!2304 = !DILocalVariable(name: "index", scope: !2259, file: !57, line: 542, type: !7)
!2305 = !DILocation(line: 542, column: 16, scope: !2259, inlinedAt: !2262)
!2306 = !DILocalVariable(name: "size", arg: 1, scope: !2250, file: !57, line: 662, type: !208)
!2307 = !DILocation(line: 662, column: 36, scope: !2250)
!2308 = !DILocalVariable(name: "flags", arg: 2, scope: !2250, file: !57, line: 662, type: !78)
!2309 = !DILocation(line: 662, column: 48, scope: !2250)
!2310 = !DILocation(line: 664, column: 17, scope: !2250)
!2311 = !DILocation(line: 664, column: 23, scope: !2250)
!2312 = !DILocation(line: 664, column: 29, scope: !2250)
!2313 = !DILocation(line: 540, column: 27, scope: !2260, inlinedAt: !2262)
!2314 = !DILocation(line: 540, column: 6, scope: !2260, inlinedAt: !2262)
!2315 = !DILocation(line: 540, column: 6, scope: !2261, inlinedAt: !2262)
!2316 = !DILocation(line: 544, column: 7, scope: !2289, inlinedAt: !2262)
!2317 = !DILocation(line: 544, column: 12, scope: !2289, inlinedAt: !2262)
!2318 = !DILocation(line: 544, column: 7, scope: !2259, inlinedAt: !2262)
!2319 = !DILocation(line: 545, column: 25, scope: !2289, inlinedAt: !2262)
!2320 = !DILocation(line: 545, column: 31, scope: !2289, inlinedAt: !2262)
!2321 = !DILocation(line: 480, column: 33, scope: !2287, inlinedAt: !2288)
!2322 = !DILocation(line: 480, column: 23, scope: !2287, inlinedAt: !2288)
!2323 = !DILocation(line: 481, column: 29, scope: !2287, inlinedAt: !2288)
!2324 = !DILocation(line: 481, column: 35, scope: !2287, inlinedAt: !2288)
!2325 = !DILocation(line: 481, column: 42, scope: !2287, inlinedAt: !2288)
!2326 = !DILocation(line: 474, column: 23, scope: !2282, inlinedAt: !2286)
!2327 = !DILocation(line: 474, column: 29, scope: !2282, inlinedAt: !2286)
!2328 = !DILocation(line: 474, column: 36, scope: !2282, inlinedAt: !2286)
!2329 = !DILocation(line: 474, column: 9, scope: !2282, inlinedAt: !2286)
!2330 = !DILocation(line: 545, column: 4, scope: !2289, inlinedAt: !2262)
!2331 = !DILocation(line: 547, column: 25, scope: !2259, inlinedAt: !2262)
!2332 = !DILocation(line: 348, column: 7, scope: !2333, inlinedAt: !2280)
!2333 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 348, column: 6)
!2334 = !DILocation(line: 348, column: 6, scope: !2276, inlinedAt: !2280)
!2335 = !DILocation(line: 349, column: 3, scope: !2333, inlinedAt: !2280)
!2336 = !DILocation(line: 351, column: 6, scope: !2337, inlinedAt: !2280)
!2337 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 351, column: 6)
!2338 = !DILocation(line: 351, column: 11, scope: !2337, inlinedAt: !2280)
!2339 = !DILocation(line: 351, column: 6, scope: !2276, inlinedAt: !2280)
!2340 = !DILocation(line: 352, column: 3, scope: !2337, inlinedAt: !2280)
!2341 = !DILocation(line: 354, column: 32, scope: !2342, inlinedAt: !2280)
!2342 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 354, column: 6)
!2343 = !DILocation(line: 354, column: 37, scope: !2342, inlinedAt: !2280)
!2344 = !DILocation(line: 354, column: 42, scope: !2342, inlinedAt: !2280)
!2345 = !DILocation(line: 354, column: 45, scope: !2342, inlinedAt: !2280)
!2346 = !DILocation(line: 354, column: 50, scope: !2342, inlinedAt: !2280)
!2347 = !DILocation(line: 354, column: 6, scope: !2276, inlinedAt: !2280)
!2348 = !DILocation(line: 355, column: 3, scope: !2342, inlinedAt: !2280)
!2349 = !DILocation(line: 356, column: 32, scope: !2350, inlinedAt: !2280)
!2350 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 356, column: 6)
!2351 = !DILocation(line: 356, column: 37, scope: !2350, inlinedAt: !2280)
!2352 = !DILocation(line: 356, column: 43, scope: !2350, inlinedAt: !2280)
!2353 = !DILocation(line: 356, column: 46, scope: !2350, inlinedAt: !2280)
!2354 = !DILocation(line: 356, column: 51, scope: !2350, inlinedAt: !2280)
!2355 = !DILocation(line: 356, column: 6, scope: !2276, inlinedAt: !2280)
!2356 = !DILocation(line: 357, column: 3, scope: !2350, inlinedAt: !2280)
!2357 = !DILocation(line: 358, column: 6, scope: !2358, inlinedAt: !2280)
!2358 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 358, column: 6)
!2359 = !DILocation(line: 358, column: 11, scope: !2358, inlinedAt: !2280)
!2360 = !DILocation(line: 358, column: 6, scope: !2276, inlinedAt: !2280)
!2361 = !DILocation(line: 358, column: 26, scope: !2358, inlinedAt: !2280)
!2362 = !DILocation(line: 359, column: 6, scope: !2363, inlinedAt: !2280)
!2363 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 359, column: 6)
!2364 = !DILocation(line: 359, column: 11, scope: !2363, inlinedAt: !2280)
!2365 = !DILocation(line: 359, column: 6, scope: !2276, inlinedAt: !2280)
!2366 = !DILocation(line: 359, column: 26, scope: !2363, inlinedAt: !2280)
!2367 = !DILocation(line: 360, column: 6, scope: !2368, inlinedAt: !2280)
!2368 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 360, column: 6)
!2369 = !DILocation(line: 360, column: 11, scope: !2368, inlinedAt: !2280)
!2370 = !DILocation(line: 360, column: 6, scope: !2276, inlinedAt: !2280)
!2371 = !DILocation(line: 360, column: 26, scope: !2368, inlinedAt: !2280)
!2372 = !DILocation(line: 361, column: 6, scope: !2373, inlinedAt: !2280)
!2373 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 361, column: 6)
!2374 = !DILocation(line: 361, column: 11, scope: !2373, inlinedAt: !2280)
!2375 = !DILocation(line: 361, column: 6, scope: !2276, inlinedAt: !2280)
!2376 = !DILocation(line: 361, column: 26, scope: !2373, inlinedAt: !2280)
!2377 = !DILocation(line: 362, column: 6, scope: !2378, inlinedAt: !2280)
!2378 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 362, column: 6)
!2379 = !DILocation(line: 362, column: 11, scope: !2378, inlinedAt: !2280)
!2380 = !DILocation(line: 362, column: 6, scope: !2276, inlinedAt: !2280)
!2381 = !DILocation(line: 362, column: 26, scope: !2378, inlinedAt: !2280)
!2382 = !DILocation(line: 363, column: 6, scope: !2383, inlinedAt: !2280)
!2383 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 363, column: 6)
!2384 = !DILocation(line: 363, column: 11, scope: !2383, inlinedAt: !2280)
!2385 = !DILocation(line: 363, column: 6, scope: !2276, inlinedAt: !2280)
!2386 = !DILocation(line: 363, column: 26, scope: !2383, inlinedAt: !2280)
!2387 = !DILocation(line: 364, column: 6, scope: !2388, inlinedAt: !2280)
!2388 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 364, column: 6)
!2389 = !DILocation(line: 364, column: 11, scope: !2388, inlinedAt: !2280)
!2390 = !DILocation(line: 364, column: 6, scope: !2276, inlinedAt: !2280)
!2391 = !DILocation(line: 364, column: 26, scope: !2388, inlinedAt: !2280)
!2392 = !DILocation(line: 365, column: 6, scope: !2393, inlinedAt: !2280)
!2393 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 365, column: 6)
!2394 = !DILocation(line: 365, column: 11, scope: !2393, inlinedAt: !2280)
!2395 = !DILocation(line: 365, column: 6, scope: !2276, inlinedAt: !2280)
!2396 = !DILocation(line: 365, column: 26, scope: !2393, inlinedAt: !2280)
!2397 = !DILocation(line: 366, column: 6, scope: !2398, inlinedAt: !2280)
!2398 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 366, column: 6)
!2399 = !DILocation(line: 366, column: 11, scope: !2398, inlinedAt: !2280)
!2400 = !DILocation(line: 366, column: 6, scope: !2276, inlinedAt: !2280)
!2401 = !DILocation(line: 366, column: 26, scope: !2398, inlinedAt: !2280)
!2402 = !DILocation(line: 367, column: 6, scope: !2403, inlinedAt: !2280)
!2403 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 367, column: 6)
!2404 = !DILocation(line: 367, column: 11, scope: !2403, inlinedAt: !2280)
!2405 = !DILocation(line: 367, column: 6, scope: !2276, inlinedAt: !2280)
!2406 = !DILocation(line: 367, column: 26, scope: !2403, inlinedAt: !2280)
!2407 = !DILocation(line: 368, column: 6, scope: !2408, inlinedAt: !2280)
!2408 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 368, column: 6)
!2409 = !DILocation(line: 368, column: 11, scope: !2408, inlinedAt: !2280)
!2410 = !DILocation(line: 368, column: 6, scope: !2276, inlinedAt: !2280)
!2411 = !DILocation(line: 368, column: 26, scope: !2408, inlinedAt: !2280)
!2412 = !DILocation(line: 369, column: 6, scope: !2413, inlinedAt: !2280)
!2413 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 369, column: 6)
!2414 = !DILocation(line: 369, column: 11, scope: !2413, inlinedAt: !2280)
!2415 = !DILocation(line: 369, column: 6, scope: !2276, inlinedAt: !2280)
!2416 = !DILocation(line: 369, column: 26, scope: !2413, inlinedAt: !2280)
!2417 = !DILocation(line: 370, column: 6, scope: !2418, inlinedAt: !2280)
!2418 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 370, column: 6)
!2419 = !DILocation(line: 370, column: 11, scope: !2418, inlinedAt: !2280)
!2420 = !DILocation(line: 370, column: 6, scope: !2276, inlinedAt: !2280)
!2421 = !DILocation(line: 370, column: 26, scope: !2418, inlinedAt: !2280)
!2422 = !DILocation(line: 371, column: 6, scope: !2423, inlinedAt: !2280)
!2423 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 371, column: 6)
!2424 = !DILocation(line: 371, column: 11, scope: !2423, inlinedAt: !2280)
!2425 = !DILocation(line: 371, column: 6, scope: !2276, inlinedAt: !2280)
!2426 = !DILocation(line: 371, column: 26, scope: !2423, inlinedAt: !2280)
!2427 = !DILocation(line: 372, column: 6, scope: !2428, inlinedAt: !2280)
!2428 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 372, column: 6)
!2429 = !DILocation(line: 372, column: 11, scope: !2428, inlinedAt: !2280)
!2430 = !DILocation(line: 372, column: 6, scope: !2276, inlinedAt: !2280)
!2431 = !DILocation(line: 372, column: 26, scope: !2428, inlinedAt: !2280)
!2432 = !DILocation(line: 373, column: 6, scope: !2433, inlinedAt: !2280)
!2433 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 373, column: 6)
!2434 = !DILocation(line: 373, column: 11, scope: !2433, inlinedAt: !2280)
!2435 = !DILocation(line: 373, column: 6, scope: !2276, inlinedAt: !2280)
!2436 = !DILocation(line: 373, column: 26, scope: !2433, inlinedAt: !2280)
!2437 = !DILocation(line: 374, column: 6, scope: !2438, inlinedAt: !2280)
!2438 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 374, column: 6)
!2439 = !DILocation(line: 374, column: 11, scope: !2438, inlinedAt: !2280)
!2440 = !DILocation(line: 374, column: 6, scope: !2276, inlinedAt: !2280)
!2441 = !DILocation(line: 374, column: 26, scope: !2438, inlinedAt: !2280)
!2442 = !DILocation(line: 375, column: 6, scope: !2443, inlinedAt: !2280)
!2443 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 375, column: 6)
!2444 = !DILocation(line: 375, column: 11, scope: !2443, inlinedAt: !2280)
!2445 = !DILocation(line: 375, column: 6, scope: !2276, inlinedAt: !2280)
!2446 = !DILocation(line: 375, column: 27, scope: !2443, inlinedAt: !2280)
!2447 = !DILocation(line: 376, column: 6, scope: !2448, inlinedAt: !2280)
!2448 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 376, column: 6)
!2449 = !DILocation(line: 376, column: 11, scope: !2448, inlinedAt: !2280)
!2450 = !DILocation(line: 376, column: 6, scope: !2276, inlinedAt: !2280)
!2451 = !DILocation(line: 376, column: 32, scope: !2448, inlinedAt: !2280)
!2452 = !DILocation(line: 377, column: 6, scope: !2453, inlinedAt: !2280)
!2453 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 377, column: 6)
!2454 = !DILocation(line: 377, column: 11, scope: !2453, inlinedAt: !2280)
!2455 = !DILocation(line: 377, column: 6, scope: !2276, inlinedAt: !2280)
!2456 = !DILocation(line: 377, column: 32, scope: !2453, inlinedAt: !2280)
!2457 = !DILocation(line: 378, column: 6, scope: !2458, inlinedAt: !2280)
!2458 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 378, column: 6)
!2459 = !DILocation(line: 378, column: 11, scope: !2458, inlinedAt: !2280)
!2460 = !DILocation(line: 378, column: 6, scope: !2276, inlinedAt: !2280)
!2461 = !DILocation(line: 378, column: 32, scope: !2458, inlinedAt: !2280)
!2462 = !DILocation(line: 379, column: 6, scope: !2463, inlinedAt: !2280)
!2463 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 379, column: 6)
!2464 = !DILocation(line: 379, column: 11, scope: !2463, inlinedAt: !2280)
!2465 = !DILocation(line: 379, column: 6, scope: !2276, inlinedAt: !2280)
!2466 = !DILocation(line: 379, column: 33, scope: !2463, inlinedAt: !2280)
!2467 = !DILocation(line: 380, column: 6, scope: !2468, inlinedAt: !2280)
!2468 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 380, column: 6)
!2469 = !DILocation(line: 380, column: 11, scope: !2468, inlinedAt: !2280)
!2470 = !DILocation(line: 380, column: 6, scope: !2276, inlinedAt: !2280)
!2471 = !DILocation(line: 380, column: 33, scope: !2468, inlinedAt: !2280)
!2472 = !DILocation(line: 381, column: 6, scope: !2473, inlinedAt: !2280)
!2473 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 381, column: 6)
!2474 = !DILocation(line: 381, column: 11, scope: !2473, inlinedAt: !2280)
!2475 = !DILocation(line: 381, column: 6, scope: !2276, inlinedAt: !2280)
!2476 = !DILocation(line: 381, column: 33, scope: !2473, inlinedAt: !2280)
!2477 = !DILocation(line: 382, column: 2, scope: !2478, inlinedAt: !2280)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !57, line: 382, column: 2)
!2479 = distinct !DILexicalBlock(scope: !2276, file: !57, line: 382, column: 2)
!2480 = !{i32 -2144235908, i32 -2144235879, i32 -2144235833, i32 -2144235775, i32 -2144235721, i32 -2144235667, i32 -2144235612, i32 -2144235581}
!2481 = !DILocation(line: 382, column: 2, scope: !2482, inlinedAt: !2280)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !57, line: 382, column: 2)
!2483 = distinct !DILexicalBlock(scope: !2479, file: !57, line: 382, column: 2)
!2484 = !{i32 -2144235138, i32 -2144235131, i32 -2144235077, i32 -2144235046, i32 -2144235016}
!2485 = !DILocation(line: 382, column: 2, scope: !2483, inlinedAt: !2280)
!2486 = !DILocation(line: 386, column: 1, scope: !2276, inlinedAt: !2280)
!2487 = !DILocation(line: 547, column: 9, scope: !2259, inlinedAt: !2262)
!2488 = !DILocation(line: 549, column: 8, scope: !2489, inlinedAt: !2262)
!2489 = distinct !DILexicalBlock(scope: !2259, file: !57, line: 549, column: 7)
!2490 = !DILocation(line: 549, column: 7, scope: !2259, inlinedAt: !2262)
!2491 = !DILocation(line: 550, column: 4, scope: !2489, inlinedAt: !2262)
!2492 = !DILocation(line: 553, column: 33, scope: !2259, inlinedAt: !2262)
!2493 = !DILocation(line: 325, column: 6, scope: !2494, inlinedAt: !2274)
!2494 = distinct !DILexicalBlock(scope: !2270, file: !57, line: 325, column: 6)
!2495 = !DILocation(line: 325, column: 6, scope: !2270, inlinedAt: !2274)
!2496 = !DILocation(line: 326, column: 3, scope: !2494, inlinedAt: !2274)
!2497 = !DILocation(line: 332, column: 9, scope: !2270, inlinedAt: !2274)
!2498 = !DILocation(line: 332, column: 15, scope: !2270, inlinedAt: !2274)
!2499 = !DILocation(line: 332, column: 2, scope: !2270, inlinedAt: !2274)
!2500 = !DILocation(line: 336, column: 1, scope: !2270, inlinedAt: !2274)
!2501 = !DILocation(line: 553, column: 5, scope: !2259, inlinedAt: !2262)
!2502 = !DILocation(line: 553, column: 41, scope: !2259, inlinedAt: !2262)
!2503 = !DILocation(line: 554, column: 5, scope: !2259, inlinedAt: !2262)
!2504 = !DILocation(line: 554, column: 12, scope: !2259, inlinedAt: !2262)
!2505 = !DILocation(line: 448, column: 31, scope: !2254, inlinedAt: !2258)
!2506 = !DILocation(line: 448, column: 34, scope: !2254, inlinedAt: !2258)
!2507 = !DILocation(line: 448, column: 14, scope: !2254, inlinedAt: !2258)
!2508 = !DILocation(line: 450, column: 22, scope: !2254, inlinedAt: !2258)
!2509 = !DILocation(line: 450, column: 25, scope: !2254, inlinedAt: !2258)
!2510 = !DILocation(line: 450, column: 30, scope: !2254, inlinedAt: !2258)
!2511 = !DILocation(line: 450, column: 36, scope: !2254, inlinedAt: !2258)
!2512 = !DILocation(line: 450, column: 8, scope: !2254, inlinedAt: !2258)
!2513 = !DILocation(line: 450, column: 6, scope: !2254, inlinedAt: !2258)
!2514 = !DILocation(line: 451, column: 9, scope: !2254, inlinedAt: !2258)
!2515 = !DILocation(line: 552, column: 3, scope: !2259, inlinedAt: !2262)
!2516 = !DILocation(line: 557, column: 19, scope: !2261, inlinedAt: !2262)
!2517 = !DILocation(line: 557, column: 25, scope: !2261, inlinedAt: !2262)
!2518 = !DILocation(line: 557, column: 9, scope: !2261, inlinedAt: !2262)
!2519 = !DILocation(line: 557, column: 2, scope: !2261, inlinedAt: !2262)
!2520 = !DILocation(line: 558, column: 1, scope: !2261, inlinedAt: !2262)
!2521 = !DILocation(line: 664, column: 2, scope: !2250)
!2522 = distinct !DISubprogram(name: "ipack_bus_unregister", scope: !3, file: !3, line: 242, type: !2523, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!145, !86}
!2525 = !DILocalVariable(name: "bus", arg: 1, scope: !2522, file: !3, line: 242, type: !86)
!2526 = !DILocation(line: 242, column: 51, scope: !2522)
!2527 = !DILocation(line: 244, column: 42, scope: !2522)
!2528 = !DILocation(line: 244, column: 2, scope: !2522)
!2529 = !DILocation(line: 246, column: 2, scope: !2522)
!2530 = !DILocation(line: 247, column: 8, scope: !2522)
!2531 = !DILocation(line: 247, column: 2, scope: !2522)
!2532 = !DILocation(line: 248, column: 2, scope: !2522)
!2533 = distinct !DISubprogram(name: "ipack_unregister_bus_member", scope: !3, file: !3, line: 231, type: !2534, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!145, !94, !80}
!2536 = !DILocalVariable(name: "dev", arg: 1, scope: !2533, file: !3, line: 231, type: !94)
!2537 = !DILocation(line: 231, column: 55, scope: !2533)
!2538 = !DILocalVariable(name: "data", arg: 2, scope: !2533, file: !3, line: 231, type: !80)
!2539 = !DILocation(line: 231, column: 66, scope: !2533)
!2540 = !DILocalVariable(name: "idev", scope: !2533, file: !3, line: 233, type: !81)
!2541 = !DILocation(line: 233, column: 23, scope: !2533)
!2542 = !DILocalVariable(name: "__mptr", scope: !2543, file: !3, line: 233, type: !80)
!2543 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 233, column: 30)
!2544 = !DILocation(line: 233, column: 30, scope: !2543)
!2545 = !DILocation(line: 233, column: 30, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 233, column: 30)
!2547 = !DILocalVariable(name: "bus", scope: !2533, file: !3, line: 234, type: !86)
!2548 = !DILocation(line: 234, column: 27, scope: !2533)
!2549 = !DILocation(line: 234, column: 33, scope: !2533)
!2550 = !DILocation(line: 236, column: 6, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 236, column: 6)
!2552 = !DILocation(line: 236, column: 12, scope: !2551)
!2553 = !DILocation(line: 236, column: 19, scope: !2551)
!2554 = !DILocation(line: 236, column: 16, scope: !2551)
!2555 = !DILocation(line: 236, column: 6, scope: !2533)
!2556 = !DILocation(line: 237, column: 20, scope: !2551)
!2557 = !DILocation(line: 237, column: 3, scope: !2551)
!2558 = !DILocation(line: 239, column: 2, scope: !2533)
!2559 = distinct !DISubprogram(name: "ipack_driver_register", scope: !3, file: !3, line: 252, type: !2560, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!145, !2104, !90, !102}
!2562 = !DILocalVariable(name: "edrv", arg: 1, scope: !2559, file: !3, line: 252, type: !2104)
!2563 = !DILocation(line: 252, column: 48, scope: !2559)
!2564 = !DILocalVariable(name: "owner", arg: 2, scope: !2559, file: !3, line: 252, type: !90)
!2565 = !DILocation(line: 252, column: 69, scope: !2559)
!2566 = !DILocalVariable(name: "name", arg: 3, scope: !2559, file: !3, line: 253, type: !102)
!2567 = !DILocation(line: 253, column: 18, scope: !2559)
!2568 = !DILocation(line: 255, column: 23, scope: !2559)
!2569 = !DILocation(line: 255, column: 2, scope: !2559)
!2570 = !DILocation(line: 255, column: 8, scope: !2559)
!2571 = !DILocation(line: 255, column: 15, scope: !2559)
!2572 = !DILocation(line: 255, column: 21, scope: !2559)
!2573 = !DILocation(line: 256, column: 22, scope: !2559)
!2574 = !DILocation(line: 256, column: 2, scope: !2559)
!2575 = !DILocation(line: 256, column: 8, scope: !2559)
!2576 = !DILocation(line: 256, column: 15, scope: !2559)
!2577 = !DILocation(line: 256, column: 20, scope: !2559)
!2578 = !DILocation(line: 257, column: 2, scope: !2559)
!2579 = !DILocation(line: 257, column: 8, scope: !2559)
!2580 = !DILocation(line: 257, column: 15, scope: !2559)
!2581 = !DILocation(line: 257, column: 19, scope: !2559)
!2582 = !DILocation(line: 258, column: 26, scope: !2559)
!2583 = !DILocation(line: 258, column: 32, scope: !2559)
!2584 = !DILocation(line: 258, column: 9, scope: !2559)
!2585 = !DILocation(line: 258, column: 2, scope: !2559)
!2586 = distinct !DISubprogram(name: "ipack_driver_unregister", scope: !3, file: !3, line: 262, type: !2587, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2104}
!2589 = !DILocalVariable(name: "edrv", arg: 1, scope: !2586, file: !3, line: 262, type: !2104)
!2590 = !DILocation(line: 262, column: 51, scope: !2586)
!2591 = !DILocation(line: 264, column: 21, scope: !2586)
!2592 = !DILocation(line: 264, column: 27, scope: !2586)
!2593 = !DILocation(line: 264, column: 2, scope: !2586)
!2594 = !DILocation(line: 265, column: 1, scope: !2586)
!2595 = distinct !DISubprogram(name: "ipack_device_init", scope: !3, file: !3, line: 428, type: !2072, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2596 = !DILocalVariable(name: "dev", arg: 1, scope: !2595, file: !3, line: 428, type: !81)
!2597 = !DILocation(line: 428, column: 44, scope: !2595)
!2598 = !DILocalVariable(name: "ret", scope: !2595, file: !3, line: 430, type: !145)
!2599 = !DILocation(line: 430, column: 6, scope: !2595)
!2600 = !DILocation(line: 432, column: 2, scope: !2595)
!2601 = !DILocation(line: 432, column: 7, scope: !2595)
!2602 = !DILocation(line: 432, column: 11, scope: !2595)
!2603 = !DILocation(line: 432, column: 15, scope: !2595)
!2604 = !DILocation(line: 433, column: 2, scope: !2595)
!2605 = !DILocation(line: 433, column: 7, scope: !2595)
!2606 = !DILocation(line: 433, column: 11, scope: !2595)
!2607 = !DILocation(line: 433, column: 19, scope: !2595)
!2608 = !DILocation(line: 434, column: 20, scope: !2595)
!2609 = !DILocation(line: 434, column: 25, scope: !2595)
!2610 = !DILocation(line: 434, column: 30, scope: !2595)
!2611 = !DILocation(line: 434, column: 2, scope: !2595)
!2612 = !DILocation(line: 434, column: 7, scope: !2595)
!2613 = !DILocation(line: 434, column: 11, scope: !2595)
!2614 = !DILocation(line: 434, column: 18, scope: !2595)
!2615 = !DILocation(line: 435, column: 16, scope: !2595)
!2616 = !DILocation(line: 435, column: 21, scope: !2595)
!2617 = !DILocation(line: 436, column: 27, scope: !2595)
!2618 = !DILocation(line: 436, column: 32, scope: !2595)
!2619 = !DILocation(line: 436, column: 37, scope: !2595)
!2620 = !DILocation(line: 436, column: 45, scope: !2595)
!2621 = !DILocation(line: 436, column: 50, scope: !2595)
!2622 = !DILocation(line: 435, column: 2, scope: !2595)
!2623 = !DILocation(line: 437, column: 21, scope: !2595)
!2624 = !DILocation(line: 437, column: 26, scope: !2595)
!2625 = !DILocation(line: 437, column: 2, scope: !2595)
!2626 = !DILocation(line: 439, column: 6, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 439, column: 6)
!2628 = !DILocation(line: 439, column: 11, scope: !2627)
!2629 = !DILocation(line: 439, column: 16, scope: !2627)
!2630 = !DILocation(line: 439, column: 21, scope: !2627)
!2631 = !DILocation(line: 439, column: 35, scope: !2627)
!2632 = !DILocation(line: 439, column: 6, scope: !2595)
!2633 = !DILocation(line: 440, column: 3, scope: !2627)
!2634 = !DILocation(line: 441, column: 6, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 441, column: 6)
!2636 = !DILocation(line: 441, column: 11, scope: !2635)
!2637 = !DILocation(line: 441, column: 16, scope: !2635)
!2638 = !DILocation(line: 441, column: 21, scope: !2635)
!2639 = !DILocation(line: 441, column: 35, scope: !2635)
!2640 = !DILocation(line: 441, column: 6, scope: !2595)
!2641 = !DILocation(line: 442, column: 3, scope: !2635)
!2642 = !DILocation(line: 444, column: 29, scope: !2595)
!2643 = !DILocation(line: 444, column: 8, scope: !2595)
!2644 = !DILocation(line: 444, column: 6, scope: !2595)
!2645 = !DILocation(line: 445, column: 6, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 445, column: 6)
!2647 = !DILocation(line: 445, column: 10, scope: !2646)
!2648 = !DILocation(line: 445, column: 6, scope: !2595)
!2649 = !DILocation(line: 446, column: 3, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 445, column: 15)
!2651 = !DILocation(line: 447, column: 10, scope: !2650)
!2652 = !DILocation(line: 447, column: 3, scope: !2650)
!2653 = !DILocation(line: 451, column: 6, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 451, column: 6)
!2655 = !DILocation(line: 451, column: 11, scope: !2654)
!2656 = !DILocation(line: 451, column: 6, scope: !2595)
!2657 = !DILocation(line: 452, column: 9, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 451, column: 24)
!2659 = !DILocation(line: 452, column: 14, scope: !2658)
!2660 = !DILocation(line: 452, column: 19, scope: !2658)
!2661 = !DILocation(line: 452, column: 24, scope: !2658)
!2662 = !DILocation(line: 452, column: 38, scope: !2658)
!2663 = !DILocation(line: 452, column: 7, scope: !2658)
!2664 = !DILocation(line: 453, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 453, column: 7)
!2666 = !DILocation(line: 453, column: 11, scope: !2665)
!2667 = !DILocation(line: 453, column: 7, scope: !2658)
!2668 = !DILocation(line: 454, column: 4, scope: !2665)
!2669 = !DILocation(line: 455, column: 2, scope: !2658)
!2670 = !DILocation(line: 457, column: 2, scope: !2595)
!2671 = !DILocation(line: 458, column: 1, scope: !2595)
!2672 = distinct !DISubprogram(name: "ipack_device_release", scope: !3, file: !3, line: 20, type: !1627, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2673 = !DILocalVariable(name: "dev", arg: 1, scope: !2672, file: !3, line: 20, type: !94)
!2674 = !DILocation(line: 20, column: 49, scope: !2672)
!2675 = !DILocalVariable(name: "device", scope: !2672, file: !3, line: 22, type: !81)
!2676 = !DILocation(line: 22, column: 23, scope: !2672)
!2677 = !DILocalVariable(name: "__mptr", scope: !2678, file: !3, line: 22, type: !80)
!2678 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 22, column: 32)
!2679 = !DILocation(line: 22, column: 32, scope: !2678)
!2680 = !DILocation(line: 22, column: 32, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 22, column: 32)
!2682 = !DILocation(line: 23, column: 8, scope: !2672)
!2683 = !DILocation(line: 23, column: 16, scope: !2672)
!2684 = !DILocation(line: 23, column: 2, scope: !2672)
!2685 = !DILocation(line: 24, column: 2, scope: !2672)
!2686 = !DILocation(line: 24, column: 10, scope: !2672)
!2687 = !DILocation(line: 24, column: 18, scope: !2672)
!2688 = !DILocation(line: 25, column: 1, scope: !2672)
!2689 = distinct !DISubprogram(name: "ipack_device_read_id", scope: !3, file: !3, line: 348, type: !2072, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!2690 = !DILocation(line: 445, column: 72, scope: !2254, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 552, column: 10, scope: !2259, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 400, column: 12, scope: !2689)
!2693 = !DILocation(line: 446, column: 9, scope: !2254, inlinedAt: !2691)
!2694 = !DILocation(line: 446, column: 23, scope: !2254, inlinedAt: !2691)
!2695 = !DILocation(line: 448, column: 8, scope: !2254, inlinedAt: !2691)
!2696 = !DILocation(line: 318, column: 67, scope: !2270, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 553, column: 20, scope: !2259, inlinedAt: !2692)
!2698 = !DILocation(line: 346, column: 58, scope: !2276, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 547, column: 11, scope: !2259, inlinedAt: !2692)
!2700 = !DILocation(line: 472, column: 28, scope: !2282, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 481, column: 9, scope: !2287, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 545, column: 11, scope: !2289, inlinedAt: !2692)
!2703 = !DILocation(line: 472, column: 40, scope: !2282, inlinedAt: !2701)
!2704 = !DILocation(line: 472, column: 60, scope: !2282, inlinedAt: !2701)
!2705 = !DILocation(line: 478, column: 51, scope: !2287, inlinedAt: !2702)
!2706 = !DILocation(line: 478, column: 63, scope: !2287, inlinedAt: !2702)
!2707 = !DILocation(line: 480, column: 15, scope: !2287, inlinedAt: !2702)
!2708 = !DILocation(line: 538, column: 45, scope: !2261, inlinedAt: !2692)
!2709 = !DILocation(line: 538, column: 57, scope: !2261, inlinedAt: !2692)
!2710 = !DILocation(line: 542, column: 16, scope: !2259, inlinedAt: !2692)
!2711 = !DILocalVariable(name: "dev", arg: 1, scope: !2689, file: !3, line: 348, type: !81)
!2712 = !DILocation(line: 348, column: 54, scope: !2689)
!2713 = !DILocalVariable(name: "idmem", scope: !2689, file: !3, line: 350, type: !2096)
!2714 = !DILocation(line: 350, column: 14, scope: !2689)
!2715 = !DILocalVariable(name: "i", scope: !2689, file: !3, line: 351, type: !145)
!2716 = !DILocation(line: 351, column: 6, scope: !2689)
!2717 = !DILocalVariable(name: "ret", scope: !2689, file: !3, line: 352, type: !145)
!2718 = !DILocation(line: 352, column: 6, scope: !2689)
!2719 = !DILocation(line: 354, column: 18, scope: !2689)
!2720 = !DILocation(line: 354, column: 23, scope: !2689)
!2721 = !DILocation(line: 354, column: 46, scope: !2689)
!2722 = !DILocation(line: 355, column: 4, scope: !2689)
!2723 = !DILocation(line: 355, column: 9, scope: !2689)
!2724 = !DILocation(line: 355, column: 32, scope: !2689)
!2725 = !DILocation(line: 354, column: 10, scope: !2689)
!2726 = !DILocation(line: 354, column: 8, scope: !2689)
!2727 = !DILocation(line: 356, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 356, column: 6)
!2729 = !DILocation(line: 356, column: 6, scope: !2689)
!2730 = !DILocation(line: 357, column: 3, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 356, column: 14)
!2732 = !DILocation(line: 358, column: 3, scope: !2731)
!2733 = !DILocation(line: 365, column: 15, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 365, column: 6)
!2735 = !DILocation(line: 365, column: 21, scope: !2734)
!2736 = !DILocation(line: 365, column: 7, scope: !2734)
!2737 = !DILocation(line: 365, column: 26, scope: !2734)
!2738 = !DILocation(line: 365, column: 34, scope: !2734)
!2739 = !DILocation(line: 366, column: 13, scope: !2734)
!2740 = !DILocation(line: 366, column: 19, scope: !2734)
!2741 = !DILocation(line: 366, column: 5, scope: !2734)
!2742 = !DILocation(line: 366, column: 24, scope: !2734)
!2743 = !DILocation(line: 366, column: 32, scope: !2734)
!2744 = !DILocation(line: 367, column: 13, scope: !2734)
!2745 = !DILocation(line: 367, column: 19, scope: !2734)
!2746 = !DILocation(line: 367, column: 5, scope: !2734)
!2747 = !DILocation(line: 367, column: 24, scope: !2734)
!2748 = !DILocation(line: 367, column: 32, scope: !2734)
!2749 = !DILocation(line: 368, column: 14, scope: !2734)
!2750 = !DILocation(line: 368, column: 20, scope: !2734)
!2751 = !DILocation(line: 368, column: 6, scope: !2734)
!2752 = !DILocation(line: 368, column: 25, scope: !2734)
!2753 = !DILocation(line: 368, column: 33, scope: !2734)
!2754 = !DILocation(line: 369, column: 14, scope: !2734)
!2755 = !DILocation(line: 369, column: 20, scope: !2734)
!2756 = !DILocation(line: 369, column: 6, scope: !2734)
!2757 = !DILocation(line: 369, column: 25, scope: !2734)
!2758 = !DILocation(line: 365, column: 6, scope: !2689)
!2759 = !DILocation(line: 370, column: 3, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 369, column: 35)
!2761 = !DILocation(line: 370, column: 8, scope: !2760)
!2762 = !DILocation(line: 370, column: 18, scope: !2760)
!2763 = !DILocation(line: 371, column: 27, scope: !2760)
!2764 = !DILocation(line: 371, column: 33, scope: !2760)
!2765 = !DILocation(line: 371, column: 19, scope: !2760)
!2766 = !DILocation(line: 371, column: 3, scope: !2760)
!2767 = !DILocation(line: 371, column: 8, scope: !2760)
!2768 = !DILocation(line: 371, column: 17, scope: !2760)
!2769 = !DILocation(line: 372, column: 8, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 372, column: 7)
!2771 = !DILocation(line: 372, column: 13, scope: !2770)
!2772 = !DILocation(line: 372, column: 22, scope: !2770)
!2773 = !DILocation(line: 372, column: 30, scope: !2770)
!2774 = !DILocation(line: 372, column: 34, scope: !2770)
!2775 = !DILocation(line: 372, column: 39, scope: !2770)
!2776 = !DILocation(line: 372, column: 48, scope: !2770)
!2777 = !DILocation(line: 372, column: 7, scope: !2760)
!2778 = !DILocation(line: 373, column: 4, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 372, column: 57)
!2780 = !DILocation(line: 374, column: 4, scope: !2779)
!2781 = !DILocation(line: 374, column: 9, scope: !2779)
!2782 = !DILocation(line: 374, column: 18, scope: !2779)
!2783 = !DILocation(line: 375, column: 3, scope: !2779)
!2784 = !DILocation(line: 376, column: 2, scope: !2760)
!2785 = !DILocation(line: 376, column: 22, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 376, column: 13)
!2787 = !DILocation(line: 376, column: 28, scope: !2786)
!2788 = !DILocation(line: 376, column: 14, scope: !2786)
!2789 = !DILocation(line: 376, column: 33, scope: !2786)
!2790 = !DILocation(line: 376, column: 41, scope: !2786)
!2791 = !DILocation(line: 377, column: 13, scope: !2786)
!2792 = !DILocation(line: 377, column: 19, scope: !2786)
!2793 = !DILocation(line: 377, column: 5, scope: !2786)
!2794 = !DILocation(line: 377, column: 24, scope: !2786)
!2795 = !DILocation(line: 377, column: 32, scope: !2786)
!2796 = !DILocation(line: 378, column: 13, scope: !2786)
!2797 = !DILocation(line: 378, column: 19, scope: !2786)
!2798 = !DILocation(line: 378, column: 5, scope: !2786)
!2799 = !DILocation(line: 378, column: 24, scope: !2786)
!2800 = !DILocation(line: 378, column: 32, scope: !2786)
!2801 = !DILocation(line: 379, column: 13, scope: !2786)
!2802 = !DILocation(line: 379, column: 19, scope: !2786)
!2803 = !DILocation(line: 379, column: 5, scope: !2786)
!2804 = !DILocation(line: 379, column: 24, scope: !2786)
!2805 = !DILocation(line: 379, column: 32, scope: !2786)
!2806 = !DILocation(line: 380, column: 13, scope: !2786)
!2807 = !DILocation(line: 380, column: 19, scope: !2786)
!2808 = !DILocation(line: 380, column: 5, scope: !2786)
!2809 = !DILocation(line: 380, column: 24, scope: !2786)
!2810 = !DILocation(line: 380, column: 32, scope: !2786)
!2811 = !DILocation(line: 381, column: 13, scope: !2786)
!2812 = !DILocation(line: 381, column: 19, scope: !2786)
!2813 = !DILocation(line: 381, column: 5, scope: !2786)
!2814 = !DILocation(line: 381, column: 24, scope: !2786)
!2815 = !DILocation(line: 376, column: 13, scope: !2734)
!2816 = !DILocation(line: 382, column: 3, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 381, column: 33)
!2818 = !DILocation(line: 382, column: 8, scope: !2817)
!2819 = !DILocation(line: 382, column: 18, scope: !2817)
!2820 = !DILocation(line: 383, column: 30, scope: !2817)
!2821 = !DILocation(line: 383, column: 36, scope: !2817)
!2822 = !DILocation(line: 383, column: 19, scope: !2817)
!2823 = !DILocation(line: 383, column: 3, scope: !2817)
!2824 = !DILocation(line: 383, column: 8, scope: !2817)
!2825 = !DILocation(line: 383, column: 17, scope: !2817)
!2826 = !DILocation(line: 384, column: 8, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 384, column: 7)
!2828 = !DILocation(line: 384, column: 13, scope: !2827)
!2829 = !DILocation(line: 384, column: 22, scope: !2827)
!2830 = !DILocation(line: 384, column: 30, scope: !2827)
!2831 = !DILocation(line: 384, column: 34, scope: !2827)
!2832 = !DILocation(line: 384, column: 39, scope: !2827)
!2833 = !DILocation(line: 384, column: 48, scope: !2827)
!2834 = !DILocation(line: 384, column: 7, scope: !2817)
!2835 = !DILocation(line: 385, column: 4, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 384, column: 57)
!2837 = !DILocation(line: 386, column: 4, scope: !2836)
!2838 = !DILocation(line: 386, column: 9, scope: !2836)
!2839 = !DILocation(line: 386, column: 18, scope: !2836)
!2840 = !DILocation(line: 387, column: 3, scope: !2836)
!2841 = !DILocation(line: 388, column: 2, scope: !2817)
!2842 = !DILocation(line: 389, column: 3, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 388, column: 9)
!2844 = !DILocation(line: 389, column: 8, scope: !2843)
!2845 = !DILocation(line: 389, column: 18, scope: !2843)
!2846 = !DILocation(line: 390, column: 3, scope: !2843)
!2847 = !DILocation(line: 390, column: 8, scope: !2843)
!2848 = !DILocation(line: 390, column: 17, scope: !2843)
!2849 = !DILocation(line: 393, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 393, column: 6)
!2851 = !DILocation(line: 393, column: 12, scope: !2850)
!2852 = !DILocation(line: 393, column: 6, scope: !2689)
!2853 = !DILocation(line: 394, column: 7, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 393, column: 22)
!2855 = !DILocation(line: 395, column: 3, scope: !2854)
!2856 = !DILocation(line: 400, column: 20, scope: !2689)
!2857 = !DILocation(line: 400, column: 25, scope: !2689)
!2858 = !DILocation(line: 540, column: 27, scope: !2260, inlinedAt: !2692)
!2859 = !DILocation(line: 540, column: 6, scope: !2260, inlinedAt: !2692)
!2860 = !DILocation(line: 540, column: 6, scope: !2261, inlinedAt: !2692)
!2861 = !DILocation(line: 544, column: 7, scope: !2289, inlinedAt: !2692)
!2862 = !DILocation(line: 544, column: 12, scope: !2289, inlinedAt: !2692)
!2863 = !DILocation(line: 544, column: 7, scope: !2259, inlinedAt: !2692)
!2864 = !DILocation(line: 545, column: 25, scope: !2289, inlinedAt: !2692)
!2865 = !DILocation(line: 545, column: 31, scope: !2289, inlinedAt: !2692)
!2866 = !DILocation(line: 480, column: 33, scope: !2287, inlinedAt: !2702)
!2867 = !DILocation(line: 480, column: 23, scope: !2287, inlinedAt: !2702)
!2868 = !DILocation(line: 481, column: 29, scope: !2287, inlinedAt: !2702)
!2869 = !DILocation(line: 481, column: 35, scope: !2287, inlinedAt: !2702)
!2870 = !DILocation(line: 481, column: 42, scope: !2287, inlinedAt: !2702)
!2871 = !DILocation(line: 474, column: 23, scope: !2282, inlinedAt: !2701)
!2872 = !DILocation(line: 474, column: 29, scope: !2282, inlinedAt: !2701)
!2873 = !DILocation(line: 474, column: 36, scope: !2282, inlinedAt: !2701)
!2874 = !DILocation(line: 474, column: 9, scope: !2282, inlinedAt: !2701)
!2875 = !DILocation(line: 545, column: 4, scope: !2289, inlinedAt: !2692)
!2876 = !DILocation(line: 547, column: 25, scope: !2259, inlinedAt: !2692)
!2877 = !DILocation(line: 348, column: 7, scope: !2333, inlinedAt: !2699)
!2878 = !DILocation(line: 348, column: 6, scope: !2276, inlinedAt: !2699)
!2879 = !DILocation(line: 349, column: 3, scope: !2333, inlinedAt: !2699)
!2880 = !DILocation(line: 351, column: 6, scope: !2337, inlinedAt: !2699)
!2881 = !DILocation(line: 351, column: 11, scope: !2337, inlinedAt: !2699)
!2882 = !DILocation(line: 351, column: 6, scope: !2276, inlinedAt: !2699)
!2883 = !DILocation(line: 352, column: 3, scope: !2337, inlinedAt: !2699)
!2884 = !DILocation(line: 354, column: 32, scope: !2342, inlinedAt: !2699)
!2885 = !DILocation(line: 354, column: 37, scope: !2342, inlinedAt: !2699)
!2886 = !DILocation(line: 354, column: 42, scope: !2342, inlinedAt: !2699)
!2887 = !DILocation(line: 354, column: 45, scope: !2342, inlinedAt: !2699)
!2888 = !DILocation(line: 354, column: 50, scope: !2342, inlinedAt: !2699)
!2889 = !DILocation(line: 354, column: 6, scope: !2276, inlinedAt: !2699)
!2890 = !DILocation(line: 355, column: 3, scope: !2342, inlinedAt: !2699)
!2891 = !DILocation(line: 356, column: 32, scope: !2350, inlinedAt: !2699)
!2892 = !DILocation(line: 356, column: 37, scope: !2350, inlinedAt: !2699)
!2893 = !DILocation(line: 356, column: 43, scope: !2350, inlinedAt: !2699)
!2894 = !DILocation(line: 356, column: 46, scope: !2350, inlinedAt: !2699)
!2895 = !DILocation(line: 356, column: 51, scope: !2350, inlinedAt: !2699)
!2896 = !DILocation(line: 356, column: 6, scope: !2276, inlinedAt: !2699)
!2897 = !DILocation(line: 357, column: 3, scope: !2350, inlinedAt: !2699)
!2898 = !DILocation(line: 358, column: 6, scope: !2358, inlinedAt: !2699)
!2899 = !DILocation(line: 358, column: 11, scope: !2358, inlinedAt: !2699)
!2900 = !DILocation(line: 358, column: 6, scope: !2276, inlinedAt: !2699)
!2901 = !DILocation(line: 358, column: 26, scope: !2358, inlinedAt: !2699)
!2902 = !DILocation(line: 359, column: 6, scope: !2363, inlinedAt: !2699)
!2903 = !DILocation(line: 359, column: 11, scope: !2363, inlinedAt: !2699)
!2904 = !DILocation(line: 359, column: 6, scope: !2276, inlinedAt: !2699)
!2905 = !DILocation(line: 359, column: 26, scope: !2363, inlinedAt: !2699)
!2906 = !DILocation(line: 360, column: 6, scope: !2368, inlinedAt: !2699)
!2907 = !DILocation(line: 360, column: 11, scope: !2368, inlinedAt: !2699)
!2908 = !DILocation(line: 360, column: 6, scope: !2276, inlinedAt: !2699)
!2909 = !DILocation(line: 360, column: 26, scope: !2368, inlinedAt: !2699)
!2910 = !DILocation(line: 361, column: 6, scope: !2373, inlinedAt: !2699)
!2911 = !DILocation(line: 361, column: 11, scope: !2373, inlinedAt: !2699)
!2912 = !DILocation(line: 361, column: 6, scope: !2276, inlinedAt: !2699)
!2913 = !DILocation(line: 361, column: 26, scope: !2373, inlinedAt: !2699)
!2914 = !DILocation(line: 362, column: 6, scope: !2378, inlinedAt: !2699)
!2915 = !DILocation(line: 362, column: 11, scope: !2378, inlinedAt: !2699)
!2916 = !DILocation(line: 362, column: 6, scope: !2276, inlinedAt: !2699)
!2917 = !DILocation(line: 362, column: 26, scope: !2378, inlinedAt: !2699)
!2918 = !DILocation(line: 363, column: 6, scope: !2383, inlinedAt: !2699)
!2919 = !DILocation(line: 363, column: 11, scope: !2383, inlinedAt: !2699)
!2920 = !DILocation(line: 363, column: 6, scope: !2276, inlinedAt: !2699)
!2921 = !DILocation(line: 363, column: 26, scope: !2383, inlinedAt: !2699)
!2922 = !DILocation(line: 364, column: 6, scope: !2388, inlinedAt: !2699)
!2923 = !DILocation(line: 364, column: 11, scope: !2388, inlinedAt: !2699)
!2924 = !DILocation(line: 364, column: 6, scope: !2276, inlinedAt: !2699)
!2925 = !DILocation(line: 364, column: 26, scope: !2388, inlinedAt: !2699)
!2926 = !DILocation(line: 365, column: 6, scope: !2393, inlinedAt: !2699)
!2927 = !DILocation(line: 365, column: 11, scope: !2393, inlinedAt: !2699)
!2928 = !DILocation(line: 365, column: 6, scope: !2276, inlinedAt: !2699)
!2929 = !DILocation(line: 365, column: 26, scope: !2393, inlinedAt: !2699)
!2930 = !DILocation(line: 366, column: 6, scope: !2398, inlinedAt: !2699)
!2931 = !DILocation(line: 366, column: 11, scope: !2398, inlinedAt: !2699)
!2932 = !DILocation(line: 366, column: 6, scope: !2276, inlinedAt: !2699)
!2933 = !DILocation(line: 366, column: 26, scope: !2398, inlinedAt: !2699)
!2934 = !DILocation(line: 367, column: 6, scope: !2403, inlinedAt: !2699)
!2935 = !DILocation(line: 367, column: 11, scope: !2403, inlinedAt: !2699)
!2936 = !DILocation(line: 367, column: 6, scope: !2276, inlinedAt: !2699)
!2937 = !DILocation(line: 367, column: 26, scope: !2403, inlinedAt: !2699)
!2938 = !DILocation(line: 368, column: 6, scope: !2408, inlinedAt: !2699)
!2939 = !DILocation(line: 368, column: 11, scope: !2408, inlinedAt: !2699)
!2940 = !DILocation(line: 368, column: 6, scope: !2276, inlinedAt: !2699)
!2941 = !DILocation(line: 368, column: 26, scope: !2408, inlinedAt: !2699)
!2942 = !DILocation(line: 369, column: 6, scope: !2413, inlinedAt: !2699)
!2943 = !DILocation(line: 369, column: 11, scope: !2413, inlinedAt: !2699)
!2944 = !DILocation(line: 369, column: 6, scope: !2276, inlinedAt: !2699)
!2945 = !DILocation(line: 369, column: 26, scope: !2413, inlinedAt: !2699)
!2946 = !DILocation(line: 370, column: 6, scope: !2418, inlinedAt: !2699)
!2947 = !DILocation(line: 370, column: 11, scope: !2418, inlinedAt: !2699)
!2948 = !DILocation(line: 370, column: 6, scope: !2276, inlinedAt: !2699)
!2949 = !DILocation(line: 370, column: 26, scope: !2418, inlinedAt: !2699)
!2950 = !DILocation(line: 371, column: 6, scope: !2423, inlinedAt: !2699)
!2951 = !DILocation(line: 371, column: 11, scope: !2423, inlinedAt: !2699)
!2952 = !DILocation(line: 371, column: 6, scope: !2276, inlinedAt: !2699)
!2953 = !DILocation(line: 371, column: 26, scope: !2423, inlinedAt: !2699)
!2954 = !DILocation(line: 372, column: 6, scope: !2428, inlinedAt: !2699)
!2955 = !DILocation(line: 372, column: 11, scope: !2428, inlinedAt: !2699)
!2956 = !DILocation(line: 372, column: 6, scope: !2276, inlinedAt: !2699)
!2957 = !DILocation(line: 372, column: 26, scope: !2428, inlinedAt: !2699)
!2958 = !DILocation(line: 373, column: 6, scope: !2433, inlinedAt: !2699)
!2959 = !DILocation(line: 373, column: 11, scope: !2433, inlinedAt: !2699)
!2960 = !DILocation(line: 373, column: 6, scope: !2276, inlinedAt: !2699)
!2961 = !DILocation(line: 373, column: 26, scope: !2433, inlinedAt: !2699)
!2962 = !DILocation(line: 374, column: 6, scope: !2438, inlinedAt: !2699)
!2963 = !DILocation(line: 374, column: 11, scope: !2438, inlinedAt: !2699)
!2964 = !DILocation(line: 374, column: 6, scope: !2276, inlinedAt: !2699)
!2965 = !DILocation(line: 374, column: 26, scope: !2438, inlinedAt: !2699)
!2966 = !DILocation(line: 375, column: 6, scope: !2443, inlinedAt: !2699)
!2967 = !DILocation(line: 375, column: 11, scope: !2443, inlinedAt: !2699)
!2968 = !DILocation(line: 375, column: 6, scope: !2276, inlinedAt: !2699)
!2969 = !DILocation(line: 375, column: 27, scope: !2443, inlinedAt: !2699)
!2970 = !DILocation(line: 376, column: 6, scope: !2448, inlinedAt: !2699)
!2971 = !DILocation(line: 376, column: 11, scope: !2448, inlinedAt: !2699)
!2972 = !DILocation(line: 376, column: 6, scope: !2276, inlinedAt: !2699)
!2973 = !DILocation(line: 376, column: 32, scope: !2448, inlinedAt: !2699)
!2974 = !DILocation(line: 377, column: 6, scope: !2453, inlinedAt: !2699)
!2975 = !DILocation(line: 377, column: 11, scope: !2453, inlinedAt: !2699)
!2976 = !DILocation(line: 377, column: 6, scope: !2276, inlinedAt: !2699)
!2977 = !DILocation(line: 377, column: 32, scope: !2453, inlinedAt: !2699)
!2978 = !DILocation(line: 378, column: 6, scope: !2458, inlinedAt: !2699)
!2979 = !DILocation(line: 378, column: 11, scope: !2458, inlinedAt: !2699)
!2980 = !DILocation(line: 378, column: 6, scope: !2276, inlinedAt: !2699)
!2981 = !DILocation(line: 378, column: 32, scope: !2458, inlinedAt: !2699)
!2982 = !DILocation(line: 379, column: 6, scope: !2463, inlinedAt: !2699)
!2983 = !DILocation(line: 379, column: 11, scope: !2463, inlinedAt: !2699)
!2984 = !DILocation(line: 379, column: 6, scope: !2276, inlinedAt: !2699)
!2985 = !DILocation(line: 379, column: 33, scope: !2463, inlinedAt: !2699)
!2986 = !DILocation(line: 380, column: 6, scope: !2468, inlinedAt: !2699)
!2987 = !DILocation(line: 380, column: 11, scope: !2468, inlinedAt: !2699)
!2988 = !DILocation(line: 380, column: 6, scope: !2276, inlinedAt: !2699)
!2989 = !DILocation(line: 380, column: 33, scope: !2468, inlinedAt: !2699)
!2990 = !DILocation(line: 381, column: 6, scope: !2473, inlinedAt: !2699)
!2991 = !DILocation(line: 381, column: 11, scope: !2473, inlinedAt: !2699)
!2992 = !DILocation(line: 381, column: 6, scope: !2276, inlinedAt: !2699)
!2993 = !DILocation(line: 381, column: 33, scope: !2473, inlinedAt: !2699)
!2994 = !DILocation(line: 382, column: 2, scope: !2478, inlinedAt: !2699)
!2995 = !DILocation(line: 382, column: 2, scope: !2482, inlinedAt: !2699)
!2996 = !DILocation(line: 382, column: 2, scope: !2483, inlinedAt: !2699)
!2997 = !DILocation(line: 386, column: 1, scope: !2276, inlinedAt: !2699)
!2998 = !DILocation(line: 547, column: 9, scope: !2259, inlinedAt: !2692)
!2999 = !DILocation(line: 549, column: 8, scope: !2489, inlinedAt: !2692)
!3000 = !DILocation(line: 549, column: 7, scope: !2259, inlinedAt: !2692)
!3001 = !DILocation(line: 550, column: 4, scope: !2489, inlinedAt: !2692)
!3002 = !DILocation(line: 553, column: 33, scope: !2259, inlinedAt: !2692)
!3003 = !DILocation(line: 325, column: 6, scope: !2494, inlinedAt: !2697)
!3004 = !DILocation(line: 325, column: 6, scope: !2270, inlinedAt: !2697)
!3005 = !DILocation(line: 326, column: 3, scope: !2494, inlinedAt: !2697)
!3006 = !DILocation(line: 332, column: 9, scope: !2270, inlinedAt: !2697)
!3007 = !DILocation(line: 332, column: 15, scope: !2270, inlinedAt: !2697)
!3008 = !DILocation(line: 332, column: 2, scope: !2270, inlinedAt: !2697)
!3009 = !DILocation(line: 336, column: 1, scope: !2270, inlinedAt: !2697)
!3010 = !DILocation(line: 553, column: 5, scope: !2259, inlinedAt: !2692)
!3011 = !DILocation(line: 553, column: 41, scope: !2259, inlinedAt: !2692)
!3012 = !DILocation(line: 554, column: 5, scope: !2259, inlinedAt: !2692)
!3013 = !DILocation(line: 554, column: 12, scope: !2259, inlinedAt: !2692)
!3014 = !DILocation(line: 448, column: 31, scope: !2254, inlinedAt: !2691)
!3015 = !DILocation(line: 448, column: 34, scope: !2254, inlinedAt: !2691)
!3016 = !DILocation(line: 448, column: 14, scope: !2254, inlinedAt: !2691)
!3017 = !DILocation(line: 450, column: 22, scope: !2254, inlinedAt: !2691)
!3018 = !DILocation(line: 450, column: 25, scope: !2254, inlinedAt: !2691)
!3019 = !DILocation(line: 450, column: 30, scope: !2254, inlinedAt: !2691)
!3020 = !DILocation(line: 450, column: 36, scope: !2254, inlinedAt: !2691)
!3021 = !DILocation(line: 450, column: 8, scope: !2254, inlinedAt: !2691)
!3022 = !DILocation(line: 450, column: 6, scope: !2254, inlinedAt: !2691)
!3023 = !DILocation(line: 451, column: 9, scope: !2254, inlinedAt: !2691)
!3024 = !DILocation(line: 552, column: 3, scope: !2259, inlinedAt: !2692)
!3025 = !DILocation(line: 557, column: 19, scope: !2261, inlinedAt: !2692)
!3026 = !DILocation(line: 557, column: 25, scope: !2261, inlinedAt: !2692)
!3027 = !DILocation(line: 557, column: 9, scope: !2261, inlinedAt: !2692)
!3028 = !DILocation(line: 557, column: 2, scope: !2261, inlinedAt: !2692)
!3029 = !DILocation(line: 558, column: 1, scope: !2261, inlinedAt: !2692)
!3030 = !DILocation(line: 400, column: 2, scope: !2689)
!3031 = !DILocation(line: 400, column: 7, scope: !2689)
!3032 = !DILocation(line: 400, column: 10, scope: !2689)
!3033 = !DILocation(line: 401, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 401, column: 6)
!3035 = !DILocation(line: 401, column: 12, scope: !3034)
!3036 = !DILocation(line: 401, column: 6, scope: !2689)
!3037 = !DILocation(line: 402, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 401, column: 16)
!3039 = !DILocation(line: 403, column: 3, scope: !3038)
!3040 = !DILocation(line: 405, column: 9, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 405, column: 2)
!3042 = !DILocation(line: 405, column: 7, scope: !3041)
!3043 = !DILocation(line: 405, column: 14, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 405, column: 2)
!3045 = !DILocation(line: 405, column: 18, scope: !3044)
!3046 = !DILocation(line: 405, column: 23, scope: !3044)
!3047 = !DILocation(line: 405, column: 16, scope: !3044)
!3048 = !DILocation(line: 405, column: 2, scope: !3041)
!3049 = !DILocation(line: 406, column: 7, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 406, column: 7)
!3051 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 405, column: 38)
!3052 = !DILocation(line: 406, column: 12, scope: !3050)
!3053 = !DILocation(line: 406, column: 22, scope: !3050)
!3054 = !DILocation(line: 406, column: 7, scope: !3051)
!3055 = !DILocation(line: 407, column: 25, scope: !3050)
!3056 = !DILocation(line: 407, column: 34, scope: !3050)
!3057 = !DILocation(line: 407, column: 36, scope: !3050)
!3058 = !DILocation(line: 407, column: 31, scope: !3050)
!3059 = !DILocation(line: 407, column: 42, scope: !3050)
!3060 = !DILocation(line: 407, column: 17, scope: !3050)
!3061 = !DILocation(line: 407, column: 4, scope: !3050)
!3062 = !DILocation(line: 407, column: 9, scope: !3050)
!3063 = !DILocation(line: 407, column: 12, scope: !3050)
!3064 = !DILocation(line: 407, column: 15, scope: !3050)
!3065 = !DILocation(line: 409, column: 25, scope: !3050)
!3066 = !DILocation(line: 409, column: 33, scope: !3050)
!3067 = !DILocation(line: 409, column: 31, scope: !3050)
!3068 = !DILocation(line: 409, column: 17, scope: !3050)
!3069 = !DILocation(line: 409, column: 4, scope: !3050)
!3070 = !DILocation(line: 409, column: 9, scope: !3050)
!3071 = !DILocation(line: 409, column: 12, scope: !3050)
!3072 = !DILocation(line: 409, column: 15, scope: !3050)
!3073 = !DILocation(line: 410, column: 2, scope: !3051)
!3074 = !DILocation(line: 405, column: 34, scope: !3044)
!3075 = !DILocation(line: 405, column: 2, scope: !3044)
!3076 = distinct !{!3076, !3048, !3077}
!3077 = !DILocation(line: 410, column: 2, scope: !3041)
!3078 = !DILocation(line: 413, column: 10, scope: !2689)
!3079 = !DILocation(line: 413, column: 15, scope: !2689)
!3080 = !DILocation(line: 413, column: 2, scope: !2689)
!3081 = !DILocation(line: 415, column: 19, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 413, column: 26)
!3083 = !DILocation(line: 415, column: 3, scope: !3082)
!3084 = !DILocation(line: 416, column: 3, scope: !3082)
!3085 = !DILocation(line: 418, column: 19, scope: !3082)
!3086 = !DILocation(line: 418, column: 3, scope: !3082)
!3087 = !DILocation(line: 419, column: 3, scope: !3082)
!3088 = !DILocation(line: 420, column: 2, scope: !3082)
!3089 = !DILabel(scope: !2689, name: "out", file: !3, line: 422)
!3090 = !DILocation(line: 422, column: 1, scope: !2689)
!3091 = !DILocation(line: 423, column: 10, scope: !2689)
!3092 = !DILocation(line: 423, column: 2, scope: !2689)
!3093 = !DILocation(line: 425, column: 9, scope: !2689)
!3094 = !DILocation(line: 425, column: 2, scope: !2689)
!3095 = !DILocation(line: 426, column: 1, scope: !2689)
!3096 = distinct !DISubprogram(name: "ipack_device_add", scope: !3, file: !3, line: 461, type: !2072, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3097 = !DILocalVariable(name: "dev", arg: 1, scope: !3096, file: !3, line: 461, type: !81)
!3098 = !DILocation(line: 461, column: 43, scope: !3096)
!3099 = !DILocation(line: 463, column: 21, scope: !3096)
!3100 = !DILocation(line: 463, column: 26, scope: !3096)
!3101 = !DILocation(line: 463, column: 9, scope: !3096)
!3102 = !DILocation(line: 463, column: 2, scope: !3096)
!3103 = distinct !DISubprogram(name: "ipack_device_del", scope: !3, file: !3, line: 467, type: !2085, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3104 = !DILocalVariable(name: "dev", arg: 1, scope: !3103, file: !3, line: 467, type: !81)
!3105 = !DILocation(line: 467, column: 44, scope: !3103)
!3106 = !DILocation(line: 469, column: 14, scope: !3103)
!3107 = !DILocation(line: 469, column: 19, scope: !3103)
!3108 = !DILocation(line: 469, column: 2, scope: !3103)
!3109 = !DILocation(line: 470, column: 19, scope: !3103)
!3110 = !DILocation(line: 470, column: 2, scope: !3103)
!3111 = !DILocation(line: 471, column: 1, scope: !3103)
!3112 = distinct !DISubprogram(name: "ipack_put_device", scope: !3, file: !3, line: 480, type: !2085, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3113 = !DILocalVariable(name: "dev", arg: 1, scope: !3112, file: !3, line: 480, type: !81)
!3114 = !DILocation(line: 480, column: 44, scope: !3112)
!3115 = !DILocation(line: 482, column: 14, scope: !3112)
!3116 = !DILocation(line: 482, column: 19, scope: !3112)
!3117 = !DILocation(line: 482, column: 2, scope: !3112)
!3118 = !DILocation(line: 483, column: 1, scope: !3112)
!3119 = distinct !DISubprogram(name: "ipack_get_device", scope: !3, file: !3, line: 474, type: !2085, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3120 = !DILocalVariable(name: "dev", arg: 1, scope: !3119, file: !3, line: 474, type: !81)
!3121 = !DILocation(line: 474, column: 44, scope: !3119)
!3122 = !DILocation(line: 476, column: 14, scope: !3119)
!3123 = !DILocation(line: 476, column: 19, scope: !3119)
!3124 = !DILocation(line: 476, column: 2, scope: !3119)
!3125 = !DILocation(line: 477, column: 1, scope: !3119)
!3126 = distinct !DISubprogram(name: "ipack_exit", scope: !3, file: !3, line: 492, type: !2134, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3127 = !DILocation(line: 494, column: 2, scope: !3126)
!3128 = !DILocation(line: 495, column: 2, scope: !3126)
!3129 = !DILocation(line: 496, column: 1, scope: !3126)
!3130 = distinct !DISubprogram(name: "ipack_init", scope: !3, file: !3, line: 486, type: !3131, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!145}
!3133 = !DILocation(line: 488, column: 2, scope: !3130)
!3134 = !DILocation(line: 489, column: 9, scope: !3130)
!3135 = !DILocation(line: 489, column: 2, scope: !3130)
!3136 = distinct !DISubprogram(name: "get_order", scope: !3137, file: !3137, line: 29, type: !3138, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3137 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!145, !211}
!3140 = !DILocalVariable(name: "x", arg: 1, scope: !3141, file: !3142, line: 366, type: !282)
!3141 = distinct !DISubprogram(name: "fls64", scope: !3142, file: !3142, line: 366, type: !3143, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3142 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!145, !282}
!3145 = !DILocation(line: 366, column: 40, scope: !3141, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 46, column: 9, scope: !3136)
!3147 = !DILocalVariable(name: "bitpos", scope: !3141, file: !3142, line: 368, type: !145)
!3148 = !DILocation(line: 368, column: 6, scope: !3141, inlinedAt: !3146)
!3149 = !DILocalVariable(name: "size", arg: 1, scope: !3136, file: !3137, line: 29, type: !211)
!3150 = !DILocation(line: 29, column: 63, scope: !3136)
!3151 = !DILocation(line: 31, column: 27, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3136, file: !3137, line: 31, column: 6)
!3153 = !DILocation(line: 31, column: 6, scope: !3152)
!3154 = !DILocation(line: 31, column: 6, scope: !3136)
!3155 = !DILocation(line: 32, column: 8, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !3137, line: 32, column: 7)
!3157 = distinct !DILexicalBlock(scope: !3152, file: !3137, line: 31, column: 34)
!3158 = !DILocation(line: 32, column: 7, scope: !3157)
!3159 = !DILocation(line: 33, column: 4, scope: !3156)
!3160 = !DILocation(line: 35, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !3137, line: 35, column: 7)
!3162 = !DILocation(line: 35, column: 12, scope: !3161)
!3163 = !DILocation(line: 35, column: 7, scope: !3157)
!3164 = !DILocation(line: 36, column: 4, scope: !3161)
!3165 = !DILocation(line: 38, column: 10, scope: !3157)
!3166 = !DILocation(line: 38, column: 28, scope: !3157)
!3167 = !DILocation(line: 38, column: 41, scope: !3157)
!3168 = !DILocation(line: 38, column: 3, scope: !3157)
!3169 = !DILocation(line: 41, column: 6, scope: !3136)
!3170 = !DILocation(line: 42, column: 7, scope: !3136)
!3171 = !DILocation(line: 46, column: 15, scope: !3136)
!3172 = !DILocation(line: 374, column: 2, scope: !3141, inlinedAt: !3146)
!3173 = !DILocation(line: 376, column: 14, scope: !3141, inlinedAt: !3146)
!3174 = !{i32 308417}
!3175 = !DILocation(line: 377, column: 9, scope: !3141, inlinedAt: !3146)
!3176 = !DILocation(line: 377, column: 16, scope: !3141, inlinedAt: !3146)
!3177 = !DILocation(line: 46, column: 2, scope: !3136)
!3178 = !DILocation(line: 48, column: 1, scope: !3136)
!3179 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3180, file: !3180, line: 30, type: !3181, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3180 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!145, !280}
!3183 = !DILocation(line: 366, column: 40, scope: !3141, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 32, column: 9, scope: !3179)
!3185 = !DILocation(line: 368, column: 6, scope: !3141, inlinedAt: !3184)
!3186 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !3180, line: 30, type: !280)
!3187 = !DILocation(line: 30, column: 21, scope: !3179)
!3188 = !DILocation(line: 32, column: 15, scope: !3179)
!3189 = !DILocation(line: 374, column: 2, scope: !3141, inlinedAt: !3184)
!3190 = !DILocation(line: 376, column: 14, scope: !3141, inlinedAt: !3184)
!3191 = !DILocation(line: 377, column: 9, scope: !3141, inlinedAt: !3184)
!3192 = !DILocation(line: 377, column: 16, scope: !3141, inlinedAt: !3184)
!3193 = !DILocation(line: 32, column: 18, scope: !3179)
!3194 = !DILocation(line: 32, column: 2, scope: !3179)
!3195 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3196, file: !3196, line: 137, type: !3197, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3196 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!80, !1056, !1137, !208, !78}
!3199 = !DILocalVariable(name: "s", arg: 1, scope: !3195, file: !3196, line: 137, type: !1056)
!3200 = !DILocation(line: 137, column: 54, scope: !3195)
!3201 = !DILocalVariable(name: "object", arg: 2, scope: !3195, file: !3196, line: 137, type: !1137)
!3202 = !DILocation(line: 137, column: 69, scope: !3195)
!3203 = !DILocalVariable(name: "size", arg: 3, scope: !3195, file: !3196, line: 138, type: !208)
!3204 = !DILocation(line: 138, column: 12, scope: !3195)
!3205 = !DILocalVariable(name: "flags", arg: 4, scope: !3195, file: !3196, line: 138, type: !78)
!3206 = !DILocation(line: 138, column: 24, scope: !3195)
!3207 = !DILocation(line: 140, column: 17, scope: !3195)
!3208 = !DILocation(line: 140, column: 2, scope: !3195)
!3209 = distinct !DISubprogram(name: "ipack_bus_match", scope: !3, file: !3, line: 52, type: !1673, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3210 = !DILocalVariable(name: "dev", arg: 1, scope: !3209, file: !3, line: 52, type: !94)
!3211 = !DILocation(line: 52, column: 43, scope: !3209)
!3212 = !DILocalVariable(name: "drv", arg: 2, scope: !3209, file: !3, line: 52, type: !1675)
!3213 = !DILocation(line: 52, column: 70, scope: !3209)
!3214 = !DILocalVariable(name: "idev", scope: !3209, file: !3, line: 54, type: !81)
!3215 = !DILocation(line: 54, column: 23, scope: !3209)
!3216 = !DILocalVariable(name: "__mptr", scope: !3217, file: !3, line: 54, type: !80)
!3217 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 54, column: 30)
!3218 = !DILocation(line: 54, column: 30, scope: !3217)
!3219 = !DILocation(line: 54, column: 30, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 54, column: 30)
!3221 = !DILocalVariable(name: "idrv", scope: !3209, file: !3, line: 55, type: !2104)
!3222 = !DILocation(line: 55, column: 23, scope: !3209)
!3223 = !DILocalVariable(name: "__mptr", scope: !3224, file: !3, line: 55, type: !80)
!3224 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 55, column: 30)
!3225 = !DILocation(line: 55, column: 30, scope: !3224)
!3226 = !DILocation(line: 55, column: 30, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 55, column: 30)
!3228 = !DILocalVariable(name: "found_id", scope: !3209, file: !3, line: 56, type: !2109)
!3229 = !DILocation(line: 56, column: 32, scope: !3209)
!3230 = !DILocation(line: 58, column: 28, scope: !3209)
!3231 = !DILocation(line: 58, column: 34, scope: !3209)
!3232 = !DILocation(line: 58, column: 44, scope: !3209)
!3233 = !DILocation(line: 58, column: 13, scope: !3209)
!3234 = !DILocation(line: 58, column: 11, scope: !3209)
!3235 = !DILocation(line: 59, column: 9, scope: !3209)
!3236 = !DILocation(line: 59, column: 2, scope: !3209)
!3237 = distinct !DISubprogram(name: "ipack_uevent", scope: !3, file: !3, line: 85, type: !1618, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3238 = !DILocalVariable(name: "dev", arg: 1, scope: !3237, file: !3, line: 85, type: !94)
!3239 = !DILocation(line: 85, column: 40, scope: !3237)
!3240 = !DILocalVariable(name: "env", arg: 2, scope: !3237, file: !3, line: 85, type: !156)
!3241 = !DILocation(line: 85, column: 69, scope: !3237)
!3242 = !DILocalVariable(name: "idev", scope: !3237, file: !3, line: 87, type: !81)
!3243 = !DILocation(line: 87, column: 23, scope: !3237)
!3244 = !DILocation(line: 89, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 89, column: 6)
!3246 = !DILocation(line: 89, column: 6, scope: !3237)
!3247 = !DILocation(line: 90, column: 3, scope: !3245)
!3248 = !DILocalVariable(name: "__mptr", scope: !3249, file: !3, line: 92, type: !80)
!3249 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 92, column: 9)
!3250 = !DILocation(line: 92, column: 9, scope: !3249)
!3251 = !DILocation(line: 92, column: 9, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 92, column: 9)
!3253 = !DILocation(line: 92, column: 7, scope: !3237)
!3254 = !DILocation(line: 94, column: 21, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 94, column: 6)
!3256 = !DILocation(line: 95, column: 41, scope: !3255)
!3257 = !DILocation(line: 95, column: 47, scope: !3255)
!3258 = !DILocation(line: 96, column: 7, scope: !3255)
!3259 = !DILocation(line: 96, column: 13, scope: !3255)
!3260 = !DILocation(line: 96, column: 24, scope: !3255)
!3261 = !DILocation(line: 96, column: 30, scope: !3255)
!3262 = !DILocation(line: 94, column: 6, scope: !3255)
!3263 = !DILocation(line: 94, column: 6, scope: !3237)
!3264 = !DILocation(line: 97, column: 3, scope: !3255)
!3265 = !DILocation(line: 99, column: 2, scope: !3237)
!3266 = !DILocation(line: 100, column: 1, scope: !3237)
!3267 = distinct !DISubprogram(name: "ipack_bus_probe", scope: !3, file: !3, line: 62, type: !1636, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3268 = !DILocalVariable(name: "device", arg: 1, scope: !3267, file: !3, line: 62, type: !94)
!3269 = !DILocation(line: 62, column: 43, scope: !3267)
!3270 = !DILocalVariable(name: "dev", scope: !3267, file: !3, line: 64, type: !81)
!3271 = !DILocation(line: 64, column: 23, scope: !3267)
!3272 = !DILocalVariable(name: "__mptr", scope: !3273, file: !3, line: 64, type: !80)
!3273 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 64, column: 29)
!3274 = !DILocation(line: 64, column: 29, scope: !3273)
!3275 = !DILocation(line: 64, column: 29, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 64, column: 29)
!3277 = !DILocalVariable(name: "drv", scope: !3267, file: !3, line: 65, type: !2104)
!3278 = !DILocation(line: 65, column: 23, scope: !3267)
!3279 = !DILocalVariable(name: "__mptr", scope: !3280, file: !3, line: 65, type: !80)
!3280 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 65, column: 29)
!3281 = !DILocation(line: 65, column: 29, scope: !3280)
!3282 = !DILocation(line: 65, column: 29, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 65, column: 29)
!3284 = !DILocation(line: 67, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 67, column: 6)
!3286 = !DILocation(line: 67, column: 12, scope: !3285)
!3287 = !DILocation(line: 67, column: 17, scope: !3285)
!3288 = !DILocation(line: 67, column: 6, scope: !3267)
!3289 = !DILocation(line: 68, column: 3, scope: !3285)
!3290 = !DILocation(line: 70, column: 9, scope: !3267)
!3291 = !DILocation(line: 70, column: 14, scope: !3267)
!3292 = !DILocation(line: 70, column: 19, scope: !3267)
!3293 = !DILocation(line: 70, column: 25, scope: !3267)
!3294 = !DILocation(line: 70, column: 2, scope: !3267)
!3295 = !DILocation(line: 71, column: 1, scope: !3267)
!3296 = distinct !DISubprogram(name: "ipack_bus_remove", scope: !3, file: !3, line: 73, type: !1636, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3297 = !DILocalVariable(name: "device", arg: 1, scope: !3296, file: !3, line: 73, type: !94)
!3298 = !DILocation(line: 73, column: 44, scope: !3296)
!3299 = !DILocalVariable(name: "dev", scope: !3296, file: !3, line: 75, type: !81)
!3300 = !DILocation(line: 75, column: 23, scope: !3296)
!3301 = !DILocalVariable(name: "__mptr", scope: !3302, file: !3, line: 75, type: !80)
!3302 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 75, column: 29)
!3303 = !DILocation(line: 75, column: 29, scope: !3302)
!3304 = !DILocation(line: 75, column: 29, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 75, column: 29)
!3306 = !DILocalVariable(name: "drv", scope: !3296, file: !3, line: 76, type: !2104)
!3307 = !DILocation(line: 76, column: 23, scope: !3296)
!3308 = !DILocalVariable(name: "__mptr", scope: !3309, file: !3, line: 76, type: !80)
!3309 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 76, column: 29)
!3310 = !DILocation(line: 76, column: 29, scope: !3309)
!3311 = !DILocation(line: 76, column: 29, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 76, column: 29)
!3313 = !DILocation(line: 78, column: 7, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 78, column: 6)
!3315 = !DILocation(line: 78, column: 12, scope: !3314)
!3316 = !DILocation(line: 78, column: 17, scope: !3314)
!3317 = !DILocation(line: 78, column: 6, scope: !3296)
!3318 = !DILocation(line: 79, column: 3, scope: !3314)
!3319 = !DILocation(line: 81, column: 2, scope: !3296)
!3320 = !DILocation(line: 81, column: 7, scope: !3296)
!3321 = !DILocation(line: 81, column: 12, scope: !3296)
!3322 = !DILocation(line: 81, column: 19, scope: !3296)
!3323 = !DILocation(line: 82, column: 2, scope: !3296)
!3324 = !DILocation(line: 83, column: 1, scope: !3296)
!3325 = distinct !DISubprogram(name: "id_show", scope: !3, file: !3, line: 111, type: !2173, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3326 = !DILocalVariable(name: "dev", arg: 1, scope: !3325, file: !3, line: 111, type: !94)
!3327 = !DILocation(line: 111, column: 39, scope: !3325)
!3328 = !DILocalVariable(name: "attr", arg: 2, scope: !3325, file: !3, line: 112, type: !2175)
!3329 = !DILocation(line: 112, column: 35, scope: !3325)
!3330 = !DILocalVariable(name: "buf", arg: 3, scope: !3325, file: !3, line: 112, type: !161)
!3331 = !DILocation(line: 112, column: 47, scope: !3325)
!3332 = !DILocalVariable(name: "i", scope: !3325, file: !3, line: 114, type: !7)
!3333 = !DILocation(line: 114, column: 15, scope: !3325)
!3334 = !DILocalVariable(name: "c", scope: !3325, file: !3, line: 114, type: !7)
!3335 = !DILocation(line: 114, column: 18, scope: !3325)
!3336 = !DILocalVariable(name: "l", scope: !3325, file: !3, line: 114, type: !7)
!3337 = !DILocation(line: 114, column: 21, scope: !3325)
!3338 = !DILocalVariable(name: "s", scope: !3325, file: !3, line: 114, type: !7)
!3339 = !DILocation(line: 114, column: 24, scope: !3325)
!3340 = !DILocalVariable(name: "idev", scope: !3325, file: !3, line: 115, type: !81)
!3341 = !DILocation(line: 115, column: 23, scope: !3325)
!3342 = !DILocalVariable(name: "__mptr", scope: !3343, file: !3, line: 115, type: !80)
!3343 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 115, column: 30)
!3344 = !DILocation(line: 115, column: 30, scope: !3343)
!3345 = !DILocation(line: 115, column: 30, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 115, column: 30)
!3347 = !DILocation(line: 118, column: 10, scope: !3325)
!3348 = !DILocation(line: 118, column: 16, scope: !3325)
!3349 = !DILocation(line: 118, column: 2, scope: !3325)
!3350 = !DILocation(line: 120, column: 5, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 118, column: 27)
!3352 = !DILocation(line: 120, column: 14, scope: !3351)
!3353 = !DILocation(line: 120, column: 19, scope: !3351)
!3354 = !DILocation(line: 122, column: 5, scope: !3351)
!3355 = !DILocation(line: 122, column: 14, scope: !3351)
!3356 = !DILocation(line: 122, column: 19, scope: !3351)
!3357 = !DILocation(line: 124, column: 3, scope: !3351)
!3358 = !DILocation(line: 126, column: 4, scope: !3325)
!3359 = !DILocation(line: 127, column: 9, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 127, column: 2)
!3361 = !DILocation(line: 127, column: 7, scope: !3360)
!3362 = !DILocation(line: 127, column: 14, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 127, column: 2)
!3364 = !DILocation(line: 127, column: 18, scope: !3363)
!3365 = !DILocation(line: 127, column: 24, scope: !3363)
!3366 = !DILocation(line: 127, column: 16, scope: !3363)
!3367 = !DILocation(line: 127, column: 2, scope: !3360)
!3368 = !DILocation(line: 128, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 128, column: 7)
!3370 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 127, column: 39)
!3371 = !DILocation(line: 128, column: 9, scope: !3369)
!3372 = !DILocation(line: 128, column: 7, scope: !3370)
!3373 = !DILocation(line: 129, column: 9, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 129, column: 8)
!3375 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 128, column: 14)
!3376 = !DILocation(line: 129, column: 13, scope: !3374)
!3377 = !DILocation(line: 129, column: 11, scope: !3374)
!3378 = !DILocation(line: 129, column: 16, scope: !3374)
!3379 = !DILocation(line: 129, column: 8, scope: !3375)
!3380 = !DILocation(line: 130, column: 5, scope: !3374)
!3381 = !DILocation(line: 130, column: 10, scope: !3374)
!3382 = !DILocation(line: 130, column: 14, scope: !3374)
!3383 = !DILocation(line: 131, column: 14, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 131, column: 13)
!3385 = !DILocation(line: 131, column: 18, scope: !3384)
!3386 = !DILocation(line: 131, column: 16, scope: !3384)
!3387 = !DILocation(line: 131, column: 21, scope: !3384)
!3388 = !DILocation(line: 131, column: 13, scope: !3374)
!3389 = !DILocation(line: 132, column: 5, scope: !3384)
!3390 = !DILocation(line: 132, column: 10, scope: !3384)
!3391 = !DILocation(line: 132, column: 14, scope: !3384)
!3392 = !DILocation(line: 133, column: 3, scope: !3375)
!3393 = !DILocation(line: 134, column: 12, scope: !3370)
!3394 = !DILocation(line: 134, column: 16, scope: !3370)
!3395 = !DILocation(line: 134, column: 28, scope: !3370)
!3396 = !DILocation(line: 134, column: 34, scope: !3370)
!3397 = !DILocation(line: 134, column: 37, scope: !3370)
!3398 = !DILocation(line: 134, column: 3, scope: !3370)
!3399 = !DILocation(line: 135, column: 5, scope: !3370)
!3400 = !DILocation(line: 136, column: 2, scope: !3370)
!3401 = !DILocation(line: 127, column: 35, scope: !3363)
!3402 = !DILocation(line: 127, column: 2, scope: !3363)
!3403 = distinct !{!3403, !3367, !3404}
!3404 = !DILocation(line: 136, column: 2, scope: !3360)
!3405 = !DILocation(line: 137, column: 2, scope: !3325)
!3406 = !DILocation(line: 137, column: 7, scope: !3325)
!3407 = !DILocation(line: 137, column: 11, scope: !3325)
!3408 = !DILocation(line: 138, column: 9, scope: !3325)
!3409 = !DILocation(line: 138, column: 2, scope: !3325)
!3410 = !DILocation(line: 139, column: 1, scope: !3325)
!3411 = distinct !DISubprogram(name: "id_device_show", scope: !3, file: !3, line: 156, type: !2173, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3412 = !DILocalVariable(name: "dev", arg: 1, scope: !3411, file: !3, line: 156, type: !94)
!3413 = !DILocation(line: 156, column: 31, scope: !3411)
!3414 = !DILocalVariable(name: "attr", arg: 2, scope: !3411, file: !3, line: 156, type: !2175)
!3415 = !DILocation(line: 156, column: 61, scope: !3411)
!3416 = !DILocalVariable(name: "buf", arg: 3, scope: !3411, file: !3, line: 156, type: !161)
!3417 = !DILocation(line: 156, column: 73, scope: !3411)
!3418 = !DILocalVariable(name: "idev", scope: !3411, file: !3, line: 158, type: !81)
!3419 = !DILocation(line: 158, column: 23, scope: !3411)
!3420 = !DILocalVariable(name: "__mptr", scope: !3421, file: !3, line: 158, type: !80)
!3421 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 158, column: 30)
!3422 = !DILocation(line: 158, column: 30, scope: !3421)
!3423 = !DILocation(line: 158, column: 30, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 158, column: 30)
!3425 = !DILocation(line: 159, column: 10, scope: !3411)
!3426 = !DILocation(line: 159, column: 16, scope: !3411)
!3427 = !DILocation(line: 159, column: 2, scope: !3411)
!3428 = !DILocation(line: 161, column: 18, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 159, column: 27)
!3430 = !DILocation(line: 161, column: 35, scope: !3429)
!3431 = !DILocation(line: 161, column: 41, scope: !3429)
!3432 = !DILocation(line: 161, column: 10, scope: !3429)
!3433 = !DILocation(line: 161, column: 3, scope: !3429)
!3434 = !DILocation(line: 163, column: 18, scope: !3429)
!3435 = !DILocation(line: 163, column: 35, scope: !3429)
!3436 = !DILocation(line: 163, column: 41, scope: !3429)
!3437 = !DILocation(line: 163, column: 10, scope: !3429)
!3438 = !DILocation(line: 163, column: 3, scope: !3429)
!3439 = !DILocation(line: 165, column: 3, scope: !3429)
!3440 = !DILocation(line: 167, column: 1, scope: !3411)
!3441 = distinct !DISubprogram(name: "id_format_show", scope: !3, file: !3, line: 178, type: !2173, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3442 = !DILocalVariable(name: "dev", arg: 1, scope: !3441, file: !3, line: 178, type: !94)
!3443 = !DILocation(line: 178, column: 1, scope: !3441)
!3444 = !DILocalVariable(name: "attr", arg: 2, scope: !3441, file: !3, line: 178, type: !2175)
!3445 = !DILocalVariable(name: "buf", arg: 3, scope: !3441, file: !3, line: 178, type: !161)
!3446 = !DILocalVariable(name: "idev", scope: !3441, file: !3, line: 178, type: !81)
!3447 = !DILocalVariable(name: "__mptr", scope: !3448, file: !3, line: 178, type: !80)
!3448 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 178, column: 1)
!3449 = !DILocation(line: 178, column: 1, scope: !3448)
!3450 = !DILocation(line: 178, column: 1, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 178, column: 1)
!3452 = distinct !DISubprogram(name: "id_vendor_show", scope: !3, file: !3, line: 142, type: !2173, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3453 = !DILocalVariable(name: "dev", arg: 1, scope: !3452, file: !3, line: 142, type: !94)
!3454 = !DILocation(line: 142, column: 31, scope: !3452)
!3455 = !DILocalVariable(name: "attr", arg: 2, scope: !3452, file: !3, line: 142, type: !2175)
!3456 = !DILocation(line: 142, column: 61, scope: !3452)
!3457 = !DILocalVariable(name: "buf", arg: 3, scope: !3452, file: !3, line: 142, type: !161)
!3458 = !DILocation(line: 142, column: 73, scope: !3452)
!3459 = !DILocalVariable(name: "idev", scope: !3452, file: !3, line: 144, type: !81)
!3460 = !DILocation(line: 144, column: 23, scope: !3452)
!3461 = !DILocalVariable(name: "__mptr", scope: !3462, file: !3, line: 144, type: !80)
!3462 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 144, column: 30)
!3463 = !DILocation(line: 144, column: 30, scope: !3462)
!3464 = !DILocation(line: 144, column: 30, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 144, column: 30)
!3466 = !DILocation(line: 145, column: 10, scope: !3452)
!3467 = !DILocation(line: 145, column: 16, scope: !3452)
!3468 = !DILocation(line: 145, column: 2, scope: !3452)
!3469 = !DILocation(line: 147, column: 18, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 145, column: 27)
!3471 = !DILocation(line: 147, column: 35, scope: !3470)
!3472 = !DILocation(line: 147, column: 41, scope: !3470)
!3473 = !DILocation(line: 147, column: 10, scope: !3470)
!3474 = !DILocation(line: 147, column: 3, scope: !3470)
!3475 = !DILocation(line: 149, column: 18, scope: !3470)
!3476 = !DILocation(line: 149, column: 35, scope: !3470)
!3477 = !DILocation(line: 149, column: 41, scope: !3470)
!3478 = !DILocation(line: 149, column: 10, scope: !3470)
!3479 = !DILocation(line: 149, column: 3, scope: !3470)
!3480 = !DILocation(line: 151, column: 3, scope: !3470)
!3481 = !DILocation(line: 153, column: 1, scope: !3452)
!3482 = distinct !DISubprogram(name: "modalias_show", scope: !3, file: !3, line: 169, type: !2173, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3483 = !DILocalVariable(name: "dev", arg: 1, scope: !3482, file: !3, line: 169, type: !94)
!3484 = !DILocation(line: 169, column: 45, scope: !3482)
!3485 = !DILocalVariable(name: "attr", arg: 2, scope: !3482, file: !3, line: 169, type: !2175)
!3486 = !DILocation(line: 169, column: 75, scope: !3482)
!3487 = !DILocalVariable(name: "buf", arg: 3, scope: !3482, file: !3, line: 170, type: !161)
!3488 = !DILocation(line: 170, column: 15, scope: !3482)
!3489 = !DILocalVariable(name: "idev", scope: !3482, file: !3, line: 172, type: !81)
!3490 = !DILocation(line: 172, column: 23, scope: !3482)
!3491 = !DILocalVariable(name: "__mptr", scope: !3492, file: !3, line: 172, type: !80)
!3492 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 172, column: 30)
!3493 = !DILocation(line: 172, column: 30, scope: !3492)
!3494 = !DILocation(line: 172, column: 30, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 172, column: 30)
!3496 = !DILocation(line: 174, column: 17, scope: !3482)
!3497 = !DILocation(line: 174, column: 46, scope: !3482)
!3498 = !DILocation(line: 174, column: 52, scope: !3482)
!3499 = !DILocation(line: 175, column: 10, scope: !3482)
!3500 = !DILocation(line: 175, column: 16, scope: !3482)
!3501 = !DILocation(line: 175, column: 27, scope: !3482)
!3502 = !DILocation(line: 175, column: 33, scope: !3482)
!3503 = !DILocation(line: 174, column: 9, scope: !3482)
!3504 = !DILocation(line: 174, column: 2, scope: !3482)
!3505 = distinct !DISubprogram(name: "ipack_match_id", scope: !3, file: !3, line: 40, type: !3506, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!2109, !2109, !81}
!3508 = !DILocalVariable(name: "ids", arg: 1, scope: !3505, file: !3, line: 40, type: !2109)
!3509 = !DILocation(line: 40, column: 46, scope: !3505)
!3510 = !DILocalVariable(name: "idev", arg: 2, scope: !3505, file: !3, line: 40, type: !81)
!3511 = !DILocation(line: 40, column: 72, scope: !3505)
!3512 = !DILocation(line: 42, column: 6, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 42, column: 6)
!3514 = !DILocation(line: 42, column: 6, scope: !3505)
!3515 = !DILocation(line: 43, column: 3, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 42, column: 11)
!3517 = !DILocation(line: 43, column: 10, scope: !3516)
!3518 = !DILocation(line: 43, column: 15, scope: !3516)
!3519 = !DILocation(line: 43, column: 22, scope: !3516)
!3520 = !DILocation(line: 43, column: 25, scope: !3516)
!3521 = !DILocation(line: 43, column: 30, scope: !3516)
!3522 = !DILocation(line: 44, column: 31, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 44, column: 8)
!3524 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 43, column: 38)
!3525 = !DILocation(line: 44, column: 36, scope: !3523)
!3526 = !DILocation(line: 44, column: 8, scope: !3523)
!3527 = !DILocation(line: 44, column: 8, scope: !3524)
!3528 = !DILocation(line: 45, column: 12, scope: !3523)
!3529 = !DILocation(line: 45, column: 5, scope: !3523)
!3530 = !DILocation(line: 46, column: 7, scope: !3524)
!3531 = distinct !{!3531, !3515, !3532}
!3532 = !DILocation(line: 47, column: 3, scope: !3516)
!3533 = !DILocation(line: 48, column: 2, scope: !3516)
!3534 = !DILocation(line: 49, column: 2, scope: !3505)
!3535 = !DILocation(line: 50, column: 1, scope: !3505)
!3536 = distinct !DISubprogram(name: "ipack_match_one_device", scope: !3, file: !3, line: 28, type: !3537, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!2109, !2109, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!3541 = !DILocalVariable(name: "id", arg: 1, scope: !3536, file: !3, line: 28, type: !2109)
!3542 = !DILocation(line: 28, column: 54, scope: !3536)
!3543 = !DILocalVariable(name: "device", arg: 2, scope: !3536, file: !3, line: 29, type: !3539)
!3544 = !DILocation(line: 29, column: 37, scope: !3536)
!3545 = !DILocation(line: 31, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 31, column: 6)
!3547 = !DILocation(line: 31, column: 11, scope: !3546)
!3548 = !DILocation(line: 31, column: 18, scope: !3546)
!3549 = !DILocation(line: 31, column: 38, scope: !3546)
!3550 = !DILocation(line: 32, column: 5, scope: !3546)
!3551 = !DILocation(line: 32, column: 9, scope: !3546)
!3552 = !DILocation(line: 32, column: 19, scope: !3546)
!3553 = !DILocation(line: 32, column: 27, scope: !3546)
!3554 = !DILocation(line: 32, column: 16, scope: !3546)
!3555 = !DILocation(line: 32, column: 38, scope: !3546)
!3556 = !DILocation(line: 33, column: 7, scope: !3546)
!3557 = !DILocation(line: 33, column: 11, scope: !3546)
!3558 = !DILocation(line: 33, column: 18, scope: !3546)
!3559 = !DILocation(line: 33, column: 34, scope: !3546)
!3560 = !DILocation(line: 33, column: 37, scope: !3546)
!3561 = !DILocation(line: 33, column: 41, scope: !3546)
!3562 = !DILocation(line: 33, column: 51, scope: !3546)
!3563 = !DILocation(line: 33, column: 59, scope: !3546)
!3564 = !DILocation(line: 33, column: 48, scope: !3546)
!3565 = !DILocation(line: 33, column: 70, scope: !3546)
!3566 = !DILocation(line: 34, column: 7, scope: !3546)
!3567 = !DILocation(line: 34, column: 11, scope: !3546)
!3568 = !DILocation(line: 34, column: 18, scope: !3546)
!3569 = !DILocation(line: 34, column: 34, scope: !3546)
!3570 = !DILocation(line: 34, column: 37, scope: !3546)
!3571 = !DILocation(line: 34, column: 41, scope: !3546)
!3572 = !DILocation(line: 34, column: 51, scope: !3546)
!3573 = !DILocation(line: 34, column: 59, scope: !3546)
!3574 = !DILocation(line: 34, column: 48, scope: !3546)
!3575 = !DILocation(line: 31, column: 6, scope: !3536)
!3576 = !DILocation(line: 35, column: 10, scope: !3546)
!3577 = !DILocation(line: 35, column: 3, scope: !3546)
!3578 = !DILocation(line: 36, column: 2, scope: !3536)
!3579 = !DILocation(line: 37, column: 1, scope: !3536)
!3580 = distinct !DISubprogram(name: "ipack_parse_id1", scope: !3, file: !3, line: 312, type: !2085, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3581 = !DILocalVariable(name: "dev", arg: 1, scope: !3580, file: !3, line: 312, type: !81)
!3582 = !DILocation(line: 312, column: 50, scope: !3580)
!3583 = !DILocalVariable(name: "id", scope: !3580, file: !3, line: 314, type: !2096)
!3584 = !DILocation(line: 314, column: 6, scope: !3580)
!3585 = !DILocation(line: 314, column: 11, scope: !3580)
!3586 = !DILocation(line: 314, column: 16, scope: !3580)
!3587 = !DILocalVariable(name: "crc", scope: !3580, file: !3, line: 315, type: !571)
!3588 = !DILocation(line: 315, column: 5, scope: !3580)
!3589 = !DILocation(line: 317, column: 19, scope: !3580)
!3590 = !DILocation(line: 317, column: 2, scope: !3580)
!3591 = !DILocation(line: 317, column: 7, scope: !3580)
!3592 = !DILocation(line: 317, column: 17, scope: !3580)
!3593 = !DILocation(line: 318, column: 19, scope: !3580)
!3594 = !DILocation(line: 318, column: 2, scope: !3580)
!3595 = !DILocation(line: 318, column: 7, scope: !3580)
!3596 = !DILocation(line: 318, column: 17, scope: !3580)
!3597 = !DILocation(line: 319, column: 2, scope: !3580)
!3598 = !DILocation(line: 319, column: 7, scope: !3580)
!3599 = !DILocation(line: 319, column: 18, scope: !3580)
!3600 = !DILocation(line: 320, column: 22, scope: !3580)
!3601 = !DILocation(line: 320, column: 28, scope: !3580)
!3602 = !DILocation(line: 320, column: 2, scope: !3580)
!3603 = !DILocation(line: 320, column: 7, scope: !3580)
!3604 = !DILocation(line: 320, column: 19, scope: !3580)
!3605 = !DILocation(line: 321, column: 24, scope: !3580)
!3606 = !DILocation(line: 321, column: 8, scope: !3580)
!3607 = !DILocation(line: 321, column: 6, scope: !3580)
!3608 = !DILocation(line: 322, column: 25, scope: !3580)
!3609 = !DILocation(line: 322, column: 32, scope: !3580)
!3610 = !DILocation(line: 322, column: 29, scope: !3580)
!3611 = !DILocation(line: 322, column: 2, scope: !3580)
!3612 = !DILocation(line: 322, column: 7, scope: !3580)
!3613 = !DILocation(line: 322, column: 22, scope: !3580)
!3614 = !DILocation(line: 323, column: 7, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 323, column: 6)
!3616 = !DILocation(line: 323, column: 12, scope: !3615)
!3617 = !DILocation(line: 323, column: 6, scope: !3580)
!3618 = !DILocation(line: 324, column: 3, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 323, column: 28)
!3620 = !DILocation(line: 326, column: 2, scope: !3619)
!3621 = !DILocation(line: 327, column: 1, scope: !3580)
!3622 = distinct !DISubprogram(name: "ipack_parse_id2", scope: !3, file: !3, line: 329, type: !2085, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3623 = !DILocalVariable(name: "dev", arg: 1, scope: !3622, file: !3, line: 329, type: !81)
!3624 = !DILocation(line: 329, column: 50, scope: !3622)
!3625 = !DILocalVariable(name: "id", scope: !3622, file: !3, line: 331, type: !2123)
!3626 = !DILocation(line: 331, column: 10, scope: !3622)
!3627 = !DILocation(line: 331, column: 26, scope: !3622)
!3628 = !DILocation(line: 331, column: 31, scope: !3622)
!3629 = !DILocation(line: 331, column: 15, scope: !3622)
!3630 = !DILocalVariable(name: "flags", scope: !3622, file: !3, line: 332, type: !408)
!3631 = !DILocation(line: 332, column: 6, scope: !3622)
!3632 = !DILocalVariable(name: "crc", scope: !3622, file: !3, line: 332, type: !408)
!3633 = !DILocation(line: 332, column: 13, scope: !3622)
!3634 = !DILocation(line: 334, column: 21, scope: !3622)
!3635 = !DILocation(line: 334, column: 40, scope: !3622)
!3636 = !DILocation(line: 334, column: 48, scope: !3622)
!3637 = !DILocation(line: 335, column: 7, scope: !3622)
!3638 = !DILocation(line: 335, column: 5, scope: !3622)
!3639 = !DILocation(line: 334, column: 2, scope: !3622)
!3640 = !DILocation(line: 334, column: 7, scope: !3622)
!3641 = !DILocation(line: 334, column: 17, scope: !3622)
!3642 = !DILocation(line: 336, column: 19, scope: !3622)
!3643 = !DILocation(line: 336, column: 2, scope: !3622)
!3644 = !DILocation(line: 336, column: 7, scope: !3622)
!3645 = !DILocation(line: 336, column: 17, scope: !3622)
!3646 = !DILocation(line: 337, column: 10, scope: !3622)
!3647 = !DILocation(line: 337, column: 8, scope: !3622)
!3648 = !DILocation(line: 338, column: 23, scope: !3622)
!3649 = !DILocation(line: 338, column: 29, scope: !3622)
!3650 = !DILocation(line: 338, column: 21, scope: !3622)
!3651 = !DILocation(line: 338, column: 20, scope: !3622)
!3652 = !DILocation(line: 338, column: 2, scope: !3622)
!3653 = !DILocation(line: 338, column: 7, scope: !3622)
!3654 = !DILocation(line: 338, column: 18, scope: !3622)
!3655 = !DILocation(line: 339, column: 24, scope: !3622)
!3656 = !DILocation(line: 339, column: 30, scope: !3622)
!3657 = !DILocation(line: 339, column: 22, scope: !3622)
!3658 = !DILocation(line: 339, column: 21, scope: !3622)
!3659 = !DILocation(line: 339, column: 2, scope: !3622)
!3660 = !DILocation(line: 339, column: 7, scope: !3622)
!3661 = !DILocation(line: 339, column: 19, scope: !3622)
!3662 = !DILocation(line: 340, column: 24, scope: !3622)
!3663 = !DILocation(line: 340, column: 8, scope: !3622)
!3664 = !DILocation(line: 340, column: 6, scope: !3622)
!3665 = !DILocation(line: 341, column: 25, scope: !3622)
!3666 = !DILocation(line: 341, column: 32, scope: !3622)
!3667 = !DILocation(line: 341, column: 29, scope: !3622)
!3668 = !DILocation(line: 341, column: 2, scope: !3622)
!3669 = !DILocation(line: 341, column: 7, scope: !3622)
!3670 = !DILocation(line: 341, column: 22, scope: !3622)
!3671 = !DILocation(line: 342, column: 7, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 342, column: 6)
!3673 = !DILocation(line: 342, column: 12, scope: !3672)
!3674 = !DILocation(line: 342, column: 6, scope: !3622)
!3675 = !DILocation(line: 343, column: 3, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 342, column: 28)
!3677 = !DILocation(line: 345, column: 2, scope: !3676)
!3678 = !DILocation(line: 346, column: 1, scope: !3622)
!3679 = distinct !DISubprogram(name: "ipack_calc_crc1", scope: !3, file: !3, line: 282, type: !3680, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!571, !81}
!3682 = !DILocalVariable(name: "dev", arg: 1, scope: !3679, file: !3, line: 282, type: !81)
!3683 = !DILocation(line: 282, column: 48, scope: !3679)
!3684 = !DILocalVariable(name: "c", scope: !3679, file: !3, line: 284, type: !571)
!3685 = !DILocation(line: 284, column: 5, scope: !3679)
!3686 = !DILocalVariable(name: "crc", scope: !3679, file: !3, line: 285, type: !408)
!3687 = !DILocation(line: 285, column: 6, scope: !3679)
!3688 = !DILocalVariable(name: "i", scope: !3679, file: !3, line: 286, type: !7)
!3689 = !DILocation(line: 286, column: 15, scope: !3679)
!3690 = !DILocation(line: 288, column: 6, scope: !3679)
!3691 = !DILocation(line: 289, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 289, column: 2)
!3693 = !DILocation(line: 289, column: 7, scope: !3692)
!3694 = !DILocation(line: 289, column: 14, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 289, column: 2)
!3696 = !DILocation(line: 289, column: 18, scope: !3695)
!3697 = !DILocation(line: 289, column: 23, scope: !3695)
!3698 = !DILocation(line: 289, column: 16, scope: !3695)
!3699 = !DILocation(line: 289, column: 2, scope: !3692)
!3700 = !DILocation(line: 290, column: 8, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 289, column: 38)
!3702 = !DILocation(line: 290, column: 10, scope: !3701)
!3703 = !DILocation(line: 290, column: 7, scope: !3701)
!3704 = !DILocation(line: 290, column: 19, scope: !3701)
!3705 = !DILocation(line: 290, column: 24, scope: !3701)
!3706 = !DILocation(line: 290, column: 27, scope: !3701)
!3707 = !DILocation(line: 290, column: 5, scope: !3701)
!3708 = !DILocation(line: 291, column: 24, scope: !3701)
!3709 = !DILocation(line: 291, column: 29, scope: !3701)
!3710 = !DILocation(line: 291, column: 9, scope: !3701)
!3711 = !DILocation(line: 291, column: 7, scope: !3701)
!3712 = !DILocation(line: 292, column: 2, scope: !3701)
!3713 = !DILocation(line: 289, column: 34, scope: !3695)
!3714 = !DILocation(line: 289, column: 2, scope: !3695)
!3715 = distinct !{!3715, !3699, !3716}
!3716 = !DILocation(line: 292, column: 2, scope: !3692)
!3717 = !DILocation(line: 293, column: 9, scope: !3679)
!3718 = !DILocation(line: 293, column: 8, scope: !3679)
!3719 = !DILocation(line: 293, column: 6, scope: !3679)
!3720 = !DILocation(line: 294, column: 9, scope: !3679)
!3721 = !DILocation(line: 294, column: 13, scope: !3679)
!3722 = !DILocation(line: 294, column: 2, scope: !3679)
!3723 = distinct !DISubprogram(name: "ipack_crc_byte", scope: !3, file: !3, line: 268, type: !3724, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!408, !408, !571}
!3726 = !DILocalVariable(name: "crc", arg: 1, scope: !3723, file: !3, line: 268, type: !408)
!3727 = !DILocation(line: 268, column: 31, scope: !3723)
!3728 = !DILocalVariable(name: "c", arg: 2, scope: !3723, file: !3, line: 268, type: !571)
!3729 = !DILocation(line: 268, column: 39, scope: !3723)
!3730 = !DILocalVariable(name: "i", scope: !3723, file: !3, line: 270, type: !145)
!3731 = !DILocation(line: 270, column: 6, scope: !3723)
!3732 = !DILocation(line: 272, column: 9, scope: !3723)
!3733 = !DILocation(line: 272, column: 11, scope: !3723)
!3734 = !DILocation(line: 272, column: 6, scope: !3723)
!3735 = !DILocation(line: 273, column: 9, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 273, column: 2)
!3737 = !DILocation(line: 273, column: 7, scope: !3736)
!3738 = !DILocation(line: 273, column: 14, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 273, column: 2)
!3740 = !DILocation(line: 273, column: 16, scope: !3739)
!3741 = !DILocation(line: 273, column: 2, scope: !3736)
!3742 = !DILocation(line: 274, column: 10, scope: !3739)
!3743 = !DILocation(line: 274, column: 14, scope: !3739)
!3744 = !DILocation(line: 274, column: 24, scope: !3739)
!3745 = !DILocation(line: 274, column: 28, scope: !3739)
!3746 = !DILocation(line: 274, column: 23, scope: !3739)
!3747 = !DILocation(line: 274, column: 20, scope: !3739)
!3748 = !DILocation(line: 274, column: 9, scope: !3739)
!3749 = !DILocation(line: 274, column: 7, scope: !3739)
!3750 = !DILocation(line: 274, column: 3, scope: !3739)
!3751 = !DILocation(line: 273, column: 22, scope: !3739)
!3752 = !DILocation(line: 273, column: 2, scope: !3739)
!3753 = distinct !{!3753, !3741, !3754}
!3754 = !DILocation(line: 274, column: 50, scope: !3736)
!3755 = !DILocation(line: 275, column: 9, scope: !3723)
!3756 = !DILocation(line: 275, column: 2, scope: !3723)
!3757 = distinct !DISubprogram(name: "__fswab16", scope: !3758, file: !3758, line: 48, type: !3759, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3758 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!409, !409}
!3761 = !DILocalVariable(name: "val", arg: 1, scope: !3757, file: !3758, line: 48, type: !409)
!3762 = !DILocation(line: 48, column: 57, scope: !3757)
!3763 = !DILocation(line: 53, column: 9, scope: !3757)
!3764 = !DILocation(line: 53, column: 2, scope: !3757)
!3765 = distinct !DISubprogram(name: "ipack_calc_crc2", scope: !3, file: !3, line: 297, type: !3766, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!408, !81}
!3768 = !DILocalVariable(name: "dev", arg: 1, scope: !3765, file: !3, line: 297, type: !81)
!3769 = !DILocation(line: 297, column: 49, scope: !3765)
!3770 = !DILocalVariable(name: "c", scope: !3765, file: !3, line: 299, type: !571)
!3771 = !DILocation(line: 299, column: 5, scope: !3765)
!3772 = !DILocalVariable(name: "crc", scope: !3765, file: !3, line: 300, type: !408)
!3773 = !DILocation(line: 300, column: 6, scope: !3765)
!3774 = !DILocalVariable(name: "i", scope: !3765, file: !3, line: 301, type: !7)
!3775 = !DILocation(line: 301, column: 15, scope: !3765)
!3776 = !DILocation(line: 303, column: 6, scope: !3765)
!3777 = !DILocation(line: 304, column: 9, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 304, column: 2)
!3779 = !DILocation(line: 304, column: 7, scope: !3778)
!3780 = !DILocation(line: 304, column: 14, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 304, column: 2)
!3782 = !DILocation(line: 304, column: 18, scope: !3781)
!3783 = !DILocation(line: 304, column: 23, scope: !3781)
!3784 = !DILocation(line: 304, column: 16, scope: !3781)
!3785 = !DILocation(line: 304, column: 2, scope: !3778)
!3786 = !DILocation(line: 305, column: 9, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 304, column: 38)
!3788 = !DILocation(line: 305, column: 11, scope: !3787)
!3789 = !DILocation(line: 305, column: 20, scope: !3787)
!3790 = !DILocation(line: 305, column: 24, scope: !3787)
!3791 = !DILocation(line: 305, column: 26, scope: !3787)
!3792 = !DILocation(line: 305, column: 7, scope: !3787)
!3793 = !DILocation(line: 305, column: 38, scope: !3787)
!3794 = !DILocation(line: 305, column: 43, scope: !3787)
!3795 = !DILocation(line: 305, column: 46, scope: !3787)
!3796 = !DILocation(line: 305, column: 5, scope: !3787)
!3797 = !DILocation(line: 306, column: 24, scope: !3787)
!3798 = !DILocation(line: 306, column: 29, scope: !3787)
!3799 = !DILocation(line: 306, column: 9, scope: !3787)
!3800 = !DILocation(line: 306, column: 7, scope: !3787)
!3801 = !DILocation(line: 307, column: 2, scope: !3787)
!3802 = !DILocation(line: 304, column: 34, scope: !3781)
!3803 = !DILocation(line: 304, column: 2, scope: !3781)
!3804 = distinct !{!3804, !3785, !3805}
!3805 = !DILocation(line: 307, column: 2, scope: !3778)
!3806 = !DILocation(line: 308, column: 9, scope: !3765)
!3807 = !DILocation(line: 308, column: 8, scope: !3765)
!3808 = !DILocation(line: 308, column: 6, scope: !3765)
!3809 = !DILocation(line: 309, column: 9, scope: !3765)
!3810 = !DILocation(line: 309, column: 2, scope: !3765)
!3811 = distinct !DISubprogram(name: "ida_init", scope: !1470, file: !1470, line: 312, type: !3812, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3814}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!3815 = !DILocalVariable(name: "ida", arg: 1, scope: !3811, file: !1470, line: 312, type: !3814)
!3816 = !DILocation(line: 312, column: 41, scope: !3811)
!3817 = !DILocation(line: 314, column: 17, scope: !3811)
!3818 = !DILocation(line: 314, column: 22, scope: !3811)
!3819 = !DILocation(line: 314, column: 2, scope: !3811)
!3820 = !DILocation(line: 315, column: 1, scope: !3811)
!3821 = distinct !DISubprogram(name: "xa_init_flags", scope: !73, file: !73, line: 374, type: !3822, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{null, !3824, !78}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!3825 = !DILocalVariable(name: "lock", arg: 1, scope: !3826, file: !3827, line: 327, type: !3831)
!3826 = distinct !DISubprogram(name: "spinlock_check", scope: !3827, file: !3827, line: 327, type: !3828, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !133)
!3827 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!3832 = !DILocation(line: 327, column: 67, scope: !3826, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 376, column: 2, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3821, file: !73, line: 376, column: 2)
!3835 = !DILocalVariable(name: "xa", arg: 1, scope: !3821, file: !73, line: 374, type: !3824)
!3836 = !DILocation(line: 374, column: 49, scope: !3821)
!3837 = !DILocalVariable(name: "flags", arg: 2, scope: !3821, file: !73, line: 374, type: !78)
!3838 = !DILocation(line: 374, column: 59, scope: !3821)
!3839 = !DILocation(line: 376, column: 2, scope: !3821)
!3840 = !DILocation(line: 376, column: 2, scope: !3834)
!3841 = !DILocation(line: 329, column: 10, scope: !3826, inlinedAt: !3833)
!3842 = !DILocation(line: 329, column: 16, scope: !3826, inlinedAt: !3833)
!3843 = !DILocation(line: 377, column: 17, scope: !3821)
!3844 = !DILocation(line: 377, column: 2, scope: !3821)
!3845 = !DILocation(line: 377, column: 6, scope: !3821)
!3846 = !DILocation(line: 377, column: 15, scope: !3821)
!3847 = !DILocation(line: 378, column: 2, scope: !3821)
!3848 = !DILocation(line: 378, column: 6, scope: !3821)
!3849 = !DILocation(line: 378, column: 14, scope: !3821)
!3850 = !DILocation(line: 379, column: 1, scope: !3821)
