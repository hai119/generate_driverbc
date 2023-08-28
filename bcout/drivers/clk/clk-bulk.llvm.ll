; ModuleID = '../bcout/drivers/clk/clk-bulk.llvm.bc'
source_filename = "drivers/clk/clk-bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.clk_bulk_data = type { i8*, %struct.clk* }
%struct.clk = type opaque
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque

@.str = private unnamed_addr constant [34 x i8] c"\013Failed to prepare clk '%s': %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\013Failed to enable clk '%s': %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to get clk '%s': %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\013%pOF: Failed to get clk index: %d ret: %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_bulk_put(i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !71 {
entry:
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !87, metadata !DIExpression()), !dbg !88
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !89, metadata !DIExpression()), !dbg !90
  br label %while.cond, !dbg !91

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %num_clks.addr, align 4, !dbg !92
  %dec = add i32 %0, -1, !dbg !92
  store i32 %dec, i32* %num_clks.addr, align 4, !dbg !92
  %cmp = icmp sge i32 %dec, 0, !dbg !93
  br i1 %cmp, label %while.body, label %while.end, !dbg !91

while.body:                                       ; preds = %while.cond
  %1 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !94
  %2 = load i32, i32* %num_clks.addr, align 4, !dbg !96
  %idxprom = sext i32 %2 to i64, !dbg !94
  %arrayidx = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %1, i64 %idxprom, !dbg !94
  %clk = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx, i32 0, i32 1, !dbg !97
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !97
  call void @clk_put(%struct.clk* %3) #7, !dbg !98
  %4 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !99
  %5 = load i32, i32* %num_clks.addr, align 4, !dbg !100
  %idxprom1 = sext i32 %5 to i64, !dbg !99
  %arrayidx2 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %4, i64 %idxprom1, !dbg !99
  %clk3 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx2, i32 0, i32 1, !dbg !101
  store %struct.clk* null, %struct.clk** %clk3, align 8, !dbg !102
  br label %while.cond, !dbg !91, !llvm.loop !103

while.end:                                        ; preds = %while.cond
  ret void, !dbg !105
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @clk_put(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_bulk_get(%struct.device* %dev, i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !106 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2059, metadata !DIExpression()), !dbg !2060
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2061, metadata !DIExpression()), !dbg !2062
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2063, metadata !DIExpression()), !dbg !2064
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2065
  %1 = load i32, i32* %num_clks.addr, align 4, !dbg !2066
  %2 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2067
  %call = call i32 @__clk_bulk_get(%struct.device* %0, i32 %1, %struct.clk_bulk_data* %2, i1 zeroext false) #7, !dbg !2068
  ret i32 %call, !dbg !2069
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__clk_bulk_get(%struct.device* %dev, i32 %num_clks, %struct.clk_bulk_data* %clks, i1 zeroext %optional) #0 !dbg !2070 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  %optional.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2073, metadata !DIExpression()), !dbg !2074
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2075, metadata !DIExpression()), !dbg !2076
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2077, metadata !DIExpression()), !dbg !2078
  %frombool = zext i1 %optional to i8
  store i8 %frombool, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !2079, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2081, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2083, metadata !DIExpression()), !dbg !2084
  store i32 0, i32* %i, align 4, !dbg !2085
  br label %for.cond, !dbg !2087

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2088
  %1 = load i32, i32* %num_clks.addr, align 4, !dbg !2090
  %cmp = icmp slt i32 %0, %1, !dbg !2091
  br i1 %cmp, label %for.body, label %for.end, !dbg !2092

for.body:                                         ; preds = %for.cond
  %2 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2093
  %3 = load i32, i32* %i, align 4, !dbg !2094
  %idxprom = sext i32 %3 to i64, !dbg !2093
  %arrayidx = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %2, i64 %idxprom, !dbg !2093
  %clk = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx, i32 0, i32 1, !dbg !2095
  store %struct.clk* null, %struct.clk** %clk, align 8, !dbg !2096
  br label %for.inc, !dbg !2093

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !2097
  %inc = add i32 %4, 1, !dbg !2097
  store i32 %inc, i32* %i, align 4, !dbg !2097
  br label %for.cond, !dbg !2098, !llvm.loop !2099

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !2101
  br label %for.cond1, !dbg !2103

for.cond1:                                        ; preds = %for.inc32, %for.end
  %5 = load i32, i32* %i, align 4, !dbg !2104
  %6 = load i32, i32* %num_clks.addr, align 4, !dbg !2106
  %cmp2 = icmp slt i32 %5, %6, !dbg !2107
  br i1 %cmp2, label %for.body3, label %for.end34, !dbg !2108

for.body3:                                        ; preds = %for.cond1
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2109
  %8 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2111
  %9 = load i32, i32* %i, align 4, !dbg !2112
  %idxprom4 = sext i32 %9 to i64, !dbg !2111
  %arrayidx5 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %8, i64 %idxprom4, !dbg !2111
  %id = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx5, i32 0, i32 0, !dbg !2113
  %10 = load i8*, i8** %id, align 8, !dbg !2113
  %call = call %struct.clk* @clk_get(%struct.device* %7, i8* %10) #7, !dbg !2114
  %11 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2115
  %12 = load i32, i32* %i, align 4, !dbg !2116
  %idxprom6 = sext i32 %12 to i64, !dbg !2115
  %arrayidx7 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %11, i64 %idxprom6, !dbg !2115
  %clk8 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx7, i32 0, i32 1, !dbg !2117
  store %struct.clk* %call, %struct.clk** %clk8, align 8, !dbg !2118
  %13 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2119
  %14 = load i32, i32* %i, align 4, !dbg !2121
  %idxprom9 = sext i32 %14 to i64, !dbg !2119
  %arrayidx10 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %13, i64 %idxprom9, !dbg !2119
  %clk11 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx10, i32 0, i32 1, !dbg !2122
  %15 = load %struct.clk*, %struct.clk** %clk11, align 8, !dbg !2122
  %16 = bitcast %struct.clk* %15 to i8*, !dbg !2119
  %call12 = call zeroext i1 @IS_ERR(i8* %16) #7, !dbg !2123
  br i1 %call12, label %if.then, label %if.end31, !dbg !2124

if.then:                                          ; preds = %for.body3
  %17 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2125
  %18 = load i32, i32* %i, align 4, !dbg !2127
  %idxprom13 = sext i32 %18 to i64, !dbg !2125
  %arrayidx14 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %17, i64 %idxprom13, !dbg !2125
  %clk15 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx14, i32 0, i32 1, !dbg !2128
  %19 = load %struct.clk*, %struct.clk** %clk15, align 8, !dbg !2128
  %20 = bitcast %struct.clk* %19 to i8*, !dbg !2125
  %call16 = call i64 @PTR_ERR(i8* %20) #7, !dbg !2129
  %conv = trunc i64 %call16 to i32, !dbg !2129
  store i32 %conv, i32* %ret, align 4, !dbg !2130
  %21 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2131
  %22 = load i32, i32* %i, align 4, !dbg !2132
  %idxprom17 = sext i32 %22 to i64, !dbg !2131
  %arrayidx18 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %21, i64 %idxprom17, !dbg !2131
  %clk19 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx18, i32 0, i32 1, !dbg !2133
  store %struct.clk* null, %struct.clk** %clk19, align 8, !dbg !2134
  %23 = load i32, i32* %ret, align 4, !dbg !2135
  %cmp20 = icmp eq i32 %23, -2, !dbg !2137
  br i1 %cmp20, label %land.lhs.true, label %if.end, !dbg !2138

land.lhs.true:                                    ; preds = %if.then
  %24 = load i8, i8* %optional.addr, align 1, !dbg !2139
  %tobool = trunc i8 %24 to i1, !dbg !2139
  br i1 %tobool, label %if.then23, label %if.end, !dbg !2140

if.then23:                                        ; preds = %land.lhs.true
  br label %for.inc32, !dbg !2141

if.end:                                           ; preds = %land.lhs.true, %if.then
  %25 = load i32, i32* %ret, align 4, !dbg !2142
  %cmp24 = icmp ne i32 %25, -517, !dbg !2144
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !2145

if.then26:                                        ; preds = %if.end
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2146
  %27 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2146
  %28 = load i32, i32* %i, align 4, !dbg !2146
  %idxprom27 = sext i32 %28 to i64, !dbg !2146
  %arrayidx28 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %27, i64 %idxprom27, !dbg !2146
  %id29 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx28, i32 0, i32 0, !dbg !2146
  %29 = load i8*, i8** %id29, align 8, !dbg !2146
  %30 = load i32, i32* %ret, align 4, !dbg !2146
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %30) #8, !dbg !2146
  br label %if.end30, !dbg !2146

if.end30:                                         ; preds = %if.then26, %if.end
  br label %err, !dbg !2147

if.end31:                                         ; preds = %for.body3
  br label %for.inc32, !dbg !2148

for.inc32:                                        ; preds = %if.end31, %if.then23
  %31 = load i32, i32* %i, align 4, !dbg !2149
  %inc33 = add i32 %31, 1, !dbg !2149
  store i32 %inc33, i32* %i, align 4, !dbg !2149
  br label %for.cond1, !dbg !2150, !llvm.loop !2151

for.end34:                                        ; preds = %for.cond1
  store i32 0, i32* %retval, align 4, !dbg !2153
  br label %return, !dbg !2153

err:                                              ; preds = %if.end30
  call void @llvm.dbg.label(metadata !2154), !dbg !2155
  %32 = load i32, i32* %i, align 4, !dbg !2156
  %33 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2157
  call void @clk_bulk_put(i32 %32, %struct.clk_bulk_data* %33) #7, !dbg !2158
  %34 = load i32, i32* %ret, align 4, !dbg !2159
  store i32 %34, i32* %retval, align 4, !dbg !2160
  br label %return, !dbg !2160

return:                                           ; preds = %err, %for.end34
  %35 = load i32, i32* %retval, align 4, !dbg !2161
  ret i32 %35, !dbg !2161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_bulk_get_optional(%struct.device* %dev, i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !2162 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2163, metadata !DIExpression()), !dbg !2164
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2165, metadata !DIExpression()), !dbg !2166
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2167, metadata !DIExpression()), !dbg !2168
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2169
  %1 = load i32, i32* %num_clks.addr, align 4, !dbg !2170
  %2 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2171
  %call = call i32 @__clk_bulk_get(%struct.device* %0, i32 %1, %struct.clk_bulk_data* %2, i1 zeroext true) #7, !dbg !2172
  ret i32 %call, !dbg !2173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_bulk_put_all(i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !2174 {
entry:
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2175, metadata !DIExpression()), !dbg !2176
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2177, metadata !DIExpression()), !dbg !2178
  %0 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2179
  %1 = bitcast %struct.clk_bulk_data* %0 to i8*, !dbg !2179
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #7, !dbg !2181
  br i1 %call, label %if.then, label %if.end, !dbg !2182

if.then:                                          ; preds = %entry
  br label %return, !dbg !2183

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %num_clks.addr, align 4, !dbg !2184
  %3 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2185
  call void @clk_bulk_put(i32 %2, %struct.clk_bulk_data* %3) #7, !dbg !2186
  %4 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2187
  %5 = bitcast %struct.clk_bulk_data* %4 to i8*, !dbg !2187
  call void @kfree(i8* %5) #7, !dbg !2188
  br label %return, !dbg !2189

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !2190 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2194, metadata !DIExpression()), !dbg !2195
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2196
  %tobool = icmp ne i8* %0, null, !dbg !2196
  %lnot = xor i1 %tobool, true, !dbg !2196
  %lnot1 = xor i1 %lnot, true, !dbg !2196
  %lnot2 = xor i1 %lnot1, true, !dbg !2196
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2196
  %conv = sext i32 %lnot.ext to i64, !dbg !2196
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2196
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2197

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !2198
  %2 = ptrtoint i8* %1 to i64, !dbg !2198
  %3 = inttoptr i64 %2 to i8*, !dbg !2198
  %4 = ptrtoint i8* %3 to i64, !dbg !2198
  %cmp = icmp uge i64 %4, -4095, !dbg !2198
  %lnot5 = xor i1 %cmp, true, !dbg !2198
  %lnot7 = xor i1 %lnot5, true, !dbg !2198
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2198
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2198
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !2197
  br label %lor.end, !dbg !2197

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !2199
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_bulk_get_all(%struct.device* %dev, %struct.clk_bulk_data** %clks) #0 !dbg !2200 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %clks.addr = alloca %struct.clk_bulk_data**, align 8
  %np = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  store %struct.clk_bulk_data** %clks, %struct.clk_bulk_data*** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data*** %clks.addr, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2208, metadata !DIExpression()), !dbg !2209
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2210
  %call = call %struct.device_node* @dev_of_node(%struct.device* %0) #7, !dbg !2211
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !2209
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2212
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !2212
  br i1 %tobool, label %if.end, label %if.then, !dbg !2214

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2215
  br label %return, !dbg !2215

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2216
  %3 = load %struct.clk_bulk_data**, %struct.clk_bulk_data*** %clks.addr, align 8, !dbg !2217
  %call1 = call i32 @of_clk_bulk_get_all(%struct.device_node* %2, %struct.clk_bulk_data** %3) #7, !dbg !2218
  store i32 %call1, i32* %retval, align 4, !dbg !2219
  br label %return, !dbg !2219

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2220
  ret i32 %4, !dbg !2220
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @dev_of_node(%struct.device* %dev) #0 !dbg !2221 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2224, metadata !DIExpression()), !dbg !2225
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2226
  %tobool = icmp ne %struct.device* %0, null, !dbg !2226
  br i1 %tobool, label %if.end, label %if.then, !dbg !2228

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !2229
  br label %return, !dbg !2229

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2230
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !2231
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2231
  store %struct.device_node* %2, %struct.device_node** %retval, align 8, !dbg !2232
  br label %return, !dbg !2232

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !2233
  ret %struct.device_node* %3, !dbg !2233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_clk_bulk_get_all(%struct.device_node* %np, %struct.clk_bulk_data** %clks) #0 !dbg !2234 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %clks.addr = alloca %struct.clk_bulk_data**, align 8
  %clk_bulk = alloca %struct.clk_bulk_data*, align 8
  %num_clks = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2237, metadata !DIExpression()), !dbg !2238
  store %struct.clk_bulk_data** %clks, %struct.clk_bulk_data*** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data*** %clks.addr, metadata !2239, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clk_bulk, metadata !2241, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.declare(metadata i32* %num_clks, metadata !2243, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2245, metadata !DIExpression()), !dbg !2246
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2247
  %call = call i32 @of_clk_get_parent_count(%struct.device_node* %0) #7, !dbg !2248
  store i32 %call, i32* %num_clks, align 4, !dbg !2249
  %1 = load i32, i32* %num_clks, align 4, !dbg !2250
  %tobool = icmp ne i32 %1, 0, !dbg !2250
  br i1 %tobool, label %if.end, label %if.then, !dbg !2252

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2253
  br label %return, !dbg !2253

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %num_clks, align 4, !dbg !2254
  %conv = sext i32 %2 to i64, !dbg !2254
  %call1 = call i8* @kmalloc_array(i64 %conv, i64 16, i32 3264) #7, !dbg !2255
  %3 = bitcast i8* %call1 to %struct.clk_bulk_data*, !dbg !2255
  store %struct.clk_bulk_data* %3, %struct.clk_bulk_data** %clk_bulk, align 8, !dbg !2256
  %4 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clk_bulk, align 8, !dbg !2257
  %tobool2 = icmp ne %struct.clk_bulk_data* %4, null, !dbg !2257
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2259

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2260
  br label %return, !dbg !2260

if.end4:                                          ; preds = %if.end
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2261
  %6 = load i32, i32* %num_clks, align 4, !dbg !2262
  %7 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clk_bulk, align 8, !dbg !2263
  %call5 = call i32 @of_clk_bulk_get(%struct.device_node* %5, i32 %6, %struct.clk_bulk_data* %7) #7, !dbg !2264
  store i32 %call5, i32* %ret, align 4, !dbg !2265
  %8 = load i32, i32* %ret, align 4, !dbg !2266
  %tobool6 = icmp ne i32 %8, 0, !dbg !2266
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2268

if.then7:                                         ; preds = %if.end4
  %9 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clk_bulk, align 8, !dbg !2269
  %10 = bitcast %struct.clk_bulk_data* %9 to i8*, !dbg !2269
  call void @kfree(i8* %10) #7, !dbg !2271
  %11 = load i32, i32* %ret, align 4, !dbg !2272
  store i32 %11, i32* %retval, align 4, !dbg !2273
  br label %return, !dbg !2273

if.end8:                                          ; preds = %if.end4
  %12 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clk_bulk, align 8, !dbg !2274
  %13 = load %struct.clk_bulk_data**, %struct.clk_bulk_data*** %clks.addr, align 8, !dbg !2275
  store %struct.clk_bulk_data* %12, %struct.clk_bulk_data** %13, align 8, !dbg !2276
  %14 = load i32, i32* %num_clks, align 4, !dbg !2277
  store i32 %14, i32* %retval, align 4, !dbg !2278
  br label %return, !dbg !2278

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2279
  ret i32 %15, !dbg !2279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_bulk_unprepare(i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !2280 {
entry:
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2285, metadata !DIExpression()), !dbg !2286
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2287, metadata !DIExpression()), !dbg !2288
  br label %while.cond, !dbg !2289

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %num_clks.addr, align 4, !dbg !2290
  %dec = add i32 %0, -1, !dbg !2290
  store i32 %dec, i32* %num_clks.addr, align 4, !dbg !2290
  %cmp = icmp sge i32 %dec, 0, !dbg !2291
  br i1 %cmp, label %while.body, label %while.end, !dbg !2289

while.body:                                       ; preds = %while.cond
  %1 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2292
  %2 = load i32, i32* %num_clks.addr, align 4, !dbg !2293
  %idxprom = sext i32 %2 to i64, !dbg !2292
  %arrayidx = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %1, i64 %idxprom, !dbg !2292
  %clk = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx, i32 0, i32 1, !dbg !2294
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2294
  call void @clk_unprepare(%struct.clk* %3) #7, !dbg !2295
  br label %while.cond, !dbg !2289, !llvm.loop !2296

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2298
}

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_bulk_prepare(i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !2299 {
entry:
  %retval = alloca i32, align 4
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2302, metadata !DIExpression()), !dbg !2303
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2308, metadata !DIExpression()), !dbg !2309
  store i32 0, i32* %i, align 4, !dbg !2310
  br label %for.cond, !dbg !2312

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2313
  %1 = load i32, i32* %num_clks.addr, align 4, !dbg !2315
  %cmp = icmp slt i32 %0, %1, !dbg !2316
  br i1 %cmp, label %for.body, label %for.end, !dbg !2317

for.body:                                         ; preds = %for.cond
  %2 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2318
  %3 = load i32, i32* %i, align 4, !dbg !2320
  %idxprom = sext i32 %3 to i64, !dbg !2318
  %arrayidx = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %2, i64 %idxprom, !dbg !2318
  %clk = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx, i32 0, i32 1, !dbg !2321
  %4 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2321
  %call = call i32 @clk_prepare(%struct.clk* %4) #7, !dbg !2322
  store i32 %call, i32* %ret, align 4, !dbg !2323
  %5 = load i32, i32* %ret, align 4, !dbg !2324
  %tobool = icmp ne i32 %5, 0, !dbg !2324
  br i1 %tobool, label %if.then, label %if.end, !dbg !2326

if.then:                                          ; preds = %for.body
  %6 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2327
  %7 = load i32, i32* %i, align 4, !dbg !2327
  %idxprom1 = sext i32 %7 to i64, !dbg !2327
  %arrayidx2 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %6, i64 %idxprom1, !dbg !2327
  %id = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx2, i32 0, i32 0, !dbg !2327
  %8 = load i8*, i8** %id, align 8, !dbg !2327
  %9 = load i32, i32* %ret, align 4, !dbg !2327
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9) #8, !dbg !2327
  br label %err, !dbg !2329

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2330

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !2331
  %inc = add i32 %10, 1, !dbg !2331
  store i32 %inc, i32* %i, align 4, !dbg !2331
  br label %for.cond, !dbg !2332, !llvm.loop !2333

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2335
  br label %return, !dbg !2335

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !2336), !dbg !2337
  %11 = load i32, i32* %i, align 4, !dbg !2338
  %12 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2339
  call void @clk_bulk_unprepare(i32 %11, %struct.clk_bulk_data* %12) #7, !dbg !2340
  %13 = load i32, i32* %ret, align 4, !dbg !2341
  store i32 %13, i32* %retval, align 4, !dbg !2342
  br label %return, !dbg !2342

return:                                           ; preds = %err, %for.end
  %14 = load i32, i32* %retval, align 4, !dbg !2343
  ret i32 %14, !dbg !2343
}

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_bulk_disable(i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !2344 {
entry:
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2345, metadata !DIExpression()), !dbg !2346
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2347, metadata !DIExpression()), !dbg !2348
  br label %while.cond, !dbg !2349

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %num_clks.addr, align 4, !dbg !2350
  %dec = add i32 %0, -1, !dbg !2350
  store i32 %dec, i32* %num_clks.addr, align 4, !dbg !2350
  %cmp = icmp sge i32 %dec, 0, !dbg !2351
  br i1 %cmp, label %while.body, label %while.end, !dbg !2349

while.body:                                       ; preds = %while.cond
  %1 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2352
  %2 = load i32, i32* %num_clks.addr, align 4, !dbg !2353
  %idxprom = sext i32 %2 to i64, !dbg !2352
  %arrayidx = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %1, i64 %idxprom, !dbg !2352
  %clk = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx, i32 0, i32 1, !dbg !2354
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2354
  call void @clk_disable(%struct.clk* %3) #7, !dbg !2355
  br label %while.cond, !dbg !2349, !llvm.loop !2356

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2358
}

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_bulk_enable(i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !2359 {
entry:
  %retval = alloca i32, align 4
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2360, metadata !DIExpression()), !dbg !2361
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2362, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2364, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2366, metadata !DIExpression()), !dbg !2367
  store i32 0, i32* %i, align 4, !dbg !2368
  br label %for.cond, !dbg !2370

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2371
  %1 = load i32, i32* %num_clks.addr, align 4, !dbg !2373
  %cmp = icmp slt i32 %0, %1, !dbg !2374
  br i1 %cmp, label %for.body, label %for.end, !dbg !2375

for.body:                                         ; preds = %for.cond
  %2 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2376
  %3 = load i32, i32* %i, align 4, !dbg !2378
  %idxprom = sext i32 %3 to i64, !dbg !2376
  %arrayidx = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %2, i64 %idxprom, !dbg !2376
  %clk = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx, i32 0, i32 1, !dbg !2379
  %4 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2379
  %call = call i32 @clk_enable(%struct.clk* %4) #7, !dbg !2380
  store i32 %call, i32* %ret, align 4, !dbg !2381
  %5 = load i32, i32* %ret, align 4, !dbg !2382
  %tobool = icmp ne i32 %5, 0, !dbg !2382
  br i1 %tobool, label %if.then, label %if.end, !dbg !2384

if.then:                                          ; preds = %for.body
  %6 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2385
  %7 = load i32, i32* %i, align 4, !dbg !2385
  %idxprom1 = sext i32 %7 to i64, !dbg !2385
  %arrayidx2 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %6, i64 %idxprom1, !dbg !2385
  %id = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx2, i32 0, i32 0, !dbg !2385
  %8 = load i8*, i8** %id, align 8, !dbg !2385
  %9 = load i32, i32* %ret, align 4, !dbg !2385
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %8, i32 %9) #8, !dbg !2385
  br label %err, !dbg !2387

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2388

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !2389
  %inc = add i32 %10, 1, !dbg !2389
  store i32 %inc, i32* %i, align 4, !dbg !2389
  br label %for.cond, !dbg !2390, !llvm.loop !2391

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2393
  br label %return, !dbg !2393

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !2394), !dbg !2395
  %11 = load i32, i32* %i, align 4, !dbg !2396
  %12 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2397
  call void @clk_bulk_disable(i32 %11, %struct.clk_bulk_data* %12) #7, !dbg !2398
  %13 = load i32, i32* %ret, align 4, !dbg !2399
  store i32 %13, i32* %retval, align 4, !dbg !2400
  br label %return, !dbg !2400

