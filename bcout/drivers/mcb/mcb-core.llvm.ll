; ModuleID = '../bcout/drivers/mcb/mcb-core.llvm.bc'
source_filename = "drivers/mcb/mcb-core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall5.init\22, \22a\22\09"
module asm "__initcall_mcb_init5:\09\09\09"
module asm ".long\09mcb_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

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
%struct.fwnode_handle = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.mcb_driver = type { %struct.device_driver, %struct.mcb_device_id*, i32 (%struct.mcb_device*, %struct.mcb_device_id*)*, void (%struct.mcb_device*)*, void (%struct.mcb_device*)* }
%struct.mcb_device_id = type { i16, i64 }
%struct.mcb_device = type { %struct.device, %struct.mcb_bus*, i8, %struct.mcb_driver*, i16, i32, i32, i32, i32, i32, %struct.resource, %struct.resource, %struct.device* }
%struct.mcb_bus = type { %struct.device, %struct.device*, i32, i8, i8, i8, [13 x i8], i32 (%struct.mcb_device*)* }

@mcb_bus_type = internal global %struct.bus_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @mcb_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @mcb_uevent, i32 (%struct.device*)* @mcb_probe, void (%struct.device*)* null, i32 (%struct.device*)* @mcb_remove, void (%struct.device*)* @mcb_shutdown, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"mcb%d-16z%03d-%d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\013Failed registering device 16z%03d on bus mcb%d (%d)\0A\00", align 1
@mcb_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !2031
@mcb_carrier_device_type = internal global %struct.device_type { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @mcb_carrier_groups, i32 0, i32 0), i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* null, %struct.dev_pm_ops* null }, align 8, !dbg !2036
@.str.2 = private unnamed_addr constant [7 x i8] c"mcb:%d\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@__UNIQUE_ID___addressable_mcb_init164 = internal global i8* bitcast (i32 ()* @mcb_init to i8*), section ".discard.addressable", align 8, !dbg !2002
@__exitcall_mcb_exit = internal global void ()* @mcb_exit, section ".exitcall.exit", align 8, !dbg !2004
@__UNIQUE_ID_description165 = internal constant [41 x i8] c"mcb.description=MEN Chameleon Bus Driver\00", section ".modinfo", align 1, !dbg !2011
@__UNIQUE_ID_author166 = internal constant [58 x i8] c"mcb.author=Johannes Thumshirn <johannes.thumshirn@men.de>\00", section ".modinfo", align 1, !dbg !2016
@__UNIQUE_ID_file167 = internal constant [25 x i8] c"mcb.file=drivers/mcb/mcb\00", section ".modinfo", align 1, !dbg !2021
@__UNIQUE_ID_license168 = internal constant [19 x i8] c"mcb.license=GPL v2\00", section ".modinfo", align 1, !dbg !2026
@.str.3 = private unnamed_addr constant [4 x i8] c"mcb\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MODALIAS=mcb:16z%03d\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"mcb-carrier\00", align 1
@mcb_carrier_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @mcb_carrier_group, %struct.attribute_group* null], align 16, !dbg !2038
@mcb_carrier_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @mcb_bus_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2041
@mcb_bus_attrs = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_revision, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_model, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_minor, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_name, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2043
@dev_attr_revision = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @revision_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2048
@dev_attr_model = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @model_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2062
@dev_attr_minor = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @minor_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2064
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @name_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2066
@.str.7 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"minor\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Error adding device (%d)\0A\00", align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_mcb_init164 to i8*), i8* bitcast (void ()** @__exitcall_mcb_exit to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_description165, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author166, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_file167, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license168, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__mcb_register_driver(%struct.mcb_driver* %drv, %struct.module* %owner, i8* %mod_name) #0 !dbg !2073 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.mcb_driver*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  store %struct.mcb_driver* %drv, %struct.mcb_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_driver** %drv.addr, metadata !2076, metadata !DIExpression()), !dbg !2077
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2078, metadata !DIExpression()), !dbg !2079
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !2080, metadata !DIExpression()), !dbg !2081
  %0 = load %struct.mcb_driver*, %struct.mcb_driver** %drv.addr, align 8, !dbg !2082
  %probe = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %0, i32 0, i32 2, !dbg !2084
  %1 = load i32 (%struct.mcb_device*, %struct.mcb_device_id*)*, i32 (%struct.mcb_device*, %struct.mcb_device_id*)** %probe, align 8, !dbg !2084
  %tobool = icmp ne i32 (%struct.mcb_device*, %struct.mcb_device_id*)* %1, null, !dbg !2082
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2085

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mcb_driver*, %struct.mcb_driver** %drv.addr, align 8, !dbg !2086
  %remove = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %2, i32 0, i32 3, !dbg !2087
  %3 = load void (%struct.mcb_device*)*, void (%struct.mcb_device*)** %remove, align 8, !dbg !2087
  %tobool1 = icmp ne void (%struct.mcb_device*)* %3, null, !dbg !2086
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2088

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2089
  br label %return, !dbg !2089

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2090
  %5 = load %struct.mcb_driver*, %struct.mcb_driver** %drv.addr, align 8, !dbg !2091
  %driver = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %5, i32 0, i32 0, !dbg !2092
  %owner2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 2, !dbg !2093
  store %struct.module* %4, %struct.module** %owner2, align 8, !dbg !2094
  %6 = load %struct.mcb_driver*, %struct.mcb_driver** %drv.addr, align 8, !dbg !2095
  %driver3 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %6, i32 0, i32 0, !dbg !2096
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver3, i32 0, i32 1, !dbg !2097
  store %struct.bus_type* @mcb_bus_type, %struct.bus_type** %bus, align 8, !dbg !2098
  %7 = load i8*, i8** %mod_name.addr, align 8, !dbg !2099
  %8 = load %struct.mcb_driver*, %struct.mcb_driver** %drv.addr, align 8, !dbg !2100
  %driver4 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %8, i32 0, i32 0, !dbg !2101
  %mod_name5 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver4, i32 0, i32 3, !dbg !2102
  store i8* %7, i8** %mod_name5, align 8, !dbg !2103
  %9 = load %struct.mcb_driver*, %struct.mcb_driver** %drv.addr, align 8, !dbg !2104
  %driver6 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %9, i32 0, i32 0, !dbg !2105
  %call = call i32 @driver_register(%struct.device_driver* %driver6) #7, !dbg !2106
  store i32 %call, i32* %retval, align 4, !dbg !2107
  br label %return, !dbg !2107

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2108
  ret i32 %10, !dbg !2108
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mcb_unregister_driver(%struct.mcb_driver* %drv) #0 !dbg !2109 {
entry:
  %drv.addr = alloca %struct.mcb_driver*, align 8
  store %struct.mcb_driver* %drv, %struct.mcb_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_driver** %drv.addr, metadata !2112, metadata !DIExpression()), !dbg !2113
  %0 = load %struct.mcb_driver*, %struct.mcb_driver** %drv.addr, align 8, !dbg !2114
  %driver = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %0, i32 0, i32 0, !dbg !2115
  call void @driver_unregister(%struct.device_driver* %driver) #7, !dbg !2116
  ret void, !dbg !2117
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mcb_device_register(%struct.mcb_bus* %bus, %struct.mcb_device* %dev) #0 !dbg !2118 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.mcb_bus*, align 8
  %dev.addr = alloca %struct.mcb_device*, align 8
  %ret = alloca i32, align 4
  %device_id = alloca i32, align 4
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2121, metadata !DIExpression()), !dbg !2122
  store %struct.mcb_device* %dev, %struct.mcb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %dev.addr, metadata !2123, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2125, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.declare(metadata i32* %device_id, metadata !2127, metadata !DIExpression()), !dbg !2128
  %0 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2129
  %dev1 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %0, i32 0, i32 0, !dbg !2130
  call void @device_initialize(%struct.device* %dev1) #7, !dbg !2131
  %1 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2132
  %call = call %struct.mcb_bus* @mcb_bus_get(%struct.mcb_bus* %1) #7, !dbg !2133
  %2 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2134
  %dev2 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %2, i32 0, i32 0, !dbg !2135
  %bus3 = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 5, !dbg !2136
  store %struct.bus_type* @mcb_bus_type, %struct.bus_type** %bus3, align 8, !dbg !2137
  %3 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2138
  %dev4 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %3, i32 0, i32 0, !dbg !2139
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 1, !dbg !2140
  %4 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2140
  %5 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2141
  %dev5 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %5, i32 0, i32 0, !dbg !2142
  %parent6 = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 1, !dbg !2143
  store %struct.device* %4, %struct.device** %parent6, align 8, !dbg !2144
  %6 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2145
  %dev7 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %6, i32 0, i32 0, !dbg !2146
  %release = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 31, !dbg !2147
  store void (%struct.device*)* @mcb_release_dev, void (%struct.device*)** %release, align 8, !dbg !2148
  %7 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2149
  %carrier = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %7, i32 0, i32 1, !dbg !2150
  %8 = load %struct.device*, %struct.device** %carrier, align 8, !dbg !2150
  %9 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2151
  %dma_dev = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %9, i32 0, i32 12, !dbg !2152
  store %struct.device* %8, %struct.device** %dma_dev, align 8, !dbg !2153
  %10 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2154
  %id = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %10, i32 0, i32 4, !dbg !2155
  %11 = load i16, i16* %id, align 8, !dbg !2155
  %conv = zext i16 %11 to i32, !dbg !2154
  store i32 %conv, i32* %device_id, align 4, !dbg !2156
  %12 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2157
  %dev8 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %12, i32 0, i32 0, !dbg !2158
  %13 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2159
  %bus_nr = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %13, i32 0, i32 2, !dbg !2160
  %14 = load i32, i32* %bus_nr, align 8, !dbg !2160
  %15 = load i32, i32* %device_id, align 4, !dbg !2161
  %16 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2162
  %inst = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %16, i32 0, i32 5, !dbg !2163
  %17 = load i32, i32* %inst, align 4, !dbg !2163
  %18 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2164
  %group = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %18, i32 0, i32 6, !dbg !2165
  %19 = load i32, i32* %group, align 8, !dbg !2165
  %20 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2166
  %var = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %20, i32 0, i32 7, !dbg !2167
  %21 = load i32, i32* %var, align 4, !dbg !2167
  %call9 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %17, i32 %19, i32 %21) #7, !dbg !2168
  %22 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2169
  %dev10 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %22, i32 0, i32 0, !dbg !2170
  %call11 = call i32 @device_add(%struct.device* %dev10) #7, !dbg !2171
  store i32 %call11, i32* %ret, align 4, !dbg !2172
  %23 = load i32, i32* %ret, align 4, !dbg !2173
  %cmp = icmp slt i32 %23, 0, !dbg !2175
  br i1 %cmp, label %if.then, label %if.end, !dbg !2176

if.then:                                          ; preds = %entry
  %24 = load i32, i32* %device_id, align 4, !dbg !2177
  %25 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2177
  %bus_nr13 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %25, i32 0, i32 2, !dbg !2177
  %26 = load i32, i32* %bus_nr13, align 8, !dbg !2177
  %27 = load i32, i32* %ret, align 4, !dbg !2177
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26, i32 %27) #8, !dbg !2177
  br label %out, !dbg !2179

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2180
  br label %return, !dbg !2180

out:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !2181), !dbg !2182
  %28 = load i32, i32* %ret, align 4, !dbg !2183
  store i32 %28, i32* %retval, align 4, !dbg !2184
  br label %return, !dbg !2184

return:                                           ; preds = %out, %if.end
  %29 = load i32, i32* %retval, align 4, !dbg !2185
  ret i32 %29, !dbg !2185
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mcb_bus* @mcb_bus_get(%struct.mcb_bus* %bus) #0 !dbg !2186 {
entry:
  %bus.addr = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2189, metadata !DIExpression()), !dbg !2190
  %0 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2191
  %tobool = icmp ne %struct.mcb_bus* %0, null, !dbg !2191
  br i1 %tobool, label %if.then, label %if.end, !dbg !2193

if.then:                                          ; preds = %entry
  %1 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2194
  %dev = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %1, i32 0, i32 0, !dbg !2195
  %call = call %struct.device* @get_device(%struct.device* %dev) #7, !dbg !2196
  br label %if.end, !dbg !2196

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2197
  ret %struct.mcb_bus* %2, !dbg !2198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mcb_release_dev(%struct.device* %dev) #0 !dbg !2199 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mdev = alloca %struct.mcb_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2200, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %mdev, metadata !2202, metadata !DIExpression()), !dbg !2203
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2204
  %call = call %struct.mcb_device* @to_mcb_device(%struct.device* %0) #7, !dbg !2205
  store %struct.mcb_device* %call, %struct.mcb_device** %mdev, align 8, !dbg !2203
  %1 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2206
  %bus = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %1, i32 0, i32 1, !dbg !2207
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2207
  call void @mcb_bus_put(%struct.mcb_bus* %2) #7, !dbg !2208
  %3 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2209
  %4 = bitcast %struct.mcb_device* %3 to i8*, !dbg !2209
  call void @kfree(i8* %4) #7, !dbg !2210
  ret void, !dbg !2211
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mcb_bus* @mcb_alloc_bus(%struct.device* %carrier) #0 !dbg !2212 {
entry:
  %retval = alloca %struct.mcb_bus*, align 8
  %carrier.addr = alloca %struct.device*, align 8
  %bus = alloca %struct.mcb_bus*, align 8
  %bus_nr = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.device* %carrier, %struct.device** %carrier.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %carrier.addr, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata i32* %bus_nr, metadata !2219, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2221, metadata !DIExpression()), !dbg !2222
  %call = call i8* @kzalloc(i64 736, i32 3264) #7, !dbg !2223
  %0 = bitcast i8* %call to %struct.mcb_bus*, !dbg !2223
  store %struct.mcb_bus* %0, %struct.mcb_bus** %bus, align 8, !dbg !2224
  %1 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2225
  %tobool = icmp ne %struct.mcb_bus* %1, null, !dbg !2225
  br i1 %tobool, label %if.end, label %if.then, !dbg !2227

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #7, !dbg !2228
  %2 = bitcast i8* %call1 to %struct.mcb_bus*, !dbg !2228
  store %struct.mcb_bus* %2, %struct.mcb_bus** %retval, align 8, !dbg !2229
  br label %return, !dbg !2229

if.end:                                           ; preds = %entry
  %call2 = call i32 @ida_alloc_range(%struct.ida* @mcb_ida, i32 0, i32 -1, i32 3264) #7, !dbg !2230
  store i32 %call2, i32* %bus_nr, align 4, !dbg !2231
  %3 = load i32, i32* %bus_nr, align 4, !dbg !2232
  %cmp = icmp slt i32 %3, 0, !dbg !2234
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2235

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %bus_nr, align 4, !dbg !2236
  store i32 %4, i32* %rc, align 4, !dbg !2238
  br label %err_free, !dbg !2239

if.end4:                                          ; preds = %if.end
  %5 = load i32, i32* %bus_nr, align 4, !dbg !2240
  %6 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2241
  %bus_nr5 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %6, i32 0, i32 2, !dbg !2242
  store i32 %5, i32* %bus_nr5, align 8, !dbg !2243
  %7 = load %struct.device*, %struct.device** %carrier.addr, align 8, !dbg !2244
  %call6 = call %struct.device* @get_device(%struct.device* %7) #7, !dbg !2245
  %8 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2246
  %carrier7 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %8, i32 0, i32 1, !dbg !2247
  store %struct.device* %call6, %struct.device** %carrier7, align 8, !dbg !2248
  %9 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2249
  %dev = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %9, i32 0, i32 0, !dbg !2250
  call void @device_initialize(%struct.device* %dev) #7, !dbg !2251
  %10 = load %struct.device*, %struct.device** %carrier.addr, align 8, !dbg !2252
  %11 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2253
  %dev8 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %11, i32 0, i32 0, !dbg !2254
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 1, !dbg !2255
  store %struct.device* %10, %struct.device** %parent, align 8, !dbg !2256
  %12 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2257
  %dev9 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %12, i32 0, i32 0, !dbg !2258
  %bus10 = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 5, !dbg !2259
  store %struct.bus_type* @mcb_bus_type, %struct.bus_type** %bus10, align 8, !dbg !2260
  %13 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2261
  %dev11 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %13, i32 0, i32 0, !dbg !2262
  %type = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 4, !dbg !2263
  store %struct.device_type* @mcb_carrier_device_type, %struct.device_type** %type, align 8, !dbg !2264
  %14 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2265
  %dev12 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %14, i32 0, i32 0, !dbg !2266
  %release = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 31, !dbg !2267
  store void (%struct.device*)* @mcb_free_bus, void (%struct.device*)** %release, align 8, !dbg !2268
  %15 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2269
  %dev13 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %15, i32 0, i32 0, !dbg !2270
  %16 = load i32, i32* %bus_nr, align 4, !dbg !2271
  %call14 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %16) #7, !dbg !2272
  %17 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2273
  %dev15 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %17, i32 0, i32 0, !dbg !2274
  %call16 = call i32 @device_add(%struct.device* %dev15) #7, !dbg !2275
  store i32 %call16, i32* %rc, align 4, !dbg !2276
  %18 = load i32, i32* %rc, align 4, !dbg !2277
  %tobool17 = icmp ne i32 %18, 0, !dbg !2277
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2279

if.then18:                                        ; preds = %if.end4
  br label %err_free, !dbg !2280

if.end19:                                         ; preds = %if.end4
  %19 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2281
  store %struct.mcb_bus* %19, %struct.mcb_bus** %retval, align 8, !dbg !2282
  br label %return, !dbg !2282

err_free:                                         ; preds = %if.then18, %if.then3
  call void @llvm.dbg.label(metadata !2283), !dbg !2284
  %20 = load %struct.device*, %struct.device** %carrier.addr, align 8, !dbg !2285
  call void @put_device(%struct.device* %20) #7, !dbg !2286
  %21 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2287
  %22 = bitcast %struct.mcb_bus* %21 to i8*, !dbg !2287
  call void @kfree(i8* %22) #7, !dbg !2288
  %23 = load i32, i32* %rc, align 4, !dbg !2289
  %conv = sext i32 %23 to i64, !dbg !2289
  %call20 = call i8* @ERR_PTR(i64 %conv) #7, !dbg !2290
  %24 = bitcast i8* %call20 to %struct.mcb_bus*, !dbg !2290
  store %struct.mcb_bus* %24, %struct.mcb_bus** %retval, align 8, !dbg !2291
  br label %return, !dbg !2291

return:                                           ; preds = %err_free, %if.end19, %if.then
  %25 = load %struct.mcb_bus*, %struct.mcb_bus** %retval, align 8, !dbg !2292
  ret %struct.mcb_bus* %25, !dbg !2292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2293 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2296, metadata !DIExpression()), !dbg !2300
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2306, metadata !DIExpression()), !dbg !2307
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2308, metadata !DIExpression()), !dbg !2309
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2310, metadata !DIExpression()), !dbg !2311
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2312, metadata !DIExpression()), !dbg !2316
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2318, metadata !DIExpression()), !dbg !2322
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2324, metadata !DIExpression()), !dbg !2328
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2333, metadata !DIExpression()), !dbg !2334
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2335, metadata !DIExpression()), !dbg !2336
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2337, metadata !DIExpression()), !dbg !2338
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2339, metadata !DIExpression()), !dbg !2340
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2341, metadata !DIExpression()), !dbg !2342
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2343, metadata !DIExpression()), !dbg !2344
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2345, metadata !DIExpression()), !dbg !2346
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2347, metadata !DIExpression()), !dbg !2348
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2349, metadata !DIExpression()), !dbg !2350
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2351, metadata !DIExpression()), !dbg !2352
  %0 = load i64, i64* %size.addr, align 8, !dbg !2353
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2354
  %or = or i32 %1, 256, !dbg !2355
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2356
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !2357
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2358

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2359
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2360
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2361

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2362
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2363
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2364
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2365
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2342
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2366
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2367
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2368
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2369
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2370
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2371
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2372
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2372
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2372
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2372
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2372
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2373
  br label %kmalloc.exit, !dbg !2373

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2374
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2375
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2375
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2377

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2378
  br label %kmalloc_index.exit.i, !dbg !2378

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2379
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2381
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2382

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2383
  br label %kmalloc_index.exit.i, !dbg !2383

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2384
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2386
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2387

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2388
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2389
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2390

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2391
  br label %kmalloc_index.exit.i, !dbg !2391

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2392
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2394
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2395

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2396
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2397
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2398

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2399
  br label %kmalloc_index.exit.i, !dbg !2399

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2400
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2402
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2403

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2404
  br label %kmalloc_index.exit.i, !dbg !2404

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2405
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2407
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2408

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2409
  br label %kmalloc_index.exit.i, !dbg !2409

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2410
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2412
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2413

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2414
  br label %kmalloc_index.exit.i, !dbg !2414

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2415
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2417
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2418

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2419
  br label %kmalloc_index.exit.i, !dbg !2419

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2420
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2422
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2423

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2424
  br label %kmalloc_index.exit.i, !dbg !2424

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2425
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2427
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2428

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2429
  br label %kmalloc_index.exit.i, !dbg !2429

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2430
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2432
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2433

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2434
  br label %kmalloc_index.exit.i, !dbg !2434

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2435
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2437
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2438

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2439
  br label %kmalloc_index.exit.i, !dbg !2439

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2440
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2442
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2443

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2444
  br label %kmalloc_index.exit.i, !dbg !2444

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2445
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2447
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2448

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2449
  br label %kmalloc_index.exit.i, !dbg !2449

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2450
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2452
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2453

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2454
  br label %kmalloc_index.exit.i, !dbg !2454

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2455
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2457
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2458

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2459
  br label %kmalloc_index.exit.i, !dbg !2459

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2460
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2462
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2463

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2464
  br label %kmalloc_index.exit.i, !dbg !2464

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2465
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2467
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2468

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2469
  br label %kmalloc_index.exit.i, !dbg !2469

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2470
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2472
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2473

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2474
  br label %kmalloc_index.exit.i, !dbg !2474

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2475
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2477
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2478

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2479
  br label %kmalloc_index.exit.i, !dbg !2479

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2480
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2482
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2483

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2484
  br label %kmalloc_index.exit.i, !dbg !2484

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2485
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2487
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2488

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2489
  br label %kmalloc_index.exit.i, !dbg !2489

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2490
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2492
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2493

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2494
  br label %kmalloc_index.exit.i, !dbg !2494

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2495
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2497
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2498

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2499
  br label %kmalloc_index.exit.i, !dbg !2499

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2500
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2502
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2503

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2504
  br label %kmalloc_index.exit.i, !dbg !2504

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2505
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2507
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2508

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2509
  br label %kmalloc_index.exit.i, !dbg !2509

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2510
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2512
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2513

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2514
  br label %kmalloc_index.exit.i, !dbg !2514

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2515
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2517
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2518

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2519
  br label %kmalloc_index.exit.i, !dbg !2519

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !2520, !srcloc !2523
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !2524, !srcloc !2527
  unreachable, !dbg !2528

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2529
  store i32 %45, i32* %index.i, align 4, !dbg !2530
  %46 = load i32, i32* %index.i, align 4, !dbg !2531
  %tobool.i = icmp ne i32 %46, 0, !dbg !2531
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2533

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2534
  br label %kmalloc.exit, !dbg !2534

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2535
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2536
  %and.i.i = and i32 %48, 17, !dbg !2536
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2536
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2536
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2536
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2536
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2538

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2539
  br label %kmalloc_type.exit.i, !dbg !2539

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2540
  %and2.i.i = and i32 %49, 1, !dbg !2541
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2540
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2540
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2540
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2542
  br label %kmalloc_type.exit.i, !dbg !2542

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2543
  %idxprom.i = zext i32 %51 to i64, !dbg !2544
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2544
  %52 = load i32, i32* %index.i, align 4, !dbg !2545
  %idxprom6.i = zext i32 %52 to i64, !dbg !2544
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2544
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2544
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2546
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2547
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2548
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2549
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2550
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2550
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2550
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2550
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !2550
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2311
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2551
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2552
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2553
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2554
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2555
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2556
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2557
  store i8* %62, i8** %retval.i, align 8, !dbg !2558
  br label %kmalloc.exit, !dbg !2558

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2559
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2560
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2561
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2561
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2561
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2561
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !2561
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2562
  br label %kmalloc.exit, !dbg !2562

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2563
  ret i8* %65, !dbg !2564
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2565 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2569, metadata !DIExpression()), !dbg !2570
  %0 = load i64, i64* %error.addr, align 8, !dbg !2571
  %1 = inttoptr i64 %0 to i8*, !dbg !2572
  ret i8* %1, !dbg !2573
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mcb_free_bus(%struct.device* %dev) #0 !dbg !2574 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %bus = alloca %struct.mcb_bus*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2575, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus, metadata !2577, metadata !DIExpression()), !dbg !2578
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2579
  %call = call %struct.mcb_bus* @to_mcb_bus(%struct.device* %0) #7, !dbg !2580
  store %struct.mcb_bus* %call, %struct.mcb_bus** %bus, align 8, !dbg !2578
  %1 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2581
  %carrier = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %1, i32 0, i32 1, !dbg !2582
  %2 = load %struct.device*, %struct.device** %carrier, align 8, !dbg !2582
  call void @put_device(%struct.device* %2) #7, !dbg !2583
  %3 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2584
  %bus_nr = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %3, i32 0, i32 2, !dbg !2584
  %4 = load i32, i32* %bus_nr, align 8, !dbg !2584
  call void @ida_free(%struct.ida* @mcb_ida, i32 %4) #7, !dbg !2584
  %5 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2585
  %6 = bitcast %struct.mcb_bus* %5 to i8*, !dbg !2585
  call void @kfree(i8* %6) #7, !dbg !2586
  ret void, !dbg !2587
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mcb_release_bus(%struct.mcb_bus* %bus) #0 !dbg !2588 {
entry:
  %bus.addr = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  %0 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2593
  call void @mcb_devices_unregister(%struct.mcb_bus* %0) #7, !dbg !2594
  ret void, !dbg !2595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mcb_devices_unregister(%struct.mcb_bus* %bus) #0 !dbg !2596 {
entry:
  %bus.addr = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2597, metadata !DIExpression()), !dbg !2598
  %call = call i32 @bus_for_each_dev(%struct.bus_type* @mcb_bus_type, %struct.device* null, i8* null, i32 (%struct.device*, i8*)* @__mcb_devices_unregister) #7, !dbg !2599
  ret void, !dbg !2600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mcb_bus_put(%struct.mcb_bus* %bus) #0 !dbg !2601 {
entry:
  %bus.addr = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2602, metadata !DIExpression()), !dbg !2603
  %0 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2604
  %tobool = icmp ne %struct.mcb_bus* %0, null, !dbg !2604
  br i1 %tobool, label %if.then, label %if.end, !dbg !2606

if.then:                                          ; preds = %entry
  %1 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2607
  %dev = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %1, i32 0, i32 0, !dbg !2608
  call void @put_device(%struct.device* %dev) #7, !dbg !2609
  br label %if.end, !dbg !2609

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mcb_device* @mcb_alloc_dev(%struct.mcb_bus* %bus) #0 !dbg !2611 {
entry:
  %retval = alloca %struct.mcb_device*, align 8
  %bus.addr = alloca %struct.mcb_bus*, align 8
  %dev = alloca %struct.mcb_device*, align 8
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2614, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %dev, metadata !2616, metadata !DIExpression()), !dbg !2617
  %call = call i8* @kzalloc(i64 880, i32 3264) #7, !dbg !2618
  %0 = bitcast i8* %call to %struct.mcb_device*, !dbg !2618
  store %struct.mcb_device* %0, %struct.mcb_device** %dev, align 8, !dbg !2619
  %1 = load %struct.mcb_device*, %struct.mcb_device** %dev, align 8, !dbg !2620
  %tobool = icmp ne %struct.mcb_device* %1, null, !dbg !2620
  br i1 %tobool, label %if.end, label %if.then, !dbg !2622

if.then:                                          ; preds = %entry
  store %struct.mcb_device* null, %struct.mcb_device** %retval, align 8, !dbg !2623
  br label %return, !dbg !2623

if.end:                                           ; preds = %entry
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2624
  %3 = load %struct.mcb_device*, %struct.mcb_device** %dev, align 8, !dbg !2625
  %bus1 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %3, i32 0, i32 1, !dbg !2626
  store %struct.mcb_bus* %2, %struct.mcb_bus** %bus1, align 8, !dbg !2627
  %4 = load %struct.mcb_device*, %struct.mcb_device** %dev, align 8, !dbg !2628
  store %struct.mcb_device* %4, %struct.mcb_device** %retval, align 8, !dbg !2629
  br label %return, !dbg !2629

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.mcb_device*, %struct.mcb_device** %retval, align 8, !dbg !2630
  ret %struct.mcb_device* %5, !dbg !2630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mcb_free_dev(%struct.mcb_device* %dev) #0 !dbg !2631 {
entry:
  %dev.addr = alloca %struct.mcb_device*, align 8
  store %struct.mcb_device* %dev, %struct.mcb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %dev.addr, metadata !2632, metadata !DIExpression()), !dbg !2633
  %0 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2634
  %1 = bitcast %struct.mcb_device* %0 to i8*, !dbg !2634
  call void @kfree(i8* %1) #7, !dbg !2635
  ret void, !dbg !2636
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mcb_bus_add_devices(%struct.mcb_bus* %bus) #0 !dbg !2637 {
entry:
  %bus.addr = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2642, metadata !DIExpression()), !dbg !2643
  %call = call i32 @bus_for_each_dev(%struct.bus_type* @mcb_bus_type, %struct.device* null, i8* null, i32 (%struct.device*, i8*)* @__mcb_bus_add_devices) #7, !dbg !2644
  ret void, !dbg !2645
}

; Function Attrs: noredzone
declare dso_local i32 @bus_for_each_dev(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__mcb_bus_add_devices(%struct.device* %dev, i8* %data) #0 !dbg !2646 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %mdev = alloca %struct.mcb_device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2649, metadata !DIExpression()), !dbg !2650
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2651, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %mdev, metadata !2653, metadata !DIExpression()), !dbg !2654
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2655
  %call = call %struct.mcb_device* @to_mcb_device(%struct.device* %0) #7, !dbg !2656
  store %struct.mcb_device* %call, %struct.mcb_device** %mdev, align 8, !dbg !2654
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2657, metadata !DIExpression()), !dbg !2658
  %1 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2659
  %is_added = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %1, i32 0, i32 2, !dbg !2661
  %2 = load i8, i8* %is_added, align 8, !dbg !2661
  %tobool = trunc i8 %2 to i1, !dbg !2661
  br i1 %tobool, label %if.then, label %if.end, !dbg !2662

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2663
  br label %return, !dbg !2663

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2664
  %call2 = call i32 @device_attach(%struct.device* %3) #7, !dbg !2665
  store i32 %call2, i32* %retval1, align 4, !dbg !2666
  %4 = load i32, i32* %retval1, align 4, !dbg !2667
  %cmp = icmp slt i32 %4, 0, !dbg !2669
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2670

