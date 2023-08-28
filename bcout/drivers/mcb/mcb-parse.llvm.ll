; ModuleID = '../bcout/drivers/mcb/mcb-parse.llvm.bc'
source_filename = "drivers/mcb/mcb-parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.mcb_bus = type { %struct.device, %struct.device*, i32, i8, i8, i8, [13 x i8], i32 (%struct.mcb_device*)* }
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
%struct.vdso_image = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.mcb_device = type { %struct.device, %struct.mcb_bus*, i8, %struct.mcb_driver*, i16, i32, i32, i32, i32, i32, %struct.resource, %struct.resource, %struct.device* }
%struct.mcb_driver = type { %struct.device_driver, %struct.mcb_device_id*, i32 (%struct.mcb_device*, %struct.mcb_device_id*)*, void (%struct.mcb_device*)*, void (%struct.mcb_device*)* }
%struct.mcb_device_id = type { i16, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.chameleon_fpga_header = type { i8, i8, i8, i8, i16, i16, [12 x i8] }
%struct.chameleon_bar = type { i32, i32 }
%struct.chameleon_gdd = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"\013Unsupported chameleon version 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013Invalid chameleon descriptor type 0x%x\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\016No BAR for 16z%03d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\016BAR not assigned for 16z%03d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\016IO mapped Device (16z%03d) not yet supported\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @chameleon_parse_cells(%struct.mcb_bus* %bus, i64 %mapbase, i8* %base) #0 !dbg !93 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.mcb_bus*, align 8
  %mapbase.addr = alloca i64, align 8
  %base.addr = alloca i8*, align 8
  %header = alloca %struct.chameleon_fpga_header*, align 8
  %cb = alloca %struct.chameleon_bar*, align 8
  %p = alloca i8*, align 8
  %num_cells = alloca i32, align 4
  %dtype = alloca i32, align 4
  %bar_count = alloca i32, align 4
  %ret = alloca i32, align 4
  %hsize = alloca i32, align 4
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2105, metadata !DIExpression()), !dbg !2106
  store i64 %mapbase, i64* %mapbase.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mapbase.addr, metadata !2107, metadata !DIExpression()), !dbg !2108
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !2109, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.declare(metadata %struct.chameleon_fpga_header** %header, metadata !2111, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.declare(metadata %struct.chameleon_bar** %cb, metadata !2124, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2131, metadata !DIExpression()), !dbg !2132
  %0 = load i8*, i8** %base.addr, align 8, !dbg !2133
  store i8* %0, i8** %p, align 8, !dbg !2132
  call void @llvm.dbg.declare(metadata i32* %num_cells, metadata !2134, metadata !DIExpression()), !dbg !2135
  store i32 0, i32* %num_cells, align 4, !dbg !2135
  call void @llvm.dbg.declare(metadata i32* %dtype, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.declare(metadata i32* %bar_count, metadata !2139, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2141, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.declare(metadata i32* %hsize, metadata !2143, metadata !DIExpression()), !dbg !2144
  store i32 20, i32* %hsize, align 4, !dbg !2145
  %1 = load i32, i32* %hsize, align 4, !dbg !2146
  %conv = zext i32 %1 to i64, !dbg !2146
  %call = call i8* @kzalloc(i64 %conv, i32 3264) #7, !dbg !2147
  %2 = bitcast i8* %call to %struct.chameleon_fpga_header*, !dbg !2147
  store %struct.chameleon_fpga_header* %2, %struct.chameleon_fpga_header** %header, align 8, !dbg !2148
  %3 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2149
  %tobool = icmp ne %struct.chameleon_fpga_header* %3, null, !dbg !2149
  br i1 %tobool, label %if.end, label %if.then, !dbg !2151

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2152
  br label %return, !dbg !2152

if.end:                                           ; preds = %entry
  %4 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2153
  %5 = bitcast %struct.chameleon_fpga_header* %4 to i8*, !dbg !2153
  %6 = load i8*, i8** %p, align 8, !dbg !2154
  %7 = load i32, i32* %hsize, align 4, !dbg !2155
  %conv1 = zext i32 %7 to i64, !dbg !2155
  call void @memcpy_fromio(i8* %5, i8* %6, i64 %conv1) #7, !dbg !2156
  %8 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2157
  %magic = getelementptr inbounds %struct.chameleon_fpga_header, %struct.chameleon_fpga_header* %8, i32 0, i32 4, !dbg !2157
  %9 = load i16, i16* %magic, align 1, !dbg !2157
  %10 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2158
  %magic2 = getelementptr inbounds %struct.chameleon_fpga_header, %struct.chameleon_fpga_header* %10, i32 0, i32 4, !dbg !2159
  store i16 %9, i16* %magic2, align 1, !dbg !2160
  %11 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2161
  %magic3 = getelementptr inbounds %struct.chameleon_fpga_header, %struct.chameleon_fpga_header* %11, i32 0, i32 4, !dbg !2163
  %12 = load i16, i16* %magic3, align 1, !dbg !2163
  %conv4 = zext i16 %12 to i32, !dbg !2161
  %cmp = icmp ne i32 %conv4, 43982, !dbg !2164
  br i1 %cmp, label %if.then6, label %if.end10, !dbg !2165

if.then6:                                         ; preds = %if.end
  %13 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2166
  %magic7 = getelementptr inbounds %struct.chameleon_fpga_header, %struct.chameleon_fpga_header* %13, i32 0, i32 4, !dbg !2166
  %14 = load i16, i16* %magic7, align 1, !dbg !2166
  %conv8 = zext i16 %14 to i32, !dbg !2166
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %conv8) #8, !dbg !2166
  store i32 -19, i32* %ret, align 4, !dbg !2168
  br label %free_header, !dbg !2169

if.end10:                                         ; preds = %if.end
  %15 = load i32, i32* %hsize, align 4, !dbg !2170
  %16 = load i8*, i8** %p, align 8, !dbg !2171
  %idx.ext = zext i32 %15 to i64, !dbg !2171
  %add.ptr = getelementptr i8, i8* %16, i64 %idx.ext, !dbg !2171
  store i8* %add.ptr, i8** %p, align 8, !dbg !2171
  %17 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2172
  %revision = getelementptr inbounds %struct.chameleon_fpga_header, %struct.chameleon_fpga_header* %17, i32 0, i32 0, !dbg !2173
  %18 = load i8, i8* %revision, align 1, !dbg !2173
  %19 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2174
  %revision11 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %19, i32 0, i32 3, !dbg !2175
  store i8 %18, i8* %revision11, align 4, !dbg !2176
  %20 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2177
  %model = getelementptr inbounds %struct.chameleon_fpga_header, %struct.chameleon_fpga_header* %20, i32 0, i32 1, !dbg !2178
  %21 = load i8, i8* %model, align 1, !dbg !2178
  %22 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2179
  %model12 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %22, i32 0, i32 4, !dbg !2180
  store i8 %21, i8* %model12, align 1, !dbg !2181
  %23 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2182
  %minor = getelementptr inbounds %struct.chameleon_fpga_header, %struct.chameleon_fpga_header* %23, i32 0, i32 2, !dbg !2183
  %24 = load i8, i8* %minor, align 1, !dbg !2183
  %25 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2184
  %minor13 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %25, i32 0, i32 5, !dbg !2185
  store i8 %24, i8* %minor13, align 2, !dbg !2186
  %26 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2187
  %name = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %26, i32 0, i32 6, !dbg !2188
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %name, i64 0, i64 0, !dbg !2187
  %27 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2189
  %filename = getelementptr inbounds %struct.chameleon_fpga_header, %struct.chameleon_fpga_header* %27, i32 0, i32 6, !dbg !2190
  %arraydecay14 = getelementptr inbounds [12 x i8], [12 x i8]* %filename, i64 0, i64 0, !dbg !2189
  %call15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay14) #7, !dbg !2191
  %28 = load i64, i64* %mapbase.addr, align 8, !dbg !2192
  %call16 = call i32 @chameleon_get_bar(i8** %p, i64 %28, %struct.chameleon_bar** %cb) #7, !dbg !2193
  store i32 %call16, i32* %bar_count, align 4, !dbg !2194
  %29 = load i32, i32* %bar_count, align 4, !dbg !2195
  %cmp17 = icmp slt i32 %29, 0, !dbg !2197
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !2198

if.then19:                                        ; preds = %if.end10
  %30 = load i32, i32* %bar_count, align 4, !dbg !2199
  store i32 %30, i32* %ret, align 4, !dbg !2201
  br label %free_header, !dbg !2202

if.end20:                                         ; preds = %if.end10
  %31 = load i8*, i8** %p, align 8, !dbg !2203
  %call21 = call i32 @get_next_dtype(i8* %31) #7, !dbg !2203
  store i32 %call21, i32* %dtype, align 4, !dbg !2203
  br label %for.cond, !dbg !2203

for.cond:                                         ; preds = %for.inc, %if.end20
  %32 = load i32, i32* %dtype, align 4, !dbg !2205
  %cmp22 = icmp ne i32 %32, 15, !dbg !2205
  br i1 %cmp22, label %for.body, label %for.end, !dbg !2203

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %dtype, align 4, !dbg !2207
  switch i32 %33, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 15, label %sw.bb33
  ], !dbg !2209

sw.bb:                                            ; preds = %for.body
  %34 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2210
  %35 = load %struct.chameleon_bar*, %struct.chameleon_bar** %cb, align 8, !dbg !2212
  %36 = load i8*, i8** %p, align 8, !dbg !2213
  %37 = load i32, i32* %bar_count, align 4, !dbg !2214
  %call24 = call i32 @chameleon_parse_gdd(%struct.mcb_bus* %34, %struct.chameleon_bar* %35, i8* %36, i32 %37) #7, !dbg !2215
  store i32 %call24, i32* %ret, align 4, !dbg !2216
  %38 = load i32, i32* %ret, align 4, !dbg !2217
  %cmp25 = icmp slt i32 %38, 0, !dbg !2219
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !2220

if.then27:                                        ; preds = %sw.bb
  br label %free_bar, !dbg !2221

if.end28:                                         ; preds = %sw.bb
  %39 = load i8*, i8** %p, align 8, !dbg !2222
  %add.ptr29 = getelementptr i8, i8* %39, i64 16, !dbg !2222
  store i8* %add.ptr29, i8** %p, align 8, !dbg !2222
  br label %sw.epilog, !dbg !2223

sw.bb30:                                          ; preds = %for.body
  %40 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2224
  %41 = load %struct.chameleon_bar*, %struct.chameleon_bar** %cb, align 8, !dbg !2225
  %42 = load i8*, i8** %p, align 8, !dbg !2226
  %call31 = call i32 @chameleon_parse_bdd(%struct.mcb_bus* %40, %struct.chameleon_bar* %41, i8* %42) #7, !dbg !2227
  %43 = load i8*, i8** %p, align 8, !dbg !2228
  %add.ptr32 = getelementptr i8, i8* %43, i64 20, !dbg !2228
  store i8* %add.ptr32, i8** %p, align 8, !dbg !2228
  br label %sw.epilog, !dbg !2229

sw.bb33:                                          ; preds = %for.body
  br label %sw.epilog, !dbg !2230

sw.default:                                       ; preds = %for.body
  %44 = load i32, i32* %dtype, align 4, !dbg !2231
  %call34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %44) #8, !dbg !2231
  store i32 -22, i32* %ret, align 4, !dbg !2232
  br label %free_bar, !dbg !2233

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb30, %if.end28
  %45 = load i32, i32* %num_cells, align 4, !dbg !2234
  %inc = add i32 %45, 1, !dbg !2234
  store i32 %inc, i32* %num_cells, align 4, !dbg !2234
  br label %for.inc, !dbg !2235

for.inc:                                          ; preds = %sw.epilog
  %46 = load i8*, i8** %p, align 8, !dbg !2205
  %call35 = call i32 @get_next_dtype(i8* %46) #7, !dbg !2205
  store i32 %call35, i32* %dtype, align 4, !dbg !2205
  br label %for.cond, !dbg !2205, !llvm.loop !2236

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %num_cells, align 4, !dbg !2238
  %cmp36 = icmp eq i32 %47, 0, !dbg !2240
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !2241

if.then38:                                        ; preds = %for.end
  store i32 -22, i32* %num_cells, align 4, !dbg !2242
  br label %if.end39, !dbg !2243

if.end39:                                         ; preds = %if.then38, %for.end
  %48 = load %struct.chameleon_bar*, %struct.chameleon_bar** %cb, align 8, !dbg !2244
  %49 = bitcast %struct.chameleon_bar* %48 to i8*, !dbg !2244
  call void @kfree(i8* %49) #7, !dbg !2245
  %50 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2246
  %51 = bitcast %struct.chameleon_fpga_header* %50 to i8*, !dbg !2246
  call void @kfree(i8* %51) #7, !dbg !2247
  %52 = load i32, i32* %num_cells, align 4, !dbg !2248
  store i32 %52, i32* %retval, align 4, !dbg !2249
  br label %return, !dbg !2249

free_bar:                                         ; preds = %sw.default, %if.then27
  call void @llvm.dbg.label(metadata !2250), !dbg !2251
  %53 = load %struct.chameleon_bar*, %struct.chameleon_bar** %cb, align 8, !dbg !2252
  %54 = bitcast %struct.chameleon_bar* %53 to i8*, !dbg !2252
  call void @kfree(i8* %54) #7, !dbg !2253
  br label %free_header, !dbg !2253

free_header:                                      ; preds = %free_bar, %if.then19, %if.then6
  call void @llvm.dbg.label(metadata !2254), !dbg !2255
  %55 = load %struct.chameleon_fpga_header*, %struct.chameleon_fpga_header** %header, align 8, !dbg !2256
  %56 = bitcast %struct.chameleon_fpga_header* %55 to i8*, !dbg !2256
  call void @kfree(i8* %56) #7, !dbg !2257
  %57 = load i32, i32* %ret, align 4, !dbg !2258
  store i32 %57, i32* %retval, align 4, !dbg !2259
  br label %return, !dbg !2259

return:                                           ; preds = %free_header, %if.end39, %if.then
  %58 = load i32, i32* %retval, align 4, !dbg !2260
  ret i32 %58, !dbg !2260
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2261 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2264, metadata !DIExpression()), !dbg !2268
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2274, metadata !DIExpression()), !dbg !2275
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2276, metadata !DIExpression()), !dbg !2277
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2278, metadata !DIExpression()), !dbg !2279
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2280, metadata !DIExpression()), !dbg !2284
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2286, metadata !DIExpression()), !dbg !2290
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2292, metadata !DIExpression()), !dbg !2296
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2301, metadata !DIExpression()), !dbg !2302
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2303, metadata !DIExpression()), !dbg !2304
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2305, metadata !DIExpression()), !dbg !2306
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2307, metadata !DIExpression()), !dbg !2308
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2309, metadata !DIExpression()), !dbg !2310
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2311, metadata !DIExpression()), !dbg !2312
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2313, metadata !DIExpression()), !dbg !2314
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2315, metadata !DIExpression()), !dbg !2316
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2317, metadata !DIExpression()), !dbg !2318
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2319, metadata !DIExpression()), !dbg !2320
  %0 = load i64, i64* %size.addr, align 8, !dbg !2321
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2322
  %or = or i32 %1, 256, !dbg !2323
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2324
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !2325
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2326

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2327
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2328
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2329

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2330
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2331
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2332
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2333
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2310
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2334
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2335
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2336
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2337
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2338
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2339
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2340
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2340
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2340
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2340
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2340
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2341
  br label %kmalloc.exit, !dbg !2341

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2342
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2343
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2343
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2345

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2346
  br label %kmalloc_index.exit.i, !dbg !2346

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2347
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2349
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2350

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2351
  br label %kmalloc_index.exit.i, !dbg !2351

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2352
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2354
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2355

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2356
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2357
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2358

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2359
  br label %kmalloc_index.exit.i, !dbg !2359

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2360
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2362
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2363

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2364
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2365
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2366

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2367
  br label %kmalloc_index.exit.i, !dbg !2367

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2368
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2370
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2371

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2372
  br label %kmalloc_index.exit.i, !dbg !2372

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2373
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2375
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2376

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2377
  br label %kmalloc_index.exit.i, !dbg !2377

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2378
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2380
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2381

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2382
  br label %kmalloc_index.exit.i, !dbg !2382

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2383
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2385
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2386

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2387
  br label %kmalloc_index.exit.i, !dbg !2387

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2388
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2390
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2391

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2392
  br label %kmalloc_index.exit.i, !dbg !2392

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2393
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2395
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2396

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2397
  br label %kmalloc_index.exit.i, !dbg !2397

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2398
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2400
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2401

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2402
  br label %kmalloc_index.exit.i, !dbg !2402

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2403
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2405
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2406

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2407
  br label %kmalloc_index.exit.i, !dbg !2407

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2408
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2410
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2411

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2412
  br label %kmalloc_index.exit.i, !dbg !2412

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2413
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2415
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2416

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2417
  br label %kmalloc_index.exit.i, !dbg !2417

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2418
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2420
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2421

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2422
  br label %kmalloc_index.exit.i, !dbg !2422

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2423
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2425
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2426

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2427
  br label %kmalloc_index.exit.i, !dbg !2427

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2428
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2430
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2431

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2432
  br label %kmalloc_index.exit.i, !dbg !2432

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2433
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2435
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2436

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2437
  br label %kmalloc_index.exit.i, !dbg !2437

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2438
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2440
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2441

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2442
  br label %kmalloc_index.exit.i, !dbg !2442

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2443
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2445
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2446

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2447
  br label %kmalloc_index.exit.i, !dbg !2447

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2448
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2450
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2451

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2452
  br label %kmalloc_index.exit.i, !dbg !2452

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2453
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2455
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2456

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2457
  br label %kmalloc_index.exit.i, !dbg !2457

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2458
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2460
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2461

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2462
  br label %kmalloc_index.exit.i, !dbg !2462

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2463
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2465
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2466

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2467
  br label %kmalloc_index.exit.i, !dbg !2467

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2468
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2470
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2471

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2472
  br label %kmalloc_index.exit.i, !dbg !2472

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2473
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2475
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2476

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2477
  br label %kmalloc_index.exit.i, !dbg !2477

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2478
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2480
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2481

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2482
  br label %kmalloc_index.exit.i, !dbg !2482

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2483
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2485
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2486

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2487
  br label %kmalloc_index.exit.i, !dbg !2487

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !2488, !srcloc !2491
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !2492, !srcloc !2495
  unreachable, !dbg !2496

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2497
  store i32 %45, i32* %index.i, align 4, !dbg !2498
  %46 = load i32, i32* %index.i, align 4, !dbg !2499
  %tobool.i = icmp ne i32 %46, 0, !dbg !2499
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2501

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2502
  br label %kmalloc.exit, !dbg !2502

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2503
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2504
  %and.i.i = and i32 %48, 17, !dbg !2504
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2504
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2504
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2504
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2504
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2506

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2507
  br label %kmalloc_type.exit.i, !dbg !2507

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2508
  %and2.i.i = and i32 %49, 1, !dbg !2509
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2508
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2508
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2508
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2510
  br label %kmalloc_type.exit.i, !dbg !2510

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2511
  %idxprom.i = zext i32 %51 to i64, !dbg !2512
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2512
  %52 = load i32, i32* %index.i, align 4, !dbg !2513
  %idxprom6.i = zext i32 %52 to i64, !dbg !2512
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2512
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2512
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2514
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2515
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2516
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2517
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2518
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2518
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2518
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2518
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !2518
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2279
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2519
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2520
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2521
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2522
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2523
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2524
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2525
  store i8* %62, i8** %retval.i, align 8, !dbg !2526
  br label %kmalloc.exit, !dbg !2526

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2527
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2528
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2529
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2529
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2529
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2529
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !2529
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2530
  br label %kmalloc.exit, !dbg !2530

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2531
  ret i8* %65, !dbg !2532
}