return:                                           ; preds = %err, %for.end
  %14 = load i32, i32* %retval, align 4, !dbg !2401
  ret i32 %14, !dbg !2401
}

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2402 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2405
  %1 = ptrtoint i8* %0 to i64, !dbg !2405
  %2 = inttoptr i64 %1 to i8*, !dbg !2405
  %3 = ptrtoint i8* %2 to i64, !dbg !2405
  %cmp = icmp uge i64 %3, -4095, !dbg !2405
  %lnot = xor i1 %cmp, true, !dbg !2405
  %lnot1 = xor i1 %lnot, true, !dbg !2405
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2405
  %conv = sext i32 %lnot.ext to i64, !dbg !2405
  %tobool = icmp ne i64 %conv, 0, !dbg !2405
  ret i1 %tobool, !dbg !2406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2407 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2410, metadata !DIExpression()), !dbg !2411
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2412
  %1 = ptrtoint i8* %0 to i64, !dbg !2413
  ret i64 %1, !dbg !2414
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !2415 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2418, metadata !DIExpression()), !dbg !2422
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2431, metadata !DIExpression()), !dbg !2432
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2433, metadata !DIExpression()), !dbg !2434
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2435, metadata !DIExpression()), !dbg !2436
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2437, metadata !DIExpression()), !dbg !2441
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2443, metadata !DIExpression()), !dbg !2447
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2449, metadata !DIExpression()), !dbg !2453
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2458, metadata !DIExpression()), !dbg !2459
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2460, metadata !DIExpression()), !dbg !2461
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2462, metadata !DIExpression()), !dbg !2463
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2464, metadata !DIExpression()), !dbg !2465
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2466, metadata !DIExpression()), !dbg !2467
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2468, metadata !DIExpression()), !dbg !2469
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2470, metadata !DIExpression()), !dbg !2471
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2472, metadata !DIExpression()), !dbg !2473
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2476, metadata !DIExpression()), !dbg !2477
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2478, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2480, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2482, metadata !DIExpression()), !dbg !2485
  %0 = load i64, i64* %n.addr, align 8, !dbg !2485
  store i64 %0, i64* %__a, align 8, !dbg !2485
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2486, metadata !DIExpression()), !dbg !2485
  %1 = load i64, i64* %size.addr, align 8, !dbg !2485
  store i64 %1, i64* %__b, align 8, !dbg !2485
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2487, metadata !DIExpression()), !dbg !2485
  store i64* %bytes, i64** %__d, align 8, !dbg !2485
  %cmp = icmp eq i64* %__a, %__b, !dbg !2485
  %conv = zext i1 %cmp to i32, !dbg !2485
  %2 = load i64*, i64** %__d, align 8, !dbg !2485
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2485
  %conv2 = zext i1 %cmp1 to i32, !dbg !2485
  %3 = load i64, i64* %__a, align 8, !dbg !2485
  %4 = load i64, i64* %__b, align 8, !dbg !2485
  %5 = load i64*, i64** %__d, align 8, !dbg !2485
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2485
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2485
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2485
  store i64 %8, i64* %5, align 8, !dbg !2485
  %frombool = zext i1 %7 to i8, !dbg !2485
  store i8 %frombool, i8* %tmp, align 1, !dbg !2485
  %9 = load i8, i8* %tmp, align 1, !dbg !2485
  %tobool = trunc i8 %9 to i1, !dbg !2485
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !2489
  %lnot = xor i1 %call, true, !dbg !2489
  %lnot3 = xor i1 %lnot, true, !dbg !2489
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2489
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2489
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2489
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2490

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2491
  br label %return, !dbg !2491

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !2492
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2493
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !2494

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !2495
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2496
  br i1 %13, label %if.then6, label %if.end8, !dbg !2497

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !2498
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2499
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !2500
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !2501
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !2502

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !2503
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !2504
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2505

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !2506
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !2507
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !2508
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !2509
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2467
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !2510
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2511
  %24 = load i32, i32* %order.i.i, align 4, !dbg !2512
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2513
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2514
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2515
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !2516
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2516
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2516
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2516
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2516
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2517
  br label %kmalloc.exit, !dbg !2517

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !2518
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2519
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !2519
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2521

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2522
  br label %kmalloc_index.exit.i, !dbg !2522

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2523
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !2525
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2526

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2527
  br label %kmalloc_index.exit.i, !dbg !2527

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2528
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !2530
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2531

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2532
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !2533
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2534

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2535
  br label %kmalloc_index.exit.i, !dbg !2535

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2536
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !2538
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2539

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2540
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !2541
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2542

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2543
  br label %kmalloc_index.exit.i, !dbg !2543

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2544
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !2546
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2547

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2548
  br label %kmalloc_index.exit.i, !dbg !2548

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2549
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !2551
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2552

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2553
  br label %kmalloc_index.exit.i, !dbg !2553

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2554
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !2556
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2557

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2558
  br label %kmalloc_index.exit.i, !dbg !2558

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2559
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !2561
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2562

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2563
  br label %kmalloc_index.exit.i, !dbg !2563

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2564
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !2566
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2567

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2568
  br label %kmalloc_index.exit.i, !dbg !2568

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2569
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !2571
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2572

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2573
  br label %kmalloc_index.exit.i, !dbg !2573

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2574
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !2576
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2577

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2578
  br label %kmalloc_index.exit.i, !dbg !2578

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2579
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !2581
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2582

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2583
  br label %kmalloc_index.exit.i, !dbg !2583

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2584
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !2586
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2587

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2588
  br label %kmalloc_index.exit.i, !dbg !2588

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2589
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !2591
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2592

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2593
  br label %kmalloc_index.exit.i, !dbg !2593

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2594
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !2596
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2597

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2598
  br label %kmalloc_index.exit.i, !dbg !2598

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2599
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !2601
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2602

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2603
  br label %kmalloc_index.exit.i, !dbg !2603

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2604
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !2606
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2607

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2608
  br label %kmalloc_index.exit.i, !dbg !2608

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2609
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !2611
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2612

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2613
  br label %kmalloc_index.exit.i, !dbg !2613

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2614
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !2616
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2617

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2618
  br label %kmalloc_index.exit.i, !dbg !2618

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2619
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !2621
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2622

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2623
  br label %kmalloc_index.exit.i, !dbg !2623

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2624
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !2626
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2627

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2628
  br label %kmalloc_index.exit.i, !dbg !2628

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2629
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !2631
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2632

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2633
  br label %kmalloc_index.exit.i, !dbg !2633

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2634
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !2636
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2637

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2638
  br label %kmalloc_index.exit.i, !dbg !2638

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2639
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !2641
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2642

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2643
  br label %kmalloc_index.exit.i, !dbg !2643

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2644
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !2646
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2647

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2648
  br label %kmalloc_index.exit.i, !dbg !2648

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2649
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !2651
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2652

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2653
  br label %kmalloc_index.exit.i, !dbg !2653

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2654
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !2656
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2657

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2658
  br label %kmalloc_index.exit.i, !dbg !2658

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2659
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !2661
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2662

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2663
  br label %kmalloc_index.exit.i, !dbg !2663

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !2664, !srcloc !2667
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #9, !dbg !2668, !srcloc !2671
  unreachable, !dbg !2672

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !2673
  store i32 %59, i32* %index.i, align 4, !dbg !2674
  %60 = load i32, i32* %index.i, align 4, !dbg !2675
  %tobool.i = icmp ne i32 %60, 0, !dbg !2675
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2677

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2678
  br label %kmalloc.exit, !dbg !2678

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !2679
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2680
  %and.i.i = and i32 %62, 17, !dbg !2680
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2680
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2680
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2680
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2680
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2682

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2683
  br label %kmalloc_type.exit.i, !dbg !2683

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2684
  %and2.i.i = and i32 %63, 1, !dbg !2685
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2684
  %64 = zext i1 %tobool3.i.i to i64, !dbg !2684
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2684
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2686
  br label %kmalloc_type.exit.i, !dbg !2686

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !2687
  %idxprom.i = zext i32 %65 to i64, !dbg !2688
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2688
  %66 = load i32, i32* %index.i, align 4, !dbg !2689
  %idxprom6.i = zext i32 %66 to i64, !dbg !2688
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2688
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2688
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !2690
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !2691
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2692
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2693
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !2694
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2694
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2694
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2694
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !2694
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2436
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2695
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !2696
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2697
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2698
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !2699
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2700
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !2701
  store i8* %76, i8** %retval.i, align 8, !dbg !2702
  br label %kmalloc.exit, !dbg !2702

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !2703
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !2704
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !2705
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2705
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2705
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2705
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !2705
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2706
  br label %kmalloc.exit, !dbg !2706

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !2707
  store i8* %79, i8** %retval, align 8, !dbg !2708
  br label %return, !dbg !2708

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !2709
  %81 = load i32, i32* %flags.addr, align 4, !dbg !2710
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !2711
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !2711
  %maskedptr = and i64 %ptrint, 7, !dbg !2711
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !2711
  call void @llvm.assume(i1 %maskcond), !dbg !2711
  store i8* %call9, i8** %retval, align 8, !dbg !2712
  br label %return, !dbg !2712

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !2713
  ret i8* %82, !dbg !2713
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_clk_bulk_get(%struct.device_node* %np, i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !2714 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2719, metadata !DIExpression()), !dbg !2720
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2721, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2723, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2725, metadata !DIExpression()), !dbg !2726
  store i32 0, i32* %i, align 4, !dbg !2727
  br label %for.cond, !dbg !2729

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2730
  %1 = load i32, i32* %num_clks.addr, align 4, !dbg !2732
  %cmp = icmp slt i32 %0, %1, !dbg !2733
  br i1 %cmp, label %for.body, label %for.end, !dbg !2734

for.body:                                         ; preds = %for.cond
  %2 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2735
  %3 = load i32, i32* %i, align 4, !dbg !2737
  %idxprom = sext i32 %3 to i64, !dbg !2735
  %arrayidx = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %2, i64 %idxprom, !dbg !2735
  %id = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx, i32 0, i32 0, !dbg !2738
  store i8* null, i8** %id, align 8, !dbg !2739
  %4 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2740
  %5 = load i32, i32* %i, align 4, !dbg !2741
  %idxprom1 = sext i32 %5 to i64, !dbg !2740
  %arrayidx2 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %4, i64 %idxprom1, !dbg !2740
  %clk = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx2, i32 0, i32 1, !dbg !2742
  store %struct.clk* null, %struct.clk** %clk, align 8, !dbg !2743
  br label %for.inc, !dbg !2744

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !2745
  %inc = add i32 %6, 1, !dbg !2745
  store i32 %inc, i32* %i, align 4, !dbg !2745
  br label %for.cond, !dbg !2746, !llvm.loop !2747

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !2749
  br label %for.cond3, !dbg !2751

for.cond3:                                        ; preds = %for.inc25, %for.end
  %7 = load i32, i32* %i, align 4, !dbg !2752
  %8 = load i32, i32* %num_clks.addr, align 4, !dbg !2754
  %cmp4 = icmp slt i32 %7, %8, !dbg !2755
  br i1 %cmp4, label %for.body5, label %for.end27, !dbg !2756

for.body5:                                        ; preds = %for.cond3
  %9 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2757
  %10 = load i32, i32* %i, align 4, !dbg !2759
  %11 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2760
  %12 = load i32, i32* %i, align 4, !dbg !2761
  %idxprom6 = sext i32 %12 to i64, !dbg !2760
  %arrayidx7 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %11, i64 %idxprom6, !dbg !2760
  %id8 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx7, i32 0, i32 0, !dbg !2762
  %call = call i32 @of_property_read_string_index(%struct.device_node* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %10, i8** %id8) #7, !dbg !2763
  %13 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2764
  %14 = load i32, i32* %i, align 4, !dbg !2765
  %call9 = call %struct.clk* @of_clk_get(%struct.device_node* %13, i32 %14) #7, !dbg !2766
  %15 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2767
  %16 = load i32, i32* %i, align 4, !dbg !2768
  %idxprom10 = sext i32 %16 to i64, !dbg !2767
  %arrayidx11 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %15, i64 %idxprom10, !dbg !2767
  %clk12 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx11, i32 0, i32 1, !dbg !2769
  store %struct.clk* %call9, %struct.clk** %clk12, align 8, !dbg !2770
  %17 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2771
  %18 = load i32, i32* %i, align 4, !dbg !2773
  %idxprom13 = sext i32 %18 to i64, !dbg !2771
  %arrayidx14 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %17, i64 %idxprom13, !dbg !2771
  %clk15 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx14, i32 0, i32 1, !dbg !2774
  %19 = load %struct.clk*, %struct.clk** %clk15, align 8, !dbg !2774
  %20 = bitcast %struct.clk* %19 to i8*, !dbg !2771
  %call16 = call zeroext i1 @IS_ERR(i8* %20) #7, !dbg !2775
  br i1 %call16, label %if.then, label %if.end, !dbg !2776

if.then:                                          ; preds = %for.body5
  %21 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2777
  %22 = load i32, i32* %i, align 4, !dbg !2779
  %idxprom17 = sext i32 %22 to i64, !dbg !2777
  %arrayidx18 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %21, i64 %idxprom17, !dbg !2777
  %clk19 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx18, i32 0, i32 1, !dbg !2780
  %23 = load %struct.clk*, %struct.clk** %clk19, align 8, !dbg !2780
  %24 = bitcast %struct.clk* %23 to i8*, !dbg !2777
  %call20 = call i64 @PTR_ERR(i8* %24) #7, !dbg !2781
  %conv = trunc i64 %call20 to i32, !dbg !2781
  store i32 %conv, i32* %ret, align 4, !dbg !2782
  %25 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2783
  %26 = load i32, i32* %i, align 4, !dbg !2783
  %27 = load i32, i32* %ret, align 4, !dbg !2783
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %25, i32 %26, i32 %27) #8, !dbg !2783
  %28 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2784
  %29 = load i32, i32* %i, align 4, !dbg !2785
  %idxprom22 = sext i32 %29 to i64, !dbg !2784
  %arrayidx23 = getelementptr %struct.clk_bulk_data, %struct.clk_bulk_data* %28, i64 %idxprom22, !dbg !2784
  %clk24 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %arrayidx23, i32 0, i32 1, !dbg !2786
  store %struct.clk* null, %struct.clk** %clk24, align 8, !dbg !2787
  br label %err, !dbg !2788

if.end:                                           ; preds = %for.body5
  br label %for.inc25, !dbg !2789

for.inc25:                                        ; preds = %if.end
  %30 = load i32, i32* %i, align 4, !dbg !2790
  %inc26 = add i32 %30, 1, !dbg !2790
  store i32 %inc26, i32* %i, align 4, !dbg !2790
  br label %for.cond3, !dbg !2791, !llvm.loop !2792

for.end27:                                        ; preds = %for.cond3
  store i32 0, i32* %retval, align 4, !dbg !2794
  br label %return, !dbg !2794

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !2795), !dbg !2796
  %31 = load i32, i32* %i, align 4, !dbg !2797
  %32 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2798
  call void @clk_bulk_put(i32 %31, %struct.clk_bulk_data* %32) #7, !dbg !2799
  %33 = load i32, i32* %ret, align 4, !dbg !2800
  store i32 %33, i32* %retval, align 4, !dbg !2801
  br label %return, !dbg !2801

