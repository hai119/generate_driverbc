; ModuleID = '../bcout/drivers/base/attribute_container.llvm.bc'
source_filename = "drivers/base/attribute_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.attribute_container = type { %struct.list_head, %struct.klist, %struct.class*, %struct.attribute_group*, %struct.device_attribute**, i32 (%struct.attribute_container*, %struct.device*)*, i64 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.0, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.0 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.18, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.17, i32, [12 x i8] }
%union.anon.17 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.18 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.19, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.32 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.33, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.36 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i64, i64 }
%union.anon.36 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.iommu_ops = type opaque
%struct.lock_class_key = type {}
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.device_type = type { i8*, %struct.attribute_group**, {}*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.fwnode_handle = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.internal_container = type { %struct.klist_node, %struct.attribute_container*, %struct.device }
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }

@attribute_container_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @attribute_container_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @attribute_container_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@attribute_container_list = internal global %struct.list_head { %struct.list_head* @attribute_container_list, %struct.list_head* @attribute_container_list }, align 8, !dbg !2022
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate class container\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"drivers/base/attribute_container.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* %classdev) #0 !dbg !2029 {
entry:
  %classdev.addr = alloca %struct.device*, align 8
  %ic = alloca %struct.internal_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.internal_container*, align 8
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !2032, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !2034, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2036, metadata !DIExpression()), !dbg !2038
  %0 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2038
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2038
  store i8* %1, i8** %__mptr, align 8, !dbg !2038
  br label %do.body, !dbg !2038

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2039

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2038
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !2038
  %3 = bitcast i8* %add.ptr to %struct.internal_container*, !dbg !2038
  store %struct.internal_container* %3, %struct.internal_container** %tmp, align 8, !dbg !2039
  %4 = load %struct.internal_container*, %struct.internal_container** %tmp, align 8, !dbg !2038
  store %struct.internal_container* %4, %struct.internal_container** %ic, align 8, !dbg !2035
  %5 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2041
  %cont = getelementptr inbounds %struct.internal_container, %struct.internal_container* %5, i32 0, i32 1, !dbg !2042
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2042
  ret %struct.attribute_container* %6, !dbg !2043
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @attribute_container_register(%struct.attribute_container* %cont) #0 !dbg !2044 {
entry:
  %cont.addr = alloca %struct.attribute_container*, align 8
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !2047, metadata !DIExpression()), !dbg !2048
  %0 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2049
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %0, i32 0, i32 0, !dbg !2050
  call void @INIT_LIST_HEAD(%struct.list_head* %node) #7, !dbg !2051
  %1 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2052
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %1, i32 0, i32 1, !dbg !2053
  call void @klist_init(%struct.klist* %containers, void (%struct.klist_node*)* @internal_container_klist_get, void (%struct.klist_node*)* @internal_container_klist_put) #7, !dbg !2054
  call void @mutex_lock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2055
  %2 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2056
  %node1 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %2, i32 0, i32 0, !dbg !2057
  call void @list_add_tail(%struct.list_head* %node1, %struct.list_head* @attribute_container_list) #7, !dbg !2058
  call void @mutex_unlock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2059
  ret i32 0, !dbg !2060
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !2061 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2065, metadata !DIExpression()), !dbg !2066
  br label %do.body, !dbg !2067

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2068

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2070

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2068

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2072
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2072
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2072
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2072
  br label %do.end3, !dbg !2072

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2068

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2074
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2075
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2076
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2077
  ret void, !dbg !2078
}

; Function Attrs: noredzone
declare dso_local void @klist_init(%struct.klist*, void (%struct.klist_node*)*, void (%struct.klist_node*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @internal_container_klist_get(%struct.klist_node* %n) #0 !dbg !2079 {
entry:
  %n.addr = alloca %struct.klist_node*, align 8
  %ic = alloca %struct.internal_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.internal_container*, align 8
  store %struct.klist_node* %n, %struct.klist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n.addr, metadata !2080, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !2082, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2084, metadata !DIExpression()), !dbg !2086
  %0 = load %struct.klist_node*, %struct.klist_node** %n.addr, align 8, !dbg !2086
  %1 = bitcast %struct.klist_node* %0 to i8*, !dbg !2086
  store i8* %1, i8** %__mptr, align 8, !dbg !2086
  br label %do.body, !dbg !2086

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2087

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2086
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2086
  %3 = bitcast i8* %add.ptr to %struct.internal_container*, !dbg !2086
  store %struct.internal_container* %3, %struct.internal_container** %tmp, align 8, !dbg !2087
  %4 = load %struct.internal_container*, %struct.internal_container** %tmp, align 8, !dbg !2086
  store %struct.internal_container* %4, %struct.internal_container** %ic, align 8, !dbg !2083
  %5 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2089
  %classdev = getelementptr inbounds %struct.internal_container, %struct.internal_container* %5, i32 0, i32 2, !dbg !2090
  %call = call %struct.device* @get_device(%struct.device* %classdev) #7, !dbg !2091
  ret void, !dbg !2092
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @internal_container_klist_put(%struct.klist_node* %n) #0 !dbg !2093 {
entry:
  %n.addr = alloca %struct.klist_node*, align 8
  %ic = alloca %struct.internal_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.internal_container*, align 8
  store %struct.klist_node* %n, %struct.klist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n.addr, metadata !2094, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !2096, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2098, metadata !DIExpression()), !dbg !2100
  %0 = load %struct.klist_node*, %struct.klist_node** %n.addr, align 8, !dbg !2100
  %1 = bitcast %struct.klist_node* %0 to i8*, !dbg !2100
  store i8* %1, i8** %__mptr, align 8, !dbg !2100
  br label %do.body, !dbg !2100

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2101

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2100
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2100
  %3 = bitcast i8* %add.ptr to %struct.internal_container*, !dbg !2100
  store %struct.internal_container* %3, %struct.internal_container** %tmp, align 8, !dbg !2101
  %4 = load %struct.internal_container*, %struct.internal_container** %tmp, align 8, !dbg !2100
  store %struct.internal_container* %4, %struct.internal_container** %ic, align 8, !dbg !2097
  %5 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2103
  %classdev = getelementptr inbounds %struct.internal_container, %struct.internal_container* %5, i32 0, i32 2, !dbg !2104
  call void @put_device(%struct.device* %classdev) #7, !dbg !2105
  ret void, !dbg !2106
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2107 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2110, metadata !DIExpression()), !dbg !2111
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2112, metadata !DIExpression()), !dbg !2113
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2114
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2115
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2116
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2116
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2117
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !2118
  ret void, !dbg !2119
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @attribute_container_unregister(%struct.attribute_container* %cont) #0 !dbg !2120 {
entry:
  %lock.addr.i5 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i5, metadata !2121, metadata !DIExpression()), !dbg !2127
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2129, metadata !DIExpression()), !dbg !2131
  %cont.addr = alloca %struct.attribute_container*, align 8
  %retval1 = alloca i32, align 4
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !2133, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i32 -16, i32* %retval1, align 4, !dbg !2136
  call void @mutex_lock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2137
  %0 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2138
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %0, i32 0, i32 1, !dbg !2139
  %k_lock = getelementptr inbounds %struct.klist, %struct.klist* %containers, i32 0, i32 0, !dbg !2140
  store %struct.spinlock* %k_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2141, !srcloc !2143
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2144
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2144
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !2144
  %3 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2146
  %containers2 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %3, i32 0, i32 1, !dbg !2148
  %k_list = getelementptr inbounds %struct.klist, %struct.klist* %containers2, i32 0, i32 1, !dbg !2149
  %call = call i32 @list_empty(%struct.list_head* %k_list) #7, !dbg !2150
  %tobool = icmp ne i32 %call, 0, !dbg !2150
  br i1 %tobool, label %if.end, label %if.then, !dbg !2151

if.then:                                          ; preds = %entry
  br label %out, !dbg !2152

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval1, align 4, !dbg !2153
  %4 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2154
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %4, i32 0, i32 0, !dbg !2155
  call void @list_del(%struct.list_head* %node) #7, !dbg !2156
  br label %out, !dbg !2156

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !2157), !dbg !2158
  %5 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2159
  %containers3 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %5, i32 0, i32 1, !dbg !2160
  %k_lock4 = getelementptr inbounds %struct.klist, %struct.klist* %containers3, i32 0, i32 0, !dbg !2161
  store %struct.spinlock* %k_lock4, %struct.spinlock** %lock.addr.i5, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2162, !srcloc !2164
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i5, align 8, !dbg !2165
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !2165
  %rlock.i6 = bitcast %union.anon* %7 to %struct.raw_spinlock*, !dbg !2165
  call void @mutex_unlock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2167
  %8 = load i32, i32* %retval1, align 4, !dbg !2168
  ret i32 %8, !dbg !2169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !2170 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2175, metadata !DIExpression()), !dbg !2176
  br label %do.body, !dbg !2177

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2179

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2177
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2177
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2177
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !2179
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !2177
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2181
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !2182
  %conv = zext i1 %cmp to i32, !dbg !2182
  ret i32 %conv, !dbg !2183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2184 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2187
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !2188
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2189
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2190
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2191
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2192
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2193
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2194
  ret void, !dbg !2195
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @attribute_container_add_device(%struct.device* %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn) #0 !dbg !2196 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %fn.addr = alloca i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, align 8
  %cont = alloca %struct.attribute_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.attribute_container*, align 8
  %ic = alloca %struct.internal_container*, align 8
  %__mptr26 = alloca i8*, align 8
  %tmp30 = alloca %struct.attribute_container*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2202, metadata !DIExpression()), !dbg !2203
  store i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @mutex_lock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2208
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2209, metadata !DIExpression()), !dbg !2212
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @attribute_container_list, i32 0, i32 0), align 8, !dbg !2212
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2212
  store i8* %1, i8** %__mptr, align 8, !dbg !2212
  br label %do.body, !dbg !2212

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2213

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2212
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2212
  %3 = bitcast i8* %add.ptr to %struct.attribute_container*, !dbg !2212
  store %struct.attribute_container* %3, %struct.attribute_container** %tmp, align 8, !dbg !2213
  %4 = load %struct.attribute_container*, %struct.attribute_container** %tmp, align 8, !dbg !2212
  store %struct.attribute_container* %4, %struct.attribute_container** %cont, align 8, !dbg !2215
  br label %for.cond, !dbg !2215

for.cond:                                         ; preds = %do.end29, %do.end
  %5 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2216
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %5, i32 0, i32 0, !dbg !2216
  %cmp = icmp eq %struct.list_head* %node, @attribute_container_list, !dbg !2216
  %lnot = xor i1 %cmp, true, !dbg !2216
  br i1 %lnot, label %for.body, label %for.end, !dbg !2215

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !2218, metadata !DIExpression()), !dbg !2220
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2221
  %call = call i32 @attribute_container_no_classdevs(%struct.attribute_container* %6) #7, !dbg !2223
  %tobool = icmp ne i32 %call, 0, !dbg !2223
  br i1 %tobool, label %if.then, label %if.end, !dbg !2224

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2225

if.end:                                           ; preds = %for.body
  %7 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2226
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %7, i32 0, i32 5, !dbg !2228
  %8 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8, !dbg !2228
  %9 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2229
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2230
  %call1 = call i32 %8(%struct.attribute_container* %9, %struct.device* %10) #7, !dbg !2226
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2226
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2231

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !2232

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @kzalloc(i64 736, i32 3264) #7, !dbg !2233
  %11 = bitcast i8* %call5 to %struct.internal_container*, !dbg !2233
  store %struct.internal_container* %11, %struct.internal_container** %ic, align 8, !dbg !2234
  %12 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2235
  %tobool6 = icmp ne %struct.internal_container* %12, null, !dbg !2235
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2237

if.then7:                                         ; preds = %if.end4
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2238
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #9, !dbg !2238
  br label %for.inc, !dbg !2240

if.end8:                                          ; preds = %if.end4
  %14 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2241
  %15 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2242
  %cont9 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %15, i32 0, i32 1, !dbg !2243
  store %struct.attribute_container* %14, %struct.attribute_container** %cont9, align 8, !dbg !2244
  %16 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2245
  %classdev = getelementptr inbounds %struct.internal_container, %struct.internal_container* %16, i32 0, i32 2, !dbg !2246
  call void @device_initialize(%struct.device* %classdev) #7, !dbg !2247
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2248
  %call10 = call %struct.device* @get_device(%struct.device* %17) #7, !dbg !2249
  %18 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2250
  %classdev11 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %18, i32 0, i32 2, !dbg !2251
  %parent = getelementptr inbounds %struct.device, %struct.device* %classdev11, i32 0, i32 1, !dbg !2252
  store %struct.device* %call10, %struct.device** %parent, align 8, !dbg !2253
  %19 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2254
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %19, i32 0, i32 2, !dbg !2255
  %20 = load %struct.class*, %struct.class** %class, align 8, !dbg !2255
  %21 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2256
  %classdev12 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %21, i32 0, i32 2, !dbg !2257
  %class13 = getelementptr inbounds %struct.device, %struct.device* %classdev12, i32 0, i32 29, !dbg !2258
  store %struct.class* %20, %struct.class** %class13, align 8, !dbg !2259
  %22 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2260
  %class14 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %22, i32 0, i32 2, !dbg !2261
  %23 = load %struct.class*, %struct.class** %class14, align 8, !dbg !2261
  %dev_release = getelementptr inbounds %struct.class, %struct.class* %23, i32 0, i32 8, !dbg !2262
  store void (%struct.device*)* @attribute_container_release, void (%struct.device*)** %dev_release, align 8, !dbg !2263
  %24 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2264
  %classdev15 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %24, i32 0, i32 2, !dbg !2265
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2266
  %call16 = call i8* @dev_name(%struct.device* %25) #7, !dbg !2267
  %call17 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %classdev15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %call16) #7, !dbg !2268
  %26 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !2269
  %tobool18 = icmp ne i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %26, null, !dbg !2269
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !2271

if.then19:                                        ; preds = %if.end8
  %27 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !2272
  %28 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2273
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2274
  %30 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2275
  %classdev20 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %30, i32 0, i32 2, !dbg !2276
  %call21 = call i32 %27(%struct.attribute_container* %28, %struct.device* %29, %struct.device* %classdev20) #7, !dbg !2272
  br label %if.end24, !dbg !2272

if.else:                                          ; preds = %if.end8
  %31 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2277
  %classdev22 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %31, i32 0, i32 2, !dbg !2278
  %call23 = call i32 @attribute_container_add_class_device(%struct.device* %classdev22) #7, !dbg !2279
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  %32 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2280
  %node25 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %32, i32 0, i32 0, !dbg !2281
  %33 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2282
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %33, i32 0, i32 1, !dbg !2283
  call void @klist_add_tail(%struct.klist_node* %node25, %struct.klist* %containers) #7, !dbg !2284
  br label %for.inc, !dbg !2285

for.inc:                                          ; preds = %if.end24, %if.then7, %if.then3, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr26, metadata !2286, metadata !DIExpression()), !dbg !2288
  %34 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2288
  %node27 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %34, i32 0, i32 0, !dbg !2288
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node27, i32 0, i32 0, !dbg !2288
  %35 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2288
  %36 = bitcast %struct.list_head* %35 to i8*, !dbg !2288
  store i8* %36, i8** %__mptr26, align 8, !dbg !2288
  br label %do.body28, !dbg !2288

do.body28:                                        ; preds = %for.inc
  br label %do.end29, !dbg !2289

do.end29:                                         ; preds = %do.body28
  %37 = load i8*, i8** %__mptr26, align 8, !dbg !2288
  %add.ptr31 = getelementptr i8, i8* %37, i64 0, !dbg !2288
  %38 = bitcast i8* %add.ptr31 to %struct.attribute_container*, !dbg !2288
  store %struct.attribute_container* %38, %struct.attribute_container** %tmp30, align 8, !dbg !2289
  %39 = load %struct.attribute_container*, %struct.attribute_container** %tmp30, align 8, !dbg !2288
  store %struct.attribute_container* %39, %struct.attribute_container** %cont, align 8, !dbg !2216
  br label %for.cond, !dbg !2216, !llvm.loop !2291

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2293
  ret void, !dbg !2294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @attribute_container_no_classdevs(%struct.attribute_container* %atc) #0 !dbg !2295 {
entry:
  %atc.addr = alloca %struct.attribute_container*, align 8
  store %struct.attribute_container* %atc, %struct.attribute_container** %atc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %atc.addr, metadata !2296, metadata !DIExpression()), !dbg !2297
  %0 = load %struct.attribute_container*, %struct.attribute_container** %atc.addr, align 8, !dbg !2298
  %flags = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %0, i32 0, i32 6, !dbg !2299
  %1 = load i64, i64* %flags, align 8, !dbg !2299
  %and = and i64 %1, 1, !dbg !2300
  %conv = trunc i64 %and to i32, !dbg !2298
  ret i32 %conv, !dbg !2301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2302 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2305, metadata !DIExpression()), !dbg !2309
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2315, metadata !DIExpression()), !dbg !2316
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2317, metadata !DIExpression()), !dbg !2318
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2319, metadata !DIExpression()), !dbg !2320
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2321, metadata !DIExpression()), !dbg !2325
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2327, metadata !DIExpression()), !dbg !2331
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2333, metadata !DIExpression()), !dbg !2337
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2342, metadata !DIExpression()), !dbg !2343
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2344, metadata !DIExpression()), !dbg !2345
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2346, metadata !DIExpression()), !dbg !2347
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2348, metadata !DIExpression()), !dbg !2349
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2350, metadata !DIExpression()), !dbg !2351
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2352, metadata !DIExpression()), !dbg !2353
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2354, metadata !DIExpression()), !dbg !2355
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2356, metadata !DIExpression()), !dbg !2357
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2358, metadata !DIExpression()), !dbg !2359
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2360, metadata !DIExpression()), !dbg !2361
  %0 = load i64, i64* %size.addr, align 8, !dbg !2362
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2363
  %or = or i32 %1, 256, !dbg !2364
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2365
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2366
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2367

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2368
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2369
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2370

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2371
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2372
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2373
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2374
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2351
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2375
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2376
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2377
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2378
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2379
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2380
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2381
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2381
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2381
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2381
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2381
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2382
  br label %kmalloc.exit, !dbg !2382

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2383
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2384
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2384
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2386

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2387
  br label %kmalloc_index.exit.i, !dbg !2387

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2388
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2390
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2391

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2392
  br label %kmalloc_index.exit.i, !dbg !2392

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2393
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2395
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2396

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2397
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2398
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2399

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2400
  br label %kmalloc_index.exit.i, !dbg !2400

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2401
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2403
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2404

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2405
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2406
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2407

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2408
  br label %kmalloc_index.exit.i, !dbg !2408

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2409
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2411
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2412

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2413
  br label %kmalloc_index.exit.i, !dbg !2413

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2414
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2416
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2417

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2418
  br label %kmalloc_index.exit.i, !dbg !2418

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2419
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2421
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2422

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2423
  br label %kmalloc_index.exit.i, !dbg !2423

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2424
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2426
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2427

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2428
  br label %kmalloc_index.exit.i, !dbg !2428

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2429
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2431
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2432

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2433
  br label %kmalloc_index.exit.i, !dbg !2433

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2434
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2436
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2437

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2438
  br label %kmalloc_index.exit.i, !dbg !2438

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2439
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2441
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2442

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2443
  br label %kmalloc_index.exit.i, !dbg !2443

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2444
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2446
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2447

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2448
  br label %kmalloc_index.exit.i, !dbg !2448

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2449
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2451
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2452

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2453
  br label %kmalloc_index.exit.i, !dbg !2453

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2454
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2456
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2457

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2458
  br label %kmalloc_index.exit.i, !dbg !2458

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2459
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2461
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2462

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2463
  br label %kmalloc_index.exit.i, !dbg !2463

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2464
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2466
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2467

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2468
  br label %kmalloc_index.exit.i, !dbg !2468

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2469
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2471
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2472

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2473
  br label %kmalloc_index.exit.i, !dbg !2473

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2474
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2476
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2477

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2478
  br label %kmalloc_index.exit.i, !dbg !2478

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2479
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2481
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2482

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2483
  br label %kmalloc_index.exit.i, !dbg !2483

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2484
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2486
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2487

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2488
  br label %kmalloc_index.exit.i, !dbg !2488

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2489
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2491
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2492

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2493
  br label %kmalloc_index.exit.i, !dbg !2493

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2494
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2496
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2497

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2498
  br label %kmalloc_index.exit.i, !dbg !2498

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2499
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2501
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2502

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2503
  br label %kmalloc_index.exit.i, !dbg !2503

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2504
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2506
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2507

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2508
  br label %kmalloc_index.exit.i, !dbg !2508

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2509
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2511
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2512

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2513
  br label %kmalloc_index.exit.i, !dbg !2513

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2514
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2516
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2517

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2518
  br label %kmalloc_index.exit.i, !dbg !2518

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2519
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2521
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2522

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2523
  br label %kmalloc_index.exit.i, !dbg !2523

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2524
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2526
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2527

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2528
  br label %kmalloc_index.exit.i, !dbg !2528

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2529, !srcloc !2532
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !2533, !srcloc !2536
  unreachable, !dbg !2537

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2538
  store i32 %45, i32* %index.i, align 4, !dbg !2539
  %46 = load i32, i32* %index.i, align 4, !dbg !2540
  %tobool.i = icmp ne i32 %46, 0, !dbg !2540
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2542

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2543
  br label %kmalloc.exit, !dbg !2543

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2544
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2545
  %and.i.i = and i32 %48, 17, !dbg !2545
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2545
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2545
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2545
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2545
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2547

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2548
  br label %kmalloc_type.exit.i, !dbg !2548

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2549
  %and2.i.i = and i32 %49, 1, !dbg !2550
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2549
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2549
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2549
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2551
  br label %kmalloc_type.exit.i, !dbg !2551

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2552
  %idxprom.i = zext i32 %51 to i64, !dbg !2553
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2553
  %52 = load i32, i32* %index.i, align 4, !dbg !2554
  %idxprom6.i = zext i32 %52 to i64, !dbg !2553
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2553
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2553
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2555
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2556
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2557
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2558
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2559
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2559
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2559
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2559
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2559
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2320
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2560
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2561
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2562
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2563
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2564
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2565
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2566
  store i8* %62, i8** %retval.i, align 8, !dbg !2567
  br label %kmalloc.exit, !dbg !2567

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2568
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2569
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2570
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2570
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2570
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2570
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2570
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2571
  br label %kmalloc.exit, !dbg !2571

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2572
  ret i8* %65, !dbg !2573
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @attribute_container_release(%struct.device* %classdev) #0 !dbg !2574 {
entry:
  %classdev.addr = alloca %struct.device*, align 8
  %ic = alloca %struct.internal_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.internal_container*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !2575, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !2577, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2579, metadata !DIExpression()), !dbg !2581
  %0 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2581
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2581
  store i8* %1, i8** %__mptr, align 8, !dbg !2581
  br label %do.body, !dbg !2581

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2582

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2581
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !2581
  %3 = bitcast i8* %add.ptr to %struct.internal_container*, !dbg !2581
  store %struct.internal_container* %3, %struct.internal_container** %tmp, align 8, !dbg !2582
  %4 = load %struct.internal_container*, %struct.internal_container** %tmp, align 8, !dbg !2581
  store %struct.internal_container* %4, %struct.internal_container** %ic, align 8, !dbg !2578
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2584, metadata !DIExpression()), !dbg !2585
  %5 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2586
  %parent = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 1, !dbg !2587
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2587
  store %struct.device* %6, %struct.device** %dev, align 8, !dbg !2585
  %7 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2588
  %8 = bitcast %struct.internal_container* %7 to i8*, !dbg !2588
  call void @kfree(i8* %8) #7, !dbg !2589
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2590
  call void @put_device(%struct.device* %9) #7, !dbg !2591
  ret void, !dbg !2592
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !2593 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2598, metadata !DIExpression()), !dbg !2599
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2600
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2602
  %1 = load i8*, i8** %init_name, align 8, !dbg !2602
  %tobool = icmp ne i8* %1, null, !dbg !2600
  br i1 %tobool, label %if.then, label %if.end, !dbg !2603

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2604
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2605
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2605
  store i8* %3, i8** %retval, align 8, !dbg !2606
  br label %return, !dbg !2606

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2607
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2608
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !2609
  store i8* %call, i8** %retval, align 8, !dbg !2610
  br label %return, !dbg !2610

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2611
  ret i8* %5, !dbg !2611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @attribute_container_add_class_device(%struct.device* %classdev) #0 !dbg !2612 {
entry:
  %retval = alloca i32, align 4
  %classdev.addr = alloca %struct.device*, align 8
  %error = alloca i32, align 4
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2615, metadata !DIExpression()), !dbg !2616
  %0 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2617
  %call = call i32 @device_add(%struct.device* %0) #7, !dbg !2618
  store i32 %call, i32* %error, align 4, !dbg !2616
  %1 = load i32, i32* %error, align 4, !dbg !2619
  %tobool = icmp ne i32 %1, 0, !dbg !2619
  br i1 %tobool, label %if.then, label %if.end, !dbg !2621

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %error, align 4, !dbg !2622
  store i32 %2, i32* %retval, align 4, !dbg !2623
  br label %return, !dbg !2623

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2624
  %call1 = call i32 @attribute_container_add_attrs(%struct.device* %3) #7, !dbg !2625
  store i32 %call1, i32* %retval, align 4, !dbg !2626
  br label %return, !dbg !2626

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2627
  ret i32 %4, !dbg !2627
}

; Function Attrs: noredzone
declare dso_local void @klist_add_tail(%struct.klist_node*, %struct.klist*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @attribute_container_remove_device(%struct.device* %dev, void (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn) #0 !dbg !2628 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %fn.addr = alloca void (%struct.attribute_container*, %struct.device*, %struct.device*)*, align 8
  %cont = alloca %struct.attribute_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.attribute_container*, align 8
  %ic = alloca %struct.internal_container*, align 8
  %iter = alloca %struct.klist_iter, align 8
  %n = alloca %struct.klist_node*, align 8
  %tmp7 = alloca i8*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp12 = alloca %struct.internal_container*, align 8
  %tmp14 = alloca i8*, align 8
  %__mptr27 = alloca i8*, align 8
  %tmp31 = alloca %struct.attribute_container*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2634, metadata !DIExpression()), !dbg !2635
  store void (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, void (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont, metadata !2638, metadata !DIExpression()), !dbg !2639
  call void @mutex_lock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2640
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2641, metadata !DIExpression()), !dbg !2644
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @attribute_container_list, i32 0, i32 0), align 8, !dbg !2644
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2644
  store i8* %1, i8** %__mptr, align 8, !dbg !2644
  br label %do.body, !dbg !2644

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2645

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2644
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2644
  %3 = bitcast i8* %add.ptr to %struct.attribute_container*, !dbg !2644
  store %struct.attribute_container* %3, %struct.attribute_container** %tmp, align 8, !dbg !2645
  %4 = load %struct.attribute_container*, %struct.attribute_container** %tmp, align 8, !dbg !2644
  store %struct.attribute_container* %4, %struct.attribute_container** %cont, align 8, !dbg !2647
  br label %for.cond, !dbg !2647

for.cond:                                         ; preds = %do.end30, %do.end
  %5 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2648
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %5, i32 0, i32 0, !dbg !2648
  %cmp = icmp eq %struct.list_head* %node, @attribute_container_list, !dbg !2648
  %lnot = xor i1 %cmp, true, !dbg !2648
  br i1 %lnot, label %for.body, label %for.end33, !dbg !2647

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !2650, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.declare(metadata %struct.klist_iter* %iter, metadata !2653, metadata !DIExpression()), !dbg !2659
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2660
  %call = call i32 @attribute_container_no_classdevs(%struct.attribute_container* %6) #7, !dbg !2662
  %tobool = icmp ne i32 %call, 0, !dbg !2662
  br i1 %tobool, label %if.then, label %if.end, !dbg !2663

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2664

if.end:                                           ; preds = %for.body
  %7 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2665
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %7, i32 0, i32 5, !dbg !2667
  %8 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8, !dbg !2667
  %9 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2668
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2669
  %call1 = call i32 %8(%struct.attribute_container* %9, %struct.device* %10) #7, !dbg !2665
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2665
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2670

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !2671

if.end4:                                          ; preds = %if.end
  %11 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2672
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %11, i32 0, i32 1, !dbg !2672
  call void @klist_iter_init(%struct.klist* %containers, %struct.klist_iter* %iter) #7, !dbg !2672
  br label %for.cond5, !dbg !2672

for.cond5:                                        ; preds = %if.end26, %if.then18, %if.end4
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n, metadata !2674, metadata !DIExpression()), !dbg !2677
  %call6 = call %struct.klist_node* @klist_next(%struct.klist_iter* %iter) #7, !dbg !2677
  store %struct.klist_node* %call6, %struct.klist_node** %n, align 8, !dbg !2677
  %12 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !2677
  %tobool8 = icmp ne %struct.klist_node* %12, null, !dbg !2677
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !2677

cond.true:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !2678, metadata !DIExpression()), !dbg !2680
  %13 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !2680
  %14 = bitcast %struct.klist_node* %13 to i8*, !dbg !2680
  store i8* %14, i8** %__mptr9, align 8, !dbg !2680
  br label %do.body10, !dbg !2680

do.body10:                                        ; preds = %cond.true
  br label %do.end11, !dbg !2681

do.end11:                                         ; preds = %do.body10
  %15 = load i8*, i8** %__mptr9, align 8, !dbg !2680
  %add.ptr13 = getelementptr i8, i8* %15, i64 0, !dbg !2680
  %16 = bitcast i8* %add.ptr13 to %struct.internal_container*, !dbg !2680
  store %struct.internal_container* %16, %struct.internal_container** %tmp12, align 8, !dbg !2681
  %17 = load %struct.internal_container*, %struct.internal_container** %tmp12, align 8, !dbg !2680
  %18 = bitcast %struct.internal_container* %17 to i8*, !dbg !2677
  br label %cond.end, !dbg !2677

cond.false:                                       ; preds = %for.cond5
  call void @klist_iter_exit(%struct.klist_iter* %iter) #7, !dbg !2683
  store i8* null, i8** %tmp14, align 8, !dbg !2683
  %19 = load i8*, i8** %tmp14, align 8, !dbg !2683
  br label %cond.end, !dbg !2677

cond.end:                                         ; preds = %cond.false, %do.end11
  %cond = phi i8* [ %18, %do.end11 ], [ %19, %cond.false ], !dbg !2677
  store i8* %cond, i8** %tmp7, align 8, !dbg !2677
  %20 = load i8*, i8** %tmp7, align 8, !dbg !2677
  %21 = bitcast i8* %20 to %struct.internal_container*, !dbg !2685
  store %struct.internal_container* %21, %struct.internal_container** %ic, align 8, !dbg !2685
  %cmp15 = icmp ne %struct.internal_container* %21, null, !dbg !2685
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !2672

for.body16:                                       ; preds = %cond.end
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2686
  %23 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2689
  %classdev = getelementptr inbounds %struct.internal_container, %struct.internal_container* %23, i32 0, i32 2, !dbg !2690
  %parent = getelementptr inbounds %struct.device, %struct.device* %classdev, i32 0, i32 1, !dbg !2691
  %24 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2691
  %cmp17 = icmp ne %struct.device* %22, %24, !dbg !2692
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2693

if.then18:                                        ; preds = %for.body16
  br label %for.cond5, !dbg !2694, !llvm.loop !2695

if.end19:                                         ; preds = %for.body16
  %25 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2697
  %node20 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %25, i32 0, i32 0, !dbg !2698
  call void @klist_del(%struct.klist_node* %node20) #7, !dbg !2699
  %26 = load void (%struct.attribute_container*, %struct.device*, %struct.device*)*, void (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !2700
  %tobool21 = icmp ne void (%struct.attribute_container*, %struct.device*, %struct.device*)* %26, null, !dbg !2700
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !2702

if.then22:                                        ; preds = %if.end19
  %27 = load void (%struct.attribute_container*, %struct.device*, %struct.device*)*, void (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !2703
  %28 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2704
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2705
  %30 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2706
  %classdev23 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %30, i32 0, i32 2, !dbg !2707
  call void %27(%struct.attribute_container* %28, %struct.device* %29, %struct.device* %classdev23) #7, !dbg !2703
  br label %if.end26, !dbg !2703

if.else:                                          ; preds = %if.end19
  %31 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2708
  %classdev24 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %31, i32 0, i32 2, !dbg !2710
  call void @attribute_container_remove_attrs(%struct.device* %classdev24) #7, !dbg !2711
  %32 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2712
  %classdev25 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %32, i32 0, i32 2, !dbg !2713
  call void @device_unregister(%struct.device* %classdev25) #7, !dbg !2714
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  br label %for.cond5, !dbg !2685, !llvm.loop !2695

for.end:                                          ; preds = %cond.end
  br label %for.inc, !dbg !2715

for.inc:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr27, metadata !2716, metadata !DIExpression()), !dbg !2718
  %33 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2718
  %node28 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %33, i32 0, i32 0, !dbg !2718
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node28, i32 0, i32 0, !dbg !2718
  %34 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2718
  %35 = bitcast %struct.list_head* %34 to i8*, !dbg !2718
  store i8* %35, i8** %__mptr27, align 8, !dbg !2718
  br label %do.body29, !dbg !2718

do.body29:                                        ; preds = %for.inc
  br label %do.end30, !dbg !2719

do.end30:                                         ; preds = %do.body29
  %36 = load i8*, i8** %__mptr27, align 8, !dbg !2718
  %add.ptr32 = getelementptr i8, i8* %36, i64 0, !dbg !2718
  %37 = bitcast i8* %add.ptr32 to %struct.attribute_container*, !dbg !2718
  store %struct.attribute_container* %37, %struct.attribute_container** %tmp31, align 8, !dbg !2719
  %38 = load %struct.attribute_container*, %struct.attribute_container** %tmp31, align 8, !dbg !2718
  store %struct.attribute_container* %38, %struct.attribute_container** %cont, align 8, !dbg !2648
  br label %for.cond, !dbg !2648, !llvm.loop !2721

for.end33:                                        ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2723
  ret void, !dbg !2724
}

; Function Attrs: noredzone
declare dso_local void @klist_iter_init(%struct.klist*, %struct.klist_iter*) #2

; Function Attrs: noredzone
declare dso_local %struct.klist_node* @klist_next(%struct.klist_iter*) #2

; Function Attrs: noredzone
declare dso_local void @klist_iter_exit(%struct.klist_iter*) #2

