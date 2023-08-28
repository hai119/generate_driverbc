; ModuleID = '../bcout/drivers/base/power/generic_ops.llvm.bc'
source_filename = "drivers/base/power/generic_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.dev_pm_ops = type { {}*, void (%struct.device*)*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, {}*, void (%struct.device*)*, {}*, void (%struct.device*)*, {}*, {}*, i32 (%struct.device*, i32)*, {}*, {}*, {}*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, {}*, void (%struct.device*)*, {}*, void (%struct.device*)*, i32 (%struct.device*, i32)*, {}*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, {}*, void (%struct.device*, i1)*, {}*, void (%struct.device*)*, void (%struct.device*)* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, {}*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_runtime_suspend(%struct.device* %dev) #0 !dbg !53 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1886, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !1888, metadata !DIExpression()), !dbg !1889
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1890
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !1891
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !1891
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !1890
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1890

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1892
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !1893
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !1893
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !1894
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !1894
  br label %cond.end, !dbg !1890

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1890

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !1890
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !1889
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1895, metadata !DIExpression()), !dbg !1896
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1897
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !1897
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !1898

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1899
  %runtime_suspend = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 20, !dbg !1900
  %runtime_suspend4 = bitcast {}** %runtime_suspend to i32 (%struct.device*)**, !dbg !1900
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_suspend4, align 8, !dbg !1900
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !1899
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !1897

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1901
  %runtime_suspend7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 20, !dbg !1902
  %runtime_suspend8 = bitcast {}** %runtime_suspend7 to i32 (%struct.device*)**, !dbg !1902
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_suspend8, align 8, !dbg !1902
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1903
  %call = call i32 %9(%struct.device* %10) #2, !dbg !1901
  br label %cond.end10, !dbg !1897

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !1897

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !1897
  store i32 %cond11, i32* %ret, align 4, !dbg !1904
  %11 = load i32, i32* %ret, align 4, !dbg !1905
  ret i32 %11, !dbg !1906
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_runtime_resume(%struct.device* %dev) #0 !dbg !1907 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1908, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !1910, metadata !DIExpression()), !dbg !1911
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1912
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !1913
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !1913
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !1912
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1912

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1914
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !1915
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !1915
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !1916
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !1916
  br label %cond.end, !dbg !1912

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1912

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !1912
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !1911
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1917, metadata !DIExpression()), !dbg !1918
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1919
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !1919
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !1920

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1921
  %runtime_resume = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 21, !dbg !1922
  %runtime_resume4 = bitcast {}** %runtime_resume to i32 (%struct.device*)**, !dbg !1922
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_resume4, align 8, !dbg !1922
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !1921
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !1919

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1923
  %runtime_resume7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 21, !dbg !1924
  %runtime_resume8 = bitcast {}** %runtime_resume7 to i32 (%struct.device*)**, !dbg !1924
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_resume8, align 8, !dbg !1924
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1925
  %call = call i32 %9(%struct.device* %10) #2, !dbg !1923
  br label %cond.end10, !dbg !1919

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !1919

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !1919
  store i32 %cond11, i32* %ret, align 4, !dbg !1926
  %11 = load i32, i32* %ret, align 4, !dbg !1927
  ret i32 %11, !dbg !1928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_prepare(%struct.device* %dev) #0 !dbg !1929 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.device_driver*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1930, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv, metadata !1932, metadata !DIExpression()), !dbg !1933
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1934
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !1935
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !1935
  store %struct.device_driver* %1, %struct.device_driver** %drv, align 8, !dbg !1933
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i32 0, i32* %ret, align 4, !dbg !1937
  %2 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !1938
  %tobool = icmp ne %struct.device_driver* %2, null, !dbg !1938
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1940

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !1941
  %pm = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !1942
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1942
  %tobool1 = icmp ne %struct.dev_pm_ops* %4, null, !dbg !1941
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !1943

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !1944
  %pm3 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %5, i32 0, i32 16, !dbg !1945
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm3, align 8, !dbg !1945
  %prepare = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 0, !dbg !1946
  %prepare4 = bitcast {}** %prepare to i32 (%struct.device*)**, !dbg !1946
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %prepare4, align 8, !dbg !1946
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !1944
  br i1 %tobool5, label %if.then, label %if.end, !dbg !1947

if.then:                                          ; preds = %land.lhs.true2
  %8 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !1948
  %pm6 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %8, i32 0, i32 16, !dbg !1949
  %9 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm6, align 8, !dbg !1949
  %prepare7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %9, i32 0, i32 0, !dbg !1950
  %prepare8 = bitcast {}** %prepare7 to i32 (%struct.device*)**, !dbg !1950
  %10 = load i32 (%struct.device*)*, i32 (%struct.device*)** %prepare8, align 8, !dbg !1950
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1951
  %call = call i32 %10(%struct.device* %11) #2, !dbg !1948
  store i32 %call, i32* %ret, align 4, !dbg !1952
  br label %if.end, !dbg !1953

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %12 = load i32, i32* %ret, align 4, !dbg !1954
  ret i32 %12, !dbg !1955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_suspend_noirq(%struct.device* %dev) #0 !dbg !1956 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1957, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !1959, metadata !DIExpression()), !dbg !1960
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1961
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !1962
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !1962
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !1961
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1961

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1963
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !1964
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !1964
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !1965
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !1965
  br label %cond.end, !dbg !1961

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1961

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !1961
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !1960
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1966
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !1966
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !1967

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1968
  %suspend_noirq = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 14, !dbg !1969
  %suspend_noirq4 = bitcast {}** %suspend_noirq to i32 (%struct.device*)**, !dbg !1969
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend_noirq4, align 8, !dbg !1969
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !1968
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !1966

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1970
  %suspend_noirq7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 14, !dbg !1971
  %suspend_noirq8 = bitcast {}** %suspend_noirq7 to i32 (%struct.device*)**, !dbg !1971
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend_noirq8, align 8, !dbg !1971
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1972
  %call = call i32 %9(%struct.device* %10) #2, !dbg !1970
  br label %cond.end10, !dbg !1966

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !1966

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !1966
  ret i32 %cond11, !dbg !1973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_suspend_late(%struct.device* %dev) #0 !dbg !1974 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1975, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !1977, metadata !DIExpression()), !dbg !1978
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1979
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !1980
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !1980
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !1979
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1979

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1981
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !1982
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !1982
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !1983
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !1983
  br label %cond.end, !dbg !1979

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1979

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !1979
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !1978
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1984
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !1984
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !1985

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1986
  %suspend_late = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 8, !dbg !1987
  %suspend_late4 = bitcast {}** %suspend_late to i32 (%struct.device*)**, !dbg !1987
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend_late4, align 8, !dbg !1987
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !1986
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !1984

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !1988
  %suspend_late7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 8, !dbg !1989
  %suspend_late8 = bitcast {}** %suspend_late7 to i32 (%struct.device*)**, !dbg !1989
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend_late8, align 8, !dbg !1989
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1990
  %call = call i32 %9(%struct.device* %10) #2, !dbg !1988
  br label %cond.end10, !dbg !1984

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !1984

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !1984
  ret i32 %cond11, !dbg !1991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_suspend(%struct.device* %dev) #0 !dbg !1992 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !1995, metadata !DIExpression()), !dbg !1996
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1997
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !1998
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !1998
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !1997
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1997

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1999
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2000
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2000
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2001
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2001
  br label %cond.end, !dbg !1997

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1997

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !1997
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !1996
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2002
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2002
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2003

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2004
  %suspend = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 2, !dbg !2005
  %suspend4 = bitcast {}** %suspend to i32 (%struct.device*)**, !dbg !2005
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend4, align 8, !dbg !2005
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2004
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2002

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2006
  %suspend7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 2, !dbg !2007
  %suspend8 = bitcast {}** %suspend7 to i32 (%struct.device*)**, !dbg !2007
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend8, align 8, !dbg !2007
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2008
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2006
  br label %cond.end10, !dbg !2002

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2002

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2002
  ret i32 %cond11, !dbg !2009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_freeze_noirq(%struct.device* %dev) #0 !dbg !2010 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2011, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2013, metadata !DIExpression()), !dbg !2014
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2015
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2016
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2016
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2015
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2015

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2017
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2018
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2018
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2019
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2019
  br label %cond.end, !dbg !2015

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2015

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2015
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2014
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2020
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2020
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2021

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2022
  %freeze_noirq = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 16, !dbg !2023
  %freeze_noirq4 = bitcast {}** %freeze_noirq to i32 (%struct.device*)**, !dbg !2023
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %freeze_noirq4, align 8, !dbg !2023
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2022
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2020

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2024
  %freeze_noirq7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 16, !dbg !2025
  %freeze_noirq8 = bitcast {}** %freeze_noirq7 to i32 (%struct.device*)**, !dbg !2025
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %freeze_noirq8, align 8, !dbg !2025
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2026
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2024
  br label %cond.end10, !dbg !2020

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2020

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2020
  ret i32 %cond11, !dbg !2027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_freeze_late(%struct.device* %dev) #0 !dbg !2028 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2029, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2031, metadata !DIExpression()), !dbg !2032
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2033
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2034
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2034
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2033
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2033

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2035
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2036
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2036
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2037
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2037
  br label %cond.end, !dbg !2033

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2033

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2033
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2032
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2038
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2038
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2039

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2040
  %freeze_late = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 10, !dbg !2041
  %freeze_late4 = bitcast {}** %freeze_late to i32 (%struct.device*)**, !dbg !2041
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %freeze_late4, align 8, !dbg !2041
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2040
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2038

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2042
  %freeze_late7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 10, !dbg !2043
  %freeze_late8 = bitcast {}** %freeze_late7 to i32 (%struct.device*)**, !dbg !2043
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %freeze_late8, align 8, !dbg !2043
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2044
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2042
  br label %cond.end10, !dbg !2038

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2038

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2038
  ret i32 %cond11, !dbg !2045
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_freeze(%struct.device* %dev) #0 !dbg !2046 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2047, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2049, metadata !DIExpression()), !dbg !2050
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2051
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2052
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2052
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2051
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2051

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2053
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2054
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2054
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2055
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2055
  br label %cond.end, !dbg !2051

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2051

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2051
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2050
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2056
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2056
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2057

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2058
  %freeze = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 4, !dbg !2059
  %freeze4 = bitcast {}** %freeze to i32 (%struct.device*)**, !dbg !2059
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %freeze4, align 8, !dbg !2059
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2058
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2056

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2060
  %freeze7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 4, !dbg !2061
  %freeze8 = bitcast {}** %freeze7 to i32 (%struct.device*)**, !dbg !2061
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %freeze8, align 8, !dbg !2061
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2062
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2060
  br label %cond.end10, !dbg !2056

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2056

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2056
  ret i32 %cond11, !dbg !2063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_poweroff_noirq(%struct.device* %dev) #0 !dbg !2064 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2065, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2067, metadata !DIExpression()), !dbg !2068
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2069
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2070
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2070
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2069
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2069

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2071
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2072
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2072
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2073
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2073
  br label %cond.end, !dbg !2069

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2069

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2069
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2068
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2074
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2074
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2075

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2076
  %poweroff_noirq = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 18, !dbg !2077
  %poweroff_noirq4 = bitcast {}** %poweroff_noirq to i32 (%struct.device*)**, !dbg !2077
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %poweroff_noirq4, align 8, !dbg !2077
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2076
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2074

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2078
  %poweroff_noirq7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 18, !dbg !2079
  %poweroff_noirq8 = bitcast {}** %poweroff_noirq7 to i32 (%struct.device*)**, !dbg !2079
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %poweroff_noirq8, align 8, !dbg !2079
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2080
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2078
  br label %cond.end10, !dbg !2074

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2074

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2074
  ret i32 %cond11, !dbg !2081
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_poweroff_late(%struct.device* %dev) #0 !dbg !2082 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2083, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2085, metadata !DIExpression()), !dbg !2086
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2087
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2088
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2088
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2087
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2087

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2089
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2090
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2090
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2091
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2091
  br label %cond.end, !dbg !2087

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2087

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2087
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2086
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2092
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2092
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2093

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2094
  %poweroff_late = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 12, !dbg !2095
  %poweroff_late4 = bitcast {}** %poweroff_late to i32 (%struct.device*)**, !dbg !2095
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %poweroff_late4, align 8, !dbg !2095
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2094
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2092

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2096
  %poweroff_late7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 12, !dbg !2097
  %poweroff_late8 = bitcast {}** %poweroff_late7 to i32 (%struct.device*)**, !dbg !2097
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %poweroff_late8, align 8, !dbg !2097
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2098
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2096
  br label %cond.end10, !dbg !2092

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2092

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2092
  ret i32 %cond11, !dbg !2099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_poweroff(%struct.device* %dev) #0 !dbg !2100 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2101, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2103, metadata !DIExpression()), !dbg !2104
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2105
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2106
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2106
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2105
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2105

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2107
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2108
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2108
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2109
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2109
  br label %cond.end, !dbg !2105

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2105
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2104
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2110
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2110
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2111

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2112
  %poweroff = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 6, !dbg !2113
  %poweroff4 = bitcast {}** %poweroff to i32 (%struct.device*)**, !dbg !2113
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %poweroff4, align 8, !dbg !2113
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2112
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2110

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2114
  %poweroff7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 6, !dbg !2115
  %poweroff8 = bitcast {}** %poweroff7 to i32 (%struct.device*)**, !dbg !2115
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %poweroff8, align 8, !dbg !2115
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2116
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2114
  br label %cond.end10, !dbg !2110

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2110

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2110
  ret i32 %cond11, !dbg !2117
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_thaw_noirq(%struct.device* %dev) #0 !dbg !2118 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2119, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2121, metadata !DIExpression()), !dbg !2122
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2123
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2124
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2124
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2123
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2123

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2125
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2126
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2126
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2127
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2127
  br label %cond.end, !dbg !2123

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2123

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2123
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2122
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2128
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2128
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2129

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2130
  %thaw_noirq = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 17, !dbg !2131
  %thaw_noirq4 = bitcast {}** %thaw_noirq to i32 (%struct.device*)**, !dbg !2131
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %thaw_noirq4, align 8, !dbg !2131
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2130
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2128

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2132
  %thaw_noirq7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 17, !dbg !2133
  %thaw_noirq8 = bitcast {}** %thaw_noirq7 to i32 (%struct.device*)**, !dbg !2133
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %thaw_noirq8, align 8, !dbg !2133
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2134
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2132
  br label %cond.end10, !dbg !2128

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2128

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2128
  ret i32 %cond11, !dbg !2135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_thaw_early(%struct.device* %dev) #0 !dbg !2136 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2137, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2139, metadata !DIExpression()), !dbg !2140
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2141
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2142
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2142
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2141
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2141

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2143
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2144
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2144
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2145
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2145
  br label %cond.end, !dbg !2141

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2141

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2141
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2140
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2146
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2146
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2147

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2148
  %thaw_early = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 11, !dbg !2149
  %thaw_early4 = bitcast {}** %thaw_early to i32 (%struct.device*)**, !dbg !2149
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %thaw_early4, align 8, !dbg !2149
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2148
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2146

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2150
  %thaw_early7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 11, !dbg !2151
  %thaw_early8 = bitcast {}** %thaw_early7 to i32 (%struct.device*)**, !dbg !2151
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %thaw_early8, align 8, !dbg !2151
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2152
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2150
  br label %cond.end10, !dbg !2146

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2146

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2146
  ret i32 %cond11, !dbg !2153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_thaw(%struct.device* %dev) #0 !dbg !2154 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2155, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2157, metadata !DIExpression()), !dbg !2158
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2159
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2160
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2160
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2159
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2159

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2161
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2162
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2162
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2163
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2163
  br label %cond.end, !dbg !2159

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2159
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2158
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2164
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2164
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2165

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2166
  %thaw = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 5, !dbg !2167
  %thaw4 = bitcast {}** %thaw to i32 (%struct.device*)**, !dbg !2167
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %thaw4, align 8, !dbg !2167
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2166
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2164

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2168
  %thaw7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 5, !dbg !2169
  %thaw8 = bitcast {}** %thaw7 to i32 (%struct.device*)**, !dbg !2169
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %thaw8, align 8, !dbg !2169
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2170
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2168
  br label %cond.end10, !dbg !2164

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2164

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2164
  ret i32 %cond11, !dbg !2171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_resume_noirq(%struct.device* %dev) #0 !dbg !2172 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2173, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2175, metadata !DIExpression()), !dbg !2176
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2177
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2178
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2178
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2177
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2177

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2179
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2180
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2180
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2181
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2181
  br label %cond.end, !dbg !2177

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2177
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2176
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2182
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2182
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2183

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2184
  %resume_noirq = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 15, !dbg !2185
  %resume_noirq4 = bitcast {}** %resume_noirq to i32 (%struct.device*)**, !dbg !2185
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume_noirq4, align 8, !dbg !2185
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2184
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2182

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2186
  %resume_noirq7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 15, !dbg !2187
  %resume_noirq8 = bitcast {}** %resume_noirq7 to i32 (%struct.device*)**, !dbg !2187
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume_noirq8, align 8, !dbg !2187
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2188
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2186
  br label %cond.end10, !dbg !2182

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2182

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2182
  ret i32 %cond11, !dbg !2189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_resume_early(%struct.device* %dev) #0 !dbg !2190 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2191, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2193, metadata !DIExpression()), !dbg !2194
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2195
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2196
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2196
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2195
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2195

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2197
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2198
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2198
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2199
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2199
  br label %cond.end, !dbg !2195

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2195
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2194
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2200
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2200
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2201

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2202
  %resume_early = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 9, !dbg !2203
  %resume_early4 = bitcast {}** %resume_early to i32 (%struct.device*)**, !dbg !2203
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume_early4, align 8, !dbg !2203
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2202
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2200

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2204
  %resume_early7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 9, !dbg !2205
  %resume_early8 = bitcast {}** %resume_early7 to i32 (%struct.device*)**, !dbg !2205
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume_early8, align 8, !dbg !2205
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2206
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2204
  br label %cond.end10, !dbg !2200

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2200

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2200
  ret i32 %cond11, !dbg !2207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_resume(%struct.device* %dev) #0 !dbg !2208 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2209, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2211, metadata !DIExpression()), !dbg !2212
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2213
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2214
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2214
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2213
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2213

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2215
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2216
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2216
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2217
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2217
  br label %cond.end, !dbg !2213

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2213

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2213
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2212
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2218
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2218
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2219

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2220
  %resume = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 3, !dbg !2221
  %resume4 = bitcast {}** %resume to i32 (%struct.device*)**, !dbg !2221
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume4, align 8, !dbg !2221
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2220
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2218

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2222
  %resume7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 3, !dbg !2223
  %resume8 = bitcast {}** %resume7 to i32 (%struct.device*)**, !dbg !2223
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume8, align 8, !dbg !2223
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2224
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2222
  br label %cond.end10, !dbg !2218

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2218

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2218
  ret i32 %cond11, !dbg !2225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_restore_noirq(%struct.device* %dev) #0 !dbg !2226 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2229, metadata !DIExpression()), !dbg !2230
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2231
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2232
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2232
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2231
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2231

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2233
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2234
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2234
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2235
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2235
  br label %cond.end, !dbg !2231

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2231

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2231
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2230
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2236
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2236
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2237

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2238
  %restore_noirq = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 19, !dbg !2239
  %restore_noirq4 = bitcast {}** %restore_noirq to i32 (%struct.device*)**, !dbg !2239
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %restore_noirq4, align 8, !dbg !2239
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2238
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2236

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2240
  %restore_noirq7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 19, !dbg !2241
  %restore_noirq8 = bitcast {}** %restore_noirq7 to i32 (%struct.device*)**, !dbg !2241
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %restore_noirq8, align 8, !dbg !2241
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2242
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2240
  br label %cond.end10, !dbg !2236

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2236

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2236
  ret i32 %cond11, !dbg !2243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_restore_early(%struct.device* %dev) #0 !dbg !2244 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2245, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2247, metadata !DIExpression()), !dbg !2248
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2249
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2250
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2250
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2249
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2249

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2251
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2252
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2252
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2253
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2253
  br label %cond.end, !dbg !2249

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2249
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2248
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2254
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2254
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2255

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2256
  %restore_early = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 13, !dbg !2257
  %restore_early4 = bitcast {}** %restore_early to i32 (%struct.device*)**, !dbg !2257
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %restore_early4, align 8, !dbg !2257
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2256
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2254

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2258
  %restore_early7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 13, !dbg !2259
  %restore_early8 = bitcast {}** %restore_early7 to i32 (%struct.device*)**, !dbg !2259
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %restore_early8, align 8, !dbg !2259
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2260
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2258
  br label %cond.end10, !dbg !2254

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2254

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2254
  ret i32 %cond11, !dbg !2261
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_generic_restore(%struct.device* %dev) #0 !dbg !2262 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2263, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !2265, metadata !DIExpression()), !dbg !2266
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2267
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2268
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2268
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !2267
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2267

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2269
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2270
  %3 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !2270
  %pm2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2271
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm2, align 8, !dbg !2271
  br label %cond.end, !dbg !2267

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2267

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dev_pm_ops* [ %4, %cond.true ], [ null, %cond.false ], !dbg !2267
  store %struct.dev_pm_ops* %cond, %struct.dev_pm_ops** %pm, align 8, !dbg !2266
  %5 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2272
  %tobool3 = icmp ne %struct.dev_pm_ops* %5, null, !dbg !2272
  br i1 %tobool3, label %land.lhs.true, label %cond.false9, !dbg !2273

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2274
  %restore = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 7, !dbg !2275
  %restore4 = bitcast {}** %restore to i32 (%struct.device*)**, !dbg !2275
  %7 = load i32 (%struct.device*)*, i32 (%struct.device*)** %restore4, align 8, !dbg !2275
  %tobool5 = icmp ne i32 (%struct.device*)* %7, null, !dbg !2274
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !2272