if.then3:                                         ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2671
  %6 = load i32, i32* %retval1, align 4, !dbg !2671
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %6) #8, !dbg !2671
  br label %if.end4, !dbg !2671

if.end4:                                          ; preds = %if.then3, %if.end
  %7 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2672
  %is_added5 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %7, i32 0, i32 2, !dbg !2673
  store i8 1, i8* %is_added5, align 8, !dbg !2674
  store i32 0, i32* %retval, align 4, !dbg !2675
  br label %return, !dbg !2675

return:                                           ; preds = %if.end4, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2676
  ret i32 %8, !dbg !2676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.resource* @mcb_get_resource(%struct.mcb_device* %dev, i32 %type) #0 !dbg !2677 {
entry:
  %retval = alloca %struct.resource*, align 8
  %dev.addr = alloca %struct.mcb_device*, align 8
  %type.addr = alloca i32, align 4
  store %struct.mcb_device* %dev, %struct.mcb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %dev.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  %0 = load i32, i32* %type.addr, align 4, !dbg !2684
  %cmp = icmp eq i32 %0, 512, !dbg !2686
  br i1 %cmp, label %if.then, label %if.else, !dbg !2687

if.then:                                          ; preds = %entry
  %1 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2688
  %mem = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %1, i32 0, i32 11, !dbg !2689
  store %struct.resource* %mem, %struct.resource** %retval, align 8, !dbg !2690
  br label %return, !dbg !2690

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %type.addr, align 4, !dbg !2691
  %cmp1 = icmp eq i32 %2, 1024, !dbg !2693
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !2694

if.then2:                                         ; preds = %if.else
  %3 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2695
  %irq = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %3, i32 0, i32 10, !dbg !2696
  store %struct.resource* %irq, %struct.resource** %retval, align 8, !dbg !2697
  br label %return, !dbg !2697

if.else3:                                         ; preds = %if.else
  store %struct.resource* null, %struct.resource** %retval, align 8, !dbg !2698
  br label %return, !dbg !2698

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %4 = load %struct.resource*, %struct.resource** %retval, align 8, !dbg !2699
  ret %struct.resource* %4, !dbg !2699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.resource* @mcb_request_mem(%struct.mcb_device* %dev, i8* %name) #0 !dbg !2700 {
entry:
  %retval = alloca %struct.resource*, align 8
  %dev.addr = alloca %struct.mcb_device*, align 8
  %name.addr = alloca i8*, align 8
  %mem = alloca %struct.resource*, align 8
  %size = alloca i32, align 4
  store %struct.mcb_device* %dev, %struct.mcb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %dev.addr, metadata !2703, metadata !DIExpression()), !dbg !2704
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2705, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.declare(metadata %struct.resource** %mem, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.declare(metadata i32* %size, metadata !2709, metadata !DIExpression()), !dbg !2710
  %0 = load i8*, i8** %name.addr, align 8, !dbg !2711
  %tobool = icmp ne i8* %0, null, !dbg !2711
  br i1 %tobool, label %if.end, label %if.then, !dbg !2713

if.then:                                          ; preds = %entry
  %1 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2714
  %dev1 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %1, i32 0, i32 0, !dbg !2715
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 6, !dbg !2716
  %2 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2716
  %name2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %2, i32 0, i32 0, !dbg !2717
  %3 = load i8*, i8** %name2, align 8, !dbg !2717
  store i8* %3, i8** %name.addr, align 8, !dbg !2718
  br label %if.end, !dbg !2719

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2720
  %mem3 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %4, i32 0, i32 11, !dbg !2721
  %call = call i64 @resource_size(%struct.resource* %mem3) #7, !dbg !2722
  %conv = trunc i64 %call to i32, !dbg !2722
  store i32 %conv, i32* %size, align 4, !dbg !2723
  %5 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2724
  %mem4 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %5, i32 0, i32 11, !dbg !2724
  %start = getelementptr inbounds %struct.resource, %struct.resource* %mem4, i32 0, i32 0, !dbg !2724
  %6 = load i64, i64* %start, align 8, !dbg !2724
  %7 = load i32, i32* %size, align 4, !dbg !2724
  %conv5 = zext i32 %7 to i64, !dbg !2724
  %8 = load i8*, i8** %name.addr, align 8, !dbg !2724
  %call6 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %6, i64 %conv5, i8* %8, i32 0) #7, !dbg !2724
  store %struct.resource* %call6, %struct.resource** %mem, align 8, !dbg !2725
  %9 = load %struct.resource*, %struct.resource** %mem, align 8, !dbg !2726
  %tobool7 = icmp ne %struct.resource* %9, null, !dbg !2726
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !2728

if.then8:                                         ; preds = %if.end
  %call9 = call i8* @ERR_PTR(i64 -16) #7, !dbg !2729
  %10 = bitcast i8* %call9 to %struct.resource*, !dbg !2729
  store %struct.resource* %10, %struct.resource** %retval, align 8, !dbg !2730
  br label %return, !dbg !2730

if.end10:                                         ; preds = %if.end
  %11 = load %struct.resource*, %struct.resource** %mem, align 8, !dbg !2731
  store %struct.resource* %11, %struct.resource** %retval, align 8, !dbg !2732
  br label %return, !dbg !2732

return:                                           ; preds = %if.end10, %if.then8
  %12 = load %struct.resource*, %struct.resource** %retval, align 8, !dbg !2733
  ret %struct.resource* %12, !dbg !2733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !2734 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !2739, metadata !DIExpression()), !dbg !2740
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2741
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !2742
  %1 = load i64, i64* %end, align 8, !dbg !2742
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2743
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !2744
  %3 = load i64, i64* %start, align 8, !dbg !2744
  %sub = sub i64 %1, %3, !dbg !2745
  %add = add i64 %sub, 1, !dbg !2746
  ret i64 %add, !dbg !2747
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mcb_release_mem(%struct.resource* %mem) #0 !dbg !2748 {
entry:
  %mem.addr = alloca %struct.resource*, align 8
  %size = alloca i32, align 4
  store %struct.resource* %mem, %struct.resource** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %mem.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata i32* %size, metadata !2753, metadata !DIExpression()), !dbg !2754
  %0 = load %struct.resource*, %struct.resource** %mem.addr, align 8, !dbg !2755
  %call = call i64 @resource_size(%struct.resource* %0) #7, !dbg !2756
  %conv = trunc i64 %call to i32, !dbg !2756
  store i32 %conv, i32* %size, align 4, !dbg !2757
  %1 = load %struct.resource*, %struct.resource** %mem.addr, align 8, !dbg !2758
  %start = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 0, !dbg !2758
  %2 = load i64, i64* %start, align 8, !dbg !2758
  %3 = load i32, i32* %size, align 4, !dbg !2758
  %conv1 = zext i32 %3 to i64, !dbg !2758
  call void @__release_region(%struct.resource* @iomem_resource, i64 %2, i64 %conv1) #7, !dbg !2758
  ret void, !dbg !2759
}

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mcb_get_irq(%struct.mcb_device* %dev) #0 !dbg !2760 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.mcb_device*, align 8
  %bus = alloca %struct.mcb_bus*, align 8
  store %struct.mcb_device* %dev, %struct.mcb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %dev.addr, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus, metadata !2763, metadata !DIExpression()), !dbg !2764
  %0 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2765
  %bus1 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %0, i32 0, i32 1, !dbg !2766
  %1 = load %struct.mcb_bus*, %struct.mcb_bus** %bus1, align 8, !dbg !2766
  store %struct.mcb_bus* %1, %struct.mcb_bus** %bus, align 8, !dbg !2764
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2767
  %get_irq = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %2, i32 0, i32 7, !dbg !2769
  %3 = load i32 (%struct.mcb_device*)*, i32 (%struct.mcb_device*)** %get_irq, align 8, !dbg !2769
  %tobool = icmp ne i32 (%struct.mcb_device*)* %3, null, !dbg !2767
  br i1 %tobool, label %if.then, label %if.end, !dbg !2770

if.then:                                          ; preds = %entry
  %4 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !2771
  %get_irq2 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %4, i32 0, i32 7, !dbg !2772
  %5 = load i32 (%struct.mcb_device*)*, i32 (%struct.mcb_device*)** %get_irq2, align 8, !dbg !2772
  %6 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2773
  %call = call i32 %5(%struct.mcb_device* %6) #7, !dbg !2771
  store i32 %call, i32* %retval, align 4, !dbg !2774
  br label %return, !dbg !2774

if.end:                                           ; preds = %entry
  %7 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2775
  %call3 = call i32 @__mcb_get_irq(%struct.mcb_device* %7) #7, !dbg !2776
  store i32 %call3, i32* %retval, align 4, !dbg !2777
  br label %return, !dbg !2777

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2778
  ret i32 %8, !dbg !2778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__mcb_get_irq(%struct.mcb_device* %dev) #0 !dbg !2779 {
entry:
  %dev.addr = alloca %struct.mcb_device*, align 8
  %irq = alloca %struct.resource*, align 8
  store %struct.mcb_device* %dev, %struct.mcb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %dev.addr, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.declare(metadata %struct.resource** %irq, metadata !2782, metadata !DIExpression()), !dbg !2783
  %0 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2784
  %call = call %struct.resource* @mcb_get_resource(%struct.mcb_device* %0, i32 1024) #7, !dbg !2785
  store %struct.resource* %call, %struct.resource** %irq, align 8, !dbg !2786
  %1 = load %struct.resource*, %struct.resource** %irq, align 8, !dbg !2787
  %start = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 0, !dbg !2788
  %2 = load i64, i64* %start, align 8, !dbg !2788
  %conv = trunc i64 %2 to i32, !dbg !2787
  ret i32 %conv, !dbg !2789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mcb_init() #0 !dbg !2790 {
entry:
  %call = call i32 @bus_register(%struct.bus_type* @mcb_bus_type) #7, !dbg !2793
  ret i32 %call, !dbg !2794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mcb_exit() #0 !dbg !2795 {
entry:
  call void @ida_destroy(%struct.ida* @mcb_ida) #7, !dbg !2796
  call void @bus_unregister(%struct.bus_type* @mcb_bus_type) #7, !dbg !2797
  ret void, !dbg !2798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mcb_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !2799 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %mdrv = alloca %struct.mcb_driver*, align 8
  %mdev = alloca %struct.mcb_device*, align 8
  %found_id = alloca %struct.mcb_device_id*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !2802, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.declare(metadata %struct.mcb_driver** %mdrv, metadata !2804, metadata !DIExpression()), !dbg !2805
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2806
  %call = call %struct.mcb_driver* @to_mcb_driver(%struct.device_driver* %0) #7, !dbg !2807
  store %struct.mcb_driver* %call, %struct.mcb_driver** %mdrv, align 8, !dbg !2805
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %mdev, metadata !2808, metadata !DIExpression()), !dbg !2809
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2810
  %call1 = call %struct.mcb_device* @to_mcb_device(%struct.device* %1) #7, !dbg !2811
  store %struct.mcb_device* %call1, %struct.mcb_device** %mdev, align 8, !dbg !2809
  call void @llvm.dbg.declare(metadata %struct.mcb_device_id** %found_id, metadata !2812, metadata !DIExpression()), !dbg !2813
  %2 = load %struct.mcb_driver*, %struct.mcb_driver** %mdrv, align 8, !dbg !2814
  %id_table = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %2, i32 0, i32 1, !dbg !2815
  %3 = load %struct.mcb_device_id*, %struct.mcb_device_id** %id_table, align 8, !dbg !2815
  %4 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2816
  %call2 = call %struct.mcb_device_id* @mcb_match_id(%struct.mcb_device_id* %3, %struct.mcb_device* %4) #7, !dbg !2817
  store %struct.mcb_device_id* %call2, %struct.mcb_device_id** %found_id, align 8, !dbg !2818
  %5 = load %struct.mcb_device_id*, %struct.mcb_device_id** %found_id, align 8, !dbg !2819
  %tobool = icmp ne %struct.mcb_device_id* %5, null, !dbg !2819
  br i1 %tobool, label %if.then, label %if.end, !dbg !2821

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2822
  br label %return, !dbg !2822

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2823
  br label %return, !dbg !2823

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2824
  ret i32 %6, !dbg !2824
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mcb_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !2825 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %mdev = alloca %struct.mcb_device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2826, metadata !DIExpression()), !dbg !2827
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %mdev, metadata !2830, metadata !DIExpression()), !dbg !2831
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2832
  %call = call %struct.mcb_device* @to_mcb_device(%struct.device* %0) #7, !dbg !2833
  store %struct.mcb_device* %call, %struct.mcb_device** %mdev, align 8, !dbg !2831
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2834, metadata !DIExpression()), !dbg !2835
  %1 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2836
  %2 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2837
  %id = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %2, i32 0, i32 4, !dbg !2838
  %3 = load i16, i16* %id, align 8, !dbg !2838
  %conv = zext i16 %3 to i32, !dbg !2837
  %call1 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %conv) #7, !dbg !2839
  store i32 %call1, i32* %ret, align 4, !dbg !2840
  %4 = load i32, i32* %ret, align 4, !dbg !2841
  %tobool = icmp ne i32 %4, 0, !dbg !2841
  br i1 %tobool, label %if.then, label %if.end, !dbg !2843

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2844
  br label %return, !dbg !2844

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2845
  br label %return, !dbg !2845

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !2846
  ret i32 %5, !dbg !2846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mcb_probe(%struct.device* %dev) #0 !dbg !2847 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %mdrv = alloca %struct.mcb_driver*, align 8
  %mdev = alloca %struct.mcb_device*, align 8
  %found_id = alloca %struct.mcb_device_id*, align 8
  %carrier_mod = alloca %struct.module*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.declare(metadata %struct.mcb_driver** %mdrv, metadata !2850, metadata !DIExpression()), !dbg !2851
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2852
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2853
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2853
  %call = call %struct.mcb_driver* @to_mcb_driver(%struct.device_driver* %1) #7, !dbg !2854
  store %struct.mcb_driver* %call, %struct.mcb_driver** %mdrv, align 8, !dbg !2851
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %mdev, metadata !2855, metadata !DIExpression()), !dbg !2856
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2857
  %call1 = call %struct.mcb_device* @to_mcb_device(%struct.device* %2) #7, !dbg !2858
  store %struct.mcb_device* %call1, %struct.mcb_device** %mdev, align 8, !dbg !2856
  call void @llvm.dbg.declare(metadata %struct.mcb_device_id** %found_id, metadata !2859, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.declare(metadata %struct.module** %carrier_mod, metadata !2861, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2863, metadata !DIExpression()), !dbg !2864
  %3 = load %struct.mcb_driver*, %struct.mcb_driver** %mdrv, align 8, !dbg !2865
  %id_table = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %3, i32 0, i32 1, !dbg !2866
  %4 = load %struct.mcb_device_id*, %struct.mcb_device_id** %id_table, align 8, !dbg !2866
  %5 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2867
  %call2 = call %struct.mcb_device_id* @mcb_match_id(%struct.mcb_device_id* %4, %struct.mcb_device* %5) #7, !dbg !2868
  store %struct.mcb_device_id* %call2, %struct.mcb_device_id** %found_id, align 8, !dbg !2869
  %6 = load %struct.mcb_device_id*, %struct.mcb_device_id** %found_id, align 8, !dbg !2870
  %tobool = icmp ne %struct.mcb_device_id* %6, null, !dbg !2870
  br i1 %tobool, label %if.end, label %if.then, !dbg !2872

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2873
  br label %return, !dbg !2873

if.end:                                           ; preds = %entry
  %7 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2874
  %dev3 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %7, i32 0, i32 0, !dbg !2875
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 1, !dbg !2876
  %8 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2876
  %driver4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 6, !dbg !2877
  %9 = load %struct.device_driver*, %struct.device_driver** %driver4, align 8, !dbg !2877
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %9, i32 0, i32 2, !dbg !2878
  %10 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2878
  store %struct.module* %10, %struct.module** %carrier_mod, align 8, !dbg !2879
  %11 = load %struct.module*, %struct.module** %carrier_mod, align 8, !dbg !2880
  %call5 = call zeroext i1 @try_module_get(%struct.module* %11) #7, !dbg !2882
  br i1 %call5, label %if.end7, label %if.then6, !dbg !2883

if.then6:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !2884
  br label %return, !dbg !2884

if.end7:                                          ; preds = %if.end
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2885
  %call8 = call %struct.device* @get_device(%struct.device* %12) #7, !dbg !2886
  %13 = load %struct.mcb_driver*, %struct.mcb_driver** %mdrv, align 8, !dbg !2887
  %probe = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %13, i32 0, i32 2, !dbg !2888
  %14 = load i32 (%struct.mcb_device*, %struct.mcb_device_id*)*, i32 (%struct.mcb_device*, %struct.mcb_device_id*)** %probe, align 8, !dbg !2888
  %15 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2889
  %16 = load %struct.mcb_device_id*, %struct.mcb_device_id** %found_id, align 8, !dbg !2890
  %call9 = call i32 %14(%struct.mcb_device* %15, %struct.mcb_device_id* %16) #7, !dbg !2887
  store i32 %call9, i32* %ret, align 4, !dbg !2891
  %17 = load i32, i32* %ret, align 4, !dbg !2892
  %tobool10 = icmp ne i32 %17, 0, !dbg !2892
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2894

if.then11:                                        ; preds = %if.end7
  %18 = load %struct.module*, %struct.module** %carrier_mod, align 8, !dbg !2895
  call void @module_put(%struct.module* %18) #7, !dbg !2896
  br label %if.end12, !dbg !2896

if.end12:                                         ; preds = %if.then11, %if.end7
  %19 = load i32, i32* %ret, align 4, !dbg !2897
  store i32 %19, i32* %retval, align 4, !dbg !2898
  br label %return, !dbg !2898

return:                                           ; preds = %if.end12, %if.then6, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !2899
  ret i32 %20, !dbg !2899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mcb_remove(%struct.device* %dev) #0 !dbg !2900 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mdrv = alloca %struct.mcb_driver*, align 8
  %mdev = alloca %struct.mcb_device*, align 8
  %carrier_mod = alloca %struct.module*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.declare(metadata %struct.mcb_driver** %mdrv, metadata !2903, metadata !DIExpression()), !dbg !2904
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2905
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2906
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2906
  %call = call %struct.mcb_driver* @to_mcb_driver(%struct.device_driver* %1) #7, !dbg !2907
  store %struct.mcb_driver* %call, %struct.mcb_driver** %mdrv, align 8, !dbg !2904
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %mdev, metadata !2908, metadata !DIExpression()), !dbg !2909
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2910
  %call1 = call %struct.mcb_device* @to_mcb_device(%struct.device* %2) #7, !dbg !2911
  store %struct.mcb_device* %call1, %struct.mcb_device** %mdev, align 8, !dbg !2909
  call void @llvm.dbg.declare(metadata %struct.module** %carrier_mod, metadata !2912, metadata !DIExpression()), !dbg !2913
  %3 = load %struct.mcb_driver*, %struct.mcb_driver** %mdrv, align 8, !dbg !2914
  %remove = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %3, i32 0, i32 3, !dbg !2915
  %4 = load void (%struct.mcb_device*)*, void (%struct.mcb_device*)** %remove, align 8, !dbg !2915
  %5 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2916
  call void %4(%struct.mcb_device* %5) #7, !dbg !2914
  %6 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2917
  %dev2 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %6, i32 0, i32 0, !dbg !2918
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 1, !dbg !2919
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2919
  %driver3 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 6, !dbg !2920
  %8 = load %struct.device_driver*, %struct.device_driver** %driver3, align 8, !dbg !2920
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %8, i32 0, i32 2, !dbg !2921
  %9 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2921
  store %struct.module* %9, %struct.module** %carrier_mod, align 8, !dbg !2922
  %10 = load %struct.module*, %struct.module** %carrier_mod, align 8, !dbg !2923
  call void @module_put(%struct.module* %10) #7, !dbg !2924
  %11 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2925
  %dev4 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %11, i32 0, i32 0, !dbg !2926
  call void @put_device(%struct.device* %dev4) #7, !dbg !2927
  ret i32 0, !dbg !2928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mcb_shutdown(%struct.device* %dev) #0 !dbg !2929 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mdrv = alloca %struct.mcb_driver*, align 8
  %mdev = alloca %struct.mcb_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.declare(metadata %struct.mcb_driver** %mdrv, metadata !2932, metadata !DIExpression()), !dbg !2933
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2934
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2935
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2935
  %call = call %struct.mcb_driver* @to_mcb_driver(%struct.device_driver* %1) #7, !dbg !2936
  store %struct.mcb_driver* %call, %struct.mcb_driver** %mdrv, align 8, !dbg !2933
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %mdev, metadata !2937, metadata !DIExpression()), !dbg !2938
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2939
  %call1 = call %struct.mcb_device* @to_mcb_device(%struct.device* %2) #7, !dbg !2940
  store %struct.mcb_device* %call1, %struct.mcb_device** %mdev, align 8, !dbg !2938
  %3 = load %struct.mcb_driver*, %struct.mcb_driver** %mdrv, align 8, !dbg !2941
  %tobool = icmp ne %struct.mcb_driver* %3, null, !dbg !2941
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2943

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.mcb_driver*, %struct.mcb_driver** %mdrv, align 8, !dbg !2944
  %shutdown = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %4, i32 0, i32 4, !dbg !2945
  %5 = load void (%struct.mcb_device*)*, void (%struct.mcb_device*)** %shutdown, align 8, !dbg !2945
  %tobool2 = icmp ne void (%struct.mcb_device*)* %5, null, !dbg !2944
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2946

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.mcb_driver*, %struct.mcb_driver** %mdrv, align 8, !dbg !2947
  %shutdown3 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %6, i32 0, i32 4, !dbg !2948
  %7 = load void (%struct.mcb_device*)*, void (%struct.mcb_device*)** %shutdown3, align 8, !dbg !2948
  %8 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2949
  call void %7(%struct.mcb_device* %8) #7, !dbg !2947
  br label %if.end, !dbg !2947

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !2950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mcb_driver* @to_mcb_driver(%struct.device_driver* %drv) #0 !dbg !2951 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mcb_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2956, metadata !DIExpression()), !dbg !2958
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2958
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !2958
  store i8* %1, i8** %__mptr, align 8, !dbg !2958
  br label %do.body, !dbg !2958

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2959

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2958
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2958
  %3 = bitcast i8* %add.ptr to %struct.mcb_driver*, !dbg !2958
  store %struct.mcb_driver* %3, %struct.mcb_driver** %tmp, align 8, !dbg !2959
  %4 = load %struct.mcb_driver*, %struct.mcb_driver** %tmp, align 8, !dbg !2958
  ret %struct.mcb_driver* %4, !dbg !2961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mcb_device* @to_mcb_device(%struct.device* %dev) #0 !dbg !2962 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mcb_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2967, metadata !DIExpression()), !dbg !2969
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2969
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2969
  store i8* %1, i8** %__mptr, align 8, !dbg !2969
  br label %do.body, !dbg !2969

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2970

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2969
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2969
  %3 = bitcast i8* %add.ptr to %struct.mcb_device*, !dbg !2969
  store %struct.mcb_device* %3, %struct.mcb_device** %tmp, align 8, !dbg !2970
  %4 = load %struct.mcb_device*, %struct.mcb_device** %tmp, align 8, !dbg !2969
  ret %struct.mcb_device* %4, !dbg !2972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mcb_device_id* @mcb_match_id(%struct.mcb_device_id* %ids, %struct.mcb_device* %dev) #0 !dbg !2973 {
entry:
  %retval = alloca %struct.mcb_device_id*, align 8
  %ids.addr = alloca %struct.mcb_device_id*, align 8
  %dev.addr = alloca %struct.mcb_device*, align 8
  store %struct.mcb_device_id* %ids, %struct.mcb_device_id** %ids.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_device_id** %ids.addr, metadata !2976, metadata !DIExpression()), !dbg !2977
  store %struct.mcb_device* %dev, %struct.mcb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %dev.addr, metadata !2978, metadata !DIExpression()), !dbg !2979
  %0 = load %struct.mcb_device_id*, %struct.mcb_device_id** %ids.addr, align 8, !dbg !2980
  %tobool = icmp ne %struct.mcb_device_id* %0, null, !dbg !2980
  br i1 %tobool, label %if.then, label %if.end6, !dbg !2982

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !2983

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load %struct.mcb_device_id*, %struct.mcb_device_id** %ids.addr, align 8, !dbg !2985
  %device = getelementptr inbounds %struct.mcb_device_id, %struct.mcb_device_id* %1, i32 0, i32 0, !dbg !2986
  %2 = load i16, i16* %device, align 8, !dbg !2986
  %tobool1 = icmp ne i16 %2, 0, !dbg !2983
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2983

while.body:                                       ; preds = %while.cond
  %3 = load %struct.mcb_device_id*, %struct.mcb_device_id** %ids.addr, align 8, !dbg !2987
  %device2 = getelementptr inbounds %struct.mcb_device_id, %struct.mcb_device_id* %3, i32 0, i32 0, !dbg !2990
  %4 = load i16, i16* %device2, align 8, !dbg !2990
  %conv = zext i16 %4 to i32, !dbg !2987
  %5 = load %struct.mcb_device*, %struct.mcb_device** %dev.addr, align 8, !dbg !2991
  %id = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %5, i32 0, i32 4, !dbg !2992
  %6 = load i16, i16* %id, align 8, !dbg !2992
  %conv3 = zext i16 %6 to i32, !dbg !2991
  %cmp = icmp eq i32 %conv, %conv3, !dbg !2993
  br i1 %cmp, label %if.then5, label %if.end, !dbg !2994

if.then5:                                         ; preds = %while.body
  %7 = load %struct.mcb_device_id*, %struct.mcb_device_id** %ids.addr, align 8, !dbg !2995
  store %struct.mcb_device_id* %7, %struct.mcb_device_id** %retval, align 8, !dbg !2996
  br label %return, !dbg !2996

if.end:                                           ; preds = %while.body
  %8 = load %struct.mcb_device_id*, %struct.mcb_device_id** %ids.addr, align 8, !dbg !2997
  %incdec.ptr = getelementptr %struct.mcb_device_id, %struct.mcb_device_id* %8, i32 1, !dbg !2997
  store %struct.mcb_device_id* %incdec.ptr, %struct.mcb_device_id** %ids.addr, align 8, !dbg !2997
  br label %while.cond, !dbg !2983, !llvm.loop !2998

while.end:                                        ; preds = %while.cond
  br label %if.end6, !dbg !3000

if.end6:                                          ; preds = %while.end, %entry
  store %struct.mcb_device_id* null, %struct.mcb_device_id** %retval, align 8, !dbg !3001
  br label %return, !dbg !3001