; Function Attrs: noredzone
declare dso_local void @klist_del(%struct.klist_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @attribute_container_remove_attrs(%struct.device* %classdev) #0 !dbg !2725 {
entry:
  %classdev.addr = alloca %struct.device*, align 8
  %cont = alloca %struct.attribute_container*, align 8
  %attrs = alloca %struct.device_attribute**, align 8
  %i = alloca i32, align 4
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont, metadata !2728, metadata !DIExpression()), !dbg !2729
  %0 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2730
  %call = call %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* %0) #7, !dbg !2731
  store %struct.attribute_container* %call, %struct.attribute_container** %cont, align 8, !dbg !2729
  call void @llvm.dbg.declare(metadata %struct.device_attribute*** %attrs, metadata !2732, metadata !DIExpression()), !dbg !2733
  %1 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2734
  %attrs1 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %1, i32 0, i32 4, !dbg !2735
  %2 = load %struct.device_attribute**, %struct.device_attribute*** %attrs1, align 8, !dbg !2735
  store %struct.device_attribute** %2, %struct.device_attribute*** %attrs, align 8, !dbg !2733
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2736, metadata !DIExpression()), !dbg !2737
  %3 = load %struct.device_attribute**, %struct.device_attribute*** %attrs, align 8, !dbg !2738
  %tobool = icmp ne %struct.device_attribute** %3, null, !dbg !2738
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2740

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2741
  %grp = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %4, i32 0, i32 3, !dbg !2742
  %5 = load %struct.attribute_group*, %struct.attribute_group** %grp, align 8, !dbg !2742
  %tobool2 = icmp ne %struct.attribute_group* %5, null, !dbg !2741
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2743

if.then:                                          ; preds = %land.lhs.true
  br label %for.end, !dbg !2744

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2745
  %grp3 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %6, i32 0, i32 3, !dbg !2747
  %7 = load %struct.attribute_group*, %struct.attribute_group** %grp3, align 8, !dbg !2747
  %tobool4 = icmp ne %struct.attribute_group* %7, null, !dbg !2745
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !2748

if.then5:                                         ; preds = %if.end
  %8 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2749
  %kobj = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0, !dbg !2751
  %9 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2752
  %grp6 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %9, i32 0, i32 3, !dbg !2753
  %10 = load %struct.attribute_group*, %struct.attribute_group** %grp6, align 8, !dbg !2753
  call void @sysfs_remove_group(%struct.kobject* %kobj, %struct.attribute_group* %10) #7, !dbg !2754
  br label %for.end, !dbg !2755

if.end7:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !2756
  br label %for.cond, !dbg !2758

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load %struct.device_attribute**, %struct.device_attribute*** %attrs, align 8, !dbg !2759
  %12 = load i32, i32* %i, align 4, !dbg !2761
  %idxprom = sext i32 %12 to i64, !dbg !2759
  %arrayidx = getelementptr %struct.device_attribute*, %struct.device_attribute** %11, i64 %idxprom, !dbg !2759
  %13 = load %struct.device_attribute*, %struct.device_attribute** %arrayidx, align 8, !dbg !2759
  %tobool8 = icmp ne %struct.device_attribute* %13, null, !dbg !2762
  br i1 %tobool8, label %for.body, label %for.end, !dbg !2762

for.body:                                         ; preds = %for.cond
  %14 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2763
  %15 = load %struct.device_attribute**, %struct.device_attribute*** %attrs, align 8, !dbg !2764
  %16 = load i32, i32* %i, align 4, !dbg !2765
  %idxprom9 = sext i32 %16 to i64, !dbg !2764
  %arrayidx10 = getelementptr %struct.device_attribute*, %struct.device_attribute** %15, i64 %idxprom9, !dbg !2764
  %17 = load %struct.device_attribute*, %struct.device_attribute** %arrayidx10, align 8, !dbg !2764
  call void @device_remove_file(%struct.device* %14, %struct.device_attribute* %17) #7, !dbg !2766
  br label %for.inc, !dbg !2766

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !2767
  %inc = add i32 %18, 1, !dbg !2767
  store i32 %inc, i32* %i, align 4, !dbg !2767
  br label %for.cond, !dbg !2768, !llvm.loop !2769

for.end:                                          ; preds = %if.then, %if.then5, %for.cond
  ret void, !dbg !2771
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @attribute_container_device_trigger_safe(%struct.device* %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %undo) #0 !dbg !2772 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %fn.addr = alloca i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, align 8
  %undo.addr = alloca i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, align 8
  %cont = alloca %struct.attribute_container*, align 8
  %failed = alloca %struct.attribute_container*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.attribute_container*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp9 = alloca %struct.attribute_container*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp32 = alloca i64, align 8
  %__mptr41 = alloca i8*, align 8
  %tmp44 = alloca %struct.attribute_container*, align 8
  %__mptr64 = alloca i8*, align 8
  %tmp69 = alloca %struct.attribute_container*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2775, metadata !DIExpression()), !dbg !2776
  store i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, metadata !2777, metadata !DIExpression()), !dbg !2778
  store i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %undo, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, metadata !2779, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %failed, metadata !2783, metadata !DIExpression()), !dbg !2784
  store %struct.attribute_container* null, %struct.attribute_container** %failed, align 8, !dbg !2784
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2785, metadata !DIExpression()), !dbg !2786
  store i32 0, i32* %ret, align 4, !dbg !2786
  call void @mutex_lock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2787
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2788, metadata !DIExpression()), !dbg !2791
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @attribute_container_list, i32 0, i32 0), align 8, !dbg !2791
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2791
  store i8* %1, i8** %__mptr, align 8, !dbg !2791
  br label %do.body, !dbg !2791

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2792

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2791
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2791
  %3 = bitcast i8* %add.ptr to %struct.attribute_container*, !dbg !2791
  store %struct.attribute_container* %3, %struct.attribute_container** %tmp, align 8, !dbg !2792
  %4 = load %struct.attribute_container*, %struct.attribute_container** %tmp, align 8, !dbg !2791
  store %struct.attribute_container* %4, %struct.attribute_container** %cont, align 8, !dbg !2794
  br label %for.cond, !dbg !2794

for.cond:                                         ; preds = %do.end8, %do.end
  %5 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2795
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %5, i32 0, i32 0, !dbg !2795
  %cmp = icmp eq %struct.list_head* %node, @attribute_container_list, !dbg !2795
  %lnot = xor i1 %cmp, true, !dbg !2795
  br i1 %lnot, label %for.body, label %for.end, !dbg !2794

for.body:                                         ; preds = %for.cond
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2797
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %6, i32 0, i32 5, !dbg !2800
  %7 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8, !dbg !2800
  %8 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2801
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2802
  %call = call i32 %7(%struct.attribute_container* %8, %struct.device* %9) #7, !dbg !2797
  %tobool = icmp ne i32 %call, 0, !dbg !2797
  br i1 %tobool, label %if.end, label %if.then, !dbg !2803

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2804

if.end:                                           ; preds = %for.body
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2805
  %11 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2806
  %12 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !2807
  %13 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, align 8, !dbg !2808
  %call1 = call i32 @do_attribute_container_device_trigger_safe(%struct.device* %10, %struct.attribute_container* %11, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %12, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %13) #7, !dbg !2809
  store i32 %call1, i32* %ret, align 4, !dbg !2810
  %14 = load i32, i32* %ret, align 4, !dbg !2811
  %tobool2 = icmp ne i32 %14, 0, !dbg !2811
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2813

if.then3:                                         ; preds = %if.end
  %15 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2814
  store %struct.attribute_container* %15, %struct.attribute_container** %failed, align 8, !dbg !2816
  br label %for.end, !dbg !2817

if.end4:                                          ; preds = %if.end
  br label %for.inc, !dbg !2818

for.inc:                                          ; preds = %if.end4, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !2819, metadata !DIExpression()), !dbg !2821
  %16 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2821
  %node6 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %16, i32 0, i32 0, !dbg !2821
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node6, i32 0, i32 0, !dbg !2821
  %17 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2821
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !2821
  store i8* %18, i8** %__mptr5, align 8, !dbg !2821
  br label %do.body7, !dbg !2821

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !2822

do.end8:                                          ; preds = %do.body7
  %19 = load i8*, i8** %__mptr5, align 8, !dbg !2821
  %add.ptr10 = getelementptr i8, i8* %19, i64 0, !dbg !2821
  %20 = bitcast i8* %add.ptr10 to %struct.attribute_container*, !dbg !2821
  store %struct.attribute_container* %20, %struct.attribute_container** %tmp9, align 8, !dbg !2822
  %21 = load %struct.attribute_container*, %struct.attribute_container** %tmp9, align 8, !dbg !2821
  store %struct.attribute_container* %21, %struct.attribute_container** %cont, align 8, !dbg !2795
  br label %for.cond, !dbg !2795, !llvm.loop !2824

for.end:                                          ; preds = %if.then3, %for.cond
  %22 = load i32, i32* %ret, align 4, !dbg !2826
  %tobool11 = icmp ne i32 %22, 0, !dbg !2826
  br i1 %tobool11, label %land.lhs.true, label %if.end72, !dbg !2828

land.lhs.true:                                    ; preds = %for.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2829, metadata !DIExpression()), !dbg !2831
  %23 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, align 8, !dbg !2831
  %tobool12 = icmp ne i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %23, null, !dbg !2831
  %lnot13 = xor i1 %tobool12, true, !dbg !2831
  %lnot14 = xor i1 %lnot13, true, !dbg !2831
  %lnot15 = xor i1 %lnot14, true, !dbg !2831
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !2831
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2831
  %24 = load i32, i32* %__ret_warn_on, align 4, !dbg !2832
  %tobool16 = icmp ne i32 %24, 0, !dbg !2832
  %lnot17 = xor i1 %tobool16, true, !dbg !2832
  %lnot19 = xor i1 %lnot17, true, !dbg !2832
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2832
  %conv = sext i32 %lnot.ext20 to i64, !dbg !2832
  %tobool21 = icmp ne i64 %conv, 0, !dbg !2832
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !2831

if.then22:                                        ; preds = %land.lhs.true
  br label %do.body23, !dbg !2832

do.body23:                                        ; preds = %if.then22
  br label %do.body24, !dbg !2834

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !2836

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !2834

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 323, i32 2305, i64 12) #8, !dbg !2838, !srcloc !2840
  br label %do.end27, !dbg !2838

do.end27:                                         ; preds = %do.body26
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 174) #8, !dbg !2841, !srcloc !2843
  br label %do.body28, !dbg !2834

do.body28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !2844

do.end29:                                         ; preds = %do.body28
  br label %do.end30, !dbg !2834

do.end30:                                         ; preds = %do.end29
  br label %if.end31, !dbg !2834

if.end31:                                         ; preds = %do.end30, %land.lhs.true
  %25 = load i32, i32* %__ret_warn_on, align 4, !dbg !2831
  %tobool33 = icmp ne i32 %25, 0, !dbg !2831
  %lnot34 = xor i1 %tobool33, true, !dbg !2831
  %lnot36 = xor i1 %lnot34, true, !dbg !2831
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !2831
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !2831
  store i64 %conv38, i64* %tmp32, align 8, !dbg !2832
  %26 = load i64, i64* %tmp32, align 8, !dbg !2831
  %tobool39 = icmp ne i64 %26, 0, !dbg !2846
  br i1 %tobool39, label %if.end72, label %if.then40, !dbg !2847

if.then40:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i8** %__mptr41, metadata !2848, metadata !DIExpression()), !dbg !2852
  %27 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @attribute_container_list, i32 0, i32 0), align 8, !dbg !2852
  %28 = bitcast %struct.list_head* %27 to i8*, !dbg !2852
  store i8* %28, i8** %__mptr41, align 8, !dbg !2852
  br label %do.body42, !dbg !2852

do.body42:                                        ; preds = %if.then40
  br label %do.end43, !dbg !2853

do.end43:                                         ; preds = %do.body42
  %29 = load i8*, i8** %__mptr41, align 8, !dbg !2852
  %add.ptr45 = getelementptr i8, i8* %29, i64 0, !dbg !2852
  %30 = bitcast i8* %add.ptr45 to %struct.attribute_container*, !dbg !2852
  store %struct.attribute_container* %30, %struct.attribute_container** %tmp44, align 8, !dbg !2853
  %31 = load %struct.attribute_container*, %struct.attribute_container** %tmp44, align 8, !dbg !2852
  store %struct.attribute_container* %31, %struct.attribute_container** %cont, align 8, !dbg !2855
  br label %for.cond46, !dbg !2855

for.cond46:                                       ; preds = %do.end68, %do.end43
  %32 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2856
  %node47 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %32, i32 0, i32 0, !dbg !2856
  %cmp48 = icmp eq %struct.list_head* %node47, @attribute_container_list, !dbg !2856
  %lnot50 = xor i1 %cmp48, true, !dbg !2856
  br i1 %lnot50, label %for.body52, label %for.end71, !dbg !2855

for.body52:                                       ; preds = %for.cond46
  %33 = load %struct.attribute_container*, %struct.attribute_container** %failed, align 8, !dbg !2858
  %34 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2861
  %cmp53 = icmp eq %struct.attribute_container* %33, %34, !dbg !2862
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !2863

if.then55:                                        ; preds = %for.body52
  br label %for.end71, !dbg !2864

if.end56:                                         ; preds = %for.body52
  %35 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2865
  %match57 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %35, i32 0, i32 5, !dbg !2867
  %36 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match57, align 8, !dbg !2867
  %37 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2868
  %38 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2869
  %call58 = call i32 %36(%struct.attribute_container* %37, %struct.device* %38) #7, !dbg !2865
  %tobool59 = icmp ne i32 %call58, 0, !dbg !2865
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !2870

if.then60:                                        ; preds = %if.end56
  br label %for.inc63, !dbg !2871

if.end61:                                         ; preds = %if.end56
  %39 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2872
  %40 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2873
  %41 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, align 8, !dbg !2874
  %call62 = call i32 @do_attribute_container_device_trigger_safe(%struct.device* %39, %struct.attribute_container* %40, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %41, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* null) #7, !dbg !2875
  br label %for.inc63, !dbg !2876

for.inc63:                                        ; preds = %if.end61, %if.then60
  call void @llvm.dbg.declare(metadata i8** %__mptr64, metadata !2877, metadata !DIExpression()), !dbg !2879
  %42 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !2879
  %node65 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %42, i32 0, i32 0, !dbg !2879
  %next66 = getelementptr inbounds %struct.list_head, %struct.list_head* %node65, i32 0, i32 0, !dbg !2879
  %43 = load %struct.list_head*, %struct.list_head** %next66, align 8, !dbg !2879
  %44 = bitcast %struct.list_head* %43 to i8*, !dbg !2879
  store i8* %44, i8** %__mptr64, align 8, !dbg !2879
  br label %do.body67, !dbg !2879

do.body67:                                        ; preds = %for.inc63
  br label %do.end68, !dbg !2880

do.end68:                                         ; preds = %do.body67
  %45 = load i8*, i8** %__mptr64, align 8, !dbg !2879
  %add.ptr70 = getelementptr i8, i8* %45, i64 0, !dbg !2879
  %46 = bitcast i8* %add.ptr70 to %struct.attribute_container*, !dbg !2879
  store %struct.attribute_container* %46, %struct.attribute_container** %tmp69, align 8, !dbg !2880
  %47 = load %struct.attribute_container*, %struct.attribute_container** %tmp69, align 8, !dbg !2879
  store %struct.attribute_container* %47, %struct.attribute_container** %cont, align 8, !dbg !2856
  br label %for.cond46, !dbg !2856, !llvm.loop !2882

for.end71:                                        ; preds = %if.then55, %for.cond46
  br label %if.end72, !dbg !2884

if.end72:                                         ; preds = %for.end71, %if.end31, %for.end
  call void @mutex_unlock(%struct.mutex* @attribute_container_mutex) #7, !dbg !2885
  %48 = load i32, i32* %ret, align 4, !dbg !2886
  ret i32 %48, !dbg !2887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @do_attribute_container_device_trigger_safe(%struct.device* %dev, %struct.attribute_container* %cont, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %undo) #0 !dbg !2888 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %cont.addr = alloca %struct.attribute_container*, align 8
  %fn.addr = alloca i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, align 8
  %undo.addr = alloca i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, align 8
  %ret = alloca i32, align 4
  %ic = alloca %struct.internal_container*, align 8
  %failed = alloca %struct.internal_container*, align 8
  %iter = alloca %struct.klist_iter, align 8
  %n = alloca %struct.klist_node*, align 8
  %tmp = alloca i8*, align 8
  %__mptr = alloca i8*, align 8
  %tmp4 = alloca %struct.internal_container*, align 8
  %tmp5 = alloca i8*, align 8
  %n19 = alloca %struct.klist_node*, align 8
  %tmp21 = alloca i8*, align 8
  %__mptr24 = alloca i8*, align 8
  %tmp27 = alloca %struct.internal_container*, align 8
  %tmp30 = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !2893, metadata !DIExpression()), !dbg !2894
  store i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, metadata !2895, metadata !DIExpression()), !dbg !2896
  store i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %undo, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, metadata !2897, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.declare(metadata %struct.internal_container** %failed, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.declare(metadata %struct.klist_iter* %iter, metadata !2905, metadata !DIExpression()), !dbg !2906
  %0 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2907
  %call = call i32 @attribute_container_no_classdevs(%struct.attribute_container* %0) #7, !dbg !2909
  %tobool = icmp ne i32 %call, 0, !dbg !2909
  br i1 %tobool, label %if.then, label %if.end, !dbg !2910

if.then:                                          ; preds = %entry
  %1 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !2911
  %2 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2912
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2913
  %call1 = call i32 %1(%struct.attribute_container* %2, %struct.device* %3, %struct.device* null) #7, !dbg !2911
  store i32 %call1, i32* %retval, align 4, !dbg !2914
  br label %return, !dbg !2914

if.end:                                           ; preds = %entry
  %4 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2915
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %4, i32 0, i32 1, !dbg !2915
  call void @klist_iter_init(%struct.klist* %containers, %struct.klist_iter* %iter) #7, !dbg !2915
  br label %for.cond, !dbg !2915

for.cond:                                         ; preds = %if.end13, %if.end
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n, metadata !2917, metadata !DIExpression()), !dbg !2920
  %call2 = call %struct.klist_node* @klist_next(%struct.klist_iter* %iter) #7, !dbg !2920
  store %struct.klist_node* %call2, %struct.klist_node** %n, align 8, !dbg !2920
  %5 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !2920
  %tobool3 = icmp ne %struct.klist_node* %5, null, !dbg !2920
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !2920

cond.true:                                        ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2921, metadata !DIExpression()), !dbg !2923
  %6 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !2923
  %7 = bitcast %struct.klist_node* %6 to i8*, !dbg !2923
  store i8* %7, i8** %__mptr, align 8, !dbg !2923
  br label %do.body, !dbg !2923

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2924

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2923
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2923
  %9 = bitcast i8* %add.ptr to %struct.internal_container*, !dbg !2923
  store %struct.internal_container* %9, %struct.internal_container** %tmp4, align 8, !dbg !2924
  %10 = load %struct.internal_container*, %struct.internal_container** %tmp4, align 8, !dbg !2923
  %11 = bitcast %struct.internal_container* %10 to i8*, !dbg !2920
  br label %cond.end, !dbg !2920

cond.false:                                       ; preds = %for.cond
  call void @klist_iter_exit(%struct.klist_iter* %iter) #7, !dbg !2926
  store i8* null, i8** %tmp5, align 8, !dbg !2926
  %12 = load i8*, i8** %tmp5, align 8, !dbg !2926
  br label %cond.end, !dbg !2920

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi i8* [ %11, %do.end ], [ %12, %cond.false ], !dbg !2920
  store i8* %cond, i8** %tmp, align 8, !dbg !2920
  %13 = load i8*, i8** %tmp, align 8, !dbg !2920
  %14 = bitcast i8* %13 to %struct.internal_container*, !dbg !2928
  store %struct.internal_container* %14, %struct.internal_container** %ic, align 8, !dbg !2928
  %cmp = icmp ne %struct.internal_container* %14, null, !dbg !2928
  br i1 %cmp, label %for.body, label %for.end, !dbg !2915

for.body:                                         ; preds = %cond.end
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2929
  %16 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2932
  %classdev = getelementptr inbounds %struct.internal_container, %struct.internal_container* %16, i32 0, i32 2, !dbg !2933
  %parent = getelementptr inbounds %struct.device, %struct.device* %classdev, i32 0, i32 1, !dbg !2934
  %17 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2934
  %cmp6 = icmp eq %struct.device* %15, %17, !dbg !2935
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !2936

if.then7:                                         ; preds = %for.body
  %18 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !2937
  %19 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2939
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2940
  %21 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2941
  %classdev8 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %21, i32 0, i32 2, !dbg !2942
  %call9 = call i32 %18(%struct.attribute_container* %19, %struct.device* %20, %struct.device* %classdev8) #7, !dbg !2937
  store i32 %call9, i32* %ret, align 4, !dbg !2943
  %22 = load i32, i32* %ret, align 4, !dbg !2944
  %tobool10 = icmp ne i32 %22, 0, !dbg !2944
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2946

if.then11:                                        ; preds = %if.then7
  %23 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2947
  store %struct.internal_container* %23, %struct.internal_container** %failed, align 8, !dbg !2949
  call void @klist_iter_exit(%struct.klist_iter* %iter) #7, !dbg !2950
  br label %fail, !dbg !2951

if.end12:                                         ; preds = %if.then7
  br label %if.end13, !dbg !2952

if.end13:                                         ; preds = %if.end12, %for.body
  br label %for.cond, !dbg !2928, !llvm.loop !2953

for.end:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !2955
  br label %return, !dbg !2955

fail:                                             ; preds = %if.then11
  call void @llvm.dbg.label(metadata !2956), !dbg !2957
  %24 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, align 8, !dbg !2958
  %tobool14 = icmp ne i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %24, null, !dbg !2958
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !2960

if.then15:                                        ; preds = %fail
  %25 = load i32, i32* %ret, align 4, !dbg !2961
  store i32 %25, i32* %retval, align 4, !dbg !2962
  br label %return, !dbg !2962

if.end16:                                         ; preds = %fail
  %26 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2963
  %containers17 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %26, i32 0, i32 1, !dbg !2963
  call void @klist_iter_init(%struct.klist* %containers17, %struct.klist_iter* %iter) #7, !dbg !2963
  br label %for.cond18, !dbg !2963

for.cond18:                                       ; preds = %if.end44, %if.end16
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n19, metadata !2965, metadata !DIExpression()), !dbg !2968
  %call20 = call %struct.klist_node* @klist_next(%struct.klist_iter* %iter) #7, !dbg !2968
  store %struct.klist_node* %call20, %struct.klist_node** %n19, align 8, !dbg !2968
  %27 = load %struct.klist_node*, %struct.klist_node** %n19, align 8, !dbg !2968
  %tobool22 = icmp ne %struct.klist_node* %27, null, !dbg !2968
  br i1 %tobool22, label %cond.true23, label %cond.false29, !dbg !2968

cond.true23:                                      ; preds = %for.cond18
  call void @llvm.dbg.declare(metadata i8** %__mptr24, metadata !2969, metadata !DIExpression()), !dbg !2971
  %28 = load %struct.klist_node*, %struct.klist_node** %n19, align 8, !dbg !2971
  %29 = bitcast %struct.klist_node* %28 to i8*, !dbg !2971
  store i8* %29, i8** %__mptr24, align 8, !dbg !2971
  br label %do.body25, !dbg !2971

do.body25:                                        ; preds = %cond.true23
  br label %do.end26, !dbg !2972

do.end26:                                         ; preds = %do.body25
  %30 = load i8*, i8** %__mptr24, align 8, !dbg !2971
  %add.ptr28 = getelementptr i8, i8* %30, i64 0, !dbg !2971
  %31 = bitcast i8* %add.ptr28 to %struct.internal_container*, !dbg !2971
  store %struct.internal_container* %31, %struct.internal_container** %tmp27, align 8, !dbg !2972
  %32 = load %struct.internal_container*, %struct.internal_container** %tmp27, align 8, !dbg !2971
  %33 = bitcast %struct.internal_container* %32 to i8*, !dbg !2968
  br label %cond.end31, !dbg !2968

cond.false29:                                     ; preds = %for.cond18
  call void @klist_iter_exit(%struct.klist_iter* %iter) #7, !dbg !2974
  store i8* null, i8** %tmp30, align 8, !dbg !2974
  %34 = load i8*, i8** %tmp30, align 8, !dbg !2974
  br label %cond.end31, !dbg !2968

cond.end31:                                       ; preds = %cond.false29, %do.end26
  %cond32 = phi i8* [ %33, %do.end26 ], [ %34, %cond.false29 ], !dbg !2968
  store i8* %cond32, i8** %tmp21, align 8, !dbg !2968
  %35 = load i8*, i8** %tmp21, align 8, !dbg !2968
  %36 = bitcast i8* %35 to %struct.internal_container*, !dbg !2976
  store %struct.internal_container* %36, %struct.internal_container** %ic, align 8, !dbg !2976
  %cmp33 = icmp ne %struct.internal_container* %36, null, !dbg !2976
  br i1 %cmp33, label %for.body34, label %for.end45, !dbg !2963

for.body34:                                       ; preds = %cond.end31
  %37 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2977
  %38 = load %struct.internal_container*, %struct.internal_container** %failed, align 8, !dbg !2980
  %cmp35 = icmp eq %struct.internal_container* %37, %38, !dbg !2981
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !2982

if.then36:                                        ; preds = %for.body34
  call void @klist_iter_exit(%struct.klist_iter* %iter) #7, !dbg !2983
  br label %for.end45, !dbg !2985

if.end37:                                         ; preds = %for.body34
  %39 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2986
  %40 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2988
  %classdev38 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %40, i32 0, i32 2, !dbg !2989
  %parent39 = getelementptr inbounds %struct.device, %struct.device* %classdev38, i32 0, i32 1, !dbg !2990
  %41 = load %struct.device*, %struct.device** %parent39, align 8, !dbg !2990
  %cmp40 = icmp eq %struct.device* %39, %41, !dbg !2991
  br i1 %cmp40, label %if.then41, label %if.end44, !dbg !2992

if.then41:                                        ; preds = %if.end37
  %42 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %undo.addr, align 8, !dbg !2993
  %43 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2994
  %44 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2995
  %45 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !2996
  %classdev42 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %45, i32 0, i32 2, !dbg !2997
  %call43 = call i32 %42(%struct.attribute_container* %43, %struct.device* %44, %struct.device* %classdev42) #7, !dbg !2993
  br label %if.end44, !dbg !2993

if.end44:                                         ; preds = %if.then41, %if.end37
  br label %for.cond18, !dbg !2976, !llvm.loop !2998

for.end45:                                        ; preds = %if.then36, %cond.end31
  %46 = load i32, i32* %ret, align 4, !dbg !3000
  store i32 %46, i32* %retval, align 4, !dbg !3001
  br label %return, !dbg !3001

return:                                           ; preds = %for.end45, %if.then15, %for.end, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !3002
  ret i32 %47, !dbg !3002
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @attribute_container_device_trigger(%struct.device* %dev, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn) #0 !dbg !3003 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %fn.addr = alloca i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, align 8
  %cont = alloca %struct.attribute_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.attribute_container*, align 8
  %ic = alloca %struct.internal_container*, align 8
  %iter = alloca %struct.klist_iter, align 8
  %n = alloca %struct.klist_node*, align 8
  %tmp8 = alloca i8*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp13 = alloca %struct.internal_container*, align 8
  %tmp15 = alloca i8*, align 8
  %__mptr23 = alloca i8*, align 8
  %tmp27 = alloca %struct.attribute_container*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  store i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* %fn, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @mutex_lock(%struct.mutex* @attribute_container_mutex) #7, !dbg !3010
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3011, metadata !DIExpression()), !dbg !3014
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @attribute_container_list, i32 0, i32 0), align 8, !dbg !3014
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !3014
  store i8* %1, i8** %__mptr, align 8, !dbg !3014
  br label %do.body, !dbg !3014

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3015

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3014
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3014
  %3 = bitcast i8* %add.ptr to %struct.attribute_container*, !dbg !3014
  store %struct.attribute_container* %3, %struct.attribute_container** %tmp, align 8, !dbg !3015
  %4 = load %struct.attribute_container*, %struct.attribute_container** %tmp, align 8, !dbg !3014
  store %struct.attribute_container* %4, %struct.attribute_container** %cont, align 8, !dbg !3017
  br label %for.cond, !dbg !3017

for.cond:                                         ; preds = %do.end26, %do.end
  %5 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3018
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %5, i32 0, i32 0, !dbg !3018
  %cmp = icmp eq %struct.list_head* %node, @attribute_container_list, !dbg !3018
  %lnot = xor i1 %cmp, true, !dbg !3018
  br i1 %lnot, label %for.body, label %for.end29, !dbg !3017

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata %struct.klist_iter* %iter, metadata !3023, metadata !DIExpression()), !dbg !3024
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3025
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %6, i32 0, i32 5, !dbg !3027
  %7 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8, !dbg !3027
  %8 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3028
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3029
  %call = call i32 %7(%struct.attribute_container* %8, %struct.device* %9) #7, !dbg !3025
  %tobool = icmp ne i32 %call, 0, !dbg !3025
  br i1 %tobool, label %if.end, label %if.then, !dbg !3030

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3031

if.end:                                           ; preds = %for.body
  %10 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3032
  %call1 = call i32 @attribute_container_no_classdevs(%struct.attribute_container* %10) #7, !dbg !3034
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3034
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3035

if.then3:                                         ; preds = %if.end
  %11 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !3036
  %12 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3038
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3039
  %call4 = call i32 %11(%struct.attribute_container* %12, %struct.device* %13, %struct.device* null) #7, !dbg !3036
  br label %for.inc, !dbg !3040

if.end5:                                          ; preds = %if.end
  %14 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3041
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %14, i32 0, i32 1, !dbg !3041
  call void @klist_iter_init(%struct.klist* %containers, %struct.klist_iter* %iter) #7, !dbg !3041
  br label %for.cond6, !dbg !3041

for.cond6:                                        ; preds = %if.end22, %if.end5
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n, metadata !3043, metadata !DIExpression()), !dbg !3046
  %call7 = call %struct.klist_node* @klist_next(%struct.klist_iter* %iter) #7, !dbg !3046
  store %struct.klist_node* %call7, %struct.klist_node** %n, align 8, !dbg !3046
  %15 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3046
  %tobool9 = icmp ne %struct.klist_node* %15, null, !dbg !3046
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !3046

cond.true:                                        ; preds = %for.cond6
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !3047, metadata !DIExpression()), !dbg !3049
  %16 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3049
  %17 = bitcast %struct.klist_node* %16 to i8*, !dbg !3049
  store i8* %17, i8** %__mptr10, align 8, !dbg !3049
  br label %do.body11, !dbg !3049

do.body11:                                        ; preds = %cond.true
  br label %do.end12, !dbg !3050

do.end12:                                         ; preds = %do.body11
  %18 = load i8*, i8** %__mptr10, align 8, !dbg !3049
  %add.ptr14 = getelementptr i8, i8* %18, i64 0, !dbg !3049
  %19 = bitcast i8* %add.ptr14 to %struct.internal_container*, !dbg !3049
  store %struct.internal_container* %19, %struct.internal_container** %tmp13, align 8, !dbg !3050
  %20 = load %struct.internal_container*, %struct.internal_container** %tmp13, align 8, !dbg !3049
  %21 = bitcast %struct.internal_container* %20 to i8*, !dbg !3046
  br label %cond.end, !dbg !3046

cond.false:                                       ; preds = %for.cond6
  call void @klist_iter_exit(%struct.klist_iter* %iter) #7, !dbg !3052
  store i8* null, i8** %tmp15, align 8, !dbg !3052
  %22 = load i8*, i8** %tmp15, align 8, !dbg !3052
  br label %cond.end, !dbg !3046

cond.end:                                         ; preds = %cond.false, %do.end12
  %cond = phi i8* [ %21, %do.end12 ], [ %22, %cond.false ], !dbg !3046
  store i8* %cond, i8** %tmp8, align 8, !dbg !3046
  %23 = load i8*, i8** %tmp8, align 8, !dbg !3046
  %24 = bitcast i8* %23 to %struct.internal_container*, !dbg !3054
  store %struct.internal_container* %24, %struct.internal_container** %ic, align 8, !dbg !3054
  %cmp16 = icmp ne %struct.internal_container* %24, null, !dbg !3054
  br i1 %cmp16, label %for.body17, label %for.end, !dbg !3041

for.body17:                                       ; preds = %cond.end
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3055
  %26 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !3058
  %classdev = getelementptr inbounds %struct.internal_container, %struct.internal_container* %26, i32 0, i32 2, !dbg !3059
  %parent = getelementptr inbounds %struct.device, %struct.device* %classdev, i32 0, i32 1, !dbg !3060
  %27 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3060
  %cmp18 = icmp eq %struct.device* %25, %27, !dbg !3061
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !3062

if.then19:                                        ; preds = %for.body17
  %28 = load i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)** %fn.addr, align 8, !dbg !3063
  %29 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3064
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3065
  %31 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !3066
  %classdev20 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %31, i32 0, i32 2, !dbg !3067
  %call21 = call i32 %28(%struct.attribute_container* %29, %struct.device* %30, %struct.device* %classdev20) #7, !dbg !3063
  br label %if.end22, !dbg !3063

if.end22:                                         ; preds = %if.then19, %for.body17
  br label %for.cond6, !dbg !3054, !llvm.loop !3068

for.end:                                          ; preds = %cond.end
  br label %for.inc, !dbg !3070

for.inc:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !3071, metadata !DIExpression()), !dbg !3073
  %32 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3073
  %node24 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %32, i32 0, i32 0, !dbg !3073
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node24, i32 0, i32 0, !dbg !3073
  %33 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3073
  %34 = bitcast %struct.list_head* %33 to i8*, !dbg !3073
  store i8* %34, i8** %__mptr23, align 8, !dbg !3073
  br label %do.body25, !dbg !3073

do.body25:                                        ; preds = %for.inc
  br label %do.end26, !dbg !3074

do.end26:                                         ; preds = %do.body25
  %35 = load i8*, i8** %__mptr23, align 8, !dbg !3073
  %add.ptr28 = getelementptr i8, i8* %35, i64 0, !dbg !3073
  %36 = bitcast i8* %add.ptr28 to %struct.attribute_container*, !dbg !3073
  store %struct.attribute_container* %36, %struct.attribute_container** %tmp27, align 8, !dbg !3074
  %37 = load %struct.attribute_container*, %struct.attribute_container** %tmp27, align 8, !dbg !3073
  store %struct.attribute_container* %37, %struct.attribute_container** %cont, align 8, !dbg !3018
  br label %for.cond, !dbg !3018, !llvm.loop !3076

for.end29:                                        ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @attribute_container_mutex) #7, !dbg !3078
  ret void, !dbg !3079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @attribute_container_trigger(%struct.device* %dev, i32 (%struct.attribute_container*, %struct.device*)* %fn) #0 !dbg !3080 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %fn.addr = alloca i32 (%struct.attribute_container*, %struct.device*)*, align 8
  %cont = alloca %struct.attribute_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.attribute_container*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.attribute_container*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3083, metadata !DIExpression()), !dbg !3084
  store i32 (%struct.attribute_container*, %struct.device*)* %fn, i32 (%struct.attribute_container*, %struct.device*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.attribute_container*, %struct.device*)** %fn.addr, metadata !3085, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @mutex_lock(%struct.mutex* @attribute_container_mutex) #7, !dbg !3089
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3090, metadata !DIExpression()), !dbg !3093
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @attribute_container_list, i32 0, i32 0), align 8, !dbg !3093
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !3093
  store i8* %1, i8** %__mptr, align 8, !dbg !3093
  br label %do.body, !dbg !3093

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3094

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3093
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3093
  %3 = bitcast i8* %add.ptr to %struct.attribute_container*, !dbg !3093
  store %struct.attribute_container* %3, %struct.attribute_container** %tmp, align 8, !dbg !3094
  %4 = load %struct.attribute_container*, %struct.attribute_container** %tmp, align 8, !dbg !3093
  store %struct.attribute_container* %4, %struct.attribute_container** %cont, align 8, !dbg !3096
  br label %for.cond, !dbg !3096