cond.true6:                                       ; preds = %land.lhs.true
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2276
  %restore7 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 7, !dbg !2277
  %restore8 = bitcast {}** %restore7 to i32 (%struct.device*)**, !dbg !2277
  %9 = load i32 (%struct.device*)*, i32 (%struct.device*)** %restore8, align 8, !dbg !2277
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2278
  %call = call i32 %9(%struct.device* %10) #2, !dbg !2276
  br label %cond.end10, !dbg !2272

cond.false9:                                      ; preds = %land.lhs.true, %cond.end
  br label %cond.end10, !dbg !2272

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi i32 [ %call, %cond.true6 ], [ 0, %cond.false9 ], !dbg !2272
  ret i32 %cond11, !dbg !2279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_generic_complete(%struct.device* %dev) #0 !dbg !2280 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.device_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2281, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv, metadata !2283, metadata !DIExpression()), !dbg !2284
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2285
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !2286
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2286
  store %struct.device_driver* %1, %struct.device_driver** %drv, align 8, !dbg !2284
  %2 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !2287
  %tobool = icmp ne %struct.device_driver* %2, null, !dbg !2287
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2289

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !2290
  %pm = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 16, !dbg !2291
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2291
  %tobool1 = icmp ne %struct.dev_pm_ops* %4, null, !dbg !2290
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !2292

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !2293
  %pm3 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %5, i32 0, i32 16, !dbg !2294
  %6 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm3, align 8, !dbg !2294
  %complete = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %6, i32 0, i32 1, !dbg !2295
  %7 = load void (%struct.device*)*, void (%struct.device*)** %complete, align 8, !dbg !2295
  %tobool4 = icmp ne void (%struct.device*)* %7, null, !dbg !2293
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2296