; Function Attrs: noredzone
declare dso_local void @memcpy_fromio(i8*, i8*, i64) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chameleon_get_bar(i8** %base, i64 %mapbase, %struct.chameleon_bar** %cb) #0 !dbg !2533 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i8**, align 8
  %mapbase.addr = alloca i64, align 8
  %cb.addr = alloca %struct.chameleon_bar**, align 8
  %c = alloca %struct.chameleon_bar*, align 8
  %bar_count = alloca i32, align 4
  %reg = alloca i32, align 4
  %dtype = alloca i32, align 4
  store i8** %base, i8*** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %base.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  store i64 %mapbase, i64* %mapbase.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mapbase.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  store %struct.chameleon_bar** %cb, %struct.chameleon_bar*** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chameleon_bar*** %cb.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.declare(metadata %struct.chameleon_bar** %c, metadata !2544, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.declare(metadata i32* %bar_count, metadata !2546, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.declare(metadata i32* %dtype, metadata !2550, metadata !DIExpression()), !dbg !2551
  %0 = load i8**, i8*** %base.addr, align 8, !dbg !2552
  %1 = load i8*, i8** %0, align 8, !dbg !2553
  %call = call i32 @get_next_dtype(i8* %1) #7, !dbg !2554
  store i32 %call, i32* %dtype, align 4, !dbg !2555
  %2 = load i32, i32* %dtype, align 4, !dbg !2556
  %cmp = icmp eq i32 %2, 3, !dbg !2558
  br i1 %cmp, label %if.then, label %if.else, !dbg !2559

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %base.addr, align 8, !dbg !2560
  %4 = load i8*, i8** %3, align 8, !dbg !2562
  %call1 = call i32 @readl(i8* %4) #7, !dbg !2563
  store i32 %call1, i32* %reg, align 4, !dbg !2564
  %5 = load i32, i32* %reg, align 4, !dbg !2565
  %and = and i32 %5, 7, !dbg !2565
  store i32 %and, i32* %bar_count, align 4, !dbg !2566
  %6 = load i32, i32* %bar_count, align 4, !dbg !2567
  %cmp2 = icmp sle i32 %6, 0, !dbg !2569
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !2570

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, i32* %bar_count, align 4, !dbg !2571
  %cmp3 = icmp sgt i32 %7, 6, !dbg !2572
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !2573

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -19, i32* %retval, align 4, !dbg !2574
  br label %return, !dbg !2574

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %bar_count, align 4, !dbg !2575
  %conv = sext i32 %8 to i64, !dbg !2575
  %call5 = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #7, !dbg !2576
  %9 = bitcast i8* %call5 to %struct.chameleon_bar*, !dbg !2576
  store %struct.chameleon_bar* %9, %struct.chameleon_bar** %c, align 8, !dbg !2577
  %10 = load %struct.chameleon_bar*, %struct.chameleon_bar** %c, align 8, !dbg !2578
  %tobool = icmp ne %struct.chameleon_bar* %10, null, !dbg !2578
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !2580

if.then6:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2581
  br label %return, !dbg !2581

if.end7:                                          ; preds = %if.end
  %11 = load i8**, i8*** %base.addr, align 8, !dbg !2582
  %12 = load i8*, i8** %11, align 8, !dbg !2583
  %13 = load %struct.chameleon_bar*, %struct.chameleon_bar** %c, align 8, !dbg !2584
  %14 = load i32, i32* %bar_count, align 4, !dbg !2585
  call void @chameleon_parse_bar(i8* %12, %struct.chameleon_bar* %13, i32 %14) #7, !dbg !2586
  %15 = load i32, i32* %bar_count, align 4, !dbg !2587
  %conv8 = sext i32 %15 to i64, !dbg !2587
  %mul = mul i64 %conv8, 8, !dbg !2587
  %add = add i64 %mul, 4, !dbg !2587
  %16 = load i8**, i8*** %base.addr, align 8, !dbg !2588
  %17 = load i8*, i8** %16, align 8, !dbg !2589
  %add.ptr = getelementptr i8, i8* %17, i64 %add, !dbg !2589
  store i8* %add.ptr, i8** %16, align 8, !dbg !2589
  br label %if.end14, !dbg !2590

if.else:                                          ; preds = %entry
  %call9 = call i8* @kzalloc(i64 8, i32 3264) #7, !dbg !2591
  %18 = bitcast i8* %call9 to %struct.chameleon_bar*, !dbg !2591
  store %struct.chameleon_bar* %18, %struct.chameleon_bar** %c, align 8, !dbg !2593
  %19 = load %struct.chameleon_bar*, %struct.chameleon_bar** %c, align 8, !dbg !2594
  %tobool10 = icmp ne %struct.chameleon_bar* %19, null, !dbg !2594
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2596

if.then11:                                        ; preds = %if.else
  store i32 -12, i32* %retval, align 4, !dbg !2597
  br label %return, !dbg !2597

if.end12:                                         ; preds = %if.else
  store i32 1, i32* %bar_count, align 4, !dbg !2598
  %20 = load i64, i64* %mapbase.addr, align 8, !dbg !2599
  %conv13 = trunc i64 %20 to i32, !dbg !2599
  %21 = load %struct.chameleon_bar*, %struct.chameleon_bar** %c, align 8, !dbg !2600
  %addr = getelementptr inbounds %struct.chameleon_bar, %struct.chameleon_bar* %21, i32 0, i32 0, !dbg !2601
  store i32 %conv13, i32* %addr, align 4, !dbg !2602
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end7
  %22 = load %struct.chameleon_bar*, %struct.chameleon_bar** %c, align 8, !dbg !2603
  %23 = load %struct.chameleon_bar**, %struct.chameleon_bar*** %cb.addr, align 8, !dbg !2604
  store %struct.chameleon_bar* %22, %struct.chameleon_bar** %23, align 8, !dbg !2605
  %24 = load i32, i32* %bar_count, align 4, !dbg !2606
  store i32 %24, i32* %retval, align 4, !dbg !2607
  br label %return, !dbg !2607

return:                                           ; preds = %if.end14, %if.then11, %if.then6, %if.then4
  %25 = load i32, i32* %retval, align 4, !dbg !2608
  ret i32 %25, !dbg !2608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_next_dtype(i8* %p) #0 !dbg !2609 {
entry:
  %p.addr = alloca i8*, align 8
  %dtype = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2612, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.declare(metadata i32* %dtype, metadata !2614, metadata !DIExpression()), !dbg !2615
  %0 = load i8*, i8** %p.addr, align 8, !dbg !2616
  %call = call i32 @readl(i8* %0) #7, !dbg !2617
  store i32 %call, i32* %dtype, align 4, !dbg !2618
  %1 = load i32, i32* %dtype, align 4, !dbg !2619
  %shr = lshr i32 %1, 28, !dbg !2620
  ret i32 %shr, !dbg !2621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chameleon_parse_gdd(%struct.mcb_bus* %bus, %struct.chameleon_bar* %cb, i8* %base, i32 %bar_count) #0 !dbg !2622 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.mcb_bus*, align 8
  %cb.addr = alloca %struct.chameleon_bar*, align 8
  %base.addr = alloca i8*, align 8
  %bar_count.addr = alloca i32, align 4
  %gdd = alloca %struct.chameleon_gdd*, align 8
  %mdev = alloca %struct.mcb_device*, align 8
  %dev_mapbase = alloca i32, align 4
  %offset = alloca i32, align 4
  %size = alloca i32, align 4
  %ret = alloca i32, align 4
  %reg1 = alloca i32, align 4
  %reg2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2625, metadata !DIExpression()), !dbg !2626
  store %struct.chameleon_bar* %cb, %struct.chameleon_bar** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chameleon_bar** %cb.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !2629, metadata !DIExpression()), !dbg !2630
  store i32 %bar_count, i32* %bar_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar_count.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.declare(metadata %struct.chameleon_gdd** %gdd, metadata !2633, metadata !DIExpression()), !dbg !2634
  %0 = load i8*, i8** %base.addr, align 8, !dbg !2635
  %1 = bitcast i8* %0 to %struct.chameleon_gdd*, !dbg !2636
  store %struct.chameleon_gdd* %1, %struct.chameleon_gdd** %gdd, align 8, !dbg !2634
  call void @llvm.dbg.declare(metadata %struct.mcb_device** %mdev, metadata !2637, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.declare(metadata i32* %dev_mapbase, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !2641, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.declare(metadata i32* %size, metadata !2643, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2645, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.declare(metadata i32* %reg1, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.declare(metadata i32* %reg2, metadata !2649, metadata !DIExpression()), !dbg !2650
  %2 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2651
  %call = call %struct.mcb_device* @mcb_alloc_dev(%struct.mcb_bus* %2) #7, !dbg !2652
  store %struct.mcb_device* %call, %struct.mcb_device** %mdev, align 8, !dbg !2653
  %3 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2654
  %tobool = icmp ne %struct.mcb_device* %3, null, !dbg !2654
  br i1 %tobool, label %if.end, label %if.then, !dbg !2656

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2657
  br label %return, !dbg !2657

if.end:                                           ; preds = %entry
  %4 = load %struct.chameleon_gdd*, %struct.chameleon_gdd** %gdd, align 8, !dbg !2658
  %reg11 = getelementptr inbounds %struct.chameleon_gdd, %struct.chameleon_gdd* %4, i32 0, i32 0, !dbg !2659
  %5 = bitcast i32* %reg11 to i8*, !dbg !2660
  %call2 = call i32 @readl(i8* %5) #7, !dbg !2661
  store i32 %call2, i32* %reg1, align 4, !dbg !2662
  %6 = load %struct.chameleon_gdd*, %struct.chameleon_gdd** %gdd, align 8, !dbg !2663
  %reg23 = getelementptr inbounds %struct.chameleon_gdd, %struct.chameleon_gdd* %6, i32 0, i32 1, !dbg !2664
  %7 = bitcast i32* %reg23 to i8*, !dbg !2665
  %call4 = call i32 @readl(i8* %7) #7, !dbg !2666
  store i32 %call4, i32* %reg2, align 4, !dbg !2667
  %8 = load %struct.chameleon_gdd*, %struct.chameleon_gdd** %gdd, align 8, !dbg !2668
  %offset5 = getelementptr inbounds %struct.chameleon_gdd, %struct.chameleon_gdd* %8, i32 0, i32 2, !dbg !2669
  %9 = bitcast i32* %offset5 to i8*, !dbg !2670
  %call6 = call i32 @readl(i8* %9) #7, !dbg !2671
  store i32 %call6, i32* %offset, align 4, !dbg !2672
  %10 = load %struct.chameleon_gdd*, %struct.chameleon_gdd** %gdd, align 8, !dbg !2673
  %size7 = getelementptr inbounds %struct.chameleon_gdd, %struct.chameleon_gdd* %10, i32 0, i32 3, !dbg !2674
  %11 = bitcast i32* %size7 to i8*, !dbg !2675
  %call8 = call i32 @readl(i8* %11) #7, !dbg !2676
  store i32 %call8, i32* %size, align 4, !dbg !2677
  %12 = load i32, i32* %reg1, align 4, !dbg !2678
  %shr = lshr i32 %12, 18, !dbg !2678
  %and = and i32 %shr, 1023, !dbg !2678
  %conv = trunc i32 %and to i16, !dbg !2678
  %13 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2679
  %id = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %13, i32 0, i32 4, !dbg !2680
  store i16 %conv, i16* %id, align 8, !dbg !2681
  %14 = load i32, i32* %reg1, align 4, !dbg !2682
  %shr9 = lshr i32 %14, 5, !dbg !2682
  %and10 = and i32 %shr9, 63, !dbg !2682
  %15 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2683
  %rev = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %15, i32 0, i32 9, !dbg !2684
  store i32 %and10, i32* %rev, align 4, !dbg !2685
  %16 = load i32, i32* %reg1, align 4, !dbg !2686
  %shr11 = lshr i32 %16, 11, !dbg !2686
  %and12 = and i32 %shr11, 63, !dbg !2686
  %17 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2687
  %var = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %17, i32 0, i32 7, !dbg !2688
  store i32 %and12, i32* %var, align 4, !dbg !2689
  %18 = load i32, i32* %reg2, align 4, !dbg !2690
  %and13 = and i32 %18, 7, !dbg !2690
  %19 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2691
  %bar = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %19, i32 0, i32 8, !dbg !2692
  store i32 %and13, i32* %bar, align 8, !dbg !2693
  %20 = load i32, i32* %reg2, align 4, !dbg !2694
  %shr14 = lshr i32 %20, 9, !dbg !2694
  %and15 = and i32 %shr14, 63, !dbg !2694
  %21 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2695
  %group = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %21, i32 0, i32 6, !dbg !2696
  store i32 %and15, i32* %group, align 8, !dbg !2697
  %22 = load i32, i32* %reg2, align 4, !dbg !2698
  %shr16 = lshr i32 %22, 3, !dbg !2698
  %and17 = and i32 %shr16, 63, !dbg !2698
  %23 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2699
  %inst = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %23, i32 0, i32 5, !dbg !2700
  store i32 %and17, i32* %inst, align 4, !dbg !2701
  %24 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2702
  %bar18 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %24, i32 0, i32 8, !dbg !2704
  %25 = load i32, i32* %bar18, align 8, !dbg !2704
  %26 = load i32, i32* %bar_count.addr, align 4, !dbg !2705
  %sub = sub i32 %26, 1, !dbg !2706
  %cmp = icmp sgt i32 %25, %sub, !dbg !2707
  br i1 %cmp, label %if.then20, label %if.end24, !dbg !2708

if.then20:                                        ; preds = %if.end
  %27 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2709
  %id21 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %27, i32 0, i32 4, !dbg !2709
  %28 = load i16, i16* %id21, align 8, !dbg !2709
  %conv22 = zext i16 %28 to i32, !dbg !2709
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %conv22) #8, !dbg !2709
  store i32 0, i32* %ret, align 4, !dbg !2711
  br label %err, !dbg !2712

if.end24:                                         ; preds = %if.end
  %29 = load %struct.chameleon_bar*, %struct.chameleon_bar** %cb.addr, align 8, !dbg !2713
  %30 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2714
  %bar25 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %30, i32 0, i32 8, !dbg !2715
  %31 = load i32, i32* %bar25, align 8, !dbg !2715
  %idxprom = sext i32 %31 to i64, !dbg !2713
  %arrayidx = getelementptr %struct.chameleon_bar, %struct.chameleon_bar* %29, i64 %idxprom, !dbg !2713
  %addr = getelementptr inbounds %struct.chameleon_bar, %struct.chameleon_bar* %arrayidx, i32 0, i32 0, !dbg !2716
  %32 = load i32, i32* %addr, align 4, !dbg !2716
  store i32 %32, i32* %dev_mapbase, align 4, !dbg !2717
  %33 = load i32, i32* %dev_mapbase, align 4, !dbg !2718
  %tobool26 = icmp ne i32 %33, 0, !dbg !2718
  br i1 %tobool26, label %if.end31, label %if.then27, !dbg !2720

if.then27:                                        ; preds = %if.end24
  %34 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2721
  %id28 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %34, i32 0, i32 4, !dbg !2721
  %35 = load i16, i16* %id28, align 8, !dbg !2721
  %conv29 = zext i16 %35 to i32, !dbg !2721
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %conv29) #8, !dbg !2721
  store i32 0, i32* %ret, align 4, !dbg !2723
  br label %err, !dbg !2724

if.end31:                                         ; preds = %if.end24
  %36 = load i32, i32* %dev_mapbase, align 4, !dbg !2725
  %and32 = and i32 %36, 1, !dbg !2727
  %tobool33 = icmp ne i32 %and32, 0, !dbg !2727
  br i1 %tobool33, label %if.then34, label %if.end38, !dbg !2728

if.then34:                                        ; preds = %if.end31
  %37 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2729
  %id35 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %37, i32 0, i32 4, !dbg !2729
  %38 = load i16, i16* %id35, align 8, !dbg !2729
  %conv36 = zext i16 %38 to i32, !dbg !2729
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %conv36) #8, !dbg !2729
  store i32 0, i32* %ret, align 4, !dbg !2731
  br label %err, !dbg !2732

if.end38:                                         ; preds = %if.end31
  store i32 0, i32* %tmp, align 4, !dbg !2733
  %39 = load i32, i32* %tmp, align 4, !dbg !2736
  %40 = load i32, i32* %reg1, align 4, !dbg !2737
  %and39 = and i32 %40, 31, !dbg !2737
  %conv40 = zext i32 %and39 to i64, !dbg !2737
  %41 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2738
  %irq = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %41, i32 0, i32 10, !dbg !2739
  %start = getelementptr inbounds %struct.resource, %struct.resource* %irq, i32 0, i32 0, !dbg !2740
  store i64 %conv40, i64* %start, align 8, !dbg !2741
  %42 = load i32, i32* %reg1, align 4, !dbg !2742
  %and41 = and i32 %42, 31, !dbg !2742
  %conv42 = zext i32 %and41 to i64, !dbg !2742
  %43 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2743
  %irq43 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %43, i32 0, i32 10, !dbg !2744
  %end = getelementptr inbounds %struct.resource, %struct.resource* %irq43, i32 0, i32 1, !dbg !2745
  store i64 %conv42, i64* %end, align 8, !dbg !2746
  %44 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2747
  %irq44 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %44, i32 0, i32 10, !dbg !2748
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %irq44, i32 0, i32 3, !dbg !2749
  store i64 1024, i64* %flags, align 8, !dbg !2750
  %45 = load i32, i32* %dev_mapbase, align 4, !dbg !2751
  %46 = load i32, i32* %offset, align 4, !dbg !2752
  %add = add i32 %45, %46, !dbg !2753
  %conv45 = zext i32 %add to i64, !dbg !2751
  %47 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2754
  %mem = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %47, i32 0, i32 11, !dbg !2755
  %start46 = getelementptr inbounds %struct.resource, %struct.resource* %mem, i32 0, i32 0, !dbg !2756
  store i64 %conv45, i64* %start46, align 8, !dbg !2757
  %48 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2758
  %mem47 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %48, i32 0, i32 11, !dbg !2759
  %start48 = getelementptr inbounds %struct.resource, %struct.resource* %mem47, i32 0, i32 0, !dbg !2760
  %49 = load i64, i64* %start48, align 8, !dbg !2760
  %50 = load i32, i32* %size, align 4, !dbg !2761
  %conv49 = zext i32 %50 to i64, !dbg !2761
  %add50 = add i64 %49, %conv49, !dbg !2762
  %sub51 = sub i64 %add50, 1, !dbg !2763
  %51 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2764
  %mem52 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %51, i32 0, i32 11, !dbg !2765
  %end53 = getelementptr inbounds %struct.resource, %struct.resource* %mem52, i32 0, i32 1, !dbg !2766
  store i64 %sub51, i64* %end53, align 8, !dbg !2767
  %52 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2768
  %mem54 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %52, i32 0, i32 11, !dbg !2769
  %flags55 = getelementptr inbounds %struct.resource, %struct.resource* %mem54, i32 0, i32 3, !dbg !2770
  store i64 512, i64* %flags55, align 8, !dbg !2771
  %53 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2772
  %is_added = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %53, i32 0, i32 2, !dbg !2773
  store i8 0, i8* %is_added, align 8, !dbg !2774
  %54 = load %struct.mcb_bus*, %struct.mcb_bus** %bus.addr, align 8, !dbg !2775
  %55 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2776
  %call56 = call i32 @mcb_device_register(%struct.mcb_bus* %54, %struct.mcb_device* %55) #7, !dbg !2777
  store i32 %call56, i32* %ret, align 4, !dbg !2778
  %56 = load i32, i32* %ret, align 4, !dbg !2779
  %cmp57 = icmp slt i32 %56, 0, !dbg !2781
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !2782

if.then59:                                        ; preds = %if.end38
  br label %err, !dbg !2783

if.end60:                                         ; preds = %if.end38
  store i32 0, i32* %retval, align 4, !dbg !2784
  br label %return, !dbg !2784

err:                                              ; preds = %if.then59, %if.then34, %if.then27, %if.then20
  call void @llvm.dbg.label(metadata !2785), !dbg !2786
  %57 = load %struct.mcb_device*, %struct.mcb_device** %mdev, align 8, !dbg !2787
  call void @mcb_free_dev(%struct.mcb_device* %57) #7, !dbg !2788
  %58 = load i32, i32* %ret, align 4, !dbg !2789
  store i32 %58, i32* %retval, align 4, !dbg !2790
  br label %return, !dbg !2790

return:                                           ; preds = %err, %if.end60, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !2791
  ret i32 %59, !dbg !2791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chameleon_parse_bdd(%struct.mcb_bus* %bus, %struct.chameleon_bar* %cb, i8* %base) #0 !dbg !2792 {
entry:
  %bus.addr = alloca %struct.mcb_bus*, align 8
  %cb.addr = alloca %struct.chameleon_bar*, align 8
  %base.addr = alloca i8*, align 8
  store %struct.mcb_bus* %bus, %struct.mcb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mcb_bus** %bus.addr, metadata !2795, metadata !DIExpression()), !dbg !2796
  store %struct.chameleon_bar* %cb, %struct.chameleon_bar** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chameleon_bar** %cb.addr, metadata !2797, metadata !DIExpression()), !dbg !2798
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !2799, metadata !DIExpression()), !dbg !2800
  ret i32 0, !dbg !2801
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2802 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2806, metadata !DIExpression()), !dbg !2811
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2813, metadata !DIExpression()), !dbg !2814
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2815, metadata !DIExpression()), !dbg !2816
  %0 = load i64, i64* %size.addr, align 8, !dbg !2817
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2819
  br i1 %1, label %if.then, label %if.end447, !dbg !2820

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2821
  %tobool = icmp ne i64 %2, 0, !dbg !2821
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2824

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2825
  br label %return, !dbg !2825

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2826
  %cmp = icmp ult i64 %3, 4096, !dbg !2828
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2829

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2830
  br label %return, !dbg !2830

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub = sub i64 %4, 1, !dbg !2831
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2831
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2831

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub4 = sub i64 %6, 1, !dbg !2831
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2831
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2831

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub6 = sub i64 %8, 1, !dbg !2831
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2831
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2831

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2831

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub9 = sub i64 %9, 1, !dbg !2831
  %and = and i64 %sub9, -9223372036854775808, !dbg !2831
  %tobool10 = icmp ne i64 %and, 0, !dbg !2831
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2831

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2831

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub13 = sub i64 %10, 1, !dbg !2831
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2831
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2831
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2831

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2831

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub18 = sub i64 %11, 1, !dbg !2831
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2831
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2831
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2831

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2831

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub23 = sub i64 %12, 1, !dbg !2831
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2831
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2831
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2831

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2831

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub28 = sub i64 %13, 1, !dbg !2831
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2831
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2831
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2831

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2831

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub33 = sub i64 %14, 1, !dbg !2831
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2831
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2831
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2831

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2831

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub38 = sub i64 %15, 1, !dbg !2831
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2831
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2831
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2831

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2831

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub43 = sub i64 %16, 1, !dbg !2831
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2831
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2831
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2831

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2831

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub48 = sub i64 %17, 1, !dbg !2831
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2831
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2831
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2831

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2831

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub53 = sub i64 %18, 1, !dbg !2831
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2831
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2831
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2831

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2831

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub58 = sub i64 %19, 1, !dbg !2831
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2831
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2831
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2831

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2831

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub63 = sub i64 %20, 1, !dbg !2831
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2831
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2831
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2831

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2831

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub68 = sub i64 %21, 1, !dbg !2831
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2831
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2831
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2831

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2831

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub73 = sub i64 %22, 1, !dbg !2831
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2831
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2831
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2831

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2831

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub78 = sub i64 %23, 1, !dbg !2831
  %and79 = and i64 %sub78, 562949953421312, !dbg !2831
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2831
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2831

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2831

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub83 = sub i64 %24, 1, !dbg !2831
  %and84 = and i64 %sub83, 281474976710656, !dbg !2831
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2831
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2831

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2831

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub88 = sub i64 %25, 1, !dbg !2831
  %and89 = and i64 %sub88, 140737488355328, !dbg !2831
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2831
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2831

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2831

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub93 = sub i64 %26, 1, !dbg !2831
  %and94 = and i64 %sub93, 70368744177664, !dbg !2831
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2831
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2831

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2831

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub98 = sub i64 %27, 1, !dbg !2831
  %and99 = and i64 %sub98, 35184372088832, !dbg !2831
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2831
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2831

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2831

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub103 = sub i64 %28, 1, !dbg !2831
  %and104 = and i64 %sub103, 17592186044416, !dbg !2831
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2831
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2831

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2831

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub108 = sub i64 %29, 1, !dbg !2831
  %and109 = and i64 %sub108, 8796093022208, !dbg !2831
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2831
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2831

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2831

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub113 = sub i64 %30, 1, !dbg !2831
  %and114 = and i64 %sub113, 4398046511104, !dbg !2831
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2831
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2831

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2831

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub118 = sub i64 %31, 1, !dbg !2831
  %and119 = and i64 %sub118, 2199023255552, !dbg !2831
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2831
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2831

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2831

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub123 = sub i64 %32, 1, !dbg !2831
  %and124 = and i64 %sub123, 1099511627776, !dbg !2831
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2831
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2831

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2831

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub128 = sub i64 %33, 1, !dbg !2831
  %and129 = and i64 %sub128, 549755813888, !dbg !2831
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2831
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2831

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2831

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub133 = sub i64 %34, 1, !dbg !2831
  %and134 = and i64 %sub133, 274877906944, !dbg !2831
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2831
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2831

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2831

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub138 = sub i64 %35, 1, !dbg !2831
  %and139 = and i64 %sub138, 137438953472, !dbg !2831
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2831
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2831

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2831

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub143 = sub i64 %36, 1, !dbg !2831
  %and144 = and i64 %sub143, 68719476736, !dbg !2831
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2831
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2831

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2831

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub148 = sub i64 %37, 1, !dbg !2831
  %and149 = and i64 %sub148, 34359738368, !dbg !2831
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2831
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2831

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2831

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub153 = sub i64 %38, 1, !dbg !2831
  %and154 = and i64 %sub153, 17179869184, !dbg !2831
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2831
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2831

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2831

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub158 = sub i64 %39, 1, !dbg !2831
  %and159 = and i64 %sub158, 8589934592, !dbg !2831
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2831
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2831

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2831

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub163 = sub i64 %40, 1, !dbg !2831
  %and164 = and i64 %sub163, 4294967296, !dbg !2831
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2831
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2831

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2831

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub168 = sub i64 %41, 1, !dbg !2831
  %and169 = and i64 %sub168, 2147483648, !dbg !2831
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2831
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2831

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2831

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub173 = sub i64 %42, 1, !dbg !2831
  %and174 = and i64 %sub173, 1073741824, !dbg !2831
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2831
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2831

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2831

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub178 = sub i64 %43, 1, !dbg !2831
  %and179 = and i64 %sub178, 536870912, !dbg !2831
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2831
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2831

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2831

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub183 = sub i64 %44, 1, !dbg !2831
  %and184 = and i64 %sub183, 268435456, !dbg !2831
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2831
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2831

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2831

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub188 = sub i64 %45, 1, !dbg !2831
  %and189 = and i64 %sub188, 134217728, !dbg !2831
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2831
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2831

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2831

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub193 = sub i64 %46, 1, !dbg !2831
  %and194 = and i64 %sub193, 67108864, !dbg !2831
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2831
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2831

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2831

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub198 = sub i64 %47, 1, !dbg !2831
  %and199 = and i64 %sub198, 33554432, !dbg !2831
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2831
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2831

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2831

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub203 = sub i64 %48, 1, !dbg !2831
  %and204 = and i64 %sub203, 16777216, !dbg !2831
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2831
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2831

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2831

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub208 = sub i64 %49, 1, !dbg !2831
  %and209 = and i64 %sub208, 8388608, !dbg !2831
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2831
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2831

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2831

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub213 = sub i64 %50, 1, !dbg !2831
  %and214 = and i64 %sub213, 4194304, !dbg !2831
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2831
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2831

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2831

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub218 = sub i64 %51, 1, !dbg !2831
  %and219 = and i64 %sub218, 2097152, !dbg !2831
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2831
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2831

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2831

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub223 = sub i64 %52, 1, !dbg !2831
  %and224 = and i64 %sub223, 1048576, !dbg !2831
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2831
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2831

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2831

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub228 = sub i64 %53, 1, !dbg !2831
  %and229 = and i64 %sub228, 524288, !dbg !2831
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2831
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2831

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2831

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub233 = sub i64 %54, 1, !dbg !2831
  %and234 = and i64 %sub233, 262144, !dbg !2831
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2831
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2831

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2831

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub238 = sub i64 %55, 1, !dbg !2831
  %and239 = and i64 %sub238, 131072, !dbg !2831
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2831
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2831

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2831

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub243 = sub i64 %56, 1, !dbg !2831
  %and244 = and i64 %sub243, 65536, !dbg !2831
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2831
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2831

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2831

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub248 = sub i64 %57, 1, !dbg !2831
  %and249 = and i64 %sub248, 32768, !dbg !2831
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2831
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2831

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2831

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub253 = sub i64 %58, 1, !dbg !2831
  %and254 = and i64 %sub253, 16384, !dbg !2831
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2831
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2831

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2831

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub258 = sub i64 %59, 1, !dbg !2831
  %and259 = and i64 %sub258, 8192, !dbg !2831
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2831
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2831

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2831

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub263 = sub i64 %60, 1, !dbg !2831
  %and264 = and i64 %sub263, 4096, !dbg !2831
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2831
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2831

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2831

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub268 = sub i64 %61, 1, !dbg !2831
  %and269 = and i64 %sub268, 2048, !dbg !2831
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2831
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2831

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2831

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub273 = sub i64 %62, 1, !dbg !2831
  %and274 = and i64 %sub273, 1024, !dbg !2831
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2831
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2831

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2831

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub278 = sub i64 %63, 1, !dbg !2831
  %and279 = and i64 %sub278, 512, !dbg !2831
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2831
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2831

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2831

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub283 = sub i64 %64, 1, !dbg !2831
  %and284 = and i64 %sub283, 256, !dbg !2831
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2831
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2831

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2831

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub288 = sub i64 %65, 1, !dbg !2831
  %and289 = and i64 %sub288, 128, !dbg !2831
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2831
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2831

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2831

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub293 = sub i64 %66, 1, !dbg !2831
  %and294 = and i64 %sub293, 64, !dbg !2831
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2831
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2831

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2831

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub298 = sub i64 %67, 1, !dbg !2831
  %and299 = and i64 %sub298, 32, !dbg !2831
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2831
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2831

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2831

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub303 = sub i64 %68, 1, !dbg !2831
  %and304 = and i64 %sub303, 16, !dbg !2831
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2831
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2831

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2831

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub308 = sub i64 %69, 1, !dbg !2831
  %and309 = and i64 %sub308, 8, !dbg !2831
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2831
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2831

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2831

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub313 = sub i64 %70, 1, !dbg !2831
  %and314 = and i64 %sub313, 4, !dbg !2831
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2831
  %71 = zext i1 %tobool315 to i64, !dbg !2831
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2831
  br label %cond.end, !dbg !2831

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2831
  br label %cond.end317, !dbg !2831

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2831
  br label %cond.end319, !dbg !2831

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2831
  br label %cond.end321, !dbg !2831

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2831
  br label %cond.end323, !dbg !2831

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2831
  br label %cond.end325, !dbg !2831

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2831
  br label %cond.end327, !dbg !2831

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2831
  br label %cond.end329, !dbg !2831

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2831
  br label %cond.end331, !dbg !2831

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2831
  br label %cond.end333, !dbg !2831

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2831
  br label %cond.end335, !dbg !2831

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2831
  br label %cond.end337, !dbg !2831

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2831
  br label %cond.end339, !dbg !2831

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2831
  br label %cond.end341, !dbg !2831

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2831
  br label %cond.end343, !dbg !2831

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2831
  br label %cond.end345, !dbg !2831

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2831
  br label %cond.end347, !dbg !2831

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2831
  br label %cond.end349, !dbg !2831

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2831
  br label %cond.end351, !dbg !2831

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2831
  br label %cond.end353, !dbg !2831

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2831
  br label %cond.end355, !dbg !2831

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2831
  br label %cond.end357, !dbg !2831

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2831
  br label %cond.end359, !dbg !2831

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2831
  br label %cond.end361, !dbg !2831

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2831
  br label %cond.end363, !dbg !2831

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2831
  br label %cond.end365, !dbg !2831

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2831
  br label %cond.end367, !dbg !2831

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2831
  br label %cond.end369, !dbg !2831

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2831
  br label %cond.end371, !dbg !2831

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2831
  br label %cond.end373, !dbg !2831

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2831
  br label %cond.end375, !dbg !2831

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2831
  br label %cond.end377, !dbg !2831

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2831
  br label %cond.end379, !dbg !2831

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2831
  br label %cond.end381, !dbg !2831

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2831
  br label %cond.end383, !dbg !2831

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2831
  br label %cond.end385, !dbg !2831

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2831
  br label %cond.end387, !dbg !2831

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2831
  br label %cond.end389, !dbg !2831

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2831
  br label %cond.end391, !dbg !2831

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2831
  br label %cond.end393, !dbg !2831

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2831
  br label %cond.end395, !dbg !2831

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2831
  br label %cond.end397, !dbg !2831

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2831
  br label %cond.end399, !dbg !2831

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2831
  br label %cond.end401, !dbg !2831

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2831
  br label %cond.end403, !dbg !2831

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2831
  br label %cond.end405, !dbg !2831

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2831
  br label %cond.end407, !dbg !2831

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2831
  br label %cond.end409, !dbg !2831

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2831
  br label %cond.end411, !dbg !2831

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2831
  br label %cond.end413, !dbg !2831

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2831
  br label %cond.end415, !dbg !2831

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2831
  br label %cond.end417, !dbg !2831

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2831
  br label %cond.end419, !dbg !2831

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2831
  br label %cond.end421, !dbg !2831

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2831
  br label %cond.end423, !dbg !2831

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2831
  br label %cond.end425, !dbg !2831

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2831
  br label %cond.end427, !dbg !2831

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2831
  br label %cond.end429, !dbg !2831

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2831
  br label %cond.end431, !dbg !2831

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2831
  br label %cond.end433, !dbg !2831

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2831
  br label %cond.end435, !dbg !2831

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2831
  br label %cond.end437, !dbg !2831

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2831
  br label %cond.end440, !dbg !2831

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2831

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2831
  br label %cond.end444, !dbg !2831

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2831
  %sub443 = sub i64 %72, 1, !dbg !2831
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2831
  br label %cond.end444, !dbg !2831

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2831
  %sub446 = sub i32 %cond445, 12, !dbg !2832
  %add = add i32 %sub446, 1, !dbg !2833
  store i32 %add, i32* %retval, align 4, !dbg !2834
  br label %return, !dbg !2834

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2835
  %dec = add i64 %73, -1, !dbg !2835
  store i64 %dec, i64* %size.addr, align 8, !dbg !2835
  %74 = load i64, i64* %size.addr, align 8, !dbg !2836
  %shr = lshr i64 %74, 12, !dbg !2836
  store i64 %shr, i64* %size.addr, align 8, !dbg !2836
  %75 = load i64, i64* %size.addr, align 8, !dbg !2837
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2814
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2838
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2839
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !2838, !srcloc !2840
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2838
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2841
  %add.i = add i32 %79, 1, !dbg !2842
  store i32 %add.i, i32* %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2844
  ret i32 %80, !dbg !2844
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2845 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2806, metadata !DIExpression()), !dbg !2849
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2813, metadata !DIExpression()), !dbg !2851
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2852, metadata !DIExpression()), !dbg !2853
  %0 = load i64, i64* %n.addr, align 8, !dbg !2854
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2851
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2855
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2856
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !2855, !srcloc !2840
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2855
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2857
  %add.i = add i32 %4, 1, !dbg !2858
  %sub = sub i32 %add.i, 1, !dbg !2859
  ret i32 %sub, !dbg !2860
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2861 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2865, metadata !DIExpression()), !dbg !2866
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2867, metadata !DIExpression()), !dbg !2868
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2869, metadata !DIExpression()), !dbg !2870
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2871, metadata !DIExpression()), !dbg !2872
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2873
  ret i8* %0, !dbg !2874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !2875 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2882, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2884, metadata !DIExpression()), !dbg !2883
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2883
  %1 = bitcast i8* %0 to i32*, !dbg !2883
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #9, !dbg !2883, !srcloc !2885
  store i32 %2, i32* %ret, align 4, !dbg !2883
  %3 = load i32, i32* %ret, align 4, !dbg !2883
  ret i32 %3, !dbg !2883
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !2886 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2889, metadata !DIExpression()), !dbg !2890
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2893, metadata !DIExpression()), !dbg !2894
  %0 = load i64, i64* %n.addr, align 8, !dbg !2895
  %1 = load i64, i64* %size.addr, align 8, !dbg !2896
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2897
  %or = or i32 %2, 256, !dbg !2898
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #7, !dbg !2899
  ret i8* %call, !dbg !2900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @chameleon_parse_bar(i8* %base, %struct.chameleon_bar* %cb, i32 %bar_count) #0 !dbg !2901 {