for.cond:                                         ; preds = %do.end5, %do.end
  %5 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3097
  %node = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %5, i32 0, i32 0, !dbg !3097
  %cmp = icmp eq %struct.list_head* %node, @attribute_container_list, !dbg !3097
  %lnot = xor i1 %cmp, true, !dbg !3097
  br i1 %lnot, label %for.body, label %for.end, !dbg !3096

for.body:                                         ; preds = %for.cond
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3099
  %match = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %6, i32 0, i32 5, !dbg !3102
  %7 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %match, align 8, !dbg !3102
  %8 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3103
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3104
  %call = call i32 %7(%struct.attribute_container* %8, %struct.device* %9) #7, !dbg !3099
  %tobool = icmp ne i32 %call, 0, !dbg !3099
  br i1 %tobool, label %if.then, label %if.end, !dbg !3105

if.then:                                          ; preds = %for.body
  %10 = load i32 (%struct.attribute_container*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*)** %fn.addr, align 8, !dbg !3106
  %11 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3107
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3108
  %call1 = call i32 %10(%struct.attribute_container* %11, %struct.device* %12) #7, !dbg !3106
  br label %if.end, !dbg !3106

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3109

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !3110, metadata !DIExpression()), !dbg !3112
  %13 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3112
  %node3 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %13, i32 0, i32 0, !dbg !3112
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node3, i32 0, i32 0, !dbg !3112
  %14 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3112
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !3112
  store i8* %15, i8** %__mptr2, align 8, !dbg !3112
  br label %do.body4, !dbg !3112

do.body4:                                         ; preds = %for.inc
  br label %do.end5, !dbg !3113

do.end5:                                          ; preds = %do.body4
  %16 = load i8*, i8** %__mptr2, align 8, !dbg !3112
  %add.ptr7 = getelementptr i8, i8* %16, i64 0, !dbg !3112
  %17 = bitcast i8* %add.ptr7 to %struct.attribute_container*, !dbg !3112
  store %struct.attribute_container* %17, %struct.attribute_container** %tmp6, align 8, !dbg !3113
  %18 = load %struct.attribute_container*, %struct.attribute_container** %tmp6, align 8, !dbg !3112
  store %struct.attribute_container* %18, %struct.attribute_container** %cont, align 8, !dbg !3097
  br label %for.cond, !dbg !3097, !llvm.loop !3115

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @attribute_container_mutex) #7, !dbg !3117
  ret void, !dbg !3118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @attribute_container_add_attrs(%struct.device* %classdev) #0 !dbg !3119 {
entry:
  %retval = alloca i32, align 4
  %classdev.addr = alloca %struct.device*, align 8
  %cont = alloca %struct.attribute_container*, align 8
  %attrs = alloca %struct.device_attribute**, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont, metadata !3122, metadata !DIExpression()), !dbg !3123
  %0 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !3124
  %call = call %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* %0) #7, !dbg !3125
  store %struct.attribute_container* %call, %struct.attribute_container** %cont, align 8, !dbg !3123
  call void @llvm.dbg.declare(metadata %struct.device_attribute*** %attrs, metadata !3126, metadata !DIExpression()), !dbg !3127
  %1 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3128
  %attrs1 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %1, i32 0, i32 4, !dbg !3129
  %2 = load %struct.device_attribute**, %struct.device_attribute*** %attrs1, align 8, !dbg !3129
  store %struct.device_attribute** %2, %struct.device_attribute*** %attrs, align 8, !dbg !3127
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3132, metadata !DIExpression()), !dbg !3133
  br label %do.body, !dbg !3134

do.body:                                          ; preds = %entry
  %3 = load %struct.device_attribute**, %struct.device_attribute*** %attrs, align 8, !dbg !3135
  %tobool = icmp ne %struct.device_attribute** %3, null, !dbg !3135
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3135

land.rhs:                                         ; preds = %do.body
  %4 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3135
  %grp = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %4, i32 0, i32 3, !dbg !3135
  %5 = load %struct.attribute_group*, %struct.attribute_group** %grp, align 8, !dbg !3135
  %tobool2 = icmp ne %struct.attribute_group* %5, null, !dbg !3135
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %6 = phi i1 [ false, %do.body ], [ %tobool2, %land.rhs ], !dbg !3138
  %lnot = xor i1 %6, true, !dbg !3135
  %lnot3 = xor i1 %lnot, true, !dbg !3135
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3135
  %conv = sext i32 %lnot.ext to i64, !dbg !3135
  %tobool4 = icmp ne i64 %conv, 0, !dbg !3135
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3139

if.then:                                          ; preds = %land.end
  br label %do.body5, !dbg !3135

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !3140

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !3142

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !3140

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 424, i32 0, i64 12) #8, !dbg !3144, !srcloc !3146
  br label %do.end8, !dbg !3144

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !3140

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 182) #8, !dbg !3147, !srcloc !3150
  unreachable, !dbg !3151

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !3140

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !3140

if.end:                                           ; preds = %do.end11, %land.end
  br label %do.end12, !dbg !3139

do.end12:                                         ; preds = %if.end
  %7 = load %struct.device_attribute**, %struct.device_attribute*** %attrs, align 8, !dbg !3152
  %tobool13 = icmp ne %struct.device_attribute** %7, null, !dbg !3152
  br i1 %tobool13, label %if.end17, label %land.lhs.true, !dbg !3154

land.lhs.true:                                    ; preds = %do.end12
  %8 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3155
  %grp14 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %8, i32 0, i32 3, !dbg !3156
  %9 = load %struct.attribute_group*, %struct.attribute_group** %grp14, align 8, !dbg !3156
  %tobool15 = icmp ne %struct.attribute_group* %9, null, !dbg !3155
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !3157

if.then16:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !3158
  br label %return, !dbg !3158

if.end17:                                         ; preds = %land.lhs.true, %do.end12
  %10 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3159
  %grp18 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %10, i32 0, i32 3, !dbg !3161
  %11 = load %struct.attribute_group*, %struct.attribute_group** %grp18, align 8, !dbg !3161
  %tobool19 = icmp ne %struct.attribute_group* %11, null, !dbg !3159
  br i1 %tobool19, label %if.then20, label %if.end23, !dbg !3162

if.then20:                                        ; preds = %if.end17
  %12 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !3163
  %kobj = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0, !dbg !3164
  %13 = load %struct.attribute_container*, %struct.attribute_container** %cont, align 8, !dbg !3165
  %grp21 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %13, i32 0, i32 3, !dbg !3166
  %14 = load %struct.attribute_group*, %struct.attribute_group** %grp21, align 8, !dbg !3166
  %call22 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* %14) #7, !dbg !3167
  store i32 %call22, i32* %retval, align 4, !dbg !3168
  br label %return, !dbg !3168

if.end23:                                         ; preds = %if.end17
  store i32 0, i32* %i, align 4, !dbg !3169
  br label %for.cond, !dbg !3171

for.cond:                                         ; preds = %for.inc, %if.end23
  %15 = load %struct.device_attribute**, %struct.device_attribute*** %attrs, align 8, !dbg !3172
  %16 = load i32, i32* %i, align 4, !dbg !3174
  %idxprom = sext i32 %16 to i64, !dbg !3172
  %arrayidx = getelementptr %struct.device_attribute*, %struct.device_attribute** %15, i64 %idxprom, !dbg !3172
  %17 = load %struct.device_attribute*, %struct.device_attribute** %arrayidx, align 8, !dbg !3172
  %tobool24 = icmp ne %struct.device_attribute* %17, null, !dbg !3175
  br i1 %tobool24, label %for.body, label %for.end, !dbg !3175

for.body:                                         ; preds = %for.cond
  br label %do.body25, !dbg !3176

do.body25:                                        ; preds = %for.body
  br label %do.end26, !dbg !3178

do.end26:                                         ; preds = %do.body25
  %18 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !3180
  %19 = load %struct.device_attribute**, %struct.device_attribute*** %attrs, align 8, !dbg !3181
  %20 = load i32, i32* %i, align 4, !dbg !3182
  %idxprom27 = sext i32 %20 to i64, !dbg !3181
  %arrayidx28 = getelementptr %struct.device_attribute*, %struct.device_attribute** %19, i64 %idxprom27, !dbg !3181
  %21 = load %struct.device_attribute*, %struct.device_attribute** %arrayidx28, align 8, !dbg !3181
  %call29 = call i32 @device_create_file(%struct.device* %18, %struct.device_attribute* %21) #7, !dbg !3183
  store i32 %call29, i32* %error, align 4, !dbg !3184
  %22 = load i32, i32* %error, align 4, !dbg !3185
  %tobool30 = icmp ne i32 %22, 0, !dbg !3185
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !3187

if.then31:                                        ; preds = %do.end26
  %23 = load i32, i32* %error, align 4, !dbg !3188
  store i32 %23, i32* %retval, align 4, !dbg !3189
  br label %return, !dbg !3189

if.end32:                                         ; preds = %do.end26
  br label %for.inc, !dbg !3190

for.inc:                                          ; preds = %if.end32
  %24 = load i32, i32* %i, align 4, !dbg !3191
  %inc = add i32 %24, 1, !dbg !3191
  store i32 %inc, i32* %i, align 4, !dbg !3191
  br label %for.cond, !dbg !3192, !llvm.loop !3193

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3195
  br label %return, !dbg !3195

return:                                           ; preds = %for.end, %if.then31, %if.then20, %if.then16
  %25 = load i32, i32* %retval, align 4, !dbg !3196
  ret i32 %25, !dbg !3196
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @attribute_container_add_class_device_adapter(%struct.attribute_container* %cont, %struct.device* %dev, %struct.device* %classdev) #0 !dbg !3197 {
entry:
  %cont.addr = alloca %struct.attribute_container*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %classdev.addr = alloca %struct.device*, align 8
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !3198, metadata !DIExpression()), !dbg !3199
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3200, metadata !DIExpression()), !dbg !3201
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !3202, metadata !DIExpression()), !dbg !3203
  %0 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !3204
  %call = call i32 @attribute_container_add_class_device(%struct.device* %0) #7, !dbg !3205
  ret i32 %call, !dbg !3206
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noredzone
declare dso_local void @device_remove_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @attribute_container_class_device_del(%struct.device* %classdev) #0 !dbg !3207 {
entry:
  %classdev.addr = alloca %struct.device*, align 8
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  %0 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !3210
  call void @attribute_container_remove_attrs(%struct.device* %0) #7, !dbg !3211
  %1 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !3212
  call void @device_del(%struct.device* %1) #7, !dbg !3213
  ret void, !dbg !3214
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device* @attribute_container_find_class_device(%struct.attribute_container* %cont, %struct.device* %dev) #0 !dbg !3215 {
entry:
  %cont.addr = alloca %struct.attribute_container*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %cdev = alloca %struct.device*, align 8
  %ic = alloca %struct.internal_container*, align 8
  %iter = alloca %struct.klist_iter, align 8
  %n = alloca %struct.klist_node*, align 8
  %tmp = alloca i8*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.internal_container*, align 8
  %tmp2 = alloca i8*, align 8
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !3218, metadata !DIExpression()), !dbg !3219
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3220, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.declare(metadata %struct.device** %cdev, metadata !3222, metadata !DIExpression()), !dbg !3223
  store %struct.device* null, %struct.device** %cdev, align 8, !dbg !3223
  call void @llvm.dbg.declare(metadata %struct.internal_container** %ic, metadata !3224, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.declare(metadata %struct.klist_iter* %iter, metadata !3226, metadata !DIExpression()), !dbg !3227
  %0 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !3228
  %containers = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %0, i32 0, i32 1, !dbg !3228
  call void @klist_iter_init(%struct.klist* %containers, %struct.klist_iter* %iter) #7, !dbg !3228
  br label %for.cond, !dbg !3228

for.cond:                                         ; preds = %if.end, %entry
  call void @llvm.dbg.declare(metadata %struct.klist_node** %n, metadata !3230, metadata !DIExpression()), !dbg !3233
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* %iter) #7, !dbg !3233
  store %struct.klist_node* %call, %struct.klist_node** %n, align 8, !dbg !3233
  %1 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3233
  %tobool = icmp ne %struct.klist_node* %1, null, !dbg !3233
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3233

cond.true:                                        ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3234, metadata !DIExpression()), !dbg !3236
  %2 = load %struct.klist_node*, %struct.klist_node** %n, align 8, !dbg !3236
  %3 = bitcast %struct.klist_node* %2 to i8*, !dbg !3236
  store i8* %3, i8** %__mptr, align 8, !dbg !3236
  br label %do.body, !dbg !3236

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3237

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3236
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !3236
  %5 = bitcast i8* %add.ptr to %struct.internal_container*, !dbg !3236
  store %struct.internal_container* %5, %struct.internal_container** %tmp1, align 8, !dbg !3237
  %6 = load %struct.internal_container*, %struct.internal_container** %tmp1, align 8, !dbg !3236
  %7 = bitcast %struct.internal_container* %6 to i8*, !dbg !3233
  br label %cond.end, !dbg !3233

cond.false:                                       ; preds = %for.cond
  call void @klist_iter_exit(%struct.klist_iter* %iter) #7, !dbg !3239
  store i8* null, i8** %tmp2, align 8, !dbg !3239
  %8 = load i8*, i8** %tmp2, align 8, !dbg !3239
  br label %cond.end, !dbg !3233

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi i8* [ %7, %do.end ], [ %8, %cond.false ], !dbg !3233
  store i8* %cond, i8** %tmp, align 8, !dbg !3233
  %9 = load i8*, i8** %tmp, align 8, !dbg !3233
  %10 = bitcast i8* %9 to %struct.internal_container*, !dbg !3241
  store %struct.internal_container* %10, %struct.internal_container** %ic, align 8, !dbg !3241
  %cmp = icmp ne %struct.internal_container* %10, null, !dbg !3241
  br i1 %cmp, label %for.body, label %for.end, !dbg !3228

for.body:                                         ; preds = %cond.end
  %11 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !3242
  %classdev = getelementptr inbounds %struct.internal_container, %struct.internal_container* %11, i32 0, i32 2, !dbg !3245
  %parent = getelementptr inbounds %struct.device, %struct.device* %classdev, i32 0, i32 1, !dbg !3246
  %12 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3246
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3247
  %cmp3 = icmp eq %struct.device* %12, %13, !dbg !3248
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3249

if.then:                                          ; preds = %for.body
  %14 = load %struct.internal_container*, %struct.internal_container** %ic, align 8, !dbg !3250
  %classdev4 = getelementptr inbounds %struct.internal_container, %struct.internal_container* %14, i32 0, i32 2, !dbg !3252
  store %struct.device* %classdev4, %struct.device** %cdev, align 8, !dbg !3253
  call void @klist_iter_exit(%struct.klist_iter* %iter) #7, !dbg !3254
  br label %for.end, !dbg !3255

if.end:                                           ; preds = %for.body
  br label %for.cond, !dbg !3241, !llvm.loop !3256

for.end:                                          ; preds = %if.then, %cond.end
  %15 = load %struct.device*, %struct.device** %cdev, align 8, !dbg !3258
  ret %struct.device* %15, !dbg !3259
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3260 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3263, metadata !DIExpression()), !dbg !3264
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3265, metadata !DIExpression()), !dbg !3266
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3267, metadata !DIExpression()), !dbg !3268
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3269
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3271
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3272
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !3273
  br i1 %call, label %if.end, label %if.then, !dbg !3274

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3275

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3276
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3277
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3278
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3279
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3280
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3281
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3282
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3283
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3284
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3285
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3286
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3287
  br label %do.body, !dbg !3288

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3289

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3291

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3289

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3293
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3293
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3293
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3293
  br label %do.end7, !dbg !3293

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3289

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3296 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3299, metadata !DIExpression()), !dbg !3300
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3301, metadata !DIExpression()), !dbg !3302
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3303, metadata !DIExpression()), !dbg !3304
  ret i1 true, !dbg !3305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3306 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3307, metadata !DIExpression()), !dbg !3308
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3309
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !3311
  br i1 %call, label %if.end, label %if.then, !dbg !3312