if.then:                                          ; preds = %land.lhs.true2
  %8 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !2297
  %pm5 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %8, i32 0, i32 16, !dbg !2298
  %9 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm5, align 8, !dbg !2298
  %complete6 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %9, i32 0, i32 1, !dbg !2299
  %10 = load void (%struct.device*)*, void (%struct.device*)** %complete6, align 8, !dbg !2299
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2300
  call void %10(%struct.device* %11) #2, !dbg !2297
  br label %if.end, !dbg !2297

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !2301
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/base/power/generic_ops.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42}
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
!48 = !{i32 7, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"Code Model", i32 2}
!52 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!53 = distinct !DISubprogram(name: "pm_generic_runtime_suspend", scope: !1, file: !1, line: 20, type: !54, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !57}
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !59)
!59 = !{!60, !1540, !1541, !1544, !1545, !1594, !1672, !1673, !1674, !1675, !1676, !1685, !1790, !1803, !1806, !1807, !1811, !1813, !1814, !1815, !1819, !1825, !1826, !1829, !1833, !1836, !1839, !1840, !1841, !1842, !1874, !1875, !1876, !1879, !1882, !1883, !1884, !1885}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !58, file: !28, line: 462, baseType: !61, size: 512)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !62, line: 64, size: 512, elements: !63)
!62 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !68, !75, !77, !137, !1376, !1530, !1535, !1536, !1537, !1538, !1539}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !62, line: 65, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !61, file: !62, line: 66, baseType: !69, size: 128, offset: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !70, line: 178, size: 128, elements: !71)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !70, line: 179, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !69, file: !70, line: 179, baseType: !73, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !61, file: !62, line: 67, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !61, file: !62, line: 68, baseType: !78, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !62, line: 192, size: 704, elements: !80)
!80 = !{!81, !82, !98, !99}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !79, file: !62, line: 193, baseType: !69, size: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !79, file: !62, line: 194, baseType: !83, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !84, line: 83, baseType: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !84, line: 71, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 72, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 72, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !88, file: !84, line: 73, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !84, line: 20, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !91, file: !84, line: 21, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !95, line: 25, baseType: !96)
!95 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 25, elements: !97)
!97 = !{}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !79, file: !62, line: 195, baseType: !61, size: 512, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !79, file: !62, line: 196, baseType: !100, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !62, line: 156, size: 192, elements: !103)
!103 = !{!104, !109, !114}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !102, file: !62, line: 157, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!56, !78, !76}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !62, line: 158, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!65, !78, !76}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !102, file: !62, line: 159, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!56, !78, !76, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !62, line: 148, size: 20736, elements: !121)
!121 = !{!122, !127, !131, !132, !136}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !120, file: !62, line: 149, baseType: !123, size: 192)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 192, elements: !125)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!125 = !{!126}
!126 = !DISubrange(count: 3)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !120, file: !62, line: 150, baseType: !128, size: 4096, offset: 192)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 4096, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !120, file: !62, line: 151, baseType: !56, size: 32, offset: 4288)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !120, file: !62, line: 152, baseType: !133, size: 16384, offset: 4320)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 16384, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2048)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !120, file: !62, line: 153, baseType: !56, size: 32, offset: 20704)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !61, file: !62, line: 69, baseType: !138, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !62, line: 138, size: 448, elements: !140)
!140 = !{!141, !145, !175, !177, !1322, !1355, !1359}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !139, file: !62, line: 139, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !76}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !139, file: !62, line: 140, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !149, line: 230, size: 128, elements: !150)
!149 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !167}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !148, file: !149, line: 231, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !76, !160, !124}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !70, line: 60, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !157, line: 73, baseType: !158)
!157 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !157, line: 15, baseType: !159)
!159 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !149, line: 30, size: 128, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !149, line: 31, baseType: !65, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !161, file: !149, line: 32, baseType: !165, size: 16, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !70, line: 19, baseType: !166)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !148, file: !149, line: 232, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!155, !76, !160, !65, !171}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 55, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !157, line: 72, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !157, line: 16, baseType: !174)
!174 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !139, file: !62, line: 141, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !139, file: !62, line: 142, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !149, line: 84, size: 320, elements: !182)
!182 = !{!183, !184, !188, !1319, !1320}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !149, line: 85, baseType: !65, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !181, file: !149, line: 86, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!165, !76, !160, !56}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !181, file: !149, line: 88, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!165, !76, !192, !56}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !149, line: 168, size: 448, elements: !194)
!194 = !{!195, !196, !197, !199, !209, !210}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !193, file: !149, line: 169, baseType: !161, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !149, line: 170, baseType: !171, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !193, file: !149, line: 171, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !193, file: !149, line: 172, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!155, !203, !76, !192, !124, !206, !171}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !205, line: 526, flags: DIFlagFwdDecl)
!205 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !70, line: 46, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !157, line: 88, baseType: !208)
!208 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !193, file: !149, line: 174, baseType: !200, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !193, file: !149, line: 176, baseType: !211, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!56, !203, !76, !192, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !216, line: 305, size: 1472, elements: !217)
!216 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !219, !220, !221, !222, !230, !231, !1293, !1299, !1300, !1305, !1306, !1309, !1313, !1314, !1315, !1316, !1317}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !215, file: !216, line: 308, baseType: !174, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !215, file: !216, line: 309, baseType: !174, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !215, file: !216, line: 313, baseType: !214, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !215, file: !216, line: 313, baseType: !214, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !215, file: !216, line: 315, baseType: !223, size: 192, align: 64, offset: 256)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !224, line: 24, size: 192, align: 64, elements: !225)
!224 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !227, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !223, file: !224, line: 25, baseType: !174, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !223, file: !224, line: 26, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !223, file: !224, line: 27, baseType: !228, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !215, file: !216, line: 323, baseType: !174, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !215, file: !216, line: 327, baseType: !232, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !216, line: 388, size: 7296, elements: !234)
!234 = !{!235, !1289}
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !216, line: 389, baseType: !236, size: 7296)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !216, line: 389, size: 7296, elements: !237)
!237 = !{!238, !239, !243, !249, !253, !254, !255, !256, !257, !265, !270, !271, !272, !273, !282, !283, !284, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !319, !327, !330, !362, !363, !1259, !1260, !1263, !1267, !1268, !1271, !1272, !1273, !1276, !1288}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !236, file: !216, line: 390, baseType: !214, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !236, file: !216, line: 391, baseType: !240, size: 64, offset: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !224, line: 31, size: 64, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !240, file: !224, line: 32, baseType: !228, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !236, file: !216, line: 392, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !245, line: 23, baseType: !246)
!245 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !247, line: 31, baseType: !248)
!247 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!248 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !236, file: !216, line: 394, baseType: !250, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!174, !203, !174, !174, !174, !174}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !236, file: !216, line: 398, baseType: !174, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !236, file: !216, line: 399, baseType: !174, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !236, file: !216, line: 405, baseType: !174, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !236, file: !216, line: 406, baseType: !174, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !236, file: !216, line: 407, baseType: !258, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !205, line: 286, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 286, size: 64, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !260, file: !205, line: 286, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !264, line: 18, baseType: !174)
!264 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!265 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !236, file: !216, line: 416, baseType: !266, size: 32, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !70, line: 168, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 166, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !267, file: !70, line: 167, baseType: !56, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !236, file: !216, line: 428, baseType: !266, size: 32, offset: 608)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !236, file: !216, line: 437, baseType: !266, size: 32, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !236, file: !216, line: 447, baseType: !266, size: 32, offset: 672)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !236, file: !216, line: 450, baseType: !274, size: 64, offset: 704)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !275, line: 13, baseType: !276)
!275 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !70, line: 175, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 173, size: 64, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !277, file: !70, line: 174, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !245, line: 22, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !247, line: 30, baseType: !208)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !236, file: !216, line: 452, baseType: !56, size: 32, offset: 768)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !236, file: !216, line: 454, baseType: !83, offset: 800)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !236, file: !216, line: 457, baseType: !285, size: 256, offset: 832)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !286, line: 35, size: 256, elements: !287)
!286 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!287 = !{!288, !289, !290, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !285, file: !286, line: 36, baseType: !274, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !285, file: !286, line: 42, baseType: !274, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !285, file: !286, line: 46, baseType: !291, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !84, line: 29, baseType: !91)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !285, file: !286, line: 47, baseType: !69, size: 128, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !236, file: !216, line: 459, baseType: !69, size: 128, offset: 1088)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !236, file: !216, line: 466, baseType: !174, size: 64, offset: 1216)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !236, file: !216, line: 467, baseType: !174, size: 64, offset: 1280)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !236, file: !216, line: 469, baseType: !174, size: 64, offset: 1344)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !236, file: !216, line: 470, baseType: !174, size: 64, offset: 1408)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !236, file: !216, line: 471, baseType: !276, size: 64, offset: 1472)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !236, file: !216, line: 472, baseType: !174, size: 64, offset: 1536)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !236, file: !216, line: 473, baseType: !174, size: 64, offset: 1600)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !236, file: !216, line: 474, baseType: !174, size: 64, offset: 1664)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !236, file: !216, line: 475, baseType: !174, size: 64, offset: 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !236, file: !216, line: 477, baseType: !83, offset: 1792)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !236, file: !216, line: 478, baseType: !174, size: 64, offset: 1792)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !236, file: !216, line: 478, baseType: !174, size: 64, offset: 1856)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !236, file: !216, line: 478, baseType: !174, size: 64, offset: 1920)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !236, file: !216, line: 478, baseType: !174, size: 64, offset: 1984)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !236, file: !216, line: 479, baseType: !174, size: 64, offset: 2048)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !236, file: !216, line: 479, baseType: !174, size: 64, offset: 2112)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !236, file: !216, line: 479, baseType: !174, size: 64, offset: 2176)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !236, file: !216, line: 480, baseType: !174, size: 64, offset: 2240)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !236, file: !216, line: 480, baseType: !174, size: 64, offset: 2304)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !236, file: !216, line: 480, baseType: !174, size: 64, offset: 2368)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !236, file: !216, line: 480, baseType: !174, size: 64, offset: 2432)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !236, file: !216, line: 482, baseType: !316, size: 2816, offset: 2496)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 2816, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 44)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !236, file: !216, line: 488, baseType: !320, size: 256, offset: 5312)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !321, line: 60, size: 256, elements: !322)
!321 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !320, file: !321, line: 61, baseType: !324, size: 256)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 256, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 4)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !236, file: !216, line: 490, baseType: !328, size: 64, offset: 5568)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !216, line: 490, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !236, file: !216, line: 493, baseType: !331, size: 896, offset: 5632)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !332, line: 53, baseType: !333)
!332 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 13, size: 896, elements: !334)
!334 = !{!335, !336, !337, !338, !341, !342, !349, !350, !354, !355, !358}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !333, file: !332, line: 18, baseType: !244, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !333, file: !332, line: 28, baseType: !276, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !333, file: !332, line: 31, baseType: !285, size: 256, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !333, file: !332, line: 32, baseType: !339, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !332, line: 32, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !333, file: !332, line: 37, baseType: !166, size: 16, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !333, file: !332, line: 40, baseType: !343, size: 192, offset: 512)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !344, line: 53, size: 192, elements: !345)
!344 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346, !347, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !343, file: !344, line: 54, baseType: !274, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !343, file: !344, line: 55, baseType: !83, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !343, file: !344, line: 59, baseType: !69, size: 128, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !333, file: !332, line: 41, baseType: !198, size: 64, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !333, file: !332, line: 42, baseType: !351, size: 64, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !332, line: 42, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !333, file: !332, line: 44, baseType: !266, size: 32, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !333, file: !332, line: 50, baseType: !356, size: 16, offset: 864)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !245, line: 19, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !247, line: 24, baseType: !166)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !333, file: !332, line: 51, baseType: !359, size: 16, offset: 880)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !245, line: 18, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !247, line: 23, baseType: !361)
!361 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !216, line: 495, baseType: !174, size: 64, offset: 6528)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !236, file: !216, line: 497, baseType: !364, size: 64, offset: 6592)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !216, line: 381, size: 384, elements: !366)
!366 = !{!367, !368, !1258}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !365, file: !216, line: 382, baseType: !266, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !365, file: !216, line: 383, baseType: !369, size: 128, offset: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !216, line: 376, size: 128, elements: !370)
!370 = !{!371, !1256}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !369, file: !216, line: 377, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !374, line: 640, size: 48640, elements: !375)
!374 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376, !384, !386, !387, !393, !394, !395, !396, !397, !398, !399, !400, !404, !422, !433, !528, !529, !530, !541, !542, !544, !545, !546, !547, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !626, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !682, !684, !685, !686, !698, !700, !701, !702, !703, !704, !710, !711, !712, !713, !714, !715, !716, !728, !733, !737, !738, !739, !742, !746, !749, !752, !755, !758, !761, !764, !767, !773, !774, !775, !781, !782, !783, !784, !785, !794, !795, !796, !797, !798, !803, !804, !805, !808, !809, !812, !815, !818, !821, !824, !827, !828, !908, !911, !914, !915, !918, !919, !920, !926, !927, !928, !941, !942, !943, !955, !960, !963, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !373, file: !374, line: 646, baseType: !377, size: 128)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !378, line: 56, size: 128, elements: !379)
!378 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !378, line: 57, baseType: !174, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !377, file: !378, line: 58, baseType: !382, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !245, line: 21, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !247, line: 27, baseType: !5)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !374, line: 649, baseType: !385, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !159)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !373, file: !374, line: 657, baseType: !198, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !373, file: !374, line: 658, baseType: !388, size: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !389, line: 113, baseType: !390)
!389 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !389, line: 111, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !390, file: !389, line: 112, baseType: !266, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !374, line: 660, baseType: !5, size: 32, offset: 288)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !373, file: !374, line: 661, baseType: !5, size: 32, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !373, file: !374, line: 684, baseType: !56, size: 32, offset: 352)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !373, file: !374, line: 686, baseType: !56, size: 32, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !373, file: !374, line: 687, baseType: !56, size: 32, offset: 416)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !373, file: !374, line: 688, baseType: !56, size: 32, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !373, file: !374, line: 689, baseType: !5, size: 32, offset: 480)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !373, file: !374, line: 691, baseType: !401, size: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !374, line: 691, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !373, file: !374, line: 692, baseType: !405, size: 832, offset: 576)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !374, line: 451, size: 832, elements: !406)
!406 = !{!407, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !405, file: !374, line: 453, baseType: !408, size: 128)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !374, line: 325, size: 128, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !408, file: !374, line: 326, baseType: !174, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !408, file: !374, line: 327, baseType: !382, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !405, file: !374, line: 454, baseType: !223, size: 192, align: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !405, file: !374, line: 455, baseType: !69, size: 128, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !405, file: !374, line: 456, baseType: !5, size: 32, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !405, file: !374, line: 458, baseType: !244, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !405, file: !374, line: 459, baseType: !244, size: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !405, file: !374, line: 460, baseType: !244, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !405, file: !374, line: 461, baseType: !244, size: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !405, file: !374, line: 463, baseType: !244, size: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !405, file: !374, line: 465, baseType: !421, offset: 832)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !374, line: 415, elements: !97)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !373, file: !374, line: 693, baseType: !423, size: 384, offset: 1408)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !374, line: 489, size: 384, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !423, file: !374, line: 490, baseType: !69, size: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !423, file: !374, line: 491, baseType: !174, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !423, file: !374, line: 492, baseType: !174, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !423, file: !374, line: 493, baseType: !5, size: 32, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !423, file: !374, line: 494, baseType: !166, size: 16, offset: 288)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !423, file: !374, line: 495, baseType: !166, size: 16, offset: 304)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !423, file: !374, line: 497, baseType: !432, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !373, file: !374, line: 697, baseType: !434, size: 1792, offset: 1792)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !374, line: 507, size: 1792, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !525, !526}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !434, file: !374, line: 508, baseType: !223, size: 192, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !434, file: !374, line: 515, baseType: !244, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !434, file: !374, line: 516, baseType: !244, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !434, file: !374, line: 517, baseType: !244, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !434, file: !374, line: 518, baseType: !244, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !434, file: !374, line: 519, baseType: !244, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !434, file: !374, line: 526, baseType: !280, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !434, file: !374, line: 527, baseType: !244, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !374, line: 528, baseType: !5, size: 32, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !434, file: !374, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !434, file: !374, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !434, file: !374, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !434, file: !374, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !434, file: !374, line: 563, baseType: !450, size: 512, offset: 704)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !451)
!451 = !{!452, !460, !461, !466, !518, !522, !523, !524}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !4, line: 119, baseType: !453, size: 256)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !454, line: 9, size: 256, elements: !455)
!454 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !453, file: !454, line: 10, baseType: !223, size: 192, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !453, file: !454, line: 11, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !459, line: 29, baseType: !280)
!459 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !450, file: !4, line: 120, baseType: !458, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !450, file: !4, line: 121, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!3, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !450, file: !4, line: 122, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !469)
!469 = !{!470, !490, !491, !494, !504, !505, !513, !517}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !468, file: !4, line: 160, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !4, line: 215, baseType: !291)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !472, file: !4, line: 216, baseType: !5, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !472, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !472, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !472, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !472, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !472, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !472, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !472, file: !4, line: 233, baseType: !458, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !472, file: !4, line: 234, baseType: !465, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !472, file: !4, line: 235, baseType: !458, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !472, file: !4, line: 236, baseType: !465, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !472, file: !4, line: 237, baseType: !487, size: 4096, offset: 512)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 4096, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 8)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !468, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !468, file: !4, line: 162, baseType: !492, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !70, line: 27, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !157, line: 96, baseType: !56)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !468, file: !4, line: 163, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !496, line: 276, baseType: !497)
!496 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !496, line: 276, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !497, file: !496, line: 276, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !496, line: 70, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !496, line: 65, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !501, file: !496, line: 66, baseType: !5, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !468, file: !4, line: 164, baseType: !465, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !468, file: !4, line: 165, baseType: !506, size: 128, offset: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !454, line: 14, size: 128, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !506, file: !454, line: 15, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !224, line: 125, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !509, file: !224, line: 126, baseType: !240, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !509, file: !224, line: 127, baseType: !228, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !468, file: !4, line: 166, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!458}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !468, file: !4, line: 167, baseType: !458, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !450, file: !4, line: 123, baseType: !519, size: 8, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !245, line: 17, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !247, line: 21, baseType: !521)
!521 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !450, file: !4, line: 124, baseType: !519, size: 8, offset: 456)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !450, file: !4, line: 125, baseType: !519, size: 8, offset: 464)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !450, file: !4, line: 126, baseType: !519, size: 8, offset: 472)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !434, file: !374, line: 572, baseType: !450, size: 512, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !434, file: !374, line: 580, baseType: !527, size: 64, offset: 1728)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !373, file: !374, line: 721, baseType: !5, size: 32, offset: 3584)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !373, file: !374, line: 722, baseType: !56, size: 32, offset: 3616)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !373, file: !374, line: 723, baseType: !531, size: 64, offset: 3648)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !534, line: 17, baseType: !535)
!534 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !534, line: 17, size: 64, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !535, file: !534, line: 17, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 1)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !373, file: !374, line: 724, baseType: !533, size: 64, offset: 3712)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !373, file: !374, line: 749, baseType: !543, offset: 3776)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !374, line: 290, elements: !97)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !373, file: !374, line: 751, baseType: !69, size: 128, offset: 3776)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !373, file: !374, line: 757, baseType: !232, size: 64, offset: 3904)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !373, file: !374, line: 758, baseType: !232, size: 64, offset: 3968)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !373, file: !374, line: 761, baseType: !548, size: 320, offset: 4032)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !321, line: 34, size: 320, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !548, file: !321, line: 35, baseType: !244, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !548, file: !321, line: 36, baseType: !552, size: 256, offset: 64)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 256, elements: !325)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !373, file: !374, line: 766, baseType: !56, size: 32, offset: 4352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !373, file: !374, line: 767, baseType: !56, size: 32, offset: 4384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !373, file: !374, line: 768, baseType: !56, size: 32, offset: 4416)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !373, file: !374, line: 770, baseType: !56, size: 32, offset: 4448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !373, file: !374, line: 772, baseType: !174, size: 64, offset: 4480)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !373, file: !374, line: 775, baseType: !5, size: 32, offset: 4544)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !373, file: !374, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !373, file: !374, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !373, file: !374, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !373, file: !374, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !373, file: !374, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !373, file: !374, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !373, file: !374, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !373, file: !374, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !373, file: !374, line: 831, baseType: !174, size: 64, offset: 4672)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !373, file: !374, line: 833, baseType: !569, size: 384, offset: 4736)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !570)
!570 = !{!571, !576}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !569, file: !10, line: 26, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!159, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !10, line: 27, baseType: !577, size: 320, offset: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !10, line: 27, size: 320, elements: !578)
!578 = !{!579, !589, !616}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !577, file: !10, line: 36, baseType: !580, size: 320)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !577, file: !10, line: 29, size: 320, elements: !581)
!581 = !{!582, !584, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !580, file: !10, line: 30, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !580, file: !10, line: 31, baseType: !382, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !10, line: 32, baseType: !382, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !580, file: !10, line: 33, baseType: !382, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !580, file: !10, line: 34, baseType: !244, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !580, file: !10, line: 35, baseType: !583, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !577, file: !10, line: 46, baseType: !590, size: 192)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !577, file: !10, line: 38, size: 192, elements: !591)
!591 = !{!592, !593, !594, !615}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !590, file: !10, line: 39, baseType: !492, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !590, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !10, line: 41, baseType: !595, size: 64, offset: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !590, file: !10, line: 41, size: 64, elements: !596)
!596 = !{!597, !605}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !595, file: !10, line: 42, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !600, line: 7, size: 128, elements: !601)
!600 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!601 = !{!602, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !599, file: !600, line: 8, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !157, line: 93, baseType: !208)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !599, file: !600, line: 9, baseType: !208, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !595, file: !10, line: 43, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !608, line: 7, size: 64, elements: !609)
!608 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!609 = !{!610, !614}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !607, file: !608, line: 8, baseType: !611, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !608, line: 5, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !245, line: 20, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !247, line: 26, baseType: !56)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !607, file: !608, line: 9, baseType: !612, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !590, file: !10, line: 45, baseType: !244, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !577, file: !10, line: 54, baseType: !617, size: 256)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !577, file: !10, line: 48, size: 256, elements: !618)
!618 = !{!619, !622, !623, !624, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !617, file: !10, line: 49, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !617, file: !10, line: 50, baseType: !56, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !617, file: !10, line: 51, baseType: !56, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !617, file: !10, line: 52, baseType: !174, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !617, file: !10, line: 53, baseType: !174, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !373, file: !374, line: 835, baseType: !627, size: 32, offset: 5120)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !70, line: 22, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !157, line: 28, baseType: !56)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !373, file: !374, line: 836, baseType: !627, size: 32, offset: 5152)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !373, file: !374, line: 840, baseType: !174, size: 64, offset: 5184)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !373, file: !374, line: 849, baseType: !372, size: 64, offset: 5248)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !373, file: !374, line: 852, baseType: !372, size: 64, offset: 5312)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !373, file: !374, line: 857, baseType: !69, size: 128, offset: 5376)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !373, file: !374, line: 858, baseType: !69, size: 128, offset: 5504)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !373, file: !374, line: 859, baseType: !372, size: 64, offset: 5632)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !373, file: !374, line: 867, baseType: !69, size: 128, offset: 5696)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !373, file: !374, line: 868, baseType: !69, size: 128, offset: 5824)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !373, file: !374, line: 871, baseType: !639, size: 64, offset: 5952)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !641, line: 59, size: 768, elements: !642)
!641 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!642 = !{!643, !644, !645, !646, !657, !658, !665, !674}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !640, file: !641, line: 61, baseType: !388, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !640, file: !641, line: 62, baseType: !5, size: 32, offset: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !640, file: !641, line: 63, baseType: !83, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !640, file: !641, line: 65, baseType: !647, size: 256, offset: 64)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 256, elements: !325)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !70, line: 182, size: 64, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !648, file: !70, line: 183, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !70, line: 186, size: 128, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !652, file: !70, line: 187, baseType: !651, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !652, file: !70, line: 187, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !640, file: !641, line: 66, baseType: !648, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !640, file: !641, line: 68, baseType: !659, size: 128, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !660, line: 40, baseType: !661)
!660 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !660, line: 36, size: 128, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !661, file: !660, line: 37, baseType: !83)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !661, file: !660, line: 38, baseType: !69, size: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !640, file: !641, line: 69, baseType: !666, size: 128, align: 64, offset: 512)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !70, line: 216, size: 128, align: 64, elements: !667)
!667 = !{!668, !670}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !666, file: !70, line: 217, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !666, file: !70, line: 218, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !669}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !640, file: !641, line: 70, baseType: !675, size: 128, offset: 640)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 128, elements: !539)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !641, line: 54, size: 128, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !676, file: !641, line: 55, baseType: !56, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !676, file: !641, line: 56, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !641, line: 56, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !373, file: !374, line: 872, baseType: !683, size: 512, offset: 6016)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 512, elements: !325)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !373, file: !374, line: 873, baseType: !69, size: 128, offset: 6528)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !373, file: !374, line: 874, baseType: !69, size: 128, offset: 6656)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !373, file: !374, line: 876, baseType: !687, size: 64, offset: 6784)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !689, line: 26, size: 192, elements: !690)
!689 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !688, file: !689, line: 27, baseType: !5, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !688, file: !689, line: 28, baseType: !693, size: 128, offset: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !694, line: 43, size: 128, elements: !695)
!694 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !694, line: 44, baseType: !291)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !693, file: !694, line: 45, baseType: !69, size: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !373, file: !374, line: 879, baseType: !699, size: 64, offset: 6848)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !373, file: !374, line: 882, baseType: !699, size: 64, offset: 6912)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !373, file: !374, line: 884, baseType: !244, size: 64, offset: 6976)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !373, file: !374, line: 885, baseType: !244, size: 64, offset: 7040)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !373, file: !374, line: 890, baseType: !244, size: 64, offset: 7104)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !373, file: !374, line: 891, baseType: !705, size: 128, offset: 7168)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !374, line: 242, size: 128, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !705, file: !374, line: 244, baseType: !244, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !705, file: !374, line: 245, baseType: !244, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !705, file: !374, line: 246, baseType: !291, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !373, file: !374, line: 900, baseType: !174, size: 64, offset: 7296)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !373, file: !374, line: 901, baseType: !174, size: 64, offset: 7360)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !373, file: !374, line: 904, baseType: !244, size: 64, offset: 7424)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !373, file: !374, line: 907, baseType: !244, size: 64, offset: 7488)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !373, file: !374, line: 910, baseType: !174, size: 64, offset: 7552)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !373, file: !374, line: 911, baseType: !174, size: 64, offset: 7616)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !373, file: !374, line: 914, baseType: !717, size: 640, offset: 7680)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !718, line: 123, size: 640, elements: !719)
!718 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !726, !727}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !717, file: !718, line: 124, baseType: !721, size: 576)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 576, elements: !125)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !718, line: 108, size: 192, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !722, file: !718, line: 109, baseType: !244, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !722, file: !718, line: 110, baseType: !506, size: 128, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !717, file: !718, line: 125, baseType: !5, size: 32, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !717, file: !718, line: 126, baseType: !5, size: 32, offset: 608)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !373, file: !374, line: 917, baseType: !729, size: 192, offset: 8320)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !718, line: 134, size: 192, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !729, file: !718, line: 135, baseType: !666, size: 128, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !729, file: !718, line: 136, baseType: !5, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !373, file: !374, line: 923, baseType: !734, size: 64, offset: 8512)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !374, line: 923, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !373, file: !374, line: 926, baseType: !734, size: 64, offset: 8576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !373, file: !374, line: 929, baseType: !734, size: 64, offset: 8640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !373, file: !374, line: 933, baseType: !740, size: 64, offset: 8704)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !374, line: 933, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !373, file: !374, line: 943, baseType: !743, size: 128, offset: 8768)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 16)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !373, file: !374, line: 945, baseType: !747, size: 64, offset: 8896)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !374, line: 49, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !373, file: !374, line: 956, baseType: !750, size: 64, offset: 8960)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !374, line: 45, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !373, file: !374, line: 959, baseType: !753, size: 64, offset: 9024)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !374, line: 959, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !373, file: !374, line: 962, baseType: !756, size: 64, offset: 9088)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !374, line: 66, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !373, file: !374, line: 966, baseType: !759, size: 64, offset: 9152)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !374, line: 50, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !373, file: !374, line: 969, baseType: !762, size: 64, offset: 9216)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !718, line: 223, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !373, file: !374, line: 970, baseType: !765, size: 64, offset: 9280)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !374, line: 62, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !373, file: !374, line: 971, baseType: !768, size: 64, offset: 9344)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !769, line: 25, baseType: !770)
!769 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !769, line: 23, size: 64, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !770, file: !769, line: 24, baseType: !538, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !373, file: !374, line: 972, baseType: !768, size: 64, offset: 9408)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !373, file: !374, line: 974, baseType: !768, size: 64, offset: 9472)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !373, file: !374, line: 975, baseType: !776, size: 192, offset: 9536)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !777, line: 30, size: 192, elements: !778)
!777 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !776, file: !777, line: 31, baseType: !69, size: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !776, file: !777, line: 32, baseType: !768, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !373, file: !374, line: 976, baseType: !174, size: 64, offset: 9728)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !373, file: !374, line: 977, baseType: !171, size: 64, offset: 9792)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !373, file: !374, line: 978, baseType: !5, size: 32, offset: 9856)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !373, file: !374, line: 980, baseType: !669, size: 64, offset: 9920)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !373, file: !374, line: 989, baseType: !786, size: 128, offset: 9984)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !787, line: 35, size: 128, elements: !788)
!787 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !786, file: !787, line: 36, baseType: !56, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !786, file: !787, line: 37, baseType: !266, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !786, file: !787, line: 38, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !787, line: 23, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !373, file: !374, line: 992, baseType: !244, size: 64, offset: 10112)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !373, file: !374, line: 993, baseType: !244, size: 64, offset: 10176)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !373, file: !374, line: 996, baseType: !83, offset: 10240)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !373, file: !374, line: 999, baseType: !291, offset: 10240)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !373, file: !374, line: 1001, baseType: !799, size: 64, offset: 10240)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !374, line: 636, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !799, file: !374, line: 637, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !373, file: !374, line: 1005, baseType: !509, size: 128, offset: 10304)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !373, file: !374, line: 1007, baseType: !372, size: 64, offset: 10432)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !373, file: !374, line: 1009, baseType: !806, size: 64, offset: 10496)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !374, line: 1009, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !373, file: !374, line: 1043, baseType: !198, size: 64, offset: 10560)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !373, file: !374, line: 1046, baseType: !810, size: 64, offset: 10624)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !374, line: 41, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !373, file: !374, line: 1050, baseType: !813, size: 64, offset: 10688)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !374, line: 42, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !373, file: !374, line: 1054, baseType: !816, size: 64, offset: 10752)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !374, line: 55, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !373, file: !374, line: 1056, baseType: !819, size: 64, offset: 10816)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !374, line: 40, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !373, file: !374, line: 1058, baseType: !822, size: 64, offset: 10880)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !374, line: 47, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !373, file: !374, line: 1061, baseType: !825, size: 64, offset: 10944)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !374, line: 43, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !373, file: !374, line: 1064, baseType: !174, size: 64, offset: 11008)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !373, file: !374, line: 1065, baseType: !829, size: 64, offset: 11072)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !777, line: 14, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !777, line: 12, size: 384, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !777, line: 13, baseType: !834, size: 384)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !831, file: !777, line: 13, size: 384, elements: !835)
!835 = !{!836, !837, !838, !839}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !834, file: !777, line: 13, baseType: !56, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !834, file: !777, line: 13, baseType: !56, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !834, file: !777, line: 13, baseType: !56, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !834, file: !777, line: 13, baseType: !840, size: 256, offset: 128)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !841, line: 32, size: 256, elements: !842)
!841 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!842 = !{!843, !849, !862, !868, !877, !897, !902}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !840, file: !841, line: 37, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !841, line: 34, size: 64, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !844, file: !841, line: 35, baseType: !628, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !844, file: !841, line: 36, baseType: !848, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !157, line: 49, baseType: !5)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !840, file: !841, line: 45, baseType: !850, size: 192)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !841, line: 40, size: 192, elements: !851)
!851 = !{!852, !854, !855, !861}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !850, file: !841, line: 41, baseType: !853, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !157, line: 95, baseType: !56)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !850, file: !841, line: 42, baseType: !56, size: 32, offset: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !850, file: !841, line: 43, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !841, line: 11, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !841, line: 8, size: 64, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !857, file: !841, line: 9, baseType: !56, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !857, file: !841, line: 10, baseType: !198, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !850, file: !841, line: 44, baseType: !56, size: 32, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !840, file: !841, line: 52, baseType: !863, size: 128)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !841, line: 48, size: 128, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !863, file: !841, line: 49, baseType: !628, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !863, file: !841, line: 50, baseType: !848, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !863, file: !841, line: 51, baseType: !856, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !840, file: !841, line: 61, baseType: !869, size: 256)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !841, line: 55, size: 256, elements: !870)
!870 = !{!871, !872, !873, !874, !876}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !869, file: !841, line: 56, baseType: !628, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !869, file: !841, line: 57, baseType: !848, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !869, file: !841, line: 58, baseType: !56, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !869, file: !841, line: 59, baseType: !875, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !157, line: 94, baseType: !158)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !869, file: !841, line: 60, baseType: !875, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !840, file: !841, line: 95, baseType: !878, size: 256)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !841, line: 64, size: 256, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !878, file: !841, line: 65, baseType: !198, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !841, line: 77, baseType: !882, size: 192, offset: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !841, line: 77, size: 192, elements: !883)
!883 = !{!884, !885, !892}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !882, file: !841, line: 82, baseType: !361, size: 16)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !882, file: !841, line: 88, baseType: !886, size: 192)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !841, line: 84, size: 192, elements: !887)
!887 = !{!888, !890, !891}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !886, file: !841, line: 85, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !488)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !886, file: !841, line: 86, baseType: !198, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !886, file: !841, line: 87, baseType: !198, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !882, file: !841, line: 93, baseType: !893, size: 96)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !841, line: 90, size: 96, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !893, file: !841, line: 91, baseType: !889, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !893, file: !841, line: 92, baseType: !383, size: 32, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !840, file: !841, line: 101, baseType: !898, size: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !841, line: 98, size: 128, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !898, file: !841, line: 99, baseType: !159, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !898, file: !841, line: 100, baseType: !56, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !840, file: !841, line: 108, baseType: !903, size: 128)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !841, line: 104, size: 128, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !903, file: !841, line: 105, baseType: !198, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !903, file: !841, line: 106, baseType: !56, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !903, file: !841, line: 107, baseType: !5, size: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !373, file: !374, line: 1067, baseType: !909, offset: 11136)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !910, line: 12, elements: !97)
!910 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!911 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !373, file: !374, line: 1099, baseType: !912, size: 64, offset: 11136)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !374, line: 56, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !373, file: !374, line: 1103, baseType: !69, size: 128, offset: 11200)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !373, file: !374, line: 1104, baseType: !916, size: 64, offset: 11328)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !374, line: 46, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !373, file: !374, line: 1105, baseType: !343, size: 192, offset: 11392)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !373, file: !374, line: 1106, baseType: !5, size: 32, offset: 11584)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !373, file: !374, line: 1109, baseType: !921, size: 128, offset: 11648)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 128, elements: !924)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !374, line: 51, flags: DIFlagFwdDecl)
!924 = !{!925}
!925 = !DISubrange(count: 2)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !373, file: !374, line: 1110, baseType: !343, size: 192, offset: 11776)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !373, file: !374, line: 1111, baseType: !69, size: 128, offset: 11968)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !373, file: !374, line: 1173, baseType: !929, size: 64, offset: 12096)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !931, line: 62, size: 256, align: 256, elements: !932)
!931 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!932 = !{!933, !934, !935, !940}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !930, file: !931, line: 75, baseType: !383, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !930, file: !931, line: 90, baseType: !383, size: 32, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !930, file: !931, line: 124, baseType: !936, size: 64, offset: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !931, line: 109, size: 64, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !936, file: !931, line: 110, baseType: !246, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !936, file: !931, line: 112, baseType: !246, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !931, line: 144, baseType: !383, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !373, file: !374, line: 1174, baseType: !382, size: 32, offset: 12160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !373, file: !374, line: 1179, baseType: !174, size: 64, offset: 12224)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !373, file: !374, line: 1182, baseType: !944, size: 128, offset: 12288)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !321, line: 76, size: 128, elements: !945)
!945 = !{!946, !951, !954}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !944, file: !321, line: 85, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !948, line: 7, size: 64, elements: !949)
!948 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !947, file: !948, line: 12, baseType: !535, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !944, file: !321, line: 88, baseType: !952, size: 8, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 30, baseType: !953)
!953 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !944, file: !321, line: 95, baseType: !952, size: 8, offset: 72)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !374, line: 1184, baseType: !956, size: 128, offset: 12416)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !374, line: 1184, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !956, file: !374, line: 1185, baseType: !388, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !956, file: !374, line: 1186, baseType: !666, size: 128, align: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !373, file: !374, line: 1190, baseType: !961, size: 64, offset: 12544)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !374, line: 53, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !373, file: !374, line: 1192, baseType: !964, size: 128, offset: 12608)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !321, line: 64, size: 128, elements: !965)
!965 = !{!966, !1059, !1060}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !964, file: !321, line: 65, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !216, line: 68, size: 512, align: 128, elements: !969)
!969 = !{!970, !971, !1051, !1058}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !216, line: 69, baseType: !174, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !216, line: 77, baseType: !972, size: 320, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !216, line: 77, size: 320, elements: !973)
!973 = !{!974, !983, !988, !1016, !1024, !1030, !1043, !1050}
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !216, line: 78, baseType: !975, size: 320)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !216, line: 78, size: 320, elements: !976)
!976 = !{!977, !978, !981, !982}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !975, file: !216, line: 84, baseType: !69, size: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !975, file: !216, line: 86, baseType: !979, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !216, line: 26, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !975, file: !216, line: 87, baseType: !174, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !975, file: !216, line: 94, baseType: !174, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !216, line: 96, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !216, line: 96, size: 64, elements: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !984, file: !216, line: 101, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !70, line: 143, baseType: !244)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !216, line: 103, baseType: !989, size: 320)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !216, line: 103, size: 320, elements: !990)
!990 = !{!991, !1001, !1004, !1005}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !216, line: 104, baseType: !992, size: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !216, line: 104, size: 128, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !992, file: !216, line: 105, baseType: !69, size: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !216, line: 106, baseType: !996, size: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !216, line: 106, size: 128, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !996, file: !216, line: 107, baseType: !967, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !996, file: !216, line: 109, baseType: !56, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !996, file: !216, line: 110, baseType: !56, size: 32, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !989, file: !216, line: 117, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !216, line: 117, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !989, file: !216, line: 119, baseType: !198, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !216, line: 120, baseType: !1006, size: 64, offset: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !216, line: 120, size: 64, elements: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1006, file: !216, line: 121, baseType: !198, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1006, file: !216, line: 122, baseType: !174, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !216, line: 123, baseType: !1011, size: 32)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1006, file: !216, line: 123, size: 32, elements: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1011, file: !216, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1011, file: !216, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1011, file: !216, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !216, line: 130, baseType: !1017, size: 192)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !216, line: 130, size: 192, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1017, file: !216, line: 131, baseType: !174, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1017, file: !216, line: 134, baseType: !521, size: 8, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1017, file: !216, line: 135, baseType: !521, size: 8, offset: 72)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1017, file: !216, line: 136, baseType: !266, size: 32, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1017, file: !216, line: 137, baseType: !5, size: 32, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !216, line: 139, baseType: !1025, size: 256)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !216, line: 139, size: 256, elements: !1026)
!1026 = !{!1027, !1028, !1029}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1025, file: !216, line: 140, baseType: !174, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1025, file: !216, line: 141, baseType: !266, size: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1025, file: !216, line: 143, baseType: !69, size: 128, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !216, line: 145, baseType: !1031, size: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !216, line: 145, size: 256, elements: !1032)
!1032 = !{!1033, !1034, !1036, !1037, !1042}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1031, file: !216, line: 146, baseType: !174, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1031, file: !216, line: 147, baseType: !1035, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !205, line: 509, baseType: !967)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1031, file: !216, line: 148, baseType: !174, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !216, line: 149, baseType: !1038, size: 64, offset: 192)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !216, line: 149, size: 64, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1038, file: !216, line: 150, baseType: !232, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1038, file: !216, line: 151, baseType: !266, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1031, file: !216, line: 156, baseType: !83, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !216, line: 159, baseType: !1044, size: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !216, line: 159, size: 128, elements: !1045)
!1045 = !{!1046, !1049}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1044, file: !216, line: 161, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !216, line: 161, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1044, file: !216, line: 162, baseType: !198, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !972, file: !216, line: 176, baseType: !666, size: 128, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !216, line: 179, baseType: !1052, size: 32, offset: 384)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !216, line: 179, size: 32, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1052, file: !216, line: 184, baseType: !266, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1052, file: !216, line: 192, baseType: !5, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1052, file: !216, line: 194, baseType: !5, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1052, file: !216, line: 195, baseType: !56, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !968, file: !216, line: 199, baseType: !266, size: 32, offset: 416)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !964, file: !321, line: 67, baseType: !383, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !964, file: !321, line: 68, baseType: !383, size: 32, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !373, file: !374, line: 1206, baseType: !56, size: 32, offset: 12736)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !373, file: !374, line: 1207, baseType: !56, size: 32, offset: 12768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !373, file: !374, line: 1209, baseType: !174, size: 64, offset: 12800)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !373, file: !374, line: 1219, baseType: !244, size: 64, offset: 12864)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !373, file: !374, line: 1220, baseType: !244, size: 64, offset: 12928)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !373, file: !374, line: 1317, baseType: !56, size: 32, offset: 12992)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !373, file: !374, line: 1319, baseType: !372, size: 64, offset: 13056)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !373, file: !374, line: 1322, baseType: !1069, size: 64, offset: 13120)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !374, line: 1322, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !373, file: !374, line: 1326, baseType: !388, size: 32, offset: 13184)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !373, file: !374, line: 1342, baseType: !198, size: 64, offset: 13248)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !373, file: !374, line: 1343, baseType: !246, size: 64, offset: 13312)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !373, file: !374, line: 1344, baseType: !244, size: 64, offset: 13376)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !373, file: !374, line: 1345, baseType: !246, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !373, file: !374, line: 1346, baseType: !246, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !373, file: !374, line: 1347, baseType: !246, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !373, file: !374, line: 1348, baseType: !666, size: 128, align: 64, offset: 13504)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !373, file: !374, line: 1358, baseType: !1080, size: 34816, offset: 13824)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1081, line: 485, size: 34816, elements: !1082)
!1081 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1082 = !{!1083, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1112, !1113, !1114, !1115, !1116, !1117, !1120, !1121, !1122}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1080, file: !1081, line: 487, baseType: !1084, size: 192)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1085, size: 192, elements: !125)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1086, line: 16, size: 64, elements: !1087)
!1086 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1085, file: !1086, line: 17, baseType: !356, size: 16)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1085, file: !1086, line: 18, baseType: !356, size: 16, offset: 16)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1085, file: !1086, line: 19, baseType: !356, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1085, file: !1086, line: 19, baseType: !356, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1085, file: !1086, line: 19, baseType: !356, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1085, file: !1086, line: 19, baseType: !356, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1085, file: !1086, line: 19, baseType: !356, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1085, file: !1086, line: 20, baseType: !356, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1085, file: !1086, line: 20, baseType: !356, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1085, file: !1086, line: 20, baseType: !356, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1085, file: !1086, line: 20, baseType: !356, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1085, file: !1086, line: 20, baseType: !356, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1085, file: !1086, line: 20, baseType: !356, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1080, file: !1081, line: 491, baseType: !174, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1080, file: !1081, line: 495, baseType: !166, size: 16, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1080, file: !1081, line: 496, baseType: !166, size: 16, offset: 272)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1080, file: !1081, line: 497, baseType: !166, size: 16, offset: 288)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1080, file: !1081, line: 498, baseType: !166, size: 16, offset: 304)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1080, file: !1081, line: 502, baseType: !174, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1080, file: !1081, line: 503, baseType: !174, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1080, file: !1081, line: 514, baseType: !1109, size: 256, offset: 448)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 256, elements: !325)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1081, line: 483, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1080, file: !1081, line: 516, baseType: !174, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1080, file: !1081, line: 518, baseType: !174, size: 64, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1080, file: !1081, line: 520, baseType: !174, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1080, file: !1081, line: 521, baseType: !174, size: 64, offset: 896)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1080, file: !1081, line: 522, baseType: !174, size: 64, offset: 960)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1080, file: !1081, line: 528, baseType: !1118, size: 64, offset: 1024)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1081, line: 10, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1080, file: !1081, line: 535, baseType: !174, size: 64, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1080, file: !1081, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1080, file: !1081, line: 540, baseType: !1123, size: 33280, offset: 1536)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1124, line: 317, size: 33280, elements: !1125)
!1124 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1127, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1123, file: !1124, line: 330, baseType: !5, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1123, file: !1124, line: 337, baseType: !174, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1123, file: !1124, line: 348, baseType: !1129, size: 32768, offset: 512)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1124, line: 304, size: 32768, elements: !1130)
!1130 = !{!1131, !1146, !1185, !1235, !1252}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1129, file: !1124, line: 305, baseType: !1132, size: 896)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1124, line: 12, size: 896, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1145}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1132, file: !1124, line: 13, baseType: !382, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1132, file: !1124, line: 14, baseType: !382, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1132, file: !1124, line: 15, baseType: !382, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1132, file: !1124, line: 16, baseType: !382, size: 32, offset: 96)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1132, file: !1124, line: 17, baseType: !382, size: 32, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1132, file: !1124, line: 18, baseType: !382, size: 32, offset: 160)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1132, file: !1124, line: 19, baseType: !382, size: 32, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1132, file: !1124, line: 22, baseType: !1142, size: 640, offset: 224)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 640, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 20)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1132, file: !1124, line: 25, baseType: !382, size: 32, offset: 864)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1129, file: !1124, line: 306, baseType: !1147, size: 4096, align: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1124, line: 34, size: 4096, align: 128, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1168, !1169, !1170, !1174, !1176, !1180}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1147, file: !1124, line: 35, baseType: !356, size: 16)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1147, file: !1124, line: 36, baseType: !356, size: 16, offset: 16)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1147, file: !1124, line: 37, baseType: !356, size: 16, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1147, file: !1124, line: 38, baseType: !356, size: 16, offset: 48)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !1124, line: 39, baseType: !1154, size: 128, offset: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !1124, line: 39, size: 128, elements: !1155)
!1155 = !{!1156, !1161}
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !1124, line: 40, baseType: !1157, size: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !1124, line: 40, size: 128, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1157, file: !1124, line: 41, baseType: !244, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1157, file: !1124, line: 42, baseType: !244, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !1124, line: 44, baseType: !1162, size: 128)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !1124, line: 44, size: 128, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1162, file: !1124, line: 45, baseType: !382, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1162, file: !1124, line: 46, baseType: !382, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1162, file: !1124, line: 47, baseType: !382, size: 32, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1162, file: !1124, line: 48, baseType: !382, size: 32, offset: 96)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1147, file: !1124, line: 51, baseType: !382, size: 32, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1147, file: !1124, line: 52, baseType: !382, size: 32, offset: 224)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1147, file: !1124, line: 55, baseType: !1171, size: 1024, offset: 256)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 1024, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1147, file: !1124, line: 58, baseType: !1175, size: 2048, offset: 1280)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 2048, elements: !129)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1147, file: !1124, line: 60, baseType: !1177, size: 384, offset: 3328)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 384, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 12)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !1124, line: 62, baseType: !1181, size: 384, offset: 3712)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1147, file: !1124, line: 62, size: 384, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1181, file: !1124, line: 63, baseType: !1177, size: 384)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1181, file: !1124, line: 64, baseType: !1177, size: 384)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1129, file: !1124, line: 307, baseType: !1186, size: 1088)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1124, line: 79, size: 1088, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1234}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1186, file: !1124, line: 80, baseType: !382, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1186, file: !1124, line: 81, baseType: !382, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1186, file: !1124, line: 82, baseType: !382, size: 32, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1186, file: !1124, line: 83, baseType: !382, size: 32, offset: 96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1186, file: !1124, line: 84, baseType: !382, size: 32, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1186, file: !1124, line: 85, baseType: !382, size: 32, offset: 160)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1186, file: !1124, line: 86, baseType: !382, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1186, file: !1124, line: 88, baseType: !1142, size: 640, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1186, file: !1124, line: 89, baseType: !519, size: 8, offset: 864)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1186, file: !1124, line: 90, baseType: !519, size: 8, offset: 872)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1186, file: !1124, line: 91, baseType: !519, size: 8, offset: 880)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1186, file: !1124, line: 92, baseType: !519, size: 8, offset: 888)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1186, file: !1124, line: 93, baseType: !519, size: 8, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1186, file: !1124, line: 94, baseType: !519, size: 8, offset: 904)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1186, file: !1124, line: 95, baseType: !1203, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1205, line: 11, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1204, file: !1205, line: 12, baseType: !159, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1204, file: !1205, line: 13, baseType: !1209, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1211, line: 56, size: 1344, elements: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1210, file: !1211, line: 61, baseType: !174, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1210, file: !1211, line: 62, baseType: !174, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1210, file: !1211, line: 63, baseType: !174, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1210, file: !1211, line: 64, baseType: !174, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1210, file: !1211, line: 65, baseType: !174, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1210, file: !1211, line: 66, baseType: !174, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1210, file: !1211, line: 68, baseType: !174, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1210, file: !1211, line: 69, baseType: !174, size: 64, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1210, file: !1211, line: 70, baseType: !174, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1210, file: !1211, line: 71, baseType: !174, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1210, file: !1211, line: 72, baseType: !174, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1210, file: !1211, line: 73, baseType: !174, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1210, file: !1211, line: 74, baseType: !174, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1210, file: !1211, line: 75, baseType: !174, size: 64, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1210, file: !1211, line: 76, baseType: !174, size: 64, offset: 896)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1210, file: !1211, line: 81, baseType: !174, size: 64, offset: 960)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1210, file: !1211, line: 83, baseType: !174, size: 64, offset: 1024)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1210, file: !1211, line: 84, baseType: !174, size: 64, offset: 1088)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !1211, line: 85, baseType: !174, size: 64, offset: 1152)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1210, file: !1211, line: 86, baseType: !174, size: 64, offset: 1216)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1210, file: !1211, line: 87, baseType: !174, size: 64, offset: 1280)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1186, file: !1124, line: 96, baseType: !382, size: 32, offset: 1024)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1129, file: !1124, line: 308, baseType: !1236, size: 4608, align: 512)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1124, line: 289, size: 4608, align: 512, elements: !1237)
!1237 = !{!1238, !1239, !1248}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1236, file: !1124, line: 290, baseType: !1147, size: 4096, align: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1236, file: !1124, line: 291, baseType: !1240, size: 512, offset: 4096)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1124, line: 268, size: 512, elements: !1241)
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1240, file: !1124, line: 269, baseType: !244, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1240, file: !1124, line: 270, baseType: !244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1240, file: !1124, line: 271, baseType: !1245, size: 384, offset: 128)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 384, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 6)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1236, file: !1124, line: 292, baseType: !1249, offset: 4608)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 0)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1129, file: !1124, line: 309, baseType: !1253, size: 32768)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 32768, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 4096)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !216, line: 378, baseType: !1257, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !365, file: !216, line: 384, baseType: !688, size: 192, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !236, file: !216, line: 500, baseType: !83, offset: 6656)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !236, file: !216, line: 501, baseType: !1261, size: 64, offset: 6656)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !216, line: 387, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !236, file: !216, line: 516, baseType: !1264, size: 64, offset: 6720)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1266, line: 18, flags: DIFlagFwdDecl)
!1266 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !236, file: !216, line: 519, baseType: !203, size: 64, offset: 6784)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !236, file: !216, line: 521, baseType: !1269, size: 64, offset: 6848)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !216, line: 521, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !236, file: !216, line: 545, baseType: !266, size: 32, offset: 6912)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !236, file: !216, line: 548, baseType: !952, size: 8, offset: 6944)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !236, file: !216, line: 550, baseType: !1274, offset: 6952)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1275, line: 142, elements: !97)
!1275 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !236, file: !216, line: 554, baseType: !1277, size: 256, offset: 6976)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1278, line: 102, size: 256, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1277, file: !1278, line: 103, baseType: !274, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1277, file: !1278, line: 104, baseType: !69, size: 128, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1277, file: !1278, line: 105, baseType: !1283, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1278, line: 21, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !236, file: !216, line: 557, baseType: !382, size: 32, offset: 7232)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !233, file: !216, line: 565, baseType: !1290, offset: 7296)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: -1)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !215, file: !216, line: 333, baseType: !1294, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !205, line: 284, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !205, line: 284, size: 64, elements: !1296)
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1295, file: !205, line: 284, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !264, line: 19, baseType: !174)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !215, file: !216, line: 334, baseType: !174, size: 64, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !215, file: !216, line: 343, baseType: !1301, size: 256, offset: 704)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !216, line: 340, size: 256, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1301, file: !216, line: 341, baseType: !223, size: 192, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1301, file: !216, line: 342, baseType: !174, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !215, file: !216, line: 351, baseType: !69, size: 128, offset: 960)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !215, file: !216, line: 353, baseType: !1307, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !216, line: 353, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !215, file: !216, line: 356, baseType: !1310, size: 64, offset: 1152)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !216, line: 356, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !215, file: !216, line: 359, baseType: !174, size: 64, offset: 1216)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !215, file: !216, line: 361, baseType: !203, size: 64, offset: 1280)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !215, file: !216, line: 362, baseType: !198, size: 64, offset: 1344)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !215, file: !216, line: 365, baseType: !274, size: 64, offset: 1408)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !215, file: !216, line: 373, baseType: !1318, offset: 1472)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !216, line: 296, elements: !97)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !181, file: !149, line: 90, baseType: !176, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !181, file: !149, line: 91, baseType: !1321, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !139, file: !62, line: 143, baseType: !1323, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1326, !76}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1329)
!1329 = !{!1330, !1331, !1335, !1339, !1347, !1351}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1328, file: !16, line: 40, baseType: !15, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1328, file: !16, line: 41, baseType: !1332, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!952}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1328, file: !16, line: 42, baseType: !1336, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!198}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1328, file: !16, line: 43, baseType: !1340, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!1343, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1328, file: !16, line: 44, baseType: !1348, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1343}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1328, file: !16, line: 45, baseType: !1352, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !198}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !139, file: !62, line: 144, baseType: !1356, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!1343, !76}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !139, file: !62, line: 145, baseType: !1360, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !76, !1363, !1369}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1266, line: 23, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1266, line: 21, size: 32, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1365, file: !1266, line: 22, baseType: !1368, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !70, line: 32, baseType: !848)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1266, line: 28, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1266, line: 26, size: 32, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1371, file: !1266, line: 27, baseType: !1374, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !70, line: 33, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !157, line: 50, baseType: !5)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !61, file: !62, line: 70, baseType: !1377, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1379, line: 123, size: 1024, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1523, !1524, !1525, !1526, !1527}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1378, file: !1379, line: 124, baseType: !266, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1378, file: !1379, line: 125, baseType: !266, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1378, file: !1379, line: 135, baseType: !1377, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1378, file: !1379, line: 136, baseType: !65, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1378, file: !1379, line: 138, baseType: !223, size: 192, align: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1378, file: !1379, line: 140, baseType: !1343, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1378, file: !1379, line: 141, baseType: !5, size: 32, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1379, line: 142, baseType: !1389, size: 256, offset: 512)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1379, line: 142, size: 256, elements: !1390)
!1390 = !{!1391, !1446, !1450}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1389, file: !1379, line: 143, baseType: !1392, size: 192)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1379, line: 91, size: 192, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1392, file: !1379, line: 92, baseType: !174, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1392, file: !1379, line: 94, baseType: !240, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1392, file: !1379, line: 100, baseType: !1397, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1379, line: 180, size: 704, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1416, !1417, !1418, !1444, !1445}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1398, file: !1379, line: 182, baseType: !1377, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1398, file: !1379, line: 183, baseType: !5, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1398, file: !1379, line: 186, baseType: !1403, size: 192, offset: 128)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1404, line: 19, size: 192, elements: !1405)
!1404 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1405 = !{!1406, !1414, !1415}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1403, file: !1404, line: 20, baseType: !1407, size: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1408, line: 292, size: 128, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1411, !1413}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1407, file: !1408, line: 293, baseType: !83)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1407, file: !1408, line: 295, baseType: !1412, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !70, line: 148, baseType: !5)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1407, file: !1408, line: 296, baseType: !198, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1403, file: !1404, line: 21, baseType: !5, size: 32, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1403, file: !1404, line: 22, baseType: !5, size: 32, offset: 160)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1398, file: !1379, line: 187, baseType: !382, size: 32, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1398, file: !1379, line: 188, baseType: !382, size: 32, offset: 352)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1398, file: !1379, line: 189, baseType: !1419, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1379, line: 168, size: 320, elements: !1421)
!1421 = !{!1422, !1428, !1432, !1436, !1440}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1420, file: !1379, line: 169, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!56, !1426, !1397}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !205, line: 539, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1420, file: !1379, line: 171, baseType: !1429, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!56, !1377, !65, !165}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1420, file: !1379, line: 173, baseType: !1433, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!56, !1377}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1420, file: !1379, line: 174, baseType: !1437, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!56, !1377, !1377, !65}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1420, file: !1379, line: 176, baseType: !1441, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!56, !1426, !1377, !1397}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1398, file: !1379, line: 192, baseType: !69, size: 128, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1398, file: !1379, line: 194, baseType: !659, size: 128, offset: 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1389, file: !1379, line: 144, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1379, line: 103, size: 64, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1447, file: !1379, line: 104, baseType: !1377, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1389, file: !1379, line: 145, baseType: !1451, size: 256)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1379, line: 107, size: 256, elements: !1452)
!1452 = !{!1453, !1518, !1521, !1522}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1451, file: !1379, line: 108, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1379, line: 217, size: 768, elements: !1457)
!1457 = !{!1458, !1478, !1482, !1486, !1491, !1495, !1499, !1503, !1504, !1505, !1506, !1514}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1456, file: !1379, line: 222, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!56, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1379, line: 197, size: 1088, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1463, file: !1379, line: 199, baseType: !1377, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1463, file: !1379, line: 200, baseType: !203, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1463, file: !1379, line: 201, baseType: !1426, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1463, file: !1379, line: 202, baseType: !198, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1463, file: !1379, line: 205, baseType: !343, size: 192, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1463, file: !1379, line: 206, baseType: !343, size: 192, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1463, file: !1379, line: 207, baseType: !56, size: 32, offset: 640)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1463, file: !1379, line: 208, baseType: !69, size: 128, offset: 704)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1463, file: !1379, line: 209, baseType: !124, size: 64, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1463, file: !1379, line: 211, baseType: !171, size: 64, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1463, file: !1379, line: 212, baseType: !952, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1463, file: !1379, line: 213, baseType: !952, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1463, file: !1379, line: 214, baseType: !1310, size: 64, offset: 1024)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1456, file: !1379, line: 223, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1462}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1456, file: !1379, line: 236, baseType: !1483, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!56, !1426, !198}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1456, file: !1379, line: 238, baseType: !1487, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!198, !1426, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1456, file: !1379, line: 239, baseType: !1492, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!198, !1426, !198, !1490}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1456, file: !1379, line: 240, baseType: !1496, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1426, !198}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1456, file: !1379, line: 242, baseType: !1500, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!155, !1462, !124, !171, !206}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1456, file: !1379, line: 252, baseType: !171, size: 64, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1456, file: !1379, line: 259, baseType: !952, size: 8, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1456, file: !1379, line: 260, baseType: !1500, size: 64, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1456, file: !1379, line: 263, baseType: !1507, size: 64, offset: 640)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1510, !1462, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1511, line: 52, baseType: !5)
!1511 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1379, line: 27, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1456, file: !1379, line: 266, baseType: !1515, size: 64, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!56, !1462, !214}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1451, file: !1379, line: 109, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1379, line: 31, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1451, file: !1379, line: 110, baseType: !206, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1451, file: !1379, line: 111, baseType: !1377, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1378, file: !1379, line: 148, baseType: !198, size: 64, offset: 768)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1378, file: !1379, line: 154, baseType: !244, size: 64, offset: 832)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1379, line: 156, baseType: !166, size: 16, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1378, file: !1379, line: 157, baseType: !165, size: 16, offset: 912)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1378, file: !1379, line: 158, baseType: !1528, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1379, line: 32, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !61, file: !62, line: 71, baseType: !1531, size: 32, offset: 448)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1532, line: 19, size: 32, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1533 = !{!1534}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1531, file: !1532, line: 20, baseType: !388, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !61, file: !62, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !61, file: !62, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !61, file: !62, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !61, file: !62, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !61, file: !62, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !58, file: !28, line: 463, baseType: !57, size: 64, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !58, file: !28, line: 465, baseType: !1542, size: 64, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !58, file: !28, line: 467, baseType: !65, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !28, line: 468, baseType: !1546, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1556, !1561, !1565}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1548, file: !28, line: 88, baseType: !65, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1548, file: !28, line: 89, baseType: !178, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1548, file: !28, line: 90, baseType: !1553, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!56, !57, !119}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1548, file: !28, line: 91, baseType: !1557, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!124, !57, !1560, !1363, !1369}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1548, file: !28, line: 93, baseType: !1562, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !57}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1548, file: !28, line: 95, baseType: !1566, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1569)
!1569 = !{!1570, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1568, file: !35, line: 279, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1568, file: !35, line: 280, baseType: !1562, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1568, file: !35, line: 281, baseType: !1571, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1568, file: !35, line: 282, baseType: !1571, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1568, file: !35, line: 283, baseType: !1571, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1568, file: !35, line: 284, baseType: !1571, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1568, file: !35, line: 285, baseType: !1571, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1568, file: !35, line: 286, baseType: !1571, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1568, file: !35, line: 287, baseType: !1571, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1568, file: !35, line: 288, baseType: !1571, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1568, file: !35, line: 289, baseType: !1571, size: 64, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1568, file: !35, line: 290, baseType: !1571, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1568, file: !35, line: 291, baseType: !1571, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1568, file: !35, line: 292, baseType: !1571, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1568, file: !35, line: 293, baseType: !1571, size: 64, offset: 896)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1568, file: !35, line: 294, baseType: !1571, size: 64, offset: 960)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1568, file: !35, line: 295, baseType: !1571, size: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1568, file: !35, line: 296, baseType: !1571, size: 64, offset: 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1568, file: !35, line: 297, baseType: !1571, size: 64, offset: 1152)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1568, file: !35, line: 298, baseType: !1571, size: 64, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1568, file: !35, line: 299, baseType: !1571, size: 64, offset: 1280)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1568, file: !35, line: 300, baseType: !1571, size: 64, offset: 1344)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1568, file: !35, line: 301, baseType: !1571, size: 64, offset: 1408)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !58, file: !28, line: 470, baseType: !1595, size: 64, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1597, line: 82, size: 1408, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1665, !1668, !1671}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1596, file: !1597, line: 83, baseType: !65, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1596, file: !1597, line: 84, baseType: !65, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1596, file: !1597, line: 85, baseType: !57, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1596, file: !1597, line: 86, baseType: !178, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1596, file: !1597, line: 87, baseType: !178, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1596, file: !1597, line: 88, baseType: !178, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1596, file: !1597, line: 90, baseType: !1606, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!56, !57, !1609}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1618, !1619, !1620, !1621, !1625, !1629, !1630, !1631, !1632, !1633, !1641, !1642, !1643, !1644, !1645, !1646}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1610, file: !22, line: 96, baseType: !65, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1610, file: !22, line: 97, baseType: !1595, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1610, file: !22, line: 99, baseType: !1615, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1617, line: 76, flags: DIFlagFwdDecl)
!1617 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1610, file: !22, line: 100, baseType: !65, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1610, file: !22, line: 102, baseType: !952, size: 8, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1610, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1610, file: !22, line: 105, baseType: !1622, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !22, line: 105, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1610, file: !22, line: 106, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !22, line: 106, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1610, file: !22, line: 108, baseType: !1571, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1610, file: !22, line: 109, baseType: !1562, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1610, file: !22, line: 110, baseType: !1571, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1610, file: !22, line: 111, baseType: !1562, size: 64, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1610, file: !22, line: 112, baseType: !1634, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!56, !57, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1639)
!1639 = !{!1640}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1638, file: !35, line: 51, baseType: !56, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1610, file: !22, line: 113, baseType: !1571, size: 64, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1610, file: !22, line: 114, baseType: !178, size: 64, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1610, file: !22, line: 115, baseType: !178, size: 64, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1610, file: !22, line: 117, baseType: !1566, size: 64, offset: 960)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1610, file: !22, line: 118, baseType: !1562, size: 64, offset: 1024)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1610, file: !22, line: 120, baseType: !1647, size: 64, offset: 1088)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1596, file: !1597, line: 91, baseType: !1553, size: 64, offset: 448)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1596, file: !1597, line: 92, baseType: !1571, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1596, file: !1597, line: 93, baseType: !1562, size: 64, offset: 576)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1596, file: !1597, line: 94, baseType: !1571, size: 64, offset: 640)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1596, file: !1597, line: 95, baseType: !1562, size: 64, offset: 704)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1596, file: !1597, line: 97, baseType: !1571, size: 64, offset: 768)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1596, file: !1597, line: 98, baseType: !1571, size: 64, offset: 832)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1596, file: !1597, line: 100, baseType: !1634, size: 64, offset: 896)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1596, file: !1597, line: 101, baseType: !1571, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1596, file: !1597, line: 103, baseType: !1571, size: 64, offset: 1024)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1596, file: !1597, line: 105, baseType: !1571, size: 64, offset: 1088)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1596, file: !1597, line: 107, baseType: !1566, size: 64, offset: 1152)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1596, file: !1597, line: 109, baseType: !1662, size: 64, offset: 1216)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1597, line: 109, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1596, file: !1597, line: 111, baseType: !1666, size: 64, offset: 1280)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1597, line: 111, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1596, file: !1597, line: 112, baseType: !1669, offset: 1344)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1670, line: 187, elements: !97)
!1670 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1596, file: !1597, line: 114, baseType: !952, size: 8, offset: 1344)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !58, file: !28, line: 471, baseType: !1609, size: 64, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !58, file: !28, line: 473, baseType: !198, size: 64, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !58, file: !28, line: 475, baseType: !198, size: 64, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !58, file: !28, line: 480, baseType: !343, size: 192, offset: 1024)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !58, file: !28, line: 484, baseType: !1677, size: 576, offset: 1216)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1677, file: !28, line: 362, baseType: !69, size: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1677, file: !28, line: 363, baseType: !69, size: 128, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1677, file: !28, line: 364, baseType: !69, size: 128, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1677, file: !28, line: 365, baseType: !69, size: 128, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1677, file: !28, line: 366, baseType: !952, size: 8, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1677, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !58, file: !28, line: 485, baseType: !1686, size: 2304, offset: 1792)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1783, !1787}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1686, file: !35, line: 566, baseType: !1637, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1686, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1686, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1686, file: !35, line: 569, baseType: !952, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1686, file: !35, line: 570, baseType: !952, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1686, file: !35, line: 571, baseType: !952, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1686, file: !35, line: 572, baseType: !952, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1686, file: !35, line: 573, baseType: !952, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1686, file: !35, line: 574, baseType: !952, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1686, file: !35, line: 575, baseType: !952, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1686, file: !35, line: 576, baseType: !952, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1686, file: !35, line: 577, baseType: !382, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1686, file: !35, line: 578, baseType: !83, offset: 96)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1686, file: !35, line: 580, baseType: !69, size: 128, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1686, file: !35, line: 581, baseType: !688, size: 192, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1686, file: !35, line: 582, baseType: !1704, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1706, line: 43, size: 1472, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1715, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1705, file: !1706, line: 44, baseType: !65, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1705, file: !1706, line: 45, baseType: !56, size: 32, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1705, file: !1706, line: 46, baseType: !69, size: 128, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1705, file: !1706, line: 47, baseType: !83, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1705, file: !1706, line: 48, baseType: !1713, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1705, file: !1706, line: 49, baseType: !1716, size: 320, offset: 320)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1717, line: 11, size: 320, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720, !1721, !1726}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1716, file: !1717, line: 16, baseType: !652, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1716, file: !1717, line: 17, baseType: !174, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1716, file: !1717, line: 18, baseType: !1722, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1716, file: !1717, line: 19, baseType: !382, size: 32, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1705, file: !1706, line: 50, baseType: !174, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1705, file: !1706, line: 51, baseType: !458, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1705, file: !1706, line: 52, baseType: !458, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1705, file: !1706, line: 53, baseType: !458, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1705, file: !1706, line: 54, baseType: !458, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1705, file: !1706, line: 55, baseType: !458, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1705, file: !1706, line: 56, baseType: !174, size: 64, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1705, file: !1706, line: 57, baseType: !174, size: 64, offset: 1088)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1705, file: !1706, line: 58, baseType: !174, size: 64, offset: 1152)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1705, file: !1706, line: 59, baseType: !174, size: 64, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1705, file: !1706, line: 60, baseType: !174, size: 64, offset: 1280)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1705, file: !1706, line: 61, baseType: !57, size: 64, offset: 1344)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1705, file: !1706, line: 62, baseType: !952, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1705, file: !1706, line: 63, baseType: !952, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1686, file: !35, line: 583, baseType: !952, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1686, file: !35, line: 584, baseType: !952, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1686, file: !35, line: 585, baseType: !952, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1686, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1686, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1686, file: !35, line: 592, baseType: !450, size: 512, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1686, file: !35, line: 593, baseType: !244, size: 64, offset: 1088)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1686, file: !35, line: 594, baseType: !1277, size: 256, offset: 1152)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1686, file: !35, line: 595, baseType: !659, size: 128, offset: 1408)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1686, file: !35, line: 596, baseType: !1713, size: 64, offset: 1536)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1686, file: !35, line: 597, baseType: !266, size: 32, offset: 1600)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1686, file: !35, line: 598, baseType: !266, size: 32, offset: 1632)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1686, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1686, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1686, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1686, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1686, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1686, file: !35, line: 604, baseType: !952, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1686, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1686, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1686, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1686, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1686, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1686, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1686, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1686, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1686, file: !35, line: 613, baseType: !56, size: 32, offset: 1792)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1686, file: !35, line: 614, baseType: !56, size: 32, offset: 1824)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1686, file: !35, line: 615, baseType: !244, size: 64, offset: 1856)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1686, file: !35, line: 616, baseType: !244, size: 64, offset: 1920)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1686, file: !35, line: 617, baseType: !244, size: 64, offset: 1984)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1686, file: !35, line: 618, baseType: !244, size: 64, offset: 2048)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1686, file: !35, line: 620, baseType: !1774, size: 64, offset: 2112)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1780}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1775, file: !35, line: 537, baseType: !83)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1775, file: !35, line: 538, baseType: !5, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1775, file: !35, line: 540, baseType: !69, size: 128, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1775, file: !35, line: 543, baseType: !1781, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1686, file: !35, line: 621, baseType: !1784, size: 64, offset: 2176)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !57, !612}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1686, file: !35, line: 622, baseType: !1788, size: 64, offset: 2240)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !58, file: !28, line: 486, baseType: !1791, size: 64, offset: 4096)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1800, !1801, !1802}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1792, file: !35, line: 643, baseType: !1568, size: 1472)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1792, file: !35, line: 644, baseType: !1571, size: 64, offset: 1472)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1792, file: !35, line: 645, baseType: !1797, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !57, !952}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1792, file: !35, line: 646, baseType: !1571, size: 64, offset: 1600)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1792, file: !35, line: 647, baseType: !1562, size: 64, offset: 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1792, file: !35, line: 648, baseType: !1562, size: 64, offset: 1728)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !58, file: !28, line: 493, baseType: !1804, size: 64, offset: 4160)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !58, file: !28, line: 499, baseType: !69, size: 128, offset: 4224)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !58, file: !28, line: 502, baseType: !1808, size: 64, offset: 4352)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !58, file: !28, line: 504, baseType: !1812, size: 64, offset: 4416)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !58, file: !28, line: 505, baseType: !244, size: 64, offset: 4480)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !58, file: !28, line: 510, baseType: !244, size: 64, offset: 4544)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !58, file: !28, line: 511, baseType: !1816, size: 64, offset: 4608)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !58, file: !28, line: 513, baseType: !1820, size: 64, offset: 4672)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1821, file: !28, line: 293, baseType: !5, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1821, file: !28, line: 294, baseType: !174, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !58, file: !28, line: 515, baseType: !69, size: 128, offset: 4736)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !58, file: !28, line: 526, baseType: !1827, offset: 4864)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1828, line: 5, elements: !97)
!1828 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !58, file: !28, line: 528, baseType: !1830, size: 64, offset: 4864)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1832, line: 14, flags: DIFlagFwdDecl)
!1832 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !58, file: !28, line: 529, baseType: !1834, size: 64, offset: 4928)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1597, line: 22, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !58, file: !28, line: 534, baseType: !1837, size: 32, offset: 4992)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !70, line: 16, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !70, line: 13, baseType: !382)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !58, file: !28, line: 535, baseType: !382, size: 32, offset: 5024)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !58, file: !28, line: 537, baseType: !83, offset: 5056)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !58, file: !28, line: 538, baseType: !69, size: 128, offset: 5056)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !58, file: !28, line: 540, baseType: !1843, size: 64, offset: 5184)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1845, line: 54, size: 960, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1857, !1861, !1862, !1863, !1864, !1868, !1872, !1873}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1844, file: !1845, line: 55, baseType: !65, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1844, file: !1845, line: 56, baseType: !1615, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1844, file: !1845, line: 58, baseType: !178, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1844, file: !1845, line: 59, baseType: !178, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1844, file: !1845, line: 60, baseType: !76, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1844, file: !1845, line: 62, baseType: !1553, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1844, file: !1845, line: 63, baseType: !1854, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!124, !57, !1560}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1844, file: !1845, line: 65, baseType: !1858, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1843}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1844, file: !1845, line: 66, baseType: !1562, size: 64, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1844, file: !1845, line: 68, baseType: !1571, size: 64, offset: 576)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1844, file: !1845, line: 70, baseType: !1326, size: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1844, file: !1845, line: 71, baseType: !1865, size: 64, offset: 704)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!1343, !57}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1844, file: !1845, line: 73, baseType: !1869, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !57, !1363, !1369}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1844, file: !1845, line: 75, baseType: !1566, size: 64, offset: 832)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1844, file: !1845, line: 77, baseType: !1666, size: 64, offset: 896)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !58, file: !28, line: 541, baseType: !178, size: 64, offset: 5248)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !58, file: !28, line: 543, baseType: !1562, size: 64, offset: 5312)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !58, file: !28, line: 544, baseType: !1877, size: 64, offset: 5376)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !58, file: !28, line: 545, baseType: !1880, size: 64, offset: 5440)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !58, file: !28, line: 547, baseType: !952, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !58, file: !28, line: 548, baseType: !952, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !58, file: !28, line: 549, baseType: !952, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !58, file: !28, line: 550, baseType: !952, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1886 = !DILocalVariable(name: "dev", arg: 1, scope: !53, file: !1, line: 20, type: !57)
!1887 = !DILocation(line: 20, column: 47, scope: !53)
!1888 = !DILocalVariable(name: "pm", scope: !53, file: !1, line: 22, type: !1566)
!1889 = !DILocation(line: 22, column: 27, scope: !53)
!1890 = !DILocation(line: 22, column: 32, scope: !53)
!1891 = !DILocation(line: 22, column: 37, scope: !53)
!1892 = !DILocation(line: 22, column: 46, scope: !53)
!1893 = !DILocation(line: 22, column: 51, scope: !53)
!1894 = !DILocation(line: 22, column: 59, scope: !53)
!1895 = !DILocalVariable(name: "ret", scope: !53, file: !1, line: 23, type: !56)
!1896 = !DILocation(line: 23, column: 6, scope: !53)
!1897 = !DILocation(line: 25, column: 8, scope: !53)
!1898 = !DILocation(line: 25, column: 11, scope: !53)
!1899 = !DILocation(line: 25, column: 14, scope: !53)
!1900 = !DILocation(line: 25, column: 18, scope: !53)
!1901 = !DILocation(line: 25, column: 36, scope: !53)
!1902 = !DILocation(line: 25, column: 40, scope: !53)
!1903 = !DILocation(line: 25, column: 56, scope: !53)
!1904 = !DILocation(line: 25, column: 6, scope: !53)
!1905 = !DILocation(line: 27, column: 9, scope: !53)
!1906 = !DILocation(line: 27, column: 2, scope: !53)
!1907 = distinct !DISubprogram(name: "pm_generic_runtime_resume", scope: !1, file: !1, line: 39, type: !54, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!1908 = !DILocalVariable(name: "dev", arg: 1, scope: !1907, file: !1, line: 39, type: !57)
!1909 = !DILocation(line: 39, column: 46, scope: !1907)
!1910 = !DILocalVariable(name: "pm", scope: !1907, file: !1, line: 41, type: !1566)
!1911 = !DILocation(line: 41, column: 27, scope: !1907)
!1912 = !DILocation(line: 41, column: 32, scope: !1907)
!1913 = !DILocation(line: 41, column: 37, scope: !1907)
!1914 = !DILocation(line: 41, column: 46, scope: !1907)
!1915 = !DILocation(line: 41, column: 51, scope: !1907)
!1916 = !DILocation(line: 41, column: 59, scope: !1907)
!1917 = !DILocalVariable(name: "ret", scope: !1907, file: !1, line: 42, type: !56)
!1918 = !DILocation(line: 42, column: 6, scope: !1907)
!1919 = !DILocation(line: 44, column: 8, scope: !1907)
!1920 = !DILocation(line: 44, column: 11, scope: !1907)
!1921 = !DILocation(line: 44, column: 14, scope: !1907)
!1922 = !DILocation(line: 44, column: 18, scope: !1907)
!1923 = !DILocation(line: 44, column: 35, scope: !1907)
!1924 = !DILocation(line: 44, column: 39, scope: !1907)
!1925 = !DILocation(line: 44, column: 54, scope: !1907)
!1926 = !DILocation(line: 44, column: 6, scope: !1907)
!1927 = !DILocation(line: 46, column: 9, scope: !1907)
!1928 = !DILocation(line: 46, column: 2, scope: !1907)
!1929 = distinct !DISubprogram(name: "pm_generic_prepare", scope: !1, file: !1, line: 58, type: !54, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!1930 = !DILocalVariable(name: "dev", arg: 1, scope: !1929, file: !1, line: 58, type: !57)
!1931 = !DILocation(line: 58, column: 39, scope: !1929)
!1932 = !DILocalVariable(name: "drv", scope: !1929, file: !1, line: 60, type: !1609)
!1933 = !DILocation(line: 60, column: 24, scope: !1929)
!1934 = !DILocation(line: 60, column: 30, scope: !1929)
!1935 = !DILocation(line: 60, column: 35, scope: !1929)
!1936 = !DILocalVariable(name: "ret", scope: !1929, file: !1, line: 61, type: !56)
!1937 = !DILocation(line: 61, column: 6, scope: !1929)
!1938 = !DILocation(line: 63, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 63, column: 6)
!1940 = !DILocation(line: 63, column: 10, scope: !1939)
!1941 = !DILocation(line: 63, column: 13, scope: !1939)
!1942 = !DILocation(line: 63, column: 18, scope: !1939)
!1943 = !DILocation(line: 63, column: 21, scope: !1939)
!1944 = !DILocation(line: 63, column: 24, scope: !1939)
!1945 = !DILocation(line: 63, column: 29, scope: !1939)
!1946 = !DILocation(line: 63, column: 33, scope: !1939)
!1947 = !DILocation(line: 63, column: 6, scope: !1929)
!1948 = !DILocation(line: 64, column: 9, scope: !1939)
!1949 = !DILocation(line: 64, column: 14, scope: !1939)
!1950 = !DILocation(line: 64, column: 18, scope: !1939)
!1951 = !DILocation(line: 64, column: 26, scope: !1939)
!1952 = !DILocation(line: 64, column: 7, scope: !1939)
!1953 = !DILocation(line: 64, column: 3, scope: !1939)
!1954 = !DILocation(line: 66, column: 9, scope: !1929)
!1955 = !DILocation(line: 66, column: 2, scope: !1929)
!1956 = distinct !DISubprogram(name: "pm_generic_suspend_noirq", scope: !1, file: !1, line: 73, type: !54, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!1957 = !DILocalVariable(name: "dev", arg: 1, scope: !1956, file: !1, line: 73, type: !57)
!1958 = !DILocation(line: 73, column: 45, scope: !1956)
!1959 = !DILocalVariable(name: "pm", scope: !1956, file: !1, line: 75, type: !1566)
!1960 = !DILocation(line: 75, column: 27, scope: !1956)
!1961 = !DILocation(line: 75, column: 32, scope: !1956)
!1962 = !DILocation(line: 75, column: 37, scope: !1956)
!1963 = !DILocation(line: 75, column: 46, scope: !1956)
!1964 = !DILocation(line: 75, column: 51, scope: !1956)
!1965 = !DILocation(line: 75, column: 59, scope: !1956)
!1966 = !DILocation(line: 77, column: 9, scope: !1956)
!1967 = !DILocation(line: 77, column: 12, scope: !1956)
!1968 = !DILocation(line: 77, column: 15, scope: !1956)
!1969 = !DILocation(line: 77, column: 19, scope: !1956)
!1970 = !DILocation(line: 77, column: 35, scope: !1956)
!1971 = !DILocation(line: 77, column: 39, scope: !1956)
!1972 = !DILocation(line: 77, column: 53, scope: !1956)
!1973 = !DILocation(line: 77, column: 2, scope: !1956)
!1974 = distinct !DISubprogram(name: "pm_generic_suspend_late", scope: !1, file: !1, line: 85, type: !54, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!1975 = !DILocalVariable(name: "dev", arg: 1, scope: !1974, file: !1, line: 85, type: !57)
!1976 = !DILocation(line: 85, column: 44, scope: !1974)
!1977 = !DILocalVariable(name: "pm", scope: !1974, file: !1, line: 87, type: !1566)
!1978 = !DILocation(line: 87, column: 27, scope: !1974)
!1979 = !DILocation(line: 87, column: 32, scope: !1974)
!1980 = !DILocation(line: 87, column: 37, scope: !1974)
!1981 = !DILocation(line: 87, column: 46, scope: !1974)
!1982 = !DILocation(line: 87, column: 51, scope: !1974)
!1983 = !DILocation(line: 87, column: 59, scope: !1974)
!1984 = !DILocation(line: 89, column: 9, scope: !1974)
!1985 = !DILocation(line: 89, column: 12, scope: !1974)
!1986 = !DILocation(line: 89, column: 15, scope: !1974)
!1987 = !DILocation(line: 89, column: 19, scope: !1974)
!1988 = !DILocation(line: 89, column: 34, scope: !1974)
!1989 = !DILocation(line: 89, column: 38, scope: !1974)
!1990 = !DILocation(line: 89, column: 51, scope: !1974)
!1991 = !DILocation(line: 89, column: 2, scope: !1974)
!1992 = distinct !DISubprogram(name: "pm_generic_suspend", scope: !1, file: !1, line: 97, type: !54, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!1993 = !DILocalVariable(name: "dev", arg: 1, scope: !1992, file: !1, line: 97, type: !57)
!1994 = !DILocation(line: 97, column: 39, scope: !1992)
!1995 = !DILocalVariable(name: "pm", scope: !1992, file: !1, line: 99, type: !1566)
!1996 = !DILocation(line: 99, column: 27, scope: !1992)
!1997 = !DILocation(line: 99, column: 32, scope: !1992)
!1998 = !DILocation(line: 99, column: 37, scope: !1992)
!1999 = !DILocation(line: 99, column: 46, scope: !1992)
!2000 = !DILocation(line: 99, column: 51, scope: !1992)
!2001 = !DILocation(line: 99, column: 59, scope: !1992)
!2002 = !DILocation(line: 101, column: 9, scope: !1992)
!2003 = !DILocation(line: 101, column: 12, scope: !1992)
!2004 = !DILocation(line: 101, column: 15, scope: !1992)
!2005 = !DILocation(line: 101, column: 19, scope: !1992)
!2006 = !DILocation(line: 101, column: 29, scope: !1992)
!2007 = !DILocation(line: 101, column: 33, scope: !1992)
!2008 = !DILocation(line: 101, column: 41, scope: !1992)
!2009 = !DILocation(line: 101, column: 2, scope: !1992)
!2010 = distinct !DISubprogram(name: "pm_generic_freeze_noirq", scope: !1, file: !1, line: 109, type: !54, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2011 = !DILocalVariable(name: "dev", arg: 1, scope: !2010, file: !1, line: 109, type: !57)
!2012 = !DILocation(line: 109, column: 44, scope: !2010)
!2013 = !DILocalVariable(name: "pm", scope: !2010, file: !1, line: 111, type: !1566)
!2014 = !DILocation(line: 111, column: 27, scope: !2010)
!2015 = !DILocation(line: 111, column: 32, scope: !2010)
!2016 = !DILocation(line: 111, column: 37, scope: !2010)
!2017 = !DILocation(line: 111, column: 46, scope: !2010)
!2018 = !DILocation(line: 111, column: 51, scope: !2010)
!2019 = !DILocation(line: 111, column: 59, scope: !2010)
!2020 = !DILocation(line: 113, column: 9, scope: !2010)
!2021 = !DILocation(line: 113, column: 12, scope: !2010)
!2022 = !DILocation(line: 113, column: 15, scope: !2010)
!2023 = !DILocation(line: 113, column: 19, scope: !2010)
!2024 = !DILocation(line: 113, column: 34, scope: !2010)
!2025 = !DILocation(line: 113, column: 38, scope: !2010)
!2026 = !DILocation(line: 113, column: 51, scope: !2010)
!2027 = !DILocation(line: 113, column: 2, scope: !2010)
!2028 = distinct !DISubprogram(name: "pm_generic_freeze_late", scope: !1, file: !1, line: 121, type: !54, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2029 = !DILocalVariable(name: "dev", arg: 1, scope: !2028, file: !1, line: 121, type: !57)
!2030 = !DILocation(line: 121, column: 43, scope: !2028)
!2031 = !DILocalVariable(name: "pm", scope: !2028, file: !1, line: 123, type: !1566)
!2032 = !DILocation(line: 123, column: 27, scope: !2028)
!2033 = !DILocation(line: 123, column: 32, scope: !2028)
!2034 = !DILocation(line: 123, column: 37, scope: !2028)
!2035 = !DILocation(line: 123, column: 46, scope: !2028)
!2036 = !DILocation(line: 123, column: 51, scope: !2028)
!2037 = !DILocation(line: 123, column: 59, scope: !2028)
!2038 = !DILocation(line: 125, column: 9, scope: !2028)
!2039 = !DILocation(line: 125, column: 12, scope: !2028)
!2040 = !DILocation(line: 125, column: 15, scope: !2028)
!2041 = !DILocation(line: 125, column: 19, scope: !2028)
!2042 = !DILocation(line: 125, column: 33, scope: !2028)
!2043 = !DILocation(line: 125, column: 37, scope: !2028)
!2044 = !DILocation(line: 125, column: 49, scope: !2028)
!2045 = !DILocation(line: 125, column: 2, scope: !2028)
!2046 = distinct !DISubprogram(name: "pm_generic_freeze", scope: !1, file: !1, line: 133, type: !54, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2047 = !DILocalVariable(name: "dev", arg: 1, scope: !2046, file: !1, line: 133, type: !57)
!2048 = !DILocation(line: 133, column: 38, scope: !2046)
!2049 = !DILocalVariable(name: "pm", scope: !2046, file: !1, line: 135, type: !1566)
!2050 = !DILocation(line: 135, column: 27, scope: !2046)
!2051 = !DILocation(line: 135, column: 32, scope: !2046)
!2052 = !DILocation(line: 135, column: 37, scope: !2046)
!2053 = !DILocation(line: 135, column: 46, scope: !2046)
!2054 = !DILocation(line: 135, column: 51, scope: !2046)
!2055 = !DILocation(line: 135, column: 59, scope: !2046)
!2056 = !DILocation(line: 137, column: 9, scope: !2046)
!2057 = !DILocation(line: 137, column: 12, scope: !2046)
!2058 = !DILocation(line: 137, column: 15, scope: !2046)
!2059 = !DILocation(line: 137, column: 19, scope: !2046)
!2060 = !DILocation(line: 137, column: 28, scope: !2046)
!2061 = !DILocation(line: 137, column: 32, scope: !2046)
!2062 = !DILocation(line: 137, column: 39, scope: !2046)
!2063 = !DILocation(line: 137, column: 2, scope: !2046)
!2064 = distinct !DISubprogram(name: "pm_generic_poweroff_noirq", scope: !1, file: !1, line: 145, type: !54, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2065 = !DILocalVariable(name: "dev", arg: 1, scope: !2064, file: !1, line: 145, type: !57)
!2066 = !DILocation(line: 145, column: 46, scope: !2064)
!2067 = !DILocalVariable(name: "pm", scope: !2064, file: !1, line: 147, type: !1566)
!2068 = !DILocation(line: 147, column: 27, scope: !2064)
!2069 = !DILocation(line: 147, column: 32, scope: !2064)
!2070 = !DILocation(line: 147, column: 37, scope: !2064)
!2071 = !DILocation(line: 147, column: 46, scope: !2064)
!2072 = !DILocation(line: 147, column: 51, scope: !2064)
!2073 = !DILocation(line: 147, column: 59, scope: !2064)
!2074 = !DILocation(line: 149, column: 9, scope: !2064)
!2075 = !DILocation(line: 149, column: 12, scope: !2064)
!2076 = !DILocation(line: 149, column: 15, scope: !2064)
!2077 = !DILocation(line: 149, column: 19, scope: !2064)
!2078 = !DILocation(line: 149, column: 36, scope: !2064)
!2079 = !DILocation(line: 149, column: 40, scope: !2064)
!2080 = !DILocation(line: 149, column: 55, scope: !2064)
!2081 = !DILocation(line: 149, column: 2, scope: !2064)
!2082 = distinct !DISubprogram(name: "pm_generic_poweroff_late", scope: !1, file: !1, line: 157, type: !54, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2083 = !DILocalVariable(name: "dev", arg: 1, scope: !2082, file: !1, line: 157, type: !57)
!2084 = !DILocation(line: 157, column: 45, scope: !2082)
!2085 = !DILocalVariable(name: "pm", scope: !2082, file: !1, line: 159, type: !1566)
!2086 = !DILocation(line: 159, column: 27, scope: !2082)
!2087 = !DILocation(line: 159, column: 32, scope: !2082)
!2088 = !DILocation(line: 159, column: 37, scope: !2082)
!2089 = !DILocation(line: 159, column: 46, scope: !2082)
!2090 = !DILocation(line: 159, column: 51, scope: !2082)
!2091 = !DILocation(line: 159, column: 59, scope: !2082)
!2092 = !DILocation(line: 161, column: 9, scope: !2082)
!2093 = !DILocation(line: 161, column: 12, scope: !2082)
!2094 = !DILocation(line: 161, column: 15, scope: !2082)
!2095 = !DILocation(line: 161, column: 19, scope: !2082)
!2096 = !DILocation(line: 161, column: 35, scope: !2082)
!2097 = !DILocation(line: 161, column: 39, scope: !2082)
!2098 = !DILocation(line: 161, column: 53, scope: !2082)
!2099 = !DILocation(line: 161, column: 2, scope: !2082)
!2100 = distinct !DISubprogram(name: "pm_generic_poweroff", scope: !1, file: !1, line: 169, type: !54, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2101 = !DILocalVariable(name: "dev", arg: 1, scope: !2100, file: !1, line: 169, type: !57)
!2102 = !DILocation(line: 169, column: 40, scope: !2100)
!2103 = !DILocalVariable(name: "pm", scope: !2100, file: !1, line: 171, type: !1566)
!2104 = !DILocation(line: 171, column: 27, scope: !2100)
!2105 = !DILocation(line: 171, column: 32, scope: !2100)
!2106 = !DILocation(line: 171, column: 37, scope: !2100)
!2107 = !DILocation(line: 171, column: 46, scope: !2100)
!2108 = !DILocation(line: 171, column: 51, scope: !2100)
!2109 = !DILocation(line: 171, column: 59, scope: !2100)
!2110 = !DILocation(line: 173, column: 9, scope: !2100)
!2111 = !DILocation(line: 173, column: 12, scope: !2100)
!2112 = !DILocation(line: 173, column: 15, scope: !2100)
!2113 = !DILocation(line: 173, column: 19, scope: !2100)
!2114 = !DILocation(line: 173, column: 30, scope: !2100)
!2115 = !DILocation(line: 173, column: 34, scope: !2100)
!2116 = !DILocation(line: 173, column: 43, scope: !2100)
!2117 = !DILocation(line: 173, column: 2, scope: !2100)
!2118 = distinct !DISubprogram(name: "pm_generic_thaw_noirq", scope: !1, file: !1, line: 181, type: !54, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2119 = !DILocalVariable(name: "dev", arg: 1, scope: !2118, file: !1, line: 181, type: !57)
!2120 = !DILocation(line: 181, column: 42, scope: !2118)
!2121 = !DILocalVariable(name: "pm", scope: !2118, file: !1, line: 183, type: !1566)
!2122 = !DILocation(line: 183, column: 27, scope: !2118)
!2123 = !DILocation(line: 183, column: 32, scope: !2118)
!2124 = !DILocation(line: 183, column: 37, scope: !2118)
!2125 = !DILocation(line: 183, column: 46, scope: !2118)
!2126 = !DILocation(line: 183, column: 51, scope: !2118)
!2127 = !DILocation(line: 183, column: 59, scope: !2118)
!2128 = !DILocation(line: 185, column: 9, scope: !2118)
!2129 = !DILocation(line: 185, column: 12, scope: !2118)
!2130 = !DILocation(line: 185, column: 15, scope: !2118)
!2131 = !DILocation(line: 185, column: 19, scope: !2118)
!2132 = !DILocation(line: 185, column: 32, scope: !2118)
!2133 = !DILocation(line: 185, column: 36, scope: !2118)
!2134 = !DILocation(line: 185, column: 47, scope: !2118)
!2135 = !DILocation(line: 185, column: 2, scope: !2118)
!2136 = distinct !DISubprogram(name: "pm_generic_thaw_early", scope: !1, file: !1, line: 193, type: !54, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2137 = !DILocalVariable(name: "dev", arg: 1, scope: !2136, file: !1, line: 193, type: !57)
!2138 = !DILocation(line: 193, column: 42, scope: !2136)
!2139 = !DILocalVariable(name: "pm", scope: !2136, file: !1, line: 195, type: !1566)
!2140 = !DILocation(line: 195, column: 27, scope: !2136)
!2141 = !DILocation(line: 195, column: 32, scope: !2136)
!2142 = !DILocation(line: 195, column: 37, scope: !2136)
!2143 = !DILocation(line: 195, column: 46, scope: !2136)
!2144 = !DILocation(line: 195, column: 51, scope: !2136)
!2145 = !DILocation(line: 195, column: 59, scope: !2136)
!2146 = !DILocation(line: 197, column: 9, scope: !2136)
!2147 = !DILocation(line: 197, column: 12, scope: !2136)
!2148 = !DILocation(line: 197, column: 15, scope: !2136)
!2149 = !DILocation(line: 197, column: 19, scope: !2136)
!2150 = !DILocation(line: 197, column: 32, scope: !2136)
!2151 = !DILocation(line: 197, column: 36, scope: !2136)
!2152 = !DILocation(line: 197, column: 47, scope: !2136)
!2153 = !DILocation(line: 197, column: 2, scope: !2136)
!2154 = distinct !DISubprogram(name: "pm_generic_thaw", scope: !1, file: !1, line: 205, type: !54, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2155 = !DILocalVariable(name: "dev", arg: 1, scope: !2154, file: !1, line: 205, type: !57)
!2156 = !DILocation(line: 205, column: 36, scope: !2154)
!2157 = !DILocalVariable(name: "pm", scope: !2154, file: !1, line: 207, type: !1566)
!2158 = !DILocation(line: 207, column: 27, scope: !2154)
!2159 = !DILocation(line: 207, column: 32, scope: !2154)
!2160 = !DILocation(line: 207, column: 37, scope: !2154)
!2161 = !DILocation(line: 207, column: 46, scope: !2154)
!2162 = !DILocation(line: 207, column: 51, scope: !2154)
!2163 = !DILocation(line: 207, column: 59, scope: !2154)
!2164 = !DILocation(line: 209, column: 9, scope: !2154)
!2165 = !DILocation(line: 209, column: 12, scope: !2154)
!2166 = !DILocation(line: 209, column: 15, scope: !2154)
!2167 = !DILocation(line: 209, column: 19, scope: !2154)
!2168 = !DILocation(line: 209, column: 26, scope: !2154)
!2169 = !DILocation(line: 209, column: 30, scope: !2154)
!2170 = !DILocation(line: 209, column: 35, scope: !2154)
!2171 = !DILocation(line: 209, column: 2, scope: !2154)
!2172 = distinct !DISubprogram(name: "pm_generic_resume_noirq", scope: !1, file: !1, line: 217, type: !54, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2173 = !DILocalVariable(name: "dev", arg: 1, scope: !2172, file: !1, line: 217, type: !57)
!2174 = !DILocation(line: 217, column: 44, scope: !2172)
!2175 = !DILocalVariable(name: "pm", scope: !2172, file: !1, line: 219, type: !1566)
!2176 = !DILocation(line: 219, column: 27, scope: !2172)
!2177 = !DILocation(line: 219, column: 32, scope: !2172)
!2178 = !DILocation(line: 219, column: 37, scope: !2172)
!2179 = !DILocation(line: 219, column: 46, scope: !2172)
!2180 = !DILocation(line: 219, column: 51, scope: !2172)
!2181 = !DILocation(line: 219, column: 59, scope: !2172)
!2182 = !DILocation(line: 221, column: 9, scope: !2172)
!2183 = !DILocation(line: 221, column: 12, scope: !2172)
!2184 = !DILocation(line: 221, column: 15, scope: !2172)
!2185 = !DILocation(line: 221, column: 19, scope: !2172)
!2186 = !DILocation(line: 221, column: 34, scope: !2172)
!2187 = !DILocation(line: 221, column: 38, scope: !2172)
!2188 = !DILocation(line: 221, column: 51, scope: !2172)
!2189 = !DILocation(line: 221, column: 2, scope: !2172)
!2190 = distinct !DISubprogram(name: "pm_generic_resume_early", scope: !1, file: !1, line: 229, type: !54, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2191 = !DILocalVariable(name: "dev", arg: 1, scope: !2190, file: !1, line: 229, type: !57)
!2192 = !DILocation(line: 229, column: 44, scope: !2190)
!2193 = !DILocalVariable(name: "pm", scope: !2190, file: !1, line: 231, type: !1566)
!2194 = !DILocation(line: 231, column: 27, scope: !2190)
!2195 = !DILocation(line: 231, column: 32, scope: !2190)
!2196 = !DILocation(line: 231, column: 37, scope: !2190)
!2197 = !DILocation(line: 231, column: 46, scope: !2190)
!2198 = !DILocation(line: 231, column: 51, scope: !2190)
!2199 = !DILocation(line: 231, column: 59, scope: !2190)
!2200 = !DILocation(line: 233, column: 9, scope: !2190)
!2201 = !DILocation(line: 233, column: 12, scope: !2190)
!2202 = !DILocation(line: 233, column: 15, scope: !2190)
!2203 = !DILocation(line: 233, column: 19, scope: !2190)
!2204 = !DILocation(line: 233, column: 34, scope: !2190)
!2205 = !DILocation(line: 233, column: 38, scope: !2190)
!2206 = !DILocation(line: 233, column: 51, scope: !2190)
!2207 = !DILocation(line: 233, column: 2, scope: !2190)
!2208 = distinct !DISubprogram(name: "pm_generic_resume", scope: !1, file: !1, line: 241, type: !54, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2209 = !DILocalVariable(name: "dev", arg: 1, scope: !2208, file: !1, line: 241, type: !57)
!2210 = !DILocation(line: 241, column: 38, scope: !2208)
!2211 = !DILocalVariable(name: "pm", scope: !2208, file: !1, line: 243, type: !1566)
!2212 = !DILocation(line: 243, column: 27, scope: !2208)
!2213 = !DILocation(line: 243, column: 32, scope: !2208)
!2214 = !DILocation(line: 243, column: 37, scope: !2208)
!2215 = !DILocation(line: 243, column: 46, scope: !2208)
!2216 = !DILocation(line: 243, column: 51, scope: !2208)
!2217 = !DILocation(line: 243, column: 59, scope: !2208)
!2218 = !DILocation(line: 245, column: 9, scope: !2208)
!2219 = !DILocation(line: 245, column: 12, scope: !2208)
!2220 = !DILocation(line: 245, column: 15, scope: !2208)
!2221 = !DILocation(line: 245, column: 19, scope: !2208)
!2222 = !DILocation(line: 245, column: 28, scope: !2208)
!2223 = !DILocation(line: 245, column: 32, scope: !2208)
!2224 = !DILocation(line: 245, column: 39, scope: !2208)
!2225 = !DILocation(line: 245, column: 2, scope: !2208)
!2226 = distinct !DISubprogram(name: "pm_generic_restore_noirq", scope: !1, file: !1, line: 253, type: !54, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2227 = !DILocalVariable(name: "dev", arg: 1, scope: !2226, file: !1, line: 253, type: !57)
!2228 = !DILocation(line: 253, column: 45, scope: !2226)
!2229 = !DILocalVariable(name: "pm", scope: !2226, file: !1, line: 255, type: !1566)
!2230 = !DILocation(line: 255, column: 27, scope: !2226)
!2231 = !DILocation(line: 255, column: 32, scope: !2226)
!2232 = !DILocation(line: 255, column: 37, scope: !2226)
!2233 = !DILocation(line: 255, column: 46, scope: !2226)
!2234 = !DILocation(line: 255, column: 51, scope: !2226)
!2235 = !DILocation(line: 255, column: 59, scope: !2226)
!2236 = !DILocation(line: 257, column: 9, scope: !2226)
!2237 = !DILocation(line: 257, column: 12, scope: !2226)
!2238 = !DILocation(line: 257, column: 15, scope: !2226)
!2239 = !DILocation(line: 257, column: 19, scope: !2226)
!2240 = !DILocation(line: 257, column: 35, scope: !2226)
!2241 = !DILocation(line: 257, column: 39, scope: !2226)
!2242 = !DILocation(line: 257, column: 53, scope: !2226)
!2243 = !DILocation(line: 257, column: 2, scope: !2226)
!2244 = distinct !DISubprogram(name: "pm_generic_restore_early", scope: !1, file: !1, line: 265, type: !54, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2245 = !DILocalVariable(name: "dev", arg: 1, scope: !2244, file: !1, line: 265, type: !57)
!2246 = !DILocation(line: 265, column: 45, scope: !2244)
!2247 = !DILocalVariable(name: "pm", scope: !2244, file: !1, line: 267, type: !1566)
!2248 = !DILocation(line: 267, column: 27, scope: !2244)
!2249 = !DILocation(line: 267, column: 32, scope: !2244)
!2250 = !DILocation(line: 267, column: 37, scope: !2244)
!2251 = !DILocation(line: 267, column: 46, scope: !2244)
!2252 = !DILocation(line: 267, column: 51, scope: !2244)
!2253 = !DILocation(line: 267, column: 59, scope: !2244)
!2254 = !DILocation(line: 269, column: 9, scope: !2244)
!2255 = !DILocation(line: 269, column: 12, scope: !2244)
!2256 = !DILocation(line: 269, column: 15, scope: !2244)
!2257 = !DILocation(line: 269, column: 19, scope: !2244)
!2258 = !DILocation(line: 269, column: 35, scope: !2244)
!2259 = !DILocation(line: 269, column: 39, scope: !2244)
!2260 = !DILocation(line: 269, column: 53, scope: !2244)
!2261 = !DILocation(line: 269, column: 2, scope: !2244)
!2262 = distinct !DISubprogram(name: "pm_generic_restore", scope: !1, file: !1, line: 277, type: !54, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2263 = !DILocalVariable(name: "dev", arg: 1, scope: !2262, file: !1, line: 277, type: !57)
!2264 = !DILocation(line: 277, column: 39, scope: !2262)
!2265 = !DILocalVariable(name: "pm", scope: !2262, file: !1, line: 279, type: !1566)
!2266 = !DILocation(line: 279, column: 27, scope: !2262)
!2267 = !DILocation(line: 279, column: 32, scope: !2262)
!2268 = !DILocation(line: 279, column: 37, scope: !2262)
!2269 = !DILocation(line: 279, column: 46, scope: !2262)
!2270 = !DILocation(line: 279, column: 51, scope: !2262)
!2271 = !DILocation(line: 279, column: 59, scope: !2262)
!2272 = !DILocation(line: 281, column: 9, scope: !2262)
!2273 = !DILocation(line: 281, column: 12, scope: !2262)
!2274 = !DILocation(line: 281, column: 15, scope: !2262)
!2275 = !DILocation(line: 281, column: 19, scope: !2262)
!2276 = !DILocation(line: 281, column: 29, scope: !2262)
!2277 = !DILocation(line: 281, column: 33, scope: !2262)
!2278 = !DILocation(line: 281, column: 41, scope: !2262)
!2279 = !DILocation(line: 281, column: 2, scope: !2262)
!2280 = distinct !DISubprogram(name: "pm_generic_complete", scope: !1, file: !1, line: 291, type: !1563, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !97)
!2281 = !DILocalVariable(name: "dev", arg: 1, scope: !2280, file: !1, line: 291, type: !57)
!2282 = !DILocation(line: 291, column: 41, scope: !2280)
!2283 = !DILocalVariable(name: "drv", scope: !2280, file: !1, line: 293, type: !1609)
!2284 = !DILocation(line: 293, column: 24, scope: !2280)
!2285 = !DILocation(line: 293, column: 30, scope: !2280)
!2286 = !DILocation(line: 293, column: 35, scope: !2280)
!2287 = !DILocation(line: 295, column: 6, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2280, file: !1, line: 295, column: 6)
!2289 = !DILocation(line: 295, column: 10, scope: !2288)
!2290 = !DILocation(line: 295, column: 13, scope: !2288)
!2291 = !DILocation(line: 295, column: 18, scope: !2288)
!2292 = !DILocation(line: 295, column: 21, scope: !2288)
!2293 = !DILocation(line: 295, column: 24, scope: !2288)
!2294 = !DILocation(line: 295, column: 29, scope: !2288)
!2295 = !DILocation(line: 295, column: 33, scope: !2288)
!2296 = !DILocation(line: 295, column: 6, scope: !2280)
!2297 = !DILocation(line: 296, column: 3, scope: !2288)
!2298 = !DILocation(line: 296, column: 8, scope: !2288)
!2299 = !DILocation(line: 296, column: 12, scope: !2288)
!2300 = !DILocation(line: 296, column: 21, scope: !2288)
!2301 = !DILocation(line: 297, column: 1, scope: !2280)