return:                                           ; preds = %err, %for.end27
  %34 = load i32, i32* %retval, align 4, !dbg !2802
  ret i32 %34, !dbg !2802
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !2803 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !2807, metadata !DIExpression()), !dbg !2808
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !2809
  %tobool = trunc i8 %0 to i1, !dbg !2809
  %lnot = xor i1 %tobool, true, !dbg !2809
  %lnot1 = xor i1 %lnot, true, !dbg !2809
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2809
  %conv = sext i32 %lnot.ext to i64, !dbg !2809
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2809
  ret i1 %tobool2, !dbg !2810
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2811 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2815, metadata !DIExpression()), !dbg !2820
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2822, metadata !DIExpression()), !dbg !2823
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2824, metadata !DIExpression()), !dbg !2825
  %0 = load i64, i64* %size.addr, align 8, !dbg !2826
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2828
  br i1 %1, label %if.then, label %if.end447, !dbg !2829

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2830
  %tobool = icmp ne i64 %2, 0, !dbg !2830
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2833

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2834
  br label %return, !dbg !2834

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2835
  %cmp = icmp ult i64 %3, 4096, !dbg !2837
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2838

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2839
  br label %return, !dbg !2839

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub = sub i64 %4, 1, !dbg !2840
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2840
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2840

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub4 = sub i64 %6, 1, !dbg !2840
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2840
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2840

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub6 = sub i64 %8, 1, !dbg !2840
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2840
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2840

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2840

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub9 = sub i64 %9, 1, !dbg !2840
  %and = and i64 %sub9, -9223372036854775808, !dbg !2840
  %tobool10 = icmp ne i64 %and, 0, !dbg !2840
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2840

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2840

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub13 = sub i64 %10, 1, !dbg !2840
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2840
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2840
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2840

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2840

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub18 = sub i64 %11, 1, !dbg !2840
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2840
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2840
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2840

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2840

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub23 = sub i64 %12, 1, !dbg !2840
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2840
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2840
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2840

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2840

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub28 = sub i64 %13, 1, !dbg !2840
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2840
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2840
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2840

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2840

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub33 = sub i64 %14, 1, !dbg !2840
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2840
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2840
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2840

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2840

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub38 = sub i64 %15, 1, !dbg !2840
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2840
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2840
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2840

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2840

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub43 = sub i64 %16, 1, !dbg !2840
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2840
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2840
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2840

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2840

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub48 = sub i64 %17, 1, !dbg !2840
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2840
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2840
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2840

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2840

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub53 = sub i64 %18, 1, !dbg !2840
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2840
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2840
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2840

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2840

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub58 = sub i64 %19, 1, !dbg !2840
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2840
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2840
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2840

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2840

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub63 = sub i64 %20, 1, !dbg !2840
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2840
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2840
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2840

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2840

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub68 = sub i64 %21, 1, !dbg !2840
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2840
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2840
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2840

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2840

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub73 = sub i64 %22, 1, !dbg !2840
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2840
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2840
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2840

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2840

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub78 = sub i64 %23, 1, !dbg !2840
  %and79 = and i64 %sub78, 562949953421312, !dbg !2840
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2840
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2840

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2840

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub83 = sub i64 %24, 1, !dbg !2840
  %and84 = and i64 %sub83, 281474976710656, !dbg !2840
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2840
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2840

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2840

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub88 = sub i64 %25, 1, !dbg !2840
  %and89 = and i64 %sub88, 140737488355328, !dbg !2840
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2840
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2840

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2840

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub93 = sub i64 %26, 1, !dbg !2840
  %and94 = and i64 %sub93, 70368744177664, !dbg !2840
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2840
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2840

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2840

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub98 = sub i64 %27, 1, !dbg !2840
  %and99 = and i64 %sub98, 35184372088832, !dbg !2840
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2840
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2840

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2840

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub103 = sub i64 %28, 1, !dbg !2840
  %and104 = and i64 %sub103, 17592186044416, !dbg !2840
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2840
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2840

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2840

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub108 = sub i64 %29, 1, !dbg !2840
  %and109 = and i64 %sub108, 8796093022208, !dbg !2840
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2840
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2840

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2840

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub113 = sub i64 %30, 1, !dbg !2840
  %and114 = and i64 %sub113, 4398046511104, !dbg !2840
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2840
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2840

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2840

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub118 = sub i64 %31, 1, !dbg !2840
  %and119 = and i64 %sub118, 2199023255552, !dbg !2840
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2840
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2840

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2840

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub123 = sub i64 %32, 1, !dbg !2840
  %and124 = and i64 %sub123, 1099511627776, !dbg !2840
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2840
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2840

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2840

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub128 = sub i64 %33, 1, !dbg !2840
  %and129 = and i64 %sub128, 549755813888, !dbg !2840
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2840
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2840

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2840

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub133 = sub i64 %34, 1, !dbg !2840
  %and134 = and i64 %sub133, 274877906944, !dbg !2840
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2840
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2840

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2840

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub138 = sub i64 %35, 1, !dbg !2840
  %and139 = and i64 %sub138, 137438953472, !dbg !2840
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2840
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2840

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2840

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub143 = sub i64 %36, 1, !dbg !2840
  %and144 = and i64 %sub143, 68719476736, !dbg !2840
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2840
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2840

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2840

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub148 = sub i64 %37, 1, !dbg !2840
  %and149 = and i64 %sub148, 34359738368, !dbg !2840
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2840
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2840

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2840

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub153 = sub i64 %38, 1, !dbg !2840
  %and154 = and i64 %sub153, 17179869184, !dbg !2840
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2840
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2840

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2840

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub158 = sub i64 %39, 1, !dbg !2840
  %and159 = and i64 %sub158, 8589934592, !dbg !2840
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2840
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2840

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2840

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub163 = sub i64 %40, 1, !dbg !2840
  %and164 = and i64 %sub163, 4294967296, !dbg !2840
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2840
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2840

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2840

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub168 = sub i64 %41, 1, !dbg !2840
  %and169 = and i64 %sub168, 2147483648, !dbg !2840
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2840
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2840

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2840

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub173 = sub i64 %42, 1, !dbg !2840
  %and174 = and i64 %sub173, 1073741824, !dbg !2840
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2840
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2840

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2840

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub178 = sub i64 %43, 1, !dbg !2840
  %and179 = and i64 %sub178, 536870912, !dbg !2840
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2840
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2840

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2840

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub183 = sub i64 %44, 1, !dbg !2840
  %and184 = and i64 %sub183, 268435456, !dbg !2840
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2840
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2840

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2840

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub188 = sub i64 %45, 1, !dbg !2840
  %and189 = and i64 %sub188, 134217728, !dbg !2840
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2840
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2840

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2840

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub193 = sub i64 %46, 1, !dbg !2840
  %and194 = and i64 %sub193, 67108864, !dbg !2840
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2840
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2840

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2840

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub198 = sub i64 %47, 1, !dbg !2840
  %and199 = and i64 %sub198, 33554432, !dbg !2840
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2840
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2840

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2840

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub203 = sub i64 %48, 1, !dbg !2840
  %and204 = and i64 %sub203, 16777216, !dbg !2840
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2840
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2840

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2840

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub208 = sub i64 %49, 1, !dbg !2840
  %and209 = and i64 %sub208, 8388608, !dbg !2840
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2840
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2840

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2840

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub213 = sub i64 %50, 1, !dbg !2840
  %and214 = and i64 %sub213, 4194304, !dbg !2840
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2840
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2840

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2840

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub218 = sub i64 %51, 1, !dbg !2840
  %and219 = and i64 %sub218, 2097152, !dbg !2840
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2840
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2840

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2840

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub223 = sub i64 %52, 1, !dbg !2840
  %and224 = and i64 %sub223, 1048576, !dbg !2840
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2840
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2840

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2840

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub228 = sub i64 %53, 1, !dbg !2840
  %and229 = and i64 %sub228, 524288, !dbg !2840
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2840
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2840

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2840

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub233 = sub i64 %54, 1, !dbg !2840
  %and234 = and i64 %sub233, 262144, !dbg !2840
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2840
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2840

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2840

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub238 = sub i64 %55, 1, !dbg !2840
  %and239 = and i64 %sub238, 131072, !dbg !2840
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2840
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2840

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2840

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub243 = sub i64 %56, 1, !dbg !2840
  %and244 = and i64 %sub243, 65536, !dbg !2840
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2840
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2840

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2840

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub248 = sub i64 %57, 1, !dbg !2840
  %and249 = and i64 %sub248, 32768, !dbg !2840
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2840
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2840

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2840

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub253 = sub i64 %58, 1, !dbg !2840
  %and254 = and i64 %sub253, 16384, !dbg !2840
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2840
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2840

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2840

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub258 = sub i64 %59, 1, !dbg !2840
  %and259 = and i64 %sub258, 8192, !dbg !2840
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2840
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2840

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2840

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub263 = sub i64 %60, 1, !dbg !2840
  %and264 = and i64 %sub263, 4096, !dbg !2840
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2840
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2840

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2840

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub268 = sub i64 %61, 1, !dbg !2840
  %and269 = and i64 %sub268, 2048, !dbg !2840
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2840
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2840

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2840

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub273 = sub i64 %62, 1, !dbg !2840
  %and274 = and i64 %sub273, 1024, !dbg !2840
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2840
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2840

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2840

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub278 = sub i64 %63, 1, !dbg !2840
  %and279 = and i64 %sub278, 512, !dbg !2840
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2840
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2840

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2840

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub283 = sub i64 %64, 1, !dbg !2840
  %and284 = and i64 %sub283, 256, !dbg !2840
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2840
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2840

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2840

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub288 = sub i64 %65, 1, !dbg !2840
  %and289 = and i64 %sub288, 128, !dbg !2840
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2840
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2840

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2840

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub293 = sub i64 %66, 1, !dbg !2840
  %and294 = and i64 %sub293, 64, !dbg !2840
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2840
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2840

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2840

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub298 = sub i64 %67, 1, !dbg !2840
  %and299 = and i64 %sub298, 32, !dbg !2840
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2840
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2840

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2840

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub303 = sub i64 %68, 1, !dbg !2840
  %and304 = and i64 %sub303, 16, !dbg !2840
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2840
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2840

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2840

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub308 = sub i64 %69, 1, !dbg !2840
  %and309 = and i64 %sub308, 8, !dbg !2840
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2840
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2840

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2840

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub313 = sub i64 %70, 1, !dbg !2840
  %and314 = and i64 %sub313, 4, !dbg !2840
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2840
  %71 = zext i1 %tobool315 to i64, !dbg !2840
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2840
  br label %cond.end, !dbg !2840

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2840
  br label %cond.end317, !dbg !2840

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2840
  br label %cond.end319, !dbg !2840

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2840
  br label %cond.end321, !dbg !2840

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2840
  br label %cond.end323, !dbg !2840

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2840
  br label %cond.end325, !dbg !2840

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2840
  br label %cond.end327, !dbg !2840

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2840
  br label %cond.end329, !dbg !2840

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2840
  br label %cond.end331, !dbg !2840

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2840
  br label %cond.end333, !dbg !2840

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2840
  br label %cond.end335, !dbg !2840

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2840
  br label %cond.end337, !dbg !2840

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2840
  br label %cond.end339, !dbg !2840

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2840
  br label %cond.end341, !dbg !2840

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2840
  br label %cond.end343, !dbg !2840

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2840
  br label %cond.end345, !dbg !2840

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2840
  br label %cond.end347, !dbg !2840

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2840
  br label %cond.end349, !dbg !2840

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2840
  br label %cond.end351, !dbg !2840

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2840
  br label %cond.end353, !dbg !2840

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2840
  br label %cond.end355, !dbg !2840

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2840
  br label %cond.end357, !dbg !2840

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2840
  br label %cond.end359, !dbg !2840

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2840
  br label %cond.end361, !dbg !2840

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2840
  br label %cond.end363, !dbg !2840

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2840
  br label %cond.end365, !dbg !2840

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2840
  br label %cond.end367, !dbg !2840

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2840
  br label %cond.end369, !dbg !2840

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2840
  br label %cond.end371, !dbg !2840

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2840
  br label %cond.end373, !dbg !2840

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2840
  br label %cond.end375, !dbg !2840

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2840
  br label %cond.end377, !dbg !2840

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2840
  br label %cond.end379, !dbg !2840

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2840
  br label %cond.end381, !dbg !2840

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2840
  br label %cond.end383, !dbg !2840

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2840
  br label %cond.end385, !dbg !2840

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2840
  br label %cond.end387, !dbg !2840

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2840
  br label %cond.end389, !dbg !2840

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2840
  br label %cond.end391, !dbg !2840

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2840
  br label %cond.end393, !dbg !2840

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2840
  br label %cond.end395, !dbg !2840

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2840
  br label %cond.end397, !dbg !2840

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2840
  br label %cond.end399, !dbg !2840

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2840
  br label %cond.end401, !dbg !2840

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2840
  br label %cond.end403, !dbg !2840

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2840
  br label %cond.end405, !dbg !2840

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2840
  br label %cond.end407, !dbg !2840

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2840
  br label %cond.end409, !dbg !2840

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2840
  br label %cond.end411, !dbg !2840

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2840
  br label %cond.end413, !dbg !2840

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2840
  br label %cond.end415, !dbg !2840

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2840
  br label %cond.end417, !dbg !2840

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2840
  br label %cond.end419, !dbg !2840

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2840
  br label %cond.end421, !dbg !2840

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2840
  br label %cond.end423, !dbg !2840

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2840
  br label %cond.end425, !dbg !2840

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2840
  br label %cond.end427, !dbg !2840

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2840
  br label %cond.end429, !dbg !2840

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2840
  br label %cond.end431, !dbg !2840

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2840
  br label %cond.end433, !dbg !2840

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2840
  br label %cond.end435, !dbg !2840

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2840
  br label %cond.end437, !dbg !2840

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2840
  br label %cond.end440, !dbg !2840

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2840

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2840
  br label %cond.end444, !dbg !2840

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2840
  %sub443 = sub i64 %72, 1, !dbg !2840
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2840
  br label %cond.end444, !dbg !2840

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2840
  %sub446 = sub i32 %cond445, 12, !dbg !2841
  %add = add i32 %sub446, 1, !dbg !2842
  store i32 %add, i32* %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2844
  %dec = add i64 %73, -1, !dbg !2844
  store i64 %dec, i64* %size.addr, align 8, !dbg !2844
  %74 = load i64, i64* %size.addr, align 8, !dbg !2845
  %shr = lshr i64 %74, 12, !dbg !2845
  store i64 %shr, i64* %size.addr, align 8, !dbg !2845
  %75 = load i64, i64* %size.addr, align 8, !dbg !2846
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2823
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2847
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2848
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !2847, !srcloc !2849
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2847
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2850
  %add.i = add i32 %79, 1, !dbg !2851
  store i32 %add.i, i32* %retval, align 4, !dbg !2852
  br label %return, !dbg !2852

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2853
  ret i32 %80, !dbg !2853
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2854 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2815, metadata !DIExpression()), !dbg !2858
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2822, metadata !DIExpression()), !dbg !2860
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2861, metadata !DIExpression()), !dbg !2862
  %0 = load i64, i64* %n.addr, align 8, !dbg !2863
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2860
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2864
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2865
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !2864, !srcloc !2849
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2864
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2866
  %add.i = add i32 %4, 1, !dbg !2867
  %sub = sub i32 %add.i, 1, !dbg !2868
  ret i32 %sub, !dbg !2869
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2870 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2874, metadata !DIExpression()), !dbg !2875
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2876, metadata !DIExpression()), !dbg !2877
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2878, metadata !DIExpression()), !dbg !2879
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2880, metadata !DIExpression()), !dbg !2881
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2882
  ret i8* %0, !dbg !2883
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_string_index(%struct.device_node* %np, i8* %propname, i32 %index, i8** %output) #0 !dbg !2884 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %output.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2889, metadata !DIExpression()), !dbg !2890
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2893, metadata !DIExpression()), !dbg !2894
  store i8** %output, i8*** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %output.addr, metadata !2895, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2897, metadata !DIExpression()), !dbg !2898
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2899
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2900
  %2 = load i8**, i8*** %output.addr, align 8, !dbg !2901
  %3 = load i32, i32* %index.addr, align 4, !dbg !2902
  %call = call i32 @of_property_read_string_helper(%struct.device_node* %0, i8* %1, i8** %2, i64 1, i32 %3) #7, !dbg !2903
  store i32 %call, i32* %rc, align 4, !dbg !2898
  %4 = load i32, i32* %rc, align 4, !dbg !2904
  %cmp = icmp slt i32 %4, 0, !dbg !2905
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2904

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %rc, align 4, !dbg !2906
  br label %cond.end, !dbg !2904

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2904

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !2904
  ret i32 %cond, !dbg !2907
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string_helper(%struct.device_node*, i8*, i8**, i64, i32) #2

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
!llvm.module.flags = !{!66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !60, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/clk/clk-bulk.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !53}
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
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 10, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !54, line: 305, baseType: !5, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!60 = !{!61, !62, !63, !64}
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !65, line: 148, baseType: !5)
!65 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"Code Model", i32 2}
!70 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!71 = distinct !DISubprogram(name: "clk_bulk_put", scope: !1, file: !1, line: 72, type: !72, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !75}
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_bulk_data", file: !77, line: 87, size: 128, elements: !78)
!77 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !83}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !76, file: !77, line: 88, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !76, file: !77, line: 89, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !77, line: 17, flags: DIFlagFwdDecl)
!86 = !{}
!87 = !DILocalVariable(name: "num_clks", arg: 1, scope: !71, file: !1, line: 72, type: !74)
!88 = !DILocation(line: 72, column: 23, scope: !71)
!89 = !DILocalVariable(name: "clks", arg: 2, scope: !71, file: !1, line: 72, type: !75)
!90 = !DILocation(line: 72, column: 55, scope: !71)
!91 = !DILocation(line: 74, column: 2, scope: !71)
!92 = !DILocation(line: 74, column: 9, scope: !71)
!93 = !DILocation(line: 74, column: 20, scope: !71)
!94 = !DILocation(line: 75, column: 11, scope: !95)
!95 = distinct !DILexicalBlock(scope: !71, file: !1, line: 74, column: 26)
!96 = !DILocation(line: 75, column: 16, scope: !95)
!97 = !DILocation(line: 75, column: 26, scope: !95)
!98 = !DILocation(line: 75, column: 3, scope: !95)
!99 = !DILocation(line: 76, column: 3, scope: !95)
!100 = !DILocation(line: 76, column: 8, scope: !95)
!101 = !DILocation(line: 76, column: 18, scope: !95)
!102 = !DILocation(line: 76, column: 22, scope: !95)
!103 = distinct !{!103, !91, !104}
!104 = !DILocation(line: 77, column: 2, scope: !71)
!105 = !DILocation(line: 78, column: 1, scope: !71)
!106 = distinct !DISubprogram(name: "clk_bulk_get", scope: !1, file: !1, line: 114, type: !107, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!107 = !DISubroutineType(types: !108)
!108 = !{!74, !109, !74, !75}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !111)
!111 = !{!112, !1583, !1584, !1587, !1588, !1639, !1736, !1737, !1738, !1739, !1740, !1749, !1854, !1867, !1870, !1871, !1875, !1877, !1878, !1879, !1883, !1889, !1890, !1893, !2008, !2009, !2012, !2013, !2014, !2015, !2047, !2048, !2049, !2052, !2055, !2056, !2057, !2058}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !110, file: !28, line: 462, baseType: !113, size: 512)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !114, line: 64, size: 512, elements: !115)
!114 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !123, !125, !184, !1420, !1573, !1578, !1579, !1580, !1581, !1582}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !114, line: 65, baseType: !80, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !113, file: !114, line: 66, baseType: !118, size: 128, offset: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !65, line: 178, size: 128, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !65, line: 179, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !118, file: !65, line: 179, baseType: !121, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !114, line: 67, baseType: !124, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !113, file: !114, line: 68, baseType: !126, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !114, line: 192, size: 704, elements: !128)
!128 = !{!129, !130, !145, !146}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !127, file: !114, line: 193, baseType: !118, size: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !127, file: !114, line: 194, baseType: !131, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !132, line: 83, baseType: !133)
!132 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !132, line: 71, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !132, line: 72, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !132, line: 72, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !136, file: !132, line: 73, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !132, line: 20, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !139, file: !132, line: 21, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !143, line: 25, baseType: !144)
!143 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 25, elements: !86)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !127, file: !114, line: 195, baseType: !113, size: 512, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !127, file: !114, line: 196, baseType: !147, size: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !114, line: 156, size: 192, elements: !150)
!150 = !{!151, !156, !161}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !149, file: !114, line: 157, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!74, !126, !124}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !114, line: 158, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!80, !126, !124}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !149, file: !114, line: 159, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!74, !126, !124, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !114, line: 148, size: 20736, elements: !168)
!168 = !{!169, !174, !178, !179, !183}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !167, file: !114, line: 149, baseType: !170, size: 192)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 192, elements: !172)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!172 = !{!173}
!173 = !DISubrange(count: 3)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !167, file: !114, line: 150, baseType: !175, size: 4096, offset: 192)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 4096, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !167, file: !114, line: 151, baseType: !74, size: 32, offset: 4288)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !167, file: !114, line: 152, baseType: !180, size: 16384, offset: 4320)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 16384, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !167, file: !114, line: 153, baseType: !74, size: 32, offset: 20704)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !113, file: !114, line: 69, baseType: !185, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !114, line: 138, size: 448, elements: !187)
!187 = !{!188, !192, !220, !222, !1365, !1398, !1402}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !186, file: !114, line: 139, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !124}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !186, file: !114, line: 140, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !196, line: 230, size: 128, elements: !197)
!196 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !213}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !195, file: !196, line: 231, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !124, !206, !171}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !65, line: 60, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !204, line: 73, baseType: !205)
!204 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !204, line: 15, baseType: !63)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !196, line: 30, size: 128, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !196, line: 31, baseType: !80, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !207, file: !196, line: 32, baseType: !211, size: 16, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !65, line: 19, baseType: !212)
!212 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !195, file: !196, line: 232, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!202, !124, !206, !80, !217}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 55, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !204, line: 72, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !204, line: 16, baseType: !61)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !186, file: !114, line: 141, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !186, file: !114, line: 142, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !196, line: 84, size: 320, elements: !227)
!227 = !{!228, !229, !233, !1362, !1363}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !196, line: 85, baseType: !80, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !226, file: !196, line: 86, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!211, !124, !206, !74}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !226, file: !196, line: 88, baseType: !234, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!211, !124, !237, !74}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !196, line: 168, size: 448, elements: !239)
!239 = !{!240, !241, !242, !243, !253, !254}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !238, file: !196, line: 169, baseType: !207, size: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !238, file: !196, line: 170, baseType: !217, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !238, file: !196, line: 171, baseType: !62, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !238, file: !196, line: 172, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!202, !247, !124, !237, !171, !250, !217}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !249, line: 526, flags: DIFlagFwdDecl)
!249 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !65, line: 46, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !204, line: 88, baseType: !252)
!252 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !238, file: !196, line: 174, baseType: !244, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !238, file: !196, line: 176, baseType: !255, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!74, !247, !124, !237, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !260, line: 305, size: 1472, elements: !261)
!260 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !263, !264, !265, !266, !274, !275, !1336, !1342, !1343, !1348, !1349, !1352, !1356, !1357, !1358, !1359, !1360}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !259, file: !260, line: 308, baseType: !61, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !259, file: !260, line: 309, baseType: !61, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !259, file: !260, line: 313, baseType: !258, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !259, file: !260, line: 313, baseType: !258, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !259, file: !260, line: 315, baseType: !267, size: 192, align: 64, offset: 256)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !268, line: 24, size: 192, align: 64, elements: !269)
!268 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!269 = !{!270, !271, !273}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !267, file: !268, line: 25, baseType: !61, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !267, file: !268, line: 26, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !267, file: !268, line: 27, baseType: !272, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !259, file: !260, line: 323, baseType: !61, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !259, file: !260, line: 327, baseType: !276, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !260, line: 388, size: 7296, elements: !278)
!278 = !{!279, !1332}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !260, line: 389, baseType: !280, size: 7296)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !277, file: !260, line: 389, size: 7296, elements: !281)
!281 = !{!282, !283, !287, !293, !297, !298, !299, !300, !301, !309, !314, !315, !316, !317, !326, !327, !328, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !363, !371, !374, !406, !407, !1303, !1304, !1307, !1310, !1311, !1314, !1315, !1316, !1319, !1331}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !280, file: !260, line: 390, baseType: !258, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !280, file: !260, line: 391, baseType: !284, size: 64, offset: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !268, line: 31, size: 64, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !284, file: !268, line: 32, baseType: !272, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !280, file: !260, line: 392, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !289, line: 23, baseType: !290)
!289 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !291, line: 31, baseType: !292)
!291 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!292 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !280, file: !260, line: 394, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!61, !247, !61, !61, !61, !61}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !280, file: !260, line: 398, baseType: !61, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !280, file: !260, line: 399, baseType: !61, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !280, file: !260, line: 405, baseType: !61, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !280, file: !260, line: 406, baseType: !61, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !280, file: !260, line: 407, baseType: !302, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !249, line: 286, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 286, size: 64, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !304, file: !249, line: 286, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !308, line: 18, baseType: !61)
!308 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!309 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !280, file: !260, line: 416, baseType: !310, size: 32, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !65, line: 168, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 166, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !311, file: !65, line: 167, baseType: !74, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !280, file: !260, line: 428, baseType: !310, size: 32, offset: 608)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !280, file: !260, line: 437, baseType: !310, size: 32, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !280, file: !260, line: 447, baseType: !310, size: 32, offset: 672)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !280, file: !260, line: 450, baseType: !318, size: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !319, line: 13, baseType: !320)
!319 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !65, line: 175, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 173, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !321, file: !65, line: 174, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !289, line: 22, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !291, line: 30, baseType: !252)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !280, file: !260, line: 452, baseType: !74, size: 32, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !280, file: !260, line: 454, baseType: !131, offset: 800)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !280, file: !260, line: 457, baseType: !329, size: 256, offset: 832)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !330, line: 35, size: 256, elements: !331)
!330 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !333, !334, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !329, file: !330, line: 36, baseType: !318, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !329, file: !330, line: 42, baseType: !318, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !329, file: !330, line: 46, baseType: !335, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !132, line: 29, baseType: !139)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !329, file: !330, line: 47, baseType: !118, size: 128, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !280, file: !260, line: 459, baseType: !118, size: 128, offset: 1088)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !280, file: !260, line: 466, baseType: !61, size: 64, offset: 1216)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !280, file: !260, line: 467, baseType: !61, size: 64, offset: 1280)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !280, file: !260, line: 469, baseType: !61, size: 64, offset: 1344)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !280, file: !260, line: 470, baseType: !61, size: 64, offset: 1408)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !280, file: !260, line: 471, baseType: !320, size: 64, offset: 1472)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !280, file: !260, line: 472, baseType: !61, size: 64, offset: 1536)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !280, file: !260, line: 473, baseType: !61, size: 64, offset: 1600)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !280, file: !260, line: 474, baseType: !61, size: 64, offset: 1664)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !280, file: !260, line: 475, baseType: !61, size: 64, offset: 1728)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !280, file: !260, line: 477, baseType: !131, offset: 1792)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !280, file: !260, line: 478, baseType: !61, size: 64, offset: 1792)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !280, file: !260, line: 478, baseType: !61, size: 64, offset: 1856)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !280, file: !260, line: 478, baseType: !61, size: 64, offset: 1920)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !280, file: !260, line: 478, baseType: !61, size: 64, offset: 1984)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !280, file: !260, line: 479, baseType: !61, size: 64, offset: 2048)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !280, file: !260, line: 479, baseType: !61, size: 64, offset: 2112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !280, file: !260, line: 479, baseType: !61, size: 64, offset: 2176)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !280, file: !260, line: 480, baseType: !61, size: 64, offset: 2240)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !280, file: !260, line: 480, baseType: !61, size: 64, offset: 2304)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !280, file: !260, line: 480, baseType: !61, size: 64, offset: 2368)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !280, file: !260, line: 480, baseType: !61, size: 64, offset: 2432)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !280, file: !260, line: 482, baseType: !360, size: 2816, offset: 2496)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2816, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 44)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !280, file: !260, line: 488, baseType: !364, size: 256, offset: 5312)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !365, line: 60, size: 256, elements: !366)
!365 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !364, file: !365, line: 61, baseType: !368, size: 256)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 256, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 4)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !280, file: !260, line: 490, baseType: !372, size: 64, offset: 5568)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !260, line: 490, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !280, file: !260, line: 493, baseType: !375, size: 896, offset: 5632)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !376, line: 53, baseType: !377)
!376 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 13, size: 896, elements: !378)
!378 = !{!379, !380, !381, !382, !385, !386, !393, !394, !398, !399, !402}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !377, file: !376, line: 18, baseType: !288, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !377, file: !376, line: 28, baseType: !320, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !377, file: !376, line: 31, baseType: !329, size: 256, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !377, file: !376, line: 32, baseType: !383, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !376, line: 32, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !377, file: !376, line: 37, baseType: !212, size: 16, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !377, file: !376, line: 40, baseType: !387, size: 192, offset: 512)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !388, line: 53, size: 192, elements: !389)
!388 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390, !391, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !387, file: !388, line: 54, baseType: !318, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !387, file: !388, line: 55, baseType: !131, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !387, file: !388, line: 59, baseType: !118, size: 128, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !377, file: !376, line: 41, baseType: !62, size: 64, offset: 704)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !377, file: !376, line: 42, baseType: !395, size: 64, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !376, line: 42, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !377, file: !376, line: 44, baseType: !310, size: 32, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !377, file: !376, line: 50, baseType: !400, size: 16, offset: 864)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !289, line: 19, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !291, line: 24, baseType: !212)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !377, file: !376, line: 51, baseType: !403, size: 16, offset: 880)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !289, line: 18, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !291, line: 23, baseType: !405)
!405 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !260, line: 495, baseType: !61, size: 64, offset: 6528)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !280, file: !260, line: 497, baseType: !408, size: 64, offset: 6592)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !260, line: 381, size: 384, elements: !410)
!410 = !{!411, !412, !1302}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !409, file: !260, line: 382, baseType: !310, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !409, file: !260, line: 383, baseType: !413, size: 128, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !260, line: 376, size: 128, elements: !414)
!414 = !{!415, !1300}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !413, file: !260, line: 377, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !418, line: 640, size: 48640, elements: !419)
!418 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!419 = !{!420, !428, !430, !431, !437, !438, !439, !440, !441, !442, !443, !444, !448, !466, !477, !572, !573, !574, !585, !586, !588, !589, !590, !591, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !670, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !726, !728, !729, !730, !742, !744, !745, !746, !747, !748, !754, !755, !756, !757, !758, !759, !760, !772, !777, !781, !782, !783, !786, !790, !793, !796, !799, !802, !805, !808, !811, !817, !818, !819, !825, !826, !827, !828, !829, !838, !839, !840, !841, !842, !847, !848, !849, !852, !853, !856, !859, !862, !865, !868, !871, !872, !952, !955, !958, !959, !962, !963, !964, !970, !971, !972, !985, !986, !987, !999, !1004, !1007, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !417, file: !418, line: 646, baseType: !421, size: 128)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !422, line: 56, size: 128, elements: !423)
!422 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !422, line: 57, baseType: !61, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !421, file: !422, line: 58, baseType: !426, size: 32, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !289, line: 21, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !291, line: 27, baseType: !5)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !417, file: !418, line: 649, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !417, file: !418, line: 657, baseType: !62, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !417, file: !418, line: 658, baseType: !432, size: 32, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !433, line: 113, baseType: !434)
!433 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !433, line: 111, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !434, file: !433, line: 112, baseType: !310, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !418, line: 660, baseType: !5, size: 32, offset: 288)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !417, file: !418, line: 661, baseType: !5, size: 32, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !417, file: !418, line: 684, baseType: !74, size: 32, offset: 352)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !417, file: !418, line: 686, baseType: !74, size: 32, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !417, file: !418, line: 687, baseType: !74, size: 32, offset: 416)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !417, file: !418, line: 688, baseType: !74, size: 32, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !417, file: !418, line: 689, baseType: !5, size: 32, offset: 480)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !417, file: !418, line: 691, baseType: !445, size: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !418, line: 691, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !417, file: !418, line: 692, baseType: !449, size: 832, offset: 576)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !418, line: 451, size: 832, elements: !450)
!450 = !{!451, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !449, file: !418, line: 453, baseType: !452, size: 128)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !418, line: 325, size: 128, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !452, file: !418, line: 326, baseType: !61, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !452, file: !418, line: 327, baseType: !426, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !449, file: !418, line: 454, baseType: !267, size: 192, align: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !449, file: !418, line: 455, baseType: !118, size: 128, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !449, file: !418, line: 456, baseType: !5, size: 32, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !449, file: !418, line: 458, baseType: !288, size: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !449, file: !418, line: 459, baseType: !288, size: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !449, file: !418, line: 460, baseType: !288, size: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !449, file: !418, line: 461, baseType: !288, size: 64, offset: 704)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !449, file: !418, line: 463, baseType: !288, size: 64, offset: 768)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !449, file: !418, line: 465, baseType: !465, offset: 832)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !418, line: 415, elements: !86)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !417, file: !418, line: 693, baseType: !467, size: 384, offset: 1408)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !418, line: 489, size: 384, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !467, file: !418, line: 490, baseType: !118, size: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !467, file: !418, line: 491, baseType: !61, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !467, file: !418, line: 492, baseType: !61, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !467, file: !418, line: 493, baseType: !5, size: 32, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !467, file: !418, line: 494, baseType: !212, size: 16, offset: 288)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !467, file: !418, line: 495, baseType: !212, size: 16, offset: 304)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !467, file: !418, line: 497, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !417, file: !418, line: 697, baseType: !478, size: 1792, offset: 1792)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !418, line: 507, size: 1792, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !569, !570}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !478, file: !418, line: 508, baseType: !267, size: 192, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !478, file: !418, line: 515, baseType: !288, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !478, file: !418, line: 516, baseType: !288, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !478, file: !418, line: 517, baseType: !288, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !478, file: !418, line: 518, baseType: !288, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !478, file: !418, line: 519, baseType: !288, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !478, file: !418, line: 526, baseType: !324, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !478, file: !418, line: 527, baseType: !288, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !418, line: 528, baseType: !5, size: 32, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !478, file: !418, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !478, file: !418, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !478, file: !418, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !478, file: !418, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !478, file: !418, line: 563, baseType: !494, size: 512, offset: 704)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !495)
!495 = !{!496, !504, !505, !510, !562, !566, !567, !568}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !494, file: !4, line: 119, baseType: !497, size: 256)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !498, line: 9, size: 256, elements: !499)
!498 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !497, file: !498, line: 10, baseType: !267, size: 192, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !497, file: !498, line: 11, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !503, line: 29, baseType: !324)
!503 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !494, file: !4, line: 120, baseType: !502, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !494, file: !4, line: 121, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!3, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !494, file: !4, line: 122, baseType: !511, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !513)
!513 = !{!514, !534, !535, !538, !548, !549, !557, !561}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !512, file: !4, line: 160, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !516, file: !4, line: 215, baseType: !335)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !516, file: !4, line: 216, baseType: !5, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !516, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !516, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !516, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !516, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !516, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !516, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !516, file: !4, line: 233, baseType: !502, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !516, file: !4, line: 234, baseType: !509, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !516, file: !4, line: 235, baseType: !502, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !516, file: !4, line: 236, baseType: !509, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !516, file: !4, line: 237, baseType: !531, size: 4096, offset: 512)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 4096, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !512, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !512, file: !4, line: 162, baseType: !536, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !65, line: 27, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !204, line: 96, baseType: !74)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !512, file: !4, line: 163, baseType: !539, size: 32, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !540, line: 276, baseType: !541)
!540 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !540, line: 276, size: 32, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !541, file: !540, line: 276, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !540, line: 70, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !540, line: 65, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !545, file: !540, line: 66, baseType: !5, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !512, file: !4, line: 164, baseType: !509, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !512, file: !4, line: 165, baseType: !550, size: 128, offset: 256)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !498, line: 14, size: 128, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !550, file: !498, line: 15, baseType: !553, size: 128)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !268, line: 125, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !553, file: !268, line: 126, baseType: !284, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !553, file: !268, line: 127, baseType: !272, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !512, file: !4, line: 166, baseType: !558, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!502}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !512, file: !4, line: 167, baseType: !502, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !494, file: !4, line: 123, baseType: !563, size: 8, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !289, line: 17, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !291, line: 21, baseType: !565)
!565 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !494, file: !4, line: 124, baseType: !563, size: 8, offset: 456)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !494, file: !4, line: 125, baseType: !563, size: 8, offset: 464)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !494, file: !4, line: 126, baseType: !563, size: 8, offset: 472)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !478, file: !418, line: 572, baseType: !494, size: 512, offset: 1216)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !478, file: !418, line: 580, baseType: !571, size: 64, offset: 1728)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !417, file: !418, line: 721, baseType: !5, size: 32, offset: 3584)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !417, file: !418, line: 722, baseType: !74, size: 32, offset: 3616)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !417, file: !418, line: 723, baseType: !575, size: 64, offset: 3648)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !578, line: 17, baseType: !579)
!578 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !578, line: 17, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !579, file: !578, line: 17, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 1)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !417, file: !418, line: 724, baseType: !577, size: 64, offset: 3712)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !417, file: !418, line: 749, baseType: !587, offset: 3776)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !418, line: 290, elements: !86)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !417, file: !418, line: 751, baseType: !118, size: 128, offset: 3776)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !417, file: !418, line: 757, baseType: !276, size: 64, offset: 3904)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !417, file: !418, line: 758, baseType: !276, size: 64, offset: 3968)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !417, file: !418, line: 761, baseType: !592, size: 320, offset: 4032)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !365, line: 34, size: 320, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !592, file: !365, line: 35, baseType: !288, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !592, file: !365, line: 36, baseType: !596, size: 256, offset: 64)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 256, elements: !369)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !417, file: !418, line: 766, baseType: !74, size: 32, offset: 4352)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !417, file: !418, line: 767, baseType: !74, size: 32, offset: 4384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !417, file: !418, line: 768, baseType: !74, size: 32, offset: 4416)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !417, file: !418, line: 770, baseType: !74, size: 32, offset: 4448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !417, file: !418, line: 772, baseType: !61, size: 64, offset: 4480)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !417, file: !418, line: 775, baseType: !5, size: 32, offset: 4544)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !417, file: !418, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !417, file: !418, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !417, file: !418, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !417, file: !418, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !417, file: !418, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !417, file: !418, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !417, file: !418, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !417, file: !418, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !417, file: !418, line: 831, baseType: !61, size: 64, offset: 4672)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !417, file: !418, line: 833, baseType: !613, size: 384, offset: 4736)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !614)
!614 = !{!615, !620}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !613, file: !10, line: 26, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!63, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, scope: !613, file: !10, line: 27, baseType: !621, size: 320, offset: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !10, line: 27, size: 320, elements: !622)
!622 = !{!623, !633, !660}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !621, file: !10, line: 36, baseType: !624, size: 320)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !10, line: 29, size: 320, elements: !625)
!625 = !{!626, !628, !629, !630, !631, !632}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !624, file: !10, line: 30, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !624, file: !10, line: 31, baseType: !426, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !10, line: 32, baseType: !426, size: 32, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !624, file: !10, line: 33, baseType: !426, size: 32, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !624, file: !10, line: 34, baseType: !288, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !624, file: !10, line: 35, baseType: !627, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !621, file: !10, line: 46, baseType: !634, size: 192)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !10, line: 38, size: 192, elements: !635)
!635 = !{!636, !637, !638, !659}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !634, file: !10, line: 39, baseType: !536, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !10, line: 41, baseType: !639, size: 64, offset: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !10, line: 41, size: 64, elements: !640)
!640 = !{!641, !649}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !639, file: !10, line: 42, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !644, line: 7, size: 128, elements: !645)
!644 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!645 = !{!646, !648}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !643, file: !644, line: 8, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !204, line: 93, baseType: !252)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !643, file: !644, line: 9, baseType: !252, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !639, file: !10, line: 43, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !652, line: 7, size: 64, elements: !653)
!652 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!653 = !{!654, !658}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !651, file: !652, line: 8, baseType: !655, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !652, line: 5, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !289, line: 20, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !291, line: 26, baseType: !74)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !651, file: !652, line: 9, baseType: !656, size: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !634, file: !10, line: 45, baseType: !288, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !621, file: !10, line: 54, baseType: !661, size: 256)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !10, line: 48, size: 256, elements: !662)
!662 = !{!663, !666, !667, !668, !669}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !661, file: !10, line: 49, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !661, file: !10, line: 50, baseType: !74, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !661, file: !10, line: 51, baseType: !74, size: 32, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !661, file: !10, line: 52, baseType: !61, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !661, file: !10, line: 53, baseType: !61, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !417, file: !418, line: 835, baseType: !671, size: 32, offset: 5120)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !65, line: 22, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !204, line: 28, baseType: !74)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !417, file: !418, line: 836, baseType: !671, size: 32, offset: 5152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !417, file: !418, line: 840, baseType: !61, size: 64, offset: 5184)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !417, file: !418, line: 849, baseType: !416, size: 64, offset: 5248)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !417, file: !418, line: 852, baseType: !416, size: 64, offset: 5312)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !417, file: !418, line: 857, baseType: !118, size: 128, offset: 5376)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !417, file: !418, line: 858, baseType: !118, size: 128, offset: 5504)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !417, file: !418, line: 859, baseType: !416, size: 64, offset: 5632)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !417, file: !418, line: 867, baseType: !118, size: 128, offset: 5696)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !417, file: !418, line: 868, baseType: !118, size: 128, offset: 5824)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !417, file: !418, line: 871, baseType: !683, size: 64, offset: 5952)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !685, line: 59, size: 768, elements: !686)
!685 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!686 = !{!687, !688, !689, !690, !701, !702, !709, !718}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !684, file: !685, line: 61, baseType: !432, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !684, file: !685, line: 62, baseType: !5, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !684, file: !685, line: 63, baseType: !131, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !684, file: !685, line: 65, baseType: !691, size: 256, offset: 64)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 256, elements: !369)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !65, line: 182, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !692, file: !65, line: 183, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !65, line: 186, size: 128, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !65, line: 187, baseType: !695, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !696, file: !65, line: 187, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !684, file: !685, line: 66, baseType: !692, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !684, file: !685, line: 68, baseType: !703, size: 128, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !704, line: 40, baseType: !705)
!704 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !704, line: 36, size: 128, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !705, file: !704, line: 37, baseType: !131)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !705, file: !704, line: 38, baseType: !118, size: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !684, file: !685, line: 69, baseType: !710, size: 128, align: 64, offset: 512)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !65, line: 216, size: 128, align: 64, elements: !711)
!711 = !{!712, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !65, line: 217, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !710, file: !65, line: 218, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !713}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !684, file: !685, line: 70, baseType: !719, size: 128, offset: 640)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 128, elements: !583)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !685, line: 54, size: 128, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !720, file: !685, line: 55, baseType: !74, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !720, file: !685, line: 56, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !685, line: 56, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !417, file: !418, line: 872, baseType: !727, size: 512, offset: 6016)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 512, elements: !369)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !417, file: !418, line: 873, baseType: !118, size: 128, offset: 6528)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !417, file: !418, line: 874, baseType: !118, size: 128, offset: 6656)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !417, file: !418, line: 876, baseType: !731, size: 64, offset: 6784)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !733, line: 26, size: 192, elements: !734)
!733 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !732, file: !733, line: 27, baseType: !5, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !732, file: !733, line: 28, baseType: !737, size: 128, offset: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !738, line: 43, size: 128, elements: !739)
!738 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !737, file: !738, line: 44, baseType: !335)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !737, file: !738, line: 45, baseType: !118, size: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !417, file: !418, line: 879, baseType: !743, size: 64, offset: 6848)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !417, file: !418, line: 882, baseType: !743, size: 64, offset: 6912)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !417, file: !418, line: 884, baseType: !288, size: 64, offset: 6976)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !417, file: !418, line: 885, baseType: !288, size: 64, offset: 7040)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !417, file: !418, line: 890, baseType: !288, size: 64, offset: 7104)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !417, file: !418, line: 891, baseType: !749, size: 128, offset: 7168)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !418, line: 242, size: 128, elements: !750)
!750 = !{!751, !752, !753}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !749, file: !418, line: 244, baseType: !288, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !749, file: !418, line: 245, baseType: !288, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !749, file: !418, line: 246, baseType: !335, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !417, file: !418, line: 900, baseType: !61, size: 64, offset: 7296)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !417, file: !418, line: 901, baseType: !61, size: 64, offset: 7360)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !417, file: !418, line: 904, baseType: !288, size: 64, offset: 7424)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !417, file: !418, line: 907, baseType: !288, size: 64, offset: 7488)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !417, file: !418, line: 910, baseType: !61, size: 64, offset: 7552)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !417, file: !418, line: 911, baseType: !61, size: 64, offset: 7616)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !417, file: !418, line: 914, baseType: !761, size: 640, offset: 7680)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !762, line: 123, size: 640, elements: !763)
!762 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!763 = !{!764, !770, !771}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !761, file: !762, line: 124, baseType: !765, size: 576)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 576, elements: !172)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !762, line: 108, size: 192, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !766, file: !762, line: 109, baseType: !288, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !766, file: !762, line: 110, baseType: !550, size: 128, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !761, file: !762, line: 125, baseType: !5, size: 32, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !761, file: !762, line: 126, baseType: !5, size: 32, offset: 608)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !417, file: !418, line: 917, baseType: !773, size: 192, offset: 8320)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !762, line: 134, size: 192, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !773, file: !762, line: 135, baseType: !710, size: 128, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !773, file: !762, line: 136, baseType: !5, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !417, file: !418, line: 923, baseType: !778, size: 64, offset: 8512)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !418, line: 923, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !417, file: !418, line: 926, baseType: !778, size: 64, offset: 8576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !417, file: !418, line: 929, baseType: !778, size: 64, offset: 8640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !417, file: !418, line: 933, baseType: !784, size: 64, offset: 8704)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !418, line: 933, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !417, file: !418, line: 943, baseType: !787, size: 128, offset: 8768)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 128, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 16)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !417, file: !418, line: 945, baseType: !791, size: 64, offset: 8896)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !418, line: 49, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !417, file: !418, line: 956, baseType: !794, size: 64, offset: 8960)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !418, line: 45, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !417, file: !418, line: 959, baseType: !797, size: 64, offset: 9024)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !418, line: 959, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !417, file: !418, line: 962, baseType: !800, size: 64, offset: 9088)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !418, line: 66, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !417, file: !418, line: 966, baseType: !803, size: 64, offset: 9152)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !418, line: 50, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !417, file: !418, line: 969, baseType: !806, size: 64, offset: 9216)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !762, line: 223, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !417, file: !418, line: 970, baseType: !809, size: 64, offset: 9280)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !418, line: 62, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !417, file: !418, line: 971, baseType: !812, size: 64, offset: 9344)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !813, line: 25, baseType: !814)
!813 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 23, size: 64, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !814, file: !813, line: 24, baseType: !582, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !417, file: !418, line: 972, baseType: !812, size: 64, offset: 9408)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !417, file: !418, line: 974, baseType: !812, size: 64, offset: 9472)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !417, file: !418, line: 975, baseType: !820, size: 192, offset: 9536)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !821, line: 30, size: 192, elements: !822)
!821 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !820, file: !821, line: 31, baseType: !118, size: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !820, file: !821, line: 32, baseType: !812, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !417, file: !418, line: 976, baseType: !61, size: 64, offset: 9728)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !417, file: !418, line: 977, baseType: !217, size: 64, offset: 9792)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !417, file: !418, line: 978, baseType: !5, size: 32, offset: 9856)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !417, file: !418, line: 980, baseType: !713, size: 64, offset: 9920)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !417, file: !418, line: 989, baseType: !830, size: 128, offset: 9984)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !831, line: 35, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !834, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !830, file: !831, line: 36, baseType: !74, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !830, file: !831, line: 37, baseType: !310, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !830, file: !831, line: 38, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !831, line: 23, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !417, file: !418, line: 992, baseType: !288, size: 64, offset: 10112)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !417, file: !418, line: 993, baseType: !288, size: 64, offset: 10176)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !417, file: !418, line: 996, baseType: !131, offset: 10240)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !417, file: !418, line: 999, baseType: !335, offset: 10240)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !417, file: !418, line: 1001, baseType: !843, size: 64, offset: 10240)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !418, line: 636, size: 64, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !843, file: !418, line: 637, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !417, file: !418, line: 1005, baseType: !553, size: 128, offset: 10304)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !417, file: !418, line: 1007, baseType: !416, size: 64, offset: 10432)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !417, file: !418, line: 1009, baseType: !850, size: 64, offset: 10496)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !418, line: 1009, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !417, file: !418, line: 1043, baseType: !62, size: 64, offset: 10560)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !417, file: !418, line: 1046, baseType: !854, size: 64, offset: 10624)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !418, line: 41, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !417, file: !418, line: 1050, baseType: !857, size: 64, offset: 10688)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !418, line: 42, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !417, file: !418, line: 1054, baseType: !860, size: 64, offset: 10752)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !418, line: 55, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !417, file: !418, line: 1056, baseType: !863, size: 64, offset: 10816)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !418, line: 40, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !417, file: !418, line: 1058, baseType: !866, size: 64, offset: 10880)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !418, line: 47, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !417, file: !418, line: 1061, baseType: !869, size: 64, offset: 10944)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !418, line: 43, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !417, file: !418, line: 1064, baseType: !61, size: 64, offset: 11008)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !417, file: !418, line: 1065, baseType: !873, size: 64, offset: 11072)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !821, line: 14, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !821, line: 12, size: 384, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !821, line: 13, baseType: !878, size: 384)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !821, line: 13, size: 384, elements: !879)
!879 = !{!880, !881, !882, !883}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !878, file: !821, line: 13, baseType: !74, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !878, file: !821, line: 13, baseType: !74, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !878, file: !821, line: 13, baseType: !74, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !878, file: !821, line: 13, baseType: !884, size: 256, offset: 128)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !885, line: 32, size: 256, elements: !886)
!885 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!886 = !{!887, !893, !906, !912, !921, !941, !946}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !884, file: !885, line: 37, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !885, line: 34, size: 64, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !888, file: !885, line: 35, baseType: !672, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !888, file: !885, line: 36, baseType: !892, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !204, line: 49, baseType: !5)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !884, file: !885, line: 45, baseType: !894, size: 192)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !885, line: 40, size: 192, elements: !895)
!895 = !{!896, !898, !899, !905}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !894, file: !885, line: 41, baseType: !897, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !204, line: 95, baseType: !74)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !894, file: !885, line: 42, baseType: !74, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !894, file: !885, line: 43, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !885, line: 11, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !885, line: 8, size: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !901, file: !885, line: 9, baseType: !74, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !901, file: !885, line: 10, baseType: !62, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !894, file: !885, line: 44, baseType: !74, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !884, file: !885, line: 52, baseType: !907, size: 128)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !885, line: 48, size: 128, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !907, file: !885, line: 49, baseType: !672, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !907, file: !885, line: 50, baseType: !892, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !907, file: !885, line: 51, baseType: !900, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !884, file: !885, line: 61, baseType: !913, size: 256)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !885, line: 55, size: 256, elements: !914)
!914 = !{!915, !916, !917, !918, !920}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !913, file: !885, line: 56, baseType: !672, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !913, file: !885, line: 57, baseType: !892, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !913, file: !885, line: 58, baseType: !74, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !913, file: !885, line: 59, baseType: !919, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !204, line: 94, baseType: !205)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !913, file: !885, line: 60, baseType: !919, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !884, file: !885, line: 95, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !885, line: 64, size: 256, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !922, file: !885, line: 65, baseType: !62, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !885, line: 77, baseType: !926, size: 192, offset: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !885, line: 77, size: 192, elements: !927)
!927 = !{!928, !929, !936}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !926, file: !885, line: 82, baseType: !405, size: 16)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !926, file: !885, line: 88, baseType: !930, size: 192)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !885, line: 84, size: 192, elements: !931)
!931 = !{!932, !934, !935}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !930, file: !885, line: 85, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !532)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !930, file: !885, line: 86, baseType: !62, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !930, file: !885, line: 87, baseType: !62, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !926, file: !885, line: 93, baseType: !937, size: 96)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !885, line: 90, size: 96, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !937, file: !885, line: 91, baseType: !933, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !937, file: !885, line: 92, baseType: !427, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !884, file: !885, line: 101, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !885, line: 98, size: 128, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !942, file: !885, line: 99, baseType: !63, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !942, file: !885, line: 100, baseType: !74, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !884, file: !885, line: 108, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !885, line: 104, size: 128, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !947, file: !885, line: 105, baseType: !62, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !947, file: !885, line: 106, baseType: !74, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !947, file: !885, line: 107, baseType: !5, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !417, file: !418, line: 1067, baseType: !953, offset: 11136)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !954, line: 12, elements: !86)
!954 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!955 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !417, file: !418, line: 1099, baseType: !956, size: 64, offset: 11136)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !418, line: 56, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !417, file: !418, line: 1103, baseType: !118, size: 128, offset: 11200)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !417, file: !418, line: 1104, baseType: !960, size: 64, offset: 11328)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !418, line: 46, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !417, file: !418, line: 1105, baseType: !387, size: 192, offset: 11392)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !417, file: !418, line: 1106, baseType: !5, size: 32, offset: 11584)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !417, file: !418, line: 1109, baseType: !965, size: 128, offset: 11648)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 128, elements: !968)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !418, line: 51, flags: DIFlagFwdDecl)
!968 = !{!969}
!969 = !DISubrange(count: 2)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !417, file: !418, line: 1110, baseType: !387, size: 192, offset: 11776)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !417, file: !418, line: 1111, baseType: !118, size: 128, offset: 11968)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !417, file: !418, line: 1173, baseType: !973, size: 64, offset: 12096)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !975, line: 62, size: 256, align: 256, elements: !976)
!975 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!976 = !{!977, !978, !979, !984}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !974, file: !975, line: 75, baseType: !427, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !974, file: !975, line: 90, baseType: !427, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !974, file: !975, line: 124, baseType: !980, size: 64, offset: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !975, line: 109, size: 64, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !980, file: !975, line: 110, baseType: !290, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !980, file: !975, line: 112, baseType: !290, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !975, line: 144, baseType: !427, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !417, file: !418, line: 1174, baseType: !426, size: 32, offset: 12160)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !417, file: !418, line: 1179, baseType: !61, size: 64, offset: 12224)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !417, file: !418, line: 1182, baseType: !988, size: 128, offset: 12288)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !365, line: 76, size: 128, elements: !989)
!989 = !{!990, !995, !998}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !988, file: !365, line: 85, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !992, line: 7, size: 64, elements: !993)
!992 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !991, file: !992, line: 12, baseType: !579, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !988, file: !365, line: 88, baseType: !996, size: 8, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !65, line: 30, baseType: !997)
!997 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !988, file: !365, line: 95, baseType: !996, size: 8, offset: 72)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !418, line: 1184, baseType: !1000, size: 128, offset: 12416)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !418, line: 1184, size: 128, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1000, file: !418, line: 1185, baseType: !432, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1000, file: !418, line: 1186, baseType: !710, size: 128, align: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !417, file: !418, line: 1190, baseType: !1005, size: 64, offset: 12544)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !418, line: 53, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !417, file: !418, line: 1192, baseType: !1008, size: 128, offset: 12608)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !365, line: 64, size: 128, elements: !1009)
!1009 = !{!1010, !1103, !1104}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1008, file: !365, line: 65, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !260, line: 68, size: 512, align: 128, elements: !1013)
!1013 = !{!1014, !1015, !1095, !1102}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !260, line: 69, baseType: !61, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !260, line: 77, baseType: !1016, size: 320, offset: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !260, line: 77, size: 320, elements: !1017)
!1017 = !{!1018, !1027, !1032, !1060, !1068, !1074, !1087, !1094}
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !260, line: 78, baseType: !1019, size: 320)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !260, line: 78, size: 320, elements: !1020)
!1020 = !{!1021, !1022, !1025, !1026}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1019, file: !260, line: 84, baseType: !118, size: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1019, file: !260, line: 86, baseType: !1023, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !260, line: 26, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1019, file: !260, line: 87, baseType: !61, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1019, file: !260, line: 94, baseType: !61, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !260, line: 96, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !260, line: 96, size: 64, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1028, file: !260, line: 101, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !65, line: 143, baseType: !288)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !260, line: 103, baseType: !1033, size: 320)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !260, line: 103, size: 320, elements: !1034)
!1034 = !{!1035, !1045, !1048, !1049}
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !260, line: 104, baseType: !1036, size: 128)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !260, line: 104, size: 128, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1036, file: !260, line: 105, baseType: !118, size: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !260, line: 106, baseType: !1040, size: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !260, line: 106, size: 128, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1040, file: !260, line: 107, baseType: !1011, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1040, file: !260, line: 109, baseType: !74, size: 32, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1040, file: !260, line: 110, baseType: !74, size: 32, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1033, file: !260, line: 117, baseType: !1046, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !260, line: 117, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1033, file: !260, line: 119, baseType: !62, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !260, line: 120, baseType: !1050, size: 64, offset: 256)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !260, line: 120, size: 64, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1050, file: !260, line: 121, baseType: !62, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1050, file: !260, line: 122, baseType: !61, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !260, line: 123, baseType: !1055, size: 32)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1050, file: !260, line: 123, size: 32, elements: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1055, file: !260, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1055, file: !260, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1055, file: !260, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !260, line: 130, baseType: !1061, size: 192)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !260, line: 130, size: 192, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1061, file: !260, line: 131, baseType: !61, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1061, file: !260, line: 134, baseType: !565, size: 8, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1061, file: !260, line: 135, baseType: !565, size: 8, offset: 72)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1061, file: !260, line: 136, baseType: !310, size: 32, offset: 96)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1061, file: !260, line: 137, baseType: !5, size: 32, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !260, line: 139, baseType: !1069, size: 256)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !260, line: 139, size: 256, elements: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1069, file: !260, line: 140, baseType: !61, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1069, file: !260, line: 141, baseType: !310, size: 32, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1069, file: !260, line: 143, baseType: !118, size: 128, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !260, line: 145, baseType: !1075, size: 256)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !260, line: 145, size: 256, elements: !1076)
!1076 = !{!1077, !1078, !1080, !1081, !1086}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1075, file: !260, line: 146, baseType: !61, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1075, file: !260, line: 147, baseType: !1079, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !249, line: 509, baseType: !1011)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1075, file: !260, line: 148, baseType: !61, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !260, line: 149, baseType: !1082, size: 64, offset: 192)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1075, file: !260, line: 149, size: 64, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1082, file: !260, line: 150, baseType: !276, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1082, file: !260, line: 151, baseType: !310, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1075, file: !260, line: 156, baseType: !131, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !260, line: 159, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !260, line: 159, size: 128, elements: !1089)
!1089 = !{!1090, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1088, file: !260, line: 161, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !260, line: 161, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1088, file: !260, line: 162, baseType: !62, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1016, file: !260, line: 176, baseType: !710, size: 128, align: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !260, line: 179, baseType: !1096, size: 32, offset: 384)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !260, line: 179, size: 32, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1096, file: !260, line: 184, baseType: !310, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1096, file: !260, line: 192, baseType: !5, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1096, file: !260, line: 194, baseType: !5, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1096, file: !260, line: 195, baseType: !74, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1012, file: !260, line: 199, baseType: !310, size: 32, offset: 416)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1008, file: !365, line: 67, baseType: !427, size: 32, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1008, file: !365, line: 68, baseType: !427, size: 32, offset: 96)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !417, file: !418, line: 1206, baseType: !74, size: 32, offset: 12736)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !417, file: !418, line: 1207, baseType: !74, size: 32, offset: 12768)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !417, file: !418, line: 1209, baseType: !61, size: 64, offset: 12800)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !417, file: !418, line: 1219, baseType: !288, size: 64, offset: 12864)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !417, file: !418, line: 1220, baseType: !288, size: 64, offset: 12928)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !417, file: !418, line: 1317, baseType: !74, size: 32, offset: 12992)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !417, file: !418, line: 1319, baseType: !416, size: 64, offset: 13056)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !417, file: !418, line: 1322, baseType: !1113, size: 64, offset: 13120)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !418, line: 1322, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !417, file: !418, line: 1326, baseType: !432, size: 32, offset: 13184)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !417, file: !418, line: 1342, baseType: !62, size: 64, offset: 13248)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !417, file: !418, line: 1343, baseType: !290, size: 64, offset: 13312)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !417, file: !418, line: 1344, baseType: !288, size: 64, offset: 13376)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !417, file: !418, line: 1345, baseType: !290, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !417, file: !418, line: 1346, baseType: !290, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !417, file: !418, line: 1347, baseType: !290, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !417, file: !418, line: 1348, baseType: !710, size: 128, align: 64, offset: 13504)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !417, file: !418, line: 1358, baseType: !1124, size: 34816, offset: 13824)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1125, line: 485, size: 34816, elements: !1126)
!1125 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1126 = !{!1127, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1156, !1157, !1158, !1159, !1160, !1161, !1164, !1165, !1166}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1124, file: !1125, line: 487, baseType: !1128, size: 192)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1129, size: 192, elements: !172)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1130, line: 16, size: 64, elements: !1131)
!1130 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1129, file: !1130, line: 17, baseType: !400, size: 16)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1129, file: !1130, line: 18, baseType: !400, size: 16, offset: 16)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1129, file: !1130, line: 19, baseType: !400, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1129, file: !1130, line: 19, baseType: !400, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1129, file: !1130, line: 19, baseType: !400, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1129, file: !1130, line: 19, baseType: !400, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1129, file: !1130, line: 19, baseType: !400, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1129, file: !1130, line: 20, baseType: !400, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1129, file: !1130, line: 20, baseType: !400, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1129, file: !1130, line: 20, baseType: !400, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1129, file: !1130, line: 20, baseType: !400, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1129, file: !1130, line: 20, baseType: !400, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1129, file: !1130, line: 20, baseType: !400, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1124, file: !1125, line: 491, baseType: !61, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1124, file: !1125, line: 495, baseType: !212, size: 16, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1124, file: !1125, line: 496, baseType: !212, size: 16, offset: 272)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1124, file: !1125, line: 497, baseType: !212, size: 16, offset: 288)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1124, file: !1125, line: 498, baseType: !212, size: 16, offset: 304)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1124, file: !1125, line: 502, baseType: !61, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1124, file: !1125, line: 503, baseType: !61, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1124, file: !1125, line: 514, baseType: !1153, size: 256, offset: 448)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1154, size: 256, elements: !369)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1125, line: 483, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1124, file: !1125, line: 516, baseType: !61, size: 64, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1124, file: !1125, line: 518, baseType: !61, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1124, file: !1125, line: 520, baseType: !61, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1124, file: !1125, line: 521, baseType: !61, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1124, file: !1125, line: 522, baseType: !61, size: 64, offset: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1124, file: !1125, line: 528, baseType: !1162, size: 64, offset: 1024)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1125, line: 10, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1124, file: !1125, line: 535, baseType: !61, size: 64, offset: 1088)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1124, file: !1125, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1124, file: !1125, line: 540, baseType: !1167, size: 33280, offset: 1536)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1168, line: 317, size: 33280, elements: !1169)
!1168 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1167, file: !1168, line: 330, baseType: !5, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1167, file: !1168, line: 337, baseType: !61, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1167, file: !1168, line: 348, baseType: !1173, size: 32768, offset: 512)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1168, line: 304, size: 32768, elements: !1174)
!1174 = !{!1175, !1190, !1229, !1279, !1296}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1173, file: !1168, line: 305, baseType: !1176, size: 896)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1168, line: 12, size: 896, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1189}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1176, file: !1168, line: 13, baseType: !426, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1176, file: !1168, line: 14, baseType: !426, size: 32, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1176, file: !1168, line: 15, baseType: !426, size: 32, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1176, file: !1168, line: 16, baseType: !426, size: 32, offset: 96)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1176, file: !1168, line: 17, baseType: !426, size: 32, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1176, file: !1168, line: 18, baseType: !426, size: 32, offset: 160)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1176, file: !1168, line: 19, baseType: !426, size: 32, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1176, file: !1168, line: 22, baseType: !1186, size: 640, offset: 224)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 640, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 20)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1176, file: !1168, line: 25, baseType: !426, size: 32, offset: 864)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1173, file: !1168, line: 306, baseType: !1191, size: 4096, align: 128)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1168, line: 34, size: 4096, align: 128, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1212, !1213, !1214, !1218, !1220, !1224}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1191, file: !1168, line: 35, baseType: !400, size: 16)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1191, file: !1168, line: 36, baseType: !400, size: 16, offset: 16)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1191, file: !1168, line: 37, baseType: !400, size: 16, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1191, file: !1168, line: 38, baseType: !400, size: 16, offset: 48)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1168, line: 39, baseType: !1198, size: 128, offset: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1168, line: 39, size: 128, elements: !1199)
!1199 = !{!1200, !1205}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !1168, line: 40, baseType: !1201, size: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !1168, line: 40, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1201, file: !1168, line: 41, baseType: !288, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1201, file: !1168, line: 42, baseType: !288, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !1168, line: 44, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !1168, line: 44, size: 128, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1211}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1206, file: !1168, line: 45, baseType: !426, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1206, file: !1168, line: 46, baseType: !426, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1206, file: !1168, line: 47, baseType: !426, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1206, file: !1168, line: 48, baseType: !426, size: 32, offset: 96)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1191, file: !1168, line: 51, baseType: !426, size: 32, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1191, file: !1168, line: 52, baseType: !426, size: 32, offset: 224)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1191, file: !1168, line: 55, baseType: !1215, size: 1024, offset: 256)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 1024, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1191, file: !1168, line: 58, baseType: !1219, size: 2048, offset: 1280)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 2048, elements: !176)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1191, file: !1168, line: 60, baseType: !1221, size: 384, offset: 3328)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 384, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 12)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1168, line: 62, baseType: !1225, size: 384, offset: 3712)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1168, line: 62, size: 384, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1225, file: !1168, line: 63, baseType: !1221, size: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1225, file: !1168, line: 64, baseType: !1221, size: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1173, file: !1168, line: 307, baseType: !1230, size: 1088)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1168, line: 79, size: 1088, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1278}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1230, file: !1168, line: 80, baseType: !426, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1230, file: !1168, line: 81, baseType: !426, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1230, file: !1168, line: 82, baseType: !426, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1230, file: !1168, line: 83, baseType: !426, size: 32, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1230, file: !1168, line: 84, baseType: !426, size: 32, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1230, file: !1168, line: 85, baseType: !426, size: 32, offset: 160)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1230, file: !1168, line: 86, baseType: !426, size: 32, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1230, file: !1168, line: 88, baseType: !1186, size: 640, offset: 224)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1230, file: !1168, line: 89, baseType: !563, size: 8, offset: 864)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1230, file: !1168, line: 90, baseType: !563, size: 8, offset: 872)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1230, file: !1168, line: 91, baseType: !563, size: 8, offset: 880)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1230, file: !1168, line: 92, baseType: !563, size: 8, offset: 888)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1230, file: !1168, line: 93, baseType: !563, size: 8, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1230, file: !1168, line: 94, baseType: !563, size: 8, offset: 904)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1230, file: !1168, line: 95, baseType: !1247, size: 64, offset: 960)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1249, line: 11, size: 128, elements: !1250)
!1249 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1248, file: !1249, line: 12, baseType: !63, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1248, file: !1249, line: 13, baseType: !1253, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1255, line: 56, size: 1344, elements: !1256)
!1255 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1254, file: !1255, line: 61, baseType: !61, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1254, file: !1255, line: 62, baseType: !61, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1254, file: !1255, line: 63, baseType: !61, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1254, file: !1255, line: 64, baseType: !61, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1254, file: !1255, line: 65, baseType: !61, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1254, file: !1255, line: 66, baseType: !61, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1254, file: !1255, line: 68, baseType: !61, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1254, file: !1255, line: 69, baseType: !61, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1254, file: !1255, line: 70, baseType: !61, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1254, file: !1255, line: 71, baseType: !61, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1254, file: !1255, line: 72, baseType: !61, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1254, file: !1255, line: 73, baseType: !61, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1254, file: !1255, line: 74, baseType: !61, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1254, file: !1255, line: 75, baseType: !61, size: 64, offset: 832)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1254, file: !1255, line: 76, baseType: !61, size: 64, offset: 896)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1254, file: !1255, line: 81, baseType: !61, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1254, file: !1255, line: 83, baseType: !61, size: 64, offset: 1024)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1254, file: !1255, line: 84, baseType: !61, size: 64, offset: 1088)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !1255, line: 85, baseType: !61, size: 64, offset: 1152)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1254, file: !1255, line: 86, baseType: !61, size: 64, offset: 1216)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1254, file: !1255, line: 87, baseType: !61, size: 64, offset: 1280)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1230, file: !1168, line: 96, baseType: !426, size: 32, offset: 1024)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1173, file: !1168, line: 308, baseType: !1280, size: 4608, align: 512)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1168, line: 289, size: 4608, align: 512, elements: !1281)
!1281 = !{!1282, !1283, !1292}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1280, file: !1168, line: 290, baseType: !1191, size: 4096, align: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1280, file: !1168, line: 291, baseType: !1284, size: 512, offset: 4096)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1168, line: 268, size: 512, elements: !1285)
!1285 = !{!1286, !1287, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1284, file: !1168, line: 269, baseType: !288, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1284, file: !1168, line: 270, baseType: !288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1284, file: !1168, line: 271, baseType: !1289, size: 384, offset: 128)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 384, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 6)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1280, file: !1168, line: 292, baseType: !1293, offset: 4608)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 0)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1173, file: !1168, line: 309, baseType: !1297, size: 32768)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 32768, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 4096)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !260, line: 378, baseType: !1301, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !409, file: !260, line: 384, baseType: !732, size: 192, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !280, file: !260, line: 500, baseType: !131, offset: 6656)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !280, file: !260, line: 501, baseType: !1305, size: 64, offset: 6656)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !260, line: 387, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !280, file: !260, line: 516, baseType: !1308, size: 64, offset: 6720)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !260, line: 516, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !280, file: !260, line: 519, baseType: !247, size: 64, offset: 6784)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !280, file: !260, line: 521, baseType: !1312, size: 64, offset: 6848)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !260, line: 521, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !280, file: !260, line: 545, baseType: !310, size: 32, offset: 6912)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !280, file: !260, line: 548, baseType: !996, size: 8, offset: 6944)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !280, file: !260, line: 550, baseType: !1317, offset: 6952)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1318, line: 142, elements: !86)
!1318 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !280, file: !260, line: 554, baseType: !1320, size: 256, offset: 6976)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1321, line: 102, size: 256, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1320, file: !1321, line: 103, baseType: !318, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1320, file: !1321, line: 104, baseType: !118, size: 128, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1320, file: !1321, line: 105, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1321, line: 21, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !280, file: !260, line: 557, baseType: !426, size: 32, offset: 7232)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !277, file: !260, line: 565, baseType: !1333, offset: 7296)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: -1)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !259, file: !260, line: 333, baseType: !1337, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !249, line: 284, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !249, line: 284, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1338, file: !249, line: 284, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !308, line: 19, baseType: !61)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !259, file: !260, line: 334, baseType: !61, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !259, file: !260, line: 343, baseType: !1344, size: 256, offset: 704)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !260, line: 340, size: 256, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1344, file: !260, line: 341, baseType: !267, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1344, file: !260, line: 342, baseType: !61, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !259, file: !260, line: 351, baseType: !118, size: 128, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !259, file: !260, line: 353, baseType: !1350, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !260, line: 353, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !259, file: !260, line: 356, baseType: !1353, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !260, line: 356, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !259, file: !260, line: 359, baseType: !61, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !259, file: !260, line: 361, baseType: !247, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !259, file: !260, line: 362, baseType: !62, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !259, file: !260, line: 365, baseType: !318, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !259, file: !260, line: 373, baseType: !1361, offset: 1472)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !260, line: 296, elements: !86)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !226, file: !196, line: 90, baseType: !221, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !226, file: !196, line: 91, baseType: !1364, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !186, file: !114, line: 143, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !124}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1372)
!1372 = !{!1373, !1374, !1378, !1382, !1390, !1394}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !16, line: 40, baseType: !15, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1371, file: !16, line: 41, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!996}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1371, file: !16, line: 42, baseType: !1379, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!62}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1371, file: !16, line: 43, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1371, file: !16, line: 44, baseType: !1391, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1386}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1371, file: !16, line: 45, baseType: !1395, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !62}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !186, file: !114, line: 144, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1386, !124}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !186, file: !114, line: 145, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !124, !1406, !1413}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1408, line: 23, baseType: !1409)
!1408 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1408, line: 21, size: 32, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1409, file: !1408, line: 22, baseType: !1412, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !65, line: 32, baseType: !892)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1408, line: 28, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1408, line: 26, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1415, file: !1408, line: 27, baseType: !1418, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !65, line: 33, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !204, line: 50, baseType: !5)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !113, file: !114, line: 70, baseType: !1421, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1423, line: 123, size: 1024, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1566, !1567, !1568, !1569, !1570}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1422, file: !1423, line: 124, baseType: !310, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1422, file: !1423, line: 125, baseType: !310, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1422, file: !1423, line: 135, baseType: !1421, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1422, file: !1423, line: 136, baseType: !80, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1422, file: !1423, line: 138, baseType: !267, size: 192, align: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1422, file: !1423, line: 140, baseType: !1386, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1422, file: !1423, line: 141, baseType: !5, size: 32, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !1423, line: 142, baseType: !1433, size: 256, offset: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !1423, line: 142, size: 256, elements: !1434)
!1434 = !{!1435, !1489, !1493}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1433, file: !1423, line: 143, baseType: !1436, size: 192)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1423, line: 91, size: 192, elements: !1437)
!1437 = !{!1438, !1439, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1436, file: !1423, line: 92, baseType: !61, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1436, file: !1423, line: 94, baseType: !284, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1436, file: !1423, line: 100, baseType: !1441, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1423, line: 180, size: 704, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1459, !1460, !1461, !1487, !1488}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1442, file: !1423, line: 182, baseType: !1421, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1442, file: !1423, line: 183, baseType: !5, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1442, file: !1423, line: 186, baseType: !1447, size: 192, offset: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1448, line: 19, size: 192, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1457, !1458}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1447, file: !1448, line: 20, baseType: !1451, size: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1452, line: 292, size: 128, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1451, file: !1452, line: 293, baseType: !131)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1451, file: !1452, line: 295, baseType: !64, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1451, file: !1452, line: 296, baseType: !62, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1447, file: !1448, line: 21, baseType: !5, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1447, file: !1448, line: 22, baseType: !5, size: 32, offset: 160)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1442, file: !1423, line: 187, baseType: !426, size: 32, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1442, file: !1423, line: 188, baseType: !426, size: 32, offset: 352)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1442, file: !1423, line: 189, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1423, line: 168, size: 320, elements: !1464)
!1464 = !{!1465, !1471, !1475, !1479, !1483}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1463, file: !1423, line: 169, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!74, !1469, !1441}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !249, line: 539, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1463, file: !1423, line: 171, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!74, !1421, !80, !211}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1463, file: !1423, line: 173, baseType: !1476, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!74, !1421}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1463, file: !1423, line: 174, baseType: !1480, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!74, !1421, !1421, !80}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1463, file: !1423, line: 176, baseType: !1484, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!74, !1469, !1421, !1441}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1442, file: !1423, line: 192, baseType: !118, size: 128, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1442, file: !1423, line: 194, baseType: !703, size: 128, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1433, file: !1423, line: 144, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1423, line: 103, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1490, file: !1423, line: 104, baseType: !1421, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1433, file: !1423, line: 145, baseType: !1494, size: 256)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1423, line: 107, size: 256, elements: !1495)
!1495 = !{!1496, !1561, !1564, !1565}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1494, file: !1423, line: 108, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1423, line: 217, size: 768, elements: !1500)
!1500 = !{!1501, !1521, !1525, !1529, !1534, !1538, !1542, !1546, !1547, !1548, !1549, !1557}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1499, file: !1423, line: 222, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!74, !1505}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1423, line: 197, size: 1088, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1506, file: !1423, line: 199, baseType: !1421, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1506, file: !1423, line: 200, baseType: !247, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1506, file: !1423, line: 201, baseType: !1469, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1506, file: !1423, line: 202, baseType: !62, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1506, file: !1423, line: 205, baseType: !387, size: 192, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1506, file: !1423, line: 206, baseType: !387, size: 192, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1506, file: !1423, line: 207, baseType: !74, size: 32, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1506, file: !1423, line: 208, baseType: !118, size: 128, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1506, file: !1423, line: 209, baseType: !171, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1506, file: !1423, line: 211, baseType: !217, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1506, file: !1423, line: 212, baseType: !996, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1506, file: !1423, line: 213, baseType: !996, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1506, file: !1423, line: 214, baseType: !1353, size: 64, offset: 1024)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1499, file: !1423, line: 223, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1505}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1499, file: !1423, line: 236, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!74, !1469, !62}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1499, file: !1423, line: 238, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!62, !1469, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1499, file: !1423, line: 239, baseType: !1535, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!62, !1469, !62, !1533}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1499, file: !1423, line: 240, baseType: !1539, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1469, !62}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1499, file: !1423, line: 242, baseType: !1543, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!202, !1505, !171, !217, !250}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1499, file: !1423, line: 252, baseType: !217, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1499, file: !1423, line: 259, baseType: !996, size: 8, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1499, file: !1423, line: 260, baseType: !1543, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1499, file: !1423, line: 263, baseType: !1550, size: 64, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1553, !1505, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1554, line: 52, baseType: !5)
!1554 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1423, line: 27, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1499, file: !1423, line: 266, baseType: !1558, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!74, !1505, !258}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1494, file: !1423, line: 109, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1423, line: 31, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1494, file: !1423, line: 110, baseType: !250, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1494, file: !1423, line: 111, baseType: !1421, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1422, file: !1423, line: 148, baseType: !62, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1422, file: !1423, line: 154, baseType: !288, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1422, file: !1423, line: 156, baseType: !212, size: 16, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1422, file: !1423, line: 157, baseType: !211, size: 16, offset: 912)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1422, file: !1423, line: 158, baseType: !1571, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1423, line: 32, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !113, file: !114, line: 71, baseType: !1574, size: 32, offset: 448)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1575, line: 19, size: 32, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1574, file: !1575, line: 20, baseType: !432, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !113, file: !114, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !113, file: !114, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !113, file: !114, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !113, file: !114, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !113, file: !114, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !110, file: !28, line: 463, baseType: !109, size: 64, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !110, file: !28, line: 465, baseType: !1585, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !110, file: !28, line: 467, baseType: !80, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !28, line: 468, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1599, !1604, !1608}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1591, file: !28, line: 88, baseType: !80, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1591, file: !28, line: 89, baseType: !223, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1591, file: !28, line: 90, baseType: !1596, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!74, !109, !166}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1591, file: !28, line: 91, baseType: !1600, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!171, !109, !1603, !1406, !1413}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1591, file: !28, line: 93, baseType: !1605, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !109}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1591, file: !28, line: 95, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1612)
!1612 = !{!1613, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1611, file: !35, line: 279, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!74, !109}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1611, file: !35, line: 280, baseType: !1605, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1611, file: !35, line: 281, baseType: !1614, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1611, file: !35, line: 282, baseType: !1614, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1611, file: !35, line: 283, baseType: !1614, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1611, file: !35, line: 284, baseType: !1614, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1611, file: !35, line: 285, baseType: !1614, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1611, file: !35, line: 286, baseType: !1614, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1611, file: !35, line: 287, baseType: !1614, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1611, file: !35, line: 288, baseType: !1614, size: 64, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1611, file: !35, line: 289, baseType: !1614, size: 64, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1611, file: !35, line: 290, baseType: !1614, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1611, file: !35, line: 291, baseType: !1614, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1611, file: !35, line: 292, baseType: !1614, size: 64, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1611, file: !35, line: 293, baseType: !1614, size: 64, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1611, file: !35, line: 294, baseType: !1614, size: 64, offset: 960)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1611, file: !35, line: 295, baseType: !1614, size: 64, offset: 1024)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1611, file: !35, line: 296, baseType: !1614, size: 64, offset: 1088)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1611, file: !35, line: 297, baseType: !1614, size: 64, offset: 1152)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1611, file: !35, line: 298, baseType: !1614, size: 64, offset: 1216)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1611, file: !35, line: 299, baseType: !1614, size: 64, offset: 1280)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1611, file: !35, line: 300, baseType: !1614, size: 64, offset: 1344)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1611, file: !35, line: 301, baseType: !1614, size: 64, offset: 1408)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !110, file: !28, line: 470, baseType: !1640, size: 64, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1642, line: 82, size: 1408, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649, !1650, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1729, !1732, !1735}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1641, file: !1642, line: 83, baseType: !80, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1641, file: !1642, line: 84, baseType: !80, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1641, file: !1642, line: 85, baseType: !109, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1641, file: !1642, line: 86, baseType: !223, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1641, file: !1642, line: 87, baseType: !223, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1641, file: !1642, line: 88, baseType: !223, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1641, file: !1642, line: 90, baseType: !1651, size: 64, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!74, !109, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1663, !1664, !1665, !1666, !1680, !1693, !1694, !1695, !1696, !1697, !1705, !1706, !1707, !1708, !1709, !1710}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1655, file: !22, line: 96, baseType: !80, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1655, file: !22, line: 97, baseType: !1640, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1655, file: !22, line: 99, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1662, line: 76, flags: DIFlagFwdDecl)
!1662 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1655, file: !22, line: 100, baseType: !80, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1655, file: !22, line: 102, baseType: !996, size: 8, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1655, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1655, file: !22, line: 105, baseType: !1667, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1670, line: 262, size: 1600, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !{!1672, !1674, !1675, !1679}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1669, file: !1670, line: 263, baseType: !1673, size: 256)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1669, file: !1670, line: 264, baseType: !1673, size: 256, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1669, file: !1670, line: 265, baseType: !1676, size: 1024, offset: 512)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 1024, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1669, file: !1670, line: 266, baseType: !1386, size: 64, offset: 1536)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1655, file: !22, line: 106, baseType: !1681, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1670, line: 210, size: 256, elements: !1684)
!1684 = !{!1685, !1689, !1691, !1692}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1683, file: !1670, line: 211, baseType: !1686, size: 72)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 72, elements: !1687)
!1687 = !{!1688}
!1688 = !DISubrange(count: 9)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1683, file: !1670, line: 212, baseType: !1690, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1670, line: 14, baseType: !61)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1683, file: !1670, line: 213, baseType: !427, size: 32, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1683, file: !1670, line: 214, baseType: !427, size: 32, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1655, file: !22, line: 108, baseType: !1614, size: 64, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1655, file: !22, line: 109, baseType: !1605, size: 64, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1655, file: !22, line: 110, baseType: !1614, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1655, file: !22, line: 111, baseType: !1605, size: 64, offset: 640)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1655, file: !22, line: 112, baseType: !1698, size: 64, offset: 704)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!74, !109, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1702, file: !35, line: 51, baseType: !74, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1655, file: !22, line: 113, baseType: !1614, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1655, file: !22, line: 114, baseType: !223, size: 64, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1655, file: !22, line: 115, baseType: !223, size: 64, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1655, file: !22, line: 117, baseType: !1609, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1655, file: !22, line: 118, baseType: !1605, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1655, file: !22, line: 120, baseType: !1711, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1641, file: !1642, line: 91, baseType: !1596, size: 64, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1641, file: !1642, line: 92, baseType: !1614, size: 64, offset: 512)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1641, file: !1642, line: 93, baseType: !1605, size: 64, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1641, file: !1642, line: 94, baseType: !1614, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1641, file: !1642, line: 95, baseType: !1605, size: 64, offset: 704)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1641, file: !1642, line: 97, baseType: !1614, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1641, file: !1642, line: 98, baseType: !1614, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1641, file: !1642, line: 100, baseType: !1698, size: 64, offset: 896)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1641, file: !1642, line: 101, baseType: !1614, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1641, file: !1642, line: 103, baseType: !1614, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1641, file: !1642, line: 105, baseType: !1614, size: 64, offset: 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1641, file: !1642, line: 107, baseType: !1609, size: 64, offset: 1152)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1641, file: !1642, line: 109, baseType: !1726, size: 64, offset: 1216)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1642, line: 109, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1641, file: !1642, line: 111, baseType: !1730, size: 64, offset: 1280)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1642, line: 111, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1641, file: !1642, line: 112, baseType: !1733, offset: 1344)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1734, line: 187, elements: !86)
!1734 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1641, file: !1642, line: 114, baseType: !996, size: 8, offset: 1344)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !110, file: !28, line: 471, baseType: !1654, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !110, file: !28, line: 473, baseType: !62, size: 64, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !110, file: !28, line: 475, baseType: !62, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !110, file: !28, line: 480, baseType: !387, size: 192, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !110, file: !28, line: 484, baseType: !1741, size: 576, offset: 1216)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1741, file: !28, line: 362, baseType: !118, size: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1741, file: !28, line: 363, baseType: !118, size: 128, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1741, file: !28, line: 364, baseType: !118, size: 128, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1741, file: !28, line: 365, baseType: !118, size: 128, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1741, file: !28, line: 366, baseType: !996, size: 8, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1741, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !110, file: !28, line: 485, baseType: !1750, size: 2304, offset: 1792)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1847, !1851}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1750, file: !35, line: 566, baseType: !1701, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1750, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1750, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1750, file: !35, line: 569, baseType: !996, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1750, file: !35, line: 570, baseType: !996, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1750, file: !35, line: 571, baseType: !996, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1750, file: !35, line: 572, baseType: !996, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1750, file: !35, line: 573, baseType: !996, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1750, file: !35, line: 574, baseType: !996, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1750, file: !35, line: 575, baseType: !996, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1750, file: !35, line: 576, baseType: !996, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1750, file: !35, line: 577, baseType: !426, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1750, file: !35, line: 578, baseType: !131, offset: 96)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1750, file: !35, line: 580, baseType: !118, size: 128, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1750, file: !35, line: 581, baseType: !732, size: 192, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1750, file: !35, line: 582, baseType: !1768, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1770, line: 43, size: 1472, elements: !1771)
!1770 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1779, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1769, file: !1770, line: 44, baseType: !80, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1769, file: !1770, line: 45, baseType: !74, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1769, file: !1770, line: 46, baseType: !118, size: 128, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1769, file: !1770, line: 47, baseType: !131, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1769, file: !1770, line: 48, baseType: !1777, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1769, file: !1770, line: 49, baseType: !1780, size: 320, offset: 320)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1781, line: 11, size: 320, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1784, !1785, !1790}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1780, file: !1781, line: 16, baseType: !696, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1780, file: !1781, line: 17, baseType: !61, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1780, file: !1781, line: 18, baseType: !1786, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !1789}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1780, file: !1781, line: 19, baseType: !426, size: 32, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1769, file: !1770, line: 50, baseType: !61, size: 64, offset: 640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1769, file: !1770, line: 51, baseType: !502, size: 64, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1769, file: !1770, line: 52, baseType: !502, size: 64, offset: 768)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1769, file: !1770, line: 53, baseType: !502, size: 64, offset: 832)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1769, file: !1770, line: 54, baseType: !502, size: 64, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1769, file: !1770, line: 55, baseType: !502, size: 64, offset: 960)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1769, file: !1770, line: 56, baseType: !61, size: 64, offset: 1024)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1769, file: !1770, line: 57, baseType: !61, size: 64, offset: 1088)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1769, file: !1770, line: 58, baseType: !61, size: 64, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1769, file: !1770, line: 59, baseType: !61, size: 64, offset: 1216)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1769, file: !1770, line: 60, baseType: !61, size: 64, offset: 1280)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1769, file: !1770, line: 61, baseType: !109, size: 64, offset: 1344)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1769, file: !1770, line: 62, baseType: !996, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1769, file: !1770, line: 63, baseType: !996, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1750, file: !35, line: 583, baseType: !996, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1750, file: !35, line: 584, baseType: !996, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1750, file: !35, line: 585, baseType: !996, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1750, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1750, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1750, file: !35, line: 592, baseType: !494, size: 512, offset: 576)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1750, file: !35, line: 593, baseType: !288, size: 64, offset: 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1750, file: !35, line: 594, baseType: !1320, size: 256, offset: 1152)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1750, file: !35, line: 595, baseType: !703, size: 128, offset: 1408)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1750, file: !35, line: 596, baseType: !1777, size: 64, offset: 1536)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1750, file: !35, line: 597, baseType: !310, size: 32, offset: 1600)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1750, file: !35, line: 598, baseType: !310, size: 32, offset: 1632)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1750, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1750, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1750, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1750, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1750, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1750, file: !35, line: 604, baseType: !996, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1750, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1750, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1750, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1750, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1750, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1750, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1750, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1750, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1750, file: !35, line: 613, baseType: !74, size: 32, offset: 1792)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1750, file: !35, line: 614, baseType: !74, size: 32, offset: 1824)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1750, file: !35, line: 615, baseType: !288, size: 64, offset: 1856)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1750, file: !35, line: 616, baseType: !288, size: 64, offset: 1920)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1750, file: !35, line: 617, baseType: !288, size: 64, offset: 1984)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1750, file: !35, line: 618, baseType: !288, size: 64, offset: 2048)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1750, file: !35, line: 620, baseType: !1838, size: 64, offset: 2112)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !35, line: 537, baseType: !131)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1839, file: !35, line: 538, baseType: !5, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1839, file: !35, line: 540, baseType: !118, size: 128, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1839, file: !35, line: 543, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1750, file: !35, line: 621, baseType: !1848, size: 64, offset: 2176)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !109, !656}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1750, file: !35, line: 622, baseType: !1852, size: 64, offset: 2240)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !110, file: !28, line: 486, baseType: !1855, size: 64, offset: 4096)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1864, !1865, !1866}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1856, file: !35, line: 643, baseType: !1611, size: 1472)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1856, file: !35, line: 644, baseType: !1614, size: 64, offset: 1472)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1856, file: !35, line: 645, baseType: !1861, size: 64, offset: 1536)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !109, !996}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1856, file: !35, line: 646, baseType: !1614, size: 64, offset: 1600)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1856, file: !35, line: 647, baseType: !1605, size: 64, offset: 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1856, file: !35, line: 648, baseType: !1605, size: 64, offset: 1728)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !110, file: !28, line: 493, baseType: !1868, size: 64, offset: 4160)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !110, file: !28, line: 499, baseType: !118, size: 128, offset: 4224)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !110, file: !28, line: 502, baseType: !1872, size: 64, offset: 4352)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !110, file: !28, line: 504, baseType: !1876, size: 64, offset: 4416)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !110, file: !28, line: 505, baseType: !288, size: 64, offset: 4480)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !110, file: !28, line: 510, baseType: !288, size: 64, offset: 4544)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !110, file: !28, line: 511, baseType: !1880, size: 64, offset: 4608)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !110, file: !28, line: 513, baseType: !1884, size: 64, offset: 4672)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1885, file: !28, line: 293, baseType: !5, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1885, file: !28, line: 294, baseType: !61, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !110, file: !28, line: 515, baseType: !118, size: 128, offset: 4736)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !110, file: !28, line: 526, baseType: !1891, offset: 4864)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1892, line: 5, elements: !86)
!1892 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !110, file: !28, line: 528, baseType: !1894, size: 64, offset: 4864)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1896, line: 51, size: 1344, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1901, !1902, !1992, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1895, file: !1896, line: 52, baseType: !80, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1895, file: !1896, line: 53, baseType: !1900, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1896, line: 28, baseType: !426)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1895, file: !1896, line: 54, baseType: !80, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1895, file: !1896, line: 55, baseType: !1903, size: 192, offset: 192)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1904, line: 17, size: 192, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !{!1906, !1908, !1991}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1903, file: !1904, line: 18, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1903, file: !1904, line: 19, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1904, line: 110, size: 1152, elements: !1912)
!1912 = !{!1913, !1917, !1921, !1927, !1933, !1937, !1941, !1946, !1950, !1951, !1955, !1959, !1963, !1974, !1975, !1976, !1977, !1987}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1911, file: !1904, line: 111, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1907, !1907}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1911, file: !1904, line: 112, baseType: !1918, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !1907}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1911, file: !1904, line: 113, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!996, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1911, file: !1904, line: 114, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1386, !1925, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1911, file: !1904, line: 116, baseType: !1934, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!996, !1925, !80}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1911, file: !1904, line: 118, baseType: !1938, size: 64, offset: 320)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!74, !1925, !80, !5, !62, !217}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1911, file: !1904, line: 123, baseType: !1942, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!74, !1925, !80, !1945, !217}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1911, file: !1904, line: 126, baseType: !1947, size: 64, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!80, !1925}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1911, file: !1904, line: 127, baseType: !1947, size: 64, offset: 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1911, file: !1904, line: 128, baseType: !1952, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1907, !1925}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1911, file: !1904, line: 130, baseType: !1956, size: 64, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1907, !1925, !1907}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1911, file: !1904, line: 133, baseType: !1960, size: 64, offset: 704)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1907, !1925, !80}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1911, file: !1904, line: 135, baseType: !1964, size: 64, offset: 768)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!74, !1925, !80, !80, !5, !5, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1904, line: 43, size: 640, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1968, file: !1904, line: 44, baseType: !1907, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1968, file: !1904, line: 45, baseType: !5, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1968, file: !1904, line: 46, baseType: !1973, size: 512, offset: 128)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 512, elements: !532)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1911, file: !1904, line: 140, baseType: !1956, size: 64, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1911, file: !1904, line: 143, baseType: !1952, size: 64, offset: 896)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1911, file: !1904, line: 145, baseType: !1914, size: 64, offset: 960)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1911, file: !1904, line: 146, baseType: !1978, size: 64, offset: 1024)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!74, !1925, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1904, line: 29, size: 128, elements: !1983)
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1982, file: !1904, line: 30, baseType: !5, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1982, file: !1904, line: 31, baseType: !5, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1982, file: !1904, line: 32, baseType: !1925, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1911, file: !1904, line: 148, baseType: !1988, size: 64, offset: 1088)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!74, !1925, !109}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1903, file: !1904, line: 20, baseType: !109, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1895, file: !1896, line: 57, baseType: !1993, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1896, line: 31, size: 704, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1994, file: !1896, line: 32, baseType: !171, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1994, file: !1896, line: 33, baseType: !74, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1994, file: !1896, line: 34, baseType: !62, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1994, file: !1896, line: 35, baseType: !1993, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1994, file: !1896, line: 43, baseType: !238, size: 448, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1895, file: !1896, line: 58, baseType: !1993, size: 64, offset: 448)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1895, file: !1896, line: 59, baseType: !1894, size: 64, offset: 512)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1895, file: !1896, line: 60, baseType: !1894, size: 64, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1895, file: !1896, line: 61, baseType: !1894, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1895, file: !1896, line: 63, baseType: !113, size: 512, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1895, file: !1896, line: 65, baseType: !61, size: 64, offset: 1216)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1895, file: !1896, line: 66, baseType: !62, size: 64, offset: 1280)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !110, file: !28, line: 529, baseType: !1907, size: 64, offset: 4928)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !110, file: !28, line: 534, baseType: !2010, size: 32, offset: 4992)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !65, line: 16, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !65, line: 13, baseType: !426)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !110, file: !28, line: 535, baseType: !426, size: 32, offset: 5024)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !110, file: !28, line: 537, baseType: !131, offset: 5056)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !110, file: !28, line: 538, baseType: !118, size: 128, offset: 5056)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !110, file: !28, line: 540, baseType: !2016, size: 64, offset: 5184)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2018, line: 54, size: 960, elements: !2019)
!2018 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2030, !2034, !2035, !2036, !2037, !2041, !2045, !2046}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2017, file: !2018, line: 55, baseType: !80, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2017, file: !2018, line: 56, baseType: !1660, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2017, file: !2018, line: 58, baseType: !223, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2017, file: !2018, line: 59, baseType: !223, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2017, file: !2018, line: 60, baseType: !124, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2017, file: !2018, line: 62, baseType: !1596, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2017, file: !2018, line: 63, baseType: !2027, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!171, !109, !1603}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2017, file: !2018, line: 65, baseType: !2031, size: 64, offset: 448)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !2016}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2017, file: !2018, line: 66, baseType: !1605, size: 64, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2017, file: !2018, line: 68, baseType: !1614, size: 64, offset: 576)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2017, file: !2018, line: 70, baseType: !1369, size: 64, offset: 640)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2017, file: !2018, line: 71, baseType: !2038, size: 64, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!1386, !109}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2017, file: !2018, line: 73, baseType: !2042, size: 64, offset: 768)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !109, !1406, !1413}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2017, file: !2018, line: 75, baseType: !1609, size: 64, offset: 832)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2017, file: !2018, line: 77, baseType: !1730, size: 64, offset: 896)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !110, file: !28, line: 541, baseType: !223, size: 64, offset: 5248)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !110, file: !28, line: 543, baseType: !1605, size: 64, offset: 5312)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !110, file: !28, line: 544, baseType: !2050, size: 64, offset: 5376)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !110, file: !28, line: 545, baseType: !2053, size: 64, offset: 5440)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !110, file: !28, line: 547, baseType: !996, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !110, file: !28, line: 548, baseType: !996, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !110, file: !28, line: 549, baseType: !996, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !110, file: !28, line: 550, baseType: !996, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2059 = !DILocalVariable(name: "dev", arg: 1, scope: !106, file: !1, line: 114, type: !109)
!2060 = !DILocation(line: 114, column: 46, scope: !106)
!2061 = !DILocalVariable(name: "num_clks", arg: 2, scope: !106, file: !1, line: 114, type: !74)
!2062 = !DILocation(line: 114, column: 55, scope: !106)
!2063 = !DILocalVariable(name: "clks", arg: 3, scope: !106, file: !1, line: 115, type: !75)
!2064 = !DILocation(line: 115, column: 32, scope: !106)
!2065 = !DILocation(line: 117, column: 24, scope: !106)
!2066 = !DILocation(line: 117, column: 29, scope: !106)
!2067 = !DILocation(line: 117, column: 39, scope: !106)
!2068 = !DILocation(line: 117, column: 9, scope: !106)
!2069 = !DILocation(line: 117, column: 2, scope: !106)
!2070 = distinct !DISubprogram(name: "__clk_bulk_get", scope: !1, file: !1, line: 81, type: !2071, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!74, !109, !74, !75, !996}
!2073 = !DILocalVariable(name: "dev", arg: 1, scope: !2070, file: !1, line: 81, type: !109)
!2074 = !DILocation(line: 81, column: 42, scope: !2070)
!2075 = !DILocalVariable(name: "num_clks", arg: 2, scope: !2070, file: !1, line: 81, type: !74)
!2076 = !DILocation(line: 81, column: 51, scope: !2070)
!2077 = !DILocalVariable(name: "clks", arg: 3, scope: !2070, file: !1, line: 82, type: !75)
!2078 = !DILocation(line: 82, column: 28, scope: !2070)
!2079 = !DILocalVariable(name: "optional", arg: 4, scope: !2070, file: !1, line: 82, type: !996)
!2080 = !DILocation(line: 82, column: 39, scope: !2070)
!2081 = !DILocalVariable(name: "ret", scope: !2070, file: !1, line: 84, type: !74)
!2082 = !DILocation(line: 84, column: 6, scope: !2070)
!2083 = !DILocalVariable(name: "i", scope: !2070, file: !1, line: 85, type: !74)
!2084 = !DILocation(line: 85, column: 6, scope: !2070)
!2085 = !DILocation(line: 87, column: 9, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 87, column: 2)
!2087 = !DILocation(line: 87, column: 7, scope: !2086)
!2088 = !DILocation(line: 87, column: 14, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2086, file: !1, line: 87, column: 2)
!2090 = !DILocation(line: 87, column: 18, scope: !2089)
!2091 = !DILocation(line: 87, column: 16, scope: !2089)
!2092 = !DILocation(line: 87, column: 2, scope: !2086)
!2093 = !DILocation(line: 88, column: 3, scope: !2089)
!2094 = !DILocation(line: 88, column: 8, scope: !2089)
!2095 = !DILocation(line: 88, column: 11, scope: !2089)
!2096 = !DILocation(line: 88, column: 15, scope: !2089)
!2097 = !DILocation(line: 87, column: 29, scope: !2089)
!2098 = !DILocation(line: 87, column: 2, scope: !2089)
!2099 = distinct !{!2099, !2092, !2100}
!2100 = !DILocation(line: 88, column: 17, scope: !2086)
!2101 = !DILocation(line: 90, column: 9, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 90, column: 2)
!2103 = !DILocation(line: 90, column: 7, scope: !2102)
!2104 = !DILocation(line: 90, column: 14, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 90, column: 2)
!2106 = !DILocation(line: 90, column: 18, scope: !2105)
!2107 = !DILocation(line: 90, column: 16, scope: !2105)
!2108 = !DILocation(line: 90, column: 2, scope: !2102)
!2109 = !DILocation(line: 91, column: 25, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 90, column: 33)
!2111 = !DILocation(line: 91, column: 30, scope: !2110)
!2112 = !DILocation(line: 91, column: 35, scope: !2110)
!2113 = !DILocation(line: 91, column: 38, scope: !2110)
!2114 = !DILocation(line: 91, column: 17, scope: !2110)
!2115 = !DILocation(line: 91, column: 3, scope: !2110)
!2116 = !DILocation(line: 91, column: 8, scope: !2110)
!2117 = !DILocation(line: 91, column: 11, scope: !2110)
!2118 = !DILocation(line: 91, column: 15, scope: !2110)
!2119 = !DILocation(line: 92, column: 14, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 92, column: 7)
!2121 = !DILocation(line: 92, column: 19, scope: !2120)
!2122 = !DILocation(line: 92, column: 22, scope: !2120)
!2123 = !DILocation(line: 92, column: 7, scope: !2120)
!2124 = !DILocation(line: 92, column: 7, scope: !2110)
!2125 = !DILocation(line: 93, column: 18, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 92, column: 28)
!2127 = !DILocation(line: 93, column: 23, scope: !2126)
!2128 = !DILocation(line: 93, column: 26, scope: !2126)
!2129 = !DILocation(line: 93, column: 10, scope: !2126)
!2130 = !DILocation(line: 93, column: 8, scope: !2126)
!2131 = !DILocation(line: 94, column: 4, scope: !2126)
!2132 = !DILocation(line: 94, column: 9, scope: !2126)
!2133 = !DILocation(line: 94, column: 12, scope: !2126)
!2134 = !DILocation(line: 94, column: 16, scope: !2126)
!2135 = !DILocation(line: 96, column: 8, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2126, file: !1, line: 96, column: 8)
!2137 = !DILocation(line: 96, column: 12, scope: !2136)
!2138 = !DILocation(line: 96, column: 23, scope: !2136)
!2139 = !DILocation(line: 96, column: 26, scope: !2136)
!2140 = !DILocation(line: 96, column: 8, scope: !2126)
!2141 = !DILocation(line: 97, column: 5, scope: !2136)
!2142 = !DILocation(line: 99, column: 8, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2126, file: !1, line: 99, column: 8)
!2144 = !DILocation(line: 99, column: 12, scope: !2143)
!2145 = !DILocation(line: 99, column: 8, scope: !2126)
!2146 = !DILocation(line: 100, column: 5, scope: !2143)
!2147 = !DILocation(line: 102, column: 4, scope: !2126)
!2148 = !DILocation(line: 104, column: 2, scope: !2110)
!2149 = !DILocation(line: 90, column: 29, scope: !2105)
!2150 = !DILocation(line: 90, column: 2, scope: !2105)
!2151 = distinct !{!2151, !2108, !2152}
!2152 = !DILocation(line: 104, column: 2, scope: !2102)
!2153 = !DILocation(line: 106, column: 2, scope: !2070)
!2154 = !DILabel(scope: !2070, name: "err", file: !1, line: 108)
!2155 = !DILocation(line: 108, column: 1, scope: !2070)
!2156 = !DILocation(line: 109, column: 15, scope: !2070)
!2157 = !DILocation(line: 109, column: 18, scope: !2070)
!2158 = !DILocation(line: 109, column: 2, scope: !2070)
!2159 = !DILocation(line: 111, column: 9, scope: !2070)
!2160 = !DILocation(line: 111, column: 2, scope: !2070)
!2161 = !DILocation(line: 112, column: 1, scope: !2070)
!2162 = distinct !DISubprogram(name: "clk_bulk_get_optional", scope: !1, file: !1, line: 121, type: !107, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2163 = !DILocalVariable(name: "dev", arg: 1, scope: !2162, file: !1, line: 121, type: !109)
!2164 = !DILocation(line: 121, column: 55, scope: !2162)
!2165 = !DILocalVariable(name: "num_clks", arg: 2, scope: !2162, file: !1, line: 121, type: !74)
!2166 = !DILocation(line: 121, column: 64, scope: !2162)
!2167 = !DILocalVariable(name: "clks", arg: 3, scope: !2162, file: !1, line: 122, type: !75)
!2168 = !DILocation(line: 122, column: 34, scope: !2162)
!2169 = !DILocation(line: 124, column: 24, scope: !2162)
!2170 = !DILocation(line: 124, column: 29, scope: !2162)
!2171 = !DILocation(line: 124, column: 39, scope: !2162)
!2172 = !DILocation(line: 124, column: 9, scope: !2162)
!2173 = !DILocation(line: 124, column: 2, scope: !2162)
!2174 = distinct !DISubprogram(name: "clk_bulk_put_all", scope: !1, file: !1, line: 128, type: !72, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2175 = !DILocalVariable(name: "num_clks", arg: 1, scope: !2174, file: !1, line: 128, type: !74)
!2176 = !DILocation(line: 128, column: 27, scope: !2174)
!2177 = !DILocalVariable(name: "clks", arg: 2, scope: !2174, file: !1, line: 128, type: !75)
!2178 = !DILocation(line: 128, column: 59, scope: !2174)
!2179 = !DILocation(line: 130, column: 21, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !1, line: 130, column: 6)
!2181 = !DILocation(line: 130, column: 6, scope: !2180)
!2182 = !DILocation(line: 130, column: 6, scope: !2174)
!2183 = !DILocation(line: 131, column: 3, scope: !2180)
!2184 = !DILocation(line: 133, column: 15, scope: !2174)
!2185 = !DILocation(line: 133, column: 25, scope: !2174)
!2186 = !DILocation(line: 133, column: 2, scope: !2174)
!2187 = !DILocation(line: 135, column: 8, scope: !2174)
!2188 = !DILocation(line: 135, column: 2, scope: !2174)
!2189 = !DILocation(line: 136, column: 1, scope: !2174)
!2190 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2191, file: !2191, line: 39, type: !2192, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2191 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!996, !1386}
!2194 = !DILocalVariable(name: "ptr", arg: 1, scope: !2190, file: !2191, line: 39, type: !1386)
!2195 = !DILocation(line: 39, column: 68, scope: !2190)
!2196 = !DILocation(line: 41, column: 9, scope: !2190)
!2197 = !DILocation(line: 41, column: 24, scope: !2190)
!2198 = !DILocation(line: 41, column: 27, scope: !2190)
!2199 = !DILocation(line: 41, column: 2, scope: !2190)
!2200 = distinct !DISubprogram(name: "clk_bulk_get_all", scope: !1, file: !1, line: 139, type: !2201, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!74, !109, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2204 = !DILocalVariable(name: "dev", arg: 1, scope: !2200, file: !1, line: 139, type: !109)
!2205 = !DILocation(line: 139, column: 50, scope: !2200)
!2206 = !DILocalVariable(name: "clks", arg: 2, scope: !2200, file: !1, line: 140, type: !2203)
!2207 = !DILocation(line: 140, column: 30, scope: !2200)
!2208 = !DILocalVariable(name: "np", scope: !2200, file: !1, line: 142, type: !1894)
!2209 = !DILocation(line: 142, column: 22, scope: !2200)
!2210 = !DILocation(line: 142, column: 39, scope: !2200)
!2211 = !DILocation(line: 142, column: 27, scope: !2200)
!2212 = !DILocation(line: 144, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2200, file: !1, line: 144, column: 6)
!2214 = !DILocation(line: 144, column: 6, scope: !2200)
!2215 = !DILocation(line: 145, column: 3, scope: !2213)
!2216 = !DILocation(line: 147, column: 29, scope: !2200)
!2217 = !DILocation(line: 147, column: 33, scope: !2200)
!2218 = !DILocation(line: 147, column: 9, scope: !2200)
!2219 = !DILocation(line: 147, column: 2, scope: !2200)
!2220 = !DILocation(line: 148, column: 1, scope: !2200)
!2221 = distinct !DISubprogram(name: "dev_of_node", scope: !28, file: !28, line: 754, type: !2222, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!1894, !109}
!2224 = !DILocalVariable(name: "dev", arg: 1, scope: !2221, file: !28, line: 754, type: !109)
!2225 = !DILocation(line: 754, column: 62, scope: !2221)
!2226 = !DILocation(line: 756, column: 33, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2221, file: !28, line: 756, column: 6)
!2228 = !DILocation(line: 756, column: 6, scope: !2221)
!2229 = !DILocation(line: 757, column: 3, scope: !2227)
!2230 = !DILocation(line: 758, column: 9, scope: !2221)
!2231 = !DILocation(line: 758, column: 14, scope: !2221)
!2232 = !DILocation(line: 758, column: 2, scope: !2221)
!2233 = !DILocation(line: 759, column: 1, scope: !2221)
!2234 = distinct !DISubprogram(name: "of_clk_bulk_get_all", scope: !1, file: !1, line: 46, type: !2235, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!74, !1894, !2203}
!2237 = !DILocalVariable(name: "np", arg: 1, scope: !2234, file: !1, line: 46, type: !1894)
!2238 = !DILocation(line: 46, column: 65, scope: !2234)
!2239 = !DILocalVariable(name: "clks", arg: 2, scope: !2234, file: !1, line: 47, type: !2203)
!2240 = !DILocation(line: 47, column: 33, scope: !2234)
!2241 = !DILocalVariable(name: "clk_bulk", scope: !2234, file: !1, line: 49, type: !75)
!2242 = !DILocation(line: 49, column: 24, scope: !2234)
!2243 = !DILocalVariable(name: "num_clks", scope: !2234, file: !1, line: 50, type: !74)
!2244 = !DILocation(line: 50, column: 6, scope: !2234)
!2245 = !DILocalVariable(name: "ret", scope: !2234, file: !1, line: 51, type: !74)
!2246 = !DILocation(line: 51, column: 6, scope: !2234)
!2247 = !DILocation(line: 53, column: 37, scope: !2234)
!2248 = !DILocation(line: 53, column: 13, scope: !2234)
!2249 = !DILocation(line: 53, column: 11, scope: !2234)
!2250 = !DILocation(line: 54, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 54, column: 6)
!2252 = !DILocation(line: 54, column: 6, scope: !2234)
!2253 = !DILocation(line: 55, column: 3, scope: !2251)
!2254 = !DILocation(line: 57, column: 27, scope: !2234)
!2255 = !DILocation(line: 57, column: 13, scope: !2234)
!2256 = !DILocation(line: 57, column: 11, scope: !2234)
!2257 = !DILocation(line: 58, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 58, column: 6)
!2259 = !DILocation(line: 58, column: 6, scope: !2234)
!2260 = !DILocation(line: 59, column: 3, scope: !2258)
!2261 = !DILocation(line: 61, column: 24, scope: !2234)
!2262 = !DILocation(line: 61, column: 28, scope: !2234)
!2263 = !DILocation(line: 61, column: 38, scope: !2234)
!2264 = !DILocation(line: 61, column: 8, scope: !2234)
!2265 = !DILocation(line: 61, column: 6, scope: !2234)
!2266 = !DILocation(line: 62, column: 6, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 62, column: 6)
!2268 = !DILocation(line: 62, column: 6, scope: !2234)
!2269 = !DILocation(line: 63, column: 9, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2267, file: !1, line: 62, column: 11)
!2271 = !DILocation(line: 63, column: 3, scope: !2270)
!2272 = !DILocation(line: 64, column: 10, scope: !2270)
!2273 = !DILocation(line: 64, column: 3, scope: !2270)
!2274 = !DILocation(line: 67, column: 10, scope: !2234)
!2275 = !DILocation(line: 67, column: 3, scope: !2234)
!2276 = !DILocation(line: 67, column: 8, scope: !2234)
!2277 = !DILocation(line: 69, column: 9, scope: !2234)
!2278 = !DILocation(line: 69, column: 2, scope: !2234)
!2279 = !DILocation(line: 70, column: 1, scope: !2234)
!2280 = distinct !DISubprogram(name: "clk_bulk_unprepare", scope: !1, file: !1, line: 161, type: !2281, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !74, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2285 = !DILocalVariable(name: "num_clks", arg: 1, scope: !2280, file: !1, line: 161, type: !74)
!2286 = !DILocation(line: 161, column: 29, scope: !2280)
!2287 = !DILocalVariable(name: "clks", arg: 2, scope: !2280, file: !1, line: 161, type: !2283)
!2288 = !DILocation(line: 161, column: 67, scope: !2280)
!2289 = !DILocation(line: 163, column: 2, scope: !2280)
!2290 = !DILocation(line: 163, column: 9, scope: !2280)
!2291 = !DILocation(line: 163, column: 20, scope: !2280)
!2292 = !DILocation(line: 164, column: 17, scope: !2280)
!2293 = !DILocation(line: 164, column: 22, scope: !2280)
!2294 = !DILocation(line: 164, column: 32, scope: !2280)
!2295 = !DILocation(line: 164, column: 3, scope: !2280)
!2296 = distinct !{!2296, !2289, !2297}
!2297 = !DILocation(line: 164, column: 35, scope: !2280)
!2298 = !DILocation(line: 165, column: 1, scope: !2280)
!2299 = distinct !DISubprogram(name: "clk_bulk_prepare", scope: !1, file: !1, line: 176, type: !2300, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!74, !74, !2283}
!2302 = !DILocalVariable(name: "num_clks", arg: 1, scope: !2299, file: !1, line: 176, type: !74)
!2303 = !DILocation(line: 176, column: 39, scope: !2299)
!2304 = !DILocalVariable(name: "clks", arg: 2, scope: !2299, file: !1, line: 177, type: !2283)
!2305 = !DILocation(line: 177, column: 35, scope: !2299)
!2306 = !DILocalVariable(name: "ret", scope: !2299, file: !1, line: 179, type: !74)
!2307 = !DILocation(line: 179, column: 6, scope: !2299)
!2308 = !DILocalVariable(name: "i", scope: !2299, file: !1, line: 180, type: !74)
!2309 = !DILocation(line: 180, column: 6, scope: !2299)
!2310 = !DILocation(line: 182, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 182, column: 2)
!2312 = !DILocation(line: 182, column: 7, scope: !2311)
!2313 = !DILocation(line: 182, column: 14, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !1, line: 182, column: 2)
!2315 = !DILocation(line: 182, column: 18, scope: !2314)
!2316 = !DILocation(line: 182, column: 16, scope: !2314)
!2317 = !DILocation(line: 182, column: 2, scope: !2311)
!2318 = !DILocation(line: 183, column: 21, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 182, column: 33)
!2320 = !DILocation(line: 183, column: 26, scope: !2319)
!2321 = !DILocation(line: 183, column: 29, scope: !2319)
!2322 = !DILocation(line: 183, column: 9, scope: !2319)
!2323 = !DILocation(line: 183, column: 7, scope: !2319)
!2324 = !DILocation(line: 184, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2319, file: !1, line: 184, column: 7)
!2326 = !DILocation(line: 184, column: 7, scope: !2319)
!2327 = !DILocation(line: 185, column: 4, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !1, line: 184, column: 12)
!2329 = !DILocation(line: 187, column: 4, scope: !2328)
!2330 = !DILocation(line: 189, column: 2, scope: !2319)
!2331 = !DILocation(line: 182, column: 29, scope: !2314)
!2332 = !DILocation(line: 182, column: 2, scope: !2314)
!2333 = distinct !{!2333, !2317, !2334}
!2334 = !DILocation(line: 189, column: 2, scope: !2311)
!2335 = !DILocation(line: 191, column: 2, scope: !2299)
!2336 = !DILabel(scope: !2299, name: "err", file: !1, line: 193)
!2337 = !DILocation(line: 193, column: 1, scope: !2299)
!2338 = !DILocation(line: 194, column: 21, scope: !2299)
!2339 = !DILocation(line: 194, column: 24, scope: !2299)
!2340 = !DILocation(line: 194, column: 2, scope: !2299)
!2341 = !DILocation(line: 196, column: 10, scope: !2299)
!2342 = !DILocation(line: 196, column: 2, scope: !2299)
!2343 = !DILocation(line: 197, column: 1, scope: !2299)
!2344 = distinct !DISubprogram(name: "clk_bulk_disable", scope: !1, file: !1, line: 211, type: !2281, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2345 = !DILocalVariable(name: "num_clks", arg: 1, scope: !2344, file: !1, line: 211, type: !74)
!2346 = !DILocation(line: 211, column: 27, scope: !2344)
!2347 = !DILocalVariable(name: "clks", arg: 2, scope: !2344, file: !1, line: 211, type: !2283)
!2348 = !DILocation(line: 211, column: 65, scope: !2344)
!2349 = !DILocation(line: 214, column: 2, scope: !2344)
!2350 = !DILocation(line: 214, column: 9, scope: !2344)
!2351 = !DILocation(line: 214, column: 20, scope: !2344)
!2352 = !DILocation(line: 215, column: 15, scope: !2344)
!2353 = !DILocation(line: 215, column: 20, scope: !2344)
!2354 = !DILocation(line: 215, column: 30, scope: !2344)
!2355 = !DILocation(line: 215, column: 3, scope: !2344)
!2356 = distinct !{!2356, !2349, !2357}
!2357 = !DILocation(line: 215, column: 33, scope: !2344)
!2358 = !DILocation(line: 216, column: 1, scope: !2344)
!2359 = distinct !DISubprogram(name: "clk_bulk_enable", scope: !1, file: !1, line: 227, type: !2300, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2360 = !DILocalVariable(name: "num_clks", arg: 1, scope: !2359, file: !1, line: 227, type: !74)
!2361 = !DILocation(line: 227, column: 38, scope: !2359)
!2362 = !DILocalVariable(name: "clks", arg: 2, scope: !2359, file: !1, line: 227, type: !2283)
!2363 = !DILocation(line: 227, column: 76, scope: !2359)
!2364 = !DILocalVariable(name: "ret", scope: !2359, file: !1, line: 229, type: !74)
!2365 = !DILocation(line: 229, column: 6, scope: !2359)
!2366 = !DILocalVariable(name: "i", scope: !2359, file: !1, line: 230, type: !74)
!2367 = !DILocation(line: 230, column: 6, scope: !2359)
!2368 = !DILocation(line: 232, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2359, file: !1, line: 232, column: 2)
!2370 = !DILocation(line: 232, column: 7, scope: !2369)
!2371 = !DILocation(line: 232, column: 14, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2369, file: !1, line: 232, column: 2)
!2373 = !DILocation(line: 232, column: 18, scope: !2372)
!2374 = !DILocation(line: 232, column: 16, scope: !2372)
!2375 = !DILocation(line: 232, column: 2, scope: !2369)
!2376 = !DILocation(line: 233, column: 20, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !1, line: 232, column: 33)
!2378 = !DILocation(line: 233, column: 25, scope: !2377)
!2379 = !DILocation(line: 233, column: 28, scope: !2377)
!2380 = !DILocation(line: 233, column: 9, scope: !2377)
!2381 = !DILocation(line: 233, column: 7, scope: !2377)
!2382 = !DILocation(line: 234, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !1, line: 234, column: 7)
!2384 = !DILocation(line: 234, column: 7, scope: !2377)
!2385 = !DILocation(line: 235, column: 4, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 234, column: 12)
!2387 = !DILocation(line: 237, column: 4, scope: !2386)
!2388 = !DILocation(line: 239, column: 2, scope: !2377)
!2389 = !DILocation(line: 232, column: 29, scope: !2372)
!2390 = !DILocation(line: 232, column: 2, scope: !2372)
!2391 = distinct !{!2391, !2375, !2392}
!2392 = !DILocation(line: 239, column: 2, scope: !2369)
!2393 = !DILocation(line: 241, column: 2, scope: !2359)
!2394 = !DILabel(scope: !2359, name: "err", file: !1, line: 243)
!2395 = !DILocation(line: 243, column: 1, scope: !2359)
!2396 = !DILocation(line: 244, column: 19, scope: !2359)
!2397 = !DILocation(line: 244, column: 22, scope: !2359)
!2398 = !DILocation(line: 244, column: 2, scope: !2359)
!2399 = !DILocation(line: 246, column: 10, scope: !2359)
!2400 = !DILocation(line: 246, column: 2, scope: !2359)
!2401 = !DILocation(line: 247, column: 1, scope: !2359)
!2402 = distinct !DISubprogram(name: "IS_ERR", scope: !2191, file: !2191, line: 34, type: !2192, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2403 = !DILocalVariable(name: "ptr", arg: 1, scope: !2402, file: !2191, line: 34, type: !1386)
!2404 = !DILocation(line: 34, column: 60, scope: !2402)
!2405 = !DILocation(line: 36, column: 9, scope: !2402)
!2406 = !DILocation(line: 36, column: 2, scope: !2402)
!2407 = distinct !DISubprogram(name: "PTR_ERR", scope: !2191, file: !2191, line: 29, type: !2408, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!63, !1386}
!2410 = !DILocalVariable(name: "ptr", arg: 1, scope: !2407, file: !2191, line: 29, type: !1386)
!2411 = !DILocation(line: 29, column: 61, scope: !2407)
!2412 = !DILocation(line: 31, column: 16, scope: !2407)
!2413 = !DILocation(line: 31, column: 9, scope: !2407)
!2414 = !DILocation(line: 31, column: 2, scope: !2407)
!2415 = distinct !DISubprogram(name: "kmalloc_array", scope: !54, file: !54, line: 584, type: !2416, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!62, !217, !217, !64}
!2418 = !DILocalVariable(name: "s", arg: 1, scope: !2419, file: !54, line: 445, type: !1046)
!2419 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !54, file: !54, line: 445, type: !2420, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!62, !1046, !64, !217}
!2422 = !DILocation(line: 445, column: 72, scope: !2419, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 552, column: 10, scope: !2424, inlinedAt: !2429)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !54, line: 540, column: 34)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !54, line: 540, column: 6)
!2426 = distinct !DISubprogram(name: "kmalloc", scope: !54, file: !54, line: 538, type: !2427, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!62, !217, !64}
!2429 = distinct !DILocation(line: 591, column: 10, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2415, file: !54, line: 590, column: 6)
!2431 = !DILocalVariable(name: "flags", arg: 2, scope: !2419, file: !54, line: 446, type: !64)
!2432 = !DILocation(line: 446, column: 9, scope: !2419, inlinedAt: !2423)
!2433 = !DILocalVariable(name: "size", arg: 3, scope: !2419, file: !54, line: 446, type: !217)
!2434 = !DILocation(line: 446, column: 23, scope: !2419, inlinedAt: !2423)
!2435 = !DILocalVariable(name: "ret", scope: !2419, file: !54, line: 448, type: !62)
!2436 = !DILocation(line: 448, column: 8, scope: !2419, inlinedAt: !2423)
!2437 = !DILocalVariable(name: "flags", arg: 1, scope: !2438, file: !54, line: 318, type: !64)
!2438 = distinct !DISubprogram(name: "kmalloc_type", scope: !54, file: !54, line: 318, type: !2439, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!53, !64}
!2441 = !DILocation(line: 318, column: 67, scope: !2438, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 553, column: 20, scope: !2424, inlinedAt: !2429)
!2443 = !DILocalVariable(name: "size", arg: 1, scope: !2444, file: !54, line: 346, type: !217)
!2444 = distinct !DISubprogram(name: "kmalloc_index", scope: !54, file: !54, line: 346, type: !2445, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!5, !217}
!2447 = !DILocation(line: 346, column: 58, scope: !2444, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 547, column: 11, scope: !2424, inlinedAt: !2429)
!2449 = !DILocalVariable(name: "size", arg: 1, scope: !2450, file: !54, line: 472, type: !217)
!2450 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !54, file: !54, line: 472, type: !2451, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!62, !217, !64, !5}
!2453 = !DILocation(line: 472, column: 28, scope: !2450, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 481, column: 9, scope: !2455, inlinedAt: !2456)
!2455 = distinct !DISubprogram(name: "kmalloc_large", scope: !54, file: !54, line: 478, type: !2427, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2456 = distinct !DILocation(line: 545, column: 11, scope: !2457, inlinedAt: !2429)
!2457 = distinct !DILexicalBlock(scope: !2424, file: !54, line: 544, column: 7)
!2458 = !DILocalVariable(name: "flags", arg: 2, scope: !2450, file: !54, line: 472, type: !64)
!2459 = !DILocation(line: 472, column: 40, scope: !2450, inlinedAt: !2454)
!2460 = !DILocalVariable(name: "order", arg: 3, scope: !2450, file: !54, line: 472, type: !5)
!2461 = !DILocation(line: 472, column: 60, scope: !2450, inlinedAt: !2454)
!2462 = !DILocalVariable(name: "size", arg: 1, scope: !2455, file: !54, line: 478, type: !217)
!2463 = !DILocation(line: 478, column: 51, scope: !2455, inlinedAt: !2456)
!2464 = !DILocalVariable(name: "flags", arg: 2, scope: !2455, file: !54, line: 478, type: !64)
!2465 = !DILocation(line: 478, column: 63, scope: !2455, inlinedAt: !2456)
!2466 = !DILocalVariable(name: "order", scope: !2455, file: !54, line: 480, type: !5)
!2467 = !DILocation(line: 480, column: 15, scope: !2455, inlinedAt: !2456)
!2468 = !DILocalVariable(name: "size", arg: 1, scope: !2426, file: !54, line: 538, type: !217)
!2469 = !DILocation(line: 538, column: 45, scope: !2426, inlinedAt: !2429)
!2470 = !DILocalVariable(name: "flags", arg: 2, scope: !2426, file: !54, line: 538, type: !64)
!2471 = !DILocation(line: 538, column: 57, scope: !2426, inlinedAt: !2429)
!2472 = !DILocalVariable(name: "index", scope: !2424, file: !54, line: 542, type: !5)
!2473 = !DILocation(line: 542, column: 16, scope: !2424, inlinedAt: !2429)
!2474 = !DILocalVariable(name: "n", arg: 1, scope: !2415, file: !54, line: 584, type: !217)
!2475 = !DILocation(line: 584, column: 42, scope: !2415)
!2476 = !DILocalVariable(name: "size", arg: 2, scope: !2415, file: !54, line: 584, type: !217)
!2477 = !DILocation(line: 584, column: 52, scope: !2415)
!2478 = !DILocalVariable(name: "flags", arg: 3, scope: !2415, file: !54, line: 584, type: !64)
!2479 = !DILocation(line: 584, column: 64, scope: !2415)
!2480 = !DILocalVariable(name: "bytes", scope: !2415, file: !54, line: 586, type: !217)
!2481 = !DILocation(line: 586, column: 9, scope: !2415)
!2482 = !DILocalVariable(name: "__a", scope: !2483, file: !54, line: 588, type: !217)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !54, line: 588, column: 6)
!2484 = distinct !DILexicalBlock(scope: !2415, file: !54, line: 588, column: 6)
!2485 = !DILocation(line: 588, column: 6, scope: !2483)
!2486 = !DILocalVariable(name: "__b", scope: !2483, file: !54, line: 588, type: !217)
!2487 = !DILocalVariable(name: "__d", scope: !2483, file: !54, line: 588, type: !2488)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!2489 = !DILocation(line: 588, column: 6, scope: !2484)
!2490 = !DILocation(line: 588, column: 6, scope: !2415)
!2491 = !DILocation(line: 589, column: 3, scope: !2484)
!2492 = !DILocation(line: 590, column: 27, scope: !2430)
!2493 = !DILocation(line: 590, column: 6, scope: !2430)
!2494 = !DILocation(line: 590, column: 30, scope: !2430)
!2495 = !DILocation(line: 590, column: 54, scope: !2430)
!2496 = !DILocation(line: 590, column: 33, scope: !2430)
!2497 = !DILocation(line: 590, column: 6, scope: !2415)
!2498 = !DILocation(line: 591, column: 18, scope: !2430)
!2499 = !DILocation(line: 591, column: 25, scope: !2430)
!2500 = !DILocation(line: 540, column: 27, scope: !2425, inlinedAt: !2429)
!2501 = !DILocation(line: 540, column: 6, scope: !2425, inlinedAt: !2429)
!2502 = !DILocation(line: 540, column: 6, scope: !2426, inlinedAt: !2429)
!2503 = !DILocation(line: 544, column: 7, scope: !2457, inlinedAt: !2429)
!2504 = !DILocation(line: 544, column: 12, scope: !2457, inlinedAt: !2429)
!2505 = !DILocation(line: 544, column: 7, scope: !2424, inlinedAt: !2429)
!2506 = !DILocation(line: 545, column: 25, scope: !2457, inlinedAt: !2429)
!2507 = !DILocation(line: 545, column: 31, scope: !2457, inlinedAt: !2429)
!2508 = !DILocation(line: 480, column: 33, scope: !2455, inlinedAt: !2456)
!2509 = !DILocation(line: 480, column: 23, scope: !2455, inlinedAt: !2456)
!2510 = !DILocation(line: 481, column: 29, scope: !2455, inlinedAt: !2456)
!2511 = !DILocation(line: 481, column: 35, scope: !2455, inlinedAt: !2456)
!2512 = !DILocation(line: 481, column: 42, scope: !2455, inlinedAt: !2456)
!2513 = !DILocation(line: 474, column: 23, scope: !2450, inlinedAt: !2454)
!2514 = !DILocation(line: 474, column: 29, scope: !2450, inlinedAt: !2454)
!2515 = !DILocation(line: 474, column: 36, scope: !2450, inlinedAt: !2454)
!2516 = !DILocation(line: 474, column: 9, scope: !2450, inlinedAt: !2454)
!2517 = !DILocation(line: 545, column: 4, scope: !2457, inlinedAt: !2429)
!2518 = !DILocation(line: 547, column: 25, scope: !2424, inlinedAt: !2429)
!2519 = !DILocation(line: 348, column: 7, scope: !2520, inlinedAt: !2448)
!2520 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 348, column: 6)
!2521 = !DILocation(line: 348, column: 6, scope: !2444, inlinedAt: !2448)
!2522 = !DILocation(line: 349, column: 3, scope: !2520, inlinedAt: !2448)
!2523 = !DILocation(line: 351, column: 6, scope: !2524, inlinedAt: !2448)
!2524 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 351, column: 6)
!2525 = !DILocation(line: 351, column: 11, scope: !2524, inlinedAt: !2448)
!2526 = !DILocation(line: 351, column: 6, scope: !2444, inlinedAt: !2448)
!2527 = !DILocation(line: 352, column: 3, scope: !2524, inlinedAt: !2448)
!2528 = !DILocation(line: 354, column: 32, scope: !2529, inlinedAt: !2448)
!2529 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 354, column: 6)
!2530 = !DILocation(line: 354, column: 37, scope: !2529, inlinedAt: !2448)
!2531 = !DILocation(line: 354, column: 42, scope: !2529, inlinedAt: !2448)
!2532 = !DILocation(line: 354, column: 45, scope: !2529, inlinedAt: !2448)
!2533 = !DILocation(line: 354, column: 50, scope: !2529, inlinedAt: !2448)
!2534 = !DILocation(line: 354, column: 6, scope: !2444, inlinedAt: !2448)
!2535 = !DILocation(line: 355, column: 3, scope: !2529, inlinedAt: !2448)
!2536 = !DILocation(line: 356, column: 32, scope: !2537, inlinedAt: !2448)
!2537 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 356, column: 6)
!2538 = !DILocation(line: 356, column: 37, scope: !2537, inlinedAt: !2448)
!2539 = !DILocation(line: 356, column: 43, scope: !2537, inlinedAt: !2448)
!2540 = !DILocation(line: 356, column: 46, scope: !2537, inlinedAt: !2448)
!2541 = !DILocation(line: 356, column: 51, scope: !2537, inlinedAt: !2448)
!2542 = !DILocation(line: 356, column: 6, scope: !2444, inlinedAt: !2448)
!2543 = !DILocation(line: 357, column: 3, scope: !2537, inlinedAt: !2448)
!2544 = !DILocation(line: 358, column: 6, scope: !2545, inlinedAt: !2448)
!2545 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 358, column: 6)
!2546 = !DILocation(line: 358, column: 11, scope: !2545, inlinedAt: !2448)
!2547 = !DILocation(line: 358, column: 6, scope: !2444, inlinedAt: !2448)
!2548 = !DILocation(line: 358, column: 26, scope: !2545, inlinedAt: !2448)
!2549 = !DILocation(line: 359, column: 6, scope: !2550, inlinedAt: !2448)
!2550 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 359, column: 6)
!2551 = !DILocation(line: 359, column: 11, scope: !2550, inlinedAt: !2448)
!2552 = !DILocation(line: 359, column: 6, scope: !2444, inlinedAt: !2448)
!2553 = !DILocation(line: 359, column: 26, scope: !2550, inlinedAt: !2448)
!2554 = !DILocation(line: 360, column: 6, scope: !2555, inlinedAt: !2448)
!2555 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 360, column: 6)
!2556 = !DILocation(line: 360, column: 11, scope: !2555, inlinedAt: !2448)
!2557 = !DILocation(line: 360, column: 6, scope: !2444, inlinedAt: !2448)
!2558 = !DILocation(line: 360, column: 26, scope: !2555, inlinedAt: !2448)
!2559 = !DILocation(line: 361, column: 6, scope: !2560, inlinedAt: !2448)
!2560 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 361, column: 6)
!2561 = !DILocation(line: 361, column: 11, scope: !2560, inlinedAt: !2448)
!2562 = !DILocation(line: 361, column: 6, scope: !2444, inlinedAt: !2448)
!2563 = !DILocation(line: 361, column: 26, scope: !2560, inlinedAt: !2448)
!2564 = !DILocation(line: 362, column: 6, scope: !2565, inlinedAt: !2448)
!2565 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 362, column: 6)
!2566 = !DILocation(line: 362, column: 11, scope: !2565, inlinedAt: !2448)
!2567 = !DILocation(line: 362, column: 6, scope: !2444, inlinedAt: !2448)
!2568 = !DILocation(line: 362, column: 26, scope: !2565, inlinedAt: !2448)
!2569 = !DILocation(line: 363, column: 6, scope: !2570, inlinedAt: !2448)
!2570 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 363, column: 6)
!2571 = !DILocation(line: 363, column: 11, scope: !2570, inlinedAt: !2448)
!2572 = !DILocation(line: 363, column: 6, scope: !2444, inlinedAt: !2448)
!2573 = !DILocation(line: 363, column: 26, scope: !2570, inlinedAt: !2448)
!2574 = !DILocation(line: 364, column: 6, scope: !2575, inlinedAt: !2448)
!2575 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 364, column: 6)
!2576 = !DILocation(line: 364, column: 11, scope: !2575, inlinedAt: !2448)
!2577 = !DILocation(line: 364, column: 6, scope: !2444, inlinedAt: !2448)
!2578 = !DILocation(line: 364, column: 26, scope: !2575, inlinedAt: !2448)
!2579 = !DILocation(line: 365, column: 6, scope: !2580, inlinedAt: !2448)
!2580 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 365, column: 6)
!2581 = !DILocation(line: 365, column: 11, scope: !2580, inlinedAt: !2448)
!2582 = !DILocation(line: 365, column: 6, scope: !2444, inlinedAt: !2448)
!2583 = !DILocation(line: 365, column: 26, scope: !2580, inlinedAt: !2448)
!2584 = !DILocation(line: 366, column: 6, scope: !2585, inlinedAt: !2448)
!2585 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 366, column: 6)
!2586 = !DILocation(line: 366, column: 11, scope: !2585, inlinedAt: !2448)
!2587 = !DILocation(line: 366, column: 6, scope: !2444, inlinedAt: !2448)
!2588 = !DILocation(line: 366, column: 26, scope: !2585, inlinedAt: !2448)
!2589 = !DILocation(line: 367, column: 6, scope: !2590, inlinedAt: !2448)
!2590 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 367, column: 6)
!2591 = !DILocation(line: 367, column: 11, scope: !2590, inlinedAt: !2448)
!2592 = !DILocation(line: 367, column: 6, scope: !2444, inlinedAt: !2448)
!2593 = !DILocation(line: 367, column: 26, scope: !2590, inlinedAt: !2448)
!2594 = !DILocation(line: 368, column: 6, scope: !2595, inlinedAt: !2448)
!2595 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 368, column: 6)
!2596 = !DILocation(line: 368, column: 11, scope: !2595, inlinedAt: !2448)
!2597 = !DILocation(line: 368, column: 6, scope: !2444, inlinedAt: !2448)
!2598 = !DILocation(line: 368, column: 26, scope: !2595, inlinedAt: !2448)
!2599 = !DILocation(line: 369, column: 6, scope: !2600, inlinedAt: !2448)
!2600 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 369, column: 6)
!2601 = !DILocation(line: 369, column: 11, scope: !2600, inlinedAt: !2448)
!2602 = !DILocation(line: 369, column: 6, scope: !2444, inlinedAt: !2448)
!2603 = !DILocation(line: 369, column: 26, scope: !2600, inlinedAt: !2448)
!2604 = !DILocation(line: 370, column: 6, scope: !2605, inlinedAt: !2448)
!2605 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 370, column: 6)
!2606 = !DILocation(line: 370, column: 11, scope: !2605, inlinedAt: !2448)
!2607 = !DILocation(line: 370, column: 6, scope: !2444, inlinedAt: !2448)
!2608 = !DILocation(line: 370, column: 26, scope: !2605, inlinedAt: !2448)
!2609 = !DILocation(line: 371, column: 6, scope: !2610, inlinedAt: !2448)
!2610 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 371, column: 6)
!2611 = !DILocation(line: 371, column: 11, scope: !2610, inlinedAt: !2448)
!2612 = !DILocation(line: 371, column: 6, scope: !2444, inlinedAt: !2448)
!2613 = !DILocation(line: 371, column: 26, scope: !2610, inlinedAt: !2448)
!2614 = !DILocation(line: 372, column: 6, scope: !2615, inlinedAt: !2448)
!2615 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 372, column: 6)
!2616 = !DILocation(line: 372, column: 11, scope: !2615, inlinedAt: !2448)
!2617 = !DILocation(line: 372, column: 6, scope: !2444, inlinedAt: !2448)
!2618 = !DILocation(line: 372, column: 26, scope: !2615, inlinedAt: !2448)
!2619 = !DILocation(line: 373, column: 6, scope: !2620, inlinedAt: !2448)
!2620 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 373, column: 6)
!2621 = !DILocation(line: 373, column: 11, scope: !2620, inlinedAt: !2448)
!2622 = !DILocation(line: 373, column: 6, scope: !2444, inlinedAt: !2448)
!2623 = !DILocation(line: 373, column: 26, scope: !2620, inlinedAt: !2448)
!2624 = !DILocation(line: 374, column: 6, scope: !2625, inlinedAt: !2448)
!2625 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 374, column: 6)
!2626 = !DILocation(line: 374, column: 11, scope: !2625, inlinedAt: !2448)
!2627 = !DILocation(line: 374, column: 6, scope: !2444, inlinedAt: !2448)
!2628 = !DILocation(line: 374, column: 26, scope: !2625, inlinedAt: !2448)
!2629 = !DILocation(line: 375, column: 6, scope: !2630, inlinedAt: !2448)
!2630 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 375, column: 6)
!2631 = !DILocation(line: 375, column: 11, scope: !2630, inlinedAt: !2448)
!2632 = !DILocation(line: 375, column: 6, scope: !2444, inlinedAt: !2448)
!2633 = !DILocation(line: 375, column: 27, scope: !2630, inlinedAt: !2448)
!2634 = !DILocation(line: 376, column: 6, scope: !2635, inlinedAt: !2448)
!2635 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 376, column: 6)
!2636 = !DILocation(line: 376, column: 11, scope: !2635, inlinedAt: !2448)
!2637 = !DILocation(line: 376, column: 6, scope: !2444, inlinedAt: !2448)
!2638 = !DILocation(line: 376, column: 32, scope: !2635, inlinedAt: !2448)
!2639 = !DILocation(line: 377, column: 6, scope: !2640, inlinedAt: !2448)
!2640 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 377, column: 6)
!2641 = !DILocation(line: 377, column: 11, scope: !2640, inlinedAt: !2448)
!2642 = !DILocation(line: 377, column: 6, scope: !2444, inlinedAt: !2448)
!2643 = !DILocation(line: 377, column: 32, scope: !2640, inlinedAt: !2448)
!2644 = !DILocation(line: 378, column: 6, scope: !2645, inlinedAt: !2448)
!2645 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 378, column: 6)
!2646 = !DILocation(line: 378, column: 11, scope: !2645, inlinedAt: !2448)
!2647 = !DILocation(line: 378, column: 6, scope: !2444, inlinedAt: !2448)
!2648 = !DILocation(line: 378, column: 32, scope: !2645, inlinedAt: !2448)
!2649 = !DILocation(line: 379, column: 6, scope: !2650, inlinedAt: !2448)
!2650 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 379, column: 6)
!2651 = !DILocation(line: 379, column: 11, scope: !2650, inlinedAt: !2448)
!2652 = !DILocation(line: 379, column: 6, scope: !2444, inlinedAt: !2448)
!2653 = !DILocation(line: 379, column: 33, scope: !2650, inlinedAt: !2448)
!2654 = !DILocation(line: 380, column: 6, scope: !2655, inlinedAt: !2448)
!2655 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 380, column: 6)
!2656 = !DILocation(line: 380, column: 11, scope: !2655, inlinedAt: !2448)
!2657 = !DILocation(line: 380, column: 6, scope: !2444, inlinedAt: !2448)
!2658 = !DILocation(line: 380, column: 33, scope: !2655, inlinedAt: !2448)
!2659 = !DILocation(line: 381, column: 6, scope: !2660, inlinedAt: !2448)
!2660 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 381, column: 6)
!2661 = !DILocation(line: 381, column: 11, scope: !2660, inlinedAt: !2448)
!2662 = !DILocation(line: 381, column: 6, scope: !2444, inlinedAt: !2448)
!2663 = !DILocation(line: 381, column: 33, scope: !2660, inlinedAt: !2448)
!2664 = !DILocation(line: 382, column: 2, scope: !2665, inlinedAt: !2448)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !54, line: 382, column: 2)
!2666 = distinct !DILexicalBlock(scope: !2444, file: !54, line: 382, column: 2)
!2667 = !{i32 -2143539456, i32 -2143539427, i32 -2143539381, i32 -2143539323, i32 -2143539269, i32 -2143539215, i32 -2143539160, i32 -2143539129}
!2668 = !DILocation(line: 382, column: 2, scope: !2669, inlinedAt: !2448)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !54, line: 382, column: 2)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !54, line: 382, column: 2)
!2671 = !{i32 -2143538686, i32 -2143538679, i32 -2143538625, i32 -2143538594, i32 -2143538564}
!2672 = !DILocation(line: 382, column: 2, scope: !2670, inlinedAt: !2448)
!2673 = !DILocation(line: 386, column: 1, scope: !2444, inlinedAt: !2448)
!2674 = !DILocation(line: 547, column: 9, scope: !2424, inlinedAt: !2429)
!2675 = !DILocation(line: 549, column: 8, scope: !2676, inlinedAt: !2429)
!2676 = distinct !DILexicalBlock(scope: !2424, file: !54, line: 549, column: 7)
!2677 = !DILocation(line: 549, column: 7, scope: !2424, inlinedAt: !2429)
!2678 = !DILocation(line: 550, column: 4, scope: !2676, inlinedAt: !2429)
!2679 = !DILocation(line: 553, column: 33, scope: !2424, inlinedAt: !2429)
!2680 = !DILocation(line: 325, column: 6, scope: !2681, inlinedAt: !2442)
!2681 = distinct !DILexicalBlock(scope: !2438, file: !54, line: 325, column: 6)
!2682 = !DILocation(line: 325, column: 6, scope: !2438, inlinedAt: !2442)
!2683 = !DILocation(line: 326, column: 3, scope: !2681, inlinedAt: !2442)
!2684 = !DILocation(line: 332, column: 9, scope: !2438, inlinedAt: !2442)
!2685 = !DILocation(line: 332, column: 15, scope: !2438, inlinedAt: !2442)
!2686 = !DILocation(line: 332, column: 2, scope: !2438, inlinedAt: !2442)
!2687 = !DILocation(line: 336, column: 1, scope: !2438, inlinedAt: !2442)
!2688 = !DILocation(line: 553, column: 5, scope: !2424, inlinedAt: !2429)
!2689 = !DILocation(line: 553, column: 41, scope: !2424, inlinedAt: !2429)
!2690 = !DILocation(line: 554, column: 5, scope: !2424, inlinedAt: !2429)
!2691 = !DILocation(line: 554, column: 12, scope: !2424, inlinedAt: !2429)
!2692 = !DILocation(line: 448, column: 31, scope: !2419, inlinedAt: !2423)
!2693 = !DILocation(line: 448, column: 34, scope: !2419, inlinedAt: !2423)
!2694 = !DILocation(line: 448, column: 14, scope: !2419, inlinedAt: !2423)
!2695 = !DILocation(line: 450, column: 22, scope: !2419, inlinedAt: !2423)
!2696 = !DILocation(line: 450, column: 25, scope: !2419, inlinedAt: !2423)
!2697 = !DILocation(line: 450, column: 30, scope: !2419, inlinedAt: !2423)
!2698 = !DILocation(line: 450, column: 36, scope: !2419, inlinedAt: !2423)
!2699 = !DILocation(line: 450, column: 8, scope: !2419, inlinedAt: !2423)
!2700 = !DILocation(line: 450, column: 6, scope: !2419, inlinedAt: !2423)
!2701 = !DILocation(line: 451, column: 9, scope: !2419, inlinedAt: !2423)
!2702 = !DILocation(line: 552, column: 3, scope: !2424, inlinedAt: !2429)
!2703 = !DILocation(line: 557, column: 19, scope: !2426, inlinedAt: !2429)
!2704 = !DILocation(line: 557, column: 25, scope: !2426, inlinedAt: !2429)
!2705 = !DILocation(line: 557, column: 9, scope: !2426, inlinedAt: !2429)
!2706 = !DILocation(line: 557, column: 2, scope: !2426, inlinedAt: !2429)
!2707 = !DILocation(line: 558, column: 1, scope: !2426, inlinedAt: !2429)
!2708 = !DILocation(line: 591, column: 3, scope: !2430)
!2709 = !DILocation(line: 592, column: 19, scope: !2415)
!2710 = !DILocation(line: 592, column: 26, scope: !2415)
!2711 = !DILocation(line: 592, column: 9, scope: !2415)
!2712 = !DILocation(line: 592, column: 2, scope: !2415)
!2713 = !DILocation(line: 593, column: 1, scope: !2415)
!2714 = distinct !DISubprogram(name: "of_clk_bulk_get", scope: !1, file: !1, line: 15, type: !2715, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!74, !1894, !74, !75}
!2717 = !DILocalVariable(name: "np", arg: 1, scope: !2714, file: !1, line: 15, type: !1894)
!2718 = !DILocation(line: 15, column: 61, scope: !2714)
!2719 = !DILocalVariable(name: "num_clks", arg: 2, scope: !2714, file: !1, line: 15, type: !74)
!2720 = !DILocation(line: 15, column: 69, scope: !2714)
!2721 = !DILocalVariable(name: "clks", arg: 3, scope: !2714, file: !1, line: 16, type: !75)
!2722 = !DILocation(line: 16, column: 28, scope: !2714)
!2723 = !DILocalVariable(name: "ret", scope: !2714, file: !1, line: 18, type: !74)
!2724 = !DILocation(line: 18, column: 6, scope: !2714)
!2725 = !DILocalVariable(name: "i", scope: !2714, file: !1, line: 19, type: !74)
!2726 = !DILocation(line: 19, column: 6, scope: !2714)
!2727 = !DILocation(line: 21, column: 9, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 21, column: 2)
!2729 = !DILocation(line: 21, column: 7, scope: !2728)
!2730 = !DILocation(line: 21, column: 14, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !1, line: 21, column: 2)
!2732 = !DILocation(line: 21, column: 18, scope: !2731)
!2733 = !DILocation(line: 21, column: 16, scope: !2731)
!2734 = !DILocation(line: 21, column: 2, scope: !2728)
!2735 = !DILocation(line: 22, column: 3, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2731, file: !1, line: 21, column: 33)
!2737 = !DILocation(line: 22, column: 8, scope: !2736)
!2738 = !DILocation(line: 22, column: 11, scope: !2736)
!2739 = !DILocation(line: 22, column: 14, scope: !2736)
!2740 = !DILocation(line: 23, column: 3, scope: !2736)
!2741 = !DILocation(line: 23, column: 8, scope: !2736)
!2742 = !DILocation(line: 23, column: 11, scope: !2736)
!2743 = !DILocation(line: 23, column: 15, scope: !2736)
!2744 = !DILocation(line: 24, column: 2, scope: !2736)
!2745 = !DILocation(line: 21, column: 29, scope: !2731)
!2746 = !DILocation(line: 21, column: 2, scope: !2731)
!2747 = distinct !{!2747, !2734, !2748}
!2748 = !DILocation(line: 24, column: 2, scope: !2728)
!2749 = !DILocation(line: 26, column: 9, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 26, column: 2)
!2751 = !DILocation(line: 26, column: 7, scope: !2750)
!2752 = !DILocation(line: 26, column: 14, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2750, file: !1, line: 26, column: 2)
!2754 = !DILocation(line: 26, column: 18, scope: !2753)
!2755 = !DILocation(line: 26, column: 16, scope: !2753)
!2756 = !DILocation(line: 26, column: 2, scope: !2750)
!2757 = !DILocation(line: 27, column: 33, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2753, file: !1, line: 26, column: 33)
!2759 = !DILocation(line: 27, column: 52, scope: !2758)
!2760 = !DILocation(line: 27, column: 56, scope: !2758)
!2761 = !DILocation(line: 27, column: 61, scope: !2758)
!2762 = !DILocation(line: 27, column: 64, scope: !2758)
!2763 = !DILocation(line: 27, column: 3, scope: !2758)
!2764 = !DILocation(line: 28, column: 28, scope: !2758)
!2765 = !DILocation(line: 28, column: 32, scope: !2758)
!2766 = !DILocation(line: 28, column: 17, scope: !2758)
!2767 = !DILocation(line: 28, column: 3, scope: !2758)
!2768 = !DILocation(line: 28, column: 8, scope: !2758)
!2769 = !DILocation(line: 28, column: 11, scope: !2758)
!2770 = !DILocation(line: 28, column: 15, scope: !2758)
!2771 = !DILocation(line: 29, column: 14, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2758, file: !1, line: 29, column: 7)
!2773 = !DILocation(line: 29, column: 19, scope: !2772)
!2774 = !DILocation(line: 29, column: 22, scope: !2772)
!2775 = !DILocation(line: 29, column: 7, scope: !2772)
!2776 = !DILocation(line: 29, column: 7, scope: !2758)
!2777 = !DILocation(line: 30, column: 18, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2772, file: !1, line: 29, column: 28)
!2779 = !DILocation(line: 30, column: 23, scope: !2778)
!2780 = !DILocation(line: 30, column: 26, scope: !2778)
!2781 = !DILocation(line: 30, column: 10, scope: !2778)
!2782 = !DILocation(line: 30, column: 8, scope: !2778)
!2783 = !DILocation(line: 31, column: 4, scope: !2778)
!2784 = !DILocation(line: 33, column: 4, scope: !2778)
!2785 = !DILocation(line: 33, column: 9, scope: !2778)
!2786 = !DILocation(line: 33, column: 12, scope: !2778)
!2787 = !DILocation(line: 33, column: 16, scope: !2778)
!2788 = !DILocation(line: 34, column: 4, scope: !2778)
!2789 = !DILocation(line: 36, column: 2, scope: !2758)
!2790 = !DILocation(line: 26, column: 29, scope: !2753)
!2791 = !DILocation(line: 26, column: 2, scope: !2753)
!2792 = distinct !{!2792, !2756, !2793}
!2793 = !DILocation(line: 36, column: 2, scope: !2750)
!2794 = !DILocation(line: 38, column: 2, scope: !2714)
!2795 = !DILabel(scope: !2714, name: "err", file: !1, line: 40)
!2796 = !DILocation(line: 40, column: 1, scope: !2714)
!2797 = !DILocation(line: 41, column: 15, scope: !2714)
!2798 = !DILocation(line: 41, column: 18, scope: !2714)
!2799 = !DILocation(line: 41, column: 2, scope: !2714)
!2800 = !DILocation(line: 43, column: 9, scope: !2714)
!2801 = !DILocation(line: 43, column: 2, scope: !2714)
!2802 = !DILocation(line: 44, column: 1, scope: !2714)
!2803 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2804, file: !2804, line: 52, type: !2805, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2804 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!996, !996}
!2807 = !DILocalVariable(name: "overflow", arg: 1, scope: !2803, file: !2804, line: 52, type: !996)
!2808 = !DILocation(line: 52, column: 60, scope: !2803)
!2809 = !DILocation(line: 54, column: 9, scope: !2803)
!2810 = !DILocation(line: 54, column: 2, scope: !2803)
!2811 = distinct !DISubprogram(name: "get_order", scope: !2812, file: !2812, line: 29, type: !2813, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2812 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!74, !61}
!2815 = !DILocalVariable(name: "x", arg: 1, scope: !2816, file: !2817, line: 366, type: !290)
!2816 = distinct !DISubprogram(name: "fls64", scope: !2817, file: !2817, line: 366, type: !2818, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2817 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!74, !290}
!2820 = !DILocation(line: 366, column: 40, scope: !2816, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 46, column: 9, scope: !2811)
!2822 = !DILocalVariable(name: "bitpos", scope: !2816, file: !2817, line: 368, type: !74)
!2823 = !DILocation(line: 368, column: 6, scope: !2816, inlinedAt: !2821)
!2824 = !DILocalVariable(name: "size", arg: 1, scope: !2811, file: !2812, line: 29, type: !61)
!2825 = !DILocation(line: 29, column: 63, scope: !2811)
!2826 = !DILocation(line: 31, column: 27, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2811, file: !2812, line: 31, column: 6)
!2828 = !DILocation(line: 31, column: 6, scope: !2827)
!2829 = !DILocation(line: 31, column: 6, scope: !2811)
!2830 = !DILocation(line: 32, column: 8, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !2812, line: 32, column: 7)
!2832 = distinct !DILexicalBlock(scope: !2827, file: !2812, line: 31, column: 34)
!2833 = !DILocation(line: 32, column: 7, scope: !2832)
!2834 = !DILocation(line: 33, column: 4, scope: !2831)
!2835 = !DILocation(line: 35, column: 7, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !2812, line: 35, column: 7)
!2837 = !DILocation(line: 35, column: 12, scope: !2836)
!2838 = !DILocation(line: 35, column: 7, scope: !2832)
!2839 = !DILocation(line: 36, column: 4, scope: !2836)
!2840 = !DILocation(line: 38, column: 10, scope: !2832)
!2841 = !DILocation(line: 38, column: 28, scope: !2832)
!2842 = !DILocation(line: 38, column: 41, scope: !2832)
!2843 = !DILocation(line: 38, column: 3, scope: !2832)
!2844 = !DILocation(line: 41, column: 6, scope: !2811)
!2845 = !DILocation(line: 42, column: 7, scope: !2811)
!2846 = !DILocation(line: 46, column: 15, scope: !2811)
!2847 = !DILocation(line: 374, column: 2, scope: !2816, inlinedAt: !2821)
!2848 = !DILocation(line: 376, column: 14, scope: !2816, inlinedAt: !2821)
!2849 = !{i32 283684}
!2850 = !DILocation(line: 377, column: 9, scope: !2816, inlinedAt: !2821)
!2851 = !DILocation(line: 377, column: 16, scope: !2816, inlinedAt: !2821)
!2852 = !DILocation(line: 46, column: 2, scope: !2811)
!2853 = !DILocation(line: 48, column: 1, scope: !2811)
!2854 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2855, file: !2855, line: 30, type: !2856, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2855 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!74, !288}
!2858 = !DILocation(line: 366, column: 40, scope: !2816, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 32, column: 9, scope: !2854)
!2860 = !DILocation(line: 368, column: 6, scope: !2816, inlinedAt: !2859)
!2861 = !DILocalVariable(name: "n", arg: 1, scope: !2854, file: !2855, line: 30, type: !288)
!2862 = !DILocation(line: 30, column: 21, scope: !2854)
!2863 = !DILocation(line: 32, column: 15, scope: !2854)
!2864 = !DILocation(line: 374, column: 2, scope: !2816, inlinedAt: !2859)
!2865 = !DILocation(line: 376, column: 14, scope: !2816, inlinedAt: !2859)
!2866 = !DILocation(line: 377, column: 9, scope: !2816, inlinedAt: !2859)
!2867 = !DILocation(line: 377, column: 16, scope: !2816, inlinedAt: !2859)
!2868 = !DILocation(line: 32, column: 18, scope: !2854)
!2869 = !DILocation(line: 32, column: 2, scope: !2854)
!2870 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2871, file: !2871, line: 137, type: !2872, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2871 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!62, !1046, !1386, !217, !64}
!2874 = !DILocalVariable(name: "s", arg: 1, scope: !2870, file: !2871, line: 137, type: !1046)
!2875 = !DILocation(line: 137, column: 54, scope: !2870)
!2876 = !DILocalVariable(name: "object", arg: 2, scope: !2870, file: !2871, line: 137, type: !1386)
!2877 = !DILocation(line: 137, column: 69, scope: !2870)
!2878 = !DILocalVariable(name: "size", arg: 3, scope: !2870, file: !2871, line: 138, type: !217)
!2879 = !DILocation(line: 138, column: 12, scope: !2870)
!2880 = !DILocalVariable(name: "flags", arg: 4, scope: !2870, file: !2871, line: 138, type: !64)
!2881 = !DILocation(line: 138, column: 24, scope: !2870)
!2882 = !DILocation(line: 140, column: 17, scope: !2870)
!2883 = !DILocation(line: 140, column: 2, scope: !2870)
!2884 = distinct !DISubprogram(name: "of_property_read_string_index", scope: !1896, file: !1896, line: 1176, type: !2885, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !86)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!74, !2887, !80, !74, !1945}
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!2889 = !DILocalVariable(name: "np", arg: 1, scope: !2884, file: !1896, line: 1176, type: !2887)
!2890 = !DILocation(line: 1176, column: 75, scope: !2884)
!2891 = !DILocalVariable(name: "propname", arg: 2, scope: !2884, file: !1896, line: 1177, type: !80)
!2892 = !DILocation(line: 1177, column: 19, scope: !2884)
!2893 = !DILocalVariable(name: "index", arg: 3, scope: !2884, file: !1896, line: 1178, type: !74)
!2894 = !DILocation(line: 1178, column: 11, scope: !2884)
!2895 = !DILocalVariable(name: "output", arg: 4, scope: !2884, file: !1896, line: 1178, type: !1945)
!2896 = !DILocation(line: 1178, column: 31, scope: !2884)
!2897 = !DILocalVariable(name: "rc", scope: !2884, file: !1896, line: 1180, type: !74)
!2898 = !DILocation(line: 1180, column: 6, scope: !2884)
!2899 = !DILocation(line: 1180, column: 42, scope: !2884)
!2900 = !DILocation(line: 1180, column: 46, scope: !2884)
!2901 = !DILocation(line: 1180, column: 56, scope: !2884)
!2902 = !DILocation(line: 1180, column: 67, scope: !2884)
!2903 = !DILocation(line: 1180, column: 11, scope: !2884)
!2904 = !DILocation(line: 1181, column: 9, scope: !2884)
!2905 = !DILocation(line: 1181, column: 12, scope: !2884)
!2906 = !DILocation(line: 1181, column: 18, scope: !2884)
!2907 = !DILocation(line: 1181, column: 2, scope: !2884)