if.then:                                          ; preds = %entry
  br label %return, !dbg !3313

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3314
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3315
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3315
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3316
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3317
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3317
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !3318
  br label %return, !dbg !3319

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3319
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3320 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3323, metadata !DIExpression()), !dbg !3324
  ret i1 true, !dbg !3325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3326 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3327, metadata !DIExpression()), !dbg !3328
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3329, metadata !DIExpression()), !dbg !3330
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3331
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3332
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3333
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3334
  br label %do.body, !dbg !3335

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3336

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3338

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3336

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3340
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3340
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3340
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3340
  br label %do.end5, !dbg !3340

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3336

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3342
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3343 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3347, metadata !DIExpression()), !dbg !3352
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3354, metadata !DIExpression()), !dbg !3355
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3356, metadata !DIExpression()), !dbg !3357
  %0 = load i64, i64* %size.addr, align 8, !dbg !3358
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3360
  br i1 %1, label %if.then, label %if.end447, !dbg !3361

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3362
  %tobool = icmp ne i64 %2, 0, !dbg !3362
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3365

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3366
  br label %return, !dbg !3366

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3367
  %cmp = icmp ult i64 %3, 4096, !dbg !3369
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3370

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3371
  br label %return, !dbg !3371

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub = sub i64 %4, 1, !dbg !3372
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3372
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3372

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub4 = sub i64 %6, 1, !dbg !3372
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3372
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3372

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub6 = sub i64 %8, 1, !dbg !3372
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3372
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3372

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3372

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub9 = sub i64 %9, 1, !dbg !3372
  %and = and i64 %sub9, -9223372036854775808, !dbg !3372
  %tobool10 = icmp ne i64 %and, 0, !dbg !3372
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3372

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3372

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub13 = sub i64 %10, 1, !dbg !3372
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3372
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3372
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3372

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3372

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub18 = sub i64 %11, 1, !dbg !3372
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3372
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3372
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3372

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3372

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub23 = sub i64 %12, 1, !dbg !3372
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3372
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3372
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3372

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3372

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub28 = sub i64 %13, 1, !dbg !3372
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3372
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3372
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3372

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3372

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub33 = sub i64 %14, 1, !dbg !3372
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3372
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3372
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3372

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3372

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub38 = sub i64 %15, 1, !dbg !3372
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3372
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3372
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3372

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3372

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub43 = sub i64 %16, 1, !dbg !3372
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3372
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3372
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3372

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3372

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub48 = sub i64 %17, 1, !dbg !3372
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3372
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3372
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3372

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3372

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub53 = sub i64 %18, 1, !dbg !3372
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3372
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3372
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3372

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3372

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub58 = sub i64 %19, 1, !dbg !3372
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3372
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3372
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3372

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3372

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub63 = sub i64 %20, 1, !dbg !3372
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3372
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3372
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3372

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3372

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub68 = sub i64 %21, 1, !dbg !3372
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3372
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3372
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3372

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3372

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub73 = sub i64 %22, 1, !dbg !3372
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3372
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3372
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3372

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3372

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub78 = sub i64 %23, 1, !dbg !3372
  %and79 = and i64 %sub78, 562949953421312, !dbg !3372
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3372
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3372

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3372

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub83 = sub i64 %24, 1, !dbg !3372
  %and84 = and i64 %sub83, 281474976710656, !dbg !3372
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3372
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3372

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3372

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub88 = sub i64 %25, 1, !dbg !3372
  %and89 = and i64 %sub88, 140737488355328, !dbg !3372
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3372
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3372

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3372

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub93 = sub i64 %26, 1, !dbg !3372
  %and94 = and i64 %sub93, 70368744177664, !dbg !3372
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3372
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3372

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3372

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub98 = sub i64 %27, 1, !dbg !3372
  %and99 = and i64 %sub98, 35184372088832, !dbg !3372
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3372
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3372

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3372

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub103 = sub i64 %28, 1, !dbg !3372
  %and104 = and i64 %sub103, 17592186044416, !dbg !3372
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3372
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3372

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3372

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub108 = sub i64 %29, 1, !dbg !3372
  %and109 = and i64 %sub108, 8796093022208, !dbg !3372
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3372
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3372

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3372

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub113 = sub i64 %30, 1, !dbg !3372
  %and114 = and i64 %sub113, 4398046511104, !dbg !3372
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3372
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3372

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3372

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub118 = sub i64 %31, 1, !dbg !3372
  %and119 = and i64 %sub118, 2199023255552, !dbg !3372
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3372
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3372

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3372

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub123 = sub i64 %32, 1, !dbg !3372
  %and124 = and i64 %sub123, 1099511627776, !dbg !3372
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3372
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3372

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3372

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub128 = sub i64 %33, 1, !dbg !3372
  %and129 = and i64 %sub128, 549755813888, !dbg !3372
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3372
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3372

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3372

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub133 = sub i64 %34, 1, !dbg !3372
  %and134 = and i64 %sub133, 274877906944, !dbg !3372
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3372
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3372

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3372

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub138 = sub i64 %35, 1, !dbg !3372
  %and139 = and i64 %sub138, 137438953472, !dbg !3372
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3372
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3372

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3372

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub143 = sub i64 %36, 1, !dbg !3372
  %and144 = and i64 %sub143, 68719476736, !dbg !3372
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3372
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3372

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3372

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub148 = sub i64 %37, 1, !dbg !3372
  %and149 = and i64 %sub148, 34359738368, !dbg !3372
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3372
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3372

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3372

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub153 = sub i64 %38, 1, !dbg !3372
  %and154 = and i64 %sub153, 17179869184, !dbg !3372
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3372
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3372

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3372

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub158 = sub i64 %39, 1, !dbg !3372
  %and159 = and i64 %sub158, 8589934592, !dbg !3372
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3372
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3372

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3372

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub163 = sub i64 %40, 1, !dbg !3372
  %and164 = and i64 %sub163, 4294967296, !dbg !3372
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3372
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3372

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3372

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub168 = sub i64 %41, 1, !dbg !3372
  %and169 = and i64 %sub168, 2147483648, !dbg !3372
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3372
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3372

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3372

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub173 = sub i64 %42, 1, !dbg !3372
  %and174 = and i64 %sub173, 1073741824, !dbg !3372
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3372
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3372

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3372

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub178 = sub i64 %43, 1, !dbg !3372
  %and179 = and i64 %sub178, 536870912, !dbg !3372
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3372
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3372

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3372

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub183 = sub i64 %44, 1, !dbg !3372
  %and184 = and i64 %sub183, 268435456, !dbg !3372
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3372
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3372

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3372

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub188 = sub i64 %45, 1, !dbg !3372
  %and189 = and i64 %sub188, 134217728, !dbg !3372
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3372
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3372

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3372

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub193 = sub i64 %46, 1, !dbg !3372
  %and194 = and i64 %sub193, 67108864, !dbg !3372
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3372
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3372

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3372

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub198 = sub i64 %47, 1, !dbg !3372
  %and199 = and i64 %sub198, 33554432, !dbg !3372
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3372
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3372

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3372

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub203 = sub i64 %48, 1, !dbg !3372
  %and204 = and i64 %sub203, 16777216, !dbg !3372
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3372
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3372

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3372

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub208 = sub i64 %49, 1, !dbg !3372
  %and209 = and i64 %sub208, 8388608, !dbg !3372
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3372
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3372

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3372

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub213 = sub i64 %50, 1, !dbg !3372
  %and214 = and i64 %sub213, 4194304, !dbg !3372
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3372
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3372

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3372

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub218 = sub i64 %51, 1, !dbg !3372
  %and219 = and i64 %sub218, 2097152, !dbg !3372
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3372
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3372

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3372

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub223 = sub i64 %52, 1, !dbg !3372
  %and224 = and i64 %sub223, 1048576, !dbg !3372
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3372
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3372

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3372

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub228 = sub i64 %53, 1, !dbg !3372
  %and229 = and i64 %sub228, 524288, !dbg !3372
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3372
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3372

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3372

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub233 = sub i64 %54, 1, !dbg !3372
  %and234 = and i64 %sub233, 262144, !dbg !3372
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3372
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3372

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3372

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub238 = sub i64 %55, 1, !dbg !3372
  %and239 = and i64 %sub238, 131072, !dbg !3372
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3372
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3372

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3372

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub243 = sub i64 %56, 1, !dbg !3372
  %and244 = and i64 %sub243, 65536, !dbg !3372
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3372
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3372

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3372

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub248 = sub i64 %57, 1, !dbg !3372
  %and249 = and i64 %sub248, 32768, !dbg !3372
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3372
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3372

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3372

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub253 = sub i64 %58, 1, !dbg !3372
  %and254 = and i64 %sub253, 16384, !dbg !3372
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3372
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3372

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3372

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub258 = sub i64 %59, 1, !dbg !3372
  %and259 = and i64 %sub258, 8192, !dbg !3372
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3372
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3372

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3372

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub263 = sub i64 %60, 1, !dbg !3372
  %and264 = and i64 %sub263, 4096, !dbg !3372
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3372
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3372

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3372

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub268 = sub i64 %61, 1, !dbg !3372
  %and269 = and i64 %sub268, 2048, !dbg !3372
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3372
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3372

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3372

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub273 = sub i64 %62, 1, !dbg !3372
  %and274 = and i64 %sub273, 1024, !dbg !3372
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3372
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3372

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3372

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub278 = sub i64 %63, 1, !dbg !3372
  %and279 = and i64 %sub278, 512, !dbg !3372
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3372
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3372

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3372

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub283 = sub i64 %64, 1, !dbg !3372
  %and284 = and i64 %sub283, 256, !dbg !3372
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3372
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3372

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3372

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub288 = sub i64 %65, 1, !dbg !3372
  %and289 = and i64 %sub288, 128, !dbg !3372
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3372
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3372

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3372

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub293 = sub i64 %66, 1, !dbg !3372
  %and294 = and i64 %sub293, 64, !dbg !3372
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3372
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3372

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3372

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub298 = sub i64 %67, 1, !dbg !3372
  %and299 = and i64 %sub298, 32, !dbg !3372
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3372
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3372

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3372

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub303 = sub i64 %68, 1, !dbg !3372
  %and304 = and i64 %sub303, 16, !dbg !3372
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3372
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3372

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3372

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub308 = sub i64 %69, 1, !dbg !3372
  %and309 = and i64 %sub308, 8, !dbg !3372
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3372
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3372

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3372

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub313 = sub i64 %70, 1, !dbg !3372
  %and314 = and i64 %sub313, 4, !dbg !3372
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3372
  %71 = zext i1 %tobool315 to i64, !dbg !3372
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3372
  br label %cond.end, !dbg !3372

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3372
  br label %cond.end317, !dbg !3372

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3372
  br label %cond.end319, !dbg !3372

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3372
  br label %cond.end321, !dbg !3372

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3372
  br label %cond.end323, !dbg !3372

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3372
  br label %cond.end325, !dbg !3372

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3372
  br label %cond.end327, !dbg !3372

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3372
  br label %cond.end329, !dbg !3372

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3372
  br label %cond.end331, !dbg !3372

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3372
  br label %cond.end333, !dbg !3372

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3372
  br label %cond.end335, !dbg !3372

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3372
  br label %cond.end337, !dbg !3372

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3372
  br label %cond.end339, !dbg !3372

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3372
  br label %cond.end341, !dbg !3372

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3372
  br label %cond.end343, !dbg !3372

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3372
  br label %cond.end345, !dbg !3372

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3372
  br label %cond.end347, !dbg !3372

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3372
  br label %cond.end349, !dbg !3372

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3372
  br label %cond.end351, !dbg !3372

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3372
  br label %cond.end353, !dbg !3372

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3372
  br label %cond.end355, !dbg !3372

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3372
  br label %cond.end357, !dbg !3372

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3372
  br label %cond.end359, !dbg !3372

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3372
  br label %cond.end361, !dbg !3372

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3372
  br label %cond.end363, !dbg !3372

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3372
  br label %cond.end365, !dbg !3372

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3372
  br label %cond.end367, !dbg !3372

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3372
  br label %cond.end369, !dbg !3372

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3372
  br label %cond.end371, !dbg !3372

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3372
  br label %cond.end373, !dbg !3372

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3372
  br label %cond.end375, !dbg !3372

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3372
  br label %cond.end377, !dbg !3372

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3372
  br label %cond.end379, !dbg !3372

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3372
  br label %cond.end381, !dbg !3372

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3372
  br label %cond.end383, !dbg !3372

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3372
  br label %cond.end385, !dbg !3372

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3372
  br label %cond.end387, !dbg !3372

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3372
  br label %cond.end389, !dbg !3372

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3372
  br label %cond.end391, !dbg !3372

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3372
  br label %cond.end393, !dbg !3372

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3372
  br label %cond.end395, !dbg !3372

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3372
  br label %cond.end397, !dbg !3372

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3372
  br label %cond.end399, !dbg !3372

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3372
  br label %cond.end401, !dbg !3372

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3372
  br label %cond.end403, !dbg !3372

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3372
  br label %cond.end405, !dbg !3372

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3372
  br label %cond.end407, !dbg !3372

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3372
  br label %cond.end409, !dbg !3372

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3372
  br label %cond.end411, !dbg !3372

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3372
  br label %cond.end413, !dbg !3372

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3372
  br label %cond.end415, !dbg !3372

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3372
  br label %cond.end417, !dbg !3372

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3372
  br label %cond.end419, !dbg !3372

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3372
  br label %cond.end421, !dbg !3372

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3372
  br label %cond.end423, !dbg !3372

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3372
  br label %cond.end425, !dbg !3372

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3372
  br label %cond.end427, !dbg !3372

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3372
  br label %cond.end429, !dbg !3372

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3372
  br label %cond.end431, !dbg !3372

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3372
  br label %cond.end433, !dbg !3372

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3372
  br label %cond.end435, !dbg !3372

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3372
  br label %cond.end437, !dbg !3372

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3372
  br label %cond.end440, !dbg !3372

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3372

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3372
  br label %cond.end444, !dbg !3372

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3372
  %sub443 = sub i64 %72, 1, !dbg !3372
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3372
  br label %cond.end444, !dbg !3372

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3372
  %sub446 = sub i32 %cond445, 12, !dbg !3373
  %add = add i32 %sub446, 1, !dbg !3374
  store i32 %add, i32* %retval, align 4, !dbg !3375
  br label %return, !dbg !3375

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3376
  %dec = add i64 %73, -1, !dbg !3376
  store i64 %dec, i64* %size.addr, align 8, !dbg !3376
  %74 = load i64, i64* %size.addr, align 8, !dbg !3377
  %shr = lshr i64 %74, 12, !dbg !3377
  store i64 %shr, i64* %size.addr, align 8, !dbg !3377
  %75 = load i64, i64* %size.addr, align 8, !dbg !3378
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3355
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3379
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3380
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !3379, !srcloc !3381
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3379
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3382
  %add.i = add i32 %79, 1, !dbg !3383
  store i32 %add.i, i32* %retval, align 4, !dbg !3384
  br label %return, !dbg !3384

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3385
  ret i32 %80, !dbg !3385
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3386 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3347, metadata !DIExpression()), !dbg !3390
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3354, metadata !DIExpression()), !dbg !3392
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3393, metadata !DIExpression()), !dbg !3394
  %0 = load i64, i64* %n.addr, align 8, !dbg !3395
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3392
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3396
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3397
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !3396, !srcloc !3381
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3396
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3398
  %add.i = add i32 %4, 1, !dbg !3399
  %sub = sub i32 %add.i, 1, !dbg !3400
  ret i32 %sub, !dbg !3401
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3402 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3406, metadata !DIExpression()), !dbg !3407
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3408, metadata !DIExpression()), !dbg !3409
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3410, metadata !DIExpression()), !dbg !3411
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3414
  ret i8* %0, !dbg !3415
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !3416 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3421, metadata !DIExpression()), !dbg !3422
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3423
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !3424
  %1 = load i8*, i8** %name, align 8, !dbg !3424
  ret i8* %1, !dbg !3425
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2024, !2025, !2026, !2027}
!llvm.ident = !{!2028}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "attribute_container_mutex", scope: !2, file: !3, line: 64, type: !418, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !2021, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/attribute_container.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17, !23, !29, !36, !44, !50, !55}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !13, line: 65, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !18, line: 16, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
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
!62 = !{!63, !64, !95, !347, !2017, !2019}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_container", file: !3, line: 25, size: 5888, elements: !66)
!66 = !{!67, !94, !2016}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !3, line: 26, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !69, line: 37, size: 256, elements: !70)
!69 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !72, !79}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !68, file: !69, line: 38, baseType: !63, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !68, file: !69, line: 39, baseType: !73, size: 128, offset: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !74, line: 178, size: 128, elements: !75)
!74 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !73, file: !74, line: 179, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !73, file: !74, line: 179, baseType: !77, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !68, file: !69, line: 40, baseType: !80, size: 32, offset: 192)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !81, line: 19, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !80, file: !81, line: 20, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !85, line: 113, baseType: !86)
!85 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !85, line: 111, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !86, file: !85, line: 112, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !74, line: 168, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 166, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !90, file: !74, line: 167, baseType: !93, size: 32)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cont", scope: !65, file: !3, line: 27, baseType: !95, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_container", file: !97, line: 16, size: 704, elements: !98)
!97 = !DIFile(filename: "./include/linux/attribute_container.h", directory: "/home/lizy2001/genbc/linux")
!98 = !{!99, !100, !126, !1996, !1997, !2011, !2015}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !96, file: !97, line: 17, baseType: !73, size: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "containers", scope: !96, file: !97, line: 18, baseType: !101, size: 256, align: 64, offset: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !69, line: 18, size: 256, align: 64, elements: !102)
!102 = !{!103, !119, !120, !125}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !101, file: !69, line: 19, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !105, line: 83, baseType: !106)
!105 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !105, line: 71, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !105, line: 72, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !105, line: 72, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !109, file: !105, line: 73, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !105, line: 20, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !112, file: !105, line: 21, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !116, line: 25, baseType: !117)
!116 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 25, elements: !118)
!118 = !{}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !101, file: !69, line: 20, baseType: !73, size: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !101, file: !69, line: 21, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !101, file: !69, line: 22, baseType: !121, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !96, file: !97, line: 19, baseType: !127, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !129, line: 54, size: 960, elements: !130)
!129 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !135, !139, !1597, !1598, !1599, !1975, !1979, !1983, !1984, !1985, !1986, !1990, !1994, !1995}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !129, line: 55, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !128, file: !129, line: 56, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !138, line: 76, flags: DIFlagFwdDecl)
!138 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !128, file: !129, line: 58, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !144, line: 84, size: 320, elements: !145)
!144 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!146, !147, !1575, !1594, !1595}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 85, baseType: !132, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !143, file: !144, line: 86, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !153, !227, !93}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !74, line: 19, baseType: !152)
!152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !155, line: 64, size: 512, elements: !156)
!155 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !158, !159, !160, !205, !301, !1569, !1570, !1571, !1572, !1573, !1574}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !155, line: 65, baseType: !132, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !154, file: !155, line: 66, baseType: !73, size: 128, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !155, line: 67, baseType: !153, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !154, file: !155, line: 68, baseType: !161, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !155, line: 192, size: 704, elements: !163)
!163 = !{!164, !165, !166, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !162, file: !155, line: 193, baseType: !73, size: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !162, file: !155, line: 194, baseType: !104, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !162, file: !155, line: 195, baseType: !154, size: 512, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !162, file: !155, line: 196, baseType: !168, size: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !155, line: 156, size: 192, elements: !171)
!171 = !{!172, !177, !182}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !170, file: !155, line: 157, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!93, !161, !153}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !155, line: 158, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!132, !161, !153}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !170, file: !155, line: 159, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!93, !161, !153, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !155, line: 148, size: 20736, elements: !189)
!189 = !{!190, !195, !199, !200, !204}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !188, file: !155, line: 149, baseType: !191, size: 192)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 192, elements: !193)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!193 = !{!194}
!194 = !DISubrange(count: 3)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !188, file: !155, line: 150, baseType: !196, size: 4096, offset: 192)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 4096, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !188, file: !155, line: 151, baseType: !93, size: 32, offset: 4288)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !188, file: !155, line: 152, baseType: !201, size: 16384, offset: 4320)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 16384, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 2048)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !188, file: !155, line: 153, baseType: !93, size: 32, offset: 20704)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !154, file: !155, line: 69, baseType: !206, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !155, line: 138, size: 448, elements: !208)
!208 = !{!209, !213, !240, !242, !243, !278, !282}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !207, file: !155, line: 139, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !153}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !207, file: !155, line: 140, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !144, line: 230, size: 128, elements: !217)
!217 = !{!218, !232}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !216, file: !144, line: 231, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !153, !227, !192}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !74, line: 60, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !224, line: 73, baseType: !225)
!224 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !224, line: 15, baseType: !226)
!226 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !144, line: 30, size: 128, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !144, line: 31, baseType: !132, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !228, file: !144, line: 32, baseType: !151, size: 16, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !216, file: !144, line: 232, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!222, !153, !227, !132, !236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 55, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !224, line: 72, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !224, line: 16, baseType: !239)
!239 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !207, file: !155, line: 141, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !207, file: !155, line: 142, baseType: !140, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !207, file: !155, line: 143, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !153}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !250)
!250 = !{!251, !252, !258, !262, !270, !274}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !249, file: !6, line: 40, baseType: !5, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !249, file: !6, line: 41, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !74, line: 30, baseType: !257)
!257 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !249, file: !6, line: 42, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!63}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !249, file: !6, line: 43, baseType: !263, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !268}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !249, file: !6, line: 44, baseType: !271, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!266}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !249, file: !6, line: 45, baseType: !275, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !63}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !207, file: !155, line: 144, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!266, !153}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !207, file: !155, line: 145, baseType: !283, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !153, !286, !294}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !288, line: 23, baseType: !289)
!288 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 21, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !289, file: !288, line: 22, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !74, line: 32, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !224, line: 49, baseType: !7)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !288, line: 28, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 26, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !296, file: !288, line: 27, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !74, line: 33, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !224, line: 50, baseType: !7)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !154, file: !155, line: 70, baseType: !302, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !304, line: 123, size: 1024, elements: !305)
!304 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !307, !308, !309, !310, !318, !319, !320, !1562, !1563, !1564, !1565, !1566}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !303, file: !304, line: 124, baseType: !89, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !303, file: !304, line: 125, baseType: !89, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !303, file: !304, line: 135, baseType: !302, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !304, line: 136, baseType: !132, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !303, file: !304, line: 138, baseType: !311, size: 192, align: 64, offset: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !312, line: 24, size: 192, align: 64, elements: !313)
!312 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314, !315, !317}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !311, file: !312, line: 25, baseType: !239, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !311, file: !312, line: 26, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !311, file: !312, line: 27, baseType: !316, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !303, file: !304, line: 140, baseType: !266, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !303, file: !304, line: 141, baseType: !7, size: 32, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !304, line: 142, baseType: !321, size: 256, offset: 512)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 142, size: 256, elements: !322)
!322 = !{!323, !392, !396}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !321, file: !304, line: 143, baseType: !324, size: 192)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !304, line: 91, size: 192, elements: !325)
!325 = !{!326, !327, !331}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !324, file: !304, line: 92, baseType: !239, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !324, file: !304, line: 94, baseType: !328, size: 64, offset: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !312, line: 31, size: 64, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !328, file: !312, line: 32, baseType: !316, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !324, file: !304, line: 100, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !304, line: 180, size: 704, elements: !334)
!334 = !{!335, !336, !337, !351, !356, !357, !384, !385}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !333, file: !304, line: 182, baseType: !302, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !304, line: 183, baseType: !7, size: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !333, file: !304, line: 186, baseType: !338, size: 192, offset: 128)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !339, line: 19, size: 192, elements: !340)
!339 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!340 = !{!341, !349, !350}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !338, file: !339, line: 20, baseType: !342, size: 128)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !343, line: 292, size: 128, elements: !344)
!343 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!344 = !{!345, !346, !348}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !342, file: !343, line: 293, baseType: !104)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !342, file: !343, line: 295, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !74, line: 148, baseType: !7)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !342, file: !343, line: 296, baseType: !63, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !338, file: !339, line: 21, baseType: !7, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !338, file: !339, line: 22, baseType: !7, size: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !333, file: !304, line: 187, baseType: !352, size: 32, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !353, line: 21, baseType: !354)
!353 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !355, line: 27, baseType: !7)
!355 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !333, file: !304, line: 188, baseType: !352, size: 32, offset: 352)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !333, file: !304, line: 189, baseType: !358, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !304, line: 168, size: 320, elements: !360)
!360 = !{!361, !368, !372, !376, !380}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !359, file: !304, line: 169, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!93, !365, !332}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !367, line: 539, flags: DIFlagFwdDecl)
!367 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !359, file: !304, line: 171, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!93, !302, !132, !151}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !359, file: !304, line: 173, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!93, !302}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !359, file: !304, line: 174, baseType: !377, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!93, !302, !302, !132}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !359, file: !304, line: 176, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!93, !365, !302, !332}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !333, file: !304, line: 192, baseType: !73, size: 128, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !333, file: !304, line: 194, baseType: !386, size: 128, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !387, line: 40, baseType: !388)
!387 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !387, line: 36, size: 128, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !387, line: 37, baseType: !104)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !388, file: !387, line: 38, baseType: !73, size: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !321, file: !304, line: 144, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !304, line: 103, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !393, file: !304, line: 104, baseType: !302, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !321, file: !304, line: 145, baseType: !397, size: 256)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !304, line: 107, size: 256, elements: !398)
!398 = !{!399, !1557, !1560, !1561}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !397, file: !304, line: 108, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !304, line: 217, size: 768, elements: !403)
!403 = !{!404, !445, !449, !453, !460, !464, !468, !472, !473, !474, !475, !483}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !402, file: !304, line: 222, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!93, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !304, line: 197, size: 1088, elements: !410)
!410 = !{!411, !412, !415, !416, !417, !433, !434, !435, !436, !437, !438, !439, !440}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !409, file: !304, line: 199, baseType: !302, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !409, file: !304, line: 200, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !367, line: 526, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !409, file: !304, line: 201, baseType: !365, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !409, file: !304, line: 202, baseType: !63, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !409, file: !304, line: 205, baseType: !418, size: 192, offset: 256)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !419, line: 53, size: 192, elements: !420)
!419 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!420 = !{!421, !431, !432}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !418, file: !419, line: 54, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !423, line: 13, baseType: !424)
!423 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !74, line: 175, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 173, size: 64, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !425, file: !74, line: 174, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !353, line: 22, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !355, line: 30, baseType: !430)
!430 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !418, file: !419, line: 55, baseType: !104, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !418, file: !419, line: 59, baseType: !73, size: 128, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !409, file: !304, line: 206, baseType: !418, size: 192, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !409, file: !304, line: 207, baseType: !93, size: 32, offset: 640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !409, file: !304, line: 208, baseType: !73, size: 128, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !409, file: !304, line: 209, baseType: !192, size: 64, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !409, file: !304, line: 211, baseType: !236, size: 64, offset: 896)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !409, file: !304, line: 212, baseType: !256, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !409, file: !304, line: 213, baseType: !256, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !409, file: !304, line: 214, baseType: !441, size: 64, offset: 1024)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !444, line: 356, flags: DIFlagFwdDecl)
!444 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!445 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !402, file: !304, line: 223, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !408}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !402, file: !304, line: 236, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!93, !365, !63}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !402, file: !304, line: 238, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!63, !365, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !74, line: 46, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !224, line: 88, baseType: !430)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !402, file: !304, line: 239, baseType: !461, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!63, !365, !63, !457}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !402, file: !304, line: 240, baseType: !465, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !365, !63}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !402, file: !304, line: 242, baseType: !469, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!222, !408, !192, !236, !458}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !402, file: !304, line: 252, baseType: !236, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !402, file: !304, line: 259, baseType: !256, size: 8, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !402, file: !304, line: 260, baseType: !469, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !402, file: !304, line: 263, baseType: !476, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !408, !481}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !480, line: 52, baseType: !7)
!480 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !304, line: 27, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !402, file: !304, line: 266, baseType: !484, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!93, !408, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !444, line: 305, size: 1472, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !1534, !1540, !1541, !1546, !1547, !1550, !1551, !1552, !1553, !1554, !1555}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !488, file: !444, line: 308, baseType: !239, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !488, file: !444, line: 309, baseType: !239, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !488, file: !444, line: 313, baseType: !487, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !488, file: !444, line: 313, baseType: !487, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !488, file: !444, line: 315, baseType: !311, size: 192, align: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !488, file: !444, line: 323, baseType: !239, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !488, file: !444, line: 327, baseType: !497, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !444, line: 388, size: 7296, elements: !499)
!499 = !{!500, !1530}
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !444, line: 389, baseType: !501, size: 7296)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !498, file: !444, line: 389, size: 7296, elements: !502)
!502 = !{!503, !504, !505, !509, !513, !514, !515, !516, !517, !525, !526, !527, !528, !529, !530, !531, !532, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !567, !575, !578, !620, !621, !1501, !1502, !1505, !1508, !1509, !1512, !1513, !1514, !1517, !1529}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !501, file: !444, line: 390, baseType: !487, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !501, file: !444, line: 391, baseType: !328, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !501, file: !444, line: 392, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !353, line: 23, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !355, line: 31, baseType: !508)
!508 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !501, file: !444, line: 394, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!239, !413, !239, !239, !239, !239}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !501, file: !444, line: 398, baseType: !239, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !501, file: !444, line: 399, baseType: !239, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !501, file: !444, line: 405, baseType: !239, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !501, file: !444, line: 406, baseType: !239, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !501, file: !444, line: 407, baseType: !518, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !367, line: 286, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 286, size: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !520, file: !367, line: 286, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !524, line: 18, baseType: !239)
!524 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!525 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !501, file: !444, line: 416, baseType: !89, size: 32, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !501, file: !444, line: 428, baseType: !89, size: 32, offset: 608)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !501, file: !444, line: 437, baseType: !89, size: 32, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !501, file: !444, line: 447, baseType: !89, size: 32, offset: 672)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !501, file: !444, line: 450, baseType: !422, size: 64, offset: 704)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !501, file: !444, line: 452, baseType: !93, size: 32, offset: 768)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !501, file: !444, line: 454, baseType: !104, offset: 800)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !501, file: !444, line: 457, baseType: !533, size: 256, offset: 832)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !534, line: 35, size: 256, elements: !535)
!534 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!535 = !{!536, !537, !538, !540}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !533, file: !534, line: 36, baseType: !422, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !533, file: !534, line: 42, baseType: !422, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !533, file: !534, line: 46, baseType: !539, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !105, line: 29, baseType: !112)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !533, file: !534, line: 47, baseType: !73, size: 128, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !501, file: !444, line: 459, baseType: !73, size: 128, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !501, file: !444, line: 466, baseType: !239, size: 64, offset: 1216)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !501, file: !444, line: 467, baseType: !239, size: 64, offset: 1280)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !501, file: !444, line: 469, baseType: !239, size: 64, offset: 1344)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !501, file: !444, line: 470, baseType: !239, size: 64, offset: 1408)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !501, file: !444, line: 471, baseType: !424, size: 64, offset: 1472)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !501, file: !444, line: 472, baseType: !239, size: 64, offset: 1536)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !501, file: !444, line: 473, baseType: !239, size: 64, offset: 1600)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !501, file: !444, line: 474, baseType: !239, size: 64, offset: 1664)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !501, file: !444, line: 475, baseType: !239, size: 64, offset: 1728)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !501, file: !444, line: 477, baseType: !104, offset: 1792)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !501, file: !444, line: 478, baseType: !239, size: 64, offset: 1792)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !501, file: !444, line: 478, baseType: !239, size: 64, offset: 1856)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !501, file: !444, line: 478, baseType: !239, size: 64, offset: 1920)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !501, file: !444, line: 478, baseType: !239, size: 64, offset: 1984)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !501, file: !444, line: 479, baseType: !239, size: 64, offset: 2048)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !501, file: !444, line: 479, baseType: !239, size: 64, offset: 2112)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !501, file: !444, line: 479, baseType: !239, size: 64, offset: 2176)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !501, file: !444, line: 480, baseType: !239, size: 64, offset: 2240)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !501, file: !444, line: 480, baseType: !239, size: 64, offset: 2304)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !501, file: !444, line: 480, baseType: !239, size: 64, offset: 2368)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !501, file: !444, line: 480, baseType: !239, size: 64, offset: 2432)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !501, file: !444, line: 482, baseType: !564, size: 2816, offset: 2496)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2816, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 44)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !501, file: !444, line: 488, baseType: !568, size: 256, offset: 5312)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !569, line: 60, size: 256, elements: !570)
!569 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !568, file: !569, line: 61, baseType: !572, size: 256)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 256, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 4)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !501, file: !444, line: 490, baseType: !576, size: 64, offset: 5568)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !444, line: 490, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !501, file: !444, line: 493, baseType: !579, size: 896, offset: 5632)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !580, line: 53, baseType: !581)
!580 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 13, size: 896, elements: !582)
!582 = !{!583, !584, !585, !586, !589, !590, !591, !592, !612, !613, !616}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !581, file: !580, line: 18, baseType: !506, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !581, file: !580, line: 28, baseType: !424, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !581, file: !580, line: 31, baseType: !533, size: 256, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !581, file: !580, line: 32, baseType: !587, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !580, line: 32, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !581, file: !580, line: 37, baseType: !152, size: 16, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !581, file: !580, line: 40, baseType: !418, size: 192, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !581, file: !580, line: 41, baseType: !63, size: 64, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !581, file: !580, line: 42, baseType: !593, size: 64, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !596, line: 13, size: 896, elements: !597)
!596 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !595, file: !596, line: 14, baseType: !63, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !596, line: 15, baseType: !239, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !595, file: !596, line: 17, baseType: !239, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !595, file: !596, line: 17, baseType: !239, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !595, file: !596, line: 19, baseType: !226, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !595, file: !596, line: 21, baseType: !226, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !595, file: !596, line: 22, baseType: !226, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !595, file: !596, line: 23, baseType: !226, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !595, file: !596, line: 24, baseType: !226, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !595, file: !596, line: 25, baseType: !226, size: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !595, file: !596, line: 26, baseType: !226, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !595, file: !596, line: 27, baseType: !226, size: 64, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !595, file: !596, line: 28, baseType: !226, size: 64, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !595, file: !596, line: 29, baseType: !226, size: 64, offset: 832)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !581, file: !580, line: 44, baseType: !89, size: 32, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !581, file: !580, line: 50, baseType: !614, size: 16, offset: 864)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !353, line: 19, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !355, line: 24, baseType: !152)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !581, file: !580, line: 51, baseType: !617, size: 16, offset: 880)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !353, line: 18, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !355, line: 23, baseType: !619)
!619 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !444, line: 495, baseType: !239, size: 64, offset: 6528)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !501, file: !444, line: 497, baseType: !622, size: 64, offset: 6592)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !444, line: 381, size: 384, elements: !624)
!624 = !{!625, !626, !1500}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !623, file: !444, line: 382, baseType: !89, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !623, file: !444, line: 383, baseType: !627, size: 128, offset: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !444, line: 376, size: 128, elements: !628)
!628 = !{!629, !1498}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !627, file: !444, line: 377, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !632, line: 640, size: 48640, elements: !633)
!632 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !640, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !655, !673, !684, !779, !780, !781, !792, !793, !795, !796, !797, !798, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !877, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !927, !929, !930, !931, !943, !945, !946, !947, !948, !949, !955, !956, !957, !958, !959, !960, !961, !973, !978, !982, !983, !984, !987, !991, !994, !997, !1000, !1003, !1006, !1009, !1012, !1018, !1019, !1020, !1026, !1027, !1028, !1029, !1030, !1039, !1040, !1041, !1042, !1043, !1048, !1049, !1050, !1053, !1054, !1057, !1060, !1063, !1066, !1069, !1072, !1073, !1152, !1155, !1158, !1159, !1162, !1163, !1164, !1170, !1171, !1172, !1185, !1186, !1187, !1197, !1202, !1205, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !631, file: !632, line: 646, baseType: !635, size: 128)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !636, line: 56, size: 128, elements: !637)
!636 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !636, line: 57, baseType: !239, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !635, file: !636, line: 58, baseType: !352, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !631, file: !632, line: 649, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !226)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !631, file: !632, line: 657, baseType: !63, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !631, file: !632, line: 658, baseType: !84, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !632, line: 660, baseType: !7, size: 32, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !631, file: !632, line: 661, baseType: !7, size: 32, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !631, file: !632, line: 684, baseType: !93, size: 32, offset: 352)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !631, file: !632, line: 686, baseType: !93, size: 32, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !631, file: !632, line: 687, baseType: !93, size: 32, offset: 416)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !631, file: !632, line: 688, baseType: !93, size: 32, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !631, file: !632, line: 689, baseType: !7, size: 32, offset: 480)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !631, file: !632, line: 691, baseType: !652, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !632, line: 691, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !631, file: !632, line: 692, baseType: !656, size: 832, offset: 576)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !632, line: 451, size: 832, elements: !657)
!657 = !{!658, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !656, file: !632, line: 453, baseType: !659, size: 128)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !632, line: 325, size: 128, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !659, file: !632, line: 326, baseType: !239, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !659, file: !632, line: 327, baseType: !352, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !656, file: !632, line: 454, baseType: !311, size: 192, align: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !656, file: !632, line: 455, baseType: !73, size: 128, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !656, file: !632, line: 456, baseType: !7, size: 32, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !656, file: !632, line: 458, baseType: !506, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !656, file: !632, line: 459, baseType: !506, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !656, file: !632, line: 460, baseType: !506, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !656, file: !632, line: 461, baseType: !506, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !656, file: !632, line: 463, baseType: !506, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !656, file: !632, line: 465, baseType: !672, offset: 832)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !632, line: 415, elements: !118)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !631, file: !632, line: 693, baseType: !674, size: 384, offset: 1408)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !632, line: 489, size: 384, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !674, file: !632, line: 490, baseType: !73, size: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !674, file: !632, line: 491, baseType: !239, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !674, file: !632, line: 492, baseType: !239, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !674, file: !632, line: 493, baseType: !7, size: 32, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !674, file: !632, line: 494, baseType: !152, size: 16, offset: 288)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !674, file: !632, line: 495, baseType: !152, size: 16, offset: 304)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !674, file: !632, line: 497, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !631, file: !632, line: 697, baseType: !685, size: 1792, offset: 1792)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !632, line: 507, size: 1792, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !776, !777}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !685, file: !632, line: 508, baseType: !311, size: 192, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !685, file: !632, line: 515, baseType: !506, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !685, file: !632, line: 516, baseType: !506, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !685, file: !632, line: 517, baseType: !506, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !685, file: !632, line: 518, baseType: !506, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !685, file: !632, line: 519, baseType: !506, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !685, file: !632, line: 526, baseType: !428, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !685, file: !632, line: 527, baseType: !506, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !632, line: 528, baseType: !7, size: 32, offset: 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !685, file: !632, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !685, file: !632, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !685, file: !632, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !685, file: !632, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !685, file: !632, line: 563, baseType: !701, size: 512, offset: 704)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !702)
!702 = !{!703, !711, !712, !717, !769, !773, !774, !775}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !13, line: 119, baseType: !704, size: 256)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !705, line: 9, size: 256, elements: !706)
!705 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !705, line: 10, baseType: !311, size: 192, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !704, file: !705, line: 11, baseType: !709, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !710, line: 29, baseType: !428)
!710 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !701, file: !13, line: 120, baseType: !709, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !701, file: !13, line: 121, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!12, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !701, file: !13, line: 122, baseType: !718, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !720)
!720 = !{!721, !741, !742, !745, !755, !756, !764, !768}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !719, file: !13, line: 160, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 214, size: 4608, align: 512, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !723, file: !13, line: 215, baseType: !539)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !723, file: !13, line: 216, baseType: !7, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !723, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !723, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !723, file: !13, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !723, file: !13, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !723, file: !13, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !723, file: !13, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !723, file: !13, line: 233, baseType: !709, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !723, file: !13, line: 234, baseType: !716, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !723, file: !13, line: 235, baseType: !709, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !723, file: !13, line: 236, baseType: !716, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !723, file: !13, line: 237, baseType: !738, size: 4096, offset: 512)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 4096, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 8)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !719, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !719, file: !13, line: 162, baseType: !743, size: 32, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !74, line: 27, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !224, line: 96, baseType: !93)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !719, file: !13, line: 163, baseType: !746, size: 32, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !747, line: 276, baseType: !748)
!747 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !747, line: 276, size: 32, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !748, file: !747, line: 276, baseType: !751, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !747, line: 70, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !747, line: 65, size: 32, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !752, file: !747, line: 66, baseType: !7, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !719, file: !13, line: 164, baseType: !716, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !719, file: !13, line: 165, baseType: !757, size: 128, offset: 256)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !705, line: 14, size: 128, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !757, file: !705, line: 15, baseType: !760, size: 128)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !312, line: 125, size: 128, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !760, file: !312, line: 126, baseType: !328, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !760, file: !312, line: 127, baseType: !316, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !719, file: !13, line: 166, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!709}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !719, file: !13, line: 167, baseType: !709, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !701, file: !13, line: 123, baseType: !770, size: 8, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !353, line: 17, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !355, line: 21, baseType: !772)
!772 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !701, file: !13, line: 124, baseType: !770, size: 8, offset: 456)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !701, file: !13, line: 125, baseType: !770, size: 8, offset: 464)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !701, file: !13, line: 126, baseType: !770, size: 8, offset: 472)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !685, file: !632, line: 572, baseType: !701, size: 512, offset: 1216)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !685, file: !632, line: 580, baseType: !778, size: 64, offset: 1728)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !631, file: !632, line: 721, baseType: !7, size: 32, offset: 3584)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !631, file: !632, line: 722, baseType: !93, size: 32, offset: 3616)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !631, file: !632, line: 723, baseType: !782, size: 64, offset: 3648)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !785, line: 17, baseType: !786)
!785 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !785, line: 17, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !786, file: !785, line: 17, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 1)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !631, file: !632, line: 724, baseType: !784, size: 64, offset: 3712)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !631, file: !632, line: 749, baseType: !794, offset: 3776)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !632, line: 290, elements: !118)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !631, file: !632, line: 751, baseType: !73, size: 128, offset: 3776)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !631, file: !632, line: 757, baseType: !497, size: 64, offset: 3904)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !631, file: !632, line: 758, baseType: !497, size: 64, offset: 3968)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !631, file: !632, line: 761, baseType: !799, size: 320, offset: 4032)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !569, line: 34, size: 320, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !799, file: !569, line: 35, baseType: !506, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !799, file: !569, line: 36, baseType: !803, size: 256, offset: 64)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 256, elements: !573)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !631, file: !632, line: 766, baseType: !93, size: 32, offset: 4352)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !631, file: !632, line: 767, baseType: !93, size: 32, offset: 4384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !631, file: !632, line: 768, baseType: !93, size: 32, offset: 4416)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !631, file: !632, line: 770, baseType: !93, size: 32, offset: 4448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !631, file: !632, line: 772, baseType: !239, size: 64, offset: 4480)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !631, file: !632, line: 775, baseType: !7, size: 32, offset: 4544)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !631, file: !632, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !631, file: !632, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !631, file: !632, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !631, file: !632, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !631, file: !632, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !631, file: !632, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !631, file: !632, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !631, file: !632, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !631, file: !632, line: 831, baseType: !239, size: 64, offset: 4672)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !631, file: !632, line: 833, baseType: !820, size: 384, offset: 4736)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 384, elements: !821)
!821 = !{!822, !827}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !820, file: !18, line: 26, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!226, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !18, line: 27, baseType: !828, size: 320, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !18, line: 27, size: 320, elements: !829)
!829 = !{!830, !840, !867}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !828, file: !18, line: 36, baseType: !831, size: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !18, line: 29, size: 320, elements: !832)
!832 = !{!833, !835, !836, !837, !838, !839}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !831, file: !18, line: 30, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !831, file: !18, line: 31, baseType: !352, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !18, line: 32, baseType: !352, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !831, file: !18, line: 33, baseType: !352, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !831, file: !18, line: 34, baseType: !506, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !831, file: !18, line: 35, baseType: !834, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !828, file: !18, line: 46, baseType: !841, size: 192)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !18, line: 38, size: 192, elements: !842)
!842 = !{!843, !844, !845, !866}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !841, file: !18, line: 39, baseType: !743, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !841, file: !18, line: 40, baseType: !17, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !18, line: 41, baseType: !846, size: 64, offset: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !18, line: 41, size: 64, elements: !847)
!847 = !{!848, !856}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !846, file: !18, line: 42, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !851, line: 7, size: 128, elements: !852)
!851 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!852 = !{!853, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !850, file: !851, line: 8, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !224, line: 93, baseType: !430)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !850, file: !851, line: 9, baseType: !430, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !846, file: !18, line: 43, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !859, line: 7, size: 64, elements: !860)
!859 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !865}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !858, file: !859, line: 8, baseType: !862, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !859, line: 5, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !353, line: 20, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !355, line: 26, baseType: !93)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !858, file: !859, line: 9, baseType: !863, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !841, file: !18, line: 45, baseType: !506, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !828, file: !18, line: 54, baseType: !868, size: 256)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !18, line: 48, size: 256, elements: !869)
!869 = !{!870, !873, !874, !875, !876}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !868, file: !18, line: 49, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !868, file: !18, line: 50, baseType: !93, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !868, file: !18, line: 51, baseType: !93, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !868, file: !18, line: 52, baseType: !239, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !868, file: !18, line: 53, baseType: !239, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !631, file: !632, line: 835, baseType: !878, size: 32, offset: 5120)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !74, line: 22, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !224, line: 28, baseType: !93)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !631, file: !632, line: 836, baseType: !878, size: 32, offset: 5152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !631, file: !632, line: 840, baseType: !239, size: 64, offset: 5184)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !631, file: !632, line: 849, baseType: !630, size: 64, offset: 5248)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !631, file: !632, line: 852, baseType: !630, size: 64, offset: 5312)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !631, file: !632, line: 857, baseType: !73, size: 128, offset: 5376)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !631, file: !632, line: 858, baseType: !73, size: 128, offset: 5504)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !631, file: !632, line: 859, baseType: !630, size: 64, offset: 5632)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !631, file: !632, line: 867, baseType: !73, size: 128, offset: 5696)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !631, file: !632, line: 868, baseType: !73, size: 128, offset: 5824)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !631, file: !632, line: 871, baseType: !890, size: 64, offset: 5952)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !892, line: 59, size: 768, elements: !893)
!892 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!893 = !{!894, !895, !896, !897, !908, !909, !910, !919}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !891, file: !892, line: 61, baseType: !84, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !891, file: !892, line: 62, baseType: !7, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !891, file: !892, line: 63, baseType: !104, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !891, file: !892, line: 65, baseType: !898, size: 256, offset: 64)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 256, elements: !573)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !74, line: 182, size: 64, elements: !900)
!900 = !{!901}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !899, file: !74, line: 183, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !74, line: 186, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !74, line: 187, baseType: !902, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !903, file: !74, line: 187, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !891, file: !892, line: 66, baseType: !899, size: 64, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !891, file: !892, line: 68, baseType: !386, size: 128, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !891, file: !892, line: 69, baseType: !911, size: 128, align: 64, offset: 512)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !74, line: 216, size: 128, align: 64, elements: !912)
!912 = !{!913, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !911, file: !74, line: 217, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !911, file: !74, line: 218, baseType: !916, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !914}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !891, file: !892, line: 70, baseType: !920, size: 128, offset: 640)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 128, elements: !790)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !892, line: 54, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !921, file: !892, line: 55, baseType: !93, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !921, file: !892, line: 56, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !892, line: 56, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !631, file: !632, line: 872, baseType: !928, size: 512, offset: 6016)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 512, elements: !573)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !631, file: !632, line: 873, baseType: !73, size: 128, offset: 6528)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !631, file: !632, line: 874, baseType: !73, size: 128, offset: 6656)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !631, file: !632, line: 876, baseType: !932, size: 64, offset: 6784)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !934, line: 26, size: 192, elements: !935)
!934 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !933, file: !934, line: 27, baseType: !7, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !933, file: !934, line: 28, baseType: !938, size: 128, offset: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !939, line: 43, size: 128, elements: !940)
!939 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !938, file: !939, line: 44, baseType: !539)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !938, file: !939, line: 45, baseType: !73, size: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !631, file: !632, line: 879, baseType: !944, size: 64, offset: 6848)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !631, file: !632, line: 882, baseType: !944, size: 64, offset: 6912)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !631, file: !632, line: 884, baseType: !506, size: 64, offset: 6976)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !631, file: !632, line: 885, baseType: !506, size: 64, offset: 7040)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !631, file: !632, line: 890, baseType: !506, size: 64, offset: 7104)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !631, file: !632, line: 891, baseType: !950, size: 128, offset: 7168)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !632, line: 242, size: 128, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !950, file: !632, line: 244, baseType: !506, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !950, file: !632, line: 245, baseType: !506, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !950, file: !632, line: 246, baseType: !539, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !631, file: !632, line: 900, baseType: !239, size: 64, offset: 7296)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !631, file: !632, line: 901, baseType: !239, size: 64, offset: 7360)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !631, file: !632, line: 904, baseType: !506, size: 64, offset: 7424)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !631, file: !632, line: 907, baseType: !506, size: 64, offset: 7488)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !631, file: !632, line: 910, baseType: !239, size: 64, offset: 7552)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !631, file: !632, line: 911, baseType: !239, size: 64, offset: 7616)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !631, file: !632, line: 914, baseType: !962, size: 640, offset: 7680)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !963, line: 123, size: 640, elements: !964)
!963 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!964 = !{!965, !971, !972}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !962, file: !963, line: 124, baseType: !966, size: 576)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 576, elements: !193)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !963, line: 108, size: 192, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !967, file: !963, line: 109, baseType: !506, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !967, file: !963, line: 110, baseType: !757, size: 128, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !962, file: !963, line: 125, baseType: !7, size: 32, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !962, file: !963, line: 126, baseType: !7, size: 32, offset: 608)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !631, file: !632, line: 917, baseType: !974, size: 192, offset: 8320)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !963, line: 134, size: 192, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !974, file: !963, line: 135, baseType: !911, size: 128, align: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !974, file: !963, line: 136, baseType: !7, size: 32, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !631, file: !632, line: 923, baseType: !979, size: 64, offset: 8512)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !632, line: 923, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !631, file: !632, line: 926, baseType: !979, size: 64, offset: 8576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !631, file: !632, line: 929, baseType: !979, size: 64, offset: 8640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !631, file: !632, line: 933, baseType: !985, size: 64, offset: 8704)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !632, line: 933, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !631, file: !632, line: 943, baseType: !988, size: 128, offset: 8768)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 128, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 16)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !631, file: !632, line: 945, baseType: !992, size: 64, offset: 8896)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !632, line: 49, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !631, file: !632, line: 956, baseType: !995, size: 64, offset: 8960)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !632, line: 45, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !631, file: !632, line: 959, baseType: !998, size: 64, offset: 9024)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !632, line: 959, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !631, file: !632, line: 962, baseType: !1001, size: 64, offset: 9088)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !632, line: 66, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !631, file: !632, line: 966, baseType: !1004, size: 64, offset: 9152)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !632, line: 50, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !631, file: !632, line: 969, baseType: !1007, size: 64, offset: 9216)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !963, line: 223, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !631, file: !632, line: 970, baseType: !1010, size: 64, offset: 9280)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !632, line: 62, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !631, file: !632, line: 971, baseType: !1013, size: 64, offset: 9344)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1014, line: 25, baseType: !1015)
!1014 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1014, line: 23, size: 64, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1015, file: !1014, line: 24, baseType: !789, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !631, file: !632, line: 972, baseType: !1013, size: 64, offset: 9408)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !631, file: !632, line: 974, baseType: !1013, size: 64, offset: 9472)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !631, file: !632, line: 975, baseType: !1021, size: 192, offset: 9536)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1022, line: 30, size: 192, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1021, file: !1022, line: 31, baseType: !73, size: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1021, file: !1022, line: 32, baseType: !1013, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !631, file: !632, line: 976, baseType: !239, size: 64, offset: 9728)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !631, file: !632, line: 977, baseType: !236, size: 64, offset: 9792)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !631, file: !632, line: 978, baseType: !7, size: 32, offset: 9856)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !631, file: !632, line: 980, baseType: !914, size: 64, offset: 9920)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !631, file: !632, line: 989, baseType: !1031, size: 128, offset: 9984)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1032, line: 35, size: 128, elements: !1033)
!1032 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1031, file: !1032, line: 36, baseType: !93, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1031, file: !1032, line: 37, baseType: !89, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1031, file: !1032, line: 38, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1032, line: 23, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !631, file: !632, line: 992, baseType: !506, size: 64, offset: 10112)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !631, file: !632, line: 993, baseType: !506, size: 64, offset: 10176)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !631, file: !632, line: 996, baseType: !104, offset: 10240)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !631, file: !632, line: 999, baseType: !539, offset: 10240)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !631, file: !632, line: 1001, baseType: !1044, size: 64, offset: 10240)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !632, line: 636, size: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1044, file: !632, line: 637, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !631, file: !632, line: 1005, baseType: !760, size: 128, offset: 10304)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !631, file: !632, line: 1007, baseType: !630, size: 64, offset: 10432)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !631, file: !632, line: 1009, baseType: !1051, size: 64, offset: 10496)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !632, line: 1009, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !631, file: !632, line: 1043, baseType: !63, size: 64, offset: 10560)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !631, file: !632, line: 1046, baseType: !1055, size: 64, offset: 10624)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !632, line: 41, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !631, file: !632, line: 1050, baseType: !1058, size: 64, offset: 10688)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !632, line: 42, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !631, file: !632, line: 1054, baseType: !1061, size: 64, offset: 10752)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !632, line: 55, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !631, file: !632, line: 1056, baseType: !1064, size: 64, offset: 10816)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !632, line: 40, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !631, file: !632, line: 1058, baseType: !1067, size: 64, offset: 10880)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !632, line: 47, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !631, file: !632, line: 1061, baseType: !1070, size: 64, offset: 10944)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !632, line: 43, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !631, file: !632, line: 1064, baseType: !239, size: 64, offset: 11008)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !631, file: !632, line: 1065, baseType: !1074, size: 64, offset: 11072)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1022, line: 14, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1022, line: 12, size: 384, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !1022, line: 13, baseType: !1079, size: 384)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !1022, line: 13, size: 384, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1079, file: !1022, line: 13, baseType: !93, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1079, file: !1022, line: 13, baseType: !93, size: 32, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1079, file: !1022, line: 13, baseType: !93, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1079, file: !1022, line: 13, baseType: !1085, size: 256, offset: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1086, line: 32, size: 256, elements: !1087)
!1086 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1087 = !{!1088, !1093, !1106, !1112, !1121, !1141, !1146}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1085, file: !1086, line: 37, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1086, line: 34, size: 64, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1089, file: !1086, line: 35, baseType: !879, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1089, file: !1086, line: 36, baseType: !293, size: 32, offset: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1085, file: !1086, line: 45, baseType: !1094, size: 192)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1086, line: 40, size: 192, elements: !1095)
!1095 = !{!1096, !1098, !1099, !1105}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1094, file: !1086, line: 41, baseType: !1097, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !224, line: 95, baseType: !93)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1094, file: !1086, line: 42, baseType: !93, size: 32, offset: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1094, file: !1086, line: 43, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1086, line: 11, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1086, line: 8, size: 64, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1101, file: !1086, line: 9, baseType: !93, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1101, file: !1086, line: 10, baseType: !63, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1094, file: !1086, line: 44, baseType: !93, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1085, file: !1086, line: 52, baseType: !1107, size: 128)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1086, line: 48, size: 128, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1107, file: !1086, line: 49, baseType: !879, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1107, file: !1086, line: 50, baseType: !293, size: 32, offset: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1107, file: !1086, line: 51, baseType: !1100, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1085, file: !1086, line: 61, baseType: !1113, size: 256)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1086, line: 55, size: 256, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1120}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1113, file: !1086, line: 56, baseType: !879, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1113, file: !1086, line: 57, baseType: !293, size: 32, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1113, file: !1086, line: 58, baseType: !93, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1113, file: !1086, line: 59, baseType: !1119, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !224, line: 94, baseType: !225)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1113, file: !1086, line: 60, baseType: !1119, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1085, file: !1086, line: 95, baseType: !1122, size: 256)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1086, line: 64, size: 256, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1122, file: !1086, line: 65, baseType: !63, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !1086, line: 77, baseType: !1126, size: 192, offset: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1122, file: !1086, line: 77, size: 192, elements: !1127)
!1127 = !{!1128, !1129, !1136}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1126, file: !1086, line: 82, baseType: !619, size: 16)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1126, file: !1086, line: 88, baseType: !1130, size: 192)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !1086, line: 84, size: 192, elements: !1131)
!1131 = !{!1132, !1134, !1135}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1130, file: !1086, line: 85, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 64, elements: !739)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1130, file: !1086, line: 86, baseType: !63, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1130, file: !1086, line: 87, baseType: !63, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1126, file: !1086, line: 93, baseType: !1137, size: 96)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !1086, line: 90, size: 96, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1137, file: !1086, line: 91, baseType: !1133, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1137, file: !1086, line: 92, baseType: !354, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1085, file: !1086, line: 101, baseType: !1142, size: 128)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1086, line: 98, size: 128, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1142, file: !1086, line: 99, baseType: !226, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1142, file: !1086, line: 100, baseType: !93, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1085, file: !1086, line: 108, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1086, line: 104, size: 128, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1147, file: !1086, line: 105, baseType: !63, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1147, file: !1086, line: 106, baseType: !93, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1147, file: !1086, line: 107, baseType: !7, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !631, file: !632, line: 1067, baseType: !1153, offset: 11136)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1154, line: 12, elements: !118)
!1154 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !631, file: !632, line: 1099, baseType: !1156, size: 64, offset: 11136)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !632, line: 56, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !631, file: !632, line: 1103, baseType: !73, size: 128, offset: 11200)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !631, file: !632, line: 1104, baseType: !1160, size: 64, offset: 11328)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !632, line: 46, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !631, file: !632, line: 1105, baseType: !418, size: 192, offset: 11392)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !631, file: !632, line: 1106, baseType: !7, size: 32, offset: 11584)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !631, file: !632, line: 1109, baseType: !1165, size: 128, offset: 11648)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1166, size: 128, elements: !1168)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !632, line: 51, flags: DIFlagFwdDecl)
!1168 = !{!1169}
!1169 = !DISubrange(count: 2)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !631, file: !632, line: 1110, baseType: !418, size: 192, offset: 11776)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !631, file: !632, line: 1111, baseType: !73, size: 128, offset: 11968)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !631, file: !632, line: 1173, baseType: !1173, size: 64, offset: 12096)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1175, line: 62, size: 256, align: 256, elements: !1176)
!1175 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !{!1177, !1178, !1179, !1184}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1174, file: !1175, line: 75, baseType: !354, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1174, file: !1175, line: 90, baseType: !354, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1174, file: !1175, line: 124, baseType: !1180, size: 64, offset: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !1175, line: 109, size: 64, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1180, file: !1175, line: 110, baseType: !507, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1180, file: !1175, line: 112, baseType: !507, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1174, file: !1175, line: 144, baseType: !354, size: 32, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !631, file: !632, line: 1174, baseType: !352, size: 32, offset: 12160)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !631, file: !632, line: 1179, baseType: !239, size: 64, offset: 12224)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !631, file: !632, line: 1182, baseType: !1188, size: 128, offset: 12288)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !569, line: 76, size: 128, elements: !1189)
!1189 = !{!1190, !1195, !1196}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1188, file: !569, line: 85, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1192, line: 7, size: 64, elements: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1191, file: !1192, line: 12, baseType: !786, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1188, file: !569, line: 88, baseType: !256, size: 8, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1188, file: !569, line: 95, baseType: !256, size: 8, offset: 72)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !631, file: !632, line: 1184, baseType: !1198, size: 128, offset: 12416)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !631, file: !632, line: 1184, size: 128, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1198, file: !632, line: 1185, baseType: !84, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1198, file: !632, line: 1186, baseType: !911, size: 128, align: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !631, file: !632, line: 1190, baseType: !1203, size: 64, offset: 12544)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !632, line: 53, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !631, file: !632, line: 1192, baseType: !1206, size: 128, offset: 12608)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !569, line: 64, size: 128, elements: !1207)
!1207 = !{!1208, !1301, !1302}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1206, file: !569, line: 65, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !444, line: 68, size: 512, align: 128, elements: !1211)
!1211 = !{!1212, !1213, !1293, !1300}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !444, line: 69, baseType: !239, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !444, line: 77, baseType: !1214, size: 320, offset: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !444, line: 77, size: 320, elements: !1215)
!1215 = !{!1216, !1225, !1230, !1258, !1266, !1272, !1285, !1292}
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !444, line: 78, baseType: !1217, size: 320)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !444, line: 78, size: 320, elements: !1218)
!1218 = !{!1219, !1220, !1223, !1224}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1217, file: !444, line: 84, baseType: !73, size: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1217, file: !444, line: 86, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !444, line: 26, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1217, file: !444, line: 87, baseType: !239, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1217, file: !444, line: 94, baseType: !239, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !444, line: 96, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !444, line: 96, size: 64, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1226, file: !444, line: 101, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !74, line: 143, baseType: !506)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !444, line: 103, baseType: !1231, size: 320)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !444, line: 103, size: 320, elements: !1232)
!1232 = !{!1233, !1243, !1246, !1247}
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !444, line: 104, baseType: !1234, size: 128)
!1234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !444, line: 104, size: 128, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1234, file: !444, line: 105, baseType: !73, size: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !444, line: 106, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !444, line: 106, size: 128, elements: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1238, file: !444, line: 107, baseType: !1209, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1238, file: !444, line: 109, baseType: !93, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1238, file: !444, line: 110, baseType: !93, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1231, file: !444, line: 117, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !444, line: 117, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1231, file: !444, line: 119, baseType: !63, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !444, line: 120, baseType: !1248, size: 64, offset: 256)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !444, line: 120, size: 64, elements: !1249)
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1248, file: !444, line: 121, baseType: !63, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1248, file: !444, line: 122, baseType: !239, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !444, line: 123, baseType: !1253, size: 32)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !444, line: 123, size: 32, elements: !1254)
!1254 = !{!1255, !1256, !1257}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1253, file: !444, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1253, file: !444, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1253, file: !444, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !444, line: 130, baseType: !1259, size: 192)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !444, line: 130, size: 192, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1259, file: !444, line: 131, baseType: !239, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1259, file: !444, line: 134, baseType: !772, size: 8, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1259, file: !444, line: 135, baseType: !772, size: 8, offset: 72)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1259, file: !444, line: 136, baseType: !89, size: 32, offset: 96)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1259, file: !444, line: 137, baseType: !7, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !444, line: 139, baseType: !1267, size: 256)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !444, line: 139, size: 256, elements: !1268)
!1268 = !{!1269, !1270, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1267, file: !444, line: 140, baseType: !239, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1267, file: !444, line: 141, baseType: !89, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1267, file: !444, line: 143, baseType: !73, size: 128, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !444, line: 145, baseType: !1273, size: 256)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !444, line: 145, size: 256, elements: !1274)
!1274 = !{!1275, !1276, !1278, !1279, !1284}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1273, file: !444, line: 146, baseType: !239, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1273, file: !444, line: 147, baseType: !1277, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !367, line: 509, baseType: !1209)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1273, file: !444, line: 148, baseType: !239, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !444, line: 149, baseType: !1280, size: 64, offset: 192)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !444, line: 149, size: 64, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1280, file: !444, line: 150, baseType: !497, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1280, file: !444, line: 151, baseType: !89, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1273, file: !444, line: 156, baseType: !104, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !444, line: 159, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !444, line: 159, size: 128, elements: !1287)
!1287 = !{!1288, !1291}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1286, file: !444, line: 161, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !444, line: 161, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1286, file: !444, line: 162, baseType: !63, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1214, file: !444, line: 176, baseType: !911, size: 128, align: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !444, line: 179, baseType: !1294, size: 32, offset: 384)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !444, line: 179, size: 32, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1294, file: !444, line: 184, baseType: !89, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1294, file: !444, line: 192, baseType: !7, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1294, file: !444, line: 194, baseType: !7, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1294, file: !444, line: 195, baseType: !93, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1210, file: !444, line: 199, baseType: !89, size: 32, offset: 416)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1206, file: !569, line: 67, baseType: !354, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1206, file: !569, line: 68, baseType: !354, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !631, file: !632, line: 1206, baseType: !93, size: 32, offset: 12736)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !631, file: !632, line: 1207, baseType: !93, size: 32, offset: 12768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !631, file: !632, line: 1209, baseType: !239, size: 64, offset: 12800)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !631, file: !632, line: 1219, baseType: !506, size: 64, offset: 12864)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !631, file: !632, line: 1220, baseType: !506, size: 64, offset: 12928)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !631, file: !632, line: 1317, baseType: !93, size: 32, offset: 12992)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !631, file: !632, line: 1319, baseType: !630, size: 64, offset: 13056)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !631, file: !632, line: 1322, baseType: !1311, size: 64, offset: 13120)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !632, line: 1322, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !631, file: !632, line: 1326, baseType: !84, size: 32, offset: 13184)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !631, file: !632, line: 1342, baseType: !63, size: 64, offset: 13248)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !631, file: !632, line: 1343, baseType: !507, size: 64, offset: 13312)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !631, file: !632, line: 1344, baseType: !506, size: 64, offset: 13376)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !631, file: !632, line: 1345, baseType: !507, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !631, file: !632, line: 1346, baseType: !507, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !631, file: !632, line: 1347, baseType: !507, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !631, file: !632, line: 1348, baseType: !911, size: 128, align: 64, offset: 13504)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !631, file: !632, line: 1358, baseType: !1322, size: 34816, offset: 13824)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1323, line: 485, size: 34816, elements: !1324)
!1323 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1324 = !{!1325, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1354, !1355, !1356, !1357, !1358, !1359, !1362, !1363, !1364}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1322, file: !1323, line: 487, baseType: !1326, size: 192)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 192, elements: !193)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1328, line: 16, size: 64, elements: !1329)
!1328 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1327, file: !1328, line: 17, baseType: !614, size: 16)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1327, file: !1328, line: 18, baseType: !614, size: 16, offset: 16)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1327, file: !1328, line: 19, baseType: !614, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1327, file: !1328, line: 19, baseType: !614, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1327, file: !1328, line: 19, baseType: !614, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1327, file: !1328, line: 19, baseType: !614, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1327, file: !1328, line: 19, baseType: !614, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1327, file: !1328, line: 20, baseType: !614, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1327, file: !1328, line: 20, baseType: !614, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1327, file: !1328, line: 20, baseType: !614, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1327, file: !1328, line: 20, baseType: !614, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1327, file: !1328, line: 20, baseType: !614, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1327, file: !1328, line: 20, baseType: !614, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1322, file: !1323, line: 491, baseType: !239, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1322, file: !1323, line: 495, baseType: !152, size: 16, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1322, file: !1323, line: 496, baseType: !152, size: 16, offset: 272)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1322, file: !1323, line: 497, baseType: !152, size: 16, offset: 288)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1322, file: !1323, line: 498, baseType: !152, size: 16, offset: 304)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1322, file: !1323, line: 502, baseType: !239, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1322, file: !1323, line: 503, baseType: !239, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1322, file: !1323, line: 514, baseType: !1351, size: 256, offset: 448)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 256, elements: !573)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1323, line: 483, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1322, file: !1323, line: 516, baseType: !239, size: 64, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1322, file: !1323, line: 518, baseType: !239, size: 64, offset: 768)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1322, file: !1323, line: 520, baseType: !239, size: 64, offset: 832)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1322, file: !1323, line: 521, baseType: !239, size: 64, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1322, file: !1323, line: 522, baseType: !239, size: 64, offset: 960)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1322, file: !1323, line: 528, baseType: !1360, size: 64, offset: 1024)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1323, line: 10, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1322, file: !1323, line: 535, baseType: !239, size: 64, offset: 1088)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1322, file: !1323, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1322, file: !1323, line: 540, baseType: !1365, size: 33280, offset: 1536)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1366, line: 317, size: 33280, elements: !1367)
!1366 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1365, file: !1366, line: 330, baseType: !7, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1365, file: !1366, line: 337, baseType: !239, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1365, file: !1366, line: 348, baseType: !1371, size: 32768, offset: 512)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1366, line: 304, size: 32768, elements: !1372)
!1372 = !{!1373, !1388, !1427, !1477, !1494}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1371, file: !1366, line: 305, baseType: !1374, size: 896)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1366, line: 12, size: 896, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1387}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1374, file: !1366, line: 13, baseType: !352, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1374, file: !1366, line: 14, baseType: !352, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1374, file: !1366, line: 15, baseType: !352, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1374, file: !1366, line: 16, baseType: !352, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1374, file: !1366, line: 17, baseType: !352, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1374, file: !1366, line: 18, baseType: !352, size: 32, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1374, file: !1366, line: 19, baseType: !352, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1374, file: !1366, line: 22, baseType: !1384, size: 640, offset: 224)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 640, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 20)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1374, file: !1366, line: 25, baseType: !352, size: 32, offset: 864)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1371, file: !1366, line: 306, baseType: !1389, size: 4096, align: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1366, line: 34, size: 4096, align: 128, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1410, !1411, !1412, !1416, !1418, !1422}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1389, file: !1366, line: 35, baseType: !614, size: 16)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1389, file: !1366, line: 36, baseType: !614, size: 16, offset: 16)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1389, file: !1366, line: 37, baseType: !614, size: 16, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1389, file: !1366, line: 38, baseType: !614, size: 16, offset: 48)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1366, line: 39, baseType: !1396, size: 128, offset: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1366, line: 39, size: 128, elements: !1397)
!1397 = !{!1398, !1403}
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1366, line: 40, baseType: !1399, size: 128)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !1366, line: 40, size: 128, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1399, file: !1366, line: 41, baseType: !506, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1399, file: !1366, line: 42, baseType: !506, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1366, line: 44, baseType: !1404, size: 128)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !1366, line: 44, size: 128, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1404, file: !1366, line: 45, baseType: !352, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1404, file: !1366, line: 46, baseType: !352, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1404, file: !1366, line: 47, baseType: !352, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1404, file: !1366, line: 48, baseType: !352, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1389, file: !1366, line: 51, baseType: !352, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1389, file: !1366, line: 52, baseType: !352, size: 32, offset: 224)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1389, file: !1366, line: 55, baseType: !1413, size: 1024, offset: 256)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 1024, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1389, file: !1366, line: 58, baseType: !1417, size: 2048, offset: 1280)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 2048, elements: !197)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1389, file: !1366, line: 60, baseType: !1419, size: 384, offset: 3328)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 384, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 12)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1366, line: 62, baseType: !1423, size: 384, offset: 3712)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1366, line: 62, size: 384, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1423, file: !1366, line: 63, baseType: !1419, size: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1423, file: !1366, line: 64, baseType: !1419, size: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1371, file: !1366, line: 307, baseType: !1428, size: 1088)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1366, line: 79, size: 1088, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1476}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1428, file: !1366, line: 80, baseType: !352, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1428, file: !1366, line: 81, baseType: !352, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1428, file: !1366, line: 82, baseType: !352, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1428, file: !1366, line: 83, baseType: !352, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1428, file: !1366, line: 84, baseType: !352, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1428, file: !1366, line: 85, baseType: !352, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1428, file: !1366, line: 86, baseType: !352, size: 32, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1428, file: !1366, line: 88, baseType: !1384, size: 640, offset: 224)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1428, file: !1366, line: 89, baseType: !770, size: 8, offset: 864)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1428, file: !1366, line: 90, baseType: !770, size: 8, offset: 872)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1428, file: !1366, line: 91, baseType: !770, size: 8, offset: 880)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1428, file: !1366, line: 92, baseType: !770, size: 8, offset: 888)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1428, file: !1366, line: 93, baseType: !770, size: 8, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1428, file: !1366, line: 94, baseType: !770, size: 8, offset: 904)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1428, file: !1366, line: 95, baseType: !1445, size: 64, offset: 960)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1447, line: 11, size: 128, elements: !1448)
!1447 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1446, file: !1447, line: 12, baseType: !226, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1446, file: !1447, line: 13, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1453, line: 56, size: 1344, elements: !1454)
!1453 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1452, file: !1453, line: 61, baseType: !239, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1452, file: !1453, line: 62, baseType: !239, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1452, file: !1453, line: 63, baseType: !239, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1452, file: !1453, line: 64, baseType: !239, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1452, file: !1453, line: 65, baseType: !239, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1452, file: !1453, line: 66, baseType: !239, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1452, file: !1453, line: 68, baseType: !239, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1452, file: !1453, line: 69, baseType: !239, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1452, file: !1453, line: 70, baseType: !239, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1452, file: !1453, line: 71, baseType: !239, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1452, file: !1453, line: 72, baseType: !239, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1452, file: !1453, line: 73, baseType: !239, size: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1452, file: !1453, line: 74, baseType: !239, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1452, file: !1453, line: 75, baseType: !239, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1452, file: !1453, line: 76, baseType: !239, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1452, file: !1453, line: 81, baseType: !239, size: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1452, file: !1453, line: 83, baseType: !239, size: 64, offset: 1024)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1452, file: !1453, line: 84, baseType: !239, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1452, file: !1453, line: 85, baseType: !239, size: 64, offset: 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1452, file: !1453, line: 86, baseType: !239, size: 64, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1452, file: !1453, line: 87, baseType: !239, size: 64, offset: 1280)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1428, file: !1366, line: 96, baseType: !352, size: 32, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1371, file: !1366, line: 308, baseType: !1478, size: 4608, align: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1366, line: 289, size: 4608, align: 512, elements: !1479)
!1479 = !{!1480, !1481, !1490}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1478, file: !1366, line: 290, baseType: !1389, size: 4096, align: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1478, file: !1366, line: 291, baseType: !1482, size: 512, offset: 4096)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1366, line: 268, size: 512, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1482, file: !1366, line: 269, baseType: !506, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1482, file: !1366, line: 270, baseType: !506, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1482, file: !1366, line: 271, baseType: !1487, size: 384, offset: 128)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 384, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 6)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1478, file: !1366, line: 292, baseType: !1491, offset: 4608)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 0)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1371, file: !1366, line: 309, baseType: !1495, size: 32768)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 32768, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 4096)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !627, file: !444, line: 378, baseType: !1499, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !623, file: !444, line: 384, baseType: !933, size: 192, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !501, file: !444, line: 500, baseType: !104, offset: 6656)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !501, file: !444, line: 501, baseType: !1503, size: 64, offset: 6656)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !444, line: 387, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !501, file: !444, line: 516, baseType: !1506, size: 64, offset: 6720)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !288, line: 18, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !501, file: !444, line: 519, baseType: !413, size: 64, offset: 6784)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !501, file: !444, line: 521, baseType: !1510, size: 64, offset: 6848)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !444, line: 521, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !501, file: !444, line: 545, baseType: !89, size: 32, offset: 6912)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !501, file: !444, line: 548, baseType: !256, size: 8, offset: 6944)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !501, file: !444, line: 550, baseType: !1515, offset: 6952)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1516, line: 142, elements: !118)
!1516 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !501, file: !444, line: 554, baseType: !1518, size: 256, offset: 6976)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1519, line: 102, size: 256, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1518, file: !1519, line: 103, baseType: !422, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1518, file: !1519, line: 104, baseType: !73, size: 128, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1518, file: !1519, line: 105, baseType: !1524, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1519, line: 21, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !501, file: !444, line: 557, baseType: !352, size: 32, offset: 7232)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !498, file: !444, line: 565, baseType: !1531, offset: 7296)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, elements: !1532)
!1532 = !{!1533}
!1533 = !DISubrange(count: -1)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !488, file: !444, line: 333, baseType: !1535, size: 64, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !367, line: 284, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !367, line: 284, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1536, file: !367, line: 284, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !524, line: 19, baseType: !239)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !488, file: !444, line: 334, baseType: !239, size: 64, offset: 640)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !488, file: !444, line: 343, baseType: !1542, size: 256, offset: 704)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !444, line: 340, size: 256, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1542, file: !444, line: 341, baseType: !311, size: 192, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1542, file: !444, line: 342, baseType: !239, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !488, file: !444, line: 351, baseType: !73, size: 128, offset: 960)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !488, file: !444, line: 353, baseType: !1548, size: 64, offset: 1088)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !444, line: 353, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !488, file: !444, line: 356, baseType: !441, size: 64, offset: 1152)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !488, file: !444, line: 359, baseType: !239, size: 64, offset: 1216)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !488, file: !444, line: 361, baseType: !413, size: 64, offset: 1280)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !488, file: !444, line: 362, baseType: !63, size: 64, offset: 1344)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !488, file: !444, line: 365, baseType: !422, size: 64, offset: 1408)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !488, file: !444, line: 373, baseType: !1556, offset: 1472)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !444, line: 296, elements: !118)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !397, file: !304, line: 109, baseType: !1558, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !304, line: 31, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !397, file: !304, line: 110, baseType: !458, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !397, file: !304, line: 111, baseType: !302, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !303, file: !304, line: 148, baseType: !63, size: 64, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !303, file: !304, line: 154, baseType: !506, size: 64, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !304, line: 156, baseType: !152, size: 16, offset: 896)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !303, file: !304, line: 157, baseType: !151, size: 16, offset: 912)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !303, file: !304, line: 158, baseType: !1567, size: 64, offset: 960)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !304, line: 32, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !154, file: !155, line: 71, baseType: !80, size: 32, offset: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !154, file: !155, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !154, file: !155, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !154, file: !155, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !154, file: !155, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !154, file: !155, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !143, file: !144, line: 88, baseType: !1576, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!151, !153, !1579, !93}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !144, line: 168, size: 448, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1589, !1590}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1580, file: !144, line: 169, baseType: !228, size: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1580, file: !144, line: 170, baseType: !236, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1580, file: !144, line: 171, baseType: !63, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1580, file: !144, line: 172, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!222, !413, !153, !1579, !192, !458, !236}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1580, file: !144, line: 174, baseType: !1586, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1580, file: !144, line: 176, baseType: !1591, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!93, !413, !153, !1579, !487}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !143, file: !144, line: 90, baseType: !241, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !143, file: !144, line: 91, baseType: !1596, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !128, file: !129, line: 59, baseType: !140, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !128, file: !129, line: 60, baseType: !153, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !128, file: !129, line: 62, baseType: !1600, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!93, !1603, !187}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1775, !1776, !1791, !1792, !1793, !1794, !1795, !1796, !1805, !1910, !1923, !1926, !1927, !1931, !1933, !1934, !1935, !1939, !1945, !1946, !1949, !1953, !1956, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1968, !1971, !1972, !1973, !1974}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1604, file: !30, line: 462, baseType: !154, size: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1604, file: !30, line: 463, baseType: !1603, size: 64, offset: 512)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1604, file: !30, line: 465, baseType: !1609, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !1611, line: 88, size: 1664, elements: !1612)
!1611 = !DIFile(filename: "drivers/base/base.h", directory: "/home/lizy2001/genbc/linux")
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1772, !1773, !1774}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !1610, file: !1611, line: 89, baseType: !101, size: 256, align: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !1610, file: !1611, line: 90, baseType: !68, size: 256, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !1610, file: !1611, line: 91, baseType: !68, size: 256, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1610, file: !1611, line: 92, baseType: !68, size: 256, offset: 768)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !1610, file: !1611, line: 93, baseType: !68, size: 256, offset: 1024)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !1610, file: !1611, line: 94, baseType: !73, size: 128, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !1610, file: !1611, line: 95, baseType: !1620, size: 64, offset: 1408)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1622)
!1622 = !{!1623, !1624, !1730, !1731, !1732, !1733, !1734, !1738, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1621, file: !24, line: 96, baseType: !132, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1621, file: !24, line: 97, baseType: !1625, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1627, line: 82, size: 1408, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1639, !1640, !1644, !1648, !1649, !1650, !1651, !1652, !1660, !1661, !1662, !1663, !1691, !1695, !1726, !1729}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1626, file: !1627, line: 83, baseType: !132, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1626, file: !1627, line: 84, baseType: !132, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1626, file: !1627, line: 85, baseType: !1603, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1626, file: !1627, line: 86, baseType: !140, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1626, file: !1627, line: 87, baseType: !140, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1626, file: !1627, line: 88, baseType: !140, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1626, file: !1627, line: 90, baseType: !1636, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!93, !1603, !1620}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1626, file: !1627, line: 91, baseType: !1600, size: 64, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1626, file: !1627, line: 92, baseType: !1641, size: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!93, !1603}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1626, file: !1627, line: 93, baseType: !1645, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1603}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1626, file: !1627, line: 94, baseType: !1641, size: 64, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1626, file: !1627, line: 95, baseType: !1645, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1626, file: !1627, line: 97, baseType: !1641, size: 64, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1626, file: !1627, line: 98, baseType: !1641, size: 64, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1626, file: !1627, line: 100, baseType: !1653, size: 64, offset: 896)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!93, !1603, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1657, file: !37, line: 51, baseType: !93, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1626, file: !1627, line: 101, baseType: !1641, size: 64, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1626, file: !1627, line: 103, baseType: !1641, size: 64, offset: 1024)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1626, file: !1627, line: 105, baseType: !1641, size: 64, offset: 1088)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1626, file: !1627, line: 107, baseType: !1664, size: 64, offset: 1152)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1666, file: !37, line: 279, baseType: !1641, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1666, file: !37, line: 280, baseType: !1645, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1666, file: !37, line: 281, baseType: !1641, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1666, file: !37, line: 282, baseType: !1641, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1666, file: !37, line: 283, baseType: !1641, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1666, file: !37, line: 284, baseType: !1641, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1666, file: !37, line: 285, baseType: !1641, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1666, file: !37, line: 286, baseType: !1641, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1666, file: !37, line: 287, baseType: !1641, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1666, file: !37, line: 288, baseType: !1641, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1666, file: !37, line: 289, baseType: !1641, size: 64, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1666, file: !37, line: 290, baseType: !1641, size: 64, offset: 704)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1666, file: !37, line: 291, baseType: !1641, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1666, file: !37, line: 292, baseType: !1641, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1666, file: !37, line: 293, baseType: !1641, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1666, file: !37, line: 294, baseType: !1641, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1666, file: !37, line: 295, baseType: !1641, size: 64, offset: 1024)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1666, file: !37, line: 296, baseType: !1641, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1666, file: !37, line: 297, baseType: !1641, size: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1666, file: !37, line: 298, baseType: !1641, size: 64, offset: 1216)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1666, file: !37, line: 299, baseType: !1641, size: 64, offset: 1280)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1666, file: !37, line: 300, baseType: !1641, size: 64, offset: 1344)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1666, file: !37, line: 301, baseType: !1641, size: 64, offset: 1408)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1626, file: !1627, line: 109, baseType: !1692, size: 64, offset: 1216)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1627, line: 109, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1626, file: !1627, line: 111, baseType: !1696, size: 64, offset: 1280)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1611, line: 40, size: 2880, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1722, !1723, !1724, !1725}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1697, file: !1611, line: 41, baseType: !162, size: 704)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "devices_kset", scope: !1697, file: !1611, line: 42, baseType: !161, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !1697, file: !1611, line: 43, baseType: !73, size: 128, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1697, file: !1611, line: 44, baseType: !418, size: 192, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_kset", scope: !1697, file: !1611, line: 46, baseType: !161, size: 64, offset: 1088)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1697, file: !1611, line: 47, baseType: !101, size: 256, align: 64, offset: 1152)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "klist_drivers", scope: !1697, file: !1611, line: 48, baseType: !101, size: 256, align: 64, offset: 1408)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "bus_notifier", scope: !1697, file: !1611, line: 49, baseType: !1707, size: 320, offset: 1664)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1708, line: 65, size: 320, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1707, file: !1708, line: 66, baseType: !533, size: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1707, file: !1708, line: 67, baseType: !1712, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1708, line: 54, size: 192, elements: !1714)
!1714 = !{!1715, !1720, !1721}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1713, file: !1708, line: 55, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1708, line: 51, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!93, !1712, !239, !63}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1713, file: !1708, line: 56, baseType: !1712, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1713, file: !1708, line: 57, baseType: !93, size: 32, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !1697, file: !1611, line: 50, baseType: !7, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1697, file: !1611, line: 51, baseType: !1625, size: 64, offset: 2048)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "glue_dirs", scope: !1697, file: !1611, line: 53, baseType: !162, size: 704, offset: 2112)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1697, file: !1611, line: 54, baseType: !127, size: 64, offset: 2816)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1626, file: !1627, line: 112, baseType: !1727, offset: 1344)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1728, line: 187, elements: !118)
!1728 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1626, file: !1627, line: 114, baseType: !256, size: 8, offset: 1344)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1621, file: !24, line: 99, baseType: !136, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1621, file: !24, line: 100, baseType: !132, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1621, file: !24, line: 102, baseType: !256, size: 8, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1621, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1621, file: !24, line: 105, baseType: !1735, size: 64, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1621, file: !24, line: 106, baseType: !1739, size: 64, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1621, file: !24, line: 108, baseType: !1641, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1621, file: !24, line: 109, baseType: !1645, size: 64, offset: 512)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1621, file: !24, line: 110, baseType: !1641, size: 64, offset: 576)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1621, file: !24, line: 111, baseType: !1645, size: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1621, file: !24, line: 112, baseType: !1653, size: 64, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1621, file: !24, line: 113, baseType: !1641, size: 64, offset: 768)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1621, file: !24, line: 114, baseType: !140, size: 64, offset: 832)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1621, file: !24, line: 115, baseType: !140, size: 64, offset: 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1621, file: !24, line: 117, baseType: !1664, size: 64, offset: 960)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1621, file: !24, line: 118, baseType: !1645, size: 64, offset: 1024)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1621, file: !24, line: 120, baseType: !1753, size: 64, offset: 1088)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1611, line: 58, size: 1152, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1771}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1754, file: !1611, line: 59, baseType: !154, size: 512)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1754, file: !1611, line: 60, baseType: !101, size: 256, align: 64, offset: 512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1754, file: !1611, line: 61, baseType: !68, size: 256, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1754, file: !1611, line: 62, baseType: !1760, size: 64, offset: 1024)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1762, line: 46, size: 768, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1767, !1770}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1761, file: !1762, line: 47, baseType: !154, size: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1761, file: !1762, line: 48, baseType: !136, size: 64, offset: 512)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1761, file: !1762, line: 49, baseType: !153, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1761, file: !1762, line: 50, baseType: !1768, size: 64, offset: 640)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1762, line: 50, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1761, file: !1762, line: 51, baseType: !932, size: 64, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1754, file: !1611, line: 63, baseType: !1620, size: 64, offset: 1088)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !1610, file: !1611, line: 96, baseType: !192, size: 64, offset: 1472)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1610, file: !1611, line: 97, baseType: !1603, size: 64, offset: 1536)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1610, file: !1611, line: 98, baseType: !770, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1604, file: !30, line: 467, baseType: !132, size: 64, offset: 640)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1604, file: !30, line: 468, baseType: !1777, size: 64, offset: 704)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1789, !1790}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1779, file: !30, line: 88, baseType: !132, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1779, file: !30, line: 89, baseType: !140, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1779, file: !30, line: 90, baseType: !1600, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1779, file: !30, line: 91, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!192, !1603, !1788, !286, !294}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1779, file: !30, line: 93, baseType: !1645, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1779, file: !30, line: 95, baseType: !1664, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1604, file: !30, line: 470, baseType: !1625, size: 64, offset: 768)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1604, file: !30, line: 471, baseType: !1620, size: 64, offset: 832)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1604, file: !30, line: 473, baseType: !63, size: 64, offset: 896)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1604, file: !30, line: 475, baseType: !63, size: 64, offset: 960)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1604, file: !30, line: 480, baseType: !418, size: 192, offset: 1024)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1604, file: !30, line: 484, baseType: !1797, size: 576, offset: 1216)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1797, file: !30, line: 362, baseType: !73, size: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1797, file: !30, line: 363, baseType: !73, size: 128, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1797, file: !30, line: 364, baseType: !73, size: 128, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1797, file: !30, line: 365, baseType: !73, size: 128, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1797, file: !30, line: 366, baseType: !256, size: 8, offset: 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1797, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1604, file: !30, line: 485, baseType: !1806, size: 2304, offset: 1792)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1903, !1907}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1806, file: !37, line: 566, baseType: !1656, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1806, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1806, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1806, file: !37, line: 569, baseType: !256, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1806, file: !37, line: 570, baseType: !256, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1806, file: !37, line: 571, baseType: !256, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1806, file: !37, line: 572, baseType: !256, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1806, file: !37, line: 573, baseType: !256, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1806, file: !37, line: 574, baseType: !256, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1806, file: !37, line: 575, baseType: !256, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1806, file: !37, line: 576, baseType: !256, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1806, file: !37, line: 577, baseType: !352, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1806, file: !37, line: 578, baseType: !104, offset: 96)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1806, file: !37, line: 580, baseType: !73, size: 128, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1806, file: !37, line: 581, baseType: !933, size: 192, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1806, file: !37, line: 582, baseType: !1824, size: 64, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1826, line: 43, size: 1472, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1835, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1825, file: !1826, line: 44, baseType: !132, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1825, file: !1826, line: 45, baseType: !93, size: 32, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1825, file: !1826, line: 46, baseType: !73, size: 128, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1825, file: !1826, line: 47, baseType: !104, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1825, file: !1826, line: 48, baseType: !1833, size: 64, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1825, file: !1826, line: 49, baseType: !1836, size: 320, offset: 320)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1837, line: 11, size: 320, elements: !1838)
!1837 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1838 = !{!1839, !1840, !1841, !1846}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1836, file: !1837, line: 16, baseType: !903, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1836, file: !1837, line: 17, baseType: !239, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1836, file: !1837, line: 18, baseType: !1842, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1836, file: !1837, line: 19, baseType: !352, size: 32, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1825, file: !1826, line: 50, baseType: !239, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1825, file: !1826, line: 51, baseType: !709, size: 64, offset: 704)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1825, file: !1826, line: 52, baseType: !709, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1825, file: !1826, line: 53, baseType: !709, size: 64, offset: 832)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1825, file: !1826, line: 54, baseType: !709, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1825, file: !1826, line: 55, baseType: !709, size: 64, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1825, file: !1826, line: 56, baseType: !239, size: 64, offset: 1024)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1825, file: !1826, line: 57, baseType: !239, size: 64, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1825, file: !1826, line: 58, baseType: !239, size: 64, offset: 1152)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1825, file: !1826, line: 59, baseType: !239, size: 64, offset: 1216)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1825, file: !1826, line: 60, baseType: !239, size: 64, offset: 1280)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1825, file: !1826, line: 61, baseType: !1603, size: 64, offset: 1344)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1825, file: !1826, line: 62, baseType: !256, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1825, file: !1826, line: 63, baseType: !256, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1806, file: !37, line: 583, baseType: !256, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1806, file: !37, line: 584, baseType: !256, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1806, file: !37, line: 585, baseType: !256, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1806, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1806, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1806, file: !37, line: 592, baseType: !701, size: 512, offset: 576)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1806, file: !37, line: 593, baseType: !506, size: 64, offset: 1088)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1806, file: !37, line: 594, baseType: !1518, size: 256, offset: 1152)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1806, file: !37, line: 595, baseType: !386, size: 128, offset: 1408)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1806, file: !37, line: 596, baseType: !1833, size: 64, offset: 1536)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1806, file: !37, line: 597, baseType: !89, size: 32, offset: 1600)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1806, file: !37, line: 598, baseType: !89, size: 32, offset: 1632)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1806, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1806, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1806, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1806, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1806, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1806, file: !37, line: 604, baseType: !256, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1806, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1806, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1806, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1806, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1806, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1806, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1806, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1806, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1806, file: !37, line: 613, baseType: !93, size: 32, offset: 1792)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1806, file: !37, line: 614, baseType: !93, size: 32, offset: 1824)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1806, file: !37, line: 615, baseType: !506, size: 64, offset: 1856)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1806, file: !37, line: 616, baseType: !506, size: 64, offset: 1920)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1806, file: !37, line: 617, baseType: !506, size: 64, offset: 1984)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1806, file: !37, line: 618, baseType: !506, size: 64, offset: 2048)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1806, file: !37, line: 620, baseType: !1894, size: 64, offset: 2112)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1895, file: !37, line: 537, baseType: !104)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1895, file: !37, line: 538, baseType: !7, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1895, file: !37, line: 540, baseType: !73, size: 128, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1895, file: !37, line: 543, baseType: !1901, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1806, file: !37, line: 621, baseType: !1904, size: 64, offset: 2176)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1603, !863}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1806, file: !37, line: 622, baseType: !1908, size: 64, offset: 2240)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1604, file: !30, line: 486, baseType: !1911, size: 64, offset: 4096)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1920, !1921, !1922}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1912, file: !37, line: 643, baseType: !1666, size: 1472)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1912, file: !37, line: 644, baseType: !1641, size: 64, offset: 1472)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1912, file: !37, line: 645, baseType: !1917, size: 64, offset: 1536)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1603, !256}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1912, file: !37, line: 646, baseType: !1641, size: 64, offset: 1600)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1912, file: !37, line: 647, baseType: !1645, size: 64, offset: 1664)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1912, file: !37, line: 648, baseType: !1645, size: 64, offset: 1728)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1604, file: !30, line: 493, baseType: !1924, size: 64, offset: 4160)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1604, file: !30, line: 499, baseType: !73, size: 128, offset: 4224)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1604, file: !30, line: 502, baseType: !1928, size: 64, offset: 4352)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1930)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1604, file: !30, line: 504, baseType: !1932, size: 64, offset: 4416)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1604, file: !30, line: 505, baseType: !506, size: 64, offset: 4480)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1604, file: !30, line: 510, baseType: !506, size: 64, offset: 4544)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1604, file: !30, line: 511, baseType: !1936, size: 64, offset: 4608)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1938)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1604, file: !30, line: 513, baseType: !1940, size: 64, offset: 4672)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1941, file: !30, line: 293, baseType: !7, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1941, file: !30, line: 294, baseType: !239, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1604, file: !30, line: 515, baseType: !73, size: 128, offset: 4736)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1604, file: !30, line: 526, baseType: !1947, offset: 4864)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1948, line: 5, elements: !118)
!1948 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1604, file: !30, line: 528, baseType: !1950, size: 64, offset: 4864)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1952, line: 14, flags: DIFlagFwdDecl)
!1952 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1604, file: !30, line: 529, baseType: !1954, size: 64, offset: 4928)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1627, line: 22, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1604, file: !30, line: 534, baseType: !1957, size: 32, offset: 4992)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !74, line: 16, baseType: !1958)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !74, line: 13, baseType: !352)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1604, file: !30, line: 535, baseType: !352, size: 32, offset: 5024)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1604, file: !30, line: 537, baseType: !104, offset: 5056)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1604, file: !30, line: 538, baseType: !73, size: 128, offset: 5056)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1604, file: !30, line: 540, baseType: !127, size: 64, offset: 5184)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1604, file: !30, line: 541, baseType: !140, size: 64, offset: 5248)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1604, file: !30, line: 543, baseType: !1645, size: 64, offset: 5312)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1604, file: !30, line: 544, baseType: !1966, size: 64, offset: 5376)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1604, file: !30, line: 545, baseType: !1969, size: 64, offset: 5440)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1604, file: !30, line: 547, baseType: !256, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1604, file: !30, line: 548, baseType: !256, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1604, file: !30, line: 549, baseType: !256, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1604, file: !30, line: 550, baseType: !256, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !128, file: !129, line: 63, baseType: !1976, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!192, !1603, !1788}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !128, file: !129, line: 65, baseType: !1980, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !127}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !128, file: !129, line: 66, baseType: !1645, size: 64, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !128, file: !129, line: 68, baseType: !1641, size: 64, offset: 576)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !128, file: !129, line: 70, baseType: !247, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !128, file: !129, line: 71, baseType: !1987, size: 64, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!266, !1603}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !128, file: !129, line: 73, baseType: !1991, size: 64, offset: 768)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1603, !286, !294}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !128, file: !129, line: 75, baseType: !1664, size: 64, offset: 832)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !128, file: !129, line: 77, baseType: !1696, size: 64, offset: 896)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !96, file: !97, line: 20, baseType: !141, size: 64, offset: 448)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !96, file: !97, line: 21, baseType: !1998, size: 64, offset: 512)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2001)
!2001 = !{!2002, !2003, !2007}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2000, file: !30, line: 100, baseType: !228, size: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2000, file: !30, line: 101, baseType: !2004, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!222, !1603, !1999, !192}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2000, file: !30, line: 103, baseType: !2008, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!222, !1603, !1999, !132, !236}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !96, file: !97, line: 22, baseType: !2012, size: 64, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!93, !95, !1603}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !97, line: 24, baseType: !239, size: 64, offset: 640)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "classdev", scope: !65, file: !3, line: 28, baseType: !1604, size: 5568, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2021 = !{!0, !2022}
!2022 = !DIGlobalVariableExpression(var: !2023, expr: !DIExpression())
!2023 = distinct !DIGlobalVariable(name: "attribute_container_list", scope: !2, file: !3, line: 62, type: !73, isLocal: true, isDefinition: true)
!2024 = !{i32 7, !"Dwarf Version", i32 4}
!2025 = !{i32 2, !"Debug Info Version", i32 3}
!2026 = !{i32 1, !"wchar_size", i32 2}
!2027 = !{i32 1, !"Code Model", i32 2}
!2028 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2029 = distinct !DISubprogram(name: "attribute_container_classdev_to_container", scope: !3, file: !3, line: 54, type: !2030, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!95, !1603}
!2032 = !DILocalVariable(name: "classdev", arg: 1, scope: !2029, file: !3, line: 54, type: !1603)
!2033 = !DILocation(line: 54, column: 58, scope: !2029)
!2034 = !DILocalVariable(name: "ic", scope: !2029, file: !3, line: 56, type: !64)
!2035 = !DILocation(line: 56, column: 29, scope: !2029)
!2036 = !DILocalVariable(name: "__mptr", scope: !2037, file: !3, line: 57, type: !63)
!2037 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 57, column: 3)
!2038 = !DILocation(line: 57, column: 3, scope: !2037)
!2039 = !DILocation(line: 57, column: 3, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 57, column: 3)
!2041 = !DILocation(line: 58, column: 9, scope: !2029)
!2042 = !DILocation(line: 58, column: 13, scope: !2029)
!2043 = !DILocation(line: 58, column: 2, scope: !2029)
!2044 = distinct !DISubprogram(name: "attribute_container_register", scope: !3, file: !3, line: 73, type: !2045, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!93, !95}
!2047 = !DILocalVariable(name: "cont", arg: 1, scope: !2044, file: !3, line: 73, type: !95)
!2048 = !DILocation(line: 73, column: 58, scope: !2044)
!2049 = !DILocation(line: 75, column: 18, scope: !2044)
!2050 = !DILocation(line: 75, column: 24, scope: !2044)
!2051 = !DILocation(line: 75, column: 2, scope: !2044)
!2052 = !DILocation(line: 76, column: 14, scope: !2044)
!2053 = !DILocation(line: 76, column: 20, scope: !2044)
!2054 = !DILocation(line: 76, column: 2, scope: !2044)
!2055 = !DILocation(line: 79, column: 2, scope: !2044)
!2056 = !DILocation(line: 80, column: 17, scope: !2044)
!2057 = !DILocation(line: 80, column: 23, scope: !2044)
!2058 = !DILocation(line: 80, column: 2, scope: !2044)
!2059 = !DILocation(line: 81, column: 2, scope: !2044)
!2060 = !DILocation(line: 83, column: 2, scope: !2044)
!2061 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2062, file: !2062, line: 33, type: !2063, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2062 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !77}
!2065 = !DILocalVariable(name: "list", arg: 1, scope: !2061, file: !2062, line: 33, type: !77)
!2066 = !DILocation(line: 33, column: 53, scope: !2061)
!2067 = !DILocation(line: 35, column: 2, scope: !2061)
!2068 = !DILocation(line: 35, column: 2, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2061, file: !2062, line: 35, column: 2)
!2070 = !DILocation(line: 35, column: 2, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2069, file: !2062, line: 35, column: 2)
!2072 = !DILocation(line: 35, column: 2, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !2062, line: 35, column: 2)
!2074 = !DILocation(line: 36, column: 15, scope: !2061)
!2075 = !DILocation(line: 36, column: 2, scope: !2061)
!2076 = !DILocation(line: 36, column: 8, scope: !2061)
!2077 = !DILocation(line: 36, column: 13, scope: !2061)
!2078 = !DILocation(line: 37, column: 1, scope: !2061)
!2079 = distinct !DISubprogram(name: "internal_container_klist_get", scope: !3, file: !3, line: 31, type: !122, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2080 = !DILocalVariable(name: "n", arg: 1, scope: !2079, file: !3, line: 31, type: !124)
!2081 = !DILocation(line: 31, column: 61, scope: !2079)
!2082 = !DILocalVariable(name: "ic", scope: !2079, file: !3, line: 33, type: !64)
!2083 = !DILocation(line: 33, column: 29, scope: !2079)
!2084 = !DILocalVariable(name: "__mptr", scope: !2085, file: !3, line: 34, type: !63)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 34, column: 3)
!2086 = !DILocation(line: 34, column: 3, scope: !2085)
!2087 = !DILocation(line: 34, column: 3, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 34, column: 3)
!2089 = !DILocation(line: 35, column: 14, scope: !2079)
!2090 = !DILocation(line: 35, column: 18, scope: !2079)
!2091 = !DILocation(line: 35, column: 2, scope: !2079)
!2092 = !DILocation(line: 36, column: 1, scope: !2079)
!2093 = distinct !DISubprogram(name: "internal_container_klist_put", scope: !3, file: !3, line: 38, type: !122, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2094 = !DILocalVariable(name: "n", arg: 1, scope: !2093, file: !3, line: 38, type: !124)
!2095 = !DILocation(line: 38, column: 61, scope: !2093)
!2096 = !DILocalVariable(name: "ic", scope: !2093, file: !3, line: 40, type: !64)
!2097 = !DILocation(line: 40, column: 29, scope: !2093)
!2098 = !DILocalVariable(name: "__mptr", scope: !2099, file: !3, line: 41, type: !63)
!2099 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 41, column: 3)
!2100 = !DILocation(line: 41, column: 3, scope: !2099)
!2101 = !DILocation(line: 41, column: 3, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 41, column: 3)
!2103 = !DILocation(line: 42, column: 14, scope: !2093)
!2104 = !DILocation(line: 42, column: 18, scope: !2093)
!2105 = !DILocation(line: 42, column: 2, scope: !2093)
!2106 = !DILocation(line: 43, column: 1, scope: !2093)
!2107 = distinct !DISubprogram(name: "list_add_tail", scope: !2062, file: !2062, line: 98, type: !2108, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !77, !77}
!2110 = !DILocalVariable(name: "new", arg: 1, scope: !2107, file: !2062, line: 98, type: !77)
!2111 = !DILocation(line: 98, column: 52, scope: !2107)
!2112 = !DILocalVariable(name: "head", arg: 2, scope: !2107, file: !2062, line: 98, type: !77)
!2113 = !DILocation(line: 98, column: 75, scope: !2107)
!2114 = !DILocation(line: 100, column: 13, scope: !2107)
!2115 = !DILocation(line: 100, column: 18, scope: !2107)
!2116 = !DILocation(line: 100, column: 24, scope: !2107)
!2117 = !DILocation(line: 100, column: 30, scope: !2107)
!2118 = !DILocation(line: 100, column: 2, scope: !2107)
!2119 = !DILocation(line: 101, column: 1, scope: !2107)
!2120 = distinct !DISubprogram(name: "attribute_container_unregister", scope: !3, file: !3, line: 93, type: !2045, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2121 = !DILocalVariable(name: "lock", arg: 1, scope: !2122, file: !2123, line: 392, type: !2126)
!2122 = distinct !DISubprogram(name: "spin_unlock", scope: !2123, file: !2123, line: 392, type: !2124, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2123 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!2127 = !DILocation(line: 392, column: 53, scope: !2122, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 104, column: 2, scope: !2120)
!2129 = !DILocalVariable(name: "lock", arg: 1, scope: !2130, file: !2123, line: 352, type: !2126)
!2130 = distinct !DISubprogram(name: "spin_lock", scope: !2123, file: !2123, line: 352, type: !2124, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2131 = !DILocation(line: 352, column: 51, scope: !2130, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 98, column: 2, scope: !2120)
!2133 = !DILocalVariable(name: "cont", arg: 1, scope: !2120, file: !3, line: 93, type: !95)
!2134 = !DILocation(line: 93, column: 60, scope: !2120)
!2135 = !DILocalVariable(name: "retval", scope: !2120, file: !3, line: 95, type: !93)
!2136 = !DILocation(line: 95, column: 6, scope: !2120)
!2137 = !DILocation(line: 97, column: 2, scope: !2120)
!2138 = !DILocation(line: 98, column: 13, scope: !2120)
!2139 = !DILocation(line: 98, column: 19, scope: !2120)
!2140 = !DILocation(line: 98, column: 30, scope: !2120)
!2141 = !DILocation(line: 354, column: 2, scope: !2142, inlinedAt: !2132)
!2142 = distinct !DILexicalBlock(scope: !2130, file: !2123, line: 354, column: 2)
!2143 = !{i32 -2145612947}
!2144 = !DILocation(line: 354, column: 2, scope: !2145, inlinedAt: !2132)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !2123, line: 354, column: 2)
!2146 = !DILocation(line: 99, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 99, column: 6)
!2148 = !DILocation(line: 99, column: 25, scope: !2147)
!2149 = !DILocation(line: 99, column: 36, scope: !2147)
!2150 = !DILocation(line: 99, column: 7, scope: !2147)
!2151 = !DILocation(line: 99, column: 6, scope: !2120)
!2152 = !DILocation(line: 100, column: 3, scope: !2147)
!2153 = !DILocation(line: 101, column: 9, scope: !2120)
!2154 = !DILocation(line: 102, column: 12, scope: !2120)
!2155 = !DILocation(line: 102, column: 18, scope: !2120)
!2156 = !DILocation(line: 102, column: 2, scope: !2120)
!2157 = !DILabel(scope: !2120, name: "out", file: !3, line: 103)
!2158 = !DILocation(line: 103, column: 2, scope: !2120)
!2159 = !DILocation(line: 104, column: 15, scope: !2120)
!2160 = !DILocation(line: 104, column: 21, scope: !2120)
!2161 = !DILocation(line: 104, column: 32, scope: !2120)
!2162 = !DILocation(line: 394, column: 2, scope: !2163, inlinedAt: !2128)
!2163 = distinct !DILexicalBlock(scope: !2122, file: !2123, line: 394, column: 2)
!2164 = !{i32 -2145610586}
!2165 = !DILocation(line: 394, column: 2, scope: !2166, inlinedAt: !2128)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !2123, line: 394, column: 2)
!2167 = !DILocation(line: 105, column: 2, scope: !2120)
!2168 = !DILocation(line: 106, column: 9, scope: !2120)
!2169 = !DILocation(line: 106, column: 2, scope: !2120)
!2170 = distinct !DISubprogram(name: "list_empty", scope: !2062, file: !2062, line: 280, type: !2171, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!93, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!2175 = !DILocalVariable(name: "head", arg: 1, scope: !2170, file: !2062, line: 280, type: !2173)
!2176 = !DILocation(line: 280, column: 54, scope: !2170)
!2177 = !DILocation(line: 282, column: 9, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2170, file: !2062, line: 282, column: 9)
!2179 = !DILocation(line: 282, column: 9, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2178, file: !2062, line: 282, column: 9)
!2181 = !DILocation(line: 282, column: 34, scope: !2170)
!2182 = !DILocation(line: 282, column: 31, scope: !2170)
!2183 = !DILocation(line: 282, column: 2, scope: !2170)
!2184 = distinct !DISubprogram(name: "list_del", scope: !2062, file: !2062, line: 144, type: !2063, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2185 = !DILocalVariable(name: "entry", arg: 1, scope: !2184, file: !2062, line: 144, type: !77)
!2186 = !DILocation(line: 144, column: 47, scope: !2184)
!2187 = !DILocation(line: 146, column: 19, scope: !2184)
!2188 = !DILocation(line: 146, column: 2, scope: !2184)
!2189 = !DILocation(line: 147, column: 2, scope: !2184)
!2190 = !DILocation(line: 147, column: 9, scope: !2184)
!2191 = !DILocation(line: 147, column: 14, scope: !2184)
!2192 = !DILocation(line: 148, column: 2, scope: !2184)
!2193 = !DILocation(line: 148, column: 9, scope: !2184)
!2194 = !DILocation(line: 148, column: 14, scope: !2184)
!2195 = !DILocation(line: 149, column: 1, scope: !2184)
!2196 = distinct !DISubprogram(name: "attribute_container_add_device", scope: !3, file: !3, line: 141, type: !2197, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !1603, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!93, !95, !1603, !1603}
!2202 = !DILocalVariable(name: "dev", arg: 1, scope: !2196, file: !3, line: 141, type: !1603)
!2203 = !DILocation(line: 141, column: 47, scope: !2196)
!2204 = !DILocalVariable(name: "fn", arg: 2, scope: !2196, file: !3, line: 142, type: !2199)
!2205 = !DILocation(line: 142, column: 17, scope: !2196)
!2206 = !DILocalVariable(name: "cont", scope: !2196, file: !3, line: 146, type: !95)
!2207 = !DILocation(line: 146, column: 30, scope: !2196)
!2208 = !DILocation(line: 148, column: 2, scope: !2196)
!2209 = !DILocalVariable(name: "__mptr", scope: !2210, file: !3, line: 149, type: !63)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 149, column: 2)
!2211 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 149, column: 2)
!2212 = !DILocation(line: 149, column: 2, scope: !2210)
!2213 = !DILocation(line: 149, column: 2, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 149, column: 2)
!2215 = !DILocation(line: 149, column: 2, scope: !2211)
!2216 = !DILocation(line: 149, column: 2, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 149, column: 2)
!2218 = !DILocalVariable(name: "ic", scope: !2219, file: !3, line: 150, type: !64)
!2219 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 149, column: 61)
!2220 = !DILocation(line: 150, column: 30, scope: !2219)
!2221 = !DILocation(line: 152, column: 40, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 152, column: 7)
!2223 = !DILocation(line: 152, column: 7, scope: !2222)
!2224 = !DILocation(line: 152, column: 7, scope: !2219)
!2225 = !DILocation(line: 153, column: 4, scope: !2222)
!2226 = !DILocation(line: 155, column: 8, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 155, column: 7)
!2228 = !DILocation(line: 155, column: 14, scope: !2227)
!2229 = !DILocation(line: 155, column: 20, scope: !2227)
!2230 = !DILocation(line: 155, column: 26, scope: !2227)
!2231 = !DILocation(line: 155, column: 7, scope: !2219)
!2232 = !DILocation(line: 156, column: 4, scope: !2227)
!2233 = !DILocation(line: 158, column: 8, scope: !2219)
!2234 = !DILocation(line: 158, column: 6, scope: !2219)
!2235 = !DILocation(line: 159, column: 8, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 159, column: 7)
!2237 = !DILocation(line: 159, column: 7, scope: !2219)
!2238 = !DILocation(line: 160, column: 4, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 159, column: 12)
!2240 = !DILocation(line: 161, column: 4, scope: !2239)
!2241 = !DILocation(line: 164, column: 14, scope: !2219)
!2242 = !DILocation(line: 164, column: 3, scope: !2219)
!2243 = !DILocation(line: 164, column: 7, scope: !2219)
!2244 = !DILocation(line: 164, column: 12, scope: !2219)
!2245 = !DILocation(line: 165, column: 22, scope: !2219)
!2246 = !DILocation(line: 165, column: 26, scope: !2219)
!2247 = !DILocation(line: 165, column: 3, scope: !2219)
!2248 = !DILocation(line: 166, column: 36, scope: !2219)
!2249 = !DILocation(line: 166, column: 25, scope: !2219)
!2250 = !DILocation(line: 166, column: 3, scope: !2219)
!2251 = !DILocation(line: 166, column: 7, scope: !2219)
!2252 = !DILocation(line: 166, column: 16, scope: !2219)
!2253 = !DILocation(line: 166, column: 23, scope: !2219)
!2254 = !DILocation(line: 167, column: 24, scope: !2219)
!2255 = !DILocation(line: 167, column: 30, scope: !2219)
!2256 = !DILocation(line: 167, column: 3, scope: !2219)
!2257 = !DILocation(line: 167, column: 7, scope: !2219)
!2258 = !DILocation(line: 167, column: 16, scope: !2219)
!2259 = !DILocation(line: 167, column: 22, scope: !2219)
!2260 = !DILocation(line: 168, column: 3, scope: !2219)
!2261 = !DILocation(line: 168, column: 9, scope: !2219)
!2262 = !DILocation(line: 168, column: 16, scope: !2219)
!2263 = !DILocation(line: 168, column: 28, scope: !2219)
!2264 = !DILocation(line: 169, column: 17, scope: !2219)
!2265 = !DILocation(line: 169, column: 21, scope: !2219)
!2266 = !DILocation(line: 169, column: 46, scope: !2219)
!2267 = !DILocation(line: 169, column: 37, scope: !2219)
!2268 = !DILocation(line: 169, column: 3, scope: !2219)
!2269 = !DILocation(line: 170, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 170, column: 7)
!2271 = !DILocation(line: 170, column: 7, scope: !2219)
!2272 = !DILocation(line: 171, column: 4, scope: !2270)
!2273 = !DILocation(line: 171, column: 7, scope: !2270)
!2274 = !DILocation(line: 171, column: 13, scope: !2270)
!2275 = !DILocation(line: 171, column: 19, scope: !2270)
!2276 = !DILocation(line: 171, column: 23, scope: !2270)
!2277 = !DILocation(line: 173, column: 42, scope: !2270)
!2278 = !DILocation(line: 173, column: 46, scope: !2270)
!2279 = !DILocation(line: 173, column: 4, scope: !2270)
!2280 = !DILocation(line: 174, column: 19, scope: !2219)
!2281 = !DILocation(line: 174, column: 23, scope: !2219)
!2282 = !DILocation(line: 174, column: 30, scope: !2219)
!2283 = !DILocation(line: 174, column: 36, scope: !2219)
!2284 = !DILocation(line: 174, column: 3, scope: !2219)
!2285 = !DILocation(line: 175, column: 2, scope: !2219)
!2286 = !DILocalVariable(name: "__mptr", scope: !2287, file: !3, line: 149, type: !63)
!2287 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 149, column: 2)
!2288 = !DILocation(line: 149, column: 2, scope: !2287)
!2289 = !DILocation(line: 149, column: 2, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 149, column: 2)
!2291 = distinct !{!2291, !2215, !2292}
!2292 = !DILocation(line: 175, column: 2, scope: !2211)
!2293 = !DILocation(line: 176, column: 2, scope: !2196)
!2294 = !DILocation(line: 177, column: 1, scope: !2196)
!2295 = distinct !DISubprogram(name: "attribute_container_no_classdevs", scope: !97, file: !97, line: 28, type: !2045, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2296 = !DILocalVariable(name: "atc", arg: 1, scope: !2295, file: !97, line: 28, type: !95)
!2297 = !DILocation(line: 28, column: 62, scope: !2295)
!2298 = !DILocation(line: 30, column: 9, scope: !2295)
!2299 = !DILocation(line: 30, column: 14, scope: !2295)
!2300 = !DILocation(line: 30, column: 20, scope: !2295)
!2301 = !DILocation(line: 30, column: 2, scope: !2295)
!2302 = distinct !DISubprogram(name: "kzalloc", scope: !56, file: !56, line: 662, type: !2303, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!63, !236, !347}
!2305 = !DILocalVariable(name: "s", arg: 1, scope: !2306, file: !56, line: 445, type: !1244)
!2306 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !56, file: !56, line: 445, type: !2307, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!63, !1244, !347, !236}
!2309 = !DILocation(line: 445, column: 72, scope: !2306, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 552, column: 10, scope: !2311, inlinedAt: !2314)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !56, line: 540, column: 34)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !56, line: 540, column: 6)
!2313 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 538, type: !2303, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2314 = distinct !DILocation(line: 664, column: 9, scope: !2302)
!2315 = !DILocalVariable(name: "flags", arg: 2, scope: !2306, file: !56, line: 446, type: !347)
!2316 = !DILocation(line: 446, column: 9, scope: !2306, inlinedAt: !2310)
!2317 = !DILocalVariable(name: "size", arg: 3, scope: !2306, file: !56, line: 446, type: !236)
!2318 = !DILocation(line: 446, column: 23, scope: !2306, inlinedAt: !2310)
!2319 = !DILocalVariable(name: "ret", scope: !2306, file: !56, line: 448, type: !63)
!2320 = !DILocation(line: 448, column: 8, scope: !2306, inlinedAt: !2310)
!2321 = !DILocalVariable(name: "flags", arg: 1, scope: !2322, file: !56, line: 318, type: !347)
!2322 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 318, type: !2323, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!55, !347}
!2325 = !DILocation(line: 318, column: 67, scope: !2322, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 553, column: 20, scope: !2311, inlinedAt: !2314)
!2327 = !DILocalVariable(name: "size", arg: 1, scope: !2328, file: !56, line: 346, type: !236)
!2328 = distinct !DISubprogram(name: "kmalloc_index", scope: !56, file: !56, line: 346, type: !2329, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!7, !236}
!2331 = !DILocation(line: 346, column: 58, scope: !2328, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 547, column: 11, scope: !2311, inlinedAt: !2314)
!2333 = !DILocalVariable(name: "size", arg: 1, scope: !2334, file: !56, line: 472, type: !236)
!2334 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !56, file: !56, line: 472, type: !2335, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!63, !236, !347, !7}
!2337 = !DILocation(line: 472, column: 28, scope: !2334, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 481, column: 9, scope: !2339, inlinedAt: !2340)
!2339 = distinct !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 478, type: !2303, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2340 = distinct !DILocation(line: 545, column: 11, scope: !2341, inlinedAt: !2314)
!2341 = distinct !DILexicalBlock(scope: !2311, file: !56, line: 544, column: 7)
!2342 = !DILocalVariable(name: "flags", arg: 2, scope: !2334, file: !56, line: 472, type: !347)
!2343 = !DILocation(line: 472, column: 40, scope: !2334, inlinedAt: !2338)
!2344 = !DILocalVariable(name: "order", arg: 3, scope: !2334, file: !56, line: 472, type: !7)
!2345 = !DILocation(line: 472, column: 60, scope: !2334, inlinedAt: !2338)
!2346 = !DILocalVariable(name: "size", arg: 1, scope: !2339, file: !56, line: 478, type: !236)
!2347 = !DILocation(line: 478, column: 51, scope: !2339, inlinedAt: !2340)
!2348 = !DILocalVariable(name: "flags", arg: 2, scope: !2339, file: !56, line: 478, type: !347)
!2349 = !DILocation(line: 478, column: 63, scope: !2339, inlinedAt: !2340)
!2350 = !DILocalVariable(name: "order", scope: !2339, file: !56, line: 480, type: !7)
!2351 = !DILocation(line: 480, column: 15, scope: !2339, inlinedAt: !2340)
!2352 = !DILocalVariable(name: "size", arg: 1, scope: !2313, file: !56, line: 538, type: !236)
!2353 = !DILocation(line: 538, column: 45, scope: !2313, inlinedAt: !2314)
!2354 = !DILocalVariable(name: "flags", arg: 2, scope: !2313, file: !56, line: 538, type: !347)
!2355 = !DILocation(line: 538, column: 57, scope: !2313, inlinedAt: !2314)
!2356 = !DILocalVariable(name: "index", scope: !2311, file: !56, line: 542, type: !7)
!2357 = !DILocation(line: 542, column: 16, scope: !2311, inlinedAt: !2314)
!2358 = !DILocalVariable(name: "size", arg: 1, scope: !2302, file: !56, line: 662, type: !236)
!2359 = !DILocation(line: 662, column: 36, scope: !2302)
!2360 = !DILocalVariable(name: "flags", arg: 2, scope: !2302, file: !56, line: 662, type: !347)
!2361 = !DILocation(line: 662, column: 48, scope: !2302)
!2362 = !DILocation(line: 664, column: 17, scope: !2302)
!2363 = !DILocation(line: 664, column: 23, scope: !2302)
!2364 = !DILocation(line: 664, column: 29, scope: !2302)
!2365 = !DILocation(line: 540, column: 27, scope: !2312, inlinedAt: !2314)
!2366 = !DILocation(line: 540, column: 6, scope: !2312, inlinedAt: !2314)
!2367 = !DILocation(line: 540, column: 6, scope: !2313, inlinedAt: !2314)
!2368 = !DILocation(line: 544, column: 7, scope: !2341, inlinedAt: !2314)
!2369 = !DILocation(line: 544, column: 12, scope: !2341, inlinedAt: !2314)
!2370 = !DILocation(line: 544, column: 7, scope: !2311, inlinedAt: !2314)
!2371 = !DILocation(line: 545, column: 25, scope: !2341, inlinedAt: !2314)
!2372 = !DILocation(line: 545, column: 31, scope: !2341, inlinedAt: !2314)
!2373 = !DILocation(line: 480, column: 33, scope: !2339, inlinedAt: !2340)
!2374 = !DILocation(line: 480, column: 23, scope: !2339, inlinedAt: !2340)
!2375 = !DILocation(line: 481, column: 29, scope: !2339, inlinedAt: !2340)
!2376 = !DILocation(line: 481, column: 35, scope: !2339, inlinedAt: !2340)
!2377 = !DILocation(line: 481, column: 42, scope: !2339, inlinedAt: !2340)
!2378 = !DILocation(line: 474, column: 23, scope: !2334, inlinedAt: !2338)
!2379 = !DILocation(line: 474, column: 29, scope: !2334, inlinedAt: !2338)
!2380 = !DILocation(line: 474, column: 36, scope: !2334, inlinedAt: !2338)
!2381 = !DILocation(line: 474, column: 9, scope: !2334, inlinedAt: !2338)
!2382 = !DILocation(line: 545, column: 4, scope: !2341, inlinedAt: !2314)
!2383 = !DILocation(line: 547, column: 25, scope: !2311, inlinedAt: !2314)
!2384 = !DILocation(line: 348, column: 7, scope: !2385, inlinedAt: !2332)
!2385 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 348, column: 6)
!2386 = !DILocation(line: 348, column: 6, scope: !2328, inlinedAt: !2332)
!2387 = !DILocation(line: 349, column: 3, scope: !2385, inlinedAt: !2332)
!2388 = !DILocation(line: 351, column: 6, scope: !2389, inlinedAt: !2332)
!2389 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 351, column: 6)
!2390 = !DILocation(line: 351, column: 11, scope: !2389, inlinedAt: !2332)
!2391 = !DILocation(line: 351, column: 6, scope: !2328, inlinedAt: !2332)
!2392 = !DILocation(line: 352, column: 3, scope: !2389, inlinedAt: !2332)
!2393 = !DILocation(line: 354, column: 32, scope: !2394, inlinedAt: !2332)
!2394 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 354, column: 6)
!2395 = !DILocation(line: 354, column: 37, scope: !2394, inlinedAt: !2332)
!2396 = !DILocation(line: 354, column: 42, scope: !2394, inlinedAt: !2332)
!2397 = !DILocation(line: 354, column: 45, scope: !2394, inlinedAt: !2332)
!2398 = !DILocation(line: 354, column: 50, scope: !2394, inlinedAt: !2332)
!2399 = !DILocation(line: 354, column: 6, scope: !2328, inlinedAt: !2332)
!2400 = !DILocation(line: 355, column: 3, scope: !2394, inlinedAt: !2332)
!2401 = !DILocation(line: 356, column: 32, scope: !2402, inlinedAt: !2332)
!2402 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 356, column: 6)
!2403 = !DILocation(line: 356, column: 37, scope: !2402, inlinedAt: !2332)
!2404 = !DILocation(line: 356, column: 43, scope: !2402, inlinedAt: !2332)
!2405 = !DILocation(line: 356, column: 46, scope: !2402, inlinedAt: !2332)
!2406 = !DILocation(line: 356, column: 51, scope: !2402, inlinedAt: !2332)
!2407 = !DILocation(line: 356, column: 6, scope: !2328, inlinedAt: !2332)
!2408 = !DILocation(line: 357, column: 3, scope: !2402, inlinedAt: !2332)
!2409 = !DILocation(line: 358, column: 6, scope: !2410, inlinedAt: !2332)
!2410 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 358, column: 6)
!2411 = !DILocation(line: 358, column: 11, scope: !2410, inlinedAt: !2332)
!2412 = !DILocation(line: 358, column: 6, scope: !2328, inlinedAt: !2332)
!2413 = !DILocation(line: 358, column: 26, scope: !2410, inlinedAt: !2332)
!2414 = !DILocation(line: 359, column: 6, scope: !2415, inlinedAt: !2332)
!2415 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 359, column: 6)
!2416 = !DILocation(line: 359, column: 11, scope: !2415, inlinedAt: !2332)
!2417 = !DILocation(line: 359, column: 6, scope: !2328, inlinedAt: !2332)
!2418 = !DILocation(line: 359, column: 26, scope: !2415, inlinedAt: !2332)
!2419 = !DILocation(line: 360, column: 6, scope: !2420, inlinedAt: !2332)
!2420 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 360, column: 6)
!2421 = !DILocation(line: 360, column: 11, scope: !2420, inlinedAt: !2332)
!2422 = !DILocation(line: 360, column: 6, scope: !2328, inlinedAt: !2332)
!2423 = !DILocation(line: 360, column: 26, scope: !2420, inlinedAt: !2332)
!2424 = !DILocation(line: 361, column: 6, scope: !2425, inlinedAt: !2332)
!2425 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 361, column: 6)
!2426 = !DILocation(line: 361, column: 11, scope: !2425, inlinedAt: !2332)
!2427 = !DILocation(line: 361, column: 6, scope: !2328, inlinedAt: !2332)
!2428 = !DILocation(line: 361, column: 26, scope: !2425, inlinedAt: !2332)
!2429 = !DILocation(line: 362, column: 6, scope: !2430, inlinedAt: !2332)
!2430 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 362, column: 6)
!2431 = !DILocation(line: 362, column: 11, scope: !2430, inlinedAt: !2332)
!2432 = !DILocation(line: 362, column: 6, scope: !2328, inlinedAt: !2332)
!2433 = !DILocation(line: 362, column: 26, scope: !2430, inlinedAt: !2332)
!2434 = !DILocation(line: 363, column: 6, scope: !2435, inlinedAt: !2332)
!2435 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 363, column: 6)
!2436 = !DILocation(line: 363, column: 11, scope: !2435, inlinedAt: !2332)
!2437 = !DILocation(line: 363, column: 6, scope: !2328, inlinedAt: !2332)
!2438 = !DILocation(line: 363, column: 26, scope: !2435, inlinedAt: !2332)
!2439 = !DILocation(line: 364, column: 6, scope: !2440, inlinedAt: !2332)
!2440 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 364, column: 6)
!2441 = !DILocation(line: 364, column: 11, scope: !2440, inlinedAt: !2332)
!2442 = !DILocation(line: 364, column: 6, scope: !2328, inlinedAt: !2332)
!2443 = !DILocation(line: 364, column: 26, scope: !2440, inlinedAt: !2332)
!2444 = !DILocation(line: 365, column: 6, scope: !2445, inlinedAt: !2332)
!2445 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 365, column: 6)
!2446 = !DILocation(line: 365, column: 11, scope: !2445, inlinedAt: !2332)
!2447 = !DILocation(line: 365, column: 6, scope: !2328, inlinedAt: !2332)
!2448 = !DILocation(line: 365, column: 26, scope: !2445, inlinedAt: !2332)
!2449 = !DILocation(line: 366, column: 6, scope: !2450, inlinedAt: !2332)
!2450 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 366, column: 6)
!2451 = !DILocation(line: 366, column: 11, scope: !2450, inlinedAt: !2332)
!2452 = !DILocation(line: 366, column: 6, scope: !2328, inlinedAt: !2332)
!2453 = !DILocation(line: 366, column: 26, scope: !2450, inlinedAt: !2332)
!2454 = !DILocation(line: 367, column: 6, scope: !2455, inlinedAt: !2332)
!2455 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 367, column: 6)
!2456 = !DILocation(line: 367, column: 11, scope: !2455, inlinedAt: !2332)
!2457 = !DILocation(line: 367, column: 6, scope: !2328, inlinedAt: !2332)
!2458 = !DILocation(line: 367, column: 26, scope: !2455, inlinedAt: !2332)
!2459 = !DILocation(line: 368, column: 6, scope: !2460, inlinedAt: !2332)
!2460 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 368, column: 6)
!2461 = !DILocation(line: 368, column: 11, scope: !2460, inlinedAt: !2332)
!2462 = !DILocation(line: 368, column: 6, scope: !2328, inlinedAt: !2332)
!2463 = !DILocation(line: 368, column: 26, scope: !2460, inlinedAt: !2332)
!2464 = !DILocation(line: 369, column: 6, scope: !2465, inlinedAt: !2332)
!2465 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 369, column: 6)
!2466 = !DILocation(line: 369, column: 11, scope: !2465, inlinedAt: !2332)
!2467 = !DILocation(line: 369, column: 6, scope: !2328, inlinedAt: !2332)
!2468 = !DILocation(line: 369, column: 26, scope: !2465, inlinedAt: !2332)
!2469 = !DILocation(line: 370, column: 6, scope: !2470, inlinedAt: !2332)
!2470 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 370, column: 6)
!2471 = !DILocation(line: 370, column: 11, scope: !2470, inlinedAt: !2332)
!2472 = !DILocation(line: 370, column: 6, scope: !2328, inlinedAt: !2332)
!2473 = !DILocation(line: 370, column: 26, scope: !2470, inlinedAt: !2332)
!2474 = !DILocation(line: 371, column: 6, scope: !2475, inlinedAt: !2332)
!2475 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 371, column: 6)
!2476 = !DILocation(line: 371, column: 11, scope: !2475, inlinedAt: !2332)
!2477 = !DILocation(line: 371, column: 6, scope: !2328, inlinedAt: !2332)
!2478 = !DILocation(line: 371, column: 26, scope: !2475, inlinedAt: !2332)
!2479 = !DILocation(line: 372, column: 6, scope: !2480, inlinedAt: !2332)
!2480 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 372, column: 6)
!2481 = !DILocation(line: 372, column: 11, scope: !2480, inlinedAt: !2332)
!2482 = !DILocation(line: 372, column: 6, scope: !2328, inlinedAt: !2332)
!2483 = !DILocation(line: 372, column: 26, scope: !2480, inlinedAt: !2332)
!2484 = !DILocation(line: 373, column: 6, scope: !2485, inlinedAt: !2332)
!2485 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 373, column: 6)
!2486 = !DILocation(line: 373, column: 11, scope: !2485, inlinedAt: !2332)
!2487 = !DILocation(line: 373, column: 6, scope: !2328, inlinedAt: !2332)
!2488 = !DILocation(line: 373, column: 26, scope: !2485, inlinedAt: !2332)
!2489 = !DILocation(line: 374, column: 6, scope: !2490, inlinedAt: !2332)
!2490 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 374, column: 6)
!2491 = !DILocation(line: 374, column: 11, scope: !2490, inlinedAt: !2332)
!2492 = !DILocation(line: 374, column: 6, scope: !2328, inlinedAt: !2332)
!2493 = !DILocation(line: 374, column: 26, scope: !2490, inlinedAt: !2332)
!2494 = !DILocation(line: 375, column: 6, scope: !2495, inlinedAt: !2332)
!2495 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 375, column: 6)
!2496 = !DILocation(line: 375, column: 11, scope: !2495, inlinedAt: !2332)
!2497 = !DILocation(line: 375, column: 6, scope: !2328, inlinedAt: !2332)
!2498 = !DILocation(line: 375, column: 27, scope: !2495, inlinedAt: !2332)
!2499 = !DILocation(line: 376, column: 6, scope: !2500, inlinedAt: !2332)
!2500 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 376, column: 6)
!2501 = !DILocation(line: 376, column: 11, scope: !2500, inlinedAt: !2332)
!2502 = !DILocation(line: 376, column: 6, scope: !2328, inlinedAt: !2332)
!2503 = !DILocation(line: 376, column: 32, scope: !2500, inlinedAt: !2332)
!2504 = !DILocation(line: 377, column: 6, scope: !2505, inlinedAt: !2332)
!2505 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 377, column: 6)
!2506 = !DILocation(line: 377, column: 11, scope: !2505, inlinedAt: !2332)
!2507 = !DILocation(line: 377, column: 6, scope: !2328, inlinedAt: !2332)
!2508 = !DILocation(line: 377, column: 32, scope: !2505, inlinedAt: !2332)
!2509 = !DILocation(line: 378, column: 6, scope: !2510, inlinedAt: !2332)
!2510 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 378, column: 6)
!2511 = !DILocation(line: 378, column: 11, scope: !2510, inlinedAt: !2332)
!2512 = !DILocation(line: 378, column: 6, scope: !2328, inlinedAt: !2332)
!2513 = !DILocation(line: 378, column: 32, scope: !2510, inlinedAt: !2332)
!2514 = !DILocation(line: 379, column: 6, scope: !2515, inlinedAt: !2332)
!2515 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 379, column: 6)
!2516 = !DILocation(line: 379, column: 11, scope: !2515, inlinedAt: !2332)
!2517 = !DILocation(line: 379, column: 6, scope: !2328, inlinedAt: !2332)
!2518 = !DILocation(line: 379, column: 33, scope: !2515, inlinedAt: !2332)
!2519 = !DILocation(line: 380, column: 6, scope: !2520, inlinedAt: !2332)
!2520 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 380, column: 6)
!2521 = !DILocation(line: 380, column: 11, scope: !2520, inlinedAt: !2332)
!2522 = !DILocation(line: 380, column: 6, scope: !2328, inlinedAt: !2332)
!2523 = !DILocation(line: 380, column: 33, scope: !2520, inlinedAt: !2332)
!2524 = !DILocation(line: 381, column: 6, scope: !2525, inlinedAt: !2332)
!2525 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 381, column: 6)
!2526 = !DILocation(line: 381, column: 11, scope: !2525, inlinedAt: !2332)
!2527 = !DILocation(line: 381, column: 6, scope: !2328, inlinedAt: !2332)
!2528 = !DILocation(line: 381, column: 33, scope: !2525, inlinedAt: !2332)
!2529 = !DILocation(line: 382, column: 2, scope: !2530, inlinedAt: !2332)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !56, line: 382, column: 2)
!2531 = distinct !DILexicalBlock(scope: !2328, file: !56, line: 382, column: 2)
!2532 = !{i32 -2143720716, i32 -2143720687, i32 -2143720641, i32 -2143720583, i32 -2143720529, i32 -2143720475, i32 -2143720420, i32 -2143720389}
!2533 = !DILocation(line: 382, column: 2, scope: !2534, inlinedAt: !2332)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !56, line: 382, column: 2)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !56, line: 382, column: 2)
!2536 = !{i32 -2143719946, i32 -2143719939, i32 -2143719885, i32 -2143719854, i32 -2143719824}
!2537 = !DILocation(line: 382, column: 2, scope: !2535, inlinedAt: !2332)
!2538 = !DILocation(line: 386, column: 1, scope: !2328, inlinedAt: !2332)
!2539 = !DILocation(line: 547, column: 9, scope: !2311, inlinedAt: !2314)
!2540 = !DILocation(line: 549, column: 8, scope: !2541, inlinedAt: !2314)
!2541 = distinct !DILexicalBlock(scope: !2311, file: !56, line: 549, column: 7)
!2542 = !DILocation(line: 549, column: 7, scope: !2311, inlinedAt: !2314)
!2543 = !DILocation(line: 550, column: 4, scope: !2541, inlinedAt: !2314)
!2544 = !DILocation(line: 553, column: 33, scope: !2311, inlinedAt: !2314)
!2545 = !DILocation(line: 325, column: 6, scope: !2546, inlinedAt: !2326)
!2546 = distinct !DILexicalBlock(scope: !2322, file: !56, line: 325, column: 6)
!2547 = !DILocation(line: 325, column: 6, scope: !2322, inlinedAt: !2326)
!2548 = !DILocation(line: 326, column: 3, scope: !2546, inlinedAt: !2326)
!2549 = !DILocation(line: 332, column: 9, scope: !2322, inlinedAt: !2326)
!2550 = !DILocation(line: 332, column: 15, scope: !2322, inlinedAt: !2326)
!2551 = !DILocation(line: 332, column: 2, scope: !2322, inlinedAt: !2326)
!2552 = !DILocation(line: 336, column: 1, scope: !2322, inlinedAt: !2326)
!2553 = !DILocation(line: 553, column: 5, scope: !2311, inlinedAt: !2314)
!2554 = !DILocation(line: 553, column: 41, scope: !2311, inlinedAt: !2314)
!2555 = !DILocation(line: 554, column: 5, scope: !2311, inlinedAt: !2314)
!2556 = !DILocation(line: 554, column: 12, scope: !2311, inlinedAt: !2314)
!2557 = !DILocation(line: 448, column: 31, scope: !2306, inlinedAt: !2310)
!2558 = !DILocation(line: 448, column: 34, scope: !2306, inlinedAt: !2310)
!2559 = !DILocation(line: 448, column: 14, scope: !2306, inlinedAt: !2310)
!2560 = !DILocation(line: 450, column: 22, scope: !2306, inlinedAt: !2310)
!2561 = !DILocation(line: 450, column: 25, scope: !2306, inlinedAt: !2310)
!2562 = !DILocation(line: 450, column: 30, scope: !2306, inlinedAt: !2310)
!2563 = !DILocation(line: 450, column: 36, scope: !2306, inlinedAt: !2310)
!2564 = !DILocation(line: 450, column: 8, scope: !2306, inlinedAt: !2310)
!2565 = !DILocation(line: 450, column: 6, scope: !2306, inlinedAt: !2310)
!2566 = !DILocation(line: 451, column: 9, scope: !2306, inlinedAt: !2310)
!2567 = !DILocation(line: 552, column: 3, scope: !2311, inlinedAt: !2314)
!2568 = !DILocation(line: 557, column: 19, scope: !2313, inlinedAt: !2314)
!2569 = !DILocation(line: 557, column: 25, scope: !2313, inlinedAt: !2314)
!2570 = !DILocation(line: 557, column: 9, scope: !2313, inlinedAt: !2314)
!2571 = !DILocation(line: 557, column: 2, scope: !2313, inlinedAt: !2314)
!2572 = !DILocation(line: 558, column: 1, scope: !2313, inlinedAt: !2314)
!2573 = !DILocation(line: 664, column: 2, scope: !2302)
!2574 = distinct !DISubprogram(name: "attribute_container_release", scope: !3, file: !3, line: 112, type: !1646, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2575 = !DILocalVariable(name: "classdev", arg: 1, scope: !2574, file: !3, line: 112, type: !1603)
!2576 = !DILocation(line: 112, column: 56, scope: !2574)
!2577 = !DILocalVariable(name: "ic", scope: !2574, file: !3, line: 114, type: !64)
!2578 = !DILocation(line: 114, column: 29, scope: !2574)
!2579 = !DILocalVariable(name: "__mptr", scope: !2580, file: !3, line: 115, type: !63)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 115, column: 5)
!2581 = !DILocation(line: 115, column: 5, scope: !2580)
!2582 = !DILocation(line: 115, column: 5, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 115, column: 5)
!2584 = !DILocalVariable(name: "dev", scope: !2574, file: !3, line: 116, type: !1603)
!2585 = !DILocation(line: 116, column: 17, scope: !2574)
!2586 = !DILocation(line: 116, column: 23, scope: !2574)
!2587 = !DILocation(line: 116, column: 33, scope: !2574)
!2588 = !DILocation(line: 118, column: 8, scope: !2574)
!2589 = !DILocation(line: 118, column: 2, scope: !2574)
!2590 = !DILocation(line: 119, column: 13, scope: !2574)
!2591 = !DILocation(line: 119, column: 2, scope: !2574)
!2592 = !DILocation(line: 120, column: 1, scope: !2574)
!2593 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !2594, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!132, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!2598 = !DILocalVariable(name: "dev", arg: 1, scope: !2593, file: !30, line: 609, type: !2596)
!2599 = !DILocation(line: 609, column: 57, scope: !2593)
!2600 = !DILocation(line: 612, column: 6, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2593, file: !30, line: 612, column: 6)
!2602 = !DILocation(line: 612, column: 11, scope: !2601)
!2603 = !DILocation(line: 612, column: 6, scope: !2593)
!2604 = !DILocation(line: 613, column: 10, scope: !2601)
!2605 = !DILocation(line: 613, column: 15, scope: !2601)
!2606 = !DILocation(line: 613, column: 3, scope: !2601)
!2607 = !DILocation(line: 615, column: 23, scope: !2593)
!2608 = !DILocation(line: 615, column: 28, scope: !2593)
!2609 = !DILocation(line: 615, column: 9, scope: !2593)
!2610 = !DILocation(line: 615, column: 2, scope: !2593)
!2611 = !DILocation(line: 616, column: 1, scope: !2593)
!2612 = distinct !DISubprogram(name: "attribute_container_add_class_device", scope: !3, file: !3, line: 452, type: !1642, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2613 = !DILocalVariable(name: "classdev", arg: 1, scope: !2612, file: !3, line: 452, type: !1603)
!2614 = !DILocation(line: 452, column: 53, scope: !2612)
!2615 = !DILocalVariable(name: "error", scope: !2612, file: !3, line: 454, type: !93)
!2616 = !DILocation(line: 454, column: 6, scope: !2612)
!2617 = !DILocation(line: 454, column: 25, scope: !2612)
!2618 = !DILocation(line: 454, column: 14, scope: !2612)
!2619 = !DILocation(line: 456, column: 6, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 456, column: 6)
!2621 = !DILocation(line: 456, column: 6, scope: !2612)
!2622 = !DILocation(line: 457, column: 10, scope: !2620)
!2623 = !DILocation(line: 457, column: 3, scope: !2620)
!2624 = !DILocation(line: 458, column: 39, scope: !2612)
!2625 = !DILocation(line: 458, column: 9, scope: !2612)
!2626 = !DILocation(line: 458, column: 2, scope: !2612)
!2627 = !DILocation(line: 459, column: 1, scope: !2612)
!2628 = distinct !DISubprogram(name: "attribute_container_remove_device", scope: !3, file: !3, line: 206, type: !2629, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !1603, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !95, !1603, !1603}
!2634 = !DILocalVariable(name: "dev", arg: 1, scope: !2628, file: !3, line: 206, type: !1603)
!2635 = !DILocation(line: 206, column: 50, scope: !2628)
!2636 = !DILocalVariable(name: "fn", arg: 2, scope: !2628, file: !3, line: 207, type: !2631)
!2637 = !DILocation(line: 207, column: 14, scope: !2628)
!2638 = !DILocalVariable(name: "cont", scope: !2628, file: !3, line: 211, type: !95)
!2639 = !DILocation(line: 211, column: 30, scope: !2628)
!2640 = !DILocation(line: 213, column: 2, scope: !2628)
!2641 = !DILocalVariable(name: "__mptr", scope: !2642, file: !3, line: 214, type: !63)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 214, column: 2)
!2643 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 214, column: 2)
!2644 = !DILocation(line: 214, column: 2, scope: !2642)
!2645 = !DILocation(line: 214, column: 2, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 214, column: 2)
!2647 = !DILocation(line: 214, column: 2, scope: !2643)
!2648 = !DILocation(line: 214, column: 2, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 214, column: 2)
!2650 = !DILocalVariable(name: "ic", scope: !2651, file: !3, line: 215, type: !64)
!2651 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 214, column: 61)
!2652 = !DILocation(line: 215, column: 30, scope: !2651)
!2653 = !DILocalVariable(name: "iter", scope: !2651, file: !3, line: 216, type: !2654)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !69, line: 54, size: 128, elements: !2655)
!2655 = !{!2656, !2658}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !2654, file: !69, line: 55, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !2654, file: !69, line: 56, baseType: !124, size: 64, offset: 64)
!2659 = !DILocation(line: 216, column: 21, scope: !2651)
!2660 = !DILocation(line: 218, column: 40, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 218, column: 7)
!2662 = !DILocation(line: 218, column: 7, scope: !2661)
!2663 = !DILocation(line: 218, column: 7, scope: !2651)
!2664 = !DILocation(line: 219, column: 4, scope: !2661)
!2665 = !DILocation(line: 221, column: 8, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 221, column: 7)
!2667 = !DILocation(line: 221, column: 14, scope: !2666)
!2668 = !DILocation(line: 221, column: 20, scope: !2666)
!2669 = !DILocation(line: 221, column: 26, scope: !2666)
!2670 = !DILocation(line: 221, column: 7, scope: !2651)
!2671 = !DILocation(line: 222, column: 4, scope: !2666)
!2672 = !DILocation(line: 224, column: 3, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 224, column: 3)
!2674 = !DILocalVariable(name: "n", scope: !2675, file: !3, line: 224, type: !124)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 224, column: 3)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 224, column: 3)
!2677 = !DILocation(line: 224, column: 3, scope: !2675)
!2678 = !DILocalVariable(name: "__mptr", scope: !2679, file: !3, line: 224, type: !63)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 224, column: 3)
!2680 = !DILocation(line: 224, column: 3, scope: !2679)
!2681 = !DILocation(line: 224, column: 3, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 224, column: 3)
!2683 = !DILocation(line: 224, column: 3, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 224, column: 3)
!2685 = !DILocation(line: 224, column: 3, scope: !2676)
!2686 = !DILocation(line: 225, column: 8, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 225, column: 8)
!2688 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 224, column: 60)
!2689 = !DILocation(line: 225, column: 15, scope: !2687)
!2690 = !DILocation(line: 225, column: 19, scope: !2687)
!2691 = !DILocation(line: 225, column: 28, scope: !2687)
!2692 = !DILocation(line: 225, column: 12, scope: !2687)
!2693 = !DILocation(line: 225, column: 8, scope: !2688)
!2694 = !DILocation(line: 226, column: 5, scope: !2687)
!2695 = distinct !{!2695, !2672, !2696}
!2696 = !DILocation(line: 234, column: 3, scope: !2673)
!2697 = !DILocation(line: 227, column: 15, scope: !2688)
!2698 = !DILocation(line: 227, column: 19, scope: !2688)
!2699 = !DILocation(line: 227, column: 4, scope: !2688)
!2700 = !DILocation(line: 228, column: 8, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 228, column: 8)
!2702 = !DILocation(line: 228, column: 8, scope: !2688)
!2703 = !DILocation(line: 229, column: 5, scope: !2701)
!2704 = !DILocation(line: 229, column: 8, scope: !2701)
!2705 = !DILocation(line: 229, column: 14, scope: !2701)
!2706 = !DILocation(line: 229, column: 20, scope: !2701)
!2707 = !DILocation(line: 229, column: 24, scope: !2701)
!2708 = !DILocation(line: 231, column: 39, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 230, column: 9)
!2710 = !DILocation(line: 231, column: 43, scope: !2709)
!2711 = !DILocation(line: 231, column: 5, scope: !2709)
!2712 = !DILocation(line: 232, column: 24, scope: !2709)
!2713 = !DILocation(line: 232, column: 28, scope: !2709)
!2714 = !DILocation(line: 232, column: 5, scope: !2709)
!2715 = !DILocation(line: 235, column: 2, scope: !2651)
!2716 = !DILocalVariable(name: "__mptr", scope: !2717, file: !3, line: 214, type: !63)
!2717 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 214, column: 2)
!2718 = !DILocation(line: 214, column: 2, scope: !2717)
!2719 = !DILocation(line: 214, column: 2, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 214, column: 2)
!2721 = distinct !{!2721, !2647, !2722}
!2722 = !DILocation(line: 235, column: 2, scope: !2643)
!2723 = !DILocation(line: 236, column: 2, scope: !2628)
!2724 = !DILocation(line: 237, column: 1, scope: !2628)
!2725 = distinct !DISubprogram(name: "attribute_container_remove_attrs", scope: !3, file: !3, line: 482, type: !1646, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2726 = !DILocalVariable(name: "classdev", arg: 1, scope: !2725, file: !3, line: 482, type: !1603)
!2727 = !DILocation(line: 482, column: 49, scope: !2725)
!2728 = !DILocalVariable(name: "cont", scope: !2725, file: !3, line: 484, type: !95)
!2729 = !DILocation(line: 484, column: 30, scope: !2725)
!2730 = !DILocation(line: 485, column: 45, scope: !2725)
!2731 = !DILocation(line: 485, column: 3, scope: !2725)
!2732 = !DILocalVariable(name: "attrs", scope: !2725, file: !3, line: 486, type: !1998)
!2733 = !DILocation(line: 486, column: 28, scope: !2725)
!2734 = !DILocation(line: 486, column: 36, scope: !2725)
!2735 = !DILocation(line: 486, column: 42, scope: !2725)
!2736 = !DILocalVariable(name: "i", scope: !2725, file: !3, line: 487, type: !93)
!2737 = !DILocation(line: 487, column: 6, scope: !2725)
!2738 = !DILocation(line: 489, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 489, column: 6)
!2740 = !DILocation(line: 489, column: 13, scope: !2739)
!2741 = !DILocation(line: 489, column: 17, scope: !2739)
!2742 = !DILocation(line: 489, column: 23, scope: !2739)
!2743 = !DILocation(line: 489, column: 6, scope: !2725)
!2744 = !DILocation(line: 490, column: 3, scope: !2739)
!2745 = !DILocation(line: 492, column: 6, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 492, column: 6)
!2747 = !DILocation(line: 492, column: 12, scope: !2746)
!2748 = !DILocation(line: 492, column: 6, scope: !2725)
!2749 = !DILocation(line: 493, column: 23, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 492, column: 17)
!2751 = !DILocation(line: 493, column: 33, scope: !2750)
!2752 = !DILocation(line: 493, column: 39, scope: !2750)
!2753 = !DILocation(line: 493, column: 45, scope: !2750)
!2754 = !DILocation(line: 493, column: 3, scope: !2750)
!2755 = !DILocation(line: 494, column: 3, scope: !2750)
!2756 = !DILocation(line: 497, column: 9, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 497, column: 2)
!2758 = !DILocation(line: 497, column: 7, scope: !2757)
!2759 = !DILocation(line: 497, column: 14, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 497, column: 2)
!2761 = !DILocation(line: 497, column: 20, scope: !2760)
!2762 = !DILocation(line: 497, column: 2, scope: !2757)
!2763 = !DILocation(line: 498, column: 22, scope: !2760)
!2764 = !DILocation(line: 498, column: 32, scope: !2760)
!2765 = !DILocation(line: 498, column: 38, scope: !2760)
!2766 = !DILocation(line: 498, column: 3, scope: !2760)
!2767 = !DILocation(line: 497, column: 25, scope: !2760)
!2768 = !DILocation(line: 497, column: 2, scope: !2760)
!2769 = distinct !{!2769, !2762, !2770}
!2770 = !DILocation(line: 498, column: 40, scope: !2757)
!2771 = !DILocation(line: 499, column: 1, scope: !2725)
!2772 = distinct !DISubprogram(name: "attribute_container_device_trigger_safe", scope: !3, file: !3, line: 297, type: !2773, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!93, !1603, !2199, !2199}
!2775 = !DILocalVariable(name: "dev", arg: 1, scope: !2772, file: !3, line: 297, type: !1603)
!2776 = !DILocation(line: 297, column: 56, scope: !2772)
!2777 = !DILocalVariable(name: "fn", arg: 2, scope: !2772, file: !3, line: 298, type: !2199)
!2778 = !DILocation(line: 298, column: 12, scope: !2772)
!2779 = !DILocalVariable(name: "undo", arg: 3, scope: !2772, file: !3, line: 301, type: !2199)
!2780 = !DILocation(line: 301, column: 12, scope: !2772)
!2781 = !DILocalVariable(name: "cont", scope: !2772, file: !3, line: 305, type: !95)
!2782 = !DILocation(line: 305, column: 30, scope: !2772)
!2783 = !DILocalVariable(name: "failed", scope: !2772, file: !3, line: 305, type: !95)
!2784 = !DILocation(line: 305, column: 37, scope: !2772)
!2785 = !DILocalVariable(name: "ret", scope: !2772, file: !3, line: 306, type: !93)
!2786 = !DILocation(line: 306, column: 6, scope: !2772)
!2787 = !DILocation(line: 308, column: 2, scope: !2772)
!2788 = !DILocalVariable(name: "__mptr", scope: !2789, file: !3, line: 310, type: !63)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 310, column: 2)
!2790 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 310, column: 2)
!2791 = !DILocation(line: 310, column: 2, scope: !2789)
!2792 = !DILocation(line: 310, column: 2, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 310, column: 2)
!2794 = !DILocation(line: 310, column: 2, scope: !2790)
!2795 = !DILocation(line: 310, column: 2, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 310, column: 2)
!2797 = !DILocation(line: 312, column: 8, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 312, column: 7)
!2799 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 310, column: 61)
!2800 = !DILocation(line: 312, column: 14, scope: !2798)
!2801 = !DILocation(line: 312, column: 20, scope: !2798)
!2802 = !DILocation(line: 312, column: 26, scope: !2798)
!2803 = !DILocation(line: 312, column: 7, scope: !2799)
!2804 = !DILocation(line: 313, column: 4, scope: !2798)
!2805 = !DILocation(line: 315, column: 52, scope: !2799)
!2806 = !DILocation(line: 315, column: 57, scope: !2799)
!2807 = !DILocation(line: 316, column: 10, scope: !2799)
!2808 = !DILocation(line: 316, column: 14, scope: !2799)
!2809 = !DILocation(line: 315, column: 9, scope: !2799)
!2810 = !DILocation(line: 315, column: 7, scope: !2799)
!2811 = !DILocation(line: 317, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 317, column: 7)
!2813 = !DILocation(line: 317, column: 7, scope: !2799)
!2814 = !DILocation(line: 318, column: 13, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 317, column: 12)
!2816 = !DILocation(line: 318, column: 11, scope: !2815)
!2817 = !DILocation(line: 319, column: 4, scope: !2815)
!2818 = !DILocation(line: 321, column: 2, scope: !2799)
!2819 = !DILocalVariable(name: "__mptr", scope: !2820, file: !3, line: 310, type: !63)
!2820 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 310, column: 2)
!2821 = !DILocation(line: 310, column: 2, scope: !2820)
!2822 = !DILocation(line: 310, column: 2, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 310, column: 2)
!2824 = distinct !{!2824, !2794, !2825}
!2825 = !DILocation(line: 321, column: 2, scope: !2790)
!2826 = !DILocation(line: 323, column: 6, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 323, column: 6)
!2828 = !DILocation(line: 323, column: 10, scope: !2827)
!2829 = !DILocalVariable(name: "__ret_warn_on", scope: !2830, file: !3, line: 323, type: !93)
!2830 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 323, column: 14)
!2831 = !DILocation(line: 323, column: 14, scope: !2830)
!2832 = !DILocation(line: 323, column: 14, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 323, column: 14)
!2834 = !DILocation(line: 323, column: 14, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 323, column: 14)
!2836 = !DILocation(line: 323, column: 14, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 323, column: 14)
!2838 = !DILocation(line: 323, column: 14, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 323, column: 14)
!2840 = !{i32 -2143513539, i32 -2143513510, i32 -2143513464, i32 -2143513406, i32 -2143513352, i32 -2143513298, i32 -2143513243, i32 -2143513212}
!2841 = !DILocation(line: 323, column: 14, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 323, column: 14)
!2843 = !{i32 -2143512796, i32 -2143512789, i32 -2143512737, i32 -2143512706, i32 -2143512676}
!2844 = !DILocation(line: 323, column: 14, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 323, column: 14)
!2846 = !DILocation(line: 323, column: 14, scope: !2827)
!2847 = !DILocation(line: 323, column: 6, scope: !2772)
!2848 = !DILocalVariable(name: "__mptr", scope: !2849, file: !3, line: 324, type: !63)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 324, column: 3)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 324, column: 3)
!2851 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 323, column: 30)
!2852 = !DILocation(line: 324, column: 3, scope: !2849)
!2853 = !DILocation(line: 324, column: 3, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 324, column: 3)
!2855 = !DILocation(line: 324, column: 3, scope: !2850)
!2856 = !DILocation(line: 324, column: 3, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 324, column: 3)
!2858 = !DILocation(line: 326, column: 8, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 326, column: 8)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 324, column: 62)
!2861 = !DILocation(line: 326, column: 18, scope: !2859)
!2862 = !DILocation(line: 326, column: 15, scope: !2859)
!2863 = !DILocation(line: 326, column: 8, scope: !2860)
!2864 = !DILocation(line: 327, column: 5, scope: !2859)
!2865 = !DILocation(line: 329, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 329, column: 8)
!2867 = !DILocation(line: 329, column: 15, scope: !2866)
!2868 = !DILocation(line: 329, column: 21, scope: !2866)
!2869 = !DILocation(line: 329, column: 27, scope: !2866)
!2870 = !DILocation(line: 329, column: 8, scope: !2860)
!2871 = !DILocation(line: 330, column: 5, scope: !2866)
!2872 = !DILocation(line: 332, column: 47, scope: !2860)
!2873 = !DILocation(line: 332, column: 52, scope: !2860)
!2874 = !DILocation(line: 333, column: 12, scope: !2860)
!2875 = !DILocation(line: 332, column: 4, scope: !2860)
!2876 = !DILocation(line: 334, column: 3, scope: !2860)
!2877 = !DILocalVariable(name: "__mptr", scope: !2878, file: !3, line: 324, type: !63)
!2878 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 324, column: 3)
!2879 = !DILocation(line: 324, column: 3, scope: !2878)
!2880 = !DILocation(line: 324, column: 3, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 324, column: 3)
!2882 = distinct !{!2882, !2855, !2883}
!2883 = !DILocation(line: 334, column: 3, scope: !2850)
!2884 = !DILocation(line: 335, column: 2, scope: !2851)
!2885 = !DILocation(line: 337, column: 2, scope: !2772)
!2886 = !DILocation(line: 338, column: 9, scope: !2772)
!2887 = !DILocation(line: 338, column: 2, scope: !2772)
!2888 = distinct !DISubprogram(name: "do_attribute_container_device_trigger_safe", scope: !3, file: !3, line: 240, type: !2889, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!93, !1603, !95, !2199, !2199}
!2891 = !DILocalVariable(name: "dev", arg: 1, scope: !2888, file: !3, line: 240, type: !1603)
!2892 = !DILocation(line: 240, column: 59, scope: !2888)
!2893 = !DILocalVariable(name: "cont", arg: 2, scope: !2888, file: !3, line: 241, type: !95)
!2894 = !DILocation(line: 241, column: 37, scope: !2888)
!2895 = !DILocalVariable(name: "fn", arg: 3, scope: !2888, file: !3, line: 242, type: !2199)
!2896 = !DILocation(line: 242, column: 15, scope: !2888)
!2897 = !DILocalVariable(name: "undo", arg: 4, scope: !2888, file: !3, line: 244, type: !2199)
!2898 = !DILocation(line: 244, column: 15, scope: !2888)
!2899 = !DILocalVariable(name: "ret", scope: !2888, file: !3, line: 247, type: !93)
!2900 = !DILocation(line: 247, column: 6, scope: !2888)
!2901 = !DILocalVariable(name: "ic", scope: !2888, file: !3, line: 248, type: !64)
!2902 = !DILocation(line: 248, column: 29, scope: !2888)
!2903 = !DILocalVariable(name: "failed", scope: !2888, file: !3, line: 248, type: !64)
!2904 = !DILocation(line: 248, column: 34, scope: !2888)
!2905 = !DILocalVariable(name: "iter", scope: !2888, file: !3, line: 249, type: !2654)
!2906 = !DILocation(line: 249, column: 20, scope: !2888)
!2907 = !DILocation(line: 251, column: 39, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 251, column: 6)
!2909 = !DILocation(line: 251, column: 6, scope: !2908)
!2910 = !DILocation(line: 251, column: 6, scope: !2888)
!2911 = !DILocation(line: 252, column: 10, scope: !2908)
!2912 = !DILocation(line: 252, column: 13, scope: !2908)
!2913 = !DILocation(line: 252, column: 19, scope: !2908)
!2914 = !DILocation(line: 252, column: 3, scope: !2908)
!2915 = !DILocation(line: 254, column: 2, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 254, column: 2)
!2917 = !DILocalVariable(name: "n", scope: !2918, file: !3, line: 254, type: !124)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 254, column: 2)
!2919 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 254, column: 2)
!2920 = !DILocation(line: 254, column: 2, scope: !2918)
!2921 = !DILocalVariable(name: "__mptr", scope: !2922, file: !3, line: 254, type: !63)
!2922 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 254, column: 2)
!2923 = !DILocation(line: 254, column: 2, scope: !2922)
!2924 = !DILocation(line: 254, column: 2, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 254, column: 2)
!2926 = !DILocation(line: 254, column: 2, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 254, column: 2)
!2928 = !DILocation(line: 254, column: 2, scope: !2919)
!2929 = !DILocation(line: 255, column: 7, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 255, column: 7)
!2931 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 254, column: 59)
!2932 = !DILocation(line: 255, column: 14, scope: !2930)
!2933 = !DILocation(line: 255, column: 18, scope: !2930)
!2934 = !DILocation(line: 255, column: 27, scope: !2930)
!2935 = !DILocation(line: 255, column: 11, scope: !2930)
!2936 = !DILocation(line: 255, column: 7, scope: !2931)
!2937 = !DILocation(line: 256, column: 10, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 255, column: 35)
!2939 = !DILocation(line: 256, column: 13, scope: !2938)
!2940 = !DILocation(line: 256, column: 19, scope: !2938)
!2941 = !DILocation(line: 256, column: 25, scope: !2938)
!2942 = !DILocation(line: 256, column: 29, scope: !2938)
!2943 = !DILocation(line: 256, column: 8, scope: !2938)
!2944 = !DILocation(line: 257, column: 8, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 257, column: 8)
!2946 = !DILocation(line: 257, column: 8, scope: !2938)
!2947 = !DILocation(line: 258, column: 14, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 257, column: 13)
!2949 = !DILocation(line: 258, column: 12, scope: !2948)
!2950 = !DILocation(line: 259, column: 5, scope: !2948)
!2951 = !DILocation(line: 260, column: 5, scope: !2948)
!2952 = !DILocation(line: 262, column: 3, scope: !2938)
!2953 = distinct !{!2953, !2915, !2954}
!2954 = !DILocation(line: 263, column: 2, scope: !2916)
!2955 = !DILocation(line: 264, column: 2, scope: !2888)
!2956 = !DILabel(scope: !2888, name: "fail", file: !3, line: 266)
!2957 = !DILocation(line: 266, column: 1, scope: !2888)
!2958 = !DILocation(line: 267, column: 7, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 267, column: 6)
!2960 = !DILocation(line: 267, column: 6, scope: !2888)
!2961 = !DILocation(line: 268, column: 10, scope: !2959)
!2962 = !DILocation(line: 268, column: 3, scope: !2959)
!2963 = !DILocation(line: 271, column: 2, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 271, column: 2)
!2965 = !DILocalVariable(name: "n", scope: !2966, file: !3, line: 271, type: !124)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 271, column: 2)
!2967 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 271, column: 2)
!2968 = !DILocation(line: 271, column: 2, scope: !2966)
!2969 = !DILocalVariable(name: "__mptr", scope: !2970, file: !3, line: 271, type: !63)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 271, column: 2)
!2971 = !DILocation(line: 271, column: 2, scope: !2970)
!2972 = !DILocation(line: 271, column: 2, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 271, column: 2)
!2974 = !DILocation(line: 271, column: 2, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 271, column: 2)
!2976 = !DILocation(line: 271, column: 2, scope: !2967)
!2977 = !DILocation(line: 272, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 272, column: 7)
!2979 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 271, column: 59)
!2980 = !DILocation(line: 272, column: 13, scope: !2978)
!2981 = !DILocation(line: 272, column: 10, scope: !2978)
!2982 = !DILocation(line: 272, column: 7, scope: !2979)
!2983 = !DILocation(line: 273, column: 4, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 272, column: 21)
!2985 = !DILocation(line: 274, column: 4, scope: !2984)
!2986 = !DILocation(line: 276, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 276, column: 7)
!2988 = !DILocation(line: 276, column: 14, scope: !2987)
!2989 = !DILocation(line: 276, column: 18, scope: !2987)
!2990 = !DILocation(line: 276, column: 27, scope: !2987)
!2991 = !DILocation(line: 276, column: 11, scope: !2987)
!2992 = !DILocation(line: 276, column: 7, scope: !2979)
!2993 = !DILocation(line: 277, column: 4, scope: !2987)
!2994 = !DILocation(line: 277, column: 9, scope: !2987)
!2995 = !DILocation(line: 277, column: 15, scope: !2987)
!2996 = !DILocation(line: 277, column: 21, scope: !2987)
!2997 = !DILocation(line: 277, column: 25, scope: !2987)
!2998 = distinct !{!2998, !2963, !2999}
!2999 = !DILocation(line: 278, column: 2, scope: !2964)
!3000 = !DILocation(line: 279, column: 9, scope: !2888)
!3001 = !DILocation(line: 279, column: 2, scope: !2888)
!3002 = !DILocation(line: 280, column: 1, scope: !2888)
!3003 = distinct !DISubprogram(name: "attribute_container_device_trigger", scope: !3, file: !3, line: 353, type: !2197, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3004 = !DILocalVariable(name: "dev", arg: 1, scope: !3003, file: !3, line: 353, type: !1603)
!3005 = !DILocation(line: 353, column: 51, scope: !3003)
!3006 = !DILocalVariable(name: "fn", arg: 2, scope: !3003, file: !3, line: 354, type: !2199)
!3007 = !DILocation(line: 354, column: 14, scope: !3003)
!3008 = !DILocalVariable(name: "cont", scope: !3003, file: !3, line: 358, type: !95)
!3009 = !DILocation(line: 358, column: 30, scope: !3003)
!3010 = !DILocation(line: 360, column: 2, scope: !3003)
!3011 = !DILocalVariable(name: "__mptr", scope: !3012, file: !3, line: 361, type: !63)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 361, column: 2)
!3013 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 361, column: 2)
!3014 = !DILocation(line: 361, column: 2, scope: !3012)
!3015 = !DILocation(line: 361, column: 2, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 361, column: 2)
!3017 = !DILocation(line: 361, column: 2, scope: !3013)
!3018 = !DILocation(line: 361, column: 2, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 361, column: 2)
!3020 = !DILocalVariable(name: "ic", scope: !3021, file: !3, line: 362, type: !64)
!3021 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 361, column: 61)
!3022 = !DILocation(line: 362, column: 30, scope: !3021)
!3023 = !DILocalVariable(name: "iter", scope: !3021, file: !3, line: 363, type: !2654)
!3024 = !DILocation(line: 363, column: 21, scope: !3021)
!3025 = !DILocation(line: 365, column: 8, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 365, column: 7)
!3027 = !DILocation(line: 365, column: 14, scope: !3026)
!3028 = !DILocation(line: 365, column: 20, scope: !3026)
!3029 = !DILocation(line: 365, column: 26, scope: !3026)
!3030 = !DILocation(line: 365, column: 7, scope: !3021)
!3031 = !DILocation(line: 366, column: 4, scope: !3026)
!3032 = !DILocation(line: 368, column: 40, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 368, column: 7)
!3034 = !DILocation(line: 368, column: 7, scope: !3033)
!3035 = !DILocation(line: 368, column: 7, scope: !3021)
!3036 = !DILocation(line: 369, column: 4, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 368, column: 47)
!3038 = !DILocation(line: 369, column: 7, scope: !3037)
!3039 = !DILocation(line: 369, column: 13, scope: !3037)
!3040 = !DILocation(line: 370, column: 4, scope: !3037)
!3041 = !DILocation(line: 373, column: 3, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 373, column: 3)
!3043 = !DILocalVariable(name: "n", scope: !3044, file: !3, line: 373, type: !124)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 373, column: 3)
!3045 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 373, column: 3)
!3046 = !DILocation(line: 373, column: 3, scope: !3044)
!3047 = !DILocalVariable(name: "__mptr", scope: !3048, file: !3, line: 373, type: !63)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 373, column: 3)
!3049 = !DILocation(line: 373, column: 3, scope: !3048)
!3050 = !DILocation(line: 373, column: 3, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 373, column: 3)
!3052 = !DILocation(line: 373, column: 3, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 373, column: 3)
!3054 = !DILocation(line: 373, column: 3, scope: !3045)
!3055 = !DILocation(line: 374, column: 8, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 374, column: 8)
!3057 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 373, column: 60)
!3058 = !DILocation(line: 374, column: 15, scope: !3056)
!3059 = !DILocation(line: 374, column: 19, scope: !3056)
!3060 = !DILocation(line: 374, column: 28, scope: !3056)
!3061 = !DILocation(line: 374, column: 12, scope: !3056)
!3062 = !DILocation(line: 374, column: 8, scope: !3057)
!3063 = !DILocation(line: 375, column: 5, scope: !3056)
!3064 = !DILocation(line: 375, column: 8, scope: !3056)
!3065 = !DILocation(line: 375, column: 14, scope: !3056)
!3066 = !DILocation(line: 375, column: 20, scope: !3056)
!3067 = !DILocation(line: 375, column: 24, scope: !3056)
!3068 = distinct !{!3068, !3041, !3069}
!3069 = !DILocation(line: 376, column: 3, scope: !3042)
!3070 = !DILocation(line: 377, column: 2, scope: !3021)
!3071 = !DILocalVariable(name: "__mptr", scope: !3072, file: !3, line: 361, type: !63)
!3072 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 361, column: 2)
!3073 = !DILocation(line: 361, column: 2, scope: !3072)
!3074 = !DILocation(line: 361, column: 2, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 361, column: 2)
!3076 = distinct !{!3076, !3017, !3077}
!3077 = !DILocation(line: 377, column: 2, scope: !3013)
!3078 = !DILocation(line: 378, column: 2, scope: !3003)
!3079 = !DILocation(line: 379, column: 1, scope: !3003)
!3080 = distinct !DISubprogram(name: "attribute_container_trigger", scope: !3, file: !3, line: 394, type: !3081, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !1603, !2012}
!3083 = !DILocalVariable(name: "dev", arg: 1, scope: !3080, file: !3, line: 394, type: !1603)
!3084 = !DILocation(line: 394, column: 44, scope: !3080)
!3085 = !DILocalVariable(name: "fn", arg: 2, scope: !3080, file: !3, line: 395, type: !2012)
!3086 = !DILocation(line: 395, column: 14, scope: !3080)
!3087 = !DILocalVariable(name: "cont", scope: !3080, file: !3, line: 398, type: !95)
!3088 = !DILocation(line: 398, column: 30, scope: !3080)
!3089 = !DILocation(line: 400, column: 2, scope: !3080)
!3090 = !DILocalVariable(name: "__mptr", scope: !3091, file: !3, line: 401, type: !63)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 401, column: 2)
!3092 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 401, column: 2)
!3093 = !DILocation(line: 401, column: 2, scope: !3091)
!3094 = !DILocation(line: 401, column: 2, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 401, column: 2)
!3096 = !DILocation(line: 401, column: 2, scope: !3092)
!3097 = !DILocation(line: 401, column: 2, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 401, column: 2)
!3099 = !DILocation(line: 402, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 402, column: 7)
!3101 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 401, column: 61)
!3102 = !DILocation(line: 402, column: 13, scope: !3100)
!3103 = !DILocation(line: 402, column: 19, scope: !3100)
!3104 = !DILocation(line: 402, column: 25, scope: !3100)
!3105 = !DILocation(line: 402, column: 7, scope: !3101)
!3106 = !DILocation(line: 403, column: 4, scope: !3100)
!3107 = !DILocation(line: 403, column: 7, scope: !3100)
!3108 = !DILocation(line: 403, column: 13, scope: !3100)
!3109 = !DILocation(line: 404, column: 2, scope: !3101)
!3110 = !DILocalVariable(name: "__mptr", scope: !3111, file: !3, line: 401, type: !63)
!3111 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 401, column: 2)
!3112 = !DILocation(line: 401, column: 2, scope: !3111)
!3113 = !DILocation(line: 401, column: 2, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 401, column: 2)
!3115 = distinct !{!3115, !3096, !3116}
!3116 = !DILocation(line: 404, column: 2, scope: !3092)
!3117 = !DILocation(line: 405, column: 2, scope: !3080)
!3118 = !DILocation(line: 406, column: 1, scope: !3080)
!3119 = distinct !DISubprogram(name: "attribute_container_add_attrs", scope: !3, file: !3, line: 417, type: !1642, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3120 = !DILocalVariable(name: "classdev", arg: 1, scope: !3119, file: !3, line: 417, type: !1603)
!3121 = !DILocation(line: 417, column: 46, scope: !3119)
!3122 = !DILocalVariable(name: "cont", scope: !3119, file: !3, line: 419, type: !95)
!3123 = !DILocation(line: 419, column: 30, scope: !3119)
!3124 = !DILocation(line: 420, column: 45, scope: !3119)
!3125 = !DILocation(line: 420, column: 3, scope: !3119)
!3126 = !DILocalVariable(name: "attrs", scope: !3119, file: !3, line: 421, type: !1998)
!3127 = !DILocation(line: 421, column: 28, scope: !3119)
!3128 = !DILocation(line: 421, column: 36, scope: !3119)
!3129 = !DILocation(line: 421, column: 42, scope: !3119)
!3130 = !DILocalVariable(name: "i", scope: !3119, file: !3, line: 422, type: !93)
!3131 = !DILocation(line: 422, column: 6, scope: !3119)
!3132 = !DILocalVariable(name: "error", scope: !3119, file: !3, line: 422, type: !93)
!3133 = !DILocation(line: 422, column: 9, scope: !3119)
!3134 = !DILocation(line: 424, column: 2, scope: !3119)
!3135 = !DILocation(line: 424, column: 2, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 424, column: 2)
!3137 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 424, column: 2)
!3138 = !DILocation(line: 0, scope: !3136)
!3139 = !DILocation(line: 424, column: 2, scope: !3137)
!3140 = !DILocation(line: 424, column: 2, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 424, column: 2)
!3142 = !DILocation(line: 424, column: 2, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 424, column: 2)
!3144 = !DILocation(line: 424, column: 2, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 424, column: 2)
!3146 = !{i32 -2143498515, i32 -2143498486, i32 -2143498440, i32 -2143498382, i32 -2143498328, i32 -2143498274, i32 -2143498219, i32 -2143498188}
!3147 = !DILocation(line: 424, column: 2, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 424, column: 2)
!3149 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 424, column: 2)
!3150 = !{i32 -2143497731, i32 -2143497724, i32 -2143497670, i32 -2143497639, i32 -2143497609}
!3151 = !DILocation(line: 424, column: 2, scope: !3149)
!3152 = !DILocation(line: 426, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 426, column: 6)
!3154 = !DILocation(line: 426, column: 13, scope: !3153)
!3155 = !DILocation(line: 426, column: 17, scope: !3153)
!3156 = !DILocation(line: 426, column: 23, scope: !3153)
!3157 = !DILocation(line: 426, column: 6, scope: !3119)
!3158 = !DILocation(line: 427, column: 3, scope: !3153)
!3159 = !DILocation(line: 429, column: 6, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 429, column: 6)
!3161 = !DILocation(line: 429, column: 12, scope: !3160)
!3162 = !DILocation(line: 429, column: 6, scope: !3119)
!3163 = !DILocation(line: 430, column: 30, scope: !3160)
!3164 = !DILocation(line: 430, column: 40, scope: !3160)
!3165 = !DILocation(line: 430, column: 46, scope: !3160)
!3166 = !DILocation(line: 430, column: 52, scope: !3160)
!3167 = !DILocation(line: 430, column: 10, scope: !3160)
!3168 = !DILocation(line: 430, column: 3, scope: !3160)
!3169 = !DILocation(line: 432, column: 9, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 432, column: 2)
!3171 = !DILocation(line: 432, column: 7, scope: !3170)
!3172 = !DILocation(line: 432, column: 14, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 432, column: 2)
!3174 = !DILocation(line: 432, column: 20, scope: !3173)
!3175 = !DILocation(line: 432, column: 2, scope: !3170)
!3176 = !DILocation(line: 433, column: 3, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 432, column: 29)
!3178 = !DILocation(line: 433, column: 3, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 433, column: 3)
!3180 = !DILocation(line: 434, column: 30, scope: !3177)
!3181 = !DILocation(line: 434, column: 40, scope: !3177)
!3182 = !DILocation(line: 434, column: 46, scope: !3177)
!3183 = !DILocation(line: 434, column: 11, scope: !3177)
!3184 = !DILocation(line: 434, column: 9, scope: !3177)
!3185 = !DILocation(line: 435, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 435, column: 7)
!3187 = !DILocation(line: 435, column: 7, scope: !3177)
!3188 = !DILocation(line: 436, column: 11, scope: !3186)
!3189 = !DILocation(line: 436, column: 4, scope: !3186)
!3190 = !DILocation(line: 437, column: 2, scope: !3177)
!3191 = !DILocation(line: 432, column: 25, scope: !3173)
!3192 = !DILocation(line: 432, column: 2, scope: !3173)
!3193 = distinct !{!3193, !3175, !3194}
!3194 = !DILocation(line: 437, column: 2, scope: !3170)
!3195 = !DILocation(line: 439, column: 2, scope: !3119)
!3196 = !DILocation(line: 440, column: 1, scope: !3119)
!3197 = distinct !DISubprogram(name: "attribute_container_add_class_device_adapter", scope: !3, file: !3, line: 468, type: !2200, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3198 = !DILocalVariable(name: "cont", arg: 1, scope: !3197, file: !3, line: 468, type: !95)
!3199 = !DILocation(line: 468, column: 74, scope: !3197)
!3200 = !DILocalVariable(name: "dev", arg: 2, scope: !3197, file: !3, line: 469, type: !1603)
!3201 = !DILocation(line: 469, column: 26, scope: !3197)
!3202 = !DILocalVariable(name: "classdev", arg: 3, scope: !3197, file: !3, line: 470, type: !1603)
!3203 = !DILocation(line: 470, column: 26, scope: !3197)
!3204 = !DILocation(line: 472, column: 46, scope: !3197)
!3205 = !DILocation(line: 472, column: 9, scope: !3197)
!3206 = !DILocation(line: 472, column: 2, scope: !3197)
!3207 = distinct !DISubprogram(name: "attribute_container_class_device_del", scope: !3, file: !3, line: 510, type: !1646, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3208 = !DILocalVariable(name: "classdev", arg: 1, scope: !3207, file: !3, line: 510, type: !1603)
!3209 = !DILocation(line: 510, column: 53, scope: !3207)
!3210 = !DILocation(line: 512, column: 35, scope: !3207)
!3211 = !DILocation(line: 512, column: 2, scope: !3207)
!3212 = !DILocation(line: 513, column: 13, scope: !3207)
!3213 = !DILocation(line: 513, column: 2, scope: !3207)
!3214 = !DILocation(line: 514, column: 1, scope: !3207)
!3215 = distinct !DISubprogram(name: "attribute_container_find_class_device", scope: !3, file: !3, line: 526, type: !3216, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!1603, !95, !1603}
!3218 = !DILocalVariable(name: "cont", arg: 1, scope: !3215, file: !3, line: 526, type: !95)
!3219 = !DILocation(line: 526, column: 67, scope: !3215)
!3220 = !DILocalVariable(name: "dev", arg: 2, scope: !3215, file: !3, line: 527, type: !1603)
!3221 = !DILocation(line: 527, column: 26, scope: !3215)
!3222 = !DILocalVariable(name: "cdev", scope: !3215, file: !3, line: 529, type: !1603)
!3223 = !DILocation(line: 529, column: 17, scope: !3215)
!3224 = !DILocalVariable(name: "ic", scope: !3215, file: !3, line: 530, type: !64)
!3225 = !DILocation(line: 530, column: 29, scope: !3215)
!3226 = !DILocalVariable(name: "iter", scope: !3215, file: !3, line: 531, type: !2654)
!3227 = !DILocation(line: 531, column: 20, scope: !3215)
!3228 = !DILocation(line: 533, column: 2, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 533, column: 2)
!3230 = !DILocalVariable(name: "n", scope: !3231, file: !3, line: 533, type: !124)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 533, column: 2)
!3232 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 533, column: 2)
!3233 = !DILocation(line: 533, column: 2, scope: !3231)
!3234 = !DILocalVariable(name: "__mptr", scope: !3235, file: !3, line: 533, type: !63)
!3235 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 533, column: 2)
!3236 = !DILocation(line: 533, column: 2, scope: !3235)
!3237 = !DILocation(line: 533, column: 2, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 533, column: 2)
!3239 = !DILocation(line: 533, column: 2, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 533, column: 2)
!3241 = !DILocation(line: 533, column: 2, scope: !3232)
!3242 = !DILocation(line: 534, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 534, column: 7)
!3244 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 533, column: 59)
!3245 = !DILocation(line: 534, column: 11, scope: !3243)
!3246 = !DILocation(line: 534, column: 20, scope: !3243)
!3247 = !DILocation(line: 534, column: 30, scope: !3243)
!3248 = !DILocation(line: 534, column: 27, scope: !3243)
!3249 = !DILocation(line: 534, column: 7, scope: !3244)
!3250 = !DILocation(line: 535, column: 12, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 534, column: 35)
!3252 = !DILocation(line: 535, column: 16, scope: !3251)
!3253 = !DILocation(line: 535, column: 9, scope: !3251)
!3254 = !DILocation(line: 537, column: 4, scope: !3251)
!3255 = !DILocation(line: 538, column: 4, scope: !3251)
!3256 = distinct !{!3256, !3228, !3257}
!3257 = !DILocation(line: 540, column: 2, scope: !3229)
!3258 = !DILocation(line: 542, column: 9, scope: !3215)
!3259 = !DILocation(line: 542, column: 2, scope: !3215)
!3260 = distinct !DISubprogram(name: "__list_add", scope: !2062, file: !2062, line: 63, type: !3261, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !77, !77, !77}
!3263 = !DILocalVariable(name: "new", arg: 1, scope: !3260, file: !2062, line: 63, type: !77)
!3264 = !DILocation(line: 63, column: 49, scope: !3260)
!3265 = !DILocalVariable(name: "prev", arg: 2, scope: !3260, file: !2062, line: 64, type: !77)
!3266 = !DILocation(line: 64, column: 28, scope: !3260)
!3267 = !DILocalVariable(name: "next", arg: 3, scope: !3260, file: !2062, line: 65, type: !77)
!3268 = !DILocation(line: 65, column: 28, scope: !3260)
!3269 = !DILocation(line: 67, column: 24, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3260, file: !2062, line: 67, column: 6)
!3271 = !DILocation(line: 67, column: 29, scope: !3270)
!3272 = !DILocation(line: 67, column: 35, scope: !3270)
!3273 = !DILocation(line: 67, column: 7, scope: !3270)
!3274 = !DILocation(line: 67, column: 6, scope: !3260)
!3275 = !DILocation(line: 68, column: 3, scope: !3270)
!3276 = !DILocation(line: 70, column: 15, scope: !3260)
!3277 = !DILocation(line: 70, column: 2, scope: !3260)
!3278 = !DILocation(line: 70, column: 8, scope: !3260)
!3279 = !DILocation(line: 70, column: 13, scope: !3260)
!3280 = !DILocation(line: 71, column: 14, scope: !3260)
!3281 = !DILocation(line: 71, column: 2, scope: !3260)
!3282 = !DILocation(line: 71, column: 7, scope: !3260)
!3283 = !DILocation(line: 71, column: 12, scope: !3260)
!3284 = !DILocation(line: 72, column: 14, scope: !3260)
!3285 = !DILocation(line: 72, column: 2, scope: !3260)
!3286 = !DILocation(line: 72, column: 7, scope: !3260)
!3287 = !DILocation(line: 72, column: 12, scope: !3260)
!3288 = !DILocation(line: 73, column: 2, scope: !3260)
!3289 = !DILocation(line: 73, column: 2, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3260, file: !2062, line: 73, column: 2)
!3291 = !DILocation(line: 73, column: 2, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3290, file: !2062, line: 73, column: 2)
!3293 = !DILocation(line: 73, column: 2, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3290, file: !2062, line: 73, column: 2)
!3295 = !DILocation(line: 74, column: 1, scope: !3260)
!3296 = distinct !DISubprogram(name: "__list_add_valid", scope: !2062, file: !2062, line: 45, type: !3297, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!256, !77, !77, !77}
!3299 = !DILocalVariable(name: "new", arg: 1, scope: !3296, file: !2062, line: 45, type: !77)
!3300 = !DILocation(line: 45, column: 55, scope: !3296)
!3301 = !DILocalVariable(name: "prev", arg: 2, scope: !3296, file: !2062, line: 46, type: !77)
!3302 = !DILocation(line: 46, column: 23, scope: !3296)
!3303 = !DILocalVariable(name: "next", arg: 3, scope: !3296, file: !2062, line: 47, type: !77)
!3304 = !DILocation(line: 47, column: 23, scope: !3296)
!3305 = !DILocation(line: 49, column: 2, scope: !3296)
!3306 = distinct !DISubprogram(name: "__list_del_entry", scope: !2062, file: !2062, line: 130, type: !2063, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3307 = !DILocalVariable(name: "entry", arg: 1, scope: !3306, file: !2062, line: 130, type: !77)
!3308 = !DILocation(line: 130, column: 55, scope: !3306)
!3309 = !DILocation(line: 132, column: 30, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !2062, line: 132, column: 6)
!3311 = !DILocation(line: 132, column: 7, scope: !3310)
!3312 = !DILocation(line: 132, column: 6, scope: !3306)
!3313 = !DILocation(line: 133, column: 3, scope: !3310)
!3314 = !DILocation(line: 135, column: 13, scope: !3306)
!3315 = !DILocation(line: 135, column: 20, scope: !3306)
!3316 = !DILocation(line: 135, column: 26, scope: !3306)
!3317 = !DILocation(line: 135, column: 33, scope: !3306)
!3318 = !DILocation(line: 135, column: 2, scope: !3306)
!3319 = !DILocation(line: 136, column: 1, scope: !3306)
!3320 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2062, file: !2062, line: 51, type: !3321, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!256, !77}
!3323 = !DILocalVariable(name: "entry", arg: 1, scope: !3320, file: !2062, line: 51, type: !77)
!3324 = !DILocation(line: 51, column: 61, scope: !3320)
!3325 = !DILocation(line: 53, column: 2, scope: !3320)
!3326 = distinct !DISubprogram(name: "__list_del", scope: !2062, file: !2062, line: 110, type: !2108, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3327 = !DILocalVariable(name: "prev", arg: 1, scope: !3326, file: !2062, line: 110, type: !77)
!3328 = !DILocation(line: 110, column: 50, scope: !3326)
!3329 = !DILocalVariable(name: "next", arg: 2, scope: !3326, file: !2062, line: 110, type: !77)
!3330 = !DILocation(line: 110, column: 75, scope: !3326)
!3331 = !DILocation(line: 112, column: 15, scope: !3326)
!3332 = !DILocation(line: 112, column: 2, scope: !3326)
!3333 = !DILocation(line: 112, column: 8, scope: !3326)
!3334 = !DILocation(line: 112, column: 13, scope: !3326)
!3335 = !DILocation(line: 113, column: 2, scope: !3326)
!3336 = !DILocation(line: 113, column: 2, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3326, file: !2062, line: 113, column: 2)
!3338 = !DILocation(line: 113, column: 2, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3337, file: !2062, line: 113, column: 2)
!3340 = !DILocation(line: 113, column: 2, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !2062, line: 113, column: 2)
!3342 = !DILocation(line: 114, column: 1, scope: !3326)
!3343 = distinct !DISubprogram(name: "get_order", scope: !3344, file: !3344, line: 29, type: !3345, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3344 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!93, !239}
!3347 = !DILocalVariable(name: "x", arg: 1, scope: !3348, file: !3349, line: 366, type: !507)
!3348 = distinct !DISubprogram(name: "fls64", scope: !3349, file: !3349, line: 366, type: !3350, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3349 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!93, !507}
!3352 = !DILocation(line: 366, column: 40, scope: !3348, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 46, column: 9, scope: !3343)
!3354 = !DILocalVariable(name: "bitpos", scope: !3348, file: !3349, line: 368, type: !93)
!3355 = !DILocation(line: 368, column: 6, scope: !3348, inlinedAt: !3353)
!3356 = !DILocalVariable(name: "size", arg: 1, scope: !3343, file: !3344, line: 29, type: !239)
!3357 = !DILocation(line: 29, column: 63, scope: !3343)
!3358 = !DILocation(line: 31, column: 27, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3343, file: !3344, line: 31, column: 6)
!3360 = !DILocation(line: 31, column: 6, scope: !3359)
!3361 = !DILocation(line: 31, column: 6, scope: !3343)
!3362 = !DILocation(line: 32, column: 8, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !3344, line: 32, column: 7)
!3364 = distinct !DILexicalBlock(scope: !3359, file: !3344, line: 31, column: 34)
!3365 = !DILocation(line: 32, column: 7, scope: !3364)
!3366 = !DILocation(line: 33, column: 4, scope: !3363)
!3367 = !DILocation(line: 35, column: 7, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !3344, line: 35, column: 7)
!3369 = !DILocation(line: 35, column: 12, scope: !3368)
!3370 = !DILocation(line: 35, column: 7, scope: !3364)
!3371 = !DILocation(line: 36, column: 4, scope: !3368)
!3372 = !DILocation(line: 38, column: 10, scope: !3364)
!3373 = !DILocation(line: 38, column: 28, scope: !3364)
!3374 = !DILocation(line: 38, column: 41, scope: !3364)
!3375 = !DILocation(line: 38, column: 3, scope: !3364)
!3376 = !DILocation(line: 41, column: 6, scope: !3343)
!3377 = !DILocation(line: 42, column: 7, scope: !3343)
!3378 = !DILocation(line: 46, column: 15, scope: !3343)
!3379 = !DILocation(line: 374, column: 2, scope: !3348, inlinedAt: !3353)
!3380 = !DILocation(line: 376, column: 14, scope: !3348, inlinedAt: !3353)
!3381 = !{i32 289572}
!3382 = !DILocation(line: 377, column: 9, scope: !3348, inlinedAt: !3353)
!3383 = !DILocation(line: 377, column: 16, scope: !3348, inlinedAt: !3353)
!3384 = !DILocation(line: 46, column: 2, scope: !3343)
!3385 = !DILocation(line: 48, column: 1, scope: !3343)
!3386 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3387, file: !3387, line: 30, type: !3388, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3387 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!93, !506}
!3390 = !DILocation(line: 366, column: 40, scope: !3348, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 32, column: 9, scope: !3386)
!3392 = !DILocation(line: 368, column: 6, scope: !3348, inlinedAt: !3391)
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3386, file: !3387, line: 30, type: !506)
!3394 = !DILocation(line: 30, column: 21, scope: !3386)
!3395 = !DILocation(line: 32, column: 15, scope: !3386)
!3396 = !DILocation(line: 374, column: 2, scope: !3348, inlinedAt: !3391)
!3397 = !DILocation(line: 376, column: 14, scope: !3348, inlinedAt: !3391)
!3398 = !DILocation(line: 377, column: 9, scope: !3348, inlinedAt: !3391)
!3399 = !DILocation(line: 377, column: 16, scope: !3348, inlinedAt: !3391)
!3400 = !DILocation(line: 32, column: 18, scope: !3386)
!3401 = !DILocation(line: 32, column: 2, scope: !3386)
!3402 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3403, file: !3403, line: 137, type: !3404, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3403 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!63, !1244, !266, !236, !347}
!3406 = !DILocalVariable(name: "s", arg: 1, scope: !3402, file: !3403, line: 137, type: !1244)
!3407 = !DILocation(line: 137, column: 54, scope: !3402)
!3408 = !DILocalVariable(name: "object", arg: 2, scope: !3402, file: !3403, line: 137, type: !266)
!3409 = !DILocation(line: 137, column: 69, scope: !3402)
!3410 = !DILocalVariable(name: "size", arg: 3, scope: !3402, file: !3403, line: 138, type: !236)
!3411 = !DILocation(line: 138, column: 12, scope: !3402)
!3412 = !DILocalVariable(name: "flags", arg: 4, scope: !3402, file: !3403, line: 138, type: !347)
!3413 = !DILocation(line: 138, column: 24, scope: !3402)
!3414 = !DILocation(line: 140, column: 17, scope: !3402)
!3415 = !DILocation(line: 140, column: 2, scope: !3402)
!3416 = distinct !DISubprogram(name: "kobject_name", scope: !155, file: !155, line: 88, type: !3417, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!132, !3419}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!3421 = !DILocalVariable(name: "kobj", arg: 1, scope: !3416, file: !155, line: 88, type: !3419)
!3422 = !DILocation(line: 88, column: 62, scope: !3416)
!3423 = !DILocation(line: 90, column: 9, scope: !3416)
!3424 = !DILocation(line: 90, column: 15, scope: !3416)
!3425 = !DILocation(line: 90, column: 2, scope: !3416)