entry:
  %base.addr = alloca i8*, align 8
  %cb.addr = alloca %struct.chameleon_bar*, align 8
  %bar_count.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !2904, metadata !DIExpression()), !dbg !2905
  store %struct.chameleon_bar* %cb, %struct.chameleon_bar** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chameleon_bar** %cb.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  store i32 %bar_count, i32* %bar_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar_count.addr, metadata !2908, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2910, metadata !DIExpression()), !dbg !2911
  %0 = load i8*, i8** %base.addr, align 8, !dbg !2912
  store i8* %0, i8** %p, align 8, !dbg !2911
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2913, metadata !DIExpression()), !dbg !2914
  %1 = load i8*, i8** %p, align 8, !dbg !2915
  %add.ptr = getelementptr i8, i8* %1, i64 4, !dbg !2915
  store i8* %add.ptr, i8** %p, align 8, !dbg !2915
  store i32 0, i32* %i, align 4, !dbg !2916
  br label %for.cond, !dbg !2918

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !2919
  %3 = load i32, i32* %bar_count.addr, align 4, !dbg !2921
  %cmp = icmp slt i32 %2, %3, !dbg !2922
  br i1 %cmp, label %for.body, label %for.end, !dbg !2923

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8, !dbg !2924
  %call = call i32 @readl(i8* %4) #7, !dbg !2926
  %5 = load %struct.chameleon_bar*, %struct.chameleon_bar** %cb.addr, align 8, !dbg !2927
  %6 = load i32, i32* %i, align 4, !dbg !2928
  %idxprom = sext i32 %6 to i64, !dbg !2927
  %arrayidx = getelementptr %struct.chameleon_bar, %struct.chameleon_bar* %5, i64 %idxprom, !dbg !2927
  %addr = getelementptr inbounds %struct.chameleon_bar, %struct.chameleon_bar* %arrayidx, i32 0, i32 0, !dbg !2929
  store i32 %call, i32* %addr, align 4, !dbg !2930
  %7 = load i8*, i8** %p, align 8, !dbg !2931
  %add.ptr1 = getelementptr i8, i8* %7, i64 4, !dbg !2932
  %call2 = call i32 @readl(i8* %add.ptr1) #7, !dbg !2933
  %8 = load %struct.chameleon_bar*, %struct.chameleon_bar** %cb.addr, align 8, !dbg !2934
  %9 = load i32, i32* %i, align 4, !dbg !2935
  %idxprom3 = sext i32 %9 to i64, !dbg !2934
  %arrayidx4 = getelementptr %struct.chameleon_bar, %struct.chameleon_bar* %8, i64 %idxprom3, !dbg !2934
  %size = getelementptr inbounds %struct.chameleon_bar, %struct.chameleon_bar* %arrayidx4, i32 0, i32 1, !dbg !2936
  store i32 %call2, i32* %size, align 4, !dbg !2937
  %10 = load i8*, i8** %p, align 8, !dbg !2938
  %add.ptr5 = getelementptr i8, i8* %10, i64 8, !dbg !2938
  store i8* %add.ptr5, i8** %p, align 8, !dbg !2938
  br label %for.inc, !dbg !2939

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !2940
  %inc = add i32 %11, 1, !dbg !2940
  store i32 %inc, i32* %i, align 4, !dbg !2940
  br label %for.cond, !dbg !2941, !llvm.loop !2942

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2944
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !2945 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2264, metadata !DIExpression()), !dbg !2946
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2274, metadata !DIExpression()), !dbg !2950
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2276, metadata !DIExpression()), !dbg !2951
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2278, metadata !DIExpression()), !dbg !2952
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2280, metadata !DIExpression()), !dbg !2953
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2286, metadata !DIExpression()), !dbg !2955
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2292, metadata !DIExpression()), !dbg !2957
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2301, metadata !DIExpression()), !dbg !2960
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2303, metadata !DIExpression()), !dbg !2961
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2305, metadata !DIExpression()), !dbg !2962
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2307, metadata !DIExpression()), !dbg !2963
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2309, metadata !DIExpression()), !dbg !2964
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2311, metadata !DIExpression()), !dbg !2965
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2313, metadata !DIExpression()), !dbg !2966
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2315, metadata !DIExpression()), !dbg !2967
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2968, metadata !DIExpression()), !dbg !2969
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2970, metadata !DIExpression()), !dbg !2971
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2974, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2976, metadata !DIExpression()), !dbg !2979
  %0 = load i64, i64* %n.addr, align 8, !dbg !2979
  store i64 %0, i64* %__a, align 8, !dbg !2979
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2980, metadata !DIExpression()), !dbg !2979
  %1 = load i64, i64* %size.addr, align 8, !dbg !2979
  store i64 %1, i64* %__b, align 8, !dbg !2979
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2981, metadata !DIExpression()), !dbg !2979
  store i64* %bytes, i64** %__d, align 8, !dbg !2979
  %cmp = icmp eq i64* %__a, %__b, !dbg !2979
  %conv = zext i1 %cmp to i32, !dbg !2979
  %2 = load i64*, i64** %__d, align 8, !dbg !2979
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2979
  %conv2 = zext i1 %cmp1 to i32, !dbg !2979
  %3 = load i64, i64* %__a, align 8, !dbg !2979
  %4 = load i64, i64* %__b, align 8, !dbg !2979
  %5 = load i64*, i64** %__d, align 8, !dbg !2979
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2979
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2979
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2979
  store i64 %8, i64* %5, align 8, !dbg !2979
  %frombool = zext i1 %7 to i8, !dbg !2979
  store i8 %frombool, i8* %tmp, align 1, !dbg !2979
  %9 = load i8, i8* %tmp, align 1, !dbg !2979
  %tobool = trunc i8 %9 to i1, !dbg !2979
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !2983
  %lnot = xor i1 %call, true, !dbg !2983
  %lnot3 = xor i1 %lnot, true, !dbg !2983
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2983
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2983
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2983
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2984

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2985
  br label %return, !dbg !2985

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !2986
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2987
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !2988

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !2989
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2990
  br i1 %13, label %if.then6, label %if.end8, !dbg !2991

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !2992
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2993
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !2994
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !2995
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !2996

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !2997
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !2998
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2999

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3000
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !3001
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !3002
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !3003
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2964
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3004
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3005
  %24 = load i32, i32* %order.i.i, align 4, !dbg !3006
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3007
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3008
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3009
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !3010
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3010
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3010
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3010
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3010
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3011
  br label %kmalloc.exit, !dbg !3011

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !3012
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3013
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !3013
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3014

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3015
  br label %kmalloc_index.exit.i, !dbg !3015

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3016
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !3017
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3018

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3019
  br label %kmalloc_index.exit.i, !dbg !3019

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3020
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3021
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3022

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3023
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3024
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3025

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3026
  br label %kmalloc_index.exit.i, !dbg !3026

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3027
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3028
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3029

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3030
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3031
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3032

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3033
  br label %kmalloc_index.exit.i, !dbg !3033

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3034
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3035
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3036

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3037
  br label %kmalloc_index.exit.i, !dbg !3037

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3038
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3039
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3040

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3041
  br label %kmalloc_index.exit.i, !dbg !3041

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3042
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3043
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3044

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3045
  br label %kmalloc_index.exit.i, !dbg !3045

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3046
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3047
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3048

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3049
  br label %kmalloc_index.exit.i, !dbg !3049

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3050
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3051
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3052

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3053
  br label %kmalloc_index.exit.i, !dbg !3053

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3054
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3055
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3056

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3057
  br label %kmalloc_index.exit.i, !dbg !3057

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3058
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3059
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3060

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3061
  br label %kmalloc_index.exit.i, !dbg !3061

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3062
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3063
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3064

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3065
  br label %kmalloc_index.exit.i, !dbg !3065

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3066
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3067
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3068

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3069
  br label %kmalloc_index.exit.i, !dbg !3069

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3070
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3071
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3072

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3073
  br label %kmalloc_index.exit.i, !dbg !3073

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3074
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3075
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3076

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3077
  br label %kmalloc_index.exit.i, !dbg !3077

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3078
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3079
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3080

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3081
  br label %kmalloc_index.exit.i, !dbg !3081

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3082
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3083
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3084

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3085
  br label %kmalloc_index.exit.i, !dbg !3085

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3086
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3087
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3088

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3089
  br label %kmalloc_index.exit.i, !dbg !3089

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3090
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3091
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3092

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3093
  br label %kmalloc_index.exit.i, !dbg !3093

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3094
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3095
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3096

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3097
  br label %kmalloc_index.exit.i, !dbg !3097

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3098
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3099
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3100

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3101
  br label %kmalloc_index.exit.i, !dbg !3101

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3102
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3103
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3104

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3105
  br label %kmalloc_index.exit.i, !dbg !3105

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3106
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3107
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3108

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3109
  br label %kmalloc_index.exit.i, !dbg !3109

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3110
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3111
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3112

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3113
  br label %kmalloc_index.exit.i, !dbg !3113

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3114
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3115
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3116

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3117
  br label %kmalloc_index.exit.i, !dbg !3117

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3118
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3119
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3120

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3121
  br label %kmalloc_index.exit.i, !dbg !3121

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3122
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3123
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3124

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3125
  br label %kmalloc_index.exit.i, !dbg !3125

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3126
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3127
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3128

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3129
  br label %kmalloc_index.exit.i, !dbg !3129

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3130, !srcloc !2491
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !3131, !srcloc !2495
  unreachable, !dbg !3132

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3133
  store i32 %59, i32* %index.i, align 4, !dbg !3134
  %60 = load i32, i32* %index.i, align 4, !dbg !3135
  %tobool.i = icmp ne i32 %60, 0, !dbg !3135
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3136

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3137
  br label %kmalloc.exit, !dbg !3137

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3138
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3139
  %and.i.i = and i32 %62, 17, !dbg !3139
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3139
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3139
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3139
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3139
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3140

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3141
  br label %kmalloc_type.exit.i, !dbg !3141

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3142
  %and2.i.i = and i32 %63, 1, !dbg !3143
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3142
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3142
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3142
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3144
  br label %kmalloc_type.exit.i, !dbg !3144

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3145
  %idxprom.i = zext i32 %65 to i64, !dbg !3146
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3146
  %66 = load i32, i32* %index.i, align 4, !dbg !3147
  %idxprom6.i = zext i32 %66 to i64, !dbg !3146
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3146
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3146
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3148
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3149
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3150
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3151
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !3152
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3152
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3152
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3152
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3152
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2952
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3153
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3154
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3155
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3156
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !3157
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3158
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3159
  store i8* %76, i8** %retval.i, align 8, !dbg !3160
  br label %kmalloc.exit, !dbg !3160

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3161
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3162
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !3163
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3163
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3163
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3163
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3163
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3164
  br label %kmalloc.exit, !dbg !3164

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3165
  store i8* %79, i8** %retval, align 8, !dbg !3166
  br label %return, !dbg !3166

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3167
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3168
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !3169
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3169
  %maskedptr = and i64 %ptrint, 7, !dbg !3169
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3169
  call void @llvm.assume(i1 %maskcond), !dbg !3169
  store i8* %call9, i8** %retval, align 8, !dbg !3170
  br label %return, !dbg !3170

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3171
  ret i8* %82, !dbg !3171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3172 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3176, metadata !DIExpression()), !dbg !3177
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3178
  %tobool = trunc i8 %0 to i1, !dbg !3178
  %lnot = xor i1 %tobool, true, !dbg !3178
  %lnot1 = xor i1 %lnot, true, !dbg !3178
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3178
  %conv = sext i32 %lnot.ext to i64, !dbg !3178
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3178
  ret i1 %tobool2, !dbg !3179
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local %struct.mcb_device* @mcb_alloc_dev(%struct.mcb_bus*) #2

; Function Attrs: noredzone
declare dso_local i32 @mcb_device_register(%struct.mcb_bus*, %struct.mcb_device*) #2