return:                                           ; preds = %if.end6, %if.then5
  %9 = load %struct.mcb_device_id*, %struct.mcb_device_id** %retval, align 8, !dbg !3002
  ret %struct.mcb_device_id* %9, !dbg !3002
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !3003 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3007, metadata !DIExpression()), !dbg !3008
  ret i1 true, !dbg !3009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !3010 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3013, metadata !DIExpression()), !dbg !3014
  ret void, !dbg !3015
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3016 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3020, metadata !DIExpression()), !dbg !3025
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3027, metadata !DIExpression()), !dbg !3028
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3029, metadata !DIExpression()), !dbg !3030
  %0 = load i64, i64* %size.addr, align 8, !dbg !3031
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3033
  br i1 %1, label %if.then, label %if.end447, !dbg !3034

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3035
  %tobool = icmp ne i64 %2, 0, !dbg !3035
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3038

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3039
  br label %return, !dbg !3039

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3040
  %cmp = icmp ult i64 %3, 4096, !dbg !3042
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3043

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3044
  br label %return, !dbg !3044

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub = sub i64 %4, 1, !dbg !3045
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3045
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3045

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub4 = sub i64 %6, 1, !dbg !3045
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3045
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3045

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub6 = sub i64 %8, 1, !dbg !3045
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3045
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3045

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3045

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub9 = sub i64 %9, 1, !dbg !3045
  %and = and i64 %sub9, -9223372036854775808, !dbg !3045
  %tobool10 = icmp ne i64 %and, 0, !dbg !3045
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3045

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3045

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub13 = sub i64 %10, 1, !dbg !3045
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3045
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3045
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3045

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3045

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub18 = sub i64 %11, 1, !dbg !3045
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3045
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3045
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3045

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3045

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub23 = sub i64 %12, 1, !dbg !3045
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3045
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3045
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3045

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3045

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub28 = sub i64 %13, 1, !dbg !3045
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3045
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3045
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3045

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3045

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub33 = sub i64 %14, 1, !dbg !3045
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3045
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3045
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3045

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3045

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub38 = sub i64 %15, 1, !dbg !3045
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3045
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3045
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3045

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3045

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub43 = sub i64 %16, 1, !dbg !3045
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3045
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3045
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3045

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3045

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub48 = sub i64 %17, 1, !dbg !3045
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3045
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3045
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3045

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3045

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub53 = sub i64 %18, 1, !dbg !3045
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3045
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3045
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3045

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3045

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub58 = sub i64 %19, 1, !dbg !3045
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3045
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3045
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3045

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3045

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub63 = sub i64 %20, 1, !dbg !3045
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3045
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3045
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3045

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3045

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub68 = sub i64 %21, 1, !dbg !3045
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3045
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3045
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3045

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3045

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub73 = sub i64 %22, 1, !dbg !3045
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3045
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3045
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3045

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3045

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub78 = sub i64 %23, 1, !dbg !3045
  %and79 = and i64 %sub78, 562949953421312, !dbg !3045
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3045
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3045

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3045

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub83 = sub i64 %24, 1, !dbg !3045
  %and84 = and i64 %sub83, 281474976710656, !dbg !3045
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3045
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3045

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3045

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub88 = sub i64 %25, 1, !dbg !3045
  %and89 = and i64 %sub88, 140737488355328, !dbg !3045
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3045
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3045

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3045

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub93 = sub i64 %26, 1, !dbg !3045
  %and94 = and i64 %sub93, 70368744177664, !dbg !3045
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3045
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3045

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3045

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub98 = sub i64 %27, 1, !dbg !3045
  %and99 = and i64 %sub98, 35184372088832, !dbg !3045
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3045
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3045

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3045

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub103 = sub i64 %28, 1, !dbg !3045
  %and104 = and i64 %sub103, 17592186044416, !dbg !3045
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3045
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3045

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3045

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub108 = sub i64 %29, 1, !dbg !3045
  %and109 = and i64 %sub108, 8796093022208, !dbg !3045
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3045
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3045

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3045

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub113 = sub i64 %30, 1, !dbg !3045
  %and114 = and i64 %sub113, 4398046511104, !dbg !3045
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3045
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3045

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3045

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub118 = sub i64 %31, 1, !dbg !3045
  %and119 = and i64 %sub118, 2199023255552, !dbg !3045
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3045
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3045

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3045

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub123 = sub i64 %32, 1, !dbg !3045
  %and124 = and i64 %sub123, 1099511627776, !dbg !3045
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3045
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3045

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3045

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub128 = sub i64 %33, 1, !dbg !3045
  %and129 = and i64 %sub128, 549755813888, !dbg !3045
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3045
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3045

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3045

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub133 = sub i64 %34, 1, !dbg !3045
  %and134 = and i64 %sub133, 274877906944, !dbg !3045
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3045
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3045

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3045

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub138 = sub i64 %35, 1, !dbg !3045
  %and139 = and i64 %sub138, 137438953472, !dbg !3045
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3045
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3045

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3045

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub143 = sub i64 %36, 1, !dbg !3045
  %and144 = and i64 %sub143, 68719476736, !dbg !3045
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3045
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3045

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3045

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub148 = sub i64 %37, 1, !dbg !3045
  %and149 = and i64 %sub148, 34359738368, !dbg !3045
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3045
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3045

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3045

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub153 = sub i64 %38, 1, !dbg !3045
  %and154 = and i64 %sub153, 17179869184, !dbg !3045
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3045
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3045

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3045

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub158 = sub i64 %39, 1, !dbg !3045
  %and159 = and i64 %sub158, 8589934592, !dbg !3045
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3045
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3045

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3045

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub163 = sub i64 %40, 1, !dbg !3045
  %and164 = and i64 %sub163, 4294967296, !dbg !3045
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3045
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3045

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3045

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub168 = sub i64 %41, 1, !dbg !3045
  %and169 = and i64 %sub168, 2147483648, !dbg !3045
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3045
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3045

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3045

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub173 = sub i64 %42, 1, !dbg !3045
  %and174 = and i64 %sub173, 1073741824, !dbg !3045
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3045
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3045

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3045

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub178 = sub i64 %43, 1, !dbg !3045
  %and179 = and i64 %sub178, 536870912, !dbg !3045
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3045
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3045

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3045

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub183 = sub i64 %44, 1, !dbg !3045
  %and184 = and i64 %sub183, 268435456, !dbg !3045
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3045
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3045

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3045

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub188 = sub i64 %45, 1, !dbg !3045
  %and189 = and i64 %sub188, 134217728, !dbg !3045
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3045
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3045

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3045

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub193 = sub i64 %46, 1, !dbg !3045
  %and194 = and i64 %sub193, 67108864, !dbg !3045
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3045
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3045

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3045

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub198 = sub i64 %47, 1, !dbg !3045
  %and199 = and i64 %sub198, 33554432, !dbg !3045
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3045
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3045

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3045

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub203 = sub i64 %48, 1, !dbg !3045
  %and204 = and i64 %sub203, 16777216, !dbg !3045
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3045
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3045

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3045

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub208 = sub i64 %49, 1, !dbg !3045
  %and209 = and i64 %sub208, 8388608, !dbg !3045
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3045
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3045

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3045

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub213 = sub i64 %50, 1, !dbg !3045
  %and214 = and i64 %sub213, 4194304, !dbg !3045
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3045
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3045

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3045

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub218 = sub i64 %51, 1, !dbg !3045
  %and219 = and i64 %sub218, 2097152, !dbg !3045
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3045
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3045

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3045

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub223 = sub i64 %52, 1, !dbg !3045
  %and224 = and i64 %sub223, 1048576, !dbg !3045
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3045
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3045

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3045

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub228 = sub i64 %53, 1, !dbg !3045
  %and229 = and i64 %sub228, 524288, !dbg !3045
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3045
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3045

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3045

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub233 = sub i64 %54, 1, !dbg !3045
  %and234 = and i64 %sub233, 262144, !dbg !3045
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3045
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3045

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3045

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub238 = sub i64 %55, 1, !dbg !3045
  %and239 = and i64 %sub238, 131072, !dbg !3045
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3045
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3045

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3045

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub243 = sub i64 %56, 1, !dbg !3045
  %and244 = and i64 %sub243, 65536, !dbg !3045
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3045
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3045

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3045

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub248 = sub i64 %57, 1, !dbg !3045
  %and249 = and i64 %sub248, 32768, !dbg !3045
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3045
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3045

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3045

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub253 = sub i64 %58, 1, !dbg !3045
  %and254 = and i64 %sub253, 16384, !dbg !3045
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3045
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3045

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3045

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub258 = sub i64 %59, 1, !dbg !3045
  %and259 = and i64 %sub258, 8192, !dbg !3045
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3045
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3045

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3045

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub263 = sub i64 %60, 1, !dbg !3045
  %and264 = and i64 %sub263, 4096, !dbg !3045
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3045
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3045

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3045

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub268 = sub i64 %61, 1, !dbg !3045
  %and269 = and i64 %sub268, 2048, !dbg !3045
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3045
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3045

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3045

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub273 = sub i64 %62, 1, !dbg !3045
  %and274 = and i64 %sub273, 1024, !dbg !3045
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3045
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3045

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3045

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub278 = sub i64 %63, 1, !dbg !3045
  %and279 = and i64 %sub278, 512, !dbg !3045
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3045
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3045

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3045

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub283 = sub i64 %64, 1, !dbg !3045
  %and284 = and i64 %sub283, 256, !dbg !3045
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3045
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3045

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3045

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub288 = sub i64 %65, 1, !dbg !3045
  %and289 = and i64 %sub288, 128, !dbg !3045
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3045
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3045

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3045

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub293 = sub i64 %66, 1, !dbg !3045
  %and294 = and i64 %sub293, 64, !dbg !3045
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3045
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3045

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3045

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub298 = sub i64 %67, 1, !dbg !3045
  %and299 = and i64 %sub298, 32, !dbg !3045
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3045
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3045

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3045

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub303 = sub i64 %68, 1, !dbg !3045
  %and304 = and i64 %sub303, 16, !dbg !3045
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3045
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3045

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3045

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub308 = sub i64 %69, 1, !dbg !3045
  %and309 = and i64 %sub308, 8, !dbg !3045
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3045
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3045

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3045

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub313 = sub i64 %70, 1, !dbg !3045
  %and314 = and i64 %sub313, 4, !dbg !3045
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3045
  %71 = zext i1 %tobool315 to i64, !dbg !3045
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3045
  br label %cond.end, !dbg !3045

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3045
  br label %cond.end317, !dbg !3045

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3045
  br label %cond.end319, !dbg !3045

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3045
  br label %cond.end321, !dbg !3045

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3045
  br label %cond.end323, !dbg !3045

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3045
  br label %cond.end325, !dbg !3045

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3045
  br label %cond.end327, !dbg !3045

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3045
  br label %cond.end329, !dbg !3045

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3045
  br label %cond.end331, !dbg !3045

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3045
  br label %cond.end333, !dbg !3045

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3045
  br label %cond.end335, !dbg !3045

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3045
  br label %cond.end337, !dbg !3045

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3045
  br label %cond.end339, !dbg !3045

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3045
  br label %cond.end341, !dbg !3045

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3045
  br label %cond.end343, !dbg !3045

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3045
  br label %cond.end345, !dbg !3045

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3045
  br label %cond.end347, !dbg !3045

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3045
  br label %cond.end349, !dbg !3045

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3045
  br label %cond.end351, !dbg !3045

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3045
  br label %cond.end353, !dbg !3045

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3045
  br label %cond.end355, !dbg !3045

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3045
  br label %cond.end357, !dbg !3045

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3045
  br label %cond.end359, !dbg !3045

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3045
  br label %cond.end361, !dbg !3045

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3045
  br label %cond.end363, !dbg !3045

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3045
  br label %cond.end365, !dbg !3045

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3045
  br label %cond.end367, !dbg !3045

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3045
  br label %cond.end369, !dbg !3045

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3045
  br label %cond.end371, !dbg !3045

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3045
  br label %cond.end373, !dbg !3045

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3045
  br label %cond.end375, !dbg !3045

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3045
  br label %cond.end377, !dbg !3045

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3045
  br label %cond.end379, !dbg !3045

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3045
  br label %cond.end381, !dbg !3045

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3045
  br label %cond.end383, !dbg !3045

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3045
  br label %cond.end385, !dbg !3045

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3045
  br label %cond.end387, !dbg !3045

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3045
  br label %cond.end389, !dbg !3045

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3045
  br label %cond.end391, !dbg !3045

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3045
  br label %cond.end393, !dbg !3045

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3045
  br label %cond.end395, !dbg !3045

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3045
  br label %cond.end397, !dbg !3045

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3045
  br label %cond.end399, !dbg !3045

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3045
  br label %cond.end401, !dbg !3045

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3045
  br label %cond.end403, !dbg !3045

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3045
  br label %cond.end405, !dbg !3045

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3045
  br label %cond.end407, !dbg !3045

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3045
  br label %cond.end409, !dbg !3045

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3045
  br label %cond.end411, !dbg !3045

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3045
  br label %cond.end413, !dbg !3045

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3045
  br label %cond.end415, !dbg !3045

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3045
  br label %cond.end417, !dbg !3045

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3045
  br label %cond.end419, !dbg !3045

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3045
  br label %cond.end421, !dbg !3045

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3045
  br label %cond.end423, !dbg !3045

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3045
  br label %cond.end425, !dbg !3045

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3045
  br label %cond.end427, !dbg !3045

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3045
  br label %cond.end429, !dbg !3045

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3045
  br label %cond.end431, !dbg !3045

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3045
  br label %cond.end433, !dbg !3045

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3045
  br label %cond.end435, !dbg !3045

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3045
  br label %cond.end437, !dbg !3045

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3045
  br label %cond.end440, !dbg !3045

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3045

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3045
  br label %cond.end444, !dbg !3045

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3045
  %sub443 = sub i64 %72, 1, !dbg !3045
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3045
  br label %cond.end444, !dbg !3045

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3045
  %sub446 = sub i32 %cond445, 12, !dbg !3046
  %add = add i32 %sub446, 1, !dbg !3047
  store i32 %add, i32* %retval, align 4, !dbg !3048
  br label %return, !dbg !3048

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3049
  %dec = add i64 %73, -1, !dbg !3049
  store i64 %dec, i64* %size.addr, align 8, !dbg !3049
  %74 = load i64, i64* %size.addr, align 8, !dbg !3050
  %shr = lshr i64 %74, 12, !dbg !3050
  store i64 %shr, i64* %size.addr, align 8, !dbg !3050
  %75 = load i64, i64* %size.addr, align 8, !dbg !3051
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3028
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3052
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3053
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !3052, !srcloc !3054
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3052
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3055
  %add.i = add i32 %79, 1, !dbg !3056
  store i32 %add.i, i32* %retval, align 4, !dbg !3057
  br label %return, !dbg !3057

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3058
  ret i32 %80, !dbg !3058
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3059 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3020, metadata !DIExpression()), !dbg !3063
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3027, metadata !DIExpression()), !dbg !3065
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3066, metadata !DIExpression()), !dbg !3067
  %0 = load i64, i64* %n.addr, align 8, !dbg !3068
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3065
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3069
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3070
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !3069, !srcloc !3054
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3069
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3071
  %add.i = add i32 %4, 1, !dbg !3072
  %sub = sub i32 %add.i, 1, !dbg !3073
  ret i32 %sub, !dbg !3074
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3075 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3078, metadata !DIExpression()), !dbg !3079
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3080, metadata !DIExpression()), !dbg !3081
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3082, metadata !DIExpression()), !dbg !3083
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3084, metadata !DIExpression()), !dbg !3085
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3086
  ret i8* %0, !dbg !3087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @revision_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3088 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bus = alloca %struct.mcb_bus*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3089, metadata !DIExpression()), !dbg !3090
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus, metadata !3095, metadata !DIExpression()), !dbg !3096
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3097
  %call = call %struct.mcb_bus* @to_mcb_bus(%struct.device* %0) #7, !dbg !3098
  store %struct.mcb_bus* %call, %struct.mcb_bus** %bus, align 8, !dbg !3096
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !3099
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !3100
  %revision = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %2, i32 0, i32 3, !dbg !3101
  %3 = load i8, i8* %revision, align 4, !dbg !3101
  %conv = zext i8 %3 to i32, !dbg !3100
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %1, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %conv) #7, !dbg !3102
  %conv2 = sext i32 %call1 to i64, !dbg !3102
  ret i64 %conv2, !dbg !3103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mcb_bus* @to_mcb_bus(%struct.device* %dev) #0 !dbg !3104 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mcb_bus*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3107, metadata !DIExpression()), !dbg !3109
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3109
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3109
  store i8* %1, i8** %__mptr, align 8, !dbg !3109
  br label %do.body, !dbg !3109

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3110

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3109
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3109
  %3 = bitcast i8* %add.ptr to %struct.mcb_bus*, !dbg !3109
  store %struct.mcb_bus* %3, %struct.mcb_bus** %tmp, align 8, !dbg !3110
  %4 = load %struct.mcb_bus*, %struct.mcb_bus** %tmp, align 8, !dbg !3109
  ret %struct.mcb_bus* %4, !dbg !3112
}

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @model_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3113 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bus = alloca %struct.mcb_bus*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3114, metadata !DIExpression()), !dbg !3115
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3116, metadata !DIExpression()), !dbg !3117
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus, metadata !3120, metadata !DIExpression()), !dbg !3121
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3122
  %call = call %struct.mcb_bus* @to_mcb_bus(%struct.device* %0) #7, !dbg !3123
  store %struct.mcb_bus* %call, %struct.mcb_bus** %bus, align 8, !dbg !3121
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !3124
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !3125
  %model = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %2, i32 0, i32 4, !dbg !3126
  %3 = load i8, i8* %model, align 1, !dbg !3126
  %conv = sext i8 %3 to i32, !dbg !3125
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %1, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %conv) #7, !dbg !3127
  %conv2 = sext i32 %call1 to i64, !dbg !3127
  ret i64 %conv2, !dbg !3128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @minor_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3129 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bus = alloca %struct.mcb_bus*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3130, metadata !DIExpression()), !dbg !3131
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3132, metadata !DIExpression()), !dbg !3133
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus, metadata !3136, metadata !DIExpression()), !dbg !3137
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3138
  %call = call %struct.mcb_bus* @to_mcb_bus(%struct.device* %0) #7, !dbg !3139
  store %struct.mcb_bus* %call, %struct.mcb_bus** %bus, align 8, !dbg !3137
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !3140
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !3141
  %minor = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %2, i32 0, i32 5, !dbg !3142
  %3 = load i8, i8* %minor, align 2, !dbg !3142
  %conv = zext i8 %3 to i32, !dbg !3141
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %1, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %conv) #7, !dbg !3143
  %conv2 = sext i32 %call1 to i64, !dbg !3143
  ret i64 %conv2, !dbg !3144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @name_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3145 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bus = alloca %struct.mcb_bus*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3146, metadata !DIExpression()), !dbg !3147
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3150, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus, metadata !3152, metadata !DIExpression()), !dbg !3153
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3154
  %call = call %struct.mcb_bus* @to_mcb_bus(%struct.device* %0) #7, !dbg !3155
  store %struct.mcb_bus* %call, %struct.mcb_bus** %bus, align 8, !dbg !3153
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !3156
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus, align 8, !dbg !3157
  %name = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %2, i32 0, i32 6, !dbg !3158
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %name, i64 0, i64 0, !dbg !3157
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %1, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %arraydecay) #7, !dbg !3159
  %conv = sext i32 %call1 to i64, !dbg !3159
  ret i64 %conv, !dbg !3160
}

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__mcb_devices_unregister(%struct.device* %dev, i8* %data) #0 !dbg !3161 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3162, metadata !DIExpression()), !dbg !3163
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3164, metadata !DIExpression()), !dbg !3165
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3166
  call void @device_unregister(%struct.device* %0) #7, !dbg !3167
  ret i32 0, !dbg !3168
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_attach(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

; Function Attrs: noredzone
declare dso_local void @ida_destroy(%struct.ida*) #2

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2068, !2069, !2070, !2071}
!llvm.ident = !{!2072}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mcb_bus_type", scope: !2, file: !3, line: 159, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !2001, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mcb/mcb-core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !30, !38, !44, !50, !55}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !24, line: 343, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !31, line: 524, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !31, line: 502, baseType: !7, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !45, line: 44, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
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
!62 = !{!63, !65, !66, !1949, !1954}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !64, line: 148, baseType: !7)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcb_driver", file: !68, line: 93, size: 1408, elements: !69)
!68 = !DIFile(filename: "./include/linux/mcb.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !1938, !1945, !1996, !2000}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !67, file: !68, line: 94, baseType: !71, size: 1152)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !45, line: 95, size: 1152, elements: !72)
!72 = !{!73, !77, !1894, !1895, !1896, !1897, !1898, !1912, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !45, line: 96, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !71, file: !45, line: 97, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !80, line: 82, size: 1408, elements: !81)
!80 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !1863, !1864, !1865, !1866, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1881, !1882, !1883, !1884, !1885, !1889, !1890, !1893}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !80, line: 83, baseType: !74, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !79, file: !80, line: 84, baseType: !74, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !79, file: !80, line: 85, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !24, line: 461, size: 5568, elements: !87)
!87 = !{!88, !1582, !1583, !1586, !1587, !1638, !1639, !1641, !1642, !1643, !1644, !1653, !1762, !1775, !1778, !1779, !1783, !1785, !1786, !1787, !1791, !1797, !1798, !1801, !1805, !1808, !1811, !1812, !1813, !1814, !1851, !1852, !1853, !1856, !1859, !1860, !1861, !1862}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !86, file: !24, line: 462, baseType: !89, size: 512)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !90, line: 64, size: 512, elements: !91)
!90 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !93, !99, !101, !162, !1419, !1572, !1577, !1578, !1579, !1580, !1581}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !90, line: 65, baseType: !74, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !89, file: !90, line: 66, baseType: !94, size: 128, offset: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !64, line: 178, size: 128, elements: !95)
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !64, line: 179, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !94, file: !64, line: 179, baseType: !97, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !90, line: 67, baseType: !100, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !89, file: !90, line: 68, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !90, line: 192, size: 704, elements: !104)
!104 = !{!105, !106, !122, !123}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !103, file: !90, line: 193, baseType: !94, size: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !103, file: !90, line: 194, baseType: !107, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !108, line: 83, baseType: !109)
!108 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !108, line: 71, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !108, line: 72, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !108, line: 72, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !112, file: !108, line: 73, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !108, line: 20, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !115, file: !108, line: 21, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !119, line: 25, baseType: !120)
!119 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 25, elements: !121)
!121 = !{}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !103, file: !90, line: 195, baseType: !89, size: 512, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !103, file: !90, line: 196, baseType: !124, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !90, line: 156, size: 192, elements: !127)
!127 = !{!128, !134, !139}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !126, file: !90, line: 157, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !102, !100}
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !90, line: 158, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!74, !102, !100}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !126, file: !90, line: 159, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!133, !102, !100, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !90, line: 148, size: 20736, elements: !146)
!146 = !{!147, !152, !156, !157, !161}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !145, file: !90, line: 149, baseType: !148, size: 192)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 192, elements: !150)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!150 = !{!151}
!151 = !DISubrange(count: 3)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !145, file: !90, line: 150, baseType: !153, size: 4096, offset: 192)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 4096, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !145, file: !90, line: 151, baseType: !133, size: 32, offset: 4288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !145, file: !90, line: 152, baseType: !158, size: 16384, offset: 4320)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16384, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 2048)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !145, file: !90, line: 153, baseType: !133, size: 32, offset: 20704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !89, file: !90, line: 69, baseType: !163, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !90, line: 138, size: 448, elements: !165)
!165 = !{!166, !170, !200, !202, !1365, !1398, !1402}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !164, file: !90, line: 139, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !100}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !164, file: !90, line: 140, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !174, line: 230, size: 128, elements: !175)
!174 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !192}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !173, file: !174, line: 231, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!180, !100, !185, !149}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !64, line: 60, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !182, line: 73, baseType: !183)
!182 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !182, line: 15, baseType: !184)
!184 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !174, line: 30, size: 128, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !174, line: 31, baseType: !74, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !186, file: !174, line: 32, baseType: !190, size: 16, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !64, line: 19, baseType: !191)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !173, file: !174, line: 232, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!180, !100, !185, !74, !196}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 55, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !182, line: 72, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !182, line: 16, baseType: !199)
!199 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !164, file: !90, line: 141, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !164, file: !90, line: 142, baseType: !203, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !174, line: 84, size: 320, elements: !207)
!207 = !{!208, !209, !213, !1362, !1363}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !174, line: 85, baseType: !74, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !206, file: !174, line: 86, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!190, !100, !185, !133}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !206, file: !174, line: 88, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!190, !100, !217, !133}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !174, line: 168, size: 448, elements: !219)
!219 = !{!220, !221, !222, !223, !233, !234}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !218, file: !174, line: 169, baseType: !186, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !218, file: !174, line: 170, baseType: !196, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !218, file: !174, line: 171, baseType: !65, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !218, file: !174, line: 172, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!180, !227, !100, !217, !149, !230, !196}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !229, line: 526, flags: DIFlagFwdDecl)
!229 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !64, line: 46, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !182, line: 88, baseType: !232)
!232 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !218, file: !174, line: 174, baseType: !224, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !218, file: !174, line: 176, baseType: !235, size: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!133, !227, !100, !217, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !240, line: 305, size: 1472, elements: !241)
!240 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !243, !244, !245, !246, !254, !255, !1336, !1342, !1343, !1348, !1349, !1352, !1356, !1357, !1358, !1359, !1360}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !239, file: !240, line: 308, baseType: !199, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !239, file: !240, line: 309, baseType: !199, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !239, file: !240, line: 313, baseType: !238, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !239, file: !240, line: 313, baseType: !238, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !239, file: !240, line: 315, baseType: !247, size: 192, align: 64, offset: 256)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !248, line: 24, size: 192, align: 64, elements: !249)
!248 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!249 = !{!250, !251, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !247, file: !248, line: 25, baseType: !199, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !247, file: !248, line: 26, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !247, file: !248, line: 27, baseType: !252, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !239, file: !240, line: 323, baseType: !199, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !239, file: !240, line: 327, baseType: !256, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !240, line: 388, size: 7296, elements: !258)
!258 = !{!259, !1332}
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !257, file: !240, line: 389, baseType: !260, size: 7296)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !257, file: !240, line: 389, size: 7296, elements: !261)
!261 = !{!262, !263, !267, !273, !277, !278, !279, !280, !281, !289, !294, !295, !296, !297, !306, !307, !308, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !343, !351, !354, !402, !403, !1302, !1303, !1306, !1310, !1311, !1314, !1315, !1316, !1319, !1331}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !260, file: !240, line: 390, baseType: !238, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !260, file: !240, line: 391, baseType: !264, size: 64, offset: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !248, line: 31, size: 64, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !264, file: !248, line: 32, baseType: !252, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !260, file: !240, line: 392, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !269, line: 23, baseType: !270)
!269 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !271, line: 31, baseType: !272)
!271 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!272 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !260, file: !240, line: 394, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!199, !227, !199, !199, !199, !199}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !260, file: !240, line: 398, baseType: !199, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !260, file: !240, line: 399, baseType: !199, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !260, file: !240, line: 405, baseType: !199, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !260, file: !240, line: 406, baseType: !199, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !260, file: !240, line: 407, baseType: !282, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !229, line: 286, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !229, line: 286, size: 64, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !284, file: !229, line: 286, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !288, line: 18, baseType: !199)
!288 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!289 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !260, file: !240, line: 416, baseType: !290, size: 32, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !64, line: 168, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 166, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !291, file: !64, line: 167, baseType: !133, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !260, file: !240, line: 428, baseType: !290, size: 32, offset: 608)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !260, file: !240, line: 437, baseType: !290, size: 32, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !260, file: !240, line: 447, baseType: !290, size: 32, offset: 672)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !260, file: !240, line: 450, baseType: !298, size: 64, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !299, line: 13, baseType: !300)
!299 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !64, line: 175, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 173, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !301, file: !64, line: 174, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !269, line: 22, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !271, line: 30, baseType: !232)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !260, file: !240, line: 452, baseType: !133, size: 32, offset: 768)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !260, file: !240, line: 454, baseType: !107, offset: 800)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !260, file: !240, line: 457, baseType: !309, size: 256, offset: 832)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !310, line: 35, size: 256, elements: !311)
!310 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !313, !314, !316}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !309, file: !310, line: 36, baseType: !298, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !309, file: !310, line: 42, baseType: !298, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !309, file: !310, line: 46, baseType: !315, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !108, line: 29, baseType: !115)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !309, file: !310, line: 47, baseType: !94, size: 128, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !260, file: !240, line: 459, baseType: !94, size: 128, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !260, file: !240, line: 466, baseType: !199, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !260, file: !240, line: 467, baseType: !199, size: 64, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !260, file: !240, line: 469, baseType: !199, size: 64, offset: 1344)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !260, file: !240, line: 470, baseType: !199, size: 64, offset: 1408)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !260, file: !240, line: 471, baseType: !300, size: 64, offset: 1472)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !260, file: !240, line: 472, baseType: !199, size: 64, offset: 1536)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !260, file: !240, line: 473, baseType: !199, size: 64, offset: 1600)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !260, file: !240, line: 474, baseType: !199, size: 64, offset: 1664)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !260, file: !240, line: 475, baseType: !199, size: 64, offset: 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !260, file: !240, line: 477, baseType: !107, offset: 1792)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !260, file: !240, line: 478, baseType: !199, size: 64, offset: 1792)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !260, file: !240, line: 478, baseType: !199, size: 64, offset: 1856)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !260, file: !240, line: 478, baseType: !199, size: 64, offset: 1920)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !260, file: !240, line: 478, baseType: !199, size: 64, offset: 1984)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !260, file: !240, line: 479, baseType: !199, size: 64, offset: 2048)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !260, file: !240, line: 479, baseType: !199, size: 64, offset: 2112)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !260, file: !240, line: 479, baseType: !199, size: 64, offset: 2176)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !260, file: !240, line: 480, baseType: !199, size: 64, offset: 2240)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !260, file: !240, line: 480, baseType: !199, size: 64, offset: 2304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !260, file: !240, line: 480, baseType: !199, size: 64, offset: 2368)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !260, file: !240, line: 480, baseType: !199, size: 64, offset: 2432)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !260, file: !240, line: 482, baseType: !340, size: 2816, offset: 2496)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 2816, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 44)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !260, file: !240, line: 488, baseType: !344, size: 256, offset: 5312)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !345, line: 60, size: 256, elements: !346)
!345 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !344, file: !345, line: 61, baseType: !348, size: 256)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 4)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !260, file: !240, line: 490, baseType: !352, size: 64, offset: 5568)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !240, line: 490, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !260, file: !240, line: 493, baseType: !355, size: 896, offset: 5632)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !356, line: 53, baseType: !357)
!356 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 13, size: 896, elements: !358)
!358 = !{!359, !360, !361, !362, !365, !366, !373, !374, !394, !395, !398}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !357, file: !356, line: 18, baseType: !268, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !357, file: !356, line: 28, baseType: !300, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !357, file: !356, line: 31, baseType: !309, size: 256, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !357, file: !356, line: 32, baseType: !363, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !356, line: 32, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !357, file: !356, line: 37, baseType: !191, size: 16, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !357, file: !356, line: 40, baseType: !367, size: 192, offset: 512)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !368, line: 53, size: 192, elements: !369)
!368 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !367, file: !368, line: 54, baseType: !298, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !367, file: !368, line: 55, baseType: !107, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !367, file: !368, line: 59, baseType: !94, size: 128, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !357, file: !356, line: 41, baseType: !65, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !357, file: !356, line: 42, baseType: !375, size: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !378, line: 13, size: 896, elements: !379)
!378 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !377, file: !378, line: 14, baseType: !65, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !377, file: !378, line: 15, baseType: !199, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !377, file: !378, line: 17, baseType: !199, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !377, file: !378, line: 17, baseType: !199, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !377, file: !378, line: 19, baseType: !184, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !377, file: !378, line: 21, baseType: !184, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !377, file: !378, line: 22, baseType: !184, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !377, file: !378, line: 23, baseType: !184, size: 64, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !377, file: !378, line: 24, baseType: !184, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !377, file: !378, line: 25, baseType: !184, size: 64, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !377, file: !378, line: 26, baseType: !184, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !377, file: !378, line: 27, baseType: !184, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !377, file: !378, line: 28, baseType: !184, size: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !377, file: !378, line: 29, baseType: !184, size: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !357, file: !356, line: 44, baseType: !290, size: 32, offset: 832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !357, file: !356, line: 50, baseType: !396, size: 16, offset: 864)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !269, line: 19, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !271, line: 24, baseType: !191)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !357, file: !356, line: 51, baseType: !399, size: 16, offset: 880)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !269, line: 18, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !271, line: 23, baseType: !401)
!401 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !240, line: 495, baseType: !199, size: 64, offset: 6528)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !260, file: !240, line: 497, baseType: !404, size: 64, offset: 6592)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !240, line: 381, size: 384, elements: !406)
!406 = !{!407, !408, !1301}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !405, file: !240, line: 382, baseType: !290, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !405, file: !240, line: 383, baseType: !409, size: 128, offset: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !240, line: 376, size: 128, elements: !410)
!410 = !{!411, !1299}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !409, file: !240, line: 377, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !414, line: 640, size: 48640, elements: !415)
!414 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !424, !426, !427, !433, !434, !435, !436, !437, !438, !439, !440, !444, !462, !473, !568, !569, !570, !581, !582, !584, !585, !586, !587, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !666, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !722, !724, !725, !726, !738, !740, !741, !742, !743, !744, !750, !751, !752, !753, !754, !755, !756, !768, !773, !778, !779, !780, !783, !787, !790, !793, !796, !799, !803, !806, !809, !815, !816, !817, !823, !824, !825, !826, !827, !836, !837, !838, !839, !840, !845, !846, !847, !850, !851, !854, !857, !860, !863, !866, !869, !870, !950, !953, !956, !957, !960, !961, !962, !968, !969, !970, !983, !984, !985, !997, !1002, !1005, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !413, file: !414, line: 646, baseType: !417, size: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !418, line: 56, size: 128, elements: !419)
!418 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !418, line: 57, baseType: !199, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !417, file: !418, line: 58, baseType: !422, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !269, line: 21, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !271, line: 27, baseType: !7)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !413, file: !414, line: 649, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !413, file: !414, line: 657, baseType: !65, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !413, file: !414, line: 658, baseType: !428, size: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !429, line: 113, baseType: !430)
!429 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !429, line: 111, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !430, file: !429, line: 112, baseType: !290, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !414, line: 660, baseType: !7, size: 32, offset: 288)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !413, file: !414, line: 661, baseType: !7, size: 32, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !413, file: !414, line: 684, baseType: !133, size: 32, offset: 352)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !413, file: !414, line: 686, baseType: !133, size: 32, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !413, file: !414, line: 687, baseType: !133, size: 32, offset: 416)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !413, file: !414, line: 688, baseType: !133, size: 32, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !413, file: !414, line: 689, baseType: !7, size: 32, offset: 480)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !413, file: !414, line: 691, baseType: !441, size: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !414, line: 691, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !413, file: !414, line: 692, baseType: !445, size: 832, offset: 576)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !414, line: 451, size: 832, elements: !446)
!446 = !{!447, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !445, file: !414, line: 453, baseType: !448, size: 128)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !414, line: 325, size: 128, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !448, file: !414, line: 326, baseType: !199, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !448, file: !414, line: 327, baseType: !422, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !445, file: !414, line: 454, baseType: !247, size: 192, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !445, file: !414, line: 455, baseType: !94, size: 128, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !445, file: !414, line: 456, baseType: !7, size: 32, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !445, file: !414, line: 458, baseType: !268, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !445, file: !414, line: 459, baseType: !268, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !445, file: !414, line: 460, baseType: !268, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !445, file: !414, line: 461, baseType: !268, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !445, file: !414, line: 463, baseType: !268, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !445, file: !414, line: 465, baseType: !461, offset: 832)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !414, line: 415, elements: !121)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !413, file: !414, line: 693, baseType: !463, size: 384, offset: 1408)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !414, line: 489, size: 384, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !463, file: !414, line: 490, baseType: !94, size: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !463, file: !414, line: 491, baseType: !199, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !463, file: !414, line: 492, baseType: !199, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !463, file: !414, line: 493, baseType: !7, size: 32, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !463, file: !414, line: 494, baseType: !191, size: 16, offset: 288)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !463, file: !414, line: 495, baseType: !191, size: 16, offset: 304)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !463, file: !414, line: 497, baseType: !472, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !413, file: !414, line: 697, baseType: !474, size: 1792, offset: 1792)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !414, line: 507, size: 1792, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !565, !566}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !474, file: !414, line: 508, baseType: !247, size: 192, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !474, file: !414, line: 515, baseType: !268, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !474, file: !414, line: 516, baseType: !268, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !474, file: !414, line: 517, baseType: !268, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !474, file: !414, line: 518, baseType: !268, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !474, file: !414, line: 519, baseType: !268, size: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !474, file: !414, line: 526, baseType: !304, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !474, file: !414, line: 527, baseType: !268, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !414, line: 528, baseType: !7, size: 32, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !474, file: !414, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !474, file: !414, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !474, file: !414, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !474, file: !414, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !474, file: !414, line: 563, baseType: !490, size: 512, offset: 704)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !491)
!491 = !{!492, !500, !501, !506, !558, !562, !563, !564}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !6, line: 119, baseType: !493, size: 256)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !494, line: 9, size: 256, elements: !495)
!494 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !494, line: 10, baseType: !247, size: 192, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !493, file: !494, line: 11, baseType: !498, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !499, line: 29, baseType: !304)
!499 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !490, file: !6, line: 120, baseType: !498, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !490, file: !6, line: 121, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!5, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !490, file: !6, line: 122, baseType: !507, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !509)
!509 = !{!510, !530, !531, !534, !544, !545, !553, !557}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !508, file: !6, line: 160, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !512, file: !6, line: 215, baseType: !315)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !512, file: !6, line: 216, baseType: !7, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !512, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !512, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !512, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !512, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !512, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !512, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !512, file: !6, line: 233, baseType: !498, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !512, file: !6, line: 234, baseType: !505, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !512, file: !6, line: 235, baseType: !498, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !512, file: !6, line: 236, baseType: !505, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !512, file: !6, line: 237, baseType: !527, size: 4096, offset: 512)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 4096, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !508, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !508, file: !6, line: 162, baseType: !532, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !64, line: 27, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !182, line: 96, baseType: !133)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !508, file: !6, line: 163, baseType: !535, size: 32, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !536, line: 276, baseType: !537)
!536 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !536, line: 276, size: 32, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !537, file: !536, line: 276, baseType: !540, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !536, line: 70, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !536, line: 65, size: 32, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !541, file: !536, line: 66, baseType: !7, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !508, file: !6, line: 164, baseType: !505, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !508, file: !6, line: 165, baseType: !546, size: 128, offset: 256)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !494, line: 14, size: 128, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !546, file: !494, line: 15, baseType: !549, size: 128)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !248, line: 125, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !549, file: !248, line: 126, baseType: !264, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !549, file: !248, line: 127, baseType: !252, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !508, file: !6, line: 166, baseType: !554, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!498}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !508, file: !6, line: 167, baseType: !498, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !490, file: !6, line: 123, baseType: !559, size: 8, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !269, line: 17, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !271, line: 21, baseType: !561)
!561 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !490, file: !6, line: 124, baseType: !559, size: 8, offset: 456)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !490, file: !6, line: 125, baseType: !559, size: 8, offset: 464)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !490, file: !6, line: 126, baseType: !559, size: 8, offset: 472)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !474, file: !414, line: 572, baseType: !490, size: 512, offset: 1216)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !474, file: !414, line: 580, baseType: !567, size: 64, offset: 1728)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !413, file: !414, line: 721, baseType: !7, size: 32, offset: 3584)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !413, file: !414, line: 722, baseType: !133, size: 32, offset: 3616)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !413, file: !414, line: 723, baseType: !571, size: 64, offset: 3648)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !574, line: 17, baseType: !575)
!574 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !574, line: 17, size: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !575, file: !574, line: 17, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 1)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !413, file: !414, line: 724, baseType: !573, size: 64, offset: 3712)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !413, file: !414, line: 749, baseType: !583, offset: 3776)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !414, line: 290, elements: !121)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !413, file: !414, line: 751, baseType: !94, size: 128, offset: 3776)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !413, file: !414, line: 757, baseType: !256, size: 64, offset: 3904)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !413, file: !414, line: 758, baseType: !256, size: 64, offset: 3968)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !413, file: !414, line: 761, baseType: !588, size: 320, offset: 4032)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !345, line: 34, size: 320, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !588, file: !345, line: 35, baseType: !268, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !588, file: !345, line: 36, baseType: !592, size: 256, offset: 64)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 256, elements: !349)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !413, file: !414, line: 766, baseType: !133, size: 32, offset: 4352)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !413, file: !414, line: 767, baseType: !133, size: 32, offset: 4384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !413, file: !414, line: 768, baseType: !133, size: 32, offset: 4416)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !413, file: !414, line: 770, baseType: !133, size: 32, offset: 4448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !413, file: !414, line: 772, baseType: !199, size: 64, offset: 4480)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !413, file: !414, line: 775, baseType: !7, size: 32, offset: 4544)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !413, file: !414, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !413, file: !414, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !413, file: !414, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !413, file: !414, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !413, file: !414, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !413, file: !414, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !413, file: !414, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !413, file: !414, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !413, file: !414, line: 831, baseType: !199, size: 64, offset: 4672)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !413, file: !414, line: 833, baseType: !609, size: 384, offset: 4736)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !610)
!610 = !{!611, !616}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !609, file: !12, line: 26, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!184, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !12, line: 27, baseType: !617, size: 320, offset: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !609, file: !12, line: 27, size: 320, elements: !618)
!618 = !{!619, !629, !656}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !617, file: !12, line: 36, baseType: !620, size: 320)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !12, line: 29, size: 320, elements: !621)
!621 = !{!622, !624, !625, !626, !627, !628}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !620, file: !12, line: 30, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !620, file: !12, line: 31, baseType: !422, size: 32, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !12, line: 32, baseType: !422, size: 32, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !620, file: !12, line: 33, baseType: !422, size: 32, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !620, file: !12, line: 34, baseType: !268, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !620, file: !12, line: 35, baseType: !623, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !617, file: !12, line: 46, baseType: !630, size: 192)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !12, line: 38, size: 192, elements: !631)
!631 = !{!632, !633, !634, !655}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !630, file: !12, line: 39, baseType: !532, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !12, line: 41, baseType: !635, size: 64, offset: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !12, line: 41, size: 64, elements: !636)
!636 = !{!637, !645}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !635, file: !12, line: 42, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !640, line: 7, size: 128, elements: !641)
!640 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!641 = !{!642, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !639, file: !640, line: 8, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !182, line: 93, baseType: !232)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !639, file: !640, line: 9, baseType: !232, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !635, file: !12, line: 43, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !648, line: 7, size: 64, elements: !649)
!648 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!649 = !{!650, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !647, file: !648, line: 8, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !648, line: 5, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !269, line: 20, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !271, line: 26, baseType: !133)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !647, file: !648, line: 9, baseType: !652, size: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !630, file: !12, line: 45, baseType: !268, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !617, file: !12, line: 54, baseType: !657, size: 256)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !12, line: 48, size: 256, elements: !658)
!658 = !{!659, !662, !663, !664, !665}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !657, file: !12, line: 49, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !657, file: !12, line: 50, baseType: !133, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !657, file: !12, line: 51, baseType: !133, size: 32, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !657, file: !12, line: 52, baseType: !199, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !657, file: !12, line: 53, baseType: !199, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !413, file: !414, line: 835, baseType: !667, size: 32, offset: 5120)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !64, line: 22, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !182, line: 28, baseType: !133)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !413, file: !414, line: 836, baseType: !667, size: 32, offset: 5152)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !413, file: !414, line: 840, baseType: !199, size: 64, offset: 5184)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !413, file: !414, line: 849, baseType: !412, size: 64, offset: 5248)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !413, file: !414, line: 852, baseType: !412, size: 64, offset: 5312)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !413, file: !414, line: 857, baseType: !94, size: 128, offset: 5376)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !413, file: !414, line: 858, baseType: !94, size: 128, offset: 5504)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !413, file: !414, line: 859, baseType: !412, size: 64, offset: 5632)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !413, file: !414, line: 867, baseType: !94, size: 128, offset: 5696)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !413, file: !414, line: 868, baseType: !94, size: 128, offset: 5824)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !413, file: !414, line: 871, baseType: !679, size: 64, offset: 5952)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !681, line: 59, size: 768, elements: !682)
!681 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!682 = !{!683, !684, !685, !686, !697, !698, !705, !714}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !680, file: !681, line: 61, baseType: !428, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !680, file: !681, line: 62, baseType: !7, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !680, file: !681, line: 63, baseType: !107, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !680, file: !681, line: 65, baseType: !687, size: 256, offset: 64)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 256, elements: !349)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !64, line: 182, size: 64, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !688, file: !64, line: 183, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !64, line: 186, size: 128, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !64, line: 187, baseType: !691, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !692, file: !64, line: 187, baseType: !696, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !680, file: !681, line: 66, baseType: !688, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !680, file: !681, line: 68, baseType: !699, size: 128, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !700, line: 40, baseType: !701)
!700 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !700, line: 36, size: 128, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !701, file: !700, line: 37, baseType: !107)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !701, file: !700, line: 38, baseType: !94, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !680, file: !681, line: 69, baseType: !706, size: 128, align: 64, offset: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !64, line: 216, size: 128, align: 64, elements: !707)
!707 = !{!708, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !64, line: 217, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !706, file: !64, line: 218, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !709}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !680, file: !681, line: 70, baseType: !715, size: 128, offset: 640)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 128, elements: !579)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !681, line: 54, size: 128, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !716, file: !681, line: 55, baseType: !133, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !716, file: !681, line: 56, baseType: !720, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !681, line: 56, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !413, file: !414, line: 872, baseType: !723, size: 512, offset: 6016)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 512, elements: !349)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !413, file: !414, line: 873, baseType: !94, size: 128, offset: 6528)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !413, file: !414, line: 874, baseType: !94, size: 128, offset: 6656)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !413, file: !414, line: 876, baseType: !727, size: 64, offset: 6784)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !729, line: 26, size: 192, elements: !730)
!729 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !728, file: !729, line: 27, baseType: !7, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !728, file: !729, line: 28, baseType: !733, size: 128, offset: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !734, line: 43, size: 128, elements: !735)
!734 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !733, file: !734, line: 44, baseType: !315)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !733, file: !734, line: 45, baseType: !94, size: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !413, file: !414, line: 879, baseType: !739, size: 64, offset: 6848)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !413, file: !414, line: 882, baseType: !739, size: 64, offset: 6912)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !413, file: !414, line: 884, baseType: !268, size: 64, offset: 6976)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !413, file: !414, line: 885, baseType: !268, size: 64, offset: 7040)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !413, file: !414, line: 890, baseType: !268, size: 64, offset: 7104)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !413, file: !414, line: 891, baseType: !745, size: 128, offset: 7168)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !414, line: 242, size: 128, elements: !746)
!746 = !{!747, !748, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !745, file: !414, line: 244, baseType: !268, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !745, file: !414, line: 245, baseType: !268, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !745, file: !414, line: 246, baseType: !315, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !413, file: !414, line: 900, baseType: !199, size: 64, offset: 7296)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !413, file: !414, line: 901, baseType: !199, size: 64, offset: 7360)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !413, file: !414, line: 904, baseType: !268, size: 64, offset: 7424)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !413, file: !414, line: 907, baseType: !268, size: 64, offset: 7488)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !413, file: !414, line: 910, baseType: !199, size: 64, offset: 7552)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !413, file: !414, line: 911, baseType: !199, size: 64, offset: 7616)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !413, file: !414, line: 914, baseType: !757, size: 640, offset: 7680)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !758, line: 123, size: 640, elements: !759)
!758 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !766, !767}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !757, file: !758, line: 124, baseType: !761, size: 576)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 576, elements: !150)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !758, line: 108, size: 192, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !762, file: !758, line: 109, baseType: !268, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !762, file: !758, line: 110, baseType: !546, size: 128, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !757, file: !758, line: 125, baseType: !7, size: 32, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !757, file: !758, line: 126, baseType: !7, size: 32, offset: 608)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !413, file: !414, line: 917, baseType: !769, size: 192, offset: 8320)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !758, line: 134, size: 192, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !769, file: !758, line: 135, baseType: !706, size: 128, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !769, file: !758, line: 136, baseType: !7, size: 32, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !413, file: !414, line: 923, baseType: !774, size: 64, offset: 8512)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !777, line: 11, flags: DIFlagFwdDecl)
!777 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !413, file: !414, line: 926, baseType: !774, size: 64, offset: 8576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !413, file: !414, line: 929, baseType: !774, size: 64, offset: 8640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !413, file: !414, line: 933, baseType: !781, size: 64, offset: 8704)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !414, line: 933, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !413, file: !414, line: 943, baseType: !784, size: 128, offset: 8768)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 16)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !413, file: !414, line: 945, baseType: !788, size: 64, offset: 8896)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !414, line: 49, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !413, file: !414, line: 956, baseType: !791, size: 64, offset: 8960)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !414, line: 45, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !413, file: !414, line: 959, baseType: !794, size: 64, offset: 9024)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !414, line: 959, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !413, file: !414, line: 962, baseType: !797, size: 64, offset: 9088)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !414, line: 66, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !413, file: !414, line: 966, baseType: !800, size: 64, offset: 9152)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !802, line: 35, flags: DIFlagFwdDecl)
!802 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!803 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !413, file: !414, line: 969, baseType: !804, size: 64, offset: 9216)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !758, line: 223, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !413, file: !414, line: 970, baseType: !807, size: 64, offset: 9280)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !414, line: 62, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !413, file: !414, line: 971, baseType: !810, size: 64, offset: 9344)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !811, line: 25, baseType: !812)
!811 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !811, line: 23, size: 64, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !812, file: !811, line: 24, baseType: !578, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !413, file: !414, line: 972, baseType: !810, size: 64, offset: 9408)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !413, file: !414, line: 974, baseType: !810, size: 64, offset: 9472)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !413, file: !414, line: 975, baseType: !818, size: 192, offset: 9536)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !819, line: 30, size: 192, elements: !820)
!819 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !818, file: !819, line: 31, baseType: !94, size: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !818, file: !819, line: 32, baseType: !810, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !413, file: !414, line: 976, baseType: !199, size: 64, offset: 9728)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !413, file: !414, line: 977, baseType: !196, size: 64, offset: 9792)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !413, file: !414, line: 978, baseType: !7, size: 32, offset: 9856)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !413, file: !414, line: 980, baseType: !709, size: 64, offset: 9920)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !413, file: !414, line: 989, baseType: !828, size: 128, offset: 9984)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !829, line: 35, size: 128, elements: !830)
!829 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !828, file: !829, line: 36, baseType: !133, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !828, file: !829, line: 37, baseType: !290, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !828, file: !829, line: 38, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !829, line: 23, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !413, file: !414, line: 992, baseType: !268, size: 64, offset: 10112)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !413, file: !414, line: 993, baseType: !268, size: 64, offset: 10176)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !413, file: !414, line: 996, baseType: !107, offset: 10240)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !413, file: !414, line: 999, baseType: !315, offset: 10240)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !413, file: !414, line: 1001, baseType: !841, size: 64, offset: 10240)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !414, line: 636, size: 64, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !414, line: 637, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !413, file: !414, line: 1005, baseType: !549, size: 128, offset: 10304)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !413, file: !414, line: 1007, baseType: !412, size: 64, offset: 10432)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !413, file: !414, line: 1009, baseType: !848, size: 64, offset: 10496)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !414, line: 1009, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !413, file: !414, line: 1043, baseType: !65, size: 64, offset: 10560)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !413, file: !414, line: 1046, baseType: !852, size: 64, offset: 10624)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !414, line: 41, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !413, file: !414, line: 1050, baseType: !855, size: 64, offset: 10688)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !414, line: 42, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !413, file: !414, line: 1054, baseType: !858, size: 64, offset: 10752)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !414, line: 55, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !413, file: !414, line: 1056, baseType: !861, size: 64, offset: 10816)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !414, line: 40, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !413, file: !414, line: 1058, baseType: !864, size: 64, offset: 10880)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !414, line: 47, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !413, file: !414, line: 1061, baseType: !867, size: 64, offset: 10944)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !414, line: 43, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !413, file: !414, line: 1064, baseType: !199, size: 64, offset: 11008)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !413, file: !414, line: 1065, baseType: !871, size: 64, offset: 11072)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !819, line: 14, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !819, line: 12, size: 384, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !819, line: 13, baseType: !876, size: 384)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !819, line: 13, size: 384, elements: !877)
!877 = !{!878, !879, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !876, file: !819, line: 13, baseType: !133, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !876, file: !819, line: 13, baseType: !133, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !876, file: !819, line: 13, baseType: !133, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !876, file: !819, line: 13, baseType: !882, size: 256, offset: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !883, line: 32, size: 256, elements: !884)
!883 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!884 = !{!885, !891, !904, !910, !919, !939, !944}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !882, file: !883, line: 37, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 34, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !886, file: !883, line: 35, baseType: !668, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !886, file: !883, line: 36, baseType: !890, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !182, line: 49, baseType: !7)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !882, file: !883, line: 45, baseType: !892, size: 192)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 40, size: 192, elements: !893)
!893 = !{!894, !896, !897, !903}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !892, file: !883, line: 41, baseType: !895, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !182, line: 95, baseType: !133)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !892, file: !883, line: 42, baseType: !133, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !892, file: !883, line: 43, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !883, line: 11, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !883, line: 8, size: 64, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !899, file: !883, line: 9, baseType: !133, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !899, file: !883, line: 10, baseType: !65, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !892, file: !883, line: 44, baseType: !133, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !882, file: !883, line: 52, baseType: !905, size: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 48, size: 128, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !905, file: !883, line: 49, baseType: !668, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !905, file: !883, line: 50, baseType: !890, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !905, file: !883, line: 51, baseType: !898, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !882, file: !883, line: 61, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 55, size: 256, elements: !912)
!912 = !{!913, !914, !915, !916, !918}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !911, file: !883, line: 56, baseType: !668, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !911, file: !883, line: 57, baseType: !890, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !911, file: !883, line: 58, baseType: !133, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !911, file: !883, line: 59, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !182, line: 94, baseType: !183)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !911, file: !883, line: 60, baseType: !917, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !882, file: !883, line: 95, baseType: !920, size: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 64, size: 256, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !920, file: !883, line: 65, baseType: !65, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !883, line: 77, baseType: !924, size: 192, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !883, line: 77, size: 192, elements: !925)
!925 = !{!926, !927, !934}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !924, file: !883, line: 82, baseType: !401, size: 16)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !924, file: !883, line: 88, baseType: !928, size: 192)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !883, line: 84, size: 192, elements: !929)
!929 = !{!930, !932, !933}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !928, file: !883, line: 85, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !528)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !928, file: !883, line: 86, baseType: !65, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !928, file: !883, line: 87, baseType: !65, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !924, file: !883, line: 93, baseType: !935, size: 96)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !883, line: 90, size: 96, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !935, file: !883, line: 91, baseType: !931, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !935, file: !883, line: 92, baseType: !423, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !882, file: !883, line: 101, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 98, size: 128, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !940, file: !883, line: 99, baseType: !184, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !940, file: !883, line: 100, baseType: !133, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !882, file: !883, line: 108, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 104, size: 128, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !945, file: !883, line: 105, baseType: !65, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !945, file: !883, line: 106, baseType: !133, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !945, file: !883, line: 107, baseType: !7, size: 32, offset: 96)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !413, file: !414, line: 1067, baseType: !951, offset: 11136)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !952, line: 12, elements: !121)
!952 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!953 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !413, file: !414, line: 1099, baseType: !954, size: 64, offset: 11136)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !414, line: 56, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !413, file: !414, line: 1103, baseType: !94, size: 128, offset: 11200)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !413, file: !414, line: 1104, baseType: !958, size: 64, offset: 11328)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !414, line: 46, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !413, file: !414, line: 1105, baseType: !367, size: 192, offset: 11392)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !413, file: !414, line: 1106, baseType: !7, size: 32, offset: 11584)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !413, file: !414, line: 1109, baseType: !963, size: 128, offset: 11648)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 128, elements: !966)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !414, line: 51, flags: DIFlagFwdDecl)
!966 = !{!967}
!967 = !DISubrange(count: 2)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !413, file: !414, line: 1110, baseType: !367, size: 192, offset: 11776)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !413, file: !414, line: 1111, baseType: !94, size: 128, offset: 11968)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !413, file: !414, line: 1173, baseType: !971, size: 64, offset: 12096)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !973, line: 62, size: 256, align: 256, elements: !974)
!973 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!974 = !{!975, !976, !977, !982}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !972, file: !973, line: 75, baseType: !423, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !972, file: !973, line: 90, baseType: !423, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !972, file: !973, line: 124, baseType: !978, size: 64, offset: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !973, line: 109, size: 64, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !978, file: !973, line: 110, baseType: !270, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !978, file: !973, line: 112, baseType: !270, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !973, line: 144, baseType: !423, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !413, file: !414, line: 1174, baseType: !422, size: 32, offset: 12160)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !413, file: !414, line: 1179, baseType: !199, size: 64, offset: 12224)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !413, file: !414, line: 1182, baseType: !986, size: 128, offset: 12288)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !345, line: 76, size: 128, elements: !987)
!987 = !{!988, !993, !996}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !986, file: !345, line: 85, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !990, line: 7, size: 64, elements: !991)
!990 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !989, file: !990, line: 12, baseType: !575, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !986, file: !345, line: 88, baseType: !994, size: 8, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 30, baseType: !995)
!995 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !986, file: !345, line: 95, baseType: !994, size: 8, offset: 72)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !414, line: 1184, baseType: !998, size: 128, offset: 12416)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !414, line: 1184, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !998, file: !414, line: 1185, baseType: !428, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !998, file: !414, line: 1186, baseType: !706, size: 128, align: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !413, file: !414, line: 1190, baseType: !1003, size: 64, offset: 12544)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !414, line: 53, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !413, file: !414, line: 1192, baseType: !1006, size: 128, offset: 12608)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !345, line: 64, size: 128, elements: !1007)
!1007 = !{!1008, !1101, !1102}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1006, file: !345, line: 65, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !240, line: 68, size: 512, align: 128, elements: !1011)
!1011 = !{!1012, !1013, !1093, !1100}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !240, line: 69, baseType: !199, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !240, line: 77, baseType: !1014, size: 320, offset: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !240, line: 77, size: 320, elements: !1015)
!1015 = !{!1016, !1025, !1030, !1058, !1066, !1072, !1085, !1092}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !240, line: 78, baseType: !1017, size: 320)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !240, line: 78, size: 320, elements: !1018)
!1018 = !{!1019, !1020, !1023, !1024}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1017, file: !240, line: 84, baseType: !94, size: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1017, file: !240, line: 86, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !240, line: 26, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1017, file: !240, line: 87, baseType: !199, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1017, file: !240, line: 94, baseType: !199, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !240, line: 96, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !240, line: 96, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1026, file: !240, line: 101, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !64, line: 143, baseType: !268)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !240, line: 103, baseType: !1031, size: 320)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !240, line: 103, size: 320, elements: !1032)
!1032 = !{!1033, !1043, !1046, !1047}
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !240, line: 104, baseType: !1034, size: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !240, line: 104, size: 128, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1034, file: !240, line: 105, baseType: !94, size: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !240, line: 106, baseType: !1038, size: 128)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !240, line: 106, size: 128, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1038, file: !240, line: 107, baseType: !1009, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1038, file: !240, line: 109, baseType: !133, size: 32, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1038, file: !240, line: 110, baseType: !133, size: 32, offset: 96)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1031, file: !240, line: 117, baseType: !1044, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !240, line: 117, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1031, file: !240, line: 119, baseType: !65, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !240, line: 120, baseType: !1048, size: 64, offset: 256)
!1048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !240, line: 120, size: 64, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1048, file: !240, line: 121, baseType: !65, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1048, file: !240, line: 122, baseType: !199, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !240, line: 123, baseType: !1053, size: 32)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !240, line: 123, size: 32, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1053, file: !240, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1053, file: !240, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1053, file: !240, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !240, line: 130, baseType: !1059, size: 192)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !240, line: 130, size: 192, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1059, file: !240, line: 131, baseType: !199, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1059, file: !240, line: 134, baseType: !561, size: 8, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1059, file: !240, line: 135, baseType: !561, size: 8, offset: 72)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1059, file: !240, line: 136, baseType: !290, size: 32, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1059, file: !240, line: 137, baseType: !7, size: 32, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !240, line: 139, baseType: !1067, size: 256)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !240, line: 139, size: 256, elements: !1068)
!1068 = !{!1069, !1070, !1071}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1067, file: !240, line: 140, baseType: !199, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1067, file: !240, line: 141, baseType: !290, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1067, file: !240, line: 143, baseType: !94, size: 128, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !240, line: 145, baseType: !1073, size: 256)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !240, line: 145, size: 256, elements: !1074)
!1074 = !{!1075, !1076, !1078, !1079, !1084}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1073, file: !240, line: 146, baseType: !199, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1073, file: !240, line: 147, baseType: !1077, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !229, line: 509, baseType: !1009)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1073, file: !240, line: 148, baseType: !199, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !240, line: 149, baseType: !1080, size: 64, offset: 192)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !240, line: 149, size: 64, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1080, file: !240, line: 150, baseType: !256, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1080, file: !240, line: 151, baseType: !290, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1073, file: !240, line: 156, baseType: !107, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !240, line: 159, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !240, line: 159, size: 128, elements: !1087)
!1087 = !{!1088, !1091}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1086, file: !240, line: 161, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !240, line: 161, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1086, file: !240, line: 162, baseType: !65, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1014, file: !240, line: 176, baseType: !706, size: 128, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !240, line: 179, baseType: !1094, size: 32, offset: 384)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !240, line: 179, size: 32, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1094, file: !240, line: 184, baseType: !290, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1094, file: !240, line: 192, baseType: !7, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1094, file: !240, line: 194, baseType: !7, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1094, file: !240, line: 195, baseType: !133, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1010, file: !240, line: 199, baseType: !290, size: 32, offset: 416)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1006, file: !345, line: 67, baseType: !423, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1006, file: !345, line: 68, baseType: !423, size: 32, offset: 96)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !413, file: !414, line: 1206, baseType: !133, size: 32, offset: 12736)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !413, file: !414, line: 1207, baseType: !133, size: 32, offset: 12768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !413, file: !414, line: 1209, baseType: !199, size: 64, offset: 12800)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !413, file: !414, line: 1219, baseType: !268, size: 64, offset: 12864)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !413, file: !414, line: 1220, baseType: !268, size: 64, offset: 12928)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !413, file: !414, line: 1317, baseType: !133, size: 32, offset: 12992)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !413, file: !414, line: 1319, baseType: !412, size: 64, offset: 13056)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !413, file: !414, line: 1322, baseType: !1111, size: 64, offset: 13120)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1113, line: 9, flags: DIFlagFwdDecl)
!1113 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !413, file: !414, line: 1326, baseType: !428, size: 32, offset: 13184)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !413, file: !414, line: 1342, baseType: !65, size: 64, offset: 13248)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !413, file: !414, line: 1343, baseType: !270, size: 64, offset: 13312)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !413, file: !414, line: 1344, baseType: !268, size: 64, offset: 13376)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !413, file: !414, line: 1345, baseType: !270, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !413, file: !414, line: 1346, baseType: !270, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !413, file: !414, line: 1347, baseType: !270, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !413, file: !414, line: 1348, baseType: !706, size: 128, align: 64, offset: 13504)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !413, file: !414, line: 1358, baseType: !1123, size: 34816, offset: 13824)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1124, line: 485, size: 34816, elements: !1125)
!1124 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1155, !1156, !1157, !1158, !1159, !1160, !1163, !1164, !1165}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1123, file: !1124, line: 487, baseType: !1127, size: 192)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 192, elements: !150)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1129, line: 16, size: 64, elements: !1130)
!1129 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1128, file: !1129, line: 17, baseType: !396, size: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1128, file: !1129, line: 18, baseType: !396, size: 16, offset: 16)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1128, file: !1129, line: 19, baseType: !396, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1128, file: !1129, line: 19, baseType: !396, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1128, file: !1129, line: 19, baseType: !396, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1128, file: !1129, line: 19, baseType: !396, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1128, file: !1129, line: 19, baseType: !396, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1128, file: !1129, line: 20, baseType: !396, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1128, file: !1129, line: 20, baseType: !396, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1128, file: !1129, line: 20, baseType: !396, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1128, file: !1129, line: 20, baseType: !396, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1128, file: !1129, line: 20, baseType: !396, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1128, file: !1129, line: 20, baseType: !396, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1123, file: !1124, line: 491, baseType: !199, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1123, file: !1124, line: 495, baseType: !191, size: 16, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1123, file: !1124, line: 496, baseType: !191, size: 16, offset: 272)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1123, file: !1124, line: 497, baseType: !191, size: 16, offset: 288)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1123, file: !1124, line: 498, baseType: !191, size: 16, offset: 304)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1123, file: !1124, line: 502, baseType: !199, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1123, file: !1124, line: 503, baseType: !199, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1123, file: !1124, line: 514, baseType: !1152, size: 256, offset: 448)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 256, elements: !349)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1124, line: 483, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1123, file: !1124, line: 516, baseType: !199, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1123, file: !1124, line: 518, baseType: !199, size: 64, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1123, file: !1124, line: 520, baseType: !199, size: 64, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1123, file: !1124, line: 521, baseType: !199, size: 64, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1123, file: !1124, line: 522, baseType: !199, size: 64, offset: 960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1123, file: !1124, line: 528, baseType: !1161, size: 64, offset: 1024)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1124, line: 10, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1123, file: !1124, line: 535, baseType: !199, size: 64, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1123, file: !1124, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1123, file: !1124, line: 540, baseType: !1166, size: 33280, offset: 1536)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1167, line: 317, size: 33280, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1166, file: !1167, line: 330, baseType: !7, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1166, file: !1167, line: 337, baseType: !199, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1166, file: !1167, line: 348, baseType: !1172, size: 32768, offset: 512)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1167, line: 304, size: 32768, elements: !1173)
!1173 = !{!1174, !1189, !1228, !1278, !1295}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1172, file: !1167, line: 305, baseType: !1175, size: 896)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1167, line: 12, size: 896, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1188}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1175, file: !1167, line: 13, baseType: !422, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1175, file: !1167, line: 14, baseType: !422, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1175, file: !1167, line: 15, baseType: !422, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1175, file: !1167, line: 16, baseType: !422, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1175, file: !1167, line: 17, baseType: !422, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1175, file: !1167, line: 18, baseType: !422, size: 32, offset: 160)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1175, file: !1167, line: 19, baseType: !422, size: 32, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1175, file: !1167, line: 22, baseType: !1185, size: 640, offset: 224)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 640, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 20)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1175, file: !1167, line: 25, baseType: !422, size: 32, offset: 864)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1172, file: !1167, line: 306, baseType: !1190, size: 4096, align: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1167, line: 34, size: 4096, align: 128, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1211, !1212, !1213, !1217, !1219, !1223}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1190, file: !1167, line: 35, baseType: !396, size: 16)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1190, file: !1167, line: 36, baseType: !396, size: 16, offset: 16)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1190, file: !1167, line: 37, baseType: !396, size: 16, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1190, file: !1167, line: 38, baseType: !396, size: 16, offset: 48)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1167, line: 39, baseType: !1197, size: 128, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1167, line: 39, size: 128, elements: !1198)
!1198 = !{!1199, !1204}
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1167, line: 40, baseType: !1200, size: 128)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1167, line: 40, size: 128, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1200, file: !1167, line: 41, baseType: !268, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1200, file: !1167, line: 42, baseType: !268, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1167, line: 44, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1167, line: 44, size: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1205, file: !1167, line: 45, baseType: !422, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1205, file: !1167, line: 46, baseType: !422, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1205, file: !1167, line: 47, baseType: !422, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1205, file: !1167, line: 48, baseType: !422, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1190, file: !1167, line: 51, baseType: !422, size: 32, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1190, file: !1167, line: 52, baseType: !422, size: 32, offset: 224)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1190, file: !1167, line: 55, baseType: !1214, size: 1024, offset: 256)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 1024, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1190, file: !1167, line: 58, baseType: !1218, size: 2048, offset: 1280)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 2048, elements: !154)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1190, file: !1167, line: 60, baseType: !1220, size: 384, offset: 3328)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 384, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 12)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1167, line: 62, baseType: !1224, size: 384, offset: 3712)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1167, line: 62, size: 384, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1224, file: !1167, line: 63, baseType: !1220, size: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1224, file: !1167, line: 64, baseType: !1220, size: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1172, file: !1167, line: 307, baseType: !1229, size: 1088)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1167, line: 79, size: 1088, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1277}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1229, file: !1167, line: 80, baseType: !422, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1229, file: !1167, line: 81, baseType: !422, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1229, file: !1167, line: 82, baseType: !422, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1229, file: !1167, line: 83, baseType: !422, size: 32, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1229, file: !1167, line: 84, baseType: !422, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1229, file: !1167, line: 85, baseType: !422, size: 32, offset: 160)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1229, file: !1167, line: 86, baseType: !422, size: 32, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1229, file: !1167, line: 88, baseType: !1185, size: 640, offset: 224)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1229, file: !1167, line: 89, baseType: !559, size: 8, offset: 864)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1229, file: !1167, line: 90, baseType: !559, size: 8, offset: 872)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1229, file: !1167, line: 91, baseType: !559, size: 8, offset: 880)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1229, file: !1167, line: 92, baseType: !559, size: 8, offset: 888)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1229, file: !1167, line: 93, baseType: !559, size: 8, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1229, file: !1167, line: 94, baseType: !559, size: 8, offset: 904)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1229, file: !1167, line: 95, baseType: !1246, size: 64, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1248, line: 11, size: 128, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1247, file: !1248, line: 12, baseType: !184, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1247, file: !1248, line: 13, baseType: !1252, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1254, line: 56, size: 1344, elements: !1255)
!1254 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1253, file: !1254, line: 61, baseType: !199, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1253, file: !1254, line: 62, baseType: !199, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1253, file: !1254, line: 63, baseType: !199, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1253, file: !1254, line: 64, baseType: !199, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1253, file: !1254, line: 65, baseType: !199, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1253, file: !1254, line: 66, baseType: !199, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1253, file: !1254, line: 68, baseType: !199, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1253, file: !1254, line: 69, baseType: !199, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1253, file: !1254, line: 70, baseType: !199, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1253, file: !1254, line: 71, baseType: !199, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1253, file: !1254, line: 72, baseType: !199, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1253, file: !1254, line: 73, baseType: !199, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1253, file: !1254, line: 74, baseType: !199, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1253, file: !1254, line: 75, baseType: !199, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1253, file: !1254, line: 76, baseType: !199, size: 64, offset: 896)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1253, file: !1254, line: 81, baseType: !199, size: 64, offset: 960)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1253, file: !1254, line: 83, baseType: !199, size: 64, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1253, file: !1254, line: 84, baseType: !199, size: 64, offset: 1088)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1254, line: 85, baseType: !199, size: 64, offset: 1152)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1253, file: !1254, line: 86, baseType: !199, size: 64, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1253, file: !1254, line: 87, baseType: !199, size: 64, offset: 1280)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1229, file: !1167, line: 96, baseType: !422, size: 32, offset: 1024)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1172, file: !1167, line: 308, baseType: !1279, size: 4608, align: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1167, line: 289, size: 4608, align: 512, elements: !1280)
!1280 = !{!1281, !1282, !1291}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1279, file: !1167, line: 290, baseType: !1190, size: 4096, align: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1279, file: !1167, line: 291, baseType: !1283, size: 512, offset: 4096)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1167, line: 268, size: 512, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1283, file: !1167, line: 269, baseType: !268, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1283, file: !1167, line: 270, baseType: !268, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1283, file: !1167, line: 271, baseType: !1288, size: 384, offset: 128)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 384, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 6)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1279, file: !1167, line: 292, baseType: !1292, offset: 4608)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 0)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1172, file: !1167, line: 309, baseType: !1296, size: 32768)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 32768, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 4096)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !240, line: 378, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !405, file: !240, line: 384, baseType: !728, size: 192, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !260, file: !240, line: 500, baseType: !107, offset: 6656)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !260, file: !240, line: 501, baseType: !1304, size: 64, offset: 6656)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !240, line: 387, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !260, file: !240, line: 516, baseType: !1307, size: 64, offset: 6720)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1309, line: 18, flags: DIFlagFwdDecl)
!1309 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !260, file: !240, line: 519, baseType: !227, size: 64, offset: 6784)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !260, file: !240, line: 521, baseType: !1312, size: 64, offset: 6848)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !240, line: 521, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !260, file: !240, line: 545, baseType: !290, size: 32, offset: 6912)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !260, file: !240, line: 548, baseType: !994, size: 8, offset: 6944)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !260, file: !240, line: 550, baseType: !1317, offset: 6952)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1318, line: 142, elements: !121)
!1318 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !260, file: !240, line: 554, baseType: !1320, size: 256, offset: 6976)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1321, line: 102, size: 256, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1320, file: !1321, line: 103, baseType: !298, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1320, file: !1321, line: 104, baseType: !94, size: 128, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1320, file: !1321, line: 105, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1321, line: 21, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !260, file: !240, line: 557, baseType: !422, size: 32, offset: 7232)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !257, file: !240, line: 565, baseType: !1333, offset: 7296)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: -1)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !239, file: !240, line: 333, baseType: !1337, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !229, line: 284, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !229, line: 284, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1338, file: !229, line: 284, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !288, line: 19, baseType: !199)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !239, file: !240, line: 334, baseType: !199, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !239, file: !240, line: 343, baseType: !1344, size: 256, offset: 704)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !240, line: 340, size: 256, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1344, file: !240, line: 341, baseType: !247, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1344, file: !240, line: 342, baseType: !199, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !239, file: !240, line: 351, baseType: !94, size: 128, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !239, file: !240, line: 353, baseType: !1350, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !240, line: 353, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !239, file: !240, line: 356, baseType: !1353, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !240, line: 356, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !239, file: !240, line: 359, baseType: !199, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !239, file: !240, line: 361, baseType: !227, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !239, file: !240, line: 362, baseType: !65, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !239, file: !240, line: 365, baseType: !298, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !239, file: !240, line: 373, baseType: !1361, offset: 1472)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !240, line: 296, elements: !121)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !206, file: !174, line: 90, baseType: !201, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !206, file: !174, line: 91, baseType: !1364, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !164, file: !90, line: 143, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !100}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1372)
!1372 = !{!1373, !1374, !1378, !1382, !1390, !1394}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !18, line: 40, baseType: !17, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1371, file: !18, line: 41, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!994}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1371, file: !18, line: 42, baseType: !1379, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!65}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1371, file: !18, line: 43, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1371, file: !18, line: 44, baseType: !1391, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1386}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1371, file: !18, line: 45, baseType: !1395, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !65}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !164, file: !90, line: 144, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1386, !100}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !164, file: !90, line: 145, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !100, !1406, !1412}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1309, line: 23, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 21, size: 32, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1408, file: !1309, line: 22, baseType: !1411, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !64, line: 32, baseType: !890)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1309, line: 28, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 26, size: 32, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1414, file: !1309, line: 27, baseType: !1417, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !64, line: 33, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !182, line: 50, baseType: !7)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !89, file: !90, line: 70, baseType: !1420, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1422, line: 123, size: 1024, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1565, !1566, !1567, !1568, !1569}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1421, file: !1422, line: 124, baseType: !290, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1421, file: !1422, line: 125, baseType: !290, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1421, file: !1422, line: 135, baseType: !1420, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !1422, line: 136, baseType: !74, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1421, file: !1422, line: 138, baseType: !247, size: 192, align: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1421, file: !1422, line: 140, baseType: !1386, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1421, file: !1422, line: 141, baseType: !7, size: 32, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !1422, line: 142, baseType: !1432, size: 256, offset: 512)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !1422, line: 142, size: 256, elements: !1433)
!1433 = !{!1434, !1488, !1492}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1432, file: !1422, line: 143, baseType: !1435, size: 192)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1422, line: 91, size: 192, elements: !1436)
!1436 = !{!1437, !1438, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1435, file: !1422, line: 92, baseType: !199, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1435, file: !1422, line: 94, baseType: !264, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1435, file: !1422, line: 100, baseType: !1440, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1422, line: 180, size: 704, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1458, !1459, !1460, !1486, !1487}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1441, file: !1422, line: 182, baseType: !1420, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !1422, line: 183, baseType: !7, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1441, file: !1422, line: 186, baseType: !1446, size: 192, offset: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1447, line: 19, size: 192, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1456, !1457}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1446, file: !1447, line: 20, baseType: !1450, size: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1451, line: 292, size: 128, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1454, !1455}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1450, file: !1451, line: 293, baseType: !107)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1450, file: !1451, line: 295, baseType: !63, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1450, file: !1451, line: 296, baseType: !65, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1446, file: !1447, line: 21, baseType: !7, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1446, file: !1447, line: 22, baseType: !7, size: 32, offset: 160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1441, file: !1422, line: 187, baseType: !422, size: 32, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1441, file: !1422, line: 188, baseType: !422, size: 32, offset: 352)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1441, file: !1422, line: 189, baseType: !1461, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1422, line: 168, size: 320, elements: !1463)
!1463 = !{!1464, !1470, !1474, !1478, !1482}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1462, file: !1422, line: 169, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!133, !1468, !1440}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !229, line: 539, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1462, file: !1422, line: 171, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!133, !1420, !74, !190}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1462, file: !1422, line: 173, baseType: !1475, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!133, !1420}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1462, file: !1422, line: 174, baseType: !1479, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!133, !1420, !1420, !74}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1462, file: !1422, line: 176, baseType: !1483, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!133, !1468, !1420, !1440}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1441, file: !1422, line: 192, baseType: !94, size: 128, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1441, file: !1422, line: 194, baseType: !699, size: 128, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1432, file: !1422, line: 144, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1422, line: 103, size: 64, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1489, file: !1422, line: 104, baseType: !1420, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1432, file: !1422, line: 145, baseType: !1493, size: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1422, line: 107, size: 256, elements: !1494)
!1494 = !{!1495, !1560, !1563, !1564}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1493, file: !1422, line: 108, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1422, line: 217, size: 768, elements: !1499)
!1499 = !{!1500, !1520, !1524, !1528, !1533, !1537, !1541, !1545, !1546, !1547, !1548, !1556}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1498, file: !1422, line: 222, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!133, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1422, line: 197, size: 1088, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1505, file: !1422, line: 199, baseType: !1420, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1505, file: !1422, line: 200, baseType: !227, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1505, file: !1422, line: 201, baseType: !1468, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1505, file: !1422, line: 202, baseType: !65, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1505, file: !1422, line: 205, baseType: !367, size: 192, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1505, file: !1422, line: 206, baseType: !367, size: 192, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1505, file: !1422, line: 207, baseType: !133, size: 32, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1505, file: !1422, line: 208, baseType: !94, size: 128, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1505, file: !1422, line: 209, baseType: !149, size: 64, offset: 832)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1505, file: !1422, line: 211, baseType: !196, size: 64, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1505, file: !1422, line: 212, baseType: !994, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1505, file: !1422, line: 213, baseType: !994, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1505, file: !1422, line: 214, baseType: !1353, size: 64, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1498, file: !1422, line: 223, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1504}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1498, file: !1422, line: 236, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!133, !1468, !65}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1498, file: !1422, line: 238, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!65, !1468, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1498, file: !1422, line: 239, baseType: !1534, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!65, !1468, !65, !1532}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1498, file: !1422, line: 240, baseType: !1538, size: 64, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1468, !65}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1498, file: !1422, line: 242, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!180, !1504, !149, !196, !230}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1498, file: !1422, line: 252, baseType: !196, size: 64, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1498, file: !1422, line: 259, baseType: !994, size: 8, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1498, file: !1422, line: 260, baseType: !1542, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1498, file: !1422, line: 263, baseType: !1549, size: 64, offset: 640)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!1552, !1504, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1553, line: 52, baseType: !7)
!1553 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1422, line: 27, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1498, file: !1422, line: 266, baseType: !1557, size: 64, offset: 704)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!133, !1504, !238}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1493, file: !1422, line: 109, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1422, line: 31, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1493, file: !1422, line: 110, baseType: !230, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1493, file: !1422, line: 111, baseType: !1420, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1421, file: !1422, line: 148, baseType: !65, size: 64, offset: 768)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1421, file: !1422, line: 154, baseType: !268, size: 64, offset: 832)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1421, file: !1422, line: 156, baseType: !191, size: 16, offset: 896)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1421, file: !1422, line: 157, baseType: !190, size: 16, offset: 912)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1421, file: !1422, line: 158, baseType: !1570, size: 64, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1422, line: 32, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !89, file: !90, line: 71, baseType: !1573, size: 32, offset: 448)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1574, line: 19, size: 32, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1573, file: !1574, line: 20, baseType: !428, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !89, file: !90, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !89, file: !90, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !89, file: !90, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !89, file: !90, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !89, file: !90, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !86, file: !24, line: 463, baseType: !85, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !86, file: !24, line: 465, baseType: !1584, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !24, line: 36, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !86, file: !24, line: 467, baseType: !74, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !24, line: 468, baseType: !1588, size: 64, offset: 704)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !24, line: 87, size: 384, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1598, !1603, !1607}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1590, file: !24, line: 88, baseType: !74, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1590, file: !24, line: 89, baseType: !203, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1590, file: !24, line: 90, baseType: !1595, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!133, !85, !144}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1590, file: !24, line: 91, baseType: !1599, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!149, !85, !1602, !1406, !1412}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1590, file: !24, line: 93, baseType: !1604, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !85}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1590, file: !24, line: 95, baseType: !1608, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !31, line: 278, size: 1472, elements: !1611)
!1611 = !{!1612, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1610, file: !31, line: 279, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!133, !85}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1610, file: !31, line: 280, baseType: !1604, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1610, file: !31, line: 281, baseType: !1613, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1610, file: !31, line: 282, baseType: !1613, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1610, file: !31, line: 283, baseType: !1613, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1610, file: !31, line: 284, baseType: !1613, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1610, file: !31, line: 285, baseType: !1613, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1610, file: !31, line: 286, baseType: !1613, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1610, file: !31, line: 287, baseType: !1613, size: 64, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1610, file: !31, line: 288, baseType: !1613, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1610, file: !31, line: 289, baseType: !1613, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1610, file: !31, line: 290, baseType: !1613, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1610, file: !31, line: 291, baseType: !1613, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1610, file: !31, line: 292, baseType: !1613, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1610, file: !31, line: 293, baseType: !1613, size: 64, offset: 896)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1610, file: !31, line: 294, baseType: !1613, size: 64, offset: 960)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1610, file: !31, line: 295, baseType: !1613, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1610, file: !31, line: 296, baseType: !1613, size: 64, offset: 1088)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1610, file: !31, line: 297, baseType: !1613, size: 64, offset: 1152)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1610, file: !31, line: 298, baseType: !1613, size: 64, offset: 1216)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1610, file: !31, line: 299, baseType: !1613, size: 64, offset: 1280)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1610, file: !31, line: 300, baseType: !1613, size: 64, offset: 1344)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1610, file: !31, line: 301, baseType: !1613, size: 64, offset: 1408)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !86, file: !24, line: 470, baseType: !78, size: 64, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !86, file: !24, line: 471, baseType: !1640, size: 64, offset: 832)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !86, file: !24, line: 473, baseType: !65, size: 64, offset: 896)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !86, file: !24, line: 475, baseType: !65, size: 64, offset: 960)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !86, file: !24, line: 480, baseType: !367, size: 192, offset: 1024)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !86, file: !24, line: 484, baseType: !1645, size: 576, offset: 1216)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !24, line: 361, size: 576, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1645, file: !24, line: 362, baseType: !94, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1645, file: !24, line: 363, baseType: !94, size: 128, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1645, file: !24, line: 364, baseType: !94, size: 128, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1645, file: !24, line: 365, baseType: !94, size: 128, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1645, file: !24, line: 366, baseType: !994, size: 8, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1645, file: !24, line: 367, baseType: !23, size: 32, offset: 544)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !86, file: !24, line: 485, baseType: !1654, size: 2304, offset: 1792)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !31, line: 565, size: 2304, elements: !1655)
!1655 = !{!1656, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1755, !1759}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1654, file: !31, line: 566, baseType: !1657, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !31, line: 52, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !31, line: 50, size: 32, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1658, file: !31, line: 51, baseType: !133, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1654, file: !31, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1654, file: !31, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1654, file: !31, line: 569, baseType: !994, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1654, file: !31, line: 570, baseType: !994, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1654, file: !31, line: 571, baseType: !994, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1654, file: !31, line: 572, baseType: !994, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1654, file: !31, line: 573, baseType: !994, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1654, file: !31, line: 574, baseType: !994, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1654, file: !31, line: 575, baseType: !994, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1654, file: !31, line: 576, baseType: !994, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1654, file: !31, line: 577, baseType: !422, size: 32, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1654, file: !31, line: 578, baseType: !107, offset: 96)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1654, file: !31, line: 580, baseType: !94, size: 128, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1654, file: !31, line: 581, baseType: !728, size: 192, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1654, file: !31, line: 582, baseType: !1676, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1678, line: 43, size: 1472, elements: !1679)
!1678 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1687, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1677, file: !1678, line: 44, baseType: !74, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1677, file: !1678, line: 45, baseType: !133, size: 32, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1677, file: !1678, line: 46, baseType: !94, size: 128, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1677, file: !1678, line: 47, baseType: !107, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1677, file: !1678, line: 48, baseType: !1685, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !31, line: 533, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1677, file: !1678, line: 49, baseType: !1688, size: 320, offset: 320)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1689, line: 11, size: 320, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1698}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1688, file: !1689, line: 16, baseType: !692, size: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1688, file: !1689, line: 17, baseType: !199, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1688, file: !1689, line: 18, baseType: !1694, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1697}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1688, file: !1689, line: 19, baseType: !422, size: 32, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1677, file: !1678, line: 50, baseType: !199, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1677, file: !1678, line: 51, baseType: !498, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1677, file: !1678, line: 52, baseType: !498, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1677, file: !1678, line: 53, baseType: !498, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1677, file: !1678, line: 54, baseType: !498, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1677, file: !1678, line: 55, baseType: !498, size: 64, offset: 960)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1677, file: !1678, line: 56, baseType: !199, size: 64, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1677, file: !1678, line: 57, baseType: !199, size: 64, offset: 1088)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1677, file: !1678, line: 58, baseType: !199, size: 64, offset: 1152)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1677, file: !1678, line: 59, baseType: !199, size: 64, offset: 1216)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1677, file: !1678, line: 60, baseType: !199, size: 64, offset: 1280)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1677, file: !1678, line: 61, baseType: !85, size: 64, offset: 1344)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1677, file: !1678, line: 62, baseType: !994, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1677, file: !1678, line: 63, baseType: !994, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1654, file: !31, line: 583, baseType: !994, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1654, file: !31, line: 584, baseType: !994, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1654, file: !31, line: 585, baseType: !994, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1654, file: !31, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1654, file: !31, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1654, file: !31, line: 592, baseType: !490, size: 512, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1654, file: !31, line: 593, baseType: !268, size: 64, offset: 1088)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1654, file: !31, line: 594, baseType: !1320, size: 256, offset: 1152)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1654, file: !31, line: 595, baseType: !699, size: 128, offset: 1408)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1654, file: !31, line: 596, baseType: !1685, size: 64, offset: 1536)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1654, file: !31, line: 597, baseType: !290, size: 32, offset: 1600)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1654, file: !31, line: 598, baseType: !290, size: 32, offset: 1632)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1654, file: !31, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1654, file: !31, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1654, file: !31, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1654, file: !31, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1654, file: !31, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1654, file: !31, line: 604, baseType: !994, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1654, file: !31, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1654, file: !31, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1654, file: !31, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1654, file: !31, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1654, file: !31, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1654, file: !31, line: 610, baseType: !7, size: 32, offset: 1696)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1654, file: !31, line: 611, baseType: !30, size: 32, offset: 1728)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1654, file: !31, line: 612, baseType: !38, size: 32, offset: 1760)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1654, file: !31, line: 613, baseType: !133, size: 32, offset: 1792)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1654, file: !31, line: 614, baseType: !133, size: 32, offset: 1824)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1654, file: !31, line: 615, baseType: !268, size: 64, offset: 1856)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1654, file: !31, line: 616, baseType: !268, size: 64, offset: 1920)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1654, file: !31, line: 617, baseType: !268, size: 64, offset: 1984)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1654, file: !31, line: 618, baseType: !268, size: 64, offset: 2048)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1654, file: !31, line: 620, baseType: !1746, size: 64, offset: 2112)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !31, line: 536, size: 256, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1747, file: !31, line: 537, baseType: !107)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1747, file: !31, line: 538, baseType: !7, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1747, file: !31, line: 540, baseType: !94, size: 128, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1747, file: !31, line: 543, baseType: !1753, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !31, line: 534, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1654, file: !31, line: 621, baseType: !1756, size: 64, offset: 2176)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !85, !652}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1654, file: !31, line: 622, baseType: !1760, size: 64, offset: 2240)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !31, line: 622, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !86, file: !24, line: 486, baseType: !1763, size: 64, offset: 4096)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !31, line: 642, size: 1792, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1772, !1773, !1774}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1764, file: !31, line: 643, baseType: !1610, size: 1472)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1764, file: !31, line: 644, baseType: !1613, size: 64, offset: 1472)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1764, file: !31, line: 645, baseType: !1769, size: 64, offset: 1536)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !85, !994}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1764, file: !31, line: 646, baseType: !1613, size: 64, offset: 1600)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1764, file: !31, line: 647, baseType: !1604, size: 64, offset: 1664)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1764, file: !31, line: 648, baseType: !1604, size: 64, offset: 1728)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !86, file: !24, line: 493, baseType: !1776, size: 64, offset: 4160)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !24, line: 493, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !86, file: !24, line: 499, baseType: !94, size: 128, offset: 4224)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !86, file: !24, line: 502, baseType: !1780, size: 64, offset: 4352)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !24, line: 502, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !86, file: !24, line: 504, baseType: !1784, size: 64, offset: 4416)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !86, file: !24, line: 505, baseType: !268, size: 64, offset: 4480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !86, file: !24, line: 510, baseType: !268, size: 64, offset: 4544)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !86, file: !24, line: 511, baseType: !1788, size: 64, offset: 4608)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !24, line: 511, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !86, file: !24, line: 513, baseType: !1792, size: 64, offset: 4672)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !24, line: 288, size: 128, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1793, file: !24, line: 293, baseType: !7, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1793, file: !24, line: 294, baseType: !199, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !86, file: !24, line: 515, baseType: !94, size: 128, offset: 4736)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !86, file: !24, line: 526, baseType: !1799, offset: 4864)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1800, line: 5, elements: !121)
!1800 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !86, file: !24, line: 528, baseType: !1802, size: 64, offset: 4864)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1804, line: 14, flags: DIFlagFwdDecl)
!1804 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !86, file: !24, line: 529, baseType: !1806, size: 64, offset: 4928)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !80, line: 22, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !86, file: !24, line: 534, baseType: !1809, size: 32, offset: 4992)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !64, line: 16, baseType: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !64, line: 13, baseType: !422)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !86, file: !24, line: 535, baseType: !422, size: 32, offset: 5024)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !86, file: !24, line: 537, baseType: !107, offset: 5056)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !86, file: !24, line: 538, baseType: !94, size: 128, offset: 5056)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !86, file: !24, line: 540, baseType: !1815, size: 64, offset: 5184)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1817, line: 54, size: 960, elements: !1818)
!1817 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !{!1819, !1820, !1824, !1825, !1826, !1827, !1828, !1832, !1836, !1837, !1838, !1839, !1843, !1847, !1848}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1816, file: !1817, line: 55, baseType: !74, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1816, file: !1817, line: 56, baseType: !1821, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1823, line: 76, flags: DIFlagFwdDecl)
!1823 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1816, file: !1817, line: 58, baseType: !203, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1816, file: !1817, line: 59, baseType: !203, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1816, file: !1817, line: 60, baseType: !100, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1816, file: !1817, line: 62, baseType: !1595, size: 64, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1816, file: !1817, line: 63, baseType: !1829, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!149, !85, !1602}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1816, file: !1817, line: 65, baseType: !1833, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1815}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1816, file: !1817, line: 66, baseType: !1604, size: 64, offset: 512)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1816, file: !1817, line: 68, baseType: !1613, size: 64, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1816, file: !1817, line: 70, baseType: !1369, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1816, file: !1817, line: 71, baseType: !1840, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1386, !85}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1816, file: !1817, line: 73, baseType: !1844, size: 64, offset: 768)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !85, !1406, !1412}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1816, file: !1817, line: 75, baseType: !1608, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1816, file: !1817, line: 77, baseType: !1849, size: 64, offset: 896)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !80, line: 111, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !86, file: !24, line: 541, baseType: !203, size: 64, offset: 5248)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !86, file: !24, line: 543, baseType: !1604, size: 64, offset: 5312)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !86, file: !24, line: 544, baseType: !1854, size: 64, offset: 5376)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !24, line: 45, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !86, file: !24, line: 545, baseType: !1857, size: 64, offset: 5440)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !24, line: 47, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !86, file: !24, line: 547, baseType: !994, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !86, file: !24, line: 548, baseType: !994, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !86, file: !24, line: 549, baseType: !994, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !86, file: !24, line: 550, baseType: !994, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !79, file: !80, line: 86, baseType: !203, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !79, file: !80, line: 87, baseType: !203, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !79, file: !80, line: 88, baseType: !203, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !79, file: !80, line: 90, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!133, !85, !1640}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !79, file: !80, line: 91, baseType: !1595, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !79, file: !80, line: 92, baseType: !1613, size: 64, offset: 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !79, file: !80, line: 93, baseType: !1604, size: 64, offset: 576)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !79, file: !80, line: 94, baseType: !1613, size: 64, offset: 640)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !79, file: !80, line: 95, baseType: !1604, size: 64, offset: 704)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !79, file: !80, line: 97, baseType: !1613, size: 64, offset: 768)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !79, file: !80, line: 98, baseType: !1613, size: 64, offset: 832)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !79, file: !80, line: 100, baseType: !1878, size: 64, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!133, !85, !1657}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !79, file: !80, line: 101, baseType: !1613, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !79, file: !80, line: 103, baseType: !1613, size: 64, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !79, file: !80, line: 105, baseType: !1613, size: 64, offset: 1088)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !79, file: !80, line: 107, baseType: !1608, size: 64, offset: 1152)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !79, file: !80, line: 109, baseType: !1886, size: 64, offset: 1216)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !80, line: 109, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !79, file: !80, line: 111, baseType: !1849, size: 64, offset: 1280)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !79, file: !80, line: 112, baseType: !1891, offset: 1344)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1892, line: 187, elements: !121)
!1892 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !79, file: !80, line: 114, baseType: !994, size: 8, offset: 1344)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !71, file: !45, line: 99, baseType: !1821, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !71, file: !45, line: 100, baseType: !74, size: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !71, file: !45, line: 102, baseType: !994, size: 8, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !71, file: !45, line: 103, baseType: !44, size: 32, offset: 288)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !71, file: !45, line: 105, baseType: !1899, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1902, line: 262, size: 1600, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1906, !1907, !1911}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1901, file: !1902, line: 263, baseType: !1905, size: 256)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !1215)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1901, file: !1902, line: 264, baseType: !1905, size: 256, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1901, file: !1902, line: 265, baseType: !1908, size: 1024, offset: 512)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1024, elements: !1909)
!1909 = !{!1910}
!1910 = !DISubrange(count: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1901, file: !1902, line: 266, baseType: !1386, size: 64, offset: 1536)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !71, file: !45, line: 106, baseType: !1913, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1902, line: 210, size: 256, elements: !1916)
!1916 = !{!1917, !1921, !1923, !1924}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1915, file: !1902, line: 211, baseType: !1918, size: 72)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 72, elements: !1919)
!1919 = !{!1920}
!1920 = !DISubrange(count: 9)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1915, file: !1902, line: 212, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1902, line: 14, baseType: !199)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1915, file: !1902, line: 213, baseType: !423, size: 32, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1915, file: !1902, line: 214, baseType: !423, size: 32, offset: 224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !71, file: !45, line: 108, baseType: !1613, size: 64, offset: 448)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !71, file: !45, line: 109, baseType: !1604, size: 64, offset: 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !71, file: !45, line: 110, baseType: !1613, size: 64, offset: 576)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !71, file: !45, line: 111, baseType: !1604, size: 64, offset: 640)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !71, file: !45, line: 112, baseType: !1878, size: 64, offset: 704)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !71, file: !45, line: 113, baseType: !1613, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !71, file: !45, line: 114, baseType: !203, size: 64, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !71, file: !45, line: 115, baseType: !203, size: 64, offset: 896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !71, file: !45, line: 117, baseType: !1608, size: 64, offset: 960)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !71, file: !45, line: 118, baseType: !1604, size: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !71, file: !45, line: 120, baseType: !1936, size: 64, offset: 1088)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !45, line: 120, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !67, file: !68, line: 95, baseType: !1939, size: 64, offset: 1152)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcb_device_id", file: !1902, line: 738, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1941, file: !1902, line: 739, baseType: !397, size: 16)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1941, file: !1902, line: 740, baseType: !1922, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !67, file: !68, line: 96, baseType: !1946, size: 64, offset: 1216)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!133, !1949, !1939}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcb_device", file: !68, line: 63, size: 7040, elements: !1951)
!1951 = !{!1952, !1953, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1994, !1995}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1950, file: !68, line: 64, baseType: !86, size: 5568)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1950, file: !68, line: 65, baseType: !1954, size: 64, offset: 5568)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcb_bus", file: !68, line: 31, size: 5888, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1967}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1955, file: !68, line: 32, baseType: !86, size: 5568)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !1955, file: !68, line: 33, baseType: !85, size: 64, offset: 5568)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "bus_nr", scope: !1955, file: !68, line: 34, baseType: !133, size: 32, offset: 5632)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1955, file: !68, line: 35, baseType: !559, size: 8, offset: 5664)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !1955, file: !68, line: 36, baseType: !76, size: 8, offset: 5672)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !1955, file: !68, line: 37, baseType: !559, size: 8, offset: 5680)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1955, file: !68, line: 38, baseType: !1964, size: 104, offset: 5688)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 104, elements: !1965)
!1965 = !{!1966}
!1966 = !DISubrange(count: 13)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "get_irq", scope: !1955, file: !68, line: 39, baseType: !1968, size: 64, offset: 5824)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!133, !1949}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !1950, file: !68, line: 66, baseType: !994, size: 8, offset: 5632)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1950, file: !68, line: 67, baseType: !66, size: 64, offset: 5696)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1950, file: !68, line: 68, baseType: !396, size: 16, offset: 5760)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !1950, file: !68, line: 69, baseType: !133, size: 32, offset: 5792)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1950, file: !68, line: 70, baseType: !133, size: 32, offset: 5824)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1950, file: !68, line: 71, baseType: !133, size: 32, offset: 5856)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "bar", scope: !1950, file: !68, line: 72, baseType: !133, size: 32, offset: 5888)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1950, file: !68, line: 73, baseType: !133, size: 32, offset: 5920)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1950, file: !68, line: 74, baseType: !1980, size: 512, offset: 5952)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !1981, line: 20, size: 512, elements: !1982)
!1981 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!1982 = !{!1983, !1986, !1987, !1988, !1989, !1990, !1992, !1993}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1980, file: !1981, line: 21, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !64, line: 158, baseType: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !64, line: 153, baseType: !268)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1980, file: !1981, line: 22, baseType: !1984, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1980, file: !1981, line: 23, baseType: !74, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1980, file: !1981, line: 24, baseType: !199, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1980, file: !1981, line: 25, baseType: !199, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1980, file: !1981, line: 26, baseType: !1991, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1980, file: !1981, line: 26, baseType: !1991, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1980, file: !1981, line: 26, baseType: !1991, size: 64, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1950, file: !68, line: 75, baseType: !1980, size: 512, offset: 6464)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !1950, file: !68, line: 76, baseType: !85, size: 64, offset: 6976)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !67, file: !68, line: 97, baseType: !1997, size: 64, offset: 1280)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1949}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !67, file: !68, line: 98, baseType: !1997, size: 64, offset: 1344)
!2001 = !{!2002, !2004, !2011, !2016, !2021, !2026, !0, !2031, !2036, !2038, !2041, !2043, !2048, !2062, !2064, !2066}
!2002 = !DIGlobalVariableExpression(var: !2003, expr: !DIExpression())
!2003 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mcb_init164", scope: !2, file: !3, line: 515, type: !65, isLocal: true, isDefinition: true)
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(name: "__exitcall_mcb_exit", scope: !2, file: !3, line: 516, type: !2006, isLocal: true, isDefinition: true)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2007, line: 117, baseType: !2008)
!2007 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null}
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description165", scope: !2, file: !3, line: 518, type: !2013, isLocal: true, isDefinition: true, align: 8)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 328, elements: !2014)
!2014 = !{!2015}
!2015 = !DISubrange(count: 41)
!2016 = !DIGlobalVariableExpression(var: !2017, expr: !DIExpression())
!2017 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author166", scope: !2, file: !3, line: 519, type: !2018, isLocal: true, isDefinition: true, align: 8)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 464, elements: !2019)
!2019 = !{!2020}
!2020 = !DISubrange(count: 58)
!2021 = !DIGlobalVariableExpression(var: !2022, expr: !DIExpression())
!2022 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file167", scope: !2, file: !3, line: 520, type: !2023, isLocal: true, isDefinition: true, align: 8)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 200, elements: !2024)
!2024 = !{!2025}
!2025 = !DISubrange(count: 25)
!2026 = !DIGlobalVariableExpression(var: !2027, expr: !DIExpression())
!2027 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license168", scope: !2, file: !3, line: 520, type: !2028, isLocal: true, isDefinition: true, align: 8)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 152, elements: !2029)
!2029 = !{!2030}
!2030 = !DISubrange(count: 19)
!2031 = !DIGlobalVariableExpression(var: !2032, expr: !DIExpression())
!2032 = distinct !DIGlobalVariable(name: "mcb_ida", scope: !2, file: !3, line: 15, type: !2033, isLocal: true, isDefinition: true)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1447, line: 244, size: 128, elements: !2034)
!2034 = !{!2035}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2033, file: !1447, line: 245, baseType: !1450, size: 128)
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(name: "mcb_carrier_device_type", scope: !2, file: !3, line: 168, type: !1590, isLocal: true, isDefinition: true)
!2038 = !DIGlobalVariableExpression(var: !2039, expr: !DIExpression())
!2039 = distinct !DIGlobalVariable(name: "mcb_carrier_groups", scope: !2, file: !3, line: 153, type: !2040, isLocal: true, isDefinition: true)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !966)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(name: "mcb_carrier_group", scope: !2, file: !3, line: 149, type: !205, isLocal: true, isDefinition: true)
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(name: "mcb_bus_attrs", scope: !2, file: !3, line: 141, type: !2045, isLocal: true, isDefinition: true)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 320, elements: !2046)
!2046 = !{!2047}
!2047 = !DISubrange(count: 5)
!2048 = !DIGlobalVariableExpression(var: !2049, expr: !DIExpression())
!2049 = distinct !DIGlobalVariable(name: "dev_attr_revision", scope: !2, file: !3, line: 112, type: !2050, isLocal: true, isDefinition: true)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !24, line: 99, size: 256, elements: !2051)
!2051 = !{!2052, !2053, !2058}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2050, file: !24, line: 100, baseType: !186, size: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2050, file: !24, line: 101, baseType: !2054, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!180, !85, !2057, !149}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2050, file: !24, line: 103, baseType: !2059, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!180, !85, !2057, !74, !196}
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(name: "dev_attr_model", scope: !2, file: !3, line: 121, type: !2050, isLocal: true, isDefinition: true)
!2064 = !DIGlobalVariableExpression(var: !2065, expr: !DIExpression())
!2065 = distinct !DIGlobalVariable(name: "dev_attr_minor", scope: !2, file: !3, line: 130, type: !2050, isLocal: true, isDefinition: true)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 139, type: !2050, isLocal: true, isDefinition: true)
!2068 = !{i32 7, !"Dwarf Version", i32 4}
!2069 = !{i32 2, !"Debug Info Version", i32 3}
!2070 = !{i32 1, !"wchar_size", i32 2}
!2071 = !{i32 1, !"Code Model", i32 2}
!2072 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2073 = distinct !DISubprogram(name: "__mcb_register_driver", scope: !3, file: !3, line: 182, type: !2074, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!133, !66, !1821, !74}
!2076 = !DILocalVariable(name: "drv", arg: 1, scope: !2073, file: !3, line: 182, type: !66)
!2077 = !DILocation(line: 182, column: 46, scope: !2073)
!2078 = !DILocalVariable(name: "owner", arg: 2, scope: !2073, file: !3, line: 182, type: !1821)
!2079 = !DILocation(line: 182, column: 66, scope: !2073)
!2080 = !DILocalVariable(name: "mod_name", arg: 3, scope: !2073, file: !3, line: 183, type: !74)
!2081 = !DILocation(line: 183, column: 16, scope: !2073)
!2082 = !DILocation(line: 185, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 185, column: 6)
!2084 = !DILocation(line: 185, column: 12, scope: !2083)
!2085 = !DILocation(line: 185, column: 18, scope: !2083)
!2086 = !DILocation(line: 185, column: 22, scope: !2083)
!2087 = !DILocation(line: 185, column: 27, scope: !2083)
!2088 = !DILocation(line: 185, column: 6, scope: !2073)
!2089 = !DILocation(line: 186, column: 3, scope: !2083)
!2090 = !DILocation(line: 188, column: 22, scope: !2073)
!2091 = !DILocation(line: 188, column: 2, scope: !2073)
!2092 = !DILocation(line: 188, column: 7, scope: !2073)
!2093 = !DILocation(line: 188, column: 14, scope: !2073)
!2094 = !DILocation(line: 188, column: 20, scope: !2073)
!2095 = !DILocation(line: 189, column: 2, scope: !2073)
!2096 = !DILocation(line: 189, column: 7, scope: !2073)
!2097 = !DILocation(line: 189, column: 14, scope: !2073)
!2098 = !DILocation(line: 189, column: 18, scope: !2073)
!2099 = !DILocation(line: 190, column: 25, scope: !2073)
!2100 = !DILocation(line: 190, column: 2, scope: !2073)
!2101 = !DILocation(line: 190, column: 7, scope: !2073)
!2102 = !DILocation(line: 190, column: 14, scope: !2073)
!2103 = !DILocation(line: 190, column: 23, scope: !2073)
!2104 = !DILocation(line: 192, column: 26, scope: !2073)
!2105 = !DILocation(line: 192, column: 31, scope: !2073)
!2106 = !DILocation(line: 192, column: 9, scope: !2073)
!2107 = !DILocation(line: 192, column: 2, scope: !2073)
!2108 = !DILocation(line: 193, column: 1, scope: !2073)
!2109 = distinct !DISubprogram(name: "mcb_unregister_driver", scope: !3, file: !3, line: 202, type: !2110, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !66}
!2112 = !DILocalVariable(name: "drv", arg: 1, scope: !2109, file: !3, line: 202, type: !66)
!2113 = !DILocation(line: 202, column: 47, scope: !2109)
!2114 = !DILocation(line: 204, column: 21, scope: !2109)
!2115 = !DILocation(line: 204, column: 26, scope: !2109)
!2116 = !DILocation(line: 204, column: 2, scope: !2109)
!2117 = !DILocation(line: 205, column: 1, scope: !2109)
!2118 = distinct !DISubprogram(name: "mcb_device_register", scope: !3, file: !3, line: 223, type: !2119, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!133, !1954, !1949}
!2121 = !DILocalVariable(name: "bus", arg: 1, scope: !2118, file: !3, line: 223, type: !1954)
!2122 = !DILocation(line: 223, column: 41, scope: !2118)
!2123 = !DILocalVariable(name: "dev", arg: 2, scope: !2118, file: !3, line: 223, type: !1949)
!2124 = !DILocation(line: 223, column: 65, scope: !2118)
!2125 = !DILocalVariable(name: "ret", scope: !2118, file: !3, line: 225, type: !133)
!2126 = !DILocation(line: 225, column: 6, scope: !2118)
!2127 = !DILocalVariable(name: "device_id", scope: !2118, file: !3, line: 226, type: !133)
!2128 = !DILocation(line: 226, column: 6, scope: !2118)
!2129 = !DILocation(line: 228, column: 21, scope: !2118)
!2130 = !DILocation(line: 228, column: 26, scope: !2118)
!2131 = !DILocation(line: 228, column: 2, scope: !2118)
!2132 = !DILocation(line: 229, column: 14, scope: !2118)
!2133 = !DILocation(line: 229, column: 2, scope: !2118)
!2134 = !DILocation(line: 230, column: 2, scope: !2118)
!2135 = !DILocation(line: 230, column: 7, scope: !2118)
!2136 = !DILocation(line: 230, column: 11, scope: !2118)
!2137 = !DILocation(line: 230, column: 15, scope: !2118)
!2138 = !DILocation(line: 231, column: 20, scope: !2118)
!2139 = !DILocation(line: 231, column: 25, scope: !2118)
!2140 = !DILocation(line: 231, column: 29, scope: !2118)
!2141 = !DILocation(line: 231, column: 2, scope: !2118)
!2142 = !DILocation(line: 231, column: 7, scope: !2118)
!2143 = !DILocation(line: 231, column: 11, scope: !2118)
!2144 = !DILocation(line: 231, column: 18, scope: !2118)
!2145 = !DILocation(line: 232, column: 2, scope: !2118)
!2146 = !DILocation(line: 232, column: 7, scope: !2118)
!2147 = !DILocation(line: 232, column: 11, scope: !2118)
!2148 = !DILocation(line: 232, column: 19, scope: !2118)
!2149 = !DILocation(line: 233, column: 17, scope: !2118)
!2150 = !DILocation(line: 233, column: 22, scope: !2118)
!2151 = !DILocation(line: 233, column: 2, scope: !2118)
!2152 = !DILocation(line: 233, column: 7, scope: !2118)
!2153 = !DILocation(line: 233, column: 15, scope: !2118)
!2154 = !DILocation(line: 235, column: 14, scope: !2118)
!2155 = !DILocation(line: 235, column: 19, scope: !2118)
!2156 = !DILocation(line: 235, column: 12, scope: !2118)
!2157 = !DILocation(line: 236, column: 16, scope: !2118)
!2158 = !DILocation(line: 236, column: 21, scope: !2118)
!2159 = !DILocation(line: 237, column: 3, scope: !2118)
!2160 = !DILocation(line: 237, column: 8, scope: !2118)
!2161 = !DILocation(line: 237, column: 16, scope: !2118)
!2162 = !DILocation(line: 237, column: 27, scope: !2118)
!2163 = !DILocation(line: 237, column: 32, scope: !2118)
!2164 = !DILocation(line: 237, column: 38, scope: !2118)
!2165 = !DILocation(line: 237, column: 43, scope: !2118)
!2166 = !DILocation(line: 237, column: 50, scope: !2118)
!2167 = !DILocation(line: 237, column: 55, scope: !2118)
!2168 = !DILocation(line: 236, column: 2, scope: !2118)
!2169 = !DILocation(line: 239, column: 20, scope: !2118)
!2170 = !DILocation(line: 239, column: 25, scope: !2118)
!2171 = !DILocation(line: 239, column: 8, scope: !2118)
!2172 = !DILocation(line: 239, column: 6, scope: !2118)
!2173 = !DILocation(line: 240, column: 6, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 240, column: 6)
!2175 = !DILocation(line: 240, column: 10, scope: !2174)
!2176 = !DILocation(line: 240, column: 6, scope: !2118)
!2177 = !DILocation(line: 241, column: 3, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 240, column: 15)
!2179 = !DILocation(line: 243, column: 3, scope: !2178)
!2180 = !DILocation(line: 246, column: 2, scope: !2118)
!2181 = !DILabel(scope: !2118, name: "out", file: !3, line: 248)
!2182 = !DILocation(line: 248, column: 1, scope: !2118)
!2183 = !DILocation(line: 250, column: 9, scope: !2118)
!2184 = !DILocation(line: 250, column: 2, scope: !2118)
!2185 = !DILocation(line: 251, column: 1, scope: !2118)
!2186 = distinct !DISubprogram(name: "mcb_bus_get", scope: !3, file: !3, line: 334, type: !2187, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!1954, !1954}
!2189 = !DILocalVariable(name: "bus", arg: 1, scope: !2186, file: !3, line: 334, type: !1954)
!2190 = !DILocation(line: 334, column: 45, scope: !2186)
!2191 = !DILocation(line: 336, column: 6, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 336, column: 6)
!2193 = !DILocation(line: 336, column: 6, scope: !2186)
!2194 = !DILocation(line: 337, column: 15, scope: !2192)
!2195 = !DILocation(line: 337, column: 20, scope: !2192)
!2196 = !DILocation(line: 337, column: 3, scope: !2192)
!2197 = !DILocation(line: 339, column: 9, scope: !2186)
!2198 = !DILocation(line: 339, column: 2, scope: !2186)
!2199 = distinct !DISubprogram(name: "mcb_release_dev", scope: !3, file: !3, line: 208, type: !1605, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2200 = !DILocalVariable(name: "dev", arg: 1, scope: !2199, file: !3, line: 208, type: !85)
!2201 = !DILocation(line: 208, column: 44, scope: !2199)
!2202 = !DILocalVariable(name: "mdev", scope: !2199, file: !3, line: 210, type: !1949)
!2203 = !DILocation(line: 210, column: 21, scope: !2199)
!2204 = !DILocation(line: 210, column: 42, scope: !2199)
!2205 = !DILocation(line: 210, column: 28, scope: !2199)
!2206 = !DILocation(line: 212, column: 14, scope: !2199)
!2207 = !DILocation(line: 212, column: 20, scope: !2199)
!2208 = !DILocation(line: 212, column: 2, scope: !2199)
!2209 = !DILocation(line: 213, column: 8, scope: !2199)
!2210 = !DILocation(line: 213, column: 2, scope: !2199)
!2211 = !DILocation(line: 214, column: 1, scope: !2199)
!2212 = distinct !DISubprogram(name: "mcb_alloc_bus", scope: !3, file: !3, line: 268, type: !2213, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!1954, !85}
!2215 = !DILocalVariable(name: "carrier", arg: 1, scope: !2212, file: !3, line: 268, type: !85)
!2216 = !DILocation(line: 268, column: 46, scope: !2212)
!2217 = !DILocalVariable(name: "bus", scope: !2212, file: !3, line: 270, type: !1954)
!2218 = !DILocation(line: 270, column: 18, scope: !2212)
!2219 = !DILocalVariable(name: "bus_nr", scope: !2212, file: !3, line: 271, type: !133)
!2220 = !DILocation(line: 271, column: 6, scope: !2212)
!2221 = !DILocalVariable(name: "rc", scope: !2212, file: !3, line: 272, type: !133)
!2222 = !DILocation(line: 272, column: 6, scope: !2212)
!2223 = !DILocation(line: 274, column: 8, scope: !2212)
!2224 = !DILocation(line: 274, column: 6, scope: !2212)
!2225 = !DILocation(line: 275, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 275, column: 6)
!2227 = !DILocation(line: 275, column: 6, scope: !2212)
!2228 = !DILocation(line: 276, column: 10, scope: !2226)
!2229 = !DILocation(line: 276, column: 3, scope: !2226)
!2230 = !DILocation(line: 278, column: 11, scope: !2212)
!2231 = !DILocation(line: 278, column: 9, scope: !2212)
!2232 = !DILocation(line: 279, column: 6, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 279, column: 6)
!2234 = !DILocation(line: 279, column: 13, scope: !2233)
!2235 = !DILocation(line: 279, column: 6, scope: !2212)
!2236 = !DILocation(line: 280, column: 8, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 279, column: 18)
!2238 = !DILocation(line: 280, column: 6, scope: !2237)
!2239 = !DILocation(line: 281, column: 3, scope: !2237)
!2240 = !DILocation(line: 284, column: 16, scope: !2212)
!2241 = !DILocation(line: 284, column: 2, scope: !2212)
!2242 = !DILocation(line: 284, column: 7, scope: !2212)
!2243 = !DILocation(line: 284, column: 14, scope: !2212)
!2244 = !DILocation(line: 285, column: 28, scope: !2212)
!2245 = !DILocation(line: 285, column: 17, scope: !2212)
!2246 = !DILocation(line: 285, column: 2, scope: !2212)
!2247 = !DILocation(line: 285, column: 7, scope: !2212)
!2248 = !DILocation(line: 285, column: 15, scope: !2212)
!2249 = !DILocation(line: 287, column: 21, scope: !2212)
!2250 = !DILocation(line: 287, column: 26, scope: !2212)
!2251 = !DILocation(line: 287, column: 2, scope: !2212)
!2252 = !DILocation(line: 288, column: 20, scope: !2212)
!2253 = !DILocation(line: 288, column: 2, scope: !2212)
!2254 = !DILocation(line: 288, column: 7, scope: !2212)
!2255 = !DILocation(line: 288, column: 11, scope: !2212)
!2256 = !DILocation(line: 288, column: 18, scope: !2212)
!2257 = !DILocation(line: 289, column: 2, scope: !2212)
!2258 = !DILocation(line: 289, column: 7, scope: !2212)
!2259 = !DILocation(line: 289, column: 11, scope: !2212)
!2260 = !DILocation(line: 289, column: 15, scope: !2212)
!2261 = !DILocation(line: 290, column: 2, scope: !2212)
!2262 = !DILocation(line: 290, column: 7, scope: !2212)
!2263 = !DILocation(line: 290, column: 11, scope: !2212)
!2264 = !DILocation(line: 290, column: 16, scope: !2212)
!2265 = !DILocation(line: 291, column: 2, scope: !2212)
!2266 = !DILocation(line: 291, column: 7, scope: !2212)
!2267 = !DILocation(line: 291, column: 11, scope: !2212)
!2268 = !DILocation(line: 291, column: 19, scope: !2212)
!2269 = !DILocation(line: 293, column: 16, scope: !2212)
!2270 = !DILocation(line: 293, column: 21, scope: !2212)
!2271 = !DILocation(line: 293, column: 36, scope: !2212)
!2272 = !DILocation(line: 293, column: 2, scope: !2212)
!2273 = !DILocation(line: 294, column: 19, scope: !2212)
!2274 = !DILocation(line: 294, column: 24, scope: !2212)
!2275 = !DILocation(line: 294, column: 7, scope: !2212)
!2276 = !DILocation(line: 294, column: 5, scope: !2212)
!2277 = !DILocation(line: 295, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 295, column: 6)
!2279 = !DILocation(line: 295, column: 6, scope: !2212)
!2280 = !DILocation(line: 296, column: 3, scope: !2278)
!2281 = !DILocation(line: 298, column: 9, scope: !2212)
!2282 = !DILocation(line: 298, column: 2, scope: !2212)
!2283 = !DILabel(scope: !2212, name: "err_free", file: !3, line: 299)
!2284 = !DILocation(line: 299, column: 1, scope: !2212)
!2285 = !DILocation(line: 300, column: 13, scope: !2212)
!2286 = !DILocation(line: 300, column: 2, scope: !2212)
!2287 = !DILocation(line: 301, column: 8, scope: !2212)
!2288 = !DILocation(line: 301, column: 2, scope: !2212)
!2289 = !DILocation(line: 302, column: 17, scope: !2212)
!2290 = !DILocation(line: 302, column: 9, scope: !2212)
!2291 = !DILocation(line: 302, column: 2, scope: !2212)
!2292 = !DILocation(line: 303, column: 1, scope: !2212)
!2293 = distinct !DISubprogram(name: "kzalloc", scope: !56, file: !56, line: 662, type: !2294, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!65, !196, !63}
!2296 = !DILocalVariable(name: "s", arg: 1, scope: !2297, file: !56, line: 445, type: !1044)
!2297 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !56, file: !56, line: 445, type: !2298, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!65, !1044, !63, !196}
!2300 = !DILocation(line: 445, column: 72, scope: !2297, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 552, column: 10, scope: !2302, inlinedAt: !2305)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !56, line: 540, column: 34)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !56, line: 540, column: 6)
!2304 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 538, type: !2294, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2305 = distinct !DILocation(line: 664, column: 9, scope: !2293)
!2306 = !DILocalVariable(name: "flags", arg: 2, scope: !2297, file: !56, line: 446, type: !63)
!2307 = !DILocation(line: 446, column: 9, scope: !2297, inlinedAt: !2301)
!2308 = !DILocalVariable(name: "size", arg: 3, scope: !2297, file: !56, line: 446, type: !196)
!2309 = !DILocation(line: 446, column: 23, scope: !2297, inlinedAt: !2301)
!2310 = !DILocalVariable(name: "ret", scope: !2297, file: !56, line: 448, type: !65)
!2311 = !DILocation(line: 448, column: 8, scope: !2297, inlinedAt: !2301)
!2312 = !DILocalVariable(name: "flags", arg: 1, scope: !2313, file: !56, line: 318, type: !63)
!2313 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 318, type: !2314, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!55, !63}
!2316 = !DILocation(line: 318, column: 67, scope: !2313, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 553, column: 20, scope: !2302, inlinedAt: !2305)
!2318 = !DILocalVariable(name: "size", arg: 1, scope: !2319, file: !56, line: 346, type: !196)
!2319 = distinct !DISubprogram(name: "kmalloc_index", scope: !56, file: !56, line: 346, type: !2320, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!7, !196}
!2322 = !DILocation(line: 346, column: 58, scope: !2319, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 547, column: 11, scope: !2302, inlinedAt: !2305)
!2324 = !DILocalVariable(name: "size", arg: 1, scope: !2325, file: !56, line: 472, type: !196)
!2325 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !56, file: !56, line: 472, type: !2326, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!65, !196, !63, !7}
!2328 = !DILocation(line: 472, column: 28, scope: !2325, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 481, column: 9, scope: !2330, inlinedAt: !2331)
!2330 = distinct !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 478, type: !2294, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2331 = distinct !DILocation(line: 545, column: 11, scope: !2332, inlinedAt: !2305)
!2332 = distinct !DILexicalBlock(scope: !2302, file: !56, line: 544, column: 7)
!2333 = !DILocalVariable(name: "flags", arg: 2, scope: !2325, file: !56, line: 472, type: !63)
!2334 = !DILocation(line: 472, column: 40, scope: !2325, inlinedAt: !2329)
!2335 = !DILocalVariable(name: "order", arg: 3, scope: !2325, file: !56, line: 472, type: !7)
!2336 = !DILocation(line: 472, column: 60, scope: !2325, inlinedAt: !2329)
!2337 = !DILocalVariable(name: "size", arg: 1, scope: !2330, file: !56, line: 478, type: !196)
!2338 = !DILocation(line: 478, column: 51, scope: !2330, inlinedAt: !2331)
!2339 = !DILocalVariable(name: "flags", arg: 2, scope: !2330, file: !56, line: 478, type: !63)
!2340 = !DILocation(line: 478, column: 63, scope: !2330, inlinedAt: !2331)
!2341 = !DILocalVariable(name: "order", scope: !2330, file: !56, line: 480, type: !7)
!2342 = !DILocation(line: 480, column: 15, scope: !2330, inlinedAt: !2331)
!2343 = !DILocalVariable(name: "size", arg: 1, scope: !2304, file: !56, line: 538, type: !196)
!2344 = !DILocation(line: 538, column: 45, scope: !2304, inlinedAt: !2305)
!2345 = !DILocalVariable(name: "flags", arg: 2, scope: !2304, file: !56, line: 538, type: !63)
!2346 = !DILocation(line: 538, column: 57, scope: !2304, inlinedAt: !2305)
!2347 = !DILocalVariable(name: "index", scope: !2302, file: !56, line: 542, type: !7)
!2348 = !DILocation(line: 542, column: 16, scope: !2302, inlinedAt: !2305)
!2349 = !DILocalVariable(name: "size", arg: 1, scope: !2293, file: !56, line: 662, type: !196)
!2350 = !DILocation(line: 662, column: 36, scope: !2293)
!2351 = !DILocalVariable(name: "flags", arg: 2, scope: !2293, file: !56, line: 662, type: !63)
!2352 = !DILocation(line: 662, column: 48, scope: !2293)
!2353 = !DILocation(line: 664, column: 17, scope: !2293)
!2354 = !DILocation(line: 664, column: 23, scope: !2293)
!2355 = !DILocation(line: 664, column: 29, scope: !2293)
!2356 = !DILocation(line: 540, column: 27, scope: !2303, inlinedAt: !2305)
!2357 = !DILocation(line: 540, column: 6, scope: !2303, inlinedAt: !2305)
!2358 = !DILocation(line: 540, column: 6, scope: !2304, inlinedAt: !2305)
!2359 = !DILocation(line: 544, column: 7, scope: !2332, inlinedAt: !2305)
!2360 = !DILocation(line: 544, column: 12, scope: !2332, inlinedAt: !2305)
!2361 = !DILocation(line: 544, column: 7, scope: !2302, inlinedAt: !2305)
!2362 = !DILocation(line: 545, column: 25, scope: !2332, inlinedAt: !2305)
!2363 = !DILocation(line: 545, column: 31, scope: !2332, inlinedAt: !2305)
!2364 = !DILocation(line: 480, column: 33, scope: !2330, inlinedAt: !2331)
!2365 = !DILocation(line: 480, column: 23, scope: !2330, inlinedAt: !2331)
!2366 = !DILocation(line: 481, column: 29, scope: !2330, inlinedAt: !2331)
!2367 = !DILocation(line: 481, column: 35, scope: !2330, inlinedAt: !2331)
!2368 = !DILocation(line: 481, column: 42, scope: !2330, inlinedAt: !2331)
!2369 = !DILocation(line: 474, column: 23, scope: !2325, inlinedAt: !2329)
!2370 = !DILocation(line: 474, column: 29, scope: !2325, inlinedAt: !2329)
!2371 = !DILocation(line: 474, column: 36, scope: !2325, inlinedAt: !2329)
!2372 = !DILocation(line: 474, column: 9, scope: !2325, inlinedAt: !2329)
!2373 = !DILocation(line: 545, column: 4, scope: !2332, inlinedAt: !2305)
!2374 = !DILocation(line: 547, column: 25, scope: !2302, inlinedAt: !2305)
!2375 = !DILocation(line: 348, column: 7, scope: !2376, inlinedAt: !2323)
!2376 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 348, column: 6)
!2377 = !DILocation(line: 348, column: 6, scope: !2319, inlinedAt: !2323)
!2378 = !DILocation(line: 349, column: 3, scope: !2376, inlinedAt: !2323)
!2379 = !DILocation(line: 351, column: 6, scope: !2380, inlinedAt: !2323)
!2380 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 351, column: 6)
!2381 = !DILocation(line: 351, column: 11, scope: !2380, inlinedAt: !2323)
!2382 = !DILocation(line: 351, column: 6, scope: !2319, inlinedAt: !2323)
!2383 = !DILocation(line: 352, column: 3, scope: !2380, inlinedAt: !2323)
!2384 = !DILocation(line: 354, column: 32, scope: !2385, inlinedAt: !2323)
!2385 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 354, column: 6)
!2386 = !DILocation(line: 354, column: 37, scope: !2385, inlinedAt: !2323)
!2387 = !DILocation(line: 354, column: 42, scope: !2385, inlinedAt: !2323)
!2388 = !DILocation(line: 354, column: 45, scope: !2385, inlinedAt: !2323)
!2389 = !DILocation(line: 354, column: 50, scope: !2385, inlinedAt: !2323)
!2390 = !DILocation(line: 354, column: 6, scope: !2319, inlinedAt: !2323)
!2391 = !DILocation(line: 355, column: 3, scope: !2385, inlinedAt: !2323)
!2392 = !DILocation(line: 356, column: 32, scope: !2393, inlinedAt: !2323)
!2393 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 356, column: 6)
!2394 = !DILocation(line: 356, column: 37, scope: !2393, inlinedAt: !2323)
!2395 = !DILocation(line: 356, column: 43, scope: !2393, inlinedAt: !2323)
!2396 = !DILocation(line: 356, column: 46, scope: !2393, inlinedAt: !2323)
!2397 = !DILocation(line: 356, column: 51, scope: !2393, inlinedAt: !2323)
!2398 = !DILocation(line: 356, column: 6, scope: !2319, inlinedAt: !2323)
!2399 = !DILocation(line: 357, column: 3, scope: !2393, inlinedAt: !2323)
!2400 = !DILocation(line: 358, column: 6, scope: !2401, inlinedAt: !2323)
!2401 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 358, column: 6)
!2402 = !DILocation(line: 358, column: 11, scope: !2401, inlinedAt: !2323)
!2403 = !DILocation(line: 358, column: 6, scope: !2319, inlinedAt: !2323)
!2404 = !DILocation(line: 358, column: 26, scope: !2401, inlinedAt: !2323)
!2405 = !DILocation(line: 359, column: 6, scope: !2406, inlinedAt: !2323)
!2406 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 359, column: 6)
!2407 = !DILocation(line: 359, column: 11, scope: !2406, inlinedAt: !2323)
!2408 = !DILocation(line: 359, column: 6, scope: !2319, inlinedAt: !2323)
!2409 = !DILocation(line: 359, column: 26, scope: !2406, inlinedAt: !2323)
!2410 = !DILocation(line: 360, column: 6, scope: !2411, inlinedAt: !2323)
!2411 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 360, column: 6)
!2412 = !DILocation(line: 360, column: 11, scope: !2411, inlinedAt: !2323)
!2413 = !DILocation(line: 360, column: 6, scope: !2319, inlinedAt: !2323)
!2414 = !DILocation(line: 360, column: 26, scope: !2411, inlinedAt: !2323)
!2415 = !DILocation(line: 361, column: 6, scope: !2416, inlinedAt: !2323)
!2416 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 361, column: 6)
!2417 = !DILocation(line: 361, column: 11, scope: !2416, inlinedAt: !2323)
!2418 = !DILocation(line: 361, column: 6, scope: !2319, inlinedAt: !2323)
!2419 = !DILocation(line: 361, column: 26, scope: !2416, inlinedAt: !2323)
!2420 = !DILocation(line: 362, column: 6, scope: !2421, inlinedAt: !2323)
!2421 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 362, column: 6)
!2422 = !DILocation(line: 362, column: 11, scope: !2421, inlinedAt: !2323)
!2423 = !DILocation(line: 362, column: 6, scope: !2319, inlinedAt: !2323)
!2424 = !DILocation(line: 362, column: 26, scope: !2421, inlinedAt: !2323)
!2425 = !DILocation(line: 363, column: 6, scope: !2426, inlinedAt: !2323)
!2426 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 363, column: 6)
!2427 = !DILocation(line: 363, column: 11, scope: !2426, inlinedAt: !2323)
!2428 = !DILocation(line: 363, column: 6, scope: !2319, inlinedAt: !2323)
!2429 = !DILocation(line: 363, column: 26, scope: !2426, inlinedAt: !2323)
!2430 = !DILocation(line: 364, column: 6, scope: !2431, inlinedAt: !2323)
!2431 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 364, column: 6)
!2432 = !DILocation(line: 364, column: 11, scope: !2431, inlinedAt: !2323)
!2433 = !DILocation(line: 364, column: 6, scope: !2319, inlinedAt: !2323)
!2434 = !DILocation(line: 364, column: 26, scope: !2431, inlinedAt: !2323)
!2435 = !DILocation(line: 365, column: 6, scope: !2436, inlinedAt: !2323)
!2436 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 365, column: 6)
!2437 = !DILocation(line: 365, column: 11, scope: !2436, inlinedAt: !2323)
!2438 = !DILocation(line: 365, column: 6, scope: !2319, inlinedAt: !2323)
!2439 = !DILocation(line: 365, column: 26, scope: !2436, inlinedAt: !2323)
!2440 = !DILocation(line: 366, column: 6, scope: !2441, inlinedAt: !2323)
!2441 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 366, column: 6)
!2442 = !DILocation(line: 366, column: 11, scope: !2441, inlinedAt: !2323)
!2443 = !DILocation(line: 366, column: 6, scope: !2319, inlinedAt: !2323)
!2444 = !DILocation(line: 366, column: 26, scope: !2441, inlinedAt: !2323)
!2445 = !DILocation(line: 367, column: 6, scope: !2446, inlinedAt: !2323)
!2446 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 367, column: 6)
!2447 = !DILocation(line: 367, column: 11, scope: !2446, inlinedAt: !2323)
!2448 = !DILocation(line: 367, column: 6, scope: !2319, inlinedAt: !2323)
!2449 = !DILocation(line: 367, column: 26, scope: !2446, inlinedAt: !2323)
!2450 = !DILocation(line: 368, column: 6, scope: !2451, inlinedAt: !2323)
!2451 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 368, column: 6)
!2452 = !DILocation(line: 368, column: 11, scope: !2451, inlinedAt: !2323)
!2453 = !DILocation(line: 368, column: 6, scope: !2319, inlinedAt: !2323)
!2454 = !DILocation(line: 368, column: 26, scope: !2451, inlinedAt: !2323)
!2455 = !DILocation(line: 369, column: 6, scope: !2456, inlinedAt: !2323)
!2456 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 369, column: 6)
!2457 = !DILocation(line: 369, column: 11, scope: !2456, inlinedAt: !2323)
!2458 = !DILocation(line: 369, column: 6, scope: !2319, inlinedAt: !2323)
!2459 = !DILocation(line: 369, column: 26, scope: !2456, inlinedAt: !2323)
!2460 = !DILocation(line: 370, column: 6, scope: !2461, inlinedAt: !2323)
!2461 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 370, column: 6)
!2462 = !DILocation(line: 370, column: 11, scope: !2461, inlinedAt: !2323)
!2463 = !DILocation(line: 370, column: 6, scope: !2319, inlinedAt: !2323)
!2464 = !DILocation(line: 370, column: 26, scope: !2461, inlinedAt: !2323)
!2465 = !DILocation(line: 371, column: 6, scope: !2466, inlinedAt: !2323)
!2466 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 371, column: 6)
!2467 = !DILocation(line: 371, column: 11, scope: !2466, inlinedAt: !2323)
!2468 = !DILocation(line: 371, column: 6, scope: !2319, inlinedAt: !2323)
!2469 = !DILocation(line: 371, column: 26, scope: !2466, inlinedAt: !2323)
!2470 = !DILocation(line: 372, column: 6, scope: !2471, inlinedAt: !2323)
!2471 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 372, column: 6)
!2472 = !DILocation(line: 372, column: 11, scope: !2471, inlinedAt: !2323)
!2473 = !DILocation(line: 372, column: 6, scope: !2319, inlinedAt: !2323)
!2474 = !DILocation(line: 372, column: 26, scope: !2471, inlinedAt: !2323)
!2475 = !DILocation(line: 373, column: 6, scope: !2476, inlinedAt: !2323)
!2476 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 373, column: 6)
!2477 = !DILocation(line: 373, column: 11, scope: !2476, inlinedAt: !2323)
!2478 = !DILocation(line: 373, column: 6, scope: !2319, inlinedAt: !2323)
!2479 = !DILocation(line: 373, column: 26, scope: !2476, inlinedAt: !2323)
!2480 = !DILocation(line: 374, column: 6, scope: !2481, inlinedAt: !2323)
!2481 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 374, column: 6)
!2482 = !DILocation(line: 374, column: 11, scope: !2481, inlinedAt: !2323)
!2483 = !DILocation(line: 374, column: 6, scope: !2319, inlinedAt: !2323)
!2484 = !DILocation(line: 374, column: 26, scope: !2481, inlinedAt: !2323)
!2485 = !DILocation(line: 375, column: 6, scope: !2486, inlinedAt: !2323)
!2486 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 375, column: 6)
!2487 = !DILocation(line: 375, column: 11, scope: !2486, inlinedAt: !2323)
!2488 = !DILocation(line: 375, column: 6, scope: !2319, inlinedAt: !2323)
!2489 = !DILocation(line: 375, column: 27, scope: !2486, inlinedAt: !2323)
!2490 = !DILocation(line: 376, column: 6, scope: !2491, inlinedAt: !2323)
!2491 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 376, column: 6)
!2492 = !DILocation(line: 376, column: 11, scope: !2491, inlinedAt: !2323)
!2493 = !DILocation(line: 376, column: 6, scope: !2319, inlinedAt: !2323)
!2494 = !DILocation(line: 376, column: 32, scope: !2491, inlinedAt: !2323)
!2495 = !DILocation(line: 377, column: 6, scope: !2496, inlinedAt: !2323)
!2496 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 377, column: 6)
!2497 = !DILocation(line: 377, column: 11, scope: !2496, inlinedAt: !2323)
!2498 = !DILocation(line: 377, column: 6, scope: !2319, inlinedAt: !2323)
!2499 = !DILocation(line: 377, column: 32, scope: !2496, inlinedAt: !2323)
!2500 = !DILocation(line: 378, column: 6, scope: !2501, inlinedAt: !2323)
!2501 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 378, column: 6)
!2502 = !DILocation(line: 378, column: 11, scope: !2501, inlinedAt: !2323)
!2503 = !DILocation(line: 378, column: 6, scope: !2319, inlinedAt: !2323)
!2504 = !DILocation(line: 378, column: 32, scope: !2501, inlinedAt: !2323)
!2505 = !DILocation(line: 379, column: 6, scope: !2506, inlinedAt: !2323)
!2506 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 379, column: 6)
!2507 = !DILocation(line: 379, column: 11, scope: !2506, inlinedAt: !2323)
!2508 = !DILocation(line: 379, column: 6, scope: !2319, inlinedAt: !2323)
!2509 = !DILocation(line: 379, column: 33, scope: !2506, inlinedAt: !2323)
!2510 = !DILocation(line: 380, column: 6, scope: !2511, inlinedAt: !2323)
!2511 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 380, column: 6)
!2512 = !DILocation(line: 380, column: 11, scope: !2511, inlinedAt: !2323)
!2513 = !DILocation(line: 380, column: 6, scope: !2319, inlinedAt: !2323)
!2514 = !DILocation(line: 380, column: 33, scope: !2511, inlinedAt: !2323)
!2515 = !DILocation(line: 381, column: 6, scope: !2516, inlinedAt: !2323)
!2516 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 381, column: 6)
!2517 = !DILocation(line: 381, column: 11, scope: !2516, inlinedAt: !2323)
!2518 = !DILocation(line: 381, column: 6, scope: !2319, inlinedAt: !2323)
!2519 = !DILocation(line: 381, column: 33, scope: !2516, inlinedAt: !2323)
!2520 = !DILocation(line: 382, column: 2, scope: !2521, inlinedAt: !2323)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !56, line: 382, column: 2)
!2522 = distinct !DILexicalBlock(scope: !2319, file: !56, line: 382, column: 2)
!2523 = !{i32 -2144236660, i32 -2144236631, i32 -2144236585, i32 -2144236527, i32 -2144236473, i32 -2144236419, i32 -2144236364, i32 -2144236333}
!2524 = !DILocation(line: 382, column: 2, scope: !2525, inlinedAt: !2323)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !56, line: 382, column: 2)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !56, line: 382, column: 2)
!2527 = !{i32 -2144235890, i32 -2144235883, i32 -2144235829, i32 -2144235798, i32 -2144235768}
!2528 = !DILocation(line: 382, column: 2, scope: !2526, inlinedAt: !2323)
!2529 = !DILocation(line: 386, column: 1, scope: !2319, inlinedAt: !2323)
!2530 = !DILocation(line: 547, column: 9, scope: !2302, inlinedAt: !2305)
!2531 = !DILocation(line: 549, column: 8, scope: !2532, inlinedAt: !2305)
!2532 = distinct !DILexicalBlock(scope: !2302, file: !56, line: 549, column: 7)
!2533 = !DILocation(line: 549, column: 7, scope: !2302, inlinedAt: !2305)
!2534 = !DILocation(line: 550, column: 4, scope: !2532, inlinedAt: !2305)
!2535 = !DILocation(line: 553, column: 33, scope: !2302, inlinedAt: !2305)
!2536 = !DILocation(line: 325, column: 6, scope: !2537, inlinedAt: !2317)
!2537 = distinct !DILexicalBlock(scope: !2313, file: !56, line: 325, column: 6)
!2538 = !DILocation(line: 325, column: 6, scope: !2313, inlinedAt: !2317)
!2539 = !DILocation(line: 326, column: 3, scope: !2537, inlinedAt: !2317)
!2540 = !DILocation(line: 332, column: 9, scope: !2313, inlinedAt: !2317)
!2541 = !DILocation(line: 332, column: 15, scope: !2313, inlinedAt: !2317)
!2542 = !DILocation(line: 332, column: 2, scope: !2313, inlinedAt: !2317)
!2543 = !DILocation(line: 336, column: 1, scope: !2313, inlinedAt: !2317)
!2544 = !DILocation(line: 553, column: 5, scope: !2302, inlinedAt: !2305)
!2545 = !DILocation(line: 553, column: 41, scope: !2302, inlinedAt: !2305)
!2546 = !DILocation(line: 554, column: 5, scope: !2302, inlinedAt: !2305)
!2547 = !DILocation(line: 554, column: 12, scope: !2302, inlinedAt: !2305)
!2548 = !DILocation(line: 448, column: 31, scope: !2297, inlinedAt: !2301)
!2549 = !DILocation(line: 448, column: 34, scope: !2297, inlinedAt: !2301)
!2550 = !DILocation(line: 448, column: 14, scope: !2297, inlinedAt: !2301)
!2551 = !DILocation(line: 450, column: 22, scope: !2297, inlinedAt: !2301)
!2552 = !DILocation(line: 450, column: 25, scope: !2297, inlinedAt: !2301)
!2553 = !DILocation(line: 450, column: 30, scope: !2297, inlinedAt: !2301)
!2554 = !DILocation(line: 450, column: 36, scope: !2297, inlinedAt: !2301)
!2555 = !DILocation(line: 450, column: 8, scope: !2297, inlinedAt: !2301)
!2556 = !DILocation(line: 450, column: 6, scope: !2297, inlinedAt: !2301)
!2557 = !DILocation(line: 451, column: 9, scope: !2297, inlinedAt: !2301)
!2558 = !DILocation(line: 552, column: 3, scope: !2302, inlinedAt: !2305)
!2559 = !DILocation(line: 557, column: 19, scope: !2304, inlinedAt: !2305)
!2560 = !DILocation(line: 557, column: 25, scope: !2304, inlinedAt: !2305)
!2561 = !DILocation(line: 557, column: 9, scope: !2304, inlinedAt: !2305)
!2562 = !DILocation(line: 557, column: 2, scope: !2304, inlinedAt: !2305)
!2563 = !DILocation(line: 558, column: 1, scope: !2304, inlinedAt: !2305)
!2564 = !DILocation(line: 664, column: 2, scope: !2293)
!2565 = distinct !DISubprogram(name: "ERR_PTR", scope: !2566, file: !2566, line: 24, type: !2567, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2566 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!65, !184}
!2569 = !DILocalVariable(name: "error", arg: 1, scope: !2565, file: !2566, line: 24, type: !184)
!2570 = !DILocation(line: 24, column: 48, scope: !2565)
!2571 = !DILocation(line: 26, column: 18, scope: !2565)
!2572 = !DILocation(line: 26, column: 9, scope: !2565)
!2573 = !DILocation(line: 26, column: 2, scope: !2565)
!2574 = distinct !DISubprogram(name: "mcb_free_bus", scope: !3, file: !3, line: 254, type: !1605, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2575 = !DILocalVariable(name: "dev", arg: 1, scope: !2574, file: !3, line: 254, type: !85)
!2576 = !DILocation(line: 254, column: 41, scope: !2574)
!2577 = !DILocalVariable(name: "bus", scope: !2574, file: !3, line: 256, type: !1954)
!2578 = !DILocation(line: 256, column: 18, scope: !2574)
!2579 = !DILocation(line: 256, column: 35, scope: !2574)
!2580 = !DILocation(line: 256, column: 24, scope: !2574)
!2581 = !DILocation(line: 258, column: 13, scope: !2574)
!2582 = !DILocation(line: 258, column: 18, scope: !2574)
!2583 = !DILocation(line: 258, column: 2, scope: !2574)
!2584 = !DILocation(line: 259, column: 2, scope: !2574)
!2585 = !DILocation(line: 260, column: 8, scope: !2574)
!2586 = !DILocation(line: 260, column: 2, scope: !2574)
!2587 = !DILocation(line: 261, column: 1, scope: !2574)
!2588 = distinct !DISubprogram(name: "mcb_release_bus", scope: !3, file: !3, line: 322, type: !2589, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !1954}
!2591 = !DILocalVariable(name: "bus", arg: 1, scope: !2588, file: !3, line: 322, type: !1954)
!2592 = !DILocation(line: 322, column: 38, scope: !2588)
!2593 = !DILocation(line: 324, column: 25, scope: !2588)
!2594 = !DILocation(line: 324, column: 2, scope: !2588)
!2595 = !DILocation(line: 325, column: 1, scope: !2588)
!2596 = distinct !DISubprogram(name: "mcb_devices_unregister", scope: !3, file: !3, line: 312, type: !2589, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2597 = !DILocalVariable(name: "bus", arg: 1, scope: !2596, file: !3, line: 312, type: !1954)
!2598 = !DILocation(line: 312, column: 52, scope: !2596)
!2599 = !DILocation(line: 314, column: 2, scope: !2596)
!2600 = !DILocation(line: 315, column: 1, scope: !2596)
!2601 = distinct !DISubprogram(name: "mcb_bus_put", scope: !3, file: !3, line: 349, type: !2589, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2602 = !DILocalVariable(name: "bus", arg: 1, scope: !2601, file: !3, line: 349, type: !1954)
!2603 = !DILocation(line: 349, column: 34, scope: !2601)
!2604 = !DILocation(line: 351, column: 6, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 351, column: 6)
!2606 = !DILocation(line: 351, column: 6, scope: !2601)
!2607 = !DILocation(line: 352, column: 15, scope: !2605)
!2608 = !DILocation(line: 352, column: 20, scope: !2605)
!2609 = !DILocation(line: 352, column: 3, scope: !2605)
!2610 = !DILocation(line: 353, column: 1, scope: !2601)
!2611 = distinct !DISubprogram(name: "mcb_alloc_dev", scope: !3, file: !3, line: 362, type: !2612, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!1949, !1954}
!2614 = !DILocalVariable(name: "bus", arg: 1, scope: !2611, file: !3, line: 362, type: !1954)
!2615 = !DILocation(line: 362, column: 50, scope: !2611)
!2616 = !DILocalVariable(name: "dev", scope: !2611, file: !3, line: 364, type: !1949)
!2617 = !DILocation(line: 364, column: 21, scope: !2611)
!2618 = !DILocation(line: 366, column: 8, scope: !2611)
!2619 = !DILocation(line: 366, column: 6, scope: !2611)
!2620 = !DILocation(line: 367, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 367, column: 6)
!2622 = !DILocation(line: 367, column: 6, scope: !2611)
!2623 = !DILocation(line: 368, column: 3, scope: !2621)
!2624 = !DILocation(line: 370, column: 13, scope: !2611)
!2625 = !DILocation(line: 370, column: 2, scope: !2611)
!2626 = !DILocation(line: 370, column: 7, scope: !2611)
!2627 = !DILocation(line: 370, column: 11, scope: !2611)
!2628 = !DILocation(line: 372, column: 9, scope: !2611)
!2629 = !DILocation(line: 372, column: 2, scope: !2611)
!2630 = !DILocation(line: 373, column: 1, scope: !2611)
!2631 = distinct !DISubprogram(name: "mcb_free_dev", scope: !3, file: !3, line: 382, type: !1998, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2632 = !DILocalVariable(name: "dev", arg: 1, scope: !2631, file: !3, line: 382, type: !1949)
!2633 = !DILocation(line: 382, column: 38, scope: !2631)
!2634 = !DILocation(line: 384, column: 8, scope: !2631)
!2635 = !DILocation(line: 384, column: 2, scope: !2631)
!2636 = !DILocation(line: 385, column: 1, scope: !2631)
!2637 = distinct !DISubprogram(name: "mcb_bus_add_devices", scope: !3, file: !3, line: 411, type: !2638, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2640}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1955)
!2642 = !DILocalVariable(name: "bus", arg: 1, scope: !2637, file: !3, line: 411, type: !2640)
!2643 = !DILocation(line: 411, column: 48, scope: !2637)
!2644 = !DILocation(line: 413, column: 2, scope: !2637)
!2645 = !DILocation(line: 414, column: 1, scope: !2637)
!2646 = distinct !DISubprogram(name: "__mcb_bus_add_devices", scope: !3, file: !3, line: 388, type: !2647, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!133, !85, !65}
!2649 = !DILocalVariable(name: "dev", arg: 1, scope: !2646, file: !3, line: 388, type: !85)
!2650 = !DILocation(line: 388, column: 49, scope: !2646)
!2651 = !DILocalVariable(name: "data", arg: 2, scope: !2646, file: !3, line: 388, type: !65)
!2652 = !DILocation(line: 388, column: 60, scope: !2646)
!2653 = !DILocalVariable(name: "mdev", scope: !2646, file: !3, line: 390, type: !1949)
!2654 = !DILocation(line: 390, column: 21, scope: !2646)
!2655 = !DILocation(line: 390, column: 42, scope: !2646)
!2656 = !DILocation(line: 390, column: 28, scope: !2646)
!2657 = !DILocalVariable(name: "retval", scope: !2646, file: !3, line: 391, type: !133)
!2658 = !DILocation(line: 391, column: 6, scope: !2646)
!2659 = !DILocation(line: 393, column: 6, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 393, column: 6)
!2661 = !DILocation(line: 393, column: 12, scope: !2660)
!2662 = !DILocation(line: 393, column: 6, scope: !2646)
!2663 = !DILocation(line: 394, column: 3, scope: !2660)
!2664 = !DILocation(line: 396, column: 25, scope: !2646)
!2665 = !DILocation(line: 396, column: 11, scope: !2646)
!2666 = !DILocation(line: 396, column: 9, scope: !2646)
!2667 = !DILocation(line: 397, column: 6, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 397, column: 6)
!2669 = !DILocation(line: 397, column: 13, scope: !2668)
!2670 = !DILocation(line: 397, column: 6, scope: !2646)
!2671 = !DILocation(line: 398, column: 3, scope: !2668)
!2672 = !DILocation(line: 400, column: 2, scope: !2646)
!2673 = !DILocation(line: 400, column: 8, scope: !2646)
!2674 = !DILocation(line: 400, column: 17, scope: !2646)
!2675 = !DILocation(line: 402, column: 2, scope: !2646)
!2676 = !DILocation(line: 403, column: 1, scope: !2646)
!2677 = distinct !DISubprogram(name: "mcb_get_resource", scope: !3, file: !3, line: 422, type: !2678, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!1991, !1949, !7}
!2680 = !DILocalVariable(name: "dev", arg: 1, scope: !2677, file: !3, line: 422, type: !1949)
!2681 = !DILocation(line: 422, column: 54, scope: !2677)
!2682 = !DILocalVariable(name: "type", arg: 2, scope: !2677, file: !3, line: 422, type: !7)
!2683 = !DILocation(line: 422, column: 72, scope: !2677)
!2684 = !DILocation(line: 424, column: 6, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 424, column: 6)
!2686 = !DILocation(line: 424, column: 11, scope: !2685)
!2687 = !DILocation(line: 424, column: 6, scope: !2677)
!2688 = !DILocation(line: 425, column: 11, scope: !2685)
!2689 = !DILocation(line: 425, column: 16, scope: !2685)
!2690 = !DILocation(line: 425, column: 3, scope: !2685)
!2691 = !DILocation(line: 426, column: 11, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 426, column: 11)
!2693 = !DILocation(line: 426, column: 16, scope: !2692)
!2694 = !DILocation(line: 426, column: 11, scope: !2685)
!2695 = !DILocation(line: 427, column: 11, scope: !2692)
!2696 = !DILocation(line: 427, column: 16, scope: !2692)
!2697 = !DILocation(line: 427, column: 3, scope: !2692)
!2698 = !DILocation(line: 429, column: 3, scope: !2692)
!2699 = !DILocation(line: 430, column: 1, scope: !2677)
!2700 = distinct !DISubprogram(name: "mcb_request_mem", scope: !3, file: !3, line: 441, type: !2701, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!1991, !1949, !74}
!2703 = !DILocalVariable(name: "dev", arg: 1, scope: !2700, file: !3, line: 441, type: !1949)
!2704 = !DILocation(line: 441, column: 53, scope: !2700)
!2705 = !DILocalVariable(name: "name", arg: 2, scope: !2700, file: !3, line: 441, type: !74)
!2706 = !DILocation(line: 441, column: 70, scope: !2700)
!2707 = !DILocalVariable(name: "mem", scope: !2700, file: !3, line: 443, type: !1991)
!2708 = !DILocation(line: 443, column: 19, scope: !2700)
!2709 = !DILocalVariable(name: "size", scope: !2700, file: !3, line: 444, type: !422)
!2710 = !DILocation(line: 444, column: 6, scope: !2700)
!2711 = !DILocation(line: 446, column: 7, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 446, column: 6)
!2713 = !DILocation(line: 446, column: 6, scope: !2700)
!2714 = !DILocation(line: 447, column: 10, scope: !2712)
!2715 = !DILocation(line: 447, column: 15, scope: !2712)
!2716 = !DILocation(line: 447, column: 19, scope: !2712)
!2717 = !DILocation(line: 447, column: 27, scope: !2712)
!2718 = !DILocation(line: 447, column: 8, scope: !2712)
!2719 = !DILocation(line: 447, column: 3, scope: !2712)
!2720 = !DILocation(line: 449, column: 24, scope: !2700)
!2721 = !DILocation(line: 449, column: 29, scope: !2700)
!2722 = !DILocation(line: 449, column: 9, scope: !2700)
!2723 = !DILocation(line: 449, column: 7, scope: !2700)
!2724 = !DILocation(line: 451, column: 8, scope: !2700)
!2725 = !DILocation(line: 451, column: 6, scope: !2700)
!2726 = !DILocation(line: 452, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 452, column: 6)
!2728 = !DILocation(line: 452, column: 6, scope: !2700)
!2729 = !DILocation(line: 453, column: 10, scope: !2727)
!2730 = !DILocation(line: 453, column: 3, scope: !2727)
!2731 = !DILocation(line: 455, column: 9, scope: !2700)
!2732 = !DILocation(line: 455, column: 2, scope: !2700)
!2733 = !DILocation(line: 456, column: 1, scope: !2700)
!2734 = distinct !DISubprogram(name: "resource_size", scope: !1981, file: !1981, line: 210, type: !2735, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!1984, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1980)
!2739 = !DILocalVariable(name: "res", arg: 1, scope: !2734, file: !1981, line: 210, type: !2737)
!2740 = !DILocation(line: 210, column: 68, scope: !2734)
!2741 = !DILocation(line: 212, column: 9, scope: !2734)
!2742 = !DILocation(line: 212, column: 14, scope: !2734)
!2743 = !DILocation(line: 212, column: 20, scope: !2734)
!2744 = !DILocation(line: 212, column: 25, scope: !2734)
!2745 = !DILocation(line: 212, column: 18, scope: !2734)
!2746 = !DILocation(line: 212, column: 31, scope: !2734)
!2747 = !DILocation(line: 212, column: 2, scope: !2734)
!2748 = distinct !DISubprogram(name: "mcb_release_mem", scope: !3, file: !3, line: 465, type: !2749, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !1991}
!2751 = !DILocalVariable(name: "mem", arg: 1, scope: !2748, file: !3, line: 465, type: !1991)
!2752 = !DILocation(line: 465, column: 39, scope: !2748)
!2753 = !DILocalVariable(name: "size", scope: !2748, file: !3, line: 467, type: !422)
!2754 = !DILocation(line: 467, column: 6, scope: !2748)
!2755 = !DILocation(line: 469, column: 23, scope: !2748)
!2756 = !DILocation(line: 469, column: 9, scope: !2748)
!2757 = !DILocation(line: 469, column: 7, scope: !2748)
!2758 = !DILocation(line: 470, column: 2, scope: !2748)
!2759 = !DILocation(line: 471, column: 1, scope: !2748)
!2760 = distinct !DISubprogram(name: "mcb_get_irq", scope: !3, file: !3, line: 489, type: !1969, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2761 = !DILocalVariable(name: "dev", arg: 1, scope: !2760, file: !3, line: 489, type: !1949)
!2762 = !DILocation(line: 489, column: 36, scope: !2760)
!2763 = !DILocalVariable(name: "bus", scope: !2760, file: !3, line: 491, type: !1954)
!2764 = !DILocation(line: 491, column: 18, scope: !2760)
!2765 = !DILocation(line: 491, column: 24, scope: !2760)
!2766 = !DILocation(line: 491, column: 29, scope: !2760)
!2767 = !DILocation(line: 493, column: 6, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 493, column: 6)
!2769 = !DILocation(line: 493, column: 11, scope: !2768)
!2770 = !DILocation(line: 493, column: 6, scope: !2760)
!2771 = !DILocation(line: 494, column: 10, scope: !2768)
!2772 = !DILocation(line: 494, column: 15, scope: !2768)
!2773 = !DILocation(line: 494, column: 23, scope: !2768)
!2774 = !DILocation(line: 494, column: 3, scope: !2768)
!2775 = !DILocation(line: 496, column: 23, scope: !2760)
!2776 = !DILocation(line: 496, column: 9, scope: !2760)
!2777 = !DILocation(line: 496, column: 2, scope: !2760)
!2778 = !DILocation(line: 497, column: 1, scope: !2760)
!2779 = distinct !DISubprogram(name: "__mcb_get_irq", scope: !3, file: !3, line: 474, type: !1969, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2780 = !DILocalVariable(name: "dev", arg: 1, scope: !2779, file: !3, line: 474, type: !1949)
!2781 = !DILocation(line: 474, column: 45, scope: !2779)
!2782 = !DILocalVariable(name: "irq", scope: !2779, file: !3, line: 476, type: !1991)
!2783 = !DILocation(line: 476, column: 19, scope: !2779)
!2784 = !DILocation(line: 478, column: 25, scope: !2779)
!2785 = !DILocation(line: 478, column: 8, scope: !2779)
!2786 = !DILocation(line: 478, column: 6, scope: !2779)
!2787 = !DILocation(line: 480, column: 9, scope: !2779)
!2788 = !DILocation(line: 480, column: 14, scope: !2779)
!2789 = !DILocation(line: 480, column: 2, scope: !2779)
!2790 = distinct !DISubprogram(name: "mcb_init", scope: !3, file: !3, line: 500, type: !2791, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!133}
!2793 = !DILocation(line: 502, column: 9, scope: !2790)
!2794 = !DILocation(line: 502, column: 2, scope: !2790)
!2795 = distinct !DISubprogram(name: "mcb_exit", scope: !3, file: !3, line: 505, type: !2009, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2796 = !DILocation(line: 507, column: 2, scope: !2795)
!2797 = !DILocation(line: 508, column: 2, scope: !2795)
!2798 = !DILocation(line: 509, column: 1, scope: !2795)
!2799 = distinct !DISubprogram(name: "mcb_match", scope: !3, file: !3, line: 31, type: !1868, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2800 = !DILocalVariable(name: "dev", arg: 1, scope: !2799, file: !3, line: 31, type: !85)
!2801 = !DILocation(line: 31, column: 37, scope: !2799)
!2802 = !DILocalVariable(name: "drv", arg: 2, scope: !2799, file: !3, line: 31, type: !1640)
!2803 = !DILocation(line: 31, column: 64, scope: !2799)
!2804 = !DILocalVariable(name: "mdrv", scope: !2799, file: !3, line: 33, type: !66)
!2805 = !DILocation(line: 33, column: 21, scope: !2799)
!2806 = !DILocation(line: 33, column: 42, scope: !2799)
!2807 = !DILocation(line: 33, column: 28, scope: !2799)
!2808 = !DILocalVariable(name: "mdev", scope: !2799, file: !3, line: 34, type: !1949)
!2809 = !DILocation(line: 34, column: 21, scope: !2799)
!2810 = !DILocation(line: 34, column: 42, scope: !2799)
!2811 = !DILocation(line: 34, column: 28, scope: !2799)
!2812 = !DILocalVariable(name: "found_id", scope: !2799, file: !3, line: 35, type: !1939)
!2813 = !DILocation(line: 35, column: 30, scope: !2799)
!2814 = !DILocation(line: 37, column: 26, scope: !2799)
!2815 = !DILocation(line: 37, column: 32, scope: !2799)
!2816 = !DILocation(line: 37, column: 42, scope: !2799)
!2817 = !DILocation(line: 37, column: 13, scope: !2799)
!2818 = !DILocation(line: 37, column: 11, scope: !2799)
!2819 = !DILocation(line: 38, column: 6, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 38, column: 6)
!2821 = !DILocation(line: 38, column: 6, scope: !2799)
!2822 = !DILocation(line: 39, column: 3, scope: !2820)
!2823 = !DILocation(line: 41, column: 2, scope: !2799)
!2824 = !DILocation(line: 42, column: 1, scope: !2799)
!2825 = distinct !DISubprogram(name: "mcb_uevent", scope: !3, file: !3, line: 44, type: !1596, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2826 = !DILocalVariable(name: "dev", arg: 1, scope: !2825, file: !3, line: 44, type: !85)
!2827 = !DILocation(line: 44, column: 38, scope: !2825)
!2828 = !DILocalVariable(name: "env", arg: 2, scope: !2825, file: !3, line: 44, type: !144)
!2829 = !DILocation(line: 44, column: 67, scope: !2825)
!2830 = !DILocalVariable(name: "mdev", scope: !2825, file: !3, line: 46, type: !1949)
!2831 = !DILocation(line: 46, column: 21, scope: !2825)
!2832 = !DILocation(line: 46, column: 42, scope: !2825)
!2833 = !DILocation(line: 46, column: 28, scope: !2825)
!2834 = !DILocalVariable(name: "ret", scope: !2825, file: !3, line: 47, type: !133)
!2835 = !DILocation(line: 47, column: 6, scope: !2825)
!2836 = !DILocation(line: 49, column: 23, scope: !2825)
!2837 = !DILocation(line: 49, column: 52, scope: !2825)
!2838 = !DILocation(line: 49, column: 58, scope: !2825)
!2839 = !DILocation(line: 49, column: 8, scope: !2825)
!2840 = !DILocation(line: 49, column: 6, scope: !2825)
!2841 = !DILocation(line: 50, column: 6, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 50, column: 6)
!2843 = !DILocation(line: 50, column: 6, scope: !2825)
!2844 = !DILocation(line: 51, column: 3, scope: !2842)
!2845 = !DILocation(line: 53, column: 2, scope: !2825)
!2846 = !DILocation(line: 54, column: 1, scope: !2825)
!2847 = distinct !DISubprogram(name: "mcb_probe", scope: !3, file: !3, line: 56, type: !1614, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2848 = !DILocalVariable(name: "dev", arg: 1, scope: !2847, file: !3, line: 56, type: !85)
!2849 = !DILocation(line: 56, column: 37, scope: !2847)
!2850 = !DILocalVariable(name: "mdrv", scope: !2847, file: !3, line: 58, type: !66)
!2851 = !DILocation(line: 58, column: 21, scope: !2847)
!2852 = !DILocation(line: 58, column: 42, scope: !2847)
!2853 = !DILocation(line: 58, column: 47, scope: !2847)
!2854 = !DILocation(line: 58, column: 28, scope: !2847)
!2855 = !DILocalVariable(name: "mdev", scope: !2847, file: !3, line: 59, type: !1949)
!2856 = !DILocation(line: 59, column: 21, scope: !2847)
!2857 = !DILocation(line: 59, column: 42, scope: !2847)
!2858 = !DILocation(line: 59, column: 28, scope: !2847)
!2859 = !DILocalVariable(name: "found_id", scope: !2847, file: !3, line: 60, type: !1939)
!2860 = !DILocation(line: 60, column: 30, scope: !2847)
!2861 = !DILocalVariable(name: "carrier_mod", scope: !2847, file: !3, line: 61, type: !1821)
!2862 = !DILocation(line: 61, column: 17, scope: !2847)
!2863 = !DILocalVariable(name: "ret", scope: !2847, file: !3, line: 62, type: !133)
!2864 = !DILocation(line: 62, column: 6, scope: !2847)
!2865 = !DILocation(line: 64, column: 26, scope: !2847)
!2866 = !DILocation(line: 64, column: 32, scope: !2847)
!2867 = !DILocation(line: 64, column: 42, scope: !2847)
!2868 = !DILocation(line: 64, column: 13, scope: !2847)
!2869 = !DILocation(line: 64, column: 11, scope: !2847)
!2870 = !DILocation(line: 65, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 65, column: 6)
!2872 = !DILocation(line: 65, column: 6, scope: !2847)
!2873 = !DILocation(line: 66, column: 3, scope: !2871)
!2874 = !DILocation(line: 68, column: 16, scope: !2847)
!2875 = !DILocation(line: 68, column: 22, scope: !2847)
!2876 = !DILocation(line: 68, column: 26, scope: !2847)
!2877 = !DILocation(line: 68, column: 34, scope: !2847)
!2878 = !DILocation(line: 68, column: 42, scope: !2847)
!2879 = !DILocation(line: 68, column: 14, scope: !2847)
!2880 = !DILocation(line: 69, column: 22, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 69, column: 6)
!2882 = !DILocation(line: 69, column: 7, scope: !2881)
!2883 = !DILocation(line: 69, column: 6, scope: !2847)
!2884 = !DILocation(line: 70, column: 3, scope: !2881)
!2885 = !DILocation(line: 72, column: 13, scope: !2847)
!2886 = !DILocation(line: 72, column: 2, scope: !2847)
!2887 = !DILocation(line: 73, column: 8, scope: !2847)
!2888 = !DILocation(line: 73, column: 14, scope: !2847)
!2889 = !DILocation(line: 73, column: 20, scope: !2847)
!2890 = !DILocation(line: 73, column: 26, scope: !2847)
!2891 = !DILocation(line: 73, column: 6, scope: !2847)
!2892 = !DILocation(line: 74, column: 6, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 74, column: 6)
!2894 = !DILocation(line: 74, column: 6, scope: !2847)
!2895 = !DILocation(line: 75, column: 14, scope: !2893)
!2896 = !DILocation(line: 75, column: 3, scope: !2893)
!2897 = !DILocation(line: 77, column: 9, scope: !2847)
!2898 = !DILocation(line: 77, column: 2, scope: !2847)
!2899 = !DILocation(line: 78, column: 1, scope: !2847)
!2900 = distinct !DISubprogram(name: "mcb_remove", scope: !3, file: !3, line: 80, type: !1614, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2901 = !DILocalVariable(name: "dev", arg: 1, scope: !2900, file: !3, line: 80, type: !85)
!2902 = !DILocation(line: 80, column: 38, scope: !2900)
!2903 = !DILocalVariable(name: "mdrv", scope: !2900, file: !3, line: 82, type: !66)
!2904 = !DILocation(line: 82, column: 21, scope: !2900)
!2905 = !DILocation(line: 82, column: 42, scope: !2900)
!2906 = !DILocation(line: 82, column: 47, scope: !2900)
!2907 = !DILocation(line: 82, column: 28, scope: !2900)
!2908 = !DILocalVariable(name: "mdev", scope: !2900, file: !3, line: 83, type: !1949)
!2909 = !DILocation(line: 83, column: 21, scope: !2900)
!2910 = !DILocation(line: 83, column: 42, scope: !2900)
!2911 = !DILocation(line: 83, column: 28, scope: !2900)
!2912 = !DILocalVariable(name: "carrier_mod", scope: !2900, file: !3, line: 84, type: !1821)
!2913 = !DILocation(line: 84, column: 17, scope: !2900)
!2914 = !DILocation(line: 86, column: 2, scope: !2900)
!2915 = !DILocation(line: 86, column: 8, scope: !2900)
!2916 = !DILocation(line: 86, column: 15, scope: !2900)
!2917 = !DILocation(line: 88, column: 16, scope: !2900)
!2918 = !DILocation(line: 88, column: 22, scope: !2900)
!2919 = !DILocation(line: 88, column: 26, scope: !2900)
!2920 = !DILocation(line: 88, column: 34, scope: !2900)
!2921 = !DILocation(line: 88, column: 42, scope: !2900)
!2922 = !DILocation(line: 88, column: 14, scope: !2900)
!2923 = !DILocation(line: 89, column: 13, scope: !2900)
!2924 = !DILocation(line: 89, column: 2, scope: !2900)
!2925 = !DILocation(line: 91, column: 14, scope: !2900)
!2926 = !DILocation(line: 91, column: 20, scope: !2900)
!2927 = !DILocation(line: 91, column: 2, scope: !2900)
!2928 = !DILocation(line: 93, column: 2, scope: !2900)
!2929 = distinct !DISubprogram(name: "mcb_shutdown", scope: !3, file: !3, line: 96, type: !1605, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2930 = !DILocalVariable(name: "dev", arg: 1, scope: !2929, file: !3, line: 96, type: !85)
!2931 = !DILocation(line: 96, column: 41, scope: !2929)
!2932 = !DILocalVariable(name: "mdrv", scope: !2929, file: !3, line: 98, type: !66)
!2933 = !DILocation(line: 98, column: 21, scope: !2929)
!2934 = !DILocation(line: 98, column: 42, scope: !2929)
!2935 = !DILocation(line: 98, column: 47, scope: !2929)
!2936 = !DILocation(line: 98, column: 28, scope: !2929)
!2937 = !DILocalVariable(name: "mdev", scope: !2929, file: !3, line: 99, type: !1949)
!2938 = !DILocation(line: 99, column: 21, scope: !2929)
!2939 = !DILocation(line: 99, column: 42, scope: !2929)
!2940 = !DILocation(line: 99, column: 28, scope: !2929)
!2941 = !DILocation(line: 101, column: 6, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 101, column: 6)
!2943 = !DILocation(line: 101, column: 11, scope: !2942)
!2944 = !DILocation(line: 101, column: 14, scope: !2942)
!2945 = !DILocation(line: 101, column: 20, scope: !2942)
!2946 = !DILocation(line: 101, column: 6, scope: !2929)
!2947 = !DILocation(line: 102, column: 3, scope: !2942)
!2948 = !DILocation(line: 102, column: 9, scope: !2942)
!2949 = !DILocation(line: 102, column: 18, scope: !2942)
!2950 = !DILocation(line: 103, column: 1, scope: !2929)
!2951 = distinct !DISubprogram(name: "to_mcb_driver", scope: !68, file: !68, line: 101, type: !2952, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!66, !1640}
!2954 = !DILocalVariable(name: "drv", arg: 1, scope: !2951, file: !68, line: 101, type: !1640)
!2955 = !DILocation(line: 101, column: 70, scope: !2951)
!2956 = !DILocalVariable(name: "__mptr", scope: !2957, file: !68, line: 103, type: !65)
!2957 = distinct !DILexicalBlock(scope: !2951, file: !68, line: 103, column: 9)
!2958 = !DILocation(line: 103, column: 9, scope: !2957)
!2959 = !DILocation(line: 103, column: 9, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2957, file: !68, line: 103, column: 9)
!2961 = !DILocation(line: 103, column: 2, scope: !2951)
!2962 = distinct !DISubprogram(name: "to_mcb_device", scope: !68, file: !68, line: 79, type: !2963, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!1949, !85}
!2965 = !DILocalVariable(name: "dev", arg: 1, scope: !2962, file: !68, line: 79, type: !85)
!2966 = !DILocation(line: 79, column: 63, scope: !2962)
!2967 = !DILocalVariable(name: "__mptr", scope: !2968, file: !68, line: 81, type: !65)
!2968 = distinct !DILexicalBlock(scope: !2962, file: !68, line: 81, column: 9)
!2969 = !DILocation(line: 81, column: 9, scope: !2968)
!2970 = !DILocation(line: 81, column: 9, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !68, line: 81, column: 9)
!2972 = !DILocation(line: 81, column: 2, scope: !2962)
!2973 = distinct !DISubprogram(name: "mcb_match_id", scope: !3, file: !3, line: 17, type: !2974, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!1939, !1939, !1949}
!2976 = !DILocalVariable(name: "ids", arg: 1, scope: !2973, file: !3, line: 17, type: !1939)
!2977 = !DILocation(line: 17, column: 77, scope: !2973)
!2978 = !DILocalVariable(name: "dev", arg: 2, scope: !2973, file: !3, line: 18, type: !1949)
!2979 = !DILocation(line: 18, column: 26, scope: !2973)
!2980 = !DILocation(line: 20, column: 6, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 20, column: 6)
!2982 = !DILocation(line: 20, column: 6, scope: !2973)
!2983 = !DILocation(line: 21, column: 3, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 20, column: 11)
!2985 = !DILocation(line: 21, column: 10, scope: !2984)
!2986 = !DILocation(line: 21, column: 15, scope: !2984)
!2987 = !DILocation(line: 22, column: 8, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 22, column: 8)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 21, column: 23)
!2990 = !DILocation(line: 22, column: 13, scope: !2988)
!2991 = !DILocation(line: 22, column: 23, scope: !2988)
!2992 = !DILocation(line: 22, column: 28, scope: !2988)
!2993 = !DILocation(line: 22, column: 20, scope: !2988)
!2994 = !DILocation(line: 22, column: 8, scope: !2989)
!2995 = !DILocation(line: 23, column: 12, scope: !2988)
!2996 = !DILocation(line: 23, column: 5, scope: !2988)
!2997 = !DILocation(line: 24, column: 7, scope: !2989)
!2998 = distinct !{!2998, !2983, !2999}
!2999 = !DILocation(line: 25, column: 3, scope: !2984)
!3000 = !DILocation(line: 26, column: 2, scope: !2984)
!3001 = !DILocation(line: 28, column: 2, scope: !2973)
!3002 = !DILocation(line: 29, column: 1, scope: !2973)
!3003 = distinct !DISubprogram(name: "try_module_get", scope: !3004, file: !3004, line: 751, type: !3005, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3004 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!994, !1821}
!3007 = !DILocalVariable(name: "module", arg: 1, scope: !3003, file: !3004, line: 751, type: !1821)
!3008 = !DILocation(line: 751, column: 50, scope: !3003)
!3009 = !DILocation(line: 753, column: 2, scope: !3003)
!3010 = distinct !DISubprogram(name: "module_put", scope: !3004, file: !3004, line: 756, type: !3011, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !1821}
!3013 = !DILocalVariable(name: "module", arg: 1, scope: !3010, file: !3004, line: 756, type: !1821)
!3014 = !DILocation(line: 756, column: 46, scope: !3010)
!3015 = !DILocation(line: 758, column: 1, scope: !3010)
!3016 = distinct !DISubprogram(name: "get_order", scope: !3017, file: !3017, line: 29, type: !3018, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3017 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!133, !199}
!3020 = !DILocalVariable(name: "x", arg: 1, scope: !3021, file: !3022, line: 366, type: !270)
!3021 = distinct !DISubprogram(name: "fls64", scope: !3022, file: !3022, line: 366, type: !3023, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3022 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!133, !270}
!3025 = !DILocation(line: 366, column: 40, scope: !3021, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 46, column: 9, scope: !3016)
!3027 = !DILocalVariable(name: "bitpos", scope: !3021, file: !3022, line: 368, type: !133)
!3028 = !DILocation(line: 368, column: 6, scope: !3021, inlinedAt: !3026)
!3029 = !DILocalVariable(name: "size", arg: 1, scope: !3016, file: !3017, line: 29, type: !199)
!3030 = !DILocation(line: 29, column: 63, scope: !3016)
!3031 = !DILocation(line: 31, column: 27, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3016, file: !3017, line: 31, column: 6)
!3033 = !DILocation(line: 31, column: 6, scope: !3032)
!3034 = !DILocation(line: 31, column: 6, scope: !3016)
!3035 = !DILocation(line: 32, column: 8, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3017, line: 32, column: 7)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !3017, line: 31, column: 34)
!3038 = !DILocation(line: 32, column: 7, scope: !3037)
!3039 = !DILocation(line: 33, column: 4, scope: !3036)
!3040 = !DILocation(line: 35, column: 7, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !3017, line: 35, column: 7)
!3042 = !DILocation(line: 35, column: 12, scope: !3041)
!3043 = !DILocation(line: 35, column: 7, scope: !3037)
!3044 = !DILocation(line: 36, column: 4, scope: !3041)
!3045 = !DILocation(line: 38, column: 10, scope: !3037)
!3046 = !DILocation(line: 38, column: 28, scope: !3037)
!3047 = !DILocation(line: 38, column: 41, scope: !3037)
!3048 = !DILocation(line: 38, column: 3, scope: !3037)
!3049 = !DILocation(line: 41, column: 6, scope: !3016)
!3050 = !DILocation(line: 42, column: 7, scope: !3016)
!3051 = !DILocation(line: 46, column: 15, scope: !3016)
!3052 = !DILocation(line: 374, column: 2, scope: !3021, inlinedAt: !3026)
!3053 = !DILocation(line: 376, column: 14, scope: !3021, inlinedAt: !3026)
!3054 = !{i32 250096}
!3055 = !DILocation(line: 377, column: 9, scope: !3021, inlinedAt: !3026)
!3056 = !DILocation(line: 377, column: 16, scope: !3021, inlinedAt: !3026)
!3057 = !DILocation(line: 46, column: 2, scope: !3016)
!3058 = !DILocation(line: 48, column: 1, scope: !3016)
!3059 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3060, file: !3060, line: 30, type: !3061, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3060 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!133, !268}
!3063 = !DILocation(line: 366, column: 40, scope: !3021, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 32, column: 9, scope: !3059)
!3065 = !DILocation(line: 368, column: 6, scope: !3021, inlinedAt: !3064)
!3066 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !3060, line: 30, type: !268)
!3067 = !DILocation(line: 30, column: 21, scope: !3059)
!3068 = !DILocation(line: 32, column: 15, scope: !3059)
!3069 = !DILocation(line: 374, column: 2, scope: !3021, inlinedAt: !3064)
!3070 = !DILocation(line: 376, column: 14, scope: !3021, inlinedAt: !3064)
!3071 = !DILocation(line: 377, column: 9, scope: !3021, inlinedAt: !3064)
!3072 = !DILocation(line: 377, column: 16, scope: !3021, inlinedAt: !3064)
!3073 = !DILocation(line: 32, column: 18, scope: !3059)
!3074 = !DILocation(line: 32, column: 2, scope: !3059)
!3075 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1113, file: !1113, line: 137, type: !3076, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!65, !1044, !1386, !196, !63}
!3078 = !DILocalVariable(name: "s", arg: 1, scope: !3075, file: !1113, line: 137, type: !1044)
!3079 = !DILocation(line: 137, column: 54, scope: !3075)
!3080 = !DILocalVariable(name: "object", arg: 2, scope: !3075, file: !1113, line: 137, type: !1386)
!3081 = !DILocation(line: 137, column: 69, scope: !3075)
!3082 = !DILocalVariable(name: "size", arg: 3, scope: !3075, file: !1113, line: 138, type: !196)
!3083 = !DILocation(line: 138, column: 12, scope: !3075)
!3084 = !DILocalVariable(name: "flags", arg: 4, scope: !3075, file: !1113, line: 138, type: !63)
!3085 = !DILocation(line: 138, column: 24, scope: !3075)
!3086 = !DILocation(line: 140, column: 17, scope: !3075)
!3087 = !DILocation(line: 140, column: 2, scope: !3075)
!3088 = distinct !DISubprogram(name: "revision_show", scope: !3, file: !3, line: 105, type: !2055, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3089 = !DILocalVariable(name: "dev", arg: 1, scope: !3088, file: !3, line: 105, type: !85)
!3090 = !DILocation(line: 105, column: 45, scope: !3088)
!3091 = !DILocalVariable(name: "attr", arg: 2, scope: !3088, file: !3, line: 105, type: !2057)
!3092 = !DILocation(line: 105, column: 75, scope: !3088)
!3093 = !DILocalVariable(name: "buf", arg: 3, scope: !3088, file: !3, line: 106, type: !149)
!3094 = !DILocation(line: 106, column: 11, scope: !3088)
!3095 = !DILocalVariable(name: "bus", scope: !3088, file: !3, line: 108, type: !1954)
!3096 = !DILocation(line: 108, column: 18, scope: !3088)
!3097 = !DILocation(line: 108, column: 35, scope: !3088)
!3098 = !DILocation(line: 108, column: 24, scope: !3088)
!3099 = !DILocation(line: 110, column: 19, scope: !3088)
!3100 = !DILocation(line: 110, column: 43, scope: !3088)
!3101 = !DILocation(line: 110, column: 48, scope: !3088)
!3102 = !DILocation(line: 110, column: 9, scope: !3088)
!3103 = !DILocation(line: 110, column: 2, scope: !3088)
!3104 = distinct !DISubprogram(name: "to_mcb_bus", scope: !68, file: !68, line: 42, type: !2213, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3105 = !DILocalVariable(name: "dev", arg: 1, scope: !3104, file: !68, line: 42, type: !85)
!3106 = !DILocation(line: 42, column: 57, scope: !3104)
!3107 = !DILocalVariable(name: "__mptr", scope: !3108, file: !68, line: 44, type: !65)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !68, line: 44, column: 9)
!3109 = !DILocation(line: 44, column: 9, scope: !3108)
!3110 = !DILocation(line: 44, column: 9, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3108, file: !68, line: 44, column: 9)
!3112 = !DILocation(line: 44, column: 2, scope: !3104)
!3113 = distinct !DISubprogram(name: "model_show", scope: !3, file: !3, line: 114, type: !2055, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3114 = !DILocalVariable(name: "dev", arg: 1, scope: !3113, file: !3, line: 114, type: !85)
!3115 = !DILocation(line: 114, column: 42, scope: !3113)
!3116 = !DILocalVariable(name: "attr", arg: 2, scope: !3113, file: !3, line: 114, type: !2057)
!3117 = !DILocation(line: 114, column: 72, scope: !3113)
!3118 = !DILocalVariable(name: "buf", arg: 3, scope: !3113, file: !3, line: 115, type: !149)
!3119 = !DILocation(line: 115, column: 11, scope: !3113)
!3120 = !DILocalVariable(name: "bus", scope: !3113, file: !3, line: 117, type: !1954)
!3121 = !DILocation(line: 117, column: 18, scope: !3113)
!3122 = !DILocation(line: 117, column: 35, scope: !3113)
!3123 = !DILocation(line: 117, column: 24, scope: !3113)
!3124 = !DILocation(line: 119, column: 19, scope: !3113)
!3125 = !DILocation(line: 119, column: 43, scope: !3113)
!3126 = !DILocation(line: 119, column: 48, scope: !3113)
!3127 = !DILocation(line: 119, column: 9, scope: !3113)
!3128 = !DILocation(line: 119, column: 2, scope: !3113)
!3129 = distinct !DISubprogram(name: "minor_show", scope: !3, file: !3, line: 123, type: !2055, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3130 = !DILocalVariable(name: "dev", arg: 1, scope: !3129, file: !3, line: 123, type: !85)
!3131 = !DILocation(line: 123, column: 42, scope: !3129)
!3132 = !DILocalVariable(name: "attr", arg: 2, scope: !3129, file: !3, line: 123, type: !2057)
!3133 = !DILocation(line: 123, column: 72, scope: !3129)
!3134 = !DILocalVariable(name: "buf", arg: 3, scope: !3129, file: !3, line: 124, type: !149)
!3135 = !DILocation(line: 124, column: 11, scope: !3129)
!3136 = !DILocalVariable(name: "bus", scope: !3129, file: !3, line: 126, type: !1954)
!3137 = !DILocation(line: 126, column: 18, scope: !3129)
!3138 = !DILocation(line: 126, column: 35, scope: !3129)
!3139 = !DILocation(line: 126, column: 24, scope: !3129)
!3140 = !DILocation(line: 128, column: 19, scope: !3129)
!3141 = !DILocation(line: 128, column: 43, scope: !3129)
!3142 = !DILocation(line: 128, column: 48, scope: !3129)
!3143 = !DILocation(line: 128, column: 9, scope: !3129)
!3144 = !DILocation(line: 128, column: 2, scope: !3129)
!3145 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 132, type: !2055, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3146 = !DILocalVariable(name: "dev", arg: 1, scope: !3145, file: !3, line: 132, type: !85)
!3147 = !DILocation(line: 132, column: 41, scope: !3145)
!3148 = !DILocalVariable(name: "attr", arg: 2, scope: !3145, file: !3, line: 132, type: !2057)
!3149 = !DILocation(line: 132, column: 71, scope: !3145)
!3150 = !DILocalVariable(name: "buf", arg: 3, scope: !3145, file: !3, line: 133, type: !149)
!3151 = !DILocation(line: 133, column: 11, scope: !3145)
!3152 = !DILocalVariable(name: "bus", scope: !3145, file: !3, line: 135, type: !1954)
!3153 = !DILocation(line: 135, column: 18, scope: !3145)
!3154 = !DILocation(line: 135, column: 35, scope: !3145)
!3155 = !DILocation(line: 135, column: 24, scope: !3145)
!3156 = !DILocation(line: 137, column: 19, scope: !3145)
!3157 = !DILocation(line: 137, column: 43, scope: !3145)
!3158 = !DILocation(line: 137, column: 48, scope: !3145)
!3159 = !DILocation(line: 137, column: 9, scope: !3145)
!3160 = !DILocation(line: 137, column: 2, scope: !3145)
!3161 = distinct !DISubprogram(name: "__mcb_devices_unregister", scope: !3, file: !3, line: 306, type: !2647, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!3162 = !DILocalVariable(name: "dev", arg: 1, scope: !3161, file: !3, line: 306, type: !85)
!3163 = !DILocation(line: 306, column: 52, scope: !3161)
!3164 = !DILocalVariable(name: "data", arg: 2, scope: !3161, file: !3, line: 306, type: !65)
!3165 = !DILocation(line: 306, column: 63, scope: !3161)
!3166 = !DILocation(line: 308, column: 20, scope: !3161)
!3167 = !DILocation(line: 308, column: 2, scope: !3161)
!3168 = !DILocation(line: 309, column: 2, scope: !3161)