; Function Attrs: noredzone
declare dso_local void @mcb_free_dev(%struct.mcb_device*) #2

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !68, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/mcb/mcb-parse.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !56, !63}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !10, line: 16, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !16, line: 26, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !22, line: 44, baseType: !5, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !28, line: 343, baseType: !5, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !35, line: 524, baseType: !5, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !35, line: 502, baseType: !5, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chameleon_descriptor_type", file: !49, line: 12, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "drivers/mcb/mcb-internal.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "CHAMELEON_DTYPE_GENERAL", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "CHAMELEON_DTYPE_BRIDGE", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "CHAMELEON_DTYPE_CPU", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "CHAMELEON_DTYPE_BAR", value: 3, isUnsigned: true)
!55 = !DIEnumerator(name: "CHAMELEON_DTYPE_END", value: 15, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !57, line: 305, baseType: !5, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 10, baseType: !5, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!68 = !{!69, !71, !74, !76, !77, !79}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !70, line: 148, baseType: !5)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !72, line: 24, baseType: !73)
!72 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !75, line: 29, baseType: !71)
!75 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chameleon_gdd", file: !49, line: 65, size: 128, elements: !81)
!81 = !{!82, !85, !86, !87}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reg1", scope: !80, file: !49, line: 66, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !75, line: 31, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !72, line: 27, baseType: !5)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reg2", scope: !80, file: !49, line: 67, baseType: !83, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !80, file: !49, line: 68, baseType: !83, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !80, file: !49, line: 69, baseType: !83, size: 32, offset: 96)
!88 = !{i32 7, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"Code Model", i32 2}
!92 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!93 = distinct !DISubprogram(name: "chameleon_parse_cells", scope: !1, file: !1, line: 177, type: !94, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !140)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !97, !1119, !76}
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcb_bus", file: !99, line: 31, size: 5888, elements: !100)
!99 = !DIFile(filename: "./include/linux/mcb.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !2043, !2044, !2045, !2046, !2047, !2048, !2052}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !98, file: !99, line: 32, baseType: !102, size: 5568)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !103)
!103 = !{!104, !1588, !1590, !1593, !1594, !1645, !1742, !1743, !1744, !1745, !1746, !1755, !1860, !1873, !1876, !1877, !1881, !1883, !1884, !1885, !1889, !1895, !1896, !1899, !1903, !1993, !1996, !1997, !1998, !1999, !2031, !2032, !2033, !2036, !2039, !2040, !2041, !2042}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !102, file: !28, line: 462, baseType: !105, size: 512)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !106, line: 64, size: 512, elements: !107)
!106 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !112, !118, !120, !180, !1426, !1578, !1583, !1584, !1585, !1586, !1587}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !106, line: 65, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !105, file: !106, line: 66, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !70, line: 178, size: 128, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !70, line: 179, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !70, line: 179, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !105, file: !106, line: 67, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !105, file: !106, line: 68, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !106, line: 192, size: 704, elements: !123)
!123 = !{!124, !125, !141, !142}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !122, file: !106, line: 193, baseType: !113, size: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !122, file: !106, line: 194, baseType: !126, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !127, line: 83, baseType: !128)
!127 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !127, line: 71, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !127, line: 72, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !127, line: 72, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !131, file: !127, line: 73, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !127, line: 20, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !134, file: !127, line: 21, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !138, line: 25, baseType: !139)
!138 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 25, elements: !140)
!140 = !{}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !122, file: !106, line: 195, baseType: !105, size: 512, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !122, file: !106, line: 196, baseType: !143, size: 64, offset: 640)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !106, line: 156, size: 192, elements: !146)
!146 = !{!147, !152, !157}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !145, file: !106, line: 157, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!96, !121, !119}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !106, line: 158, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!109, !121, !119}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !145, file: !106, line: 159, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!96, !121, !119, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !106, line: 148, size: 20736, elements: !164)
!164 = !{!165, !170, !174, !175, !179}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !163, file: !106, line: 149, baseType: !166, size: 192)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 192, elements: !168)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!168 = !{!169}
!169 = !DISubrange(count: 3)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !163, file: !106, line: 150, baseType: !171, size: 4096, offset: 192)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 4096, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !163, file: !106, line: 151, baseType: !96, size: 32, offset: 4288)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !163, file: !106, line: 152, baseType: !176, size: 16384, offset: 4320)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 16384, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 2048)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !163, file: !106, line: 153, baseType: !96, size: 32, offset: 20704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !105, file: !106, line: 69, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !106, line: 138, size: 448, elements: !183)
!183 = !{!184, !188, !217, !219, !1373, !1404, !1408}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !182, file: !106, line: 139, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !119}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !182, file: !106, line: 140, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !192, line: 230, size: 128, elements: !193)
!192 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!193 = !{!194, !209}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !191, file: !192, line: 231, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !119, !203, !167}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !70, line: 60, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !200, line: 73, baseType: !201)
!200 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !200, line: 15, baseType: !202)
!202 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !192, line: 30, size: 128, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !192, line: 31, baseType: !109, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !204, file: !192, line: 32, baseType: !208, size: 16, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !70, line: 19, baseType: !73)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !191, file: !192, line: 232, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!198, !119, !203, !109, !213}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 55, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !200, line: 72, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !200, line: 16, baseType: !216)
!216 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !182, file: !106, line: 141, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !182, file: !106, line: 142, baseType: !220, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !192, line: 84, size: 320, elements: !224)
!224 = !{!225, !226, !230, !1370, !1371}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !192, line: 85, baseType: !109, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !223, file: !192, line: 86, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!208, !119, !203, !96}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !223, file: !192, line: 88, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!208, !119, !234, !96}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !192, line: 168, size: 448, elements: !236)
!236 = !{!237, !238, !239, !240, !250, !251}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !235, file: !192, line: 169, baseType: !204, size: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !235, file: !192, line: 170, baseType: !213, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !235, file: !192, line: 171, baseType: !76, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !235, file: !192, line: 172, baseType: !241, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!198, !244, !119, !234, !167, !247, !213}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !246, line: 526, flags: DIFlagFwdDecl)
!246 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !70, line: 46, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !200, line: 88, baseType: !249)
!249 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !235, file: !192, line: 174, baseType: !241, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !235, file: !192, line: 176, baseType: !252, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!96, !244, !119, !234, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !257, line: 305, size: 1472, elements: !258)
!257 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!258 = !{!259, !260, !261, !262, !263, !271, !272, !1344, !1350, !1351, !1356, !1357, !1360, !1364, !1365, !1366, !1367, !1368}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !256, file: !257, line: 308, baseType: !216, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !256, file: !257, line: 309, baseType: !216, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !256, file: !257, line: 313, baseType: !255, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !256, file: !257, line: 313, baseType: !255, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !256, file: !257, line: 315, baseType: !264, size: 192, align: 64, offset: 256)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !265, line: 24, size: 192, align: 64, elements: !266)
!265 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!266 = !{!267, !268, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !264, file: !265, line: 25, baseType: !216, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !264, file: !265, line: 26, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !264, file: !265, line: 27, baseType: !269, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !256, file: !257, line: 323, baseType: !216, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !256, file: !257, line: 327, baseType: !273, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !257, line: 388, size: 7296, elements: !275)
!275 = !{!276, !1340}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !257, line: 389, baseType: !277, size: 7296)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !257, line: 389, size: 7296, elements: !278)
!278 = !{!279, !280, !284, !289, !293, !294, !295, !296, !297, !305, !310, !311, !312, !313, !322, !323, !324, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !359, !367, !370, !401, !402, !1311, !1312, !1315, !1318, !1319, !1322, !1323, !1324, !1327, !1339}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !277, file: !257, line: 390, baseType: !255, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !277, file: !257, line: 391, baseType: !281, size: 64, offset: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !265, line: 31, size: 64, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !281, file: !265, line: 32, baseType: !269, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !277, file: !257, line: 392, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !286, line: 23, baseType: !287)
!286 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !72, line: 31, baseType: !288)
!288 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !277, file: !257, line: 394, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!216, !244, !216, !216, !216, !216}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !277, file: !257, line: 398, baseType: !216, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !277, file: !257, line: 399, baseType: !216, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !277, file: !257, line: 405, baseType: !216, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !277, file: !257, line: 406, baseType: !216, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !277, file: !257, line: 407, baseType: !298, size: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !246, line: 286, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 286, size: 64, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !300, file: !246, line: 286, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !304, line: 18, baseType: !216)
!304 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !277, file: !257, line: 416, baseType: !306, size: 32, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !70, line: 168, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 166, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !307, file: !70, line: 167, baseType: !96, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !277, file: !257, line: 428, baseType: !306, size: 32, offset: 608)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !277, file: !257, line: 437, baseType: !306, size: 32, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !277, file: !257, line: 447, baseType: !306, size: 32, offset: 672)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !277, file: !257, line: 450, baseType: !314, size: 64, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !315, line: 13, baseType: !316)
!315 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !70, line: 175, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 173, size: 64, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !317, file: !70, line: 174, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !286, line: 22, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !72, line: 30, baseType: !249)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !277, file: !257, line: 452, baseType: !96, size: 32, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !277, file: !257, line: 454, baseType: !126, offset: 800)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !277, file: !257, line: 457, baseType: !325, size: 256, offset: 832)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !326, line: 35, size: 256, elements: !327)
!326 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!327 = !{!328, !329, !330, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !325, file: !326, line: 36, baseType: !314, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !325, file: !326, line: 42, baseType: !314, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !325, file: !326, line: 46, baseType: !331, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !127, line: 29, baseType: !134)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !325, file: !326, line: 47, baseType: !113, size: 128, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !277, file: !257, line: 459, baseType: !113, size: 128, offset: 1088)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !277, file: !257, line: 466, baseType: !216, size: 64, offset: 1216)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !277, file: !257, line: 467, baseType: !216, size: 64, offset: 1280)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !277, file: !257, line: 469, baseType: !216, size: 64, offset: 1344)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !277, file: !257, line: 470, baseType: !216, size: 64, offset: 1408)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !277, file: !257, line: 471, baseType: !316, size: 64, offset: 1472)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !277, file: !257, line: 472, baseType: !216, size: 64, offset: 1536)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !277, file: !257, line: 473, baseType: !216, size: 64, offset: 1600)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !277, file: !257, line: 474, baseType: !216, size: 64, offset: 1664)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !277, file: !257, line: 475, baseType: !216, size: 64, offset: 1728)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !277, file: !257, line: 477, baseType: !126, offset: 1792)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !277, file: !257, line: 478, baseType: !216, size: 64, offset: 1792)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !277, file: !257, line: 478, baseType: !216, size: 64, offset: 1856)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !277, file: !257, line: 478, baseType: !216, size: 64, offset: 1920)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !277, file: !257, line: 478, baseType: !216, size: 64, offset: 1984)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !277, file: !257, line: 479, baseType: !216, size: 64, offset: 2048)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !277, file: !257, line: 479, baseType: !216, size: 64, offset: 2112)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !277, file: !257, line: 479, baseType: !216, size: 64, offset: 2176)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !277, file: !257, line: 480, baseType: !216, size: 64, offset: 2240)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !277, file: !257, line: 480, baseType: !216, size: 64, offset: 2304)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !277, file: !257, line: 480, baseType: !216, size: 64, offset: 2368)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !277, file: !257, line: 480, baseType: !216, size: 64, offset: 2432)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !277, file: !257, line: 482, baseType: !356, size: 2816, offset: 2496)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 2816, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 44)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !277, file: !257, line: 488, baseType: !360, size: 256, offset: 5312)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !361, line: 60, size: 256, elements: !362)
!361 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !360, file: !361, line: 61, baseType: !364, size: 256)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 4)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !277, file: !257, line: 490, baseType: !368, size: 64, offset: 5568)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !257, line: 490, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !277, file: !257, line: 493, baseType: !371, size: 896, offset: 5632)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !372, line: 53, baseType: !373)
!372 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 13, size: 896, elements: !374)
!374 = !{!375, !376, !377, !378, !381, !382, !389, !390, !394, !395, !397}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !373, file: !372, line: 18, baseType: !285, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !373, file: !372, line: 28, baseType: !316, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !373, file: !372, line: 31, baseType: !325, size: 256, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !373, file: !372, line: 32, baseType: !379, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !372, line: 32, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !373, file: !372, line: 37, baseType: !73, size: 16, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !373, file: !372, line: 40, baseType: !383, size: 192, offset: 512)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !384, line: 53, size: 192, elements: !385)
!384 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !383, file: !384, line: 54, baseType: !314, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !383, file: !384, line: 55, baseType: !126, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !383, file: !384, line: 59, baseType: !113, size: 128, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !373, file: !372, line: 41, baseType: !76, size: 64, offset: 704)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !373, file: !372, line: 42, baseType: !391, size: 64, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !372, line: 42, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !373, file: !372, line: 44, baseType: !306, size: 32, offset: 832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !373, file: !372, line: 50, baseType: !396, size: 16, offset: 864)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !286, line: 19, baseType: !71)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !373, file: !372, line: 51, baseType: !398, size: 16, offset: 880)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !286, line: 18, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !72, line: 23, baseType: !400)
!400 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !257, line: 495, baseType: !216, size: 64, offset: 6528)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !277, file: !257, line: 497, baseType: !403, size: 64, offset: 6592)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !257, line: 381, size: 384, elements: !405)
!405 = !{!406, !407, !1310}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !404, file: !257, line: 382, baseType: !306, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !404, file: !257, line: 383, baseType: !408, size: 128, offset: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !257, line: 376, size: 128, elements: !409)
!409 = !{!410, !1308}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !408, file: !257, line: 377, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !413, line: 640, size: 48640, elements: !414)
!413 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!414 = !{!415, !422, !424, !425, !431, !432, !433, !434, !435, !436, !437, !438, !442, !460, !471, !566, !567, !568, !579, !580, !582, !583, !584, !585, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !664, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !720, !722, !723, !724, !736, !738, !739, !740, !741, !742, !748, !749, !750, !751, !752, !753, !754, !766, !771, !775, !776, !777, !780, !784, !787, !790, !793, !796, !799, !802, !805, !811, !812, !813, !819, !820, !821, !822, !823, !832, !833, !834, !835, !836, !841, !842, !843, !846, !847, !850, !853, !856, !859, !862, !865, !866, !946, !949, !952, !953, !956, !957, !958, !964, !965, !966, !979, !980, !981, !993, !998, !1001, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !412, file: !413, line: 646, baseType: !416, size: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !417, line: 56, size: 128, elements: !418)
!417 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !417, line: 57, baseType: !216, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !416, file: !417, line: 58, baseType: !421, size: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !286, line: 21, baseType: !84)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !412, file: !413, line: 649, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !202)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !412, file: !413, line: 657, baseType: !76, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !412, file: !413, line: 658, baseType: !426, size: 32, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !427, line: 113, baseType: !428)
!427 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !427, line: 111, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !428, file: !427, line: 112, baseType: !306, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !413, line: 660, baseType: !5, size: 32, offset: 288)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !412, file: !413, line: 661, baseType: !5, size: 32, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !412, file: !413, line: 684, baseType: !96, size: 32, offset: 352)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !412, file: !413, line: 686, baseType: !96, size: 32, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !412, file: !413, line: 687, baseType: !96, size: 32, offset: 416)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !412, file: !413, line: 688, baseType: !96, size: 32, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !412, file: !413, line: 689, baseType: !5, size: 32, offset: 480)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !412, file: !413, line: 691, baseType: !439, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !413, line: 691, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !412, file: !413, line: 692, baseType: !443, size: 832, offset: 576)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !413, line: 451, size: 832, elements: !444)
!444 = !{!445, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !443, file: !413, line: 453, baseType: !446, size: 128)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !413, line: 325, size: 128, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !446, file: !413, line: 326, baseType: !216, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !446, file: !413, line: 327, baseType: !421, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !443, file: !413, line: 454, baseType: !264, size: 192, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !443, file: !413, line: 455, baseType: !113, size: 128, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !443, file: !413, line: 456, baseType: !5, size: 32, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !443, file: !413, line: 458, baseType: !285, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !443, file: !413, line: 459, baseType: !285, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !443, file: !413, line: 460, baseType: !285, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !443, file: !413, line: 461, baseType: !285, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !443, file: !413, line: 463, baseType: !285, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !443, file: !413, line: 465, baseType: !459, offset: 832)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !413, line: 415, elements: !140)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !412, file: !413, line: 693, baseType: !461, size: 384, offset: 1408)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !413, line: 489, size: 384, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !461, file: !413, line: 490, baseType: !113, size: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !461, file: !413, line: 491, baseType: !216, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !461, file: !413, line: 492, baseType: !216, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !461, file: !413, line: 493, baseType: !5, size: 32, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !461, file: !413, line: 494, baseType: !73, size: 16, offset: 288)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !461, file: !413, line: 495, baseType: !73, size: 16, offset: 304)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !461, file: !413, line: 497, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !412, file: !413, line: 697, baseType: !472, size: 1792, offset: 1792)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !413, line: 507, size: 1792, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !563, !564}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !472, file: !413, line: 508, baseType: !264, size: 192, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !472, file: !413, line: 515, baseType: !285, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !472, file: !413, line: 516, baseType: !285, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !472, file: !413, line: 517, baseType: !285, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !472, file: !413, line: 518, baseType: !285, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !472, file: !413, line: 519, baseType: !285, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !472, file: !413, line: 526, baseType: !320, size: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !472, file: !413, line: 527, baseType: !285, size: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !413, line: 528, baseType: !5, size: 32, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !472, file: !413, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !472, file: !413, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !472, file: !413, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !472, file: !413, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !472, file: !413, line: 563, baseType: !488, size: 512, offset: 704)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !489)
!489 = !{!490, !498, !499, !504, !556, !560, !561, !562}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !488, file: !4, line: 119, baseType: !491, size: 256)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !492, line: 9, size: 256, elements: !493)
!492 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !491, file: !492, line: 10, baseType: !264, size: 192, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !491, file: !492, line: 11, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !497, line: 29, baseType: !320)
!497 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !488, file: !4, line: 120, baseType: !496, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !488, file: !4, line: 121, baseType: !500, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!3, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !488, file: !4, line: 122, baseType: !505, size: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !507)
!507 = !{!508, !528, !529, !532, !542, !543, !551, !555}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !506, file: !4, line: 160, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !510, file: !4, line: 215, baseType: !331)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !510, file: !4, line: 216, baseType: !5, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !510, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !510, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !510, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !510, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !510, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !510, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !510, file: !4, line: 233, baseType: !496, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !510, file: !4, line: 234, baseType: !503, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !510, file: !4, line: 235, baseType: !496, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !510, file: !4, line: 236, baseType: !503, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !510, file: !4, line: 237, baseType: !525, size: 4096, offset: 512)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 4096, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 8)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !506, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !506, file: !4, line: 162, baseType: !530, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !70, line: 27, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !200, line: 96, baseType: !96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !506, file: !4, line: 163, baseType: !533, size: 32, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !534, line: 276, baseType: !535)
!534 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !534, line: 276, size: 32, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !535, file: !534, line: 276, baseType: !538, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !534, line: 70, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !534, line: 65, size: 32, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !539, file: !534, line: 66, baseType: !5, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !506, file: !4, line: 164, baseType: !503, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !506, file: !4, line: 165, baseType: !544, size: 128, offset: 256)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !492, line: 14, size: 128, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !544, file: !492, line: 15, baseType: !547, size: 128)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !265, line: 125, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !547, file: !265, line: 126, baseType: !281, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !547, file: !265, line: 127, baseType: !269, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !506, file: !4, line: 166, baseType: !552, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!496}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !506, file: !4, line: 167, baseType: !496, size: 64, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !488, file: !4, line: 123, baseType: !557, size: 8, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !286, line: 17, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !72, line: 21, baseType: !559)
!559 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !488, file: !4, line: 124, baseType: !557, size: 8, offset: 456)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !488, file: !4, line: 125, baseType: !557, size: 8, offset: 464)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !488, file: !4, line: 126, baseType: !557, size: 8, offset: 472)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !472, file: !413, line: 572, baseType: !488, size: 512, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !472, file: !413, line: 580, baseType: !565, size: 64, offset: 1728)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !412, file: !413, line: 721, baseType: !5, size: 32, offset: 3584)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !412, file: !413, line: 722, baseType: !96, size: 32, offset: 3616)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !412, file: !413, line: 723, baseType: !569, size: 64, offset: 3648)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !572, line: 17, baseType: !573)
!572 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !572, line: 17, size: 64, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !573, file: !572, line: 17, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 64, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 1)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !412, file: !413, line: 724, baseType: !571, size: 64, offset: 3712)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !412, file: !413, line: 749, baseType: !581, offset: 3776)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !413, line: 290, elements: !140)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !412, file: !413, line: 751, baseType: !113, size: 128, offset: 3776)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !412, file: !413, line: 757, baseType: !273, size: 64, offset: 3904)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !412, file: !413, line: 758, baseType: !273, size: 64, offset: 3968)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !412, file: !413, line: 761, baseType: !586, size: 320, offset: 4032)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !361, line: 34, size: 320, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !586, file: !361, line: 35, baseType: !285, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !586, file: !361, line: 36, baseType: !590, size: 256, offset: 64)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !365)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !412, file: !413, line: 766, baseType: !96, size: 32, offset: 4352)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !412, file: !413, line: 767, baseType: !96, size: 32, offset: 4384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !412, file: !413, line: 768, baseType: !96, size: 32, offset: 4416)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !412, file: !413, line: 770, baseType: !96, size: 32, offset: 4448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !412, file: !413, line: 772, baseType: !216, size: 64, offset: 4480)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !412, file: !413, line: 775, baseType: !5, size: 32, offset: 4544)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !412, file: !413, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !412, file: !413, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !412, file: !413, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !412, file: !413, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !412, file: !413, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !412, file: !413, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !412, file: !413, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !412, file: !413, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !412, file: !413, line: 831, baseType: !216, size: 64, offset: 4672)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !412, file: !413, line: 833, baseType: !607, size: 384, offset: 4736)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !608)
!608 = !{!609, !614}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !607, file: !10, line: 26, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!202, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !10, line: 27, baseType: !615, size: 320, offset: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !10, line: 27, size: 320, elements: !616)
!616 = !{!617, !627, !654}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !615, file: !10, line: 36, baseType: !618, size: 320)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !10, line: 29, size: 320, elements: !619)
!619 = !{!620, !622, !623, !624, !625, !626}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !618, file: !10, line: 30, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !618, file: !10, line: 31, baseType: !421, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !10, line: 32, baseType: !421, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !618, file: !10, line: 33, baseType: !421, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !618, file: !10, line: 34, baseType: !285, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !618, file: !10, line: 35, baseType: !621, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !615, file: !10, line: 46, baseType: !628, size: 192)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !10, line: 38, size: 192, elements: !629)
!629 = !{!630, !631, !632, !653}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !628, file: !10, line: 39, baseType: !530, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !10, line: 41, baseType: !633, size: 64, offset: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !10, line: 41, size: 64, elements: !634)
!634 = !{!635, !643}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !633, file: !10, line: 42, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !638, line: 7, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!639 = !{!640, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !637, file: !638, line: 8, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !200, line: 93, baseType: !249)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !637, file: !638, line: 9, baseType: !249, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !633, file: !10, line: 43, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !646, line: 7, size: 64, elements: !647)
!646 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!647 = !{!648, !652}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !645, file: !646, line: 8, baseType: !649, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !646, line: 5, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !286, line: 20, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !72, line: 26, baseType: !96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !645, file: !646, line: 9, baseType: !650, size: 32, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !628, file: !10, line: 45, baseType: !285, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !615, file: !10, line: 54, baseType: !655, size: 256)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !10, line: 48, size: 256, elements: !656)
!656 = !{!657, !660, !661, !662, !663}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !655, file: !10, line: 49, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !655, file: !10, line: 50, baseType: !96, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !655, file: !10, line: 51, baseType: !96, size: 32, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !655, file: !10, line: 52, baseType: !216, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !655, file: !10, line: 53, baseType: !216, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !412, file: !413, line: 835, baseType: !665, size: 32, offset: 5120)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !70, line: 22, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !200, line: 28, baseType: !96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !412, file: !413, line: 836, baseType: !665, size: 32, offset: 5152)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !412, file: !413, line: 840, baseType: !216, size: 64, offset: 5184)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !412, file: !413, line: 849, baseType: !411, size: 64, offset: 5248)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !412, file: !413, line: 852, baseType: !411, size: 64, offset: 5312)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !412, file: !413, line: 857, baseType: !113, size: 128, offset: 5376)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !412, file: !413, line: 858, baseType: !113, size: 128, offset: 5504)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !412, file: !413, line: 859, baseType: !411, size: 64, offset: 5632)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !412, file: !413, line: 867, baseType: !113, size: 128, offset: 5696)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !412, file: !413, line: 868, baseType: !113, size: 128, offset: 5824)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !412, file: !413, line: 871, baseType: !677, size: 64, offset: 5952)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !679, line: 59, size: 768, elements: !680)
!679 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!680 = !{!681, !682, !683, !684, !695, !696, !703, !712}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !678, file: !679, line: 61, baseType: !426, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !678, file: !679, line: 62, baseType: !5, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !678, file: !679, line: 63, baseType: !126, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !678, file: !679, line: 65, baseType: !685, size: 256, offset: 64)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 256, elements: !365)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !70, line: 182, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !686, file: !70, line: 183, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !70, line: 186, size: 128, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !70, line: 187, baseType: !689, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !690, file: !70, line: 187, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !678, file: !679, line: 66, baseType: !686, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !678, file: !679, line: 68, baseType: !697, size: 128, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !698, line: 40, baseType: !699)
!698 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !698, line: 36, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !699, file: !698, line: 37, baseType: !126)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !699, file: !698, line: 38, baseType: !113, size: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !678, file: !679, line: 69, baseType: !704, size: 128, align: 64, offset: 512)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !70, line: 216, size: 128, align: 64, elements: !705)
!705 = !{!706, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !70, line: 217, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !704, file: !70, line: 218, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !707}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !678, file: !679, line: 70, baseType: !713, size: 128, offset: 640)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 128, elements: !577)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !679, line: 54, size: 128, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !714, file: !679, line: 55, baseType: !96, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !714, file: !679, line: 56, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !679, line: 56, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !412, file: !413, line: 872, baseType: !721, size: 512, offset: 6016)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 512, elements: !365)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !412, file: !413, line: 873, baseType: !113, size: 128, offset: 6528)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !412, file: !413, line: 874, baseType: !113, size: 128, offset: 6656)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !412, file: !413, line: 876, baseType: !725, size: 64, offset: 6784)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !727, line: 26, size: 192, elements: !728)
!727 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !726, file: !727, line: 27, baseType: !5, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !726, file: !727, line: 28, baseType: !731, size: 128, offset: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !732, line: 43, size: 128, elements: !733)
!732 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !732, line: 44, baseType: !331)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !731, file: !732, line: 45, baseType: !113, size: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !412, file: !413, line: 879, baseType: !737, size: 64, offset: 6848)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !412, file: !413, line: 882, baseType: !737, size: 64, offset: 6912)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !412, file: !413, line: 884, baseType: !285, size: 64, offset: 6976)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !412, file: !413, line: 885, baseType: !285, size: 64, offset: 7040)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !412, file: !413, line: 890, baseType: !285, size: 64, offset: 7104)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !412, file: !413, line: 891, baseType: !743, size: 128, offset: 7168)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !413, line: 242, size: 128, elements: !744)
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !743, file: !413, line: 244, baseType: !285, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !743, file: !413, line: 245, baseType: !285, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !743, file: !413, line: 246, baseType: !331, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !412, file: !413, line: 900, baseType: !216, size: 64, offset: 7296)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !412, file: !413, line: 901, baseType: !216, size: 64, offset: 7360)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !412, file: !413, line: 904, baseType: !285, size: 64, offset: 7424)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !412, file: !413, line: 907, baseType: !285, size: 64, offset: 7488)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !412, file: !413, line: 910, baseType: !216, size: 64, offset: 7552)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !412, file: !413, line: 911, baseType: !216, size: 64, offset: 7616)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !412, file: !413, line: 914, baseType: !755, size: 640, offset: 7680)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !756, line: 123, size: 640, elements: !757)
!756 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !764, !765}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !755, file: !756, line: 124, baseType: !759, size: 576)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 576, elements: !168)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !756, line: 108, size: 192, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !760, file: !756, line: 109, baseType: !285, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !760, file: !756, line: 110, baseType: !544, size: 128, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !755, file: !756, line: 125, baseType: !5, size: 32, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !755, file: !756, line: 126, baseType: !5, size: 32, offset: 608)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !412, file: !413, line: 917, baseType: !767, size: 192, offset: 8320)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !756, line: 134, size: 192, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !767, file: !756, line: 135, baseType: !704, size: 128, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !767, file: !756, line: 136, baseType: !5, size: 32, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !412, file: !413, line: 923, baseType: !772, size: 64, offset: 8512)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !413, line: 923, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !412, file: !413, line: 926, baseType: !772, size: 64, offset: 8576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !412, file: !413, line: 929, baseType: !772, size: 64, offset: 8640)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !412, file: !413, line: 933, baseType: !778, size: 64, offset: 8704)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !413, line: 933, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !412, file: !413, line: 943, baseType: !781, size: 128, offset: 8768)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 16)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !412, file: !413, line: 945, baseType: !785, size: 64, offset: 8896)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !413, line: 49, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !412, file: !413, line: 956, baseType: !788, size: 64, offset: 8960)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !413, line: 45, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !412, file: !413, line: 959, baseType: !791, size: 64, offset: 9024)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !413, line: 959, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !412, file: !413, line: 962, baseType: !794, size: 64, offset: 9088)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !413, line: 66, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !412, file: !413, line: 966, baseType: !797, size: 64, offset: 9152)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !413, line: 50, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !412, file: !413, line: 969, baseType: !800, size: 64, offset: 9216)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !756, line: 223, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !412, file: !413, line: 970, baseType: !803, size: 64, offset: 9280)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !413, line: 62, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !412, file: !413, line: 971, baseType: !806, size: 64, offset: 9344)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !807, line: 25, baseType: !808)
!807 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !807, line: 23, size: 64, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !808, file: !807, line: 24, baseType: !576, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !412, file: !413, line: 972, baseType: !806, size: 64, offset: 9408)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !412, file: !413, line: 974, baseType: !806, size: 64, offset: 9472)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !412, file: !413, line: 975, baseType: !814, size: 192, offset: 9536)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !815, line: 30, size: 192, elements: !816)
!815 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !814, file: !815, line: 31, baseType: !113, size: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !814, file: !815, line: 32, baseType: !806, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !412, file: !413, line: 976, baseType: !216, size: 64, offset: 9728)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !412, file: !413, line: 977, baseType: !213, size: 64, offset: 9792)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !412, file: !413, line: 978, baseType: !5, size: 32, offset: 9856)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !412, file: !413, line: 980, baseType: !707, size: 64, offset: 9920)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !412, file: !413, line: 989, baseType: !824, size: 128, offset: 9984)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !825, line: 35, size: 128, elements: !826)
!825 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!826 = !{!827, !828, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !824, file: !825, line: 36, baseType: !96, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !824, file: !825, line: 37, baseType: !306, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !824, file: !825, line: 38, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !825, line: 23, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !412, file: !413, line: 992, baseType: !285, size: 64, offset: 10112)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !412, file: !413, line: 993, baseType: !285, size: 64, offset: 10176)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !412, file: !413, line: 996, baseType: !126, offset: 10240)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !412, file: !413, line: 999, baseType: !331, offset: 10240)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !412, file: !413, line: 1001, baseType: !837, size: 64, offset: 10240)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !413, line: 636, size: 64, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !837, file: !413, line: 637, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !412, file: !413, line: 1005, baseType: !547, size: 128, offset: 10304)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !412, file: !413, line: 1007, baseType: !411, size: 64, offset: 10432)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !412, file: !413, line: 1009, baseType: !844, size: 64, offset: 10496)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !413, line: 1009, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !412, file: !413, line: 1043, baseType: !76, size: 64, offset: 10560)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !412, file: !413, line: 1046, baseType: !848, size: 64, offset: 10624)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !413, line: 41, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !412, file: !413, line: 1050, baseType: !851, size: 64, offset: 10688)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !413, line: 42, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !412, file: !413, line: 1054, baseType: !854, size: 64, offset: 10752)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !413, line: 55, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !412, file: !413, line: 1056, baseType: !857, size: 64, offset: 10816)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !413, line: 40, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !412, file: !413, line: 1058, baseType: !860, size: 64, offset: 10880)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !413, line: 47, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !412, file: !413, line: 1061, baseType: !863, size: 64, offset: 10944)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !413, line: 43, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !412, file: !413, line: 1064, baseType: !216, size: 64, offset: 11008)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !412, file: !413, line: 1065, baseType: !867, size: 64, offset: 11072)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !815, line: 14, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !815, line: 12, size: 384, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !815, line: 13, baseType: !872, size: 384)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !815, line: 13, size: 384, elements: !873)
!873 = !{!874, !875, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !872, file: !815, line: 13, baseType: !96, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !872, file: !815, line: 13, baseType: !96, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !872, file: !815, line: 13, baseType: !96, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !872, file: !815, line: 13, baseType: !878, size: 256, offset: 128)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !879, line: 32, size: 256, elements: !880)
!879 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!880 = !{!881, !887, !900, !906, !915, !935, !940}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !878, file: !879, line: 37, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 34, size: 64, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !882, file: !879, line: 35, baseType: !666, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !882, file: !879, line: 36, baseType: !886, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !200, line: 49, baseType: !5)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !878, file: !879, line: 45, baseType: !888, size: 192)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 40, size: 192, elements: !889)
!889 = !{!890, !892, !893, !899}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !888, file: !879, line: 41, baseType: !891, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !200, line: 95, baseType: !96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !888, file: !879, line: 42, baseType: !96, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !888, file: !879, line: 43, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !879, line: 11, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !879, line: 8, size: 64, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !895, file: !879, line: 9, baseType: !96, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !895, file: !879, line: 10, baseType: !76, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !888, file: !879, line: 44, baseType: !96, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !878, file: !879, line: 52, baseType: !901, size: 128)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 48, size: 128, elements: !902)
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !901, file: !879, line: 49, baseType: !666, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !901, file: !879, line: 50, baseType: !886, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !901, file: !879, line: 51, baseType: !894, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !878, file: !879, line: 61, baseType: !907, size: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 55, size: 256, elements: !908)
!908 = !{!909, !910, !911, !912, !914}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !907, file: !879, line: 56, baseType: !666, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !907, file: !879, line: 57, baseType: !886, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !907, file: !879, line: 58, baseType: !96, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !907, file: !879, line: 59, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !200, line: 94, baseType: !201)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !907, file: !879, line: 60, baseType: !913, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !878, file: !879, line: 95, baseType: !916, size: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 64, size: 256, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !916, file: !879, line: 65, baseType: !76, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !879, line: 77, baseType: !920, size: 192, offset: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !916, file: !879, line: 77, size: 192, elements: !921)
!921 = !{!922, !923, !930}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !920, file: !879, line: 82, baseType: !400, size: 16)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !920, file: !879, line: 88, baseType: !924, size: 192)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !879, line: 84, size: 192, elements: !925)
!925 = !{!926, !928, !929}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !924, file: !879, line: 85, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !526)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !924, file: !879, line: 86, baseType: !76, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !924, file: !879, line: 87, baseType: !76, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !920, file: !879, line: 93, baseType: !931, size: 96)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !879, line: 90, size: 96, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !931, file: !879, line: 91, baseType: !927, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !931, file: !879, line: 92, baseType: !84, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !878, file: !879, line: 101, baseType: !936, size: 128)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 98, size: 128, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !936, file: !879, line: 99, baseType: !202, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !936, file: !879, line: 100, baseType: !96, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !878, file: !879, line: 108, baseType: !941, size: 128)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 104, size: 128, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !941, file: !879, line: 105, baseType: !76, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !941, file: !879, line: 106, baseType: !96, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !941, file: !879, line: 107, baseType: !5, size: 32, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !412, file: !413, line: 1067, baseType: !947, offset: 11136)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !948, line: 12, elements: !140)
!948 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!949 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !412, file: !413, line: 1099, baseType: !950, size: 64, offset: 11136)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !413, line: 56, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !412, file: !413, line: 1103, baseType: !113, size: 128, offset: 11200)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !412, file: !413, line: 1104, baseType: !954, size: 64, offset: 11328)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !413, line: 46, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !412, file: !413, line: 1105, baseType: !383, size: 192, offset: 11392)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !412, file: !413, line: 1106, baseType: !5, size: 32, offset: 11584)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !412, file: !413, line: 1109, baseType: !959, size: 128, offset: 11648)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 128, elements: !962)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !413, line: 51, flags: DIFlagFwdDecl)
!962 = !{!963}
!963 = !DISubrange(count: 2)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !412, file: !413, line: 1110, baseType: !383, size: 192, offset: 11776)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !412, file: !413, line: 1111, baseType: !113, size: 128, offset: 11968)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !412, file: !413, line: 1173, baseType: !967, size: 64, offset: 12096)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !969, line: 62, size: 256, align: 256, elements: !970)
!969 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!970 = !{!971, !972, !973, !978}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !968, file: !969, line: 75, baseType: !84, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !968, file: !969, line: 90, baseType: !84, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !968, file: !969, line: 124, baseType: !974, size: 64, offset: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !969, line: 109, size: 64, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !974, file: !969, line: 110, baseType: !287, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !974, file: !969, line: 112, baseType: !287, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 144, baseType: !84, size: 32, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !412, file: !413, line: 1174, baseType: !421, size: 32, offset: 12160)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !412, file: !413, line: 1179, baseType: !216, size: 64, offset: 12224)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !412, file: !413, line: 1182, baseType: !982, size: 128, offset: 12288)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !361, line: 76, size: 128, elements: !983)
!983 = !{!984, !989, !992}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !982, file: !361, line: 85, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !986, line: 7, size: 64, elements: !987)
!986 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !985, file: !986, line: 12, baseType: !573, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !982, file: !361, line: 88, baseType: !990, size: 8, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 30, baseType: !991)
!991 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !982, file: !361, line: 95, baseType: !990, size: 8, offset: 72)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !413, line: 1184, baseType: !994, size: 128, offset: 12416)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 1184, size: 128, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !994, file: !413, line: 1185, baseType: !426, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !994, file: !413, line: 1186, baseType: !704, size: 128, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !412, file: !413, line: 1190, baseType: !999, size: 64, offset: 12544)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !413, line: 53, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !412, file: !413, line: 1192, baseType: !1002, size: 128, offset: 12608)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !361, line: 64, size: 128, elements: !1003)
!1003 = !{!1004, !1097, !1098}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1002, file: !361, line: 65, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !257, line: 68, size: 512, align: 128, elements: !1007)
!1007 = !{!1008, !1009, !1089, !1096}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1006, file: !257, line: 69, baseType: !216, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !257, line: 77, baseType: !1010, size: 320, offset: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !257, line: 77, size: 320, elements: !1011)
!1011 = !{!1012, !1021, !1026, !1054, !1062, !1068, !1081, !1088}
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !257, line: 78, baseType: !1013, size: 320)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !257, line: 78, size: 320, elements: !1014)
!1014 = !{!1015, !1016, !1019, !1020}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1013, file: !257, line: 84, baseType: !113, size: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1013, file: !257, line: 86, baseType: !1017, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !257, line: 26, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1013, file: !257, line: 87, baseType: !216, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1013, file: !257, line: 94, baseType: !216, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !257, line: 96, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !257, line: 96, size: 64, elements: !1023)
!1023 = !{!1024}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1022, file: !257, line: 101, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !70, line: 143, baseType: !285)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !257, line: 103, baseType: !1027, size: 320)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !257, line: 103, size: 320, elements: !1028)
!1028 = !{!1029, !1039, !1042, !1043}
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !257, line: 104, baseType: !1030, size: 128)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !257, line: 104, size: 128, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1030, file: !257, line: 105, baseType: !113, size: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !257, line: 106, baseType: !1034, size: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !257, line: 106, size: 128, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1034, file: !257, line: 107, baseType: !1005, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1034, file: !257, line: 109, baseType: !96, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1034, file: !257, line: 110, baseType: !96, size: 32, offset: 96)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1027, file: !257, line: 117, baseType: !1040, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !257, line: 117, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1027, file: !257, line: 119, baseType: !76, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !257, line: 120, baseType: !1044, size: 64, offset: 256)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !257, line: 120, size: 64, elements: !1045)
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1044, file: !257, line: 121, baseType: !76, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1044, file: !257, line: 122, baseType: !216, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !257, line: 123, baseType: !1049, size: 32)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1044, file: !257, line: 123, size: 32, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1049, file: !257, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1049, file: !257, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1049, file: !257, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !257, line: 130, baseType: !1055, size: 192)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !257, line: 130, size: 192, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1055, file: !257, line: 131, baseType: !216, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1055, file: !257, line: 134, baseType: !559, size: 8, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1055, file: !257, line: 135, baseType: !559, size: 8, offset: 72)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1055, file: !257, line: 136, baseType: !306, size: 32, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1055, file: !257, line: 137, baseType: !5, size: 32, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !257, line: 139, baseType: !1063, size: 256)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !257, line: 139, size: 256, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1063, file: !257, line: 140, baseType: !216, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1063, file: !257, line: 141, baseType: !306, size: 32, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1063, file: !257, line: 143, baseType: !113, size: 128, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !257, line: 145, baseType: !1069, size: 256)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !257, line: 145, size: 256, elements: !1070)
!1070 = !{!1071, !1072, !1074, !1075, !1080}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1069, file: !257, line: 146, baseType: !216, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1069, file: !257, line: 147, baseType: !1073, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !246, line: 509, baseType: !1005)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1069, file: !257, line: 148, baseType: !216, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !257, line: 149, baseType: !1076, size: 64, offset: 192)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !257, line: 149, size: 64, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1076, file: !257, line: 150, baseType: !273, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1076, file: !257, line: 151, baseType: !306, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1069, file: !257, line: 156, baseType: !126, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !257, line: 159, baseType: !1082, size: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !257, line: 159, size: 128, elements: !1083)
!1083 = !{!1084, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1082, file: !257, line: 161, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !257, line: 161, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1082, file: !257, line: 162, baseType: !76, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1010, file: !257, line: 176, baseType: !704, size: 128, align: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !257, line: 179, baseType: !1090, size: 32, offset: 384)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !257, line: 179, size: 32, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1090, file: !257, line: 184, baseType: !306, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1090, file: !257, line: 192, baseType: !5, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1090, file: !257, line: 194, baseType: !5, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1090, file: !257, line: 195, baseType: !96, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1006, file: !257, line: 199, baseType: !306, size: 32, offset: 416)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1002, file: !361, line: 67, baseType: !84, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1002, file: !361, line: 68, baseType: !84, size: 32, offset: 96)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !412, file: !413, line: 1206, baseType: !96, size: 32, offset: 12736)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !412, file: !413, line: 1207, baseType: !96, size: 32, offset: 12768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !412, file: !413, line: 1209, baseType: !216, size: 64, offset: 12800)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !412, file: !413, line: 1219, baseType: !285, size: 64, offset: 12864)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !412, file: !413, line: 1220, baseType: !285, size: 64, offset: 12928)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !412, file: !413, line: 1317, baseType: !96, size: 32, offset: 12992)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !412, file: !413, line: 1319, baseType: !411, size: 64, offset: 13056)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !412, file: !413, line: 1322, baseType: !1107, size: 64, offset: 13120)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1109, line: 56, size: 512, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1117, !1118, !1120}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1108, file: !1109, line: 57, baseType: !1107, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1108, file: !1109, line: 58, baseType: !76, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1108, file: !1109, line: 59, baseType: !216, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !1109, line: 60, baseType: !216, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1108, file: !1109, line: 61, baseType: !1116, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1108, file: !1109, line: 62, baseType: !5, size: 32, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1108, file: !1109, line: 63, baseType: !1119, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !70, line: 153, baseType: !285)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1108, file: !1109, line: 64, baseType: !1121, size: 64, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !412, file: !413, line: 1326, baseType: !426, size: 32, offset: 13184)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !412, file: !413, line: 1342, baseType: !76, size: 64, offset: 13248)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !412, file: !413, line: 1343, baseType: !287, size: 64, offset: 13312)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !412, file: !413, line: 1344, baseType: !285, size: 64, offset: 13376)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !412, file: !413, line: 1345, baseType: !287, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !412, file: !413, line: 1346, baseType: !287, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !412, file: !413, line: 1347, baseType: !287, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !412, file: !413, line: 1348, baseType: !704, size: 128, align: 64, offset: 13504)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !412, file: !413, line: 1358, baseType: !1132, size: 34816, offset: 13824)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1133, line: 485, size: 34816, elements: !1134)
!1133 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1164, !1165, !1166, !1167, !1168, !1169, !1172, !1173, !1174}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1132, file: !1133, line: 487, baseType: !1136, size: 192)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1137, size: 192, elements: !168)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1138, line: 16, size: 64, elements: !1139)
!1138 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1137, file: !1138, line: 17, baseType: !396, size: 16)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1137, file: !1138, line: 18, baseType: !396, size: 16, offset: 16)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1137, file: !1138, line: 19, baseType: !396, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1137, file: !1138, line: 19, baseType: !396, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1137, file: !1138, line: 19, baseType: !396, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1137, file: !1138, line: 19, baseType: !396, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1137, file: !1138, line: 19, baseType: !396, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1137, file: !1138, line: 20, baseType: !396, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1137, file: !1138, line: 20, baseType: !396, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1137, file: !1138, line: 20, baseType: !396, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1137, file: !1138, line: 20, baseType: !396, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1137, file: !1138, line: 20, baseType: !396, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1137, file: !1138, line: 20, baseType: !396, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1132, file: !1133, line: 491, baseType: !216, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1132, file: !1133, line: 495, baseType: !73, size: 16, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1132, file: !1133, line: 496, baseType: !73, size: 16, offset: 272)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1132, file: !1133, line: 497, baseType: !73, size: 16, offset: 288)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1132, file: !1133, line: 498, baseType: !73, size: 16, offset: 304)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1132, file: !1133, line: 502, baseType: !216, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1132, file: !1133, line: 503, baseType: !216, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1132, file: !1133, line: 514, baseType: !1161, size: 256, offset: 448)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 256, elements: !365)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1133, line: 483, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1132, file: !1133, line: 516, baseType: !216, size: 64, offset: 704)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1132, file: !1133, line: 518, baseType: !216, size: 64, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1132, file: !1133, line: 520, baseType: !216, size: 64, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1132, file: !1133, line: 521, baseType: !216, size: 64, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1132, file: !1133, line: 522, baseType: !216, size: 64, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1132, file: !1133, line: 528, baseType: !1170, size: 64, offset: 1024)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1133, line: 10, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1132, file: !1133, line: 535, baseType: !216, size: 64, offset: 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1132, file: !1133, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1132, file: !1133, line: 540, baseType: !1175, size: 33280, offset: 1536)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1176, line: 317, size: 33280, elements: !1177)
!1176 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1175, file: !1176, line: 330, baseType: !5, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1175, file: !1176, line: 337, baseType: !216, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1175, file: !1176, line: 348, baseType: !1181, size: 32768, offset: 512)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1176, line: 304, size: 32768, elements: !1182)
!1182 = !{!1183, !1198, !1237, !1287, !1304}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1181, file: !1176, line: 305, baseType: !1184, size: 896)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1176, line: 12, size: 896, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1197}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1184, file: !1176, line: 13, baseType: !421, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1184, file: !1176, line: 14, baseType: !421, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1184, file: !1176, line: 15, baseType: !421, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1184, file: !1176, line: 16, baseType: !421, size: 32, offset: 96)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1184, file: !1176, line: 17, baseType: !421, size: 32, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1184, file: !1176, line: 18, baseType: !421, size: 32, offset: 160)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1184, file: !1176, line: 19, baseType: !421, size: 32, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1184, file: !1176, line: 22, baseType: !1194, size: 640, offset: 224)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 640, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 20)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1184, file: !1176, line: 25, baseType: !421, size: 32, offset: 864)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1181, file: !1176, line: 306, baseType: !1199, size: 4096, align: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1176, line: 34, size: 4096, align: 128, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1220, !1221, !1222, !1226, !1228, !1232}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1199, file: !1176, line: 35, baseType: !396, size: 16)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1199, file: !1176, line: 36, baseType: !396, size: 16, offset: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1199, file: !1176, line: 37, baseType: !396, size: 16, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1199, file: !1176, line: 38, baseType: !396, size: 16, offset: 48)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1176, line: 39, baseType: !1206, size: 128, offset: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1176, line: 39, size: 128, elements: !1207)
!1207 = !{!1208, !1213}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !1176, line: 40, baseType: !1209, size: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1206, file: !1176, line: 40, size: 128, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1209, file: !1176, line: 41, baseType: !285, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1209, file: !1176, line: 42, baseType: !285, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !1176, line: 44, baseType: !1214, size: 128)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1206, file: !1176, line: 44, size: 128, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1214, file: !1176, line: 45, baseType: !421, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1214, file: !1176, line: 46, baseType: !421, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1214, file: !1176, line: 47, baseType: !421, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1214, file: !1176, line: 48, baseType: !421, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1199, file: !1176, line: 51, baseType: !421, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1199, file: !1176, line: 52, baseType: !421, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1199, file: !1176, line: 55, baseType: !1223, size: 1024, offset: 256)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 1024, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1199, file: !1176, line: 58, baseType: !1227, size: 2048, offset: 1280)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 2048, elements: !172)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1199, file: !1176, line: 60, baseType: !1229, size: 384, offset: 3328)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 384, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 12)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1176, line: 62, baseType: !1233, size: 384, offset: 3712)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1176, line: 62, size: 384, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1233, file: !1176, line: 63, baseType: !1229, size: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1233, file: !1176, line: 64, baseType: !1229, size: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1181, file: !1176, line: 307, baseType: !1238, size: 1088)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1176, line: 79, size: 1088, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1286}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1238, file: !1176, line: 80, baseType: !421, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1238, file: !1176, line: 81, baseType: !421, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1238, file: !1176, line: 82, baseType: !421, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1238, file: !1176, line: 83, baseType: !421, size: 32, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1238, file: !1176, line: 84, baseType: !421, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1238, file: !1176, line: 85, baseType: !421, size: 32, offset: 160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1238, file: !1176, line: 86, baseType: !421, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1238, file: !1176, line: 88, baseType: !1194, size: 640, offset: 224)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1238, file: !1176, line: 89, baseType: !557, size: 8, offset: 864)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1238, file: !1176, line: 90, baseType: !557, size: 8, offset: 872)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1238, file: !1176, line: 91, baseType: !557, size: 8, offset: 880)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1238, file: !1176, line: 92, baseType: !557, size: 8, offset: 888)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1238, file: !1176, line: 93, baseType: !557, size: 8, offset: 896)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1238, file: !1176, line: 94, baseType: !557, size: 8, offset: 904)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1238, file: !1176, line: 95, baseType: !1255, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1257, line: 11, size: 128, elements: !1258)
!1257 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1256, file: !1257, line: 12, baseType: !202, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1256, file: !1257, line: 13, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1263, line: 56, size: 1344, elements: !1264)
!1263 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1262, file: !1263, line: 61, baseType: !216, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1262, file: !1263, line: 62, baseType: !216, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1262, file: !1263, line: 63, baseType: !216, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1262, file: !1263, line: 64, baseType: !216, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1262, file: !1263, line: 65, baseType: !216, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1262, file: !1263, line: 66, baseType: !216, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1262, file: !1263, line: 68, baseType: !216, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1262, file: !1263, line: 69, baseType: !216, size: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1262, file: !1263, line: 70, baseType: !216, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1262, file: !1263, line: 71, baseType: !216, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1262, file: !1263, line: 72, baseType: !216, size: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1262, file: !1263, line: 73, baseType: !216, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1262, file: !1263, line: 74, baseType: !216, size: 64, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1262, file: !1263, line: 75, baseType: !216, size: 64, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1262, file: !1263, line: 76, baseType: !216, size: 64, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1262, file: !1263, line: 81, baseType: !216, size: 64, offset: 960)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1262, file: !1263, line: 83, baseType: !216, size: 64, offset: 1024)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1262, file: !1263, line: 84, baseType: !216, size: 64, offset: 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1262, file: !1263, line: 85, baseType: !216, size: 64, offset: 1152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1262, file: !1263, line: 86, baseType: !216, size: 64, offset: 1216)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1262, file: !1263, line: 87, baseType: !216, size: 64, offset: 1280)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1238, file: !1176, line: 96, baseType: !421, size: 32, offset: 1024)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1181, file: !1176, line: 308, baseType: !1288, size: 4608, align: 512)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1176, line: 289, size: 4608, align: 512, elements: !1289)
!1289 = !{!1290, !1291, !1300}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1288, file: !1176, line: 290, baseType: !1199, size: 4096, align: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1288, file: !1176, line: 291, baseType: !1292, size: 512, offset: 4096)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1176, line: 268, size: 512, elements: !1293)
!1293 = !{!1294, !1295, !1296}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1292, file: !1176, line: 269, baseType: !285, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1292, file: !1176, line: 270, baseType: !285, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1292, file: !1176, line: 271, baseType: !1297, size: 384, offset: 128)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 384, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 6)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1288, file: !1176, line: 292, baseType: !1301, offset: 4608)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 0)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1181, file: !1176, line: 309, baseType: !1305, size: 32768)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 32768, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 4096)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !257, line: 378, baseType: !1309, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !404, file: !257, line: 384, baseType: !726, size: 192, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !277, file: !257, line: 500, baseType: !126, offset: 6656)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !277, file: !257, line: 501, baseType: !1313, size: 64, offset: 6656)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !257, line: 387, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !277, file: !257, line: 516, baseType: !1316, size: 64, offset: 6720)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !257, line: 516, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !277, file: !257, line: 519, baseType: !244, size: 64, offset: 6784)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !277, file: !257, line: 521, baseType: !1320, size: 64, offset: 6848)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !257, line: 521, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !277, file: !257, line: 545, baseType: !306, size: 32, offset: 6912)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !277, file: !257, line: 548, baseType: !990, size: 8, offset: 6944)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !277, file: !257, line: 550, baseType: !1325, offset: 6952)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1326, line: 142, elements: !140)
!1326 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !277, file: !257, line: 554, baseType: !1328, size: 256, offset: 6976)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1329, line: 102, size: 256, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1328, file: !1329, line: 103, baseType: !314, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1328, file: !1329, line: 104, baseType: !113, size: 128, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1328, file: !1329, line: 105, baseType: !1334, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1329, line: 21, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !277, file: !257, line: 557, baseType: !421, size: 32, offset: 7232)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !274, file: !257, line: 565, baseType: !1341, offset: 7296)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: -1)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !256, file: !257, line: 333, baseType: !1345, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !246, line: 284, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !246, line: 284, size: 64, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1346, file: !246, line: 284, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !304, line: 19, baseType: !216)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !256, file: !257, line: 334, baseType: !216, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !256, file: !257, line: 343, baseType: !1352, size: 256, offset: 704)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !256, file: !257, line: 340, size: 256, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1352, file: !257, line: 341, baseType: !264, size: 192, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1352, file: !257, line: 342, baseType: !216, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !256, file: !257, line: 351, baseType: !113, size: 128, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !256, file: !257, line: 353, baseType: !1358, size: 64, offset: 1088)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !257, line: 353, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !256, file: !257, line: 356, baseType: !1361, size: 64, offset: 1152)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !257, line: 356, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !256, file: !257, line: 359, baseType: !216, size: 64, offset: 1216)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !256, file: !257, line: 361, baseType: !244, size: 64, offset: 1280)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !256, file: !257, line: 362, baseType: !76, size: 64, offset: 1344)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !256, file: !257, line: 365, baseType: !314, size: 64, offset: 1408)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !256, file: !257, line: 373, baseType: !1369, offset: 1472)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !257, line: 296, elements: !140)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !223, file: !192, line: 90, baseType: !218, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !223, file: !192, line: 91, baseType: !1372, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !182, file: !106, line: 143, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1377, !119}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1380)
!1380 = !{!1381, !1382, !1386, !1390, !1396, !1400}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1379, file: !16, line: 40, baseType: !15, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1379, file: !16, line: 41, baseType: !1383, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!990}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1379, file: !16, line: 42, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!76}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1379, file: !16, line: 43, baseType: !1391, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1121, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1379, file: !16, line: 44, baseType: !1397, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!1121}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1379, file: !16, line: 45, baseType: !1401, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !76}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !182, file: !106, line: 144, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1121, !119}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !182, file: !106, line: 145, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !119, !1412, !1419}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1414, line: 23, baseType: !1415)
!1414 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1414, line: 21, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1415, file: !1414, line: 22, baseType: !1418, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !70, line: 32, baseType: !886)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1414, line: 28, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1414, line: 26, size: 32, elements: !1422)
!1422 = !{!1423}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1421, file: !1414, line: 27, baseType: !1424, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !70, line: 33, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !200, line: 50, baseType: !5)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !105, file: !106, line: 70, baseType: !1427, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1429, line: 123, size: 1024, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1571, !1572, !1573, !1574, !1575}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1428, file: !1429, line: 124, baseType: !306, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1428, file: !1429, line: 125, baseType: !306, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1428, file: !1429, line: 135, baseType: !1427, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1428, file: !1429, line: 136, baseType: !109, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1428, file: !1429, line: 138, baseType: !264, size: 192, align: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1428, file: !1429, line: 140, baseType: !1121, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1428, file: !1429, line: 141, baseType: !5, size: 32, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !1429, line: 142, baseType: !1439, size: 256, offset: 512)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !1429, line: 142, size: 256, elements: !1440)
!1440 = !{!1441, !1495, !1499}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1439, file: !1429, line: 143, baseType: !1442, size: 192)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1429, line: 91, size: 192, elements: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1442, file: !1429, line: 92, baseType: !216, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1442, file: !1429, line: 94, baseType: !281, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1442, file: !1429, line: 100, baseType: !1447, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1429, line: 180, size: 704, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1465, !1466, !1467, !1493, !1494}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1448, file: !1429, line: 182, baseType: !1427, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1448, file: !1429, line: 183, baseType: !5, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1448, file: !1429, line: 186, baseType: !1453, size: 192, offset: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1454, line: 19, size: 192, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1463, !1464}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1453, file: !1454, line: 20, baseType: !1457, size: 128)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1458, line: 292, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1459 = !{!1460, !1461, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1457, file: !1458, line: 293, baseType: !126)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1457, file: !1458, line: 295, baseType: !69, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1457, file: !1458, line: 296, baseType: !76, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1453, file: !1454, line: 21, baseType: !5, size: 32, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1453, file: !1454, line: 22, baseType: !5, size: 32, offset: 160)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1448, file: !1429, line: 187, baseType: !421, size: 32, offset: 320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1448, file: !1429, line: 188, baseType: !421, size: 32, offset: 352)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1448, file: !1429, line: 189, baseType: !1468, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1429, line: 168, size: 320, elements: !1470)
!1470 = !{!1471, !1477, !1481, !1485, !1489}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1469, file: !1429, line: 169, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!96, !1475, !1447}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !246, line: 539, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1469, file: !1429, line: 171, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!96, !1427, !109, !208}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1469, file: !1429, line: 173, baseType: !1482, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!96, !1427}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1469, file: !1429, line: 174, baseType: !1486, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!96, !1427, !1427, !109}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1469, file: !1429, line: 176, baseType: !1490, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!96, !1475, !1427, !1447}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1448, file: !1429, line: 192, baseType: !113, size: 128, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1448, file: !1429, line: 194, baseType: !697, size: 128, offset: 576)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1439, file: !1429, line: 144, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1429, line: 103, size: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1496, file: !1429, line: 104, baseType: !1427, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1439, file: !1429, line: 145, baseType: !1500, size: 256)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1429, line: 107, size: 256, elements: !1501)
!1501 = !{!1502, !1566, !1569, !1570}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1500, file: !1429, line: 108, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1429, line: 217, size: 768, elements: !1506)
!1506 = !{!1507, !1527, !1531, !1535, !1540, !1544, !1548, !1552, !1553, !1554, !1555, !1562}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1505, file: !1429, line: 222, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!96, !1511}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1429, line: 197, size: 1088, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1512, file: !1429, line: 199, baseType: !1427, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1512, file: !1429, line: 200, baseType: !244, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1512, file: !1429, line: 201, baseType: !1475, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1512, file: !1429, line: 202, baseType: !76, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1512, file: !1429, line: 205, baseType: !383, size: 192, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1512, file: !1429, line: 206, baseType: !383, size: 192, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1512, file: !1429, line: 207, baseType: !96, size: 32, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1512, file: !1429, line: 208, baseType: !113, size: 128, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1512, file: !1429, line: 209, baseType: !167, size: 64, offset: 832)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1512, file: !1429, line: 211, baseType: !213, size: 64, offset: 896)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1512, file: !1429, line: 212, baseType: !990, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1512, file: !1429, line: 213, baseType: !990, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1512, file: !1429, line: 214, baseType: !1361, size: 64, offset: 1024)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1505, file: !1429, line: 223, baseType: !1528, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1511}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1505, file: !1429, line: 236, baseType: !1532, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!96, !1475, !76}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1505, file: !1429, line: 238, baseType: !1536, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!76, !1475, !1539}
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1505, file: !1429, line: 239, baseType: !1541, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!76, !1475, !76, !1539}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1505, file: !1429, line: 240, baseType: !1545, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !1475, !76}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1505, file: !1429, line: 242, baseType: !1549, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!198, !1511, !167, !213, !247}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1505, file: !1429, line: 252, baseType: !213, size: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1505, file: !1429, line: 259, baseType: !990, size: 8, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1505, file: !1429, line: 260, baseType: !1549, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1505, file: !1429, line: 263, baseType: !1556, size: 64, offset: 640)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1559, !1511, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !75, line: 52, baseType: !5)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1429, line: 27, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1505, file: !1429, line: 266, baseType: !1563, size: 64, offset: 704)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!96, !1511, !255}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1500, file: !1429, line: 109, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1429, line: 31, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1500, file: !1429, line: 110, baseType: !247, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1500, file: !1429, line: 111, baseType: !1427, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1428, file: !1429, line: 148, baseType: !76, size: 64, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1428, file: !1429, line: 154, baseType: !285, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1428, file: !1429, line: 156, baseType: !73, size: 16, offset: 896)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1428, file: !1429, line: 157, baseType: !208, size: 16, offset: 912)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1428, file: !1429, line: 158, baseType: !1576, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1429, line: 32, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !105, file: !106, line: 71, baseType: !1579, size: 32, offset: 448)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1580, line: 19, size: 32, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1579, file: !1580, line: 20, baseType: !426, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !105, file: !106, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !105, file: !106, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !105, file: !106, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !105, file: !106, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !105, file: !106, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !28, line: 463, baseType: !1589, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !102, file: !28, line: 465, baseType: !1591, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !102, file: !28, line: 467, baseType: !109, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !28, line: 468, baseType: !1595, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1605, !1610, !1614}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1597, file: !28, line: 88, baseType: !109, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1597, file: !28, line: 89, baseType: !220, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1597, file: !28, line: 90, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!96, !1589, !162}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1597, file: !28, line: 91, baseType: !1606, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!167, !1589, !1609, !1412, !1419}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1597, file: !28, line: 93, baseType: !1611, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1589}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1597, file: !28, line: 95, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1618)
!1618 = !{!1619, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1617, file: !35, line: 279, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!96, !1589}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1617, file: !35, line: 280, baseType: !1611, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1617, file: !35, line: 281, baseType: !1620, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1617, file: !35, line: 282, baseType: !1620, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1617, file: !35, line: 283, baseType: !1620, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1617, file: !35, line: 284, baseType: !1620, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1617, file: !35, line: 285, baseType: !1620, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1617, file: !35, line: 286, baseType: !1620, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1617, file: !35, line: 287, baseType: !1620, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1617, file: !35, line: 288, baseType: !1620, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1617, file: !35, line: 289, baseType: !1620, size: 64, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1617, file: !35, line: 290, baseType: !1620, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1617, file: !35, line: 291, baseType: !1620, size: 64, offset: 768)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1617, file: !35, line: 292, baseType: !1620, size: 64, offset: 832)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1617, file: !35, line: 293, baseType: !1620, size: 64, offset: 896)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1617, file: !35, line: 294, baseType: !1620, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1617, file: !35, line: 295, baseType: !1620, size: 64, offset: 1024)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1617, file: !35, line: 296, baseType: !1620, size: 64, offset: 1088)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1617, file: !35, line: 297, baseType: !1620, size: 64, offset: 1152)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1617, file: !35, line: 298, baseType: !1620, size: 64, offset: 1216)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1617, file: !35, line: 299, baseType: !1620, size: 64, offset: 1280)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1617, file: !35, line: 300, baseType: !1620, size: 64, offset: 1344)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1617, file: !35, line: 301, baseType: !1620, size: 64, offset: 1408)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !102, file: !28, line: 470, baseType: !1646, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1648, line: 82, size: 1408, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1735, !1738, !1741}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1647, file: !1648, line: 83, baseType: !109, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1647, file: !1648, line: 84, baseType: !109, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1647, file: !1648, line: 85, baseType: !1589, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1647, file: !1648, line: 86, baseType: !220, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1647, file: !1648, line: 87, baseType: !220, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1647, file: !1648, line: 88, baseType: !220, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1647, file: !1648, line: 90, baseType: !1657, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!96, !1589, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1669, !1670, !1671, !1672, !1686, !1699, !1700, !1701, !1702, !1703, !1711, !1712, !1713, !1714, !1715, !1716}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1661, file: !22, line: 96, baseType: !109, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1661, file: !22, line: 97, baseType: !1646, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1661, file: !22, line: 99, baseType: !1666, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1668, line: 76, flags: DIFlagFwdDecl)
!1668 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1661, file: !22, line: 100, baseType: !109, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1661, file: !22, line: 102, baseType: !990, size: 8, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1661, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1661, file: !22, line: 105, baseType: !1673, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1676, line: 262, size: 1600, elements: !1677)
!1676 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !{!1678, !1680, !1681, !1685}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1675, file: !1676, line: 263, baseType: !1679, size: 256)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !1224)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1675, file: !1676, line: 264, baseType: !1679, size: 256, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1675, file: !1676, line: 265, baseType: !1682, size: 1024, offset: 512)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1024, elements: !1683)
!1683 = !{!1684}
!1684 = !DISubrange(count: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1675, file: !1676, line: 266, baseType: !1121, size: 64, offset: 1536)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1661, file: !22, line: 106, baseType: !1687, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1676, line: 210, size: 256, elements: !1690)
!1690 = !{!1691, !1695, !1697, !1698}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1689, file: !1676, line: 211, baseType: !1692, size: 72)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 72, elements: !1693)
!1693 = !{!1694}
!1694 = !DISubrange(count: 9)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1689, file: !1676, line: 212, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1676, line: 14, baseType: !216)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1689, file: !1676, line: 213, baseType: !84, size: 32, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1689, file: !1676, line: 214, baseType: !84, size: 32, offset: 224)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1661, file: !22, line: 108, baseType: !1620, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1661, file: !22, line: 109, baseType: !1611, size: 64, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1661, file: !22, line: 110, baseType: !1620, size: 64, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1661, file: !22, line: 111, baseType: !1611, size: 64, offset: 640)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1661, file: !22, line: 112, baseType: !1704, size: 64, offset: 704)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!96, !1589, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1708, file: !35, line: 51, baseType: !96, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1661, file: !22, line: 113, baseType: !1620, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1661, file: !22, line: 114, baseType: !220, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1661, file: !22, line: 115, baseType: !220, size: 64, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1661, file: !22, line: 117, baseType: !1615, size: 64, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1661, file: !22, line: 118, baseType: !1611, size: 64, offset: 1024)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1661, file: !22, line: 120, baseType: !1717, size: 64, offset: 1088)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1647, file: !1648, line: 91, baseType: !1602, size: 64, offset: 448)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1647, file: !1648, line: 92, baseType: !1620, size: 64, offset: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1647, file: !1648, line: 93, baseType: !1611, size: 64, offset: 576)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1647, file: !1648, line: 94, baseType: !1620, size: 64, offset: 640)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1647, file: !1648, line: 95, baseType: !1611, size: 64, offset: 704)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1647, file: !1648, line: 97, baseType: !1620, size: 64, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1647, file: !1648, line: 98, baseType: !1620, size: 64, offset: 832)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1647, file: !1648, line: 100, baseType: !1704, size: 64, offset: 896)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1647, file: !1648, line: 101, baseType: !1620, size: 64, offset: 960)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1647, file: !1648, line: 103, baseType: !1620, size: 64, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1647, file: !1648, line: 105, baseType: !1620, size: 64, offset: 1088)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1647, file: !1648, line: 107, baseType: !1615, size: 64, offset: 1152)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1647, file: !1648, line: 109, baseType: !1732, size: 64, offset: 1216)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1734)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1648, line: 109, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1647, file: !1648, line: 111, baseType: !1736, size: 64, offset: 1280)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1648, line: 111, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1647, file: !1648, line: 112, baseType: !1739, offset: 1344)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1740, line: 187, elements: !140)
!1740 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1647, file: !1648, line: 114, baseType: !990, size: 8, offset: 1344)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !102, file: !28, line: 471, baseType: !1660, size: 64, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !102, file: !28, line: 473, baseType: !76, size: 64, offset: 896)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !102, file: !28, line: 475, baseType: !76, size: 64, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !102, file: !28, line: 480, baseType: !383, size: 192, offset: 1024)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !102, file: !28, line: 484, baseType: !1747, size: 576, offset: 1216)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1747, file: !28, line: 362, baseType: !113, size: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1747, file: !28, line: 363, baseType: !113, size: 128, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1747, file: !28, line: 364, baseType: !113, size: 128, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1747, file: !28, line: 365, baseType: !113, size: 128, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1747, file: !28, line: 366, baseType: !990, size: 8, offset: 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1747, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !102, file: !28, line: 485, baseType: !1756, size: 2304, offset: 1792)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1853, !1857}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1756, file: !35, line: 566, baseType: !1707, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1756, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1756, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1756, file: !35, line: 569, baseType: !990, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1756, file: !35, line: 570, baseType: !990, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1756, file: !35, line: 571, baseType: !990, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1756, file: !35, line: 572, baseType: !990, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1756, file: !35, line: 573, baseType: !990, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1756, file: !35, line: 574, baseType: !990, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1756, file: !35, line: 575, baseType: !990, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1756, file: !35, line: 576, baseType: !990, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1756, file: !35, line: 577, baseType: !421, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1756, file: !35, line: 578, baseType: !126, offset: 96)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1756, file: !35, line: 580, baseType: !113, size: 128, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1756, file: !35, line: 581, baseType: !726, size: 192, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1756, file: !35, line: 582, baseType: !1774, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1776, line: 43, size: 1472, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1785, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1775, file: !1776, line: 44, baseType: !109, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1775, file: !1776, line: 45, baseType: !96, size: 32, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1775, file: !1776, line: 46, baseType: !113, size: 128, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1775, file: !1776, line: 47, baseType: !126, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1775, file: !1776, line: 48, baseType: !1783, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1775, file: !1776, line: 49, baseType: !1786, size: 320, offset: 320)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1787, line: 11, size: 320, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !{!1789, !1790, !1791, !1796}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1786, file: !1787, line: 16, baseType: !690, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1786, file: !1787, line: 17, baseType: !216, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1786, file: !1787, line: 18, baseType: !1792, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1786, file: !1787, line: 19, baseType: !421, size: 32, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1775, file: !1776, line: 50, baseType: !216, size: 64, offset: 640)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1775, file: !1776, line: 51, baseType: !496, size: 64, offset: 704)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1775, file: !1776, line: 52, baseType: !496, size: 64, offset: 768)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1775, file: !1776, line: 53, baseType: !496, size: 64, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1775, file: !1776, line: 54, baseType: !496, size: 64, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1775, file: !1776, line: 55, baseType: !496, size: 64, offset: 960)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1775, file: !1776, line: 56, baseType: !216, size: 64, offset: 1024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1775, file: !1776, line: 57, baseType: !216, size: 64, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1775, file: !1776, line: 58, baseType: !216, size: 64, offset: 1152)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1775, file: !1776, line: 59, baseType: !216, size: 64, offset: 1216)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1775, file: !1776, line: 60, baseType: !216, size: 64, offset: 1280)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1775, file: !1776, line: 61, baseType: !1589, size: 64, offset: 1344)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1775, file: !1776, line: 62, baseType: !990, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1775, file: !1776, line: 63, baseType: !990, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1756, file: !35, line: 583, baseType: !990, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1756, file: !35, line: 584, baseType: !990, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1756, file: !35, line: 585, baseType: !990, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1756, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1756, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1756, file: !35, line: 592, baseType: !488, size: 512, offset: 576)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1756, file: !35, line: 593, baseType: !285, size: 64, offset: 1088)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1756, file: !35, line: 594, baseType: !1328, size: 256, offset: 1152)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1756, file: !35, line: 595, baseType: !697, size: 128, offset: 1408)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1756, file: !35, line: 596, baseType: !1783, size: 64, offset: 1536)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1756, file: !35, line: 597, baseType: !306, size: 32, offset: 1600)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1756, file: !35, line: 598, baseType: !306, size: 32, offset: 1632)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1756, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1756, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1756, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1756, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1756, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1756, file: !35, line: 604, baseType: !990, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1756, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1756, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1756, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1756, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1756, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1756, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1756, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1756, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1756, file: !35, line: 613, baseType: !96, size: 32, offset: 1792)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1756, file: !35, line: 614, baseType: !96, size: 32, offset: 1824)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1756, file: !35, line: 615, baseType: !285, size: 64, offset: 1856)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1756, file: !35, line: 616, baseType: !285, size: 64, offset: 1920)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1756, file: !35, line: 617, baseType: !285, size: 64, offset: 1984)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1756, file: !35, line: 618, baseType: !285, size: 64, offset: 2048)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1756, file: !35, line: 620, baseType: !1844, size: 64, offset: 2112)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1845, file: !35, line: 537, baseType: !126)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1845, file: !35, line: 538, baseType: !5, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1845, file: !35, line: 540, baseType: !113, size: 128, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1845, file: !35, line: 543, baseType: !1851, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1756, file: !35, line: 621, baseType: !1854, size: 64, offset: 2176)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1589, !650}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1756, file: !35, line: 622, baseType: !1858, size: 64, offset: 2240)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !102, file: !28, line: 486, baseType: !1861, size: 64, offset: 4096)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1870, !1871, !1872}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1862, file: !35, line: 643, baseType: !1617, size: 1472)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1862, file: !35, line: 644, baseType: !1620, size: 64, offset: 1472)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1862, file: !35, line: 645, baseType: !1867, size: 64, offset: 1536)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1589, !990}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1862, file: !35, line: 646, baseType: !1620, size: 64, offset: 1600)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1862, file: !35, line: 647, baseType: !1611, size: 64, offset: 1664)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1862, file: !35, line: 648, baseType: !1611, size: 64, offset: 1728)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !102, file: !28, line: 493, baseType: !1874, size: 64, offset: 4160)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !102, file: !28, line: 499, baseType: !113, size: 128, offset: 4224)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !102, file: !28, line: 502, baseType: !1878, size: 64, offset: 4352)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !102, file: !28, line: 504, baseType: !1882, size: 64, offset: 4416)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !102, file: !28, line: 505, baseType: !285, size: 64, offset: 4480)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !102, file: !28, line: 510, baseType: !285, size: 64, offset: 4544)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !102, file: !28, line: 511, baseType: !1886, size: 64, offset: 4608)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !102, file: !28, line: 513, baseType: !1890, size: 64, offset: 4672)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1891, file: !28, line: 293, baseType: !5, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1891, file: !28, line: 294, baseType: !216, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !102, file: !28, line: 515, baseType: !113, size: 128, offset: 4736)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !102, file: !28, line: 526, baseType: !1897, offset: 4864)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1898, line: 5, elements: !140)
!1898 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !102, file: !28, line: 528, baseType: !1900, size: 64, offset: 4864)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1902, line: 14, flags: DIFlagFwdDecl)
!1902 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !102, file: !28, line: 529, baseType: !1904, size: 64, offset: 4928)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1906, line: 17, size: 192, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !{!1908, !1909, !1992}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1905, file: !1906, line: 18, baseType: !1904, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1905, file: !1906, line: 19, baseType: !1910, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1906, line: 110, size: 1152, elements: !1913)
!1913 = !{!1914, !1918, !1922, !1928, !1934, !1938, !1942, !1947, !1951, !1952, !1956, !1960, !1964, !1975, !1976, !1977, !1978, !1988}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1912, file: !1906, line: 111, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1904, !1904}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1912, file: !1906, line: 112, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1904}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1912, file: !1906, line: 113, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!990, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1912, file: !1906, line: 114, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1121, !1926, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1912, file: !1906, line: 116, baseType: !1935, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!990, !1926, !109}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1912, file: !1906, line: 118, baseType: !1939, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!96, !1926, !109, !5, !76, !213}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1912, file: !1906, line: 123, baseType: !1943, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!96, !1926, !109, !1946, !213}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1912, file: !1906, line: 126, baseType: !1948, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!109, !1926}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1912, file: !1906, line: 127, baseType: !1948, size: 64, offset: 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1912, file: !1906, line: 128, baseType: !1953, size: 64, offset: 576)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1904, !1926}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1912, file: !1906, line: 130, baseType: !1957, size: 64, offset: 640)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1904, !1926, !1904}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1912, file: !1906, line: 133, baseType: !1961, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1904, !1926, !109}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1912, file: !1906, line: 135, baseType: !1965, size: 64, offset: 768)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!96, !1926, !109, !109, !5, !5, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1906, line: 43, size: 640, elements: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1969, file: !1906, line: 44, baseType: !1904, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1969, file: !1906, line: 45, baseType: !5, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1969, file: !1906, line: 46, baseType: !1974, size: 512, offset: 128)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 512, elements: !526)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1912, file: !1906, line: 140, baseType: !1957, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1912, file: !1906, line: 143, baseType: !1953, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1912, file: !1906, line: 145, baseType: !1915, size: 64, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1912, file: !1906, line: 146, baseType: !1979, size: 64, offset: 1024)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!96, !1926, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1906, line: 29, size: 128, elements: !1984)
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1983, file: !1906, line: 30, baseType: !5, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1983, file: !1906, line: 31, baseType: !5, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1983, file: !1906, line: 32, baseType: !1926, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1912, file: !1906, line: 148, baseType: !1989, size: 64, offset: 1088)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!96, !1926, !1589}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1905, file: !1906, line: 20, baseType: !1589, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !102, file: !28, line: 534, baseType: !1994, size: 32, offset: 4992)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !70, line: 16, baseType: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !70, line: 13, baseType: !421)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !102, file: !28, line: 535, baseType: !421, size: 32, offset: 5024)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !102, file: !28, line: 537, baseType: !126, offset: 5056)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !102, file: !28, line: 538, baseType: !113, size: 128, offset: 5056)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !102, file: !28, line: 540, baseType: !2000, size: 64, offset: 5184)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2002, line: 54, size: 960, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2014, !2018, !2019, !2020, !2021, !2025, !2029, !2030}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2001, file: !2002, line: 55, baseType: !109, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2001, file: !2002, line: 56, baseType: !1666, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2001, file: !2002, line: 58, baseType: !220, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2001, file: !2002, line: 59, baseType: !220, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2001, file: !2002, line: 60, baseType: !119, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2001, file: !2002, line: 62, baseType: !1602, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2001, file: !2002, line: 63, baseType: !2011, size: 64, offset: 384)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!167, !1589, !1609}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2001, file: !2002, line: 65, baseType: !2015, size: 64, offset: 448)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !2000}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2001, file: !2002, line: 66, baseType: !1611, size: 64, offset: 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2001, file: !2002, line: 68, baseType: !1620, size: 64, offset: 576)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2001, file: !2002, line: 70, baseType: !1377, size: 64, offset: 640)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2001, file: !2002, line: 71, baseType: !2022, size: 64, offset: 704)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!1121, !1589}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2001, file: !2002, line: 73, baseType: !2026, size: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !1589, !1412, !1419}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2001, file: !2002, line: 75, baseType: !1615, size: 64, offset: 832)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2001, file: !2002, line: 77, baseType: !1736, size: 64, offset: 896)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !102, file: !28, line: 541, baseType: !220, size: 64, offset: 5248)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !102, file: !28, line: 543, baseType: !1611, size: 64, offset: 5312)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !102, file: !28, line: 544, baseType: !2034, size: 64, offset: 5376)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !102, file: !28, line: 545, baseType: !2037, size: 64, offset: 5440)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !102, file: !28, line: 547, baseType: !990, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !102, file: !28, line: 548, baseType: !990, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !102, file: !28, line: 549, baseType: !990, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !102, file: !28, line: 550, baseType: !990, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !98, file: !99, line: 33, baseType: !1589, size: 64, offset: 5568)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "bus_nr", scope: !98, file: !99, line: 34, baseType: !96, size: 32, offset: 5632)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !98, file: !99, line: 35, baseType: !557, size: 8, offset: 5664)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !98, file: !99, line: 36, baseType: !111, size: 8, offset: 5672)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !98, file: !99, line: 37, baseType: !557, size: 8, offset: 5680)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 38, baseType: !2049, size: 104, offset: 5688)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 104, elements: !2050)
!2050 = !{!2051}
!2051 = !DISubrange(count: 13)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "get_irq", scope: !98, file: !99, line: 39, baseType: !2053, size: 64, offset: 5824)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!96, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcb_device", file: !99, line: 63, size: 7040, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2103, !2104}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2057, file: !99, line: 64, baseType: !102, size: 5568)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2057, file: !99, line: 65, baseType: !97, size: 64, offset: 5568)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !2057, file: !99, line: 66, baseType: !990, size: 8, offset: 5632)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2057, file: !99, line: 67, baseType: !2063, size: 64, offset: 5696)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcb_driver", file: !99, line: 93, size: 1408, elements: !2065)
!2065 = !{!2066, !2067, !2074, !2078, !2082}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2064, file: !99, line: 94, baseType: !1661, size: 1152)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2064, file: !99, line: 95, baseType: !2068, size: 64, offset: 1152)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcb_device_id", file: !1676, line: 738, size: 128, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2070, file: !1676, line: 739, baseType: !71, size: 16)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2070, file: !1676, line: 740, baseType: !1696, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2064, file: !99, line: 96, baseType: !2075, size: 64, offset: 1216)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!96, !2056, !2068}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2064, file: !99, line: 97, baseType: !2079, size: 64, offset: 1280)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2056}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2064, file: !99, line: 98, baseType: !2079, size: 64, offset: 1344)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2057, file: !99, line: 68, baseType: !396, size: 16, offset: 5760)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "inst", scope: !2057, file: !99, line: 69, baseType: !96, size: 32, offset: 5792)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2057, file: !99, line: 70, baseType: !96, size: 32, offset: 5824)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2057, file: !99, line: 71, baseType: !96, size: 32, offset: 5856)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bar", scope: !2057, file: !99, line: 72, baseType: !96, size: 32, offset: 5888)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2057, file: !99, line: 73, baseType: !96, size: 32, offset: 5920)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2057, file: !99, line: 74, baseType: !2090, size: 512, offset: 5952)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2091, line: 20, size: 512, elements: !2092)
!2091 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !{!2093, !2095, !2096, !2097, !2098, !2099, !2101, !2102}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2090, file: !2091, line: 21, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !70, line: 158, baseType: !1119)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2090, file: !2091, line: 22, baseType: !2094, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2090, file: !2091, line: 23, baseType: !109, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2090, file: !2091, line: 24, baseType: !216, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2090, file: !2091, line: 25, baseType: !216, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2090, file: !2091, line: 26, baseType: !2100, size: 64, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2090, file: !2091, line: 26, baseType: !2100, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2090, file: !2091, line: 26, baseType: !2100, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2057, file: !99, line: 75, baseType: !2090, size: 512, offset: 6464)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !2057, file: !99, line: 76, baseType: !1589, size: 64, offset: 6976)
!2105 = !DILocalVariable(name: "bus", arg: 1, scope: !93, file: !1, line: 177, type: !97)
!2106 = !DILocation(line: 177, column: 43, scope: !93)
!2107 = !DILocalVariable(name: "mapbase", arg: 2, scope: !93, file: !1, line: 177, type: !1119)
!2108 = !DILocation(line: 177, column: 60, scope: !93)
!2109 = !DILocalVariable(name: "base", arg: 3, scope: !93, file: !1, line: 178, type: !76)
!2110 = !DILocation(line: 178, column: 18, scope: !93)
!2111 = !DILocalVariable(name: "header", scope: !93, file: !1, line: 180, type: !2112)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chameleon_fpga_header", file: !49, line: 38, size: 160, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2121}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2113, file: !49, line: 39, baseType: !557, size: 8)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2113, file: !49, line: 40, baseType: !111, size: 8, offset: 8)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !2113, file: !49, line: 41, baseType: !557, size: 8, offset: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "bus_type", scope: !2113, file: !49, line: 42, baseType: !557, size: 8, offset: 24)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2113, file: !49, line: 43, baseType: !396, size: 16, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2113, file: !49, line: 44, baseType: !396, size: 16, offset: 48)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !2113, file: !49, line: 46, baseType: !2122, size: 96, offset: 64)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 96, elements: !1230)
!2123 = !DILocation(line: 180, column: 32, scope: !93)
!2124 = !DILocalVariable(name: "cb", scope: !93, file: !1, line: 181, type: !2125)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chameleon_bar", file: !49, line: 116, size: 64, elements: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2126, file: !49, line: 117, baseType: !421, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2126, file: !49, line: 118, baseType: !421, size: 32, offset: 32)
!2130 = !DILocation(line: 181, column: 24, scope: !93)
!2131 = !DILocalVariable(name: "p", scope: !93, file: !1, line: 182, type: !167)
!2132 = !DILocation(line: 182, column: 16, scope: !93)
!2133 = !DILocation(line: 182, column: 20, scope: !93)
!2134 = !DILocalVariable(name: "num_cells", scope: !93, file: !1, line: 183, type: !96)
!2135 = !DILocation(line: 183, column: 6, scope: !93)
!2136 = !DILocalVariable(name: "dtype", scope: !93, file: !1, line: 184, type: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !70, line: 104, baseType: !421)
!2138 = !DILocation(line: 184, column: 11, scope: !93)
!2139 = !DILocalVariable(name: "bar_count", scope: !93, file: !1, line: 185, type: !96)
!2140 = !DILocation(line: 185, column: 6, scope: !93)
!2141 = !DILocalVariable(name: "ret", scope: !93, file: !1, line: 186, type: !96)
!2142 = !DILocation(line: 186, column: 6, scope: !93)
!2143 = !DILocalVariable(name: "hsize", scope: !93, file: !1, line: 187, type: !421)
!2144 = !DILocation(line: 187, column: 6, scope: !93)
!2145 = !DILocation(line: 189, column: 8, scope: !93)
!2146 = !DILocation(line: 191, column: 19, scope: !93)
!2147 = !DILocation(line: 191, column: 11, scope: !93)
!2148 = !DILocation(line: 191, column: 9, scope: !93)
!2149 = !DILocation(line: 192, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !93, file: !1, line: 192, column: 6)
!2151 = !DILocation(line: 192, column: 6, scope: !93)
!2152 = !DILocation(line: 193, column: 3, scope: !2150)
!2153 = !DILocation(line: 196, column: 16, scope: !93)
!2154 = !DILocation(line: 196, column: 24, scope: !93)
!2155 = !DILocation(line: 196, column: 27, scope: !93)
!2156 = !DILocation(line: 196, column: 2, scope: !93)
!2157 = !DILocation(line: 198, column: 18, scope: !93)
!2158 = !DILocation(line: 198, column: 2, scope: !93)
!2159 = !DILocation(line: 198, column: 10, scope: !93)
!2160 = !DILocation(line: 198, column: 16, scope: !93)
!2161 = !DILocation(line: 199, column: 6, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !93, file: !1, line: 199, column: 6)
!2163 = !DILocation(line: 199, column: 14, scope: !2162)
!2164 = !DILocation(line: 199, column: 20, scope: !2162)
!2165 = !DILocation(line: 199, column: 6, scope: !93)
!2166 = !DILocation(line: 200, column: 3, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 199, column: 42)
!2168 = !DILocation(line: 202, column: 7, scope: !2167)
!2169 = !DILocation(line: 203, column: 3, scope: !2167)
!2170 = !DILocation(line: 205, column: 7, scope: !93)
!2171 = !DILocation(line: 205, column: 4, scope: !93)
!2172 = !DILocation(line: 207, column: 18, scope: !93)
!2173 = !DILocation(line: 207, column: 26, scope: !93)
!2174 = !DILocation(line: 207, column: 2, scope: !93)
!2175 = !DILocation(line: 207, column: 7, scope: !93)
!2176 = !DILocation(line: 207, column: 16, scope: !93)
!2177 = !DILocation(line: 208, column: 15, scope: !93)
!2178 = !DILocation(line: 208, column: 23, scope: !93)
!2179 = !DILocation(line: 208, column: 2, scope: !93)
!2180 = !DILocation(line: 208, column: 7, scope: !93)
!2181 = !DILocation(line: 208, column: 13, scope: !93)
!2182 = !DILocation(line: 209, column: 15, scope: !93)
!2183 = !DILocation(line: 209, column: 23, scope: !93)
!2184 = !DILocation(line: 209, column: 2, scope: !93)
!2185 = !DILocation(line: 209, column: 7, scope: !93)
!2186 = !DILocation(line: 209, column: 13, scope: !93)
!2187 = !DILocation(line: 210, column: 11, scope: !93)
!2188 = !DILocation(line: 210, column: 16, scope: !93)
!2189 = !DILocation(line: 211, column: 4, scope: !93)
!2190 = !DILocation(line: 211, column: 12, scope: !93)
!2191 = !DILocation(line: 210, column: 2, scope: !93)
!2192 = !DILocation(line: 213, column: 36, scope: !93)
!2193 = !DILocation(line: 213, column: 14, scope: !93)
!2194 = !DILocation(line: 213, column: 12, scope: !93)
!2195 = !DILocation(line: 214, column: 6, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !93, file: !1, line: 214, column: 6)
!2197 = !DILocation(line: 214, column: 16, scope: !2196)
!2198 = !DILocation(line: 214, column: 6, scope: !93)
!2199 = !DILocation(line: 215, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !1, line: 214, column: 21)
!2201 = !DILocation(line: 215, column: 7, scope: !2200)
!2202 = !DILocation(line: 216, column: 3, scope: !2200)
!2203 = !DILocation(line: 219, column: 2, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !93, file: !1, line: 219, column: 2)
!2205 = !DILocation(line: 219, column: 2, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 219, column: 2)
!2207 = !DILocation(line: 220, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 219, column: 36)
!2209 = !DILocation(line: 220, column: 3, scope: !2208)
!2210 = !DILocation(line: 222, column: 30, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 220, column: 18)
!2212 = !DILocation(line: 222, column: 35, scope: !2211)
!2213 = !DILocation(line: 222, column: 39, scope: !2211)
!2214 = !DILocation(line: 222, column: 42, scope: !2211)
!2215 = !DILocation(line: 222, column: 10, scope: !2211)
!2216 = !DILocation(line: 222, column: 8, scope: !2211)
!2217 = !DILocation(line: 223, column: 8, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2211, file: !1, line: 223, column: 8)
!2219 = !DILocation(line: 223, column: 12, scope: !2218)
!2220 = !DILocation(line: 223, column: 8, scope: !2211)
!2221 = !DILocation(line: 224, column: 5, scope: !2218)
!2222 = !DILocation(line: 225, column: 6, scope: !2211)
!2223 = !DILocation(line: 226, column: 4, scope: !2211)
!2224 = !DILocation(line: 228, column: 24, scope: !2211)
!2225 = !DILocation(line: 228, column: 29, scope: !2211)
!2226 = !DILocation(line: 228, column: 33, scope: !2211)
!2227 = !DILocation(line: 228, column: 4, scope: !2211)
!2228 = !DILocation(line: 229, column: 6, scope: !2211)
!2229 = !DILocation(line: 230, column: 4, scope: !2211)
!2230 = !DILocation(line: 232, column: 4, scope: !2211)
!2231 = !DILocation(line: 234, column: 4, scope: !2211)
!2232 = !DILocation(line: 236, column: 8, scope: !2211)
!2233 = !DILocation(line: 237, column: 4, scope: !2211)
!2234 = !DILocation(line: 239, column: 12, scope: !2208)
!2235 = !DILocation(line: 240, column: 2, scope: !2208)
!2236 = distinct !{!2236, !2203, !2237}
!2237 = !DILocation(line: 240, column: 2, scope: !2204)
!2238 = !DILocation(line: 242, column: 6, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !93, file: !1, line: 242, column: 6)
!2240 = !DILocation(line: 242, column: 16, scope: !2239)
!2241 = !DILocation(line: 242, column: 6, scope: !93)
!2242 = !DILocation(line: 243, column: 13, scope: !2239)
!2243 = !DILocation(line: 243, column: 3, scope: !2239)
!2244 = !DILocation(line: 245, column: 8, scope: !93)
!2245 = !DILocation(line: 245, column: 2, scope: !93)
!2246 = !DILocation(line: 246, column: 8, scope: !93)
!2247 = !DILocation(line: 246, column: 2, scope: !93)
!2248 = !DILocation(line: 247, column: 9, scope: !93)
!2249 = !DILocation(line: 247, column: 2, scope: !93)
!2250 = !DILabel(scope: !93, name: "free_bar", file: !1, line: 249)
!2251 = !DILocation(line: 249, column: 1, scope: !93)
!2252 = !DILocation(line: 250, column: 8, scope: !93)
!2253 = !DILocation(line: 250, column: 2, scope: !93)
!2254 = !DILabel(scope: !93, name: "free_header", file: !1, line: 251)
!2255 = !DILocation(line: 251, column: 1, scope: !93)
!2256 = !DILocation(line: 252, column: 8, scope: !93)
!2257 = !DILocation(line: 252, column: 2, scope: !93)
!2258 = !DILocation(line: 254, column: 9, scope: !93)
!2259 = !DILocation(line: 254, column: 2, scope: !93)
!2260 = !DILocation(line: 255, column: 1, scope: !93)
!2261 = distinct !DISubprogram(name: "kzalloc", scope: !57, file: !57, line: 662, type: !2262, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!76, !213, !69}
!2264 = !DILocalVariable(name: "s", arg: 1, scope: !2265, file: !57, line: 445, type: !1040)
!2265 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !57, file: !57, line: 445, type: !2266, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!76, !1040, !69, !213}
!2268 = !DILocation(line: 445, column: 72, scope: !2265, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 552, column: 10, scope: !2270, inlinedAt: !2273)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !57, line: 540, column: 34)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !57, line: 540, column: 6)
!2272 = distinct !DISubprogram(name: "kmalloc", scope: !57, file: !57, line: 538, type: !2262, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2273 = distinct !DILocation(line: 664, column: 9, scope: !2261)
!2274 = !DILocalVariable(name: "flags", arg: 2, scope: !2265, file: !57, line: 446, type: !69)
!2275 = !DILocation(line: 446, column: 9, scope: !2265, inlinedAt: !2269)
!2276 = !DILocalVariable(name: "size", arg: 3, scope: !2265, file: !57, line: 446, type: !213)
!2277 = !DILocation(line: 446, column: 23, scope: !2265, inlinedAt: !2269)
!2278 = !DILocalVariable(name: "ret", scope: !2265, file: !57, line: 448, type: !76)
!2279 = !DILocation(line: 448, column: 8, scope: !2265, inlinedAt: !2269)
!2280 = !DILocalVariable(name: "flags", arg: 1, scope: !2281, file: !57, line: 318, type: !69)
!2281 = distinct !DISubprogram(name: "kmalloc_type", scope: !57, file: !57, line: 318, type: !2282, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!56, !69}
!2284 = !DILocation(line: 318, column: 67, scope: !2281, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 553, column: 20, scope: !2270, inlinedAt: !2273)
!2286 = !DILocalVariable(name: "size", arg: 1, scope: !2287, file: !57, line: 346, type: !213)
!2287 = distinct !DISubprogram(name: "kmalloc_index", scope: !57, file: !57, line: 346, type: !2288, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!5, !213}
!2290 = !DILocation(line: 346, column: 58, scope: !2287, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 547, column: 11, scope: !2270, inlinedAt: !2273)
!2292 = !DILocalVariable(name: "size", arg: 1, scope: !2293, file: !57, line: 472, type: !213)
!2293 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !57, file: !57, line: 472, type: !2294, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!76, !213, !69, !5}
!2296 = !DILocation(line: 472, column: 28, scope: !2293, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 481, column: 9, scope: !2298, inlinedAt: !2299)
!2298 = distinct !DISubprogram(name: "kmalloc_large", scope: !57, file: !57, line: 478, type: !2262, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2299 = distinct !DILocation(line: 545, column: 11, scope: !2300, inlinedAt: !2273)
!2300 = distinct !DILexicalBlock(scope: !2270, file: !57, line: 544, column: 7)
!2301 = !DILocalVariable(name: "flags", arg: 2, scope: !2293, file: !57, line: 472, type: !69)
!2302 = !DILocation(line: 472, column: 40, scope: !2293, inlinedAt: !2297)
!2303 = !DILocalVariable(name: "order", arg: 3, scope: !2293, file: !57, line: 472, type: !5)
!2304 = !DILocation(line: 472, column: 60, scope: !2293, inlinedAt: !2297)
!2305 = !DILocalVariable(name: "size", arg: 1, scope: !2298, file: !57, line: 478, type: !213)
!2306 = !DILocation(line: 478, column: 51, scope: !2298, inlinedAt: !2299)
!2307 = !DILocalVariable(name: "flags", arg: 2, scope: !2298, file: !57, line: 478, type: !69)
!2308 = !DILocation(line: 478, column: 63, scope: !2298, inlinedAt: !2299)
!2309 = !DILocalVariable(name: "order", scope: !2298, file: !57, line: 480, type: !5)
!2310 = !DILocation(line: 480, column: 15, scope: !2298, inlinedAt: !2299)
!2311 = !DILocalVariable(name: "size", arg: 1, scope: !2272, file: !57, line: 538, type: !213)
!2312 = !DILocation(line: 538, column: 45, scope: !2272, inlinedAt: !2273)
!2313 = !DILocalVariable(name: "flags", arg: 2, scope: !2272, file: !57, line: 538, type: !69)
!2314 = !DILocation(line: 538, column: 57, scope: !2272, inlinedAt: !2273)
!2315 = !DILocalVariable(name: "index", scope: !2270, file: !57, line: 542, type: !5)
!2316 = !DILocation(line: 542, column: 16, scope: !2270, inlinedAt: !2273)
!2317 = !DILocalVariable(name: "size", arg: 1, scope: !2261, file: !57, line: 662, type: !213)
!2318 = !DILocation(line: 662, column: 36, scope: !2261)
!2319 = !DILocalVariable(name: "flags", arg: 2, scope: !2261, file: !57, line: 662, type: !69)
!2320 = !DILocation(line: 662, column: 48, scope: !2261)
!2321 = !DILocation(line: 664, column: 17, scope: !2261)
!2322 = !DILocation(line: 664, column: 23, scope: !2261)
!2323 = !DILocation(line: 664, column: 29, scope: !2261)
!2324 = !DILocation(line: 540, column: 27, scope: !2271, inlinedAt: !2273)
!2325 = !DILocation(line: 540, column: 6, scope: !2271, inlinedAt: !2273)
!2326 = !DILocation(line: 540, column: 6, scope: !2272, inlinedAt: !2273)
!2327 = !DILocation(line: 544, column: 7, scope: !2300, inlinedAt: !2273)
!2328 = !DILocation(line: 544, column: 12, scope: !2300, inlinedAt: !2273)
!2329 = !DILocation(line: 544, column: 7, scope: !2270, inlinedAt: !2273)
!2330 = !DILocation(line: 545, column: 25, scope: !2300, inlinedAt: !2273)
!2331 = !DILocation(line: 545, column: 31, scope: !2300, inlinedAt: !2273)
!2332 = !DILocation(line: 480, column: 33, scope: !2298, inlinedAt: !2299)
!2333 = !DILocation(line: 480, column: 23, scope: !2298, inlinedAt: !2299)
!2334 = !DILocation(line: 481, column: 29, scope: !2298, inlinedAt: !2299)
!2335 = !DILocation(line: 481, column: 35, scope: !2298, inlinedAt: !2299)
!2336 = !DILocation(line: 481, column: 42, scope: !2298, inlinedAt: !2299)
!2337 = !DILocation(line: 474, column: 23, scope: !2293, inlinedAt: !2297)
!2338 = !DILocation(line: 474, column: 29, scope: !2293, inlinedAt: !2297)
!2339 = !DILocation(line: 474, column: 36, scope: !2293, inlinedAt: !2297)
!2340 = !DILocation(line: 474, column: 9, scope: !2293, inlinedAt: !2297)
!2341 = !DILocation(line: 545, column: 4, scope: !2300, inlinedAt: !2273)
!2342 = !DILocation(line: 547, column: 25, scope: !2270, inlinedAt: !2273)
!2343 = !DILocation(line: 348, column: 7, scope: !2344, inlinedAt: !2291)
!2344 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 348, column: 6)
!2345 = !DILocation(line: 348, column: 6, scope: !2287, inlinedAt: !2291)
!2346 = !DILocation(line: 349, column: 3, scope: !2344, inlinedAt: !2291)
!2347 = !DILocation(line: 351, column: 6, scope: !2348, inlinedAt: !2291)
!2348 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 351, column: 6)
!2349 = !DILocation(line: 351, column: 11, scope: !2348, inlinedAt: !2291)
!2350 = !DILocation(line: 351, column: 6, scope: !2287, inlinedAt: !2291)
!2351 = !DILocation(line: 352, column: 3, scope: !2348, inlinedAt: !2291)
!2352 = !DILocation(line: 354, column: 32, scope: !2353, inlinedAt: !2291)
!2353 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 354, column: 6)
!2354 = !DILocation(line: 354, column: 37, scope: !2353, inlinedAt: !2291)
!2355 = !DILocation(line: 354, column: 42, scope: !2353, inlinedAt: !2291)
!2356 = !DILocation(line: 354, column: 45, scope: !2353, inlinedAt: !2291)
!2357 = !DILocation(line: 354, column: 50, scope: !2353, inlinedAt: !2291)
!2358 = !DILocation(line: 354, column: 6, scope: !2287, inlinedAt: !2291)
!2359 = !DILocation(line: 355, column: 3, scope: !2353, inlinedAt: !2291)
!2360 = !DILocation(line: 356, column: 32, scope: !2361, inlinedAt: !2291)
!2361 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 356, column: 6)
!2362 = !DILocation(line: 356, column: 37, scope: !2361, inlinedAt: !2291)
!2363 = !DILocation(line: 356, column: 43, scope: !2361, inlinedAt: !2291)
!2364 = !DILocation(line: 356, column: 46, scope: !2361, inlinedAt: !2291)
!2365 = !DILocation(line: 356, column: 51, scope: !2361, inlinedAt: !2291)
!2366 = !DILocation(line: 356, column: 6, scope: !2287, inlinedAt: !2291)
!2367 = !DILocation(line: 357, column: 3, scope: !2361, inlinedAt: !2291)
!2368 = !DILocation(line: 358, column: 6, scope: !2369, inlinedAt: !2291)
!2369 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 358, column: 6)
!2370 = !DILocation(line: 358, column: 11, scope: !2369, inlinedAt: !2291)
!2371 = !DILocation(line: 358, column: 6, scope: !2287, inlinedAt: !2291)
!2372 = !DILocation(line: 358, column: 26, scope: !2369, inlinedAt: !2291)
!2373 = !DILocation(line: 359, column: 6, scope: !2374, inlinedAt: !2291)
!2374 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 359, column: 6)
!2375 = !DILocation(line: 359, column: 11, scope: !2374, inlinedAt: !2291)
!2376 = !DILocation(line: 359, column: 6, scope: !2287, inlinedAt: !2291)
!2377 = !DILocation(line: 359, column: 26, scope: !2374, inlinedAt: !2291)
!2378 = !DILocation(line: 360, column: 6, scope: !2379, inlinedAt: !2291)
!2379 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 360, column: 6)
!2380 = !DILocation(line: 360, column: 11, scope: !2379, inlinedAt: !2291)
!2381 = !DILocation(line: 360, column: 6, scope: !2287, inlinedAt: !2291)
!2382 = !DILocation(line: 360, column: 26, scope: !2379, inlinedAt: !2291)
!2383 = !DILocation(line: 361, column: 6, scope: !2384, inlinedAt: !2291)
!2384 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 361, column: 6)
!2385 = !DILocation(line: 361, column: 11, scope: !2384, inlinedAt: !2291)
!2386 = !DILocation(line: 361, column: 6, scope: !2287, inlinedAt: !2291)
!2387 = !DILocation(line: 361, column: 26, scope: !2384, inlinedAt: !2291)
!2388 = !DILocation(line: 362, column: 6, scope: !2389, inlinedAt: !2291)
!2389 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 362, column: 6)
!2390 = !DILocation(line: 362, column: 11, scope: !2389, inlinedAt: !2291)
!2391 = !DILocation(line: 362, column: 6, scope: !2287, inlinedAt: !2291)
!2392 = !DILocation(line: 362, column: 26, scope: !2389, inlinedAt: !2291)
!2393 = !DILocation(line: 363, column: 6, scope: !2394, inlinedAt: !2291)
!2394 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 363, column: 6)
!2395 = !DILocation(line: 363, column: 11, scope: !2394, inlinedAt: !2291)
!2396 = !DILocation(line: 363, column: 6, scope: !2287, inlinedAt: !2291)
!2397 = !DILocation(line: 363, column: 26, scope: !2394, inlinedAt: !2291)
!2398 = !DILocation(line: 364, column: 6, scope: !2399, inlinedAt: !2291)
!2399 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 364, column: 6)
!2400 = !DILocation(line: 364, column: 11, scope: !2399, inlinedAt: !2291)
!2401 = !DILocation(line: 364, column: 6, scope: !2287, inlinedAt: !2291)
!2402 = !DILocation(line: 364, column: 26, scope: !2399, inlinedAt: !2291)
!2403 = !DILocation(line: 365, column: 6, scope: !2404, inlinedAt: !2291)
!2404 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 365, column: 6)
!2405 = !DILocation(line: 365, column: 11, scope: !2404, inlinedAt: !2291)
!2406 = !DILocation(line: 365, column: 6, scope: !2287, inlinedAt: !2291)
!2407 = !DILocation(line: 365, column: 26, scope: !2404, inlinedAt: !2291)
!2408 = !DILocation(line: 366, column: 6, scope: !2409, inlinedAt: !2291)
!2409 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 366, column: 6)
!2410 = !DILocation(line: 366, column: 11, scope: !2409, inlinedAt: !2291)
!2411 = !DILocation(line: 366, column: 6, scope: !2287, inlinedAt: !2291)
!2412 = !DILocation(line: 366, column: 26, scope: !2409, inlinedAt: !2291)
!2413 = !DILocation(line: 367, column: 6, scope: !2414, inlinedAt: !2291)
!2414 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 367, column: 6)
!2415 = !DILocation(line: 367, column: 11, scope: !2414, inlinedAt: !2291)
!2416 = !DILocation(line: 367, column: 6, scope: !2287, inlinedAt: !2291)
!2417 = !DILocation(line: 367, column: 26, scope: !2414, inlinedAt: !2291)
!2418 = !DILocation(line: 368, column: 6, scope: !2419, inlinedAt: !2291)
!2419 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 368, column: 6)
!2420 = !DILocation(line: 368, column: 11, scope: !2419, inlinedAt: !2291)
!2421 = !DILocation(line: 368, column: 6, scope: !2287, inlinedAt: !2291)
!2422 = !DILocation(line: 368, column: 26, scope: !2419, inlinedAt: !2291)
!2423 = !DILocation(line: 369, column: 6, scope: !2424, inlinedAt: !2291)
!2424 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 369, column: 6)
!2425 = !DILocation(line: 369, column: 11, scope: !2424, inlinedAt: !2291)
!2426 = !DILocation(line: 369, column: 6, scope: !2287, inlinedAt: !2291)
!2427 = !DILocation(line: 369, column: 26, scope: !2424, inlinedAt: !2291)
!2428 = !DILocation(line: 370, column: 6, scope: !2429, inlinedAt: !2291)
!2429 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 370, column: 6)
!2430 = !DILocation(line: 370, column: 11, scope: !2429, inlinedAt: !2291)
!2431 = !DILocation(line: 370, column: 6, scope: !2287, inlinedAt: !2291)
!2432 = !DILocation(line: 370, column: 26, scope: !2429, inlinedAt: !2291)
!2433 = !DILocation(line: 371, column: 6, scope: !2434, inlinedAt: !2291)
!2434 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 371, column: 6)
!2435 = !DILocation(line: 371, column: 11, scope: !2434, inlinedAt: !2291)
!2436 = !DILocation(line: 371, column: 6, scope: !2287, inlinedAt: !2291)
!2437 = !DILocation(line: 371, column: 26, scope: !2434, inlinedAt: !2291)
!2438 = !DILocation(line: 372, column: 6, scope: !2439, inlinedAt: !2291)
!2439 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 372, column: 6)
!2440 = !DILocation(line: 372, column: 11, scope: !2439, inlinedAt: !2291)
!2441 = !DILocation(line: 372, column: 6, scope: !2287, inlinedAt: !2291)
!2442 = !DILocation(line: 372, column: 26, scope: !2439, inlinedAt: !2291)
!2443 = !DILocation(line: 373, column: 6, scope: !2444, inlinedAt: !2291)
!2444 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 373, column: 6)
!2445 = !DILocation(line: 373, column: 11, scope: !2444, inlinedAt: !2291)
!2446 = !DILocation(line: 373, column: 6, scope: !2287, inlinedAt: !2291)
!2447 = !DILocation(line: 373, column: 26, scope: !2444, inlinedAt: !2291)
!2448 = !DILocation(line: 374, column: 6, scope: !2449, inlinedAt: !2291)
!2449 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 374, column: 6)
!2450 = !DILocation(line: 374, column: 11, scope: !2449, inlinedAt: !2291)
!2451 = !DILocation(line: 374, column: 6, scope: !2287, inlinedAt: !2291)
!2452 = !DILocation(line: 374, column: 26, scope: !2449, inlinedAt: !2291)
!2453 = !DILocation(line: 375, column: 6, scope: !2454, inlinedAt: !2291)
!2454 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 375, column: 6)
!2455 = !DILocation(line: 375, column: 11, scope: !2454, inlinedAt: !2291)
!2456 = !DILocation(line: 375, column: 6, scope: !2287, inlinedAt: !2291)
!2457 = !DILocation(line: 375, column: 27, scope: !2454, inlinedAt: !2291)
!2458 = !DILocation(line: 376, column: 6, scope: !2459, inlinedAt: !2291)
!2459 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 376, column: 6)
!2460 = !DILocation(line: 376, column: 11, scope: !2459, inlinedAt: !2291)
!2461 = !DILocation(line: 376, column: 6, scope: !2287, inlinedAt: !2291)
!2462 = !DILocation(line: 376, column: 32, scope: !2459, inlinedAt: !2291)
!2463 = !DILocation(line: 377, column: 6, scope: !2464, inlinedAt: !2291)
!2464 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 377, column: 6)
!2465 = !DILocation(line: 377, column: 11, scope: !2464, inlinedAt: !2291)
!2466 = !DILocation(line: 377, column: 6, scope: !2287, inlinedAt: !2291)
!2467 = !DILocation(line: 377, column: 32, scope: !2464, inlinedAt: !2291)
!2468 = !DILocation(line: 378, column: 6, scope: !2469, inlinedAt: !2291)
!2469 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 378, column: 6)
!2470 = !DILocation(line: 378, column: 11, scope: !2469, inlinedAt: !2291)
!2471 = !DILocation(line: 378, column: 6, scope: !2287, inlinedAt: !2291)
!2472 = !DILocation(line: 378, column: 32, scope: !2469, inlinedAt: !2291)
!2473 = !DILocation(line: 379, column: 6, scope: !2474, inlinedAt: !2291)
!2474 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 379, column: 6)
!2475 = !DILocation(line: 379, column: 11, scope: !2474, inlinedAt: !2291)
!2476 = !DILocation(line: 379, column: 6, scope: !2287, inlinedAt: !2291)
!2477 = !DILocation(line: 379, column: 33, scope: !2474, inlinedAt: !2291)
!2478 = !DILocation(line: 380, column: 6, scope: !2479, inlinedAt: !2291)
!2479 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 380, column: 6)
!2480 = !DILocation(line: 380, column: 11, scope: !2479, inlinedAt: !2291)
!2481 = !DILocation(line: 380, column: 6, scope: !2287, inlinedAt: !2291)
!2482 = !DILocation(line: 380, column: 33, scope: !2479, inlinedAt: !2291)
!2483 = !DILocation(line: 381, column: 6, scope: !2484, inlinedAt: !2291)
!2484 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 381, column: 6)
!2485 = !DILocation(line: 381, column: 11, scope: !2484, inlinedAt: !2291)
!2486 = !DILocation(line: 381, column: 6, scope: !2287, inlinedAt: !2291)
!2487 = !DILocation(line: 381, column: 33, scope: !2484, inlinedAt: !2291)
!2488 = !DILocation(line: 382, column: 2, scope: !2489, inlinedAt: !2291)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !57, line: 382, column: 2)
!2490 = distinct !DILexicalBlock(scope: !2287, file: !57, line: 382, column: 2)
!2491 = !{i32 -2144636964, i32 -2144636935, i32 -2144636889, i32 -2144636831, i32 -2144636777, i32 -2144636723, i32 -2144636668, i32 -2144636637}
!2492 = !DILocation(line: 382, column: 2, scope: !2493, inlinedAt: !2291)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !57, line: 382, column: 2)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !57, line: 382, column: 2)
!2495 = !{i32 -2144636194, i32 -2144636187, i32 -2144636133, i32 -2144636102, i32 -2144636072}
!2496 = !DILocation(line: 382, column: 2, scope: !2494, inlinedAt: !2291)
!2497 = !DILocation(line: 386, column: 1, scope: !2287, inlinedAt: !2291)
!2498 = !DILocation(line: 547, column: 9, scope: !2270, inlinedAt: !2273)
!2499 = !DILocation(line: 549, column: 8, scope: !2500, inlinedAt: !2273)
!2500 = distinct !DILexicalBlock(scope: !2270, file: !57, line: 549, column: 7)
!2501 = !DILocation(line: 549, column: 7, scope: !2270, inlinedAt: !2273)
!2502 = !DILocation(line: 550, column: 4, scope: !2500, inlinedAt: !2273)
!2503 = !DILocation(line: 553, column: 33, scope: !2270, inlinedAt: !2273)
!2504 = !DILocation(line: 325, column: 6, scope: !2505, inlinedAt: !2285)
!2505 = distinct !DILexicalBlock(scope: !2281, file: !57, line: 325, column: 6)
!2506 = !DILocation(line: 325, column: 6, scope: !2281, inlinedAt: !2285)
!2507 = !DILocation(line: 326, column: 3, scope: !2505, inlinedAt: !2285)
!2508 = !DILocation(line: 332, column: 9, scope: !2281, inlinedAt: !2285)
!2509 = !DILocation(line: 332, column: 15, scope: !2281, inlinedAt: !2285)
!2510 = !DILocation(line: 332, column: 2, scope: !2281, inlinedAt: !2285)
!2511 = !DILocation(line: 336, column: 1, scope: !2281, inlinedAt: !2285)
!2512 = !DILocation(line: 553, column: 5, scope: !2270, inlinedAt: !2273)
!2513 = !DILocation(line: 553, column: 41, scope: !2270, inlinedAt: !2273)
!2514 = !DILocation(line: 554, column: 5, scope: !2270, inlinedAt: !2273)
!2515 = !DILocation(line: 554, column: 12, scope: !2270, inlinedAt: !2273)
!2516 = !DILocation(line: 448, column: 31, scope: !2265, inlinedAt: !2269)
!2517 = !DILocation(line: 448, column: 34, scope: !2265, inlinedAt: !2269)
!2518 = !DILocation(line: 448, column: 14, scope: !2265, inlinedAt: !2269)
!2519 = !DILocation(line: 450, column: 22, scope: !2265, inlinedAt: !2269)
!2520 = !DILocation(line: 450, column: 25, scope: !2265, inlinedAt: !2269)
!2521 = !DILocation(line: 450, column: 30, scope: !2265, inlinedAt: !2269)
!2522 = !DILocation(line: 450, column: 36, scope: !2265, inlinedAt: !2269)
!2523 = !DILocation(line: 450, column: 8, scope: !2265, inlinedAt: !2269)
!2524 = !DILocation(line: 450, column: 6, scope: !2265, inlinedAt: !2269)
!2525 = !DILocation(line: 451, column: 9, scope: !2265, inlinedAt: !2269)
!2526 = !DILocation(line: 552, column: 3, scope: !2270, inlinedAt: !2273)
!2527 = !DILocation(line: 557, column: 19, scope: !2272, inlinedAt: !2273)
!2528 = !DILocation(line: 557, column: 25, scope: !2272, inlinedAt: !2273)
!2529 = !DILocation(line: 557, column: 9, scope: !2272, inlinedAt: !2273)
!2530 = !DILocation(line: 557, column: 2, scope: !2272, inlinedAt: !2273)
!2531 = !DILocation(line: 558, column: 1, scope: !2272, inlinedAt: !2273)
!2532 = !DILocation(line: 664, column: 2, scope: !2261)
!2533 = distinct !DISubprogram(name: "chameleon_get_bar", scope: !1, file: !1, line: 133, type: !2534, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!96, !2536, !1119, !2537}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2538 = !DILocalVariable(name: "base", arg: 1, scope: !2533, file: !1, line: 133, type: !2536)
!2539 = !DILocation(line: 133, column: 45, scope: !2533)
!2540 = !DILocalVariable(name: "mapbase", arg: 2, scope: !2533, file: !1, line: 133, type: !1119)
!2541 = !DILocation(line: 133, column: 63, scope: !2533)
!2542 = !DILocalVariable(name: "cb", arg: 3, scope: !2533, file: !1, line: 134, type: !2537)
!2543 = !DILocation(line: 134, column: 32, scope: !2533)
!2544 = !DILocalVariable(name: "c", scope: !2533, file: !1, line: 136, type: !2125)
!2545 = !DILocation(line: 136, column: 24, scope: !2533)
!2546 = !DILocalVariable(name: "bar_count", scope: !2533, file: !1, line: 137, type: !96)
!2547 = !DILocation(line: 137, column: 6, scope: !2533)
!2548 = !DILocalVariable(name: "reg", scope: !2533, file: !1, line: 138, type: !83)
!2549 = !DILocation(line: 138, column: 9, scope: !2533)
!2550 = !DILocalVariable(name: "dtype", scope: !2533, file: !1, line: 139, type: !421)
!2551 = !DILocation(line: 139, column: 6, scope: !2533)
!2552 = !DILocation(line: 148, column: 26, scope: !2533)
!2553 = !DILocation(line: 148, column: 25, scope: !2533)
!2554 = !DILocation(line: 148, column: 10, scope: !2533)
!2555 = !DILocation(line: 148, column: 8, scope: !2533)
!2556 = !DILocation(line: 149, column: 6, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 149, column: 6)
!2558 = !DILocation(line: 149, column: 12, scope: !2557)
!2559 = !DILocation(line: 149, column: 6, scope: !2533)
!2560 = !DILocation(line: 150, column: 16, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 149, column: 36)
!2562 = !DILocation(line: 150, column: 15, scope: !2561)
!2563 = !DILocation(line: 150, column: 9, scope: !2561)
!2564 = !DILocation(line: 150, column: 7, scope: !2561)
!2565 = !DILocation(line: 152, column: 15, scope: !2561)
!2566 = !DILocation(line: 152, column: 13, scope: !2561)
!2567 = !DILocation(line: 153, column: 7, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 153, column: 7)
!2569 = !DILocation(line: 153, column: 17, scope: !2568)
!2570 = !DILocation(line: 153, column: 22, scope: !2568)
!2571 = !DILocation(line: 153, column: 25, scope: !2568)
!2572 = !DILocation(line: 153, column: 35, scope: !2568)
!2573 = !DILocation(line: 153, column: 7, scope: !2561)
!2574 = !DILocation(line: 154, column: 4, scope: !2568)
!2575 = !DILocation(line: 156, column: 15, scope: !2561)
!2576 = !DILocation(line: 156, column: 7, scope: !2561)
!2577 = !DILocation(line: 156, column: 5, scope: !2561)
!2578 = !DILocation(line: 158, column: 8, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 158, column: 7)
!2580 = !DILocation(line: 158, column: 7, scope: !2561)
!2581 = !DILocation(line: 159, column: 4, scope: !2579)
!2582 = !DILocation(line: 161, column: 24, scope: !2561)
!2583 = !DILocation(line: 161, column: 23, scope: !2561)
!2584 = !DILocation(line: 161, column: 30, scope: !2561)
!2585 = !DILocation(line: 161, column: 33, scope: !2561)
!2586 = !DILocation(line: 161, column: 3, scope: !2561)
!2587 = !DILocation(line: 162, column: 12, scope: !2561)
!2588 = !DILocation(line: 162, column: 4, scope: !2561)
!2589 = !DILocation(line: 162, column: 9, scope: !2561)
!2590 = !DILocation(line: 163, column: 2, scope: !2561)
!2591 = !DILocation(line: 164, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 163, column: 9)
!2593 = !DILocation(line: 164, column: 5, scope: !2592)
!2594 = !DILocation(line: 165, column: 8, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !1, line: 165, column: 7)
!2596 = !DILocation(line: 165, column: 7, scope: !2592)
!2597 = !DILocation(line: 166, column: 4, scope: !2595)
!2598 = !DILocation(line: 168, column: 13, scope: !2592)
!2599 = !DILocation(line: 169, column: 13, scope: !2592)
!2600 = !DILocation(line: 169, column: 3, scope: !2592)
!2601 = !DILocation(line: 169, column: 6, scope: !2592)
!2602 = !DILocation(line: 169, column: 11, scope: !2592)
!2603 = !DILocation(line: 172, column: 8, scope: !2533)
!2604 = !DILocation(line: 172, column: 3, scope: !2533)
!2605 = !DILocation(line: 172, column: 6, scope: !2533)
!2606 = !DILocation(line: 174, column: 9, scope: !2533)
!2607 = !DILocation(line: 174, column: 2, scope: !2533)
!2608 = !DILocation(line: 175, column: 1, scope: !2533)
!2609 = distinct !DISubprogram(name: "get_next_dtype", scope: !1, file: !1, line: 21, type: !2610, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!2137, !76}
!2612 = !DILocalVariable(name: "p", arg: 1, scope: !2609, file: !1, line: 21, type: !76)
!2613 = !DILocation(line: 21, column: 53, scope: !2609)
!2614 = !DILocalVariable(name: "dtype", scope: !2609, file: !1, line: 23, type: !2137)
!2615 = !DILocation(line: 23, column: 11, scope: !2609)
!2616 = !DILocation(line: 25, column: 16, scope: !2609)
!2617 = !DILocation(line: 25, column: 10, scope: !2609)
!2618 = !DILocation(line: 25, column: 8, scope: !2609)
!2619 = !DILocation(line: 26, column: 9, scope: !2609)
!2620 = !DILocation(line: 26, column: 15, scope: !2609)
!2621 = !DILocation(line: 26, column: 2, scope: !2609)
!2622 = distinct !DISubprogram(name: "chameleon_parse_gdd", scope: !1, file: !1, line: 36, type: !2623, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!96, !97, !2125, !76, !96}
!2625 = !DILocalVariable(name: "bus", arg: 1, scope: !2622, file: !1, line: 36, type: !97)
!2626 = !DILocation(line: 36, column: 48, scope: !2622)
!2627 = !DILocalVariable(name: "cb", arg: 2, scope: !2622, file: !1, line: 37, type: !2125)
!2628 = !DILocation(line: 37, column: 26, scope: !2622)
!2629 = !DILocalVariable(name: "base", arg: 3, scope: !2622, file: !1, line: 38, type: !76)
!2630 = !DILocation(line: 38, column: 18, scope: !2622)
!2631 = !DILocalVariable(name: "bar_count", arg: 4, scope: !2622, file: !1, line: 38, type: !96)
!2632 = !DILocation(line: 38, column: 28, scope: !2622)
!2633 = !DILocalVariable(name: "gdd", scope: !2622, file: !1, line: 40, type: !79)
!2634 = !DILocation(line: 40, column: 32, scope: !2622)
!2635 = !DILocation(line: 41, column: 36, scope: !2622)
!2636 = !DILocation(line: 41, column: 3, scope: !2622)
!2637 = !DILocalVariable(name: "mdev", scope: !2622, file: !1, line: 42, type: !2056)
!2638 = !DILocation(line: 42, column: 21, scope: !2622)
!2639 = !DILocalVariable(name: "dev_mapbase", scope: !2622, file: !1, line: 43, type: !421)
!2640 = !DILocation(line: 43, column: 6, scope: !2622)
!2641 = !DILocalVariable(name: "offset", scope: !2622, file: !1, line: 44, type: !421)
!2642 = !DILocation(line: 44, column: 6, scope: !2622)
!2643 = !DILocalVariable(name: "size", scope: !2622, file: !1, line: 45, type: !421)
!2644 = !DILocation(line: 45, column: 6, scope: !2622)
!2645 = !DILocalVariable(name: "ret", scope: !2622, file: !1, line: 46, type: !96)
!2646 = !DILocation(line: 46, column: 6, scope: !2622)
!2647 = !DILocalVariable(name: "reg1", scope: !2622, file: !1, line: 47, type: !83)
!2648 = !DILocation(line: 47, column: 9, scope: !2622)
!2649 = !DILocalVariable(name: "reg2", scope: !2622, file: !1, line: 48, type: !83)
!2650 = !DILocation(line: 48, column: 9, scope: !2622)
!2651 = !DILocation(line: 50, column: 23, scope: !2622)
!2652 = !DILocation(line: 50, column: 9, scope: !2622)
!2653 = !DILocation(line: 50, column: 7, scope: !2622)
!2654 = !DILocation(line: 51, column: 7, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 51, column: 6)
!2656 = !DILocation(line: 51, column: 6, scope: !2622)
!2657 = !DILocation(line: 52, column: 3, scope: !2655)
!2658 = !DILocation(line: 54, column: 16, scope: !2622)
!2659 = !DILocation(line: 54, column: 21, scope: !2622)
!2660 = !DILocation(line: 54, column: 15, scope: !2622)
!2661 = !DILocation(line: 54, column: 9, scope: !2622)
!2662 = !DILocation(line: 54, column: 7, scope: !2622)
!2663 = !DILocation(line: 55, column: 16, scope: !2622)
!2664 = !DILocation(line: 55, column: 21, scope: !2622)
!2665 = !DILocation(line: 55, column: 15, scope: !2622)
!2666 = !DILocation(line: 55, column: 9, scope: !2622)
!2667 = !DILocation(line: 55, column: 7, scope: !2622)
!2668 = !DILocation(line: 56, column: 18, scope: !2622)
!2669 = !DILocation(line: 56, column: 23, scope: !2622)
!2670 = !DILocation(line: 56, column: 17, scope: !2622)
!2671 = !DILocation(line: 56, column: 11, scope: !2622)
!2672 = !DILocation(line: 56, column: 9, scope: !2622)
!2673 = !DILocation(line: 57, column: 16, scope: !2622)
!2674 = !DILocation(line: 57, column: 21, scope: !2622)
!2675 = !DILocation(line: 57, column: 15, scope: !2622)
!2676 = !DILocation(line: 57, column: 9, scope: !2622)
!2677 = !DILocation(line: 57, column: 7, scope: !2622)
!2678 = !DILocation(line: 59, column: 13, scope: !2622)
!2679 = !DILocation(line: 59, column: 2, scope: !2622)
!2680 = !DILocation(line: 59, column: 8, scope: !2622)
!2681 = !DILocation(line: 59, column: 11, scope: !2622)
!2682 = !DILocation(line: 60, column: 14, scope: !2622)
!2683 = !DILocation(line: 60, column: 2, scope: !2622)
!2684 = !DILocation(line: 60, column: 8, scope: !2622)
!2685 = !DILocation(line: 60, column: 12, scope: !2622)
!2686 = !DILocation(line: 61, column: 14, scope: !2622)
!2687 = !DILocation(line: 61, column: 2, scope: !2622)
!2688 = !DILocation(line: 61, column: 8, scope: !2622)
!2689 = !DILocation(line: 61, column: 12, scope: !2622)
!2690 = !DILocation(line: 62, column: 14, scope: !2622)
!2691 = !DILocation(line: 62, column: 2, scope: !2622)
!2692 = !DILocation(line: 62, column: 8, scope: !2622)
!2693 = !DILocation(line: 62, column: 12, scope: !2622)
!2694 = !DILocation(line: 63, column: 16, scope: !2622)
!2695 = !DILocation(line: 63, column: 2, scope: !2622)
!2696 = !DILocation(line: 63, column: 8, scope: !2622)
!2697 = !DILocation(line: 63, column: 14, scope: !2622)
!2698 = !DILocation(line: 64, column: 15, scope: !2622)
!2699 = !DILocation(line: 64, column: 2, scope: !2622)
!2700 = !DILocation(line: 64, column: 8, scope: !2622)
!2701 = !DILocation(line: 64, column: 13, scope: !2622)
!2702 = !DILocation(line: 71, column: 6, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 71, column: 6)
!2704 = !DILocation(line: 71, column: 12, scope: !2703)
!2705 = !DILocation(line: 71, column: 18, scope: !2703)
!2706 = !DILocation(line: 71, column: 28, scope: !2703)
!2707 = !DILocation(line: 71, column: 16, scope: !2703)
!2708 = !DILocation(line: 71, column: 6, scope: !2622)
!2709 = !DILocation(line: 72, column: 3, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2703, file: !1, line: 71, column: 33)
!2711 = !DILocation(line: 73, column: 7, scope: !2710)
!2712 = !DILocation(line: 74, column: 3, scope: !2710)
!2713 = !DILocation(line: 77, column: 16, scope: !2622)
!2714 = !DILocation(line: 77, column: 19, scope: !2622)
!2715 = !DILocation(line: 77, column: 25, scope: !2622)
!2716 = !DILocation(line: 77, column: 30, scope: !2622)
!2717 = !DILocation(line: 77, column: 14, scope: !2622)
!2718 = !DILocation(line: 78, column: 7, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 78, column: 6)
!2720 = !DILocation(line: 78, column: 6, scope: !2622)
!2721 = !DILocation(line: 79, column: 3, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !1, line: 78, column: 20)
!2723 = !DILocation(line: 80, column: 7, scope: !2722)
!2724 = !DILocation(line: 81, column: 3, scope: !2722)
!2725 = !DILocation(line: 84, column: 6, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 84, column: 6)
!2727 = !DILocation(line: 84, column: 18, scope: !2726)
!2728 = !DILocation(line: 84, column: 6, scope: !2622)
!2729 = !DILocation(line: 85, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !1, line: 84, column: 26)
!2731 = !DILocation(line: 87, column: 7, scope: !2730)
!2732 = !DILocation(line: 88, column: 3, scope: !2730)
!2733 = !DILocation(line: 91, column: 2, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !1, line: 91, column: 2)
!2735 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 91, column: 2)
!2736 = !DILocation(line: 91, column: 2, scope: !2735)
!2737 = !DILocation(line: 93, column: 20, scope: !2622)
!2738 = !DILocation(line: 93, column: 2, scope: !2622)
!2739 = !DILocation(line: 93, column: 8, scope: !2622)
!2740 = !DILocation(line: 93, column: 12, scope: !2622)
!2741 = !DILocation(line: 93, column: 18, scope: !2622)
!2742 = !DILocation(line: 94, column: 18, scope: !2622)
!2743 = !DILocation(line: 94, column: 2, scope: !2622)
!2744 = !DILocation(line: 94, column: 8, scope: !2622)
!2745 = !DILocation(line: 94, column: 12, scope: !2622)
!2746 = !DILocation(line: 94, column: 16, scope: !2622)
!2747 = !DILocation(line: 95, column: 2, scope: !2622)
!2748 = !DILocation(line: 95, column: 8, scope: !2622)
!2749 = !DILocation(line: 95, column: 12, scope: !2622)
!2750 = !DILocation(line: 95, column: 18, scope: !2622)
!2751 = !DILocation(line: 97, column: 20, scope: !2622)
!2752 = !DILocation(line: 97, column: 34, scope: !2622)
!2753 = !DILocation(line: 97, column: 32, scope: !2622)
!2754 = !DILocation(line: 97, column: 2, scope: !2622)
!2755 = !DILocation(line: 97, column: 8, scope: !2622)
!2756 = !DILocation(line: 97, column: 12, scope: !2622)
!2757 = !DILocation(line: 97, column: 18, scope: !2622)
!2758 = !DILocation(line: 99, column: 18, scope: !2622)
!2759 = !DILocation(line: 99, column: 24, scope: !2622)
!2760 = !DILocation(line: 99, column: 28, scope: !2622)
!2761 = !DILocation(line: 99, column: 36, scope: !2622)
!2762 = !DILocation(line: 99, column: 34, scope: !2622)
!2763 = !DILocation(line: 99, column: 41, scope: !2622)
!2764 = !DILocation(line: 99, column: 2, scope: !2622)
!2765 = !DILocation(line: 99, column: 8, scope: !2622)
!2766 = !DILocation(line: 99, column: 12, scope: !2622)
!2767 = !DILocation(line: 99, column: 16, scope: !2622)
!2768 = !DILocation(line: 100, column: 2, scope: !2622)
!2769 = !DILocation(line: 100, column: 8, scope: !2622)
!2770 = !DILocation(line: 100, column: 12, scope: !2622)
!2771 = !DILocation(line: 100, column: 18, scope: !2622)
!2772 = !DILocation(line: 102, column: 2, scope: !2622)
!2773 = !DILocation(line: 102, column: 8, scope: !2622)
!2774 = !DILocation(line: 102, column: 17, scope: !2622)
!2775 = !DILocation(line: 104, column: 28, scope: !2622)
!2776 = !DILocation(line: 104, column: 33, scope: !2622)
!2777 = !DILocation(line: 104, column: 8, scope: !2622)
!2778 = !DILocation(line: 104, column: 6, scope: !2622)
!2779 = !DILocation(line: 105, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 105, column: 6)
!2781 = !DILocation(line: 105, column: 10, scope: !2780)
!2782 = !DILocation(line: 105, column: 6, scope: !2622)
!2783 = !DILocation(line: 106, column: 3, scope: !2780)
!2784 = !DILocation(line: 108, column: 2, scope: !2622)
!2785 = !DILabel(scope: !2622, name: "err", file: !1, line: 110)
!2786 = !DILocation(line: 110, column: 1, scope: !2622)
!2787 = !DILocation(line: 111, column: 15, scope: !2622)
!2788 = !DILocation(line: 111, column: 2, scope: !2622)
!2789 = !DILocation(line: 113, column: 9, scope: !2622)
!2790 = !DILocation(line: 113, column: 2, scope: !2622)
!2791 = !DILocation(line: 114, column: 1, scope: !2622)
!2792 = distinct !DISubprogram(name: "chameleon_parse_bdd", scope: !1, file: !1, line: 29, type: !2793, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!96, !97, !2125, !76}
!2795 = !DILocalVariable(name: "bus", arg: 1, scope: !2792, file: !1, line: 29, type: !97)
!2796 = !DILocation(line: 29, column: 48, scope: !2792)
!2797 = !DILocalVariable(name: "cb", arg: 2, scope: !2792, file: !1, line: 30, type: !2125)
!2798 = !DILocation(line: 30, column: 26, scope: !2792)
!2799 = !DILocalVariable(name: "base", arg: 3, scope: !2792, file: !1, line: 31, type: !76)
!2800 = !DILocation(line: 31, column: 18, scope: !2792)
!2801 = !DILocation(line: 33, column: 2, scope: !2792)
!2802 = distinct !DISubprogram(name: "get_order", scope: !2803, file: !2803, line: 29, type: !2804, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2803 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!96, !216}
!2806 = !DILocalVariable(name: "x", arg: 1, scope: !2807, file: !2808, line: 366, type: !287)
!2807 = distinct !DISubprogram(name: "fls64", scope: !2808, file: !2808, line: 366, type: !2809, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2808 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!96, !287}
!2811 = !DILocation(line: 366, column: 40, scope: !2807, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 46, column: 9, scope: !2802)
!2813 = !DILocalVariable(name: "bitpos", scope: !2807, file: !2808, line: 368, type: !96)
!2814 = !DILocation(line: 368, column: 6, scope: !2807, inlinedAt: !2812)
!2815 = !DILocalVariable(name: "size", arg: 1, scope: !2802, file: !2803, line: 29, type: !216)
!2816 = !DILocation(line: 29, column: 63, scope: !2802)
!2817 = !DILocation(line: 31, column: 27, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2802, file: !2803, line: 31, column: 6)
!2819 = !DILocation(line: 31, column: 6, scope: !2818)
!2820 = !DILocation(line: 31, column: 6, scope: !2802)
!2821 = !DILocation(line: 32, column: 8, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !2803, line: 32, column: 7)
!2823 = distinct !DILexicalBlock(scope: !2818, file: !2803, line: 31, column: 34)
!2824 = !DILocation(line: 32, column: 7, scope: !2823)
!2825 = !DILocation(line: 33, column: 4, scope: !2822)
!2826 = !DILocation(line: 35, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !2803, line: 35, column: 7)
!2828 = !DILocation(line: 35, column: 12, scope: !2827)
!2829 = !DILocation(line: 35, column: 7, scope: !2823)
!2830 = !DILocation(line: 36, column: 4, scope: !2827)
!2831 = !DILocation(line: 38, column: 10, scope: !2823)
!2832 = !DILocation(line: 38, column: 28, scope: !2823)
!2833 = !DILocation(line: 38, column: 41, scope: !2823)
!2834 = !DILocation(line: 38, column: 3, scope: !2823)
!2835 = !DILocation(line: 41, column: 6, scope: !2802)
!2836 = !DILocation(line: 42, column: 7, scope: !2802)
!2837 = !DILocation(line: 46, column: 15, scope: !2802)
!2838 = !DILocation(line: 374, column: 2, scope: !2807, inlinedAt: !2812)
!2839 = !DILocation(line: 376, column: 14, scope: !2807, inlinedAt: !2812)
!2840 = !{i32 318348}
!2841 = !DILocation(line: 377, column: 9, scope: !2807, inlinedAt: !2812)
!2842 = !DILocation(line: 377, column: 16, scope: !2807, inlinedAt: !2812)
!2843 = !DILocation(line: 46, column: 2, scope: !2802)
!2844 = !DILocation(line: 48, column: 1, scope: !2802)
!2845 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2846, file: !2846, line: 30, type: !2847, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2846 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!96, !285}
!2849 = !DILocation(line: 366, column: 40, scope: !2807, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 32, column: 9, scope: !2845)
!2851 = !DILocation(line: 368, column: 6, scope: !2807, inlinedAt: !2850)
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2845, file: !2846, line: 30, type: !285)
!2853 = !DILocation(line: 30, column: 21, scope: !2845)
!2854 = !DILocation(line: 32, column: 15, scope: !2845)
!2855 = !DILocation(line: 374, column: 2, scope: !2807, inlinedAt: !2850)
!2856 = !DILocation(line: 376, column: 14, scope: !2807, inlinedAt: !2850)
!2857 = !DILocation(line: 377, column: 9, scope: !2807, inlinedAt: !2850)
!2858 = !DILocation(line: 377, column: 16, scope: !2807, inlinedAt: !2850)
!2859 = !DILocation(line: 32, column: 18, scope: !2845)
!2860 = !DILocation(line: 32, column: 2, scope: !2845)
!2861 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2862, file: !2862, line: 137, type: !2863, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2862 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!76, !1040, !1121, !213, !69}
!2865 = !DILocalVariable(name: "s", arg: 1, scope: !2861, file: !2862, line: 137, type: !1040)
!2866 = !DILocation(line: 137, column: 54, scope: !2861)
!2867 = !DILocalVariable(name: "object", arg: 2, scope: !2861, file: !2862, line: 137, type: !1121)
!2868 = !DILocation(line: 137, column: 69, scope: !2861)
!2869 = !DILocalVariable(name: "size", arg: 3, scope: !2861, file: !2862, line: 138, type: !213)
!2870 = !DILocation(line: 138, column: 12, scope: !2861)
!2871 = !DILocalVariable(name: "flags", arg: 4, scope: !2861, file: !2862, line: 138, type: !69)
!2872 = !DILocation(line: 138, column: 24, scope: !2861)
!2873 = !DILocation(line: 140, column: 17, scope: !2861)
!2874 = !DILocation(line: 140, column: 2, scope: !2861)
!2875 = distinct !DISubprogram(name: "readl", scope: !2876, file: !2876, line: 59, type: !2877, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2876 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!5, !2879}
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2881)
!2881 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2882 = !DILocalVariable(name: "addr", arg: 1, scope: !2875, file: !2876, line: 59, type: !2879)
!2883 = !DILocation(line: 59, column: 1, scope: !2875)
!2884 = !DILocalVariable(name: "ret", scope: !2875, file: !2876, line: 59, type: !5)
!2885 = !{i32 -2144610402}
!2886 = distinct !DISubprogram(name: "kcalloc", scope: !57, file: !57, line: 601, type: !2887, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!76, !213, !213, !69}
!2889 = !DILocalVariable(name: "n", arg: 1, scope: !2886, file: !57, line: 601, type: !213)
!2890 = !DILocation(line: 601, column: 36, scope: !2886)
!2891 = !DILocalVariable(name: "size", arg: 2, scope: !2886, file: !57, line: 601, type: !213)
!2892 = !DILocation(line: 601, column: 46, scope: !2886)
!2893 = !DILocalVariable(name: "flags", arg: 3, scope: !2886, file: !57, line: 601, type: !69)
!2894 = !DILocation(line: 601, column: 58, scope: !2886)
!2895 = !DILocation(line: 603, column: 23, scope: !2886)
!2896 = !DILocation(line: 603, column: 26, scope: !2886)
!2897 = !DILocation(line: 603, column: 32, scope: !2886)
!2898 = !DILocation(line: 603, column: 38, scope: !2886)
!2899 = !DILocation(line: 603, column: 9, scope: !2886)
!2900 = !DILocation(line: 603, column: 2, scope: !2886)
!2901 = distinct !DISubprogram(name: "chameleon_parse_bar", scope: !1, file: !1, line: 116, type: !2902, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !76, !2125, !96}
!2904 = !DILocalVariable(name: "base", arg: 1, scope: !2901, file: !1, line: 116, type: !76)
!2905 = !DILocation(line: 116, column: 47, scope: !2901)
!2906 = !DILocalVariable(name: "cb", arg: 2, scope: !2901, file: !1, line: 117, type: !2125)
!2907 = !DILocation(line: 117, column: 27, scope: !2901)
!2908 = !DILocalVariable(name: "bar_count", arg: 3, scope: !2901, file: !1, line: 117, type: !96)
!2909 = !DILocation(line: 117, column: 35, scope: !2901)
!2910 = !DILocalVariable(name: "p", scope: !2901, file: !1, line: 119, type: !167)
!2911 = !DILocation(line: 119, column: 16, scope: !2901)
!2912 = !DILocation(line: 119, column: 20, scope: !2901)
!2913 = !DILocalVariable(name: "i", scope: !2901, file: !1, line: 120, type: !96)
!2914 = !DILocation(line: 120, column: 6, scope: !2901)
!2915 = !DILocation(line: 123, column: 4, scope: !2901)
!2916 = !DILocation(line: 125, column: 9, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2901, file: !1, line: 125, column: 2)
!2918 = !DILocation(line: 125, column: 7, scope: !2917)
!2919 = !DILocation(line: 125, column: 14, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2917, file: !1, line: 125, column: 2)
!2921 = !DILocation(line: 125, column: 18, scope: !2920)
!2922 = !DILocation(line: 125, column: 16, scope: !2920)
!2923 = !DILocation(line: 125, column: 2, scope: !2917)
!2924 = !DILocation(line: 126, column: 22, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !1, line: 125, column: 34)
!2926 = !DILocation(line: 126, column: 16, scope: !2925)
!2927 = !DILocation(line: 126, column: 3, scope: !2925)
!2928 = !DILocation(line: 126, column: 6, scope: !2925)
!2929 = !DILocation(line: 126, column: 9, scope: !2925)
!2930 = !DILocation(line: 126, column: 14, scope: !2925)
!2931 = !DILocation(line: 127, column: 22, scope: !2925)
!2932 = !DILocation(line: 127, column: 24, scope: !2925)
!2933 = !DILocation(line: 127, column: 16, scope: !2925)
!2934 = !DILocation(line: 127, column: 3, scope: !2925)
!2935 = !DILocation(line: 127, column: 6, scope: !2925)
!2936 = !DILocation(line: 127, column: 9, scope: !2925)
!2937 = !DILocation(line: 127, column: 14, scope: !2925)
!2938 = !DILocation(line: 129, column: 5, scope: !2925)
!2939 = !DILocation(line: 130, column: 2, scope: !2925)
!2940 = !DILocation(line: 125, column: 30, scope: !2920)
!2941 = !DILocation(line: 125, column: 2, scope: !2920)
!2942 = distinct !{!2942, !2923, !2943}
!2943 = !DILocation(line: 130, column: 2, scope: !2917)
!2944 = !DILocation(line: 131, column: 1, scope: !2901)
!2945 = distinct !DISubprogram(name: "kmalloc_array", scope: !57, file: !57, line: 584, type: !2887, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!2946 = !DILocation(line: 445, column: 72, scope: !2265, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 552, column: 10, scope: !2270, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 591, column: 10, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !57, line: 590, column: 6)
!2950 = !DILocation(line: 446, column: 9, scope: !2265, inlinedAt: !2947)
!2951 = !DILocation(line: 446, column: 23, scope: !2265, inlinedAt: !2947)
!2952 = !DILocation(line: 448, column: 8, scope: !2265, inlinedAt: !2947)
!2953 = !DILocation(line: 318, column: 67, scope: !2281, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 553, column: 20, scope: !2270, inlinedAt: !2948)
!2955 = !DILocation(line: 346, column: 58, scope: !2287, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 547, column: 11, scope: !2270, inlinedAt: !2948)
!2957 = !DILocation(line: 472, column: 28, scope: !2293, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 481, column: 9, scope: !2298, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 545, column: 11, scope: !2300, inlinedAt: !2948)
!2960 = !DILocation(line: 472, column: 40, scope: !2293, inlinedAt: !2958)
!2961 = !DILocation(line: 472, column: 60, scope: !2293, inlinedAt: !2958)
!2962 = !DILocation(line: 478, column: 51, scope: !2298, inlinedAt: !2959)
!2963 = !DILocation(line: 478, column: 63, scope: !2298, inlinedAt: !2959)
!2964 = !DILocation(line: 480, column: 15, scope: !2298, inlinedAt: !2959)
!2965 = !DILocation(line: 538, column: 45, scope: !2272, inlinedAt: !2948)
!2966 = !DILocation(line: 538, column: 57, scope: !2272, inlinedAt: !2948)
!2967 = !DILocation(line: 542, column: 16, scope: !2270, inlinedAt: !2948)
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2945, file: !57, line: 584, type: !213)
!2969 = !DILocation(line: 584, column: 42, scope: !2945)
!2970 = !DILocalVariable(name: "size", arg: 2, scope: !2945, file: !57, line: 584, type: !213)
!2971 = !DILocation(line: 584, column: 52, scope: !2945)
!2972 = !DILocalVariable(name: "flags", arg: 3, scope: !2945, file: !57, line: 584, type: !69)
!2973 = !DILocation(line: 584, column: 64, scope: !2945)
!2974 = !DILocalVariable(name: "bytes", scope: !2945, file: !57, line: 586, type: !213)
!2975 = !DILocation(line: 586, column: 9, scope: !2945)
!2976 = !DILocalVariable(name: "__a", scope: !2977, file: !57, line: 588, type: !213)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !57, line: 588, column: 6)
!2978 = distinct !DILexicalBlock(scope: !2945, file: !57, line: 588, column: 6)
!2979 = !DILocation(line: 588, column: 6, scope: !2977)
!2980 = !DILocalVariable(name: "__b", scope: !2977, file: !57, line: 588, type: !213)
!2981 = !DILocalVariable(name: "__d", scope: !2977, file: !57, line: 588, type: !2982)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!2983 = !DILocation(line: 588, column: 6, scope: !2978)
!2984 = !DILocation(line: 588, column: 6, scope: !2945)
!2985 = !DILocation(line: 589, column: 3, scope: !2978)
!2986 = !DILocation(line: 590, column: 27, scope: !2949)
!2987 = !DILocation(line: 590, column: 6, scope: !2949)
!2988 = !DILocation(line: 590, column: 30, scope: !2949)
!2989 = !DILocation(line: 590, column: 54, scope: !2949)
!2990 = !DILocation(line: 590, column: 33, scope: !2949)
!2991 = !DILocation(line: 590, column: 6, scope: !2945)
!2992 = !DILocation(line: 591, column: 18, scope: !2949)
!2993 = !DILocation(line: 591, column: 25, scope: !2949)
!2994 = !DILocation(line: 540, column: 27, scope: !2271, inlinedAt: !2948)
!2995 = !DILocation(line: 540, column: 6, scope: !2271, inlinedAt: !2948)
!2996 = !DILocation(line: 540, column: 6, scope: !2272, inlinedAt: !2948)
!2997 = !DILocation(line: 544, column: 7, scope: !2300, inlinedAt: !2948)
!2998 = !DILocation(line: 544, column: 12, scope: !2300, inlinedAt: !2948)
!2999 = !DILocation(line: 544, column: 7, scope: !2270, inlinedAt: !2948)
!3000 = !DILocation(line: 545, column: 25, scope: !2300, inlinedAt: !2948)
!3001 = !DILocation(line: 545, column: 31, scope: !2300, inlinedAt: !2948)
!3002 = !DILocation(line: 480, column: 33, scope: !2298, inlinedAt: !2959)
!3003 = !DILocation(line: 480, column: 23, scope: !2298, inlinedAt: !2959)
!3004 = !DILocation(line: 481, column: 29, scope: !2298, inlinedAt: !2959)
!3005 = !DILocation(line: 481, column: 35, scope: !2298, inlinedAt: !2959)
!3006 = !DILocation(line: 481, column: 42, scope: !2298, inlinedAt: !2959)
!3007 = !DILocation(line: 474, column: 23, scope: !2293, inlinedAt: !2958)
!3008 = !DILocation(line: 474, column: 29, scope: !2293, inlinedAt: !2958)
!3009 = !DILocation(line: 474, column: 36, scope: !2293, inlinedAt: !2958)
!3010 = !DILocation(line: 474, column: 9, scope: !2293, inlinedAt: !2958)
!3011 = !DILocation(line: 545, column: 4, scope: !2300, inlinedAt: !2948)
!3012 = !DILocation(line: 547, column: 25, scope: !2270, inlinedAt: !2948)
!3013 = !DILocation(line: 348, column: 7, scope: !2344, inlinedAt: !2956)
!3014 = !DILocation(line: 348, column: 6, scope: !2287, inlinedAt: !2956)
!3015 = !DILocation(line: 349, column: 3, scope: !2344, inlinedAt: !2956)
!3016 = !DILocation(line: 351, column: 6, scope: !2348, inlinedAt: !2956)
!3017 = !DILocation(line: 351, column: 11, scope: !2348, inlinedAt: !2956)
!3018 = !DILocation(line: 351, column: 6, scope: !2287, inlinedAt: !2956)
!3019 = !DILocation(line: 352, column: 3, scope: !2348, inlinedAt: !2956)
!3020 = !DILocation(line: 354, column: 32, scope: !2353, inlinedAt: !2956)
!3021 = !DILocation(line: 354, column: 37, scope: !2353, inlinedAt: !2956)
!3022 = !DILocation(line: 354, column: 42, scope: !2353, inlinedAt: !2956)
!3023 = !DILocation(line: 354, column: 45, scope: !2353, inlinedAt: !2956)
!3024 = !DILocation(line: 354, column: 50, scope: !2353, inlinedAt: !2956)
!3025 = !DILocation(line: 354, column: 6, scope: !2287, inlinedAt: !2956)
!3026 = !DILocation(line: 355, column: 3, scope: !2353, inlinedAt: !2956)
!3027 = !DILocation(line: 356, column: 32, scope: !2361, inlinedAt: !2956)
!3028 = !DILocation(line: 356, column: 37, scope: !2361, inlinedAt: !2956)
!3029 = !DILocation(line: 356, column: 43, scope: !2361, inlinedAt: !2956)
!3030 = !DILocation(line: 356, column: 46, scope: !2361, inlinedAt: !2956)
!3031 = !DILocation(line: 356, column: 51, scope: !2361, inlinedAt: !2956)
!3032 = !DILocation(line: 356, column: 6, scope: !2287, inlinedAt: !2956)
!3033 = !DILocation(line: 357, column: 3, scope: !2361, inlinedAt: !2956)
!3034 = !DILocation(line: 358, column: 6, scope: !2369, inlinedAt: !2956)
!3035 = !DILocation(line: 358, column: 11, scope: !2369, inlinedAt: !2956)
!3036 = !DILocation(line: 358, column: 6, scope: !2287, inlinedAt: !2956)
!3037 = !DILocation(line: 358, column: 26, scope: !2369, inlinedAt: !2956)
!3038 = !DILocation(line: 359, column: 6, scope: !2374, inlinedAt: !2956)
!3039 = !DILocation(line: 359, column: 11, scope: !2374, inlinedAt: !2956)
!3040 = !DILocation(line: 359, column: 6, scope: !2287, inlinedAt: !2956)
!3041 = !DILocation(line: 359, column: 26, scope: !2374, inlinedAt: !2956)
!3042 = !DILocation(line: 360, column: 6, scope: !2379, inlinedAt: !2956)
!3043 = !DILocation(line: 360, column: 11, scope: !2379, inlinedAt: !2956)
!3044 = !DILocation(line: 360, column: 6, scope: !2287, inlinedAt: !2956)
!3045 = !DILocation(line: 360, column: 26, scope: !2379, inlinedAt: !2956)
!3046 = !DILocation(line: 361, column: 6, scope: !2384, inlinedAt: !2956)
!3047 = !DILocation(line: 361, column: 11, scope: !2384, inlinedAt: !2956)
!3048 = !DILocation(line: 361, column: 6, scope: !2287, inlinedAt: !2956)
!3049 = !DILocation(line: 361, column: 26, scope: !2384, inlinedAt: !2956)
!3050 = !DILocation(line: 362, column: 6, scope: !2389, inlinedAt: !2956)
!3051 = !DILocation(line: 362, column: 11, scope: !2389, inlinedAt: !2956)
!3052 = !DILocation(line: 362, column: 6, scope: !2287, inlinedAt: !2956)
!3053 = !DILocation(line: 362, column: 26, scope: !2389, inlinedAt: !2956)
!3054 = !DILocation(line: 363, column: 6, scope: !2394, inlinedAt: !2956)
!3055 = !DILocation(line: 363, column: 11, scope: !2394, inlinedAt: !2956)
!3056 = !DILocation(line: 363, column: 6, scope: !2287, inlinedAt: !2956)
!3057 = !DILocation(line: 363, column: 26, scope: !2394, inlinedAt: !2956)
!3058 = !DILocation(line: 364, column: 6, scope: !2399, inlinedAt: !2956)
!3059 = !DILocation(line: 364, column: 11, scope: !2399, inlinedAt: !2956)
!3060 = !DILocation(line: 364, column: 6, scope: !2287, inlinedAt: !2956)
!3061 = !DILocation(line: 364, column: 26, scope: !2399, inlinedAt: !2956)
!3062 = !DILocation(line: 365, column: 6, scope: !2404, inlinedAt: !2956)
!3063 = !DILocation(line: 365, column: 11, scope: !2404, inlinedAt: !2956)
!3064 = !DILocation(line: 365, column: 6, scope: !2287, inlinedAt: !2956)
!3065 = !DILocation(line: 365, column: 26, scope: !2404, inlinedAt: !2956)
!3066 = !DILocation(line: 366, column: 6, scope: !2409, inlinedAt: !2956)
!3067 = !DILocation(line: 366, column: 11, scope: !2409, inlinedAt: !2956)
!3068 = !DILocation(line: 366, column: 6, scope: !2287, inlinedAt: !2956)
!3069 = !DILocation(line: 366, column: 26, scope: !2409, inlinedAt: !2956)
!3070 = !DILocation(line: 367, column: 6, scope: !2414, inlinedAt: !2956)
!3071 = !DILocation(line: 367, column: 11, scope: !2414, inlinedAt: !2956)
!3072 = !DILocation(line: 367, column: 6, scope: !2287, inlinedAt: !2956)
!3073 = !DILocation(line: 367, column: 26, scope: !2414, inlinedAt: !2956)
!3074 = !DILocation(line: 368, column: 6, scope: !2419, inlinedAt: !2956)
!3075 = !DILocation(line: 368, column: 11, scope: !2419, inlinedAt: !2956)
!3076 = !DILocation(line: 368, column: 6, scope: !2287, inlinedAt: !2956)
!3077 = !DILocation(line: 368, column: 26, scope: !2419, inlinedAt: !2956)
!3078 = !DILocation(line: 369, column: 6, scope: !2424, inlinedAt: !2956)
!3079 = !DILocation(line: 369, column: 11, scope: !2424, inlinedAt: !2956)
!3080 = !DILocation(line: 369, column: 6, scope: !2287, inlinedAt: !2956)
!3081 = !DILocation(line: 369, column: 26, scope: !2424, inlinedAt: !2956)
!3082 = !DILocation(line: 370, column: 6, scope: !2429, inlinedAt: !2956)
!3083 = !DILocation(line: 370, column: 11, scope: !2429, inlinedAt: !2956)
!3084 = !DILocation(line: 370, column: 6, scope: !2287, inlinedAt: !2956)
!3085 = !DILocation(line: 370, column: 26, scope: !2429, inlinedAt: !2956)
!3086 = !DILocation(line: 371, column: 6, scope: !2434, inlinedAt: !2956)
!3087 = !DILocation(line: 371, column: 11, scope: !2434, inlinedAt: !2956)
!3088 = !DILocation(line: 371, column: 6, scope: !2287, inlinedAt: !2956)
!3089 = !DILocation(line: 371, column: 26, scope: !2434, inlinedAt: !2956)
!3090 = !DILocation(line: 372, column: 6, scope: !2439, inlinedAt: !2956)
!3091 = !DILocation(line: 372, column: 11, scope: !2439, inlinedAt: !2956)
!3092 = !DILocation(line: 372, column: 6, scope: !2287, inlinedAt: !2956)
!3093 = !DILocation(line: 372, column: 26, scope: !2439, inlinedAt: !2956)
!3094 = !DILocation(line: 373, column: 6, scope: !2444, inlinedAt: !2956)
!3095 = !DILocation(line: 373, column: 11, scope: !2444, inlinedAt: !2956)
!3096 = !DILocation(line: 373, column: 6, scope: !2287, inlinedAt: !2956)
!3097 = !DILocation(line: 373, column: 26, scope: !2444, inlinedAt: !2956)
!3098 = !DILocation(line: 374, column: 6, scope: !2449, inlinedAt: !2956)
!3099 = !DILocation(line: 374, column: 11, scope: !2449, inlinedAt: !2956)
!3100 = !DILocation(line: 374, column: 6, scope: !2287, inlinedAt: !2956)
!3101 = !DILocation(line: 374, column: 26, scope: !2449, inlinedAt: !2956)
!3102 = !DILocation(line: 375, column: 6, scope: !2454, inlinedAt: !2956)
!3103 = !DILocation(line: 375, column: 11, scope: !2454, inlinedAt: !2956)
!3104 = !DILocation(line: 375, column: 6, scope: !2287, inlinedAt: !2956)
!3105 = !DILocation(line: 375, column: 27, scope: !2454, inlinedAt: !2956)
!3106 = !DILocation(line: 376, column: 6, scope: !2459, inlinedAt: !2956)
!3107 = !DILocation(line: 376, column: 11, scope: !2459, inlinedAt: !2956)
!3108 = !DILocation(line: 376, column: 6, scope: !2287, inlinedAt: !2956)
!3109 = !DILocation(line: 376, column: 32, scope: !2459, inlinedAt: !2956)
!3110 = !DILocation(line: 377, column: 6, scope: !2464, inlinedAt: !2956)
!3111 = !DILocation(line: 377, column: 11, scope: !2464, inlinedAt: !2956)
!3112 = !DILocation(line: 377, column: 6, scope: !2287, inlinedAt: !2956)
!3113 = !DILocation(line: 377, column: 32, scope: !2464, inlinedAt: !2956)
!3114 = !DILocation(line: 378, column: 6, scope: !2469, inlinedAt: !2956)
!3115 = !DILocation(line: 378, column: 11, scope: !2469, inlinedAt: !2956)
!3116 = !DILocation(line: 378, column: 6, scope: !2287, inlinedAt: !2956)
!3117 = !DILocation(line: 378, column: 32, scope: !2469, inlinedAt: !2956)
!3118 = !DILocation(line: 379, column: 6, scope: !2474, inlinedAt: !2956)
!3119 = !DILocation(line: 379, column: 11, scope: !2474, inlinedAt: !2956)
!3120 = !DILocation(line: 379, column: 6, scope: !2287, inlinedAt: !2956)
!3121 = !DILocation(line: 379, column: 33, scope: !2474, inlinedAt: !2956)
!3122 = !DILocation(line: 380, column: 6, scope: !2479, inlinedAt: !2956)
!3123 = !DILocation(line: 380, column: 11, scope: !2479, inlinedAt: !2956)
!3124 = !DILocation(line: 380, column: 6, scope: !2287, inlinedAt: !2956)
!3125 = !DILocation(line: 380, column: 33, scope: !2479, inlinedAt: !2956)
!3126 = !DILocation(line: 381, column: 6, scope: !2484, inlinedAt: !2956)
!3127 = !DILocation(line: 381, column: 11, scope: !2484, inlinedAt: !2956)
!3128 = !DILocation(line: 381, column: 6, scope: !2287, inlinedAt: !2956)
!3129 = !DILocation(line: 381, column: 33, scope: !2484, inlinedAt: !2956)
!3130 = !DILocation(line: 382, column: 2, scope: !2489, inlinedAt: !2956)
!3131 = !DILocation(line: 382, column: 2, scope: !2493, inlinedAt: !2956)
!3132 = !DILocation(line: 382, column: 2, scope: !2494, inlinedAt: !2956)
!3133 = !DILocation(line: 386, column: 1, scope: !2287, inlinedAt: !2956)
!3134 = !DILocation(line: 547, column: 9, scope: !2270, inlinedAt: !2948)
!3135 = !DILocation(line: 549, column: 8, scope: !2500, inlinedAt: !2948)
!3136 = !DILocation(line: 549, column: 7, scope: !2270, inlinedAt: !2948)
!3137 = !DILocation(line: 550, column: 4, scope: !2500, inlinedAt: !2948)
!3138 = !DILocation(line: 553, column: 33, scope: !2270, inlinedAt: !2948)
!3139 = !DILocation(line: 325, column: 6, scope: !2505, inlinedAt: !2954)
!3140 = !DILocation(line: 325, column: 6, scope: !2281, inlinedAt: !2954)
!3141 = !DILocation(line: 326, column: 3, scope: !2505, inlinedAt: !2954)
!3142 = !DILocation(line: 332, column: 9, scope: !2281, inlinedAt: !2954)
!3143 = !DILocation(line: 332, column: 15, scope: !2281, inlinedAt: !2954)
!3144 = !DILocation(line: 332, column: 2, scope: !2281, inlinedAt: !2954)
!3145 = !DILocation(line: 336, column: 1, scope: !2281, inlinedAt: !2954)
!3146 = !DILocation(line: 553, column: 5, scope: !2270, inlinedAt: !2948)
!3147 = !DILocation(line: 553, column: 41, scope: !2270, inlinedAt: !2948)
!3148 = !DILocation(line: 554, column: 5, scope: !2270, inlinedAt: !2948)
!3149 = !DILocation(line: 554, column: 12, scope: !2270, inlinedAt: !2948)
!3150 = !DILocation(line: 448, column: 31, scope: !2265, inlinedAt: !2947)
!3151 = !DILocation(line: 448, column: 34, scope: !2265, inlinedAt: !2947)
!3152 = !DILocation(line: 448, column: 14, scope: !2265, inlinedAt: !2947)
!3153 = !DILocation(line: 450, column: 22, scope: !2265, inlinedAt: !2947)
!3154 = !DILocation(line: 450, column: 25, scope: !2265, inlinedAt: !2947)
!3155 = !DILocation(line: 450, column: 30, scope: !2265, inlinedAt: !2947)
!3156 = !DILocation(line: 450, column: 36, scope: !2265, inlinedAt: !2947)
!3157 = !DILocation(line: 450, column: 8, scope: !2265, inlinedAt: !2947)
!3158 = !DILocation(line: 450, column: 6, scope: !2265, inlinedAt: !2947)
!3159 = !DILocation(line: 451, column: 9, scope: !2265, inlinedAt: !2947)
!3160 = !DILocation(line: 552, column: 3, scope: !2270, inlinedAt: !2948)
!3161 = !DILocation(line: 557, column: 19, scope: !2272, inlinedAt: !2948)
!3162 = !DILocation(line: 557, column: 25, scope: !2272, inlinedAt: !2948)
!3163 = !DILocation(line: 557, column: 9, scope: !2272, inlinedAt: !2948)
!3164 = !DILocation(line: 557, column: 2, scope: !2272, inlinedAt: !2948)
!3165 = !DILocation(line: 558, column: 1, scope: !2272, inlinedAt: !2948)
!3166 = !DILocation(line: 591, column: 3, scope: !2949)
!3167 = !DILocation(line: 592, column: 19, scope: !2945)
!3168 = !DILocation(line: 592, column: 26, scope: !2945)
!3169 = !DILocation(line: 592, column: 9, scope: !2945)
!3170 = !DILocation(line: 592, column: 2, scope: !2945)
!3171 = !DILocation(line: 593, column: 1, scope: !2945)
!3172 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3173, file: !3173, line: 52, type: !3174, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !140)
!3173 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!990, !990}
!3176 = !DILocalVariable(name: "overflow", arg: 1, scope: !3172, file: !3173, line: 52, type: !990)
!3177 = !DILocation(line: 52, column: 60, scope: !3172)
!3178 = !DILocation(line: 54, column: 9, scope: !3172)
!3179 = !DILocation(line: 54, column: 2, scope: !3172)
