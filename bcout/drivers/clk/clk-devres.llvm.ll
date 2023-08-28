; ModuleID = '../bcout/drivers/clk/clk-devres.llvm.bc'
source_filename = "drivers/clk/clk-devres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.clk_bulk_data = type { i8*, %struct.clk* }
%struct.clk_bulk_devres = type { %struct.clk_bulk_data*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"drivers/clk/clk-devres.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @devm_clk_get(%struct.device* %dev, i8* %id) #0 !dbg !67 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %ptr = alloca %struct.clk**, align 8
  %clk = alloca %struct.clk*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1897, metadata !DIExpression()), !dbg !1898
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !1899, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.declare(metadata %struct.clk*** %ptr, metadata !1901, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.declare(metadata %struct.clk** %clk, metadata !1903, metadata !DIExpression()), !dbg !1904
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_clk_release, i64 8, i32 3264) #3, !dbg !1905
  %0 = bitcast i8* %call to %struct.clk**, !dbg !1905
  store %struct.clk** %0, %struct.clk*** %ptr, align 8, !dbg !1906
  %1 = load %struct.clk**, %struct.clk*** %ptr, align 8, !dbg !1907
  %tobool = icmp ne %struct.clk** %1, null, !dbg !1907
  br i1 %tobool, label %if.end, label %if.then, !dbg !1909

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #3, !dbg !1910
  %2 = bitcast i8* %call1 to %struct.clk*, !dbg !1910
  store %struct.clk* %2, %struct.clk** %retval, align 8, !dbg !1911
  br label %return, !dbg !1911

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1912
  %4 = load i8*, i8** %id.addr, align 8, !dbg !1913
  %call2 = call %struct.clk* @clk_get(%struct.device* %3, i8* %4) #3, !dbg !1914
  store %struct.clk* %call2, %struct.clk** %clk, align 8, !dbg !1915
  %5 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !1916
  %6 = bitcast %struct.clk* %5 to i8*, !dbg !1916
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #3, !dbg !1918
  br i1 %call3, label %if.else, label %if.then4, !dbg !1919

if.then4:                                         ; preds = %if.end
  %7 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !1920
  %8 = load %struct.clk**, %struct.clk*** %ptr, align 8, !dbg !1922
  store %struct.clk* %7, %struct.clk** %8, align 8, !dbg !1923
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1924
  %10 = load %struct.clk**, %struct.clk*** %ptr, align 8, !dbg !1925
  %11 = bitcast %struct.clk** %10 to i8*, !dbg !1925
  call void @devres_add(%struct.device* %9, i8* %11) #3, !dbg !1926
  br label %if.end5, !dbg !1927

if.else:                                          ; preds = %if.end
  %12 = load %struct.clk**, %struct.clk*** %ptr, align 8, !dbg !1928
  %13 = bitcast %struct.clk** %12 to i8*, !dbg !1928
  call void @devres_free(i8* %13) #3, !dbg !1930
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %14 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !1931
  store %struct.clk* %14, %struct.clk** %retval, align 8, !dbg !1932
  br label %return, !dbg !1932

return:                                           ; preds = %if.end5, %if.then
  %15 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !1933
  ret %struct.clk* %15, !dbg !1933
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !1934 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !1941, metadata !DIExpression()), !dbg !1942
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1943, metadata !DIExpression()), !dbg !1944
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !1945, metadata !DIExpression()), !dbg !1946
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !1947
  %1 = load i64, i64* %size.addr, align 8, !dbg !1948
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !1949
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #3, !dbg !1950
  ret i8* %call, !dbg !1951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_clk_release(%struct.device* %dev, i8* %res) #0 !dbg !1952 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1953, metadata !DIExpression()), !dbg !1954
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !1955, metadata !DIExpression()), !dbg !1956
  %0 = load i8*, i8** %res.addr, align 8, !dbg !1957
  %1 = bitcast i8* %0 to %struct.clk**, !dbg !1958
  %2 = load %struct.clk*, %struct.clk** %1, align 8, !dbg !1959
  call void @clk_put(%struct.clk* %2) #3, !dbg !1960
  ret void, !dbg !1961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !1962 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !1966, metadata !DIExpression()), !dbg !1967
  %0 = load i64, i64* %error.addr, align 8, !dbg !1968
  %1 = inttoptr i64 %0 to i8*, !dbg !1969
  ret i8* %1, !dbg !1970
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !1971 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1974, metadata !DIExpression()), !dbg !1975
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1976
  %1 = ptrtoint i8* %0 to i64, !dbg !1976
  %2 = inttoptr i64 %1 to i8*, !dbg !1976
  %3 = ptrtoint i8* %2 to i64, !dbg !1976
  %cmp = icmp uge i64 %3, -4095, !dbg !1976
  %lnot = xor i1 %cmp, true, !dbg !1976
  %lnot1 = xor i1 %lnot, true, !dbg !1976
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1976
  %conv = sext i32 %lnot.ext to i64, !dbg !1976
  %tobool = icmp ne i64 %conv, 0, !dbg !1976
  ret i1 %tobool, !dbg !1977
}

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @devm_clk_get_optional(%struct.device* %dev, i8* %id) #0 !dbg !1978 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %clk = alloca %struct.clk*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1979, metadata !DIExpression()), !dbg !1980
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !1981, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.declare(metadata %struct.clk** %clk, metadata !1983, metadata !DIExpression()), !dbg !1984
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1985
  %1 = load i8*, i8** %id.addr, align 8, !dbg !1986
  %call = call %struct.clk* @devm_clk_get(%struct.device* %0, i8* %1) #3, !dbg !1987
  store %struct.clk* %call, %struct.clk** %clk, align 8, !dbg !1984
  %2 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !1988
  %call1 = call i8* @ERR_PTR(i64 -2) #3, !dbg !1990
  %3 = bitcast i8* %call1 to %struct.clk*, !dbg !1990
  %cmp = icmp eq %struct.clk* %2, %3, !dbg !1991
  br i1 %cmp, label %if.then, label %if.end, !dbg !1992

if.then:                                          ; preds = %entry
  store %struct.clk* null, %struct.clk** %retval, align 8, !dbg !1993
  br label %return, !dbg !1993

if.end:                                           ; preds = %entry
  %4 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !1994
  store %struct.clk* %4, %struct.clk** %retval, align 8, !dbg !1995
  br label %return, !dbg !1995

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !1996
  ret %struct.clk* %5, !dbg !1996
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_clk_bulk_get(%struct.device* %dev, i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !1997 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2005, metadata !DIExpression()), !dbg !2006
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2007, metadata !DIExpression()), !dbg !2008
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2009, metadata !DIExpression()), !dbg !2010
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2011
  %1 = load i32, i32* %num_clks.addr, align 4, !dbg !2012
  %2 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2013
  %call = call i32 @__devm_clk_bulk_get(%struct.device* %0, i32 %1, %struct.clk_bulk_data* %2, i1 zeroext false) #3, !dbg !2014
  ret i32 %call, !dbg !2015
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__devm_clk_bulk_get(%struct.device* %dev, i32 %num_clks, %struct.clk_bulk_data* %clks, i1 zeroext %optional) #0 !dbg !2016 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  %optional.addr = alloca i8, align 1
  %devres = alloca %struct.clk_bulk_devres*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2019, metadata !DIExpression()), !dbg !2020
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2021, metadata !DIExpression()), !dbg !2022
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2023, metadata !DIExpression()), !dbg !2024
  %frombool = zext i1 %optional to i8
  store i8 %frombool, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_devres** %devres, metadata !2027, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2034, metadata !DIExpression()), !dbg !2035
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_clk_bulk_release, i64 16, i32 3264) #3, !dbg !2036
  %0 = bitcast i8* %call to %struct.clk_bulk_devres*, !dbg !2036
  store %struct.clk_bulk_devres* %0, %struct.clk_bulk_devres** %devres, align 8, !dbg !2037
  %1 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2038
  %tobool = icmp ne %struct.clk_bulk_devres* %1, null, !dbg !2038
  br i1 %tobool, label %if.end, label %if.then, !dbg !2040

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2041
  br label %return, !dbg !2041

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %optional.addr, align 1, !dbg !2042
  %tobool1 = trunc i8 %2 to i1, !dbg !2042
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2044

if.then2:                                         ; preds = %if.end
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2045
  %4 = load i32, i32* %num_clks.addr, align 4, !dbg !2046
  %5 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2047
  %call3 = call i32 @clk_bulk_get_optional(%struct.device* %3, i32 %4, %struct.clk_bulk_data* %5) #3, !dbg !2048
  store i32 %call3, i32* %ret, align 4, !dbg !2049
  br label %if.end5, !dbg !2050

if.else:                                          ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2051
  %7 = load i32, i32* %num_clks.addr, align 4, !dbg !2052
  %8 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2053
  %call4 = call i32 @clk_bulk_get(%struct.device* %6, i32 %7, %struct.clk_bulk_data* %8) #3, !dbg !2054
  store i32 %call4, i32* %ret, align 4, !dbg !2055
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %9 = load i32, i32* %ret, align 4, !dbg !2056
  %tobool6 = icmp ne i32 %9, 0, !dbg !2056
  br i1 %tobool6, label %if.else10, label %if.then7, !dbg !2058

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2059
  %11 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2061
  %clks8 = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %11, i32 0, i32 0, !dbg !2062
  store %struct.clk_bulk_data* %10, %struct.clk_bulk_data** %clks8, align 8, !dbg !2063
  %12 = load i32, i32* %num_clks.addr, align 4, !dbg !2064
  %13 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2065
  %num_clks9 = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %13, i32 0, i32 1, !dbg !2066
  store i32 %12, i32* %num_clks9, align 8, !dbg !2067
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2068
  %15 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2069
  %16 = bitcast %struct.clk_bulk_devres* %15 to i8*, !dbg !2069
  call void @devres_add(%struct.device* %14, i8* %16) #3, !dbg !2070
  br label %if.end11, !dbg !2071

if.else10:                                        ; preds = %if.end5
  %17 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2072
  %18 = bitcast %struct.clk_bulk_devres* %17 to i8*, !dbg !2072
  call void @devres_free(i8* %18) #3, !dbg !2074
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then7
  %19 = load i32, i32* %ret, align 4, !dbg !2075
  store i32 %19, i32* %retval, align 4, !dbg !2076
  br label %return, !dbg !2076

return:                                           ; preds = %if.end11, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !2077
  ret i32 %20, !dbg !2077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_clk_bulk_get_optional(%struct.device* %dev, i32 %num_clks, %struct.clk_bulk_data* %clks) #0 !dbg !2078 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %num_clks.addr = alloca i32, align 4
  %clks.addr = alloca %struct.clk_bulk_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2079, metadata !DIExpression()), !dbg !2080
  store i32 %num_clks, i32* %num_clks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_clks.addr, metadata !2081, metadata !DIExpression()), !dbg !2082
  store %struct.clk_bulk_data* %clks, %struct.clk_bulk_data** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data** %clks.addr, metadata !2083, metadata !DIExpression()), !dbg !2084
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2085
  %1 = load i32, i32* %num_clks.addr, align 4, !dbg !2086
  %2 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks.addr, align 8, !dbg !2087
  %call = call i32 @__devm_clk_bulk_get(%struct.device* %0, i32 %1, %struct.clk_bulk_data* %2, i1 zeroext true) #3, !dbg !2088
  ret i32 %call, !dbg !2089
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_clk_bulk_get_all(%struct.device* %dev, %struct.clk_bulk_data** %clks) #0 !dbg !2090 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %clks.addr = alloca %struct.clk_bulk_data**, align 8
  %devres = alloca %struct.clk_bulk_devres*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2094, metadata !DIExpression()), !dbg !2095
  store %struct.clk_bulk_data** %clks, %struct.clk_bulk_data*** %clks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_data*** %clks.addr, metadata !2096, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_devres** %devres, metadata !2098, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2100, metadata !DIExpression()), !dbg !2101
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_clk_bulk_release, i64 16, i32 3264) #3, !dbg !2102
  %0 = bitcast i8* %call to %struct.clk_bulk_devres*, !dbg !2102
  store %struct.clk_bulk_devres* %0, %struct.clk_bulk_devres** %devres, align 8, !dbg !2103
  %1 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2104
  %tobool = icmp ne %struct.clk_bulk_devres* %1, null, !dbg !2104
  br i1 %tobool, label %if.end, label %if.then, !dbg !2106

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2107
  br label %return, !dbg !2107

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2108
  %3 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2109
  %clks1 = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %3, i32 0, i32 0, !dbg !2110
  %call2 = call i32 @clk_bulk_get_all(%struct.device* %2, %struct.clk_bulk_data** %clks1) #3, !dbg !2111
  store i32 %call2, i32* %ret, align 4, !dbg !2112
  %4 = load i32, i32* %ret, align 4, !dbg !2113
  %cmp = icmp sgt i32 %4, 0, !dbg !2115
  br i1 %cmp, label %if.then3, label %if.else, !dbg !2116

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2117
  %clks4 = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %5, i32 0, i32 0, !dbg !2119
  %6 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks4, align 8, !dbg !2119
  %7 = load %struct.clk_bulk_data**, %struct.clk_bulk_data*** %clks.addr, align 8, !dbg !2120
  store %struct.clk_bulk_data* %6, %struct.clk_bulk_data** %7, align 8, !dbg !2121
  %8 = load i32, i32* %ret, align 4, !dbg !2122
  %9 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2123
  %num_clks = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %9, i32 0, i32 1, !dbg !2124
  store i32 %8, i32* %num_clks, align 8, !dbg !2125
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2126
  %11 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2127
  %12 = bitcast %struct.clk_bulk_devres* %11 to i8*, !dbg !2127
  call void @devres_add(%struct.device* %10, i8* %12) #3, !dbg !2128
  br label %if.end5, !dbg !2129

if.else:                                          ; preds = %if.end
  %13 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2130
  %14 = bitcast %struct.clk_bulk_devres* %13 to i8*, !dbg !2130
  call void @devres_free(i8* %14) #3, !dbg !2132
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %15 = load i32, i32* %ret, align 4, !dbg !2133
  store i32 %15, i32* %retval, align 4, !dbg !2134
  br label %return, !dbg !2134

return:                                           ; preds = %if.end5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !2135
  ret i32 %16, !dbg !2135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_clk_bulk_release(%struct.device* %dev, i8* %res) #0 !dbg !2136 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %devres = alloca %struct.clk_bulk_devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2137, metadata !DIExpression()), !dbg !2138
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2139, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.declare(metadata %struct.clk_bulk_devres** %devres, metadata !2141, metadata !DIExpression()), !dbg !2142
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2143
  %1 = bitcast i8* %0 to %struct.clk_bulk_devres*, !dbg !2143
  store %struct.clk_bulk_devres* %1, %struct.clk_bulk_devres** %devres, align 8, !dbg !2142
  %2 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2144
  %num_clks = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %2, i32 0, i32 1, !dbg !2145
  %3 = load i32, i32* %num_clks, align 8, !dbg !2145
  %4 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %devres, align 8, !dbg !2146
  %clks = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %4, i32 0, i32 0, !dbg !2147
  %5 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %clks, align 8, !dbg !2147
  call void @clk_bulk_put(i32 %3, %struct.clk_bulk_data* %5) #3, !dbg !2148
  ret void, !dbg !2149
}

; Function Attrs: noredzone
declare dso_local i32 @clk_bulk_get_all(%struct.device*, %struct.clk_bulk_data**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_clk_put(%struct.device* %dev, %struct.clk* %clk) #0 !dbg !2150 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2153, metadata !DIExpression()), !dbg !2154
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2155, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2157, metadata !DIExpression()), !dbg !2158
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2159
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2160
  %2 = bitcast %struct.clk* %1 to i8*, !dbg !2160
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_clk_release, i32 (%struct.device*, i8*, i8*)* @devm_clk_match, i8* %2) #3, !dbg !2161
  store i32 %call, i32* %ret, align 4, !dbg !2162
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2163, metadata !DIExpression()), !dbg !2165
  %3 = load i32, i32* %ret, align 4, !dbg !2165
  %tobool = icmp ne i32 %3, 0, !dbg !2165
  %lnot = xor i1 %tobool, true, !dbg !2165
  %lnot1 = xor i1 %lnot, true, !dbg !2165
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2165
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2165
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2166
  %tobool2 = icmp ne i32 %4, 0, !dbg !2166
  %lnot3 = xor i1 %tobool2, true, !dbg !2166
  %lnot5 = xor i1 %lnot3, true, !dbg !2166
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2166
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2166
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2166
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2165

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2166

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2168

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2170

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2168

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 135, i32 2305, i64 12) #4, !dbg !2172, !srcloc !2174
  br label %do.end10, !dbg !2172

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #4, !dbg !2175, !srcloc !2177
  br label %do.body11, !dbg !2168

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !2178

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !2168

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2168

if.end:                                           ; preds = %do.end13, %entry
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !2165
  %tobool14 = icmp ne i32 %5, 0, !dbg !2165
  %lnot15 = xor i1 %tobool14, true, !dbg !2165
  %lnot17 = xor i1 %lnot15, true, !dbg !2165
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2165
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2165
  store i64 %conv19, i64* %tmp, align 8, !dbg !2166
  %6 = load i64, i64* %tmp, align 8, !dbg !2165
  ret void, !dbg !2180
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_clk_match(%struct.device* %dev, i8* %res, i8* %data) #0 !dbg !2181 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %c = alloca %struct.clk**, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2184, metadata !DIExpression()), !dbg !2185
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2186, metadata !DIExpression()), !dbg !2187
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2188, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.declare(metadata %struct.clk*** %c, metadata !2190, metadata !DIExpression()), !dbg !2191
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2192
  %1 = bitcast i8* %0 to %struct.clk**, !dbg !2192
  store %struct.clk** %1, %struct.clk*** %c, align 8, !dbg !2191
  %2 = load %struct.clk**, %struct.clk*** %c, align 8, !dbg !2193
  %tobool = icmp ne %struct.clk** %2, null, !dbg !2193
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2195

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.clk**, %struct.clk*** %c, align 8, !dbg !2196
  %4 = load %struct.clk*, %struct.clk** %3, align 8, !dbg !2197
  %tobool1 = icmp ne %struct.clk* %4, null, !dbg !2197
  br i1 %tobool1, label %if.end25, label %if.then, !dbg !2198

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2199, metadata !DIExpression()), !dbg !2202
  %5 = load %struct.clk**, %struct.clk*** %c, align 8, !dbg !2202
  %tobool2 = icmp ne %struct.clk** %5, null, !dbg !2202
  br i1 %tobool2, label %lor.rhs, label %lor.end, !dbg !2202

lor.rhs:                                          ; preds = %if.then
  %6 = load %struct.clk**, %struct.clk*** %c, align 8, !dbg !2202
  %7 = load %struct.clk*, %struct.clk** %6, align 8, !dbg !2202
  %tobool3 = icmp ne %struct.clk* %7, null, !dbg !2202
  %lnot = xor i1 %tobool3, true, !dbg !2202
  br label %lor.end, !dbg !2202

lor.end:                                          ; preds = %lor.rhs, %if.then
  %8 = phi i1 [ true, %if.then ], [ %lnot, %lor.rhs ]
  %lnot4 = xor i1 %8, true, !dbg !2202
  %lnot5 = xor i1 %lnot4, true, !dbg !2202
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2202
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2202
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !2203
  %tobool6 = icmp ne i32 %9, 0, !dbg !2203
  %lnot7 = xor i1 %tobool6, true, !dbg !2203
  %lnot9 = xor i1 %lnot7, true, !dbg !2203
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !2203
  %conv = sext i32 %lnot.ext10 to i64, !dbg !2203
  %tobool11 = icmp ne i64 %conv, 0, !dbg !2203
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !2202

if.then12:                                        ; preds = %lor.end
  br label %do.body, !dbg !2203

do.body:                                          ; preds = %if.then12
  br label %do.body13, !dbg !2205

do.body13:                                        ; preds = %do.body
  br label %do.end, !dbg !2207

do.end:                                           ; preds = %do.body13
  br label %do.body14, !dbg !2205

do.body14:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 123, i32 2305, i64 12) #4, !dbg !2209, !srcloc !2211
  br label %do.end15, !dbg !2209

do.end15:                                         ; preds = %do.body14
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 155) #4, !dbg !2212, !srcloc !2214
  br label %do.body16, !dbg !2205

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2215

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !2205

do.end18:                                         ; preds = %do.end17
  br label %if.end, !dbg !2205

if.end:                                           ; preds = %do.end18, %lor.end
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !2202
  %tobool19 = icmp ne i32 %10, 0, !dbg !2202
  %lnot20 = xor i1 %tobool19, true, !dbg !2202
  %lnot22 = xor i1 %lnot20, true, !dbg !2202
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2202
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2202
  store i64 %conv24, i64* %tmp, align 8, !dbg !2203
  %11 = load i64, i64* %tmp, align 8, !dbg !2202
  store i32 0, i32* %retval, align 4, !dbg !2217
  br label %return, !dbg !2217

if.end25:                                         ; preds = %lor.lhs.false
  %12 = load %struct.clk**, %struct.clk*** %c, align 8, !dbg !2218
  %13 = load %struct.clk*, %struct.clk** %12, align 8, !dbg !2219
  %14 = load i8*, i8** %data.addr, align 8, !dbg !2220
  %15 = bitcast i8* %14 to %struct.clk*, !dbg !2220
  %cmp = icmp eq %struct.clk* %13, %15, !dbg !2221
  %conv26 = zext i1 %cmp to i32, !dbg !2221
  store i32 %conv26, i32* %retval, align 4, !dbg !2222
  br label %return, !dbg !2222

return:                                           ; preds = %if.end25, %if.end
  %16 = load i32, i32* %retval, align 4, !dbg !2223
  ret i32 %16, !dbg !2223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @devm_get_clk_from_child(%struct.device* %dev, %struct.device_node* %np, i8* %con_id) #0 !dbg !2224 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %con_id.addr = alloca i8*, align 8
  %ptr = alloca %struct.clk**, align 8
  %clk = alloca %struct.clk*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2229, metadata !DIExpression()), !dbg !2230
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2231, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.declare(metadata %struct.clk*** %ptr, metadata !2233, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.declare(metadata %struct.clk** %clk, metadata !2235, metadata !DIExpression()), !dbg !2236
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_clk_release, i64 8, i32 3264) #3, !dbg !2237
  %0 = bitcast i8* %call to %struct.clk**, !dbg !2237
  store %struct.clk** %0, %struct.clk*** %ptr, align 8, !dbg !2238
  %1 = load %struct.clk**, %struct.clk*** %ptr, align 8, !dbg !2239
  %tobool = icmp ne %struct.clk** %1, null, !dbg !2239
  br i1 %tobool, label %if.end, label %if.then, !dbg !2241

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #3, !dbg !2242
  %2 = bitcast i8* %call1 to %struct.clk*, !dbg !2242
  store %struct.clk* %2, %struct.clk** %retval, align 8, !dbg !2243
  br label %return, !dbg !2243

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2244
  %4 = load i8*, i8** %con_id.addr, align 8, !dbg !2245
  %call2 = call %struct.clk* @of_clk_get_by_name(%struct.device_node* %3, i8* %4) #3, !dbg !2246
  store %struct.clk* %call2, %struct.clk** %clk, align 8, !dbg !2247
  %5 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2248
  %6 = bitcast %struct.clk* %5 to i8*, !dbg !2248
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #3, !dbg !2250
  br i1 %call3, label %if.else, label %if.then4, !dbg !2251

if.then4:                                         ; preds = %if.end
  %7 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2252
  %8 = load %struct.clk**, %struct.clk*** %ptr, align 8, !dbg !2254
  store %struct.clk* %7, %struct.clk** %8, align 8, !dbg !2255
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2256
  %10 = load %struct.clk**, %struct.clk*** %ptr, align 8, !dbg !2257
  %11 = bitcast %struct.clk** %10 to i8*, !dbg !2257
  call void @devres_add(%struct.device* %9, i8* %11) #3, !dbg !2258
  br label %if.end5, !dbg !2259

if.else:                                          ; preds = %if.end
  %12 = load %struct.clk**, %struct.clk*** %ptr, align 8, !dbg !2260
  %13 = bitcast %struct.clk** %12 to i8*, !dbg !2260
  call void @devres_free(i8* %13) #3, !dbg !2262
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %14 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2263
  store %struct.clk* %14, %struct.clk** %retval, align 8, !dbg !2264
  br label %return, !dbg !2264

return:                                           ; preds = %if.end5, %if.then
  %15 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !2265
  ret %struct.clk* %15, !dbg !2265
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @of_clk_get_by_name(%struct.device_node*, i8*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @clk_put(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local i32 @clk_bulk_get_optional(%struct.device*, i32, %struct.clk_bulk_data*) #2

; Function Attrs: noredzone
declare dso_local i32 @clk_bulk_get(%struct.device*, i32, %struct.clk_bulk_data*) #2

; Function Attrs: noredzone
declare dso_local void @clk_bulk_put(i32, %struct.clk_bulk_data*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !53, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/clk/clk-devres.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48}
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
!53 = !{!54, !56, !60, !61}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !55, line: 148, baseType: !5)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !59, line: 17, flags: DIFlagFwdDecl)
!59 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !{i32 7, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"Code Model", i32 2}
!66 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!67 = distinct !DISubprogram(name: "devm_clk_get", scope: !1, file: !1, line: 12, type: !68, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !109)
!68 = !DISubroutineType(types: !69)
!69 = !{!57, !70, !78}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !72)
!72 = !{!73, !1550, !1551, !1554, !1555, !1606, !1684, !1685, !1686, !1687, !1688, !1697, !1802, !1815, !1818, !1819, !1823, !1825, !1826, !1827, !1831, !1837, !1838, !1841, !1844, !1847, !1850, !1851, !1852, !1853, !1885, !1886, !1887, !1890, !1893, !1894, !1895, !1896}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !71, file: !28, line: 462, baseType: !74, size: 512)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !75, line: 64, size: 512, elements: !76)
!75 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !81, !87, !89, !150, !1387, !1540, !1545, !1546, !1547, !1548, !1549}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !75, line: 65, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !74, file: !75, line: 66, baseType: !82, size: 128, offset: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !55, line: 178, size: 128, elements: !83)
!83 = !{!84, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !55, line: 179, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !55, line: 179, baseType: !85, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !74, file: !75, line: 67, baseType: !88, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !74, file: !75, line: 68, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !75, line: 192, size: 704, elements: !92)
!92 = !{!93, !94, !110, !111}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !91, file: !75, line: 193, baseType: !82, size: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !91, file: !75, line: 194, baseType: !95, offset: 128)
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
!110 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !91, file: !75, line: 195, baseType: !74, size: 512, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !91, file: !75, line: 196, baseType: !112, size: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !75, line: 156, size: 192, elements: !115)
!115 = !{!116, !122, !127}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !114, file: !75, line: 157, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !90, !88}
!121 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !75, line: 158, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!78, !90, !88}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !114, file: !75, line: 159, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!121, !90, !88, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !75, line: 148, size: 20736, elements: !134)
!134 = !{!135, !140, !144, !145, !149}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !133, file: !75, line: 149, baseType: !136, size: 192)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!138 = !{!139}
!139 = !DISubrange(count: 3)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !133, file: !75, line: 150, baseType: !141, size: 4096, offset: 192)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 4096, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !133, file: !75, line: 151, baseType: !121, size: 32, offset: 4288)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !133, file: !75, line: 152, baseType: !146, size: 16384, offset: 4320)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 16384, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 2048)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !133, file: !75, line: 153, baseType: !121, size: 32, offset: 20704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !74, file: !75, line: 69, baseType: !151, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !75, line: 138, size: 448, elements: !153)
!153 = !{!154, !158, !187, !189, !1333, !1366, !1370}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !152, file: !75, line: 139, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !88}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !152, file: !75, line: 140, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !162, line: 230, size: 128, elements: !163)
!162 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!163 = !{!164, !180}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !161, file: !162, line: 231, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !88, !173, !137}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !55, line: 60, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !170, line: 73, baseType: !171)
!170 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !170, line: 15, baseType: !172)
!172 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !162, line: 30, size: 128, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !162, line: 31, baseType: !78, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !174, file: !162, line: 32, baseType: !178, size: 16, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !55, line: 19, baseType: !179)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !161, file: !162, line: 232, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!168, !88, !173, !78, !184}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 55, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !170, line: 72, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !170, line: 16, baseType: !61)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !152, file: !75, line: 141, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !152, file: !75, line: 142, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !162, line: 84, size: 320, elements: !194)
!194 = !{!195, !196, !200, !1330, !1331}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !162, line: 85, baseType: !78, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !193, file: !162, line: 86, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!178, !88, !173, !121}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !193, file: !162, line: 88, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!178, !88, !204, !121}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !162, line: 168, size: 448, elements: !206)
!206 = !{!207, !208, !209, !210, !220, !221}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !205, file: !162, line: 169, baseType: !174, size: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !205, file: !162, line: 170, baseType: !184, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !205, file: !162, line: 171, baseType: !60, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !205, file: !162, line: 172, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!168, !214, !88, !204, !137, !217, !184}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !216, line: 526, flags: DIFlagFwdDecl)
!216 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !55, line: 46, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !170, line: 88, baseType: !219)
!219 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !205, file: !162, line: 174, baseType: !211, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !205, file: !162, line: 176, baseType: !222, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!121, !214, !88, !204, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !227, line: 305, size: 1472, elements: !228)
!227 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!228 = !{!229, !230, !231, !232, !233, !241, !242, !1304, !1310, !1311, !1316, !1317, !1320, !1324, !1325, !1326, !1327, !1328}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !226, file: !227, line: 308, baseType: !61, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !226, file: !227, line: 309, baseType: !61, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !226, file: !227, line: 313, baseType: !225, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !226, file: !227, line: 313, baseType: !225, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !226, file: !227, line: 315, baseType: !234, size: 192, align: 64, offset: 256)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !235, line: 24, size: 192, align: 64, elements: !236)
!235 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!236 = !{!237, !238, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !234, file: !235, line: 25, baseType: !61, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !234, file: !235, line: 26, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !234, file: !235, line: 27, baseType: !239, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !226, file: !227, line: 323, baseType: !61, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !226, file: !227, line: 327, baseType: !243, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !227, line: 388, size: 7296, elements: !245)
!245 = !{!246, !1300}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !227, line: 389, baseType: !247, size: 7296)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !227, line: 389, size: 7296, elements: !248)
!248 = !{!249, !250, !254, !260, !264, !265, !266, !267, !268, !276, !281, !282, !283, !284, !293, !294, !295, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !330, !338, !341, !373, !374, !1270, !1271, !1274, !1278, !1279, !1282, !1283, !1284, !1287, !1299}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !247, file: !227, line: 390, baseType: !225, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !247, file: !227, line: 391, baseType: !251, size: 64, offset: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !235, line: 31, size: 64, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !251, file: !235, line: 32, baseType: !239, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !247, file: !227, line: 392, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !256, line: 23, baseType: !257)
!256 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !258, line: 31, baseType: !259)
!258 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!259 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !247, file: !227, line: 394, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!61, !214, !61, !61, !61, !61}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !247, file: !227, line: 398, baseType: !61, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !247, file: !227, line: 399, baseType: !61, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !247, file: !227, line: 405, baseType: !61, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !247, file: !227, line: 406, baseType: !61, size: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !247, file: !227, line: 407, baseType: !269, size: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !216, line: 286, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 286, size: 64, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !271, file: !216, line: 286, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !275, line: 18, baseType: !61)
!275 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !247, file: !227, line: 416, baseType: !277, size: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !55, line: 168, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 166, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !278, file: !55, line: 167, baseType: !121, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !247, file: !227, line: 428, baseType: !277, size: 32, offset: 608)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !247, file: !227, line: 437, baseType: !277, size: 32, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !247, file: !227, line: 447, baseType: !277, size: 32, offset: 672)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !247, file: !227, line: 450, baseType: !285, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !286, line: 13, baseType: !287)
!286 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !55, line: 175, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 173, size: 64, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !288, file: !55, line: 174, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !256, line: 22, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !258, line: 30, baseType: !219)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !247, file: !227, line: 452, baseType: !121, size: 32, offset: 768)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !247, file: !227, line: 454, baseType: !95, offset: 800)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !247, file: !227, line: 457, baseType: !296, size: 256, offset: 832)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !297, line: 35, size: 256, elements: !298)
!297 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!298 = !{!299, !300, !301, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !296, file: !297, line: 36, baseType: !285, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !296, file: !297, line: 42, baseType: !285, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !296, file: !297, line: 46, baseType: !302, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !96, line: 29, baseType: !103)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !296, file: !297, line: 47, baseType: !82, size: 128, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !247, file: !227, line: 459, baseType: !82, size: 128, offset: 1088)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !247, file: !227, line: 466, baseType: !61, size: 64, offset: 1216)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !247, file: !227, line: 467, baseType: !61, size: 64, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !247, file: !227, line: 469, baseType: !61, size: 64, offset: 1344)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !247, file: !227, line: 470, baseType: !61, size: 64, offset: 1408)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !247, file: !227, line: 471, baseType: !287, size: 64, offset: 1472)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !247, file: !227, line: 472, baseType: !61, size: 64, offset: 1536)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !247, file: !227, line: 473, baseType: !61, size: 64, offset: 1600)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !247, file: !227, line: 474, baseType: !61, size: 64, offset: 1664)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !247, file: !227, line: 475, baseType: !61, size: 64, offset: 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !247, file: !227, line: 477, baseType: !95, offset: 1792)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !247, file: !227, line: 478, baseType: !61, size: 64, offset: 1792)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !247, file: !227, line: 478, baseType: !61, size: 64, offset: 1856)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !247, file: !227, line: 478, baseType: !61, size: 64, offset: 1920)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !247, file: !227, line: 478, baseType: !61, size: 64, offset: 1984)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !247, file: !227, line: 479, baseType: !61, size: 64, offset: 2048)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !247, file: !227, line: 479, baseType: !61, size: 64, offset: 2112)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !247, file: !227, line: 479, baseType: !61, size: 64, offset: 2176)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !247, file: !227, line: 480, baseType: !61, size: 64, offset: 2240)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !247, file: !227, line: 480, baseType: !61, size: 64, offset: 2304)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !247, file: !227, line: 480, baseType: !61, size: 64, offset: 2368)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !247, file: !227, line: 480, baseType: !61, size: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !247, file: !227, line: 482, baseType: !327, size: 2816, offset: 2496)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2816, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 44)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !247, file: !227, line: 488, baseType: !331, size: 256, offset: 5312)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !332, line: 60, size: 256, elements: !333)
!332 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !331, file: !332, line: 61, baseType: !335, size: 256)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 4)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !247, file: !227, line: 490, baseType: !339, size: 64, offset: 5568)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !227, line: 490, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !247, file: !227, line: 493, baseType: !342, size: 896, offset: 5632)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !343, line: 53, baseType: !344)
!343 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 13, size: 896, elements: !345)
!345 = !{!346, !347, !348, !349, !352, !353, !360, !361, !365, !366, !369}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !344, file: !343, line: 18, baseType: !255, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !344, file: !343, line: 28, baseType: !287, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !344, file: !343, line: 31, baseType: !296, size: 256, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !344, file: !343, line: 32, baseType: !350, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !343, line: 32, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !344, file: !343, line: 37, baseType: !179, size: 16, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !344, file: !343, line: 40, baseType: !354, size: 192, offset: 512)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !355, line: 53, size: 192, elements: !356)
!355 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357, !358, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !354, file: !355, line: 54, baseType: !285, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !354, file: !355, line: 55, baseType: !95, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !354, file: !355, line: 59, baseType: !82, size: 128, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !344, file: !343, line: 41, baseType: !60, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !344, file: !343, line: 42, baseType: !362, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !343, line: 42, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !344, file: !343, line: 44, baseType: !277, size: 32, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !344, file: !343, line: 50, baseType: !367, size: 16, offset: 864)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !256, line: 19, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !258, line: 24, baseType: !179)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !344, file: !343, line: 51, baseType: !370, size: 16, offset: 880)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !256, line: 18, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !258, line: 23, baseType: !372)
!372 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !227, line: 495, baseType: !61, size: 64, offset: 6528)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !247, file: !227, line: 497, baseType: !375, size: 64, offset: 6592)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !227, line: 381, size: 384, elements: !377)
!377 = !{!378, !379, !1269}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !376, file: !227, line: 382, baseType: !277, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !376, file: !227, line: 383, baseType: !380, size: 128, offset: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !227, line: 376, size: 128, elements: !381)
!381 = !{!382, !1267}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !380, file: !227, line: 377, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !385, line: 640, size: 48640, elements: !386)
!385 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!386 = !{!387, !395, !397, !398, !404, !405, !406, !407, !408, !409, !410, !411, !415, !433, !444, !539, !540, !541, !552, !553, !555, !556, !557, !558, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !637, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !693, !695, !696, !697, !709, !711, !712, !713, !714, !715, !721, !722, !723, !724, !725, !726, !727, !739, !744, !748, !749, !750, !753, !757, !760, !763, !766, !769, !772, !775, !778, !784, !785, !786, !792, !793, !794, !795, !796, !805, !806, !807, !808, !809, !814, !815, !816, !819, !820, !823, !826, !829, !832, !835, !838, !839, !919, !922, !925, !926, !929, !930, !931, !937, !938, !939, !952, !953, !954, !966, !971, !974, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !384, file: !385, line: 646, baseType: !388, size: 128)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !389, line: 56, size: 128, elements: !390)
!389 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !389, line: 57, baseType: !61, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !388, file: !389, line: 58, baseType: !393, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !256, line: 21, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !258, line: 27, baseType: !5)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !384, file: !385, line: 649, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !384, file: !385, line: 657, baseType: !60, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !384, file: !385, line: 658, baseType: !399, size: 32, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !400, line: 113, baseType: !401)
!400 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !400, line: 111, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !401, file: !400, line: 112, baseType: !277, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !385, line: 660, baseType: !5, size: 32, offset: 288)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !384, file: !385, line: 661, baseType: !5, size: 32, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !384, file: !385, line: 684, baseType: !121, size: 32, offset: 352)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !384, file: !385, line: 686, baseType: !121, size: 32, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !384, file: !385, line: 687, baseType: !121, size: 32, offset: 416)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !384, file: !385, line: 688, baseType: !121, size: 32, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !384, file: !385, line: 689, baseType: !5, size: 32, offset: 480)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !384, file: !385, line: 691, baseType: !412, size: 64, offset: 512)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !385, line: 691, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !384, file: !385, line: 692, baseType: !416, size: 832, offset: 576)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !385, line: 451, size: 832, elements: !417)
!417 = !{!418, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !416, file: !385, line: 453, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !385, line: 325, size: 128, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !419, file: !385, line: 326, baseType: !61, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !419, file: !385, line: 327, baseType: !393, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !416, file: !385, line: 454, baseType: !234, size: 192, align: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !416, file: !385, line: 455, baseType: !82, size: 128, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !416, file: !385, line: 456, baseType: !5, size: 32, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !416, file: !385, line: 458, baseType: !255, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !416, file: !385, line: 459, baseType: !255, size: 64, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !416, file: !385, line: 460, baseType: !255, size: 64, offset: 640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !416, file: !385, line: 461, baseType: !255, size: 64, offset: 704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !416, file: !385, line: 463, baseType: !255, size: 64, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !416, file: !385, line: 465, baseType: !432, offset: 832)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !385, line: 415, elements: !109)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !384, file: !385, line: 693, baseType: !434, size: 384, offset: 1408)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !385, line: 489, size: 384, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !434, file: !385, line: 490, baseType: !82, size: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !434, file: !385, line: 491, baseType: !61, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !434, file: !385, line: 492, baseType: !61, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !434, file: !385, line: 493, baseType: !5, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !434, file: !385, line: 494, baseType: !179, size: 16, offset: 288)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !434, file: !385, line: 495, baseType: !179, size: 16, offset: 304)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !434, file: !385, line: 497, baseType: !443, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !384, file: !385, line: 697, baseType: !445, size: 1792, offset: 1792)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !385, line: 507, size: 1792, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !536, !537}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !445, file: !385, line: 508, baseType: !234, size: 192, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !445, file: !385, line: 515, baseType: !255, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !445, file: !385, line: 516, baseType: !255, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !445, file: !385, line: 517, baseType: !255, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !445, file: !385, line: 518, baseType: !255, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !445, file: !385, line: 519, baseType: !255, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !445, file: !385, line: 526, baseType: !291, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !445, file: !385, line: 527, baseType: !255, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !385, line: 528, baseType: !5, size: 32, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !445, file: !385, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !445, file: !385, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !445, file: !385, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !445, file: !385, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !445, file: !385, line: 563, baseType: !461, size: 512, offset: 704)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !462)
!462 = !{!463, !471, !472, !477, !529, !533, !534, !535}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !461, file: !4, line: 119, baseType: !464, size: 256)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !465, line: 9, size: 256, elements: !466)
!465 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !464, file: !465, line: 10, baseType: !234, size: 192, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !464, file: !465, line: 11, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !470, line: 29, baseType: !291)
!470 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !461, file: !4, line: 120, baseType: !469, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !461, file: !4, line: 121, baseType: !473, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!3, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !461, file: !4, line: 122, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !480)
!480 = !{!481, !501, !502, !505, !515, !516, !524, !528}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !479, file: !4, line: 160, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !483, file: !4, line: 215, baseType: !302)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !483, file: !4, line: 216, baseType: !5, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !483, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !483, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !483, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !483, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !483, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !483, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !483, file: !4, line: 233, baseType: !469, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !483, file: !4, line: 234, baseType: !476, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !483, file: !4, line: 235, baseType: !469, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !483, file: !4, line: 236, baseType: !476, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !483, file: !4, line: 237, baseType: !498, size: 4096, offset: 512)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 4096, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 8)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !479, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !479, file: !4, line: 162, baseType: !503, size: 32, offset: 96)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !55, line: 27, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !170, line: 96, baseType: !121)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !479, file: !4, line: 163, baseType: !506, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !507, line: 276, baseType: !508)
!507 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !507, line: 276, size: 32, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !508, file: !507, line: 276, baseType: !511, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !507, line: 70, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !507, line: 65, size: 32, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !512, file: !507, line: 66, baseType: !5, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !479, file: !4, line: 164, baseType: !476, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !479, file: !4, line: 165, baseType: !517, size: 128, offset: 256)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !465, line: 14, size: 128, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !517, file: !465, line: 15, baseType: !520, size: 128)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !235, line: 125, size: 128, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !520, file: !235, line: 126, baseType: !251, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !520, file: !235, line: 127, baseType: !239, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !479, file: !4, line: 166, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!469}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !479, file: !4, line: 167, baseType: !469, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !461, file: !4, line: 123, baseType: !530, size: 8, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !256, line: 17, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !258, line: 21, baseType: !532)
!532 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !461, file: !4, line: 124, baseType: !530, size: 8, offset: 456)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !461, file: !4, line: 125, baseType: !530, size: 8, offset: 464)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !461, file: !4, line: 126, baseType: !530, size: 8, offset: 472)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !445, file: !385, line: 572, baseType: !461, size: 512, offset: 1216)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !445, file: !385, line: 580, baseType: !538, size: 64, offset: 1728)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !384, file: !385, line: 721, baseType: !5, size: 32, offset: 3584)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !384, file: !385, line: 722, baseType: !121, size: 32, offset: 3616)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !384, file: !385, line: 723, baseType: !542, size: 64, offset: 3648)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !545, line: 17, baseType: !546)
!545 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !545, line: 17, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !546, file: !545, line: 17, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 1)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !384, file: !385, line: 724, baseType: !544, size: 64, offset: 3712)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !384, file: !385, line: 749, baseType: !554, offset: 3776)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !385, line: 290, elements: !109)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !384, file: !385, line: 751, baseType: !82, size: 128, offset: 3776)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !384, file: !385, line: 757, baseType: !243, size: 64, offset: 3904)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !384, file: !385, line: 758, baseType: !243, size: 64, offset: 3968)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !384, file: !385, line: 761, baseType: !559, size: 320, offset: 4032)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !332, line: 34, size: 320, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !559, file: !332, line: 35, baseType: !255, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !559, file: !332, line: 36, baseType: !563, size: 256, offset: 64)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !336)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !384, file: !385, line: 766, baseType: !121, size: 32, offset: 4352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !384, file: !385, line: 767, baseType: !121, size: 32, offset: 4384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !384, file: !385, line: 768, baseType: !121, size: 32, offset: 4416)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !384, file: !385, line: 770, baseType: !121, size: 32, offset: 4448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !384, file: !385, line: 772, baseType: !61, size: 64, offset: 4480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !384, file: !385, line: 775, baseType: !5, size: 32, offset: 4544)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !384, file: !385, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !384, file: !385, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !384, file: !385, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !384, file: !385, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !384, file: !385, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !384, file: !385, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !384, file: !385, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !384, file: !385, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !384, file: !385, line: 831, baseType: !61, size: 64, offset: 4672)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !384, file: !385, line: 833, baseType: !580, size: 384, offset: 4736)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !581)
!581 = !{!582, !587}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !580, file: !10, line: 26, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!172, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !10, line: 27, baseType: !588, size: 320, offset: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !10, line: 27, size: 320, elements: !589)
!589 = !{!590, !600, !627}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !588, file: !10, line: 36, baseType: !591, size: 320)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !10, line: 29, size: 320, elements: !592)
!592 = !{!593, !595, !596, !597, !598, !599}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !591, file: !10, line: 30, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !591, file: !10, line: 31, baseType: !393, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !10, line: 32, baseType: !393, size: 32, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !591, file: !10, line: 33, baseType: !393, size: 32, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !591, file: !10, line: 34, baseType: !255, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !591, file: !10, line: 35, baseType: !594, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !588, file: !10, line: 46, baseType: !601, size: 192)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !10, line: 38, size: 192, elements: !602)
!602 = !{!603, !604, !605, !626}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !601, file: !10, line: 39, baseType: !503, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !10, line: 41, baseType: !606, size: 64, offset: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !10, line: 41, size: 64, elements: !607)
!607 = !{!608, !616}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !606, file: !10, line: 42, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !611, line: 7, size: 128, elements: !612)
!611 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!612 = !{!613, !615}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !610, file: !611, line: 8, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !170, line: 93, baseType: !219)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !610, file: !611, line: 9, baseType: !219, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !606, file: !10, line: 43, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !619, line: 7, size: 64, elements: !620)
!619 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!620 = !{!621, !625}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !618, file: !619, line: 8, baseType: !622, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !619, line: 5, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !256, line: 20, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !258, line: 26, baseType: !121)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !618, file: !619, line: 9, baseType: !623, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !601, file: !10, line: 45, baseType: !255, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !588, file: !10, line: 54, baseType: !628, size: 256)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !10, line: 48, size: 256, elements: !629)
!629 = !{!630, !633, !634, !635, !636}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !628, file: !10, line: 49, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !628, file: !10, line: 50, baseType: !121, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !628, file: !10, line: 51, baseType: !121, size: 32, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !628, file: !10, line: 52, baseType: !61, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !628, file: !10, line: 53, baseType: !61, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !384, file: !385, line: 835, baseType: !638, size: 32, offset: 5120)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !55, line: 22, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !170, line: 28, baseType: !121)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !384, file: !385, line: 836, baseType: !638, size: 32, offset: 5152)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !384, file: !385, line: 840, baseType: !61, size: 64, offset: 5184)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !384, file: !385, line: 849, baseType: !383, size: 64, offset: 5248)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !384, file: !385, line: 852, baseType: !383, size: 64, offset: 5312)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !384, file: !385, line: 857, baseType: !82, size: 128, offset: 5376)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !384, file: !385, line: 858, baseType: !82, size: 128, offset: 5504)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !384, file: !385, line: 859, baseType: !383, size: 64, offset: 5632)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !384, file: !385, line: 867, baseType: !82, size: 128, offset: 5696)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !384, file: !385, line: 868, baseType: !82, size: 128, offset: 5824)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !384, file: !385, line: 871, baseType: !650, size: 64, offset: 5952)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !652, line: 59, size: 768, elements: !653)
!652 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!653 = !{!654, !655, !656, !657, !668, !669, !676, !685}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !651, file: !652, line: 61, baseType: !399, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !651, file: !652, line: 62, baseType: !5, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !651, file: !652, line: 63, baseType: !95, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !651, file: !652, line: 65, baseType: !658, size: 256, offset: 64)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 256, elements: !336)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !55, line: 182, size: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !659, file: !55, line: 183, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !55, line: 186, size: 128, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !55, line: 187, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !663, file: !55, line: 187, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !651, file: !652, line: 66, baseType: !659, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !651, file: !652, line: 68, baseType: !670, size: 128, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !671, line: 40, baseType: !672)
!671 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !671, line: 36, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !671, line: 37, baseType: !95)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !672, file: !671, line: 38, baseType: !82, size: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !651, file: !652, line: 69, baseType: !677, size: 128, align: 64, offset: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !55, line: 216, size: 128, align: 64, elements: !678)
!678 = !{!679, !681}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !55, line: 217, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !677, file: !55, line: 218, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !680}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !651, file: !652, line: 70, baseType: !686, size: 128, offset: 640)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 128, elements: !550)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !652, line: 54, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !687, file: !652, line: 55, baseType: !121, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !687, file: !652, line: 56, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !652, line: 56, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !384, file: !385, line: 872, baseType: !694, size: 512, offset: 6016)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 512, elements: !336)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !384, file: !385, line: 873, baseType: !82, size: 128, offset: 6528)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !384, file: !385, line: 874, baseType: !82, size: 128, offset: 6656)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !384, file: !385, line: 876, baseType: !698, size: 64, offset: 6784)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !700, line: 26, size: 192, elements: !701)
!700 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !699, file: !700, line: 27, baseType: !5, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !699, file: !700, line: 28, baseType: !704, size: 128, offset: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !705, line: 43, size: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !704, file: !705, line: 44, baseType: !302)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !704, file: !705, line: 45, baseType: !82, size: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !384, file: !385, line: 879, baseType: !710, size: 64, offset: 6848)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !384, file: !385, line: 882, baseType: !710, size: 64, offset: 6912)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !384, file: !385, line: 884, baseType: !255, size: 64, offset: 6976)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !384, file: !385, line: 885, baseType: !255, size: 64, offset: 7040)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !384, file: !385, line: 890, baseType: !255, size: 64, offset: 7104)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !384, file: !385, line: 891, baseType: !716, size: 128, offset: 7168)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !385, line: 242, size: 128, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !716, file: !385, line: 244, baseType: !255, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !716, file: !385, line: 245, baseType: !255, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !385, line: 246, baseType: !302, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !384, file: !385, line: 900, baseType: !61, size: 64, offset: 7296)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !384, file: !385, line: 901, baseType: !61, size: 64, offset: 7360)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !384, file: !385, line: 904, baseType: !255, size: 64, offset: 7424)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !384, file: !385, line: 907, baseType: !255, size: 64, offset: 7488)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !384, file: !385, line: 910, baseType: !61, size: 64, offset: 7552)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !384, file: !385, line: 911, baseType: !61, size: 64, offset: 7616)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !384, file: !385, line: 914, baseType: !728, size: 640, offset: 7680)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !729, line: 123, size: 640, elements: !730)
!729 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !737, !738}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !728, file: !729, line: 124, baseType: !732, size: 576)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 576, elements: !138)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !729, line: 108, size: 192, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !733, file: !729, line: 109, baseType: !255, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !733, file: !729, line: 110, baseType: !517, size: 128, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !728, file: !729, line: 125, baseType: !5, size: 32, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !728, file: !729, line: 126, baseType: !5, size: 32, offset: 608)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !384, file: !385, line: 917, baseType: !740, size: 192, offset: 8320)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !729, line: 134, size: 192, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !740, file: !729, line: 135, baseType: !677, size: 128, align: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !740, file: !729, line: 136, baseType: !5, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !384, file: !385, line: 923, baseType: !745, size: 64, offset: 8512)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !385, line: 923, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !384, file: !385, line: 926, baseType: !745, size: 64, offset: 8576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !384, file: !385, line: 929, baseType: !745, size: 64, offset: 8640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !384, file: !385, line: 933, baseType: !751, size: 64, offset: 8704)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !385, line: 933, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !384, file: !385, line: 943, baseType: !754, size: 128, offset: 8768)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 16)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !384, file: !385, line: 945, baseType: !758, size: 64, offset: 8896)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !385, line: 49, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !384, file: !385, line: 956, baseType: !761, size: 64, offset: 8960)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !385, line: 45, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !384, file: !385, line: 959, baseType: !764, size: 64, offset: 9024)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !385, line: 959, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !384, file: !385, line: 962, baseType: !767, size: 64, offset: 9088)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !385, line: 66, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !384, file: !385, line: 966, baseType: !770, size: 64, offset: 9152)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !385, line: 50, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !384, file: !385, line: 969, baseType: !773, size: 64, offset: 9216)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !729, line: 223, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !384, file: !385, line: 970, baseType: !776, size: 64, offset: 9280)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !385, line: 62, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !384, file: !385, line: 971, baseType: !779, size: 64, offset: 9344)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !780, line: 25, baseType: !781)
!780 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !780, line: 23, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !781, file: !780, line: 24, baseType: !549, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !384, file: !385, line: 972, baseType: !779, size: 64, offset: 9408)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !384, file: !385, line: 974, baseType: !779, size: 64, offset: 9472)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !384, file: !385, line: 975, baseType: !787, size: 192, offset: 9536)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !788, line: 30, size: 192, elements: !789)
!788 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !787, file: !788, line: 31, baseType: !82, size: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !787, file: !788, line: 32, baseType: !779, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !384, file: !385, line: 976, baseType: !61, size: 64, offset: 9728)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !384, file: !385, line: 977, baseType: !184, size: 64, offset: 9792)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !384, file: !385, line: 978, baseType: !5, size: 32, offset: 9856)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !384, file: !385, line: 980, baseType: !680, size: 64, offset: 9920)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !384, file: !385, line: 989, baseType: !797, size: 128, offset: 9984)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !798, line: 35, size: 128, elements: !799)
!798 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !797, file: !798, line: 36, baseType: !121, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !797, file: !798, line: 37, baseType: !277, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !797, file: !798, line: 38, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !798, line: 23, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !384, file: !385, line: 992, baseType: !255, size: 64, offset: 10112)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !384, file: !385, line: 993, baseType: !255, size: 64, offset: 10176)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !384, file: !385, line: 996, baseType: !95, offset: 10240)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !384, file: !385, line: 999, baseType: !302, offset: 10240)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !384, file: !385, line: 1001, baseType: !810, size: 64, offset: 10240)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !385, line: 636, size: 64, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !810, file: !385, line: 637, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !384, file: !385, line: 1005, baseType: !520, size: 128, offset: 10304)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !384, file: !385, line: 1007, baseType: !383, size: 64, offset: 10432)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !384, file: !385, line: 1009, baseType: !817, size: 64, offset: 10496)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !385, line: 1009, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !384, file: !385, line: 1043, baseType: !60, size: 64, offset: 10560)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !384, file: !385, line: 1046, baseType: !821, size: 64, offset: 10624)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !385, line: 41, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !384, file: !385, line: 1050, baseType: !824, size: 64, offset: 10688)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !385, line: 42, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !384, file: !385, line: 1054, baseType: !827, size: 64, offset: 10752)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !385, line: 55, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !384, file: !385, line: 1056, baseType: !830, size: 64, offset: 10816)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !385, line: 40, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !384, file: !385, line: 1058, baseType: !833, size: 64, offset: 10880)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !385, line: 47, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !384, file: !385, line: 1061, baseType: !836, size: 64, offset: 10944)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !385, line: 43, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !384, file: !385, line: 1064, baseType: !61, size: 64, offset: 11008)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !384, file: !385, line: 1065, baseType: !840, size: 64, offset: 11072)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !788, line: 14, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !788, line: 12, size: 384, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !842, file: !788, line: 13, baseType: !845, size: 384)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !842, file: !788, line: 13, size: 384, elements: !846)
!846 = !{!847, !848, !849, !850}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !845, file: !788, line: 13, baseType: !121, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !845, file: !788, line: 13, baseType: !121, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !845, file: !788, line: 13, baseType: !121, size: 32, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !845, file: !788, line: 13, baseType: !851, size: 256, offset: 128)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !852, line: 32, size: 256, elements: !853)
!852 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!853 = !{!854, !860, !873, !879, !888, !908, !913}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !851, file: !852, line: 37, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !852, line: 34, size: 64, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !855, file: !852, line: 35, baseType: !639, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !855, file: !852, line: 36, baseType: !859, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !170, line: 49, baseType: !5)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !851, file: !852, line: 45, baseType: !861, size: 192)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !852, line: 40, size: 192, elements: !862)
!862 = !{!863, !865, !866, !872}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !861, file: !852, line: 41, baseType: !864, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !170, line: 95, baseType: !121)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !861, file: !852, line: 42, baseType: !121, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !861, file: !852, line: 43, baseType: !867, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !852, line: 11, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !852, line: 8, size: 64, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !868, file: !852, line: 9, baseType: !121, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !868, file: !852, line: 10, baseType: !60, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !861, file: !852, line: 44, baseType: !121, size: 32, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !851, file: !852, line: 52, baseType: !874, size: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !852, line: 48, size: 128, elements: !875)
!875 = !{!876, !877, !878}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !874, file: !852, line: 49, baseType: !639, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !874, file: !852, line: 50, baseType: !859, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !874, file: !852, line: 51, baseType: !867, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !851, file: !852, line: 61, baseType: !880, size: 256)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !852, line: 55, size: 256, elements: !881)
!881 = !{!882, !883, !884, !885, !887}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !880, file: !852, line: 56, baseType: !639, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !880, file: !852, line: 57, baseType: !859, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !880, file: !852, line: 58, baseType: !121, size: 32, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !880, file: !852, line: 59, baseType: !886, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !170, line: 94, baseType: !171)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !880, file: !852, line: 60, baseType: !886, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !851, file: !852, line: 95, baseType: !889, size: 256)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !852, line: 64, size: 256, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !889, file: !852, line: 65, baseType: !60, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !852, line: 77, baseType: !893, size: 192, offset: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !889, file: !852, line: 77, size: 192, elements: !894)
!894 = !{!895, !896, !903}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !893, file: !852, line: 82, baseType: !372, size: 16)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !893, file: !852, line: 88, baseType: !897, size: 192)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !852, line: 84, size: 192, elements: !898)
!898 = !{!899, !901, !902}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !897, file: !852, line: 85, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !499)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !897, file: !852, line: 86, baseType: !60, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !897, file: !852, line: 87, baseType: !60, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !893, file: !852, line: 93, baseType: !904, size: 96)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !852, line: 90, size: 96, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !904, file: !852, line: 91, baseType: !900, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !904, file: !852, line: 92, baseType: !394, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !851, file: !852, line: 101, baseType: !909, size: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !852, line: 98, size: 128, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !909, file: !852, line: 99, baseType: !172, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !909, file: !852, line: 100, baseType: !121, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !851, file: !852, line: 108, baseType: !914, size: 128)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !852, line: 104, size: 128, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !914, file: !852, line: 105, baseType: !60, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !914, file: !852, line: 106, baseType: !121, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !914, file: !852, line: 107, baseType: !5, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !384, file: !385, line: 1067, baseType: !920, offset: 11136)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !921, line: 12, elements: !109)
!921 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!922 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !384, file: !385, line: 1099, baseType: !923, size: 64, offset: 11136)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !385, line: 56, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !384, file: !385, line: 1103, baseType: !82, size: 128, offset: 11200)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !384, file: !385, line: 1104, baseType: !927, size: 64, offset: 11328)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !385, line: 46, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !384, file: !385, line: 1105, baseType: !354, size: 192, offset: 11392)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !384, file: !385, line: 1106, baseType: !5, size: 32, offset: 11584)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !384, file: !385, line: 1109, baseType: !932, size: 128, offset: 11648)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 128, elements: !935)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !385, line: 51, flags: DIFlagFwdDecl)
!935 = !{!936}
!936 = !DISubrange(count: 2)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !384, file: !385, line: 1110, baseType: !354, size: 192, offset: 11776)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !384, file: !385, line: 1111, baseType: !82, size: 128, offset: 11968)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !384, file: !385, line: 1173, baseType: !940, size: 64, offset: 12096)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !942, line: 62, size: 256, align: 256, elements: !943)
!942 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!943 = !{!944, !945, !946, !951}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !941, file: !942, line: 75, baseType: !394, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !941, file: !942, line: 90, baseType: !394, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !941, file: !942, line: 124, baseType: !947, size: 64, offset: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !942, line: 109, size: 64, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !947, file: !942, line: 110, baseType: !257, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !947, file: !942, line: 112, baseType: !257, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !942, line: 144, baseType: !394, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !384, file: !385, line: 1174, baseType: !393, size: 32, offset: 12160)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !384, file: !385, line: 1179, baseType: !61, size: 64, offset: 12224)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !384, file: !385, line: 1182, baseType: !955, size: 128, offset: 12288)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !332, line: 76, size: 128, elements: !956)
!956 = !{!957, !962, !965}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !955, file: !332, line: 85, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !959, line: 7, size: 64, elements: !960)
!959 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !958, file: !959, line: 12, baseType: !546, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !955, file: !332, line: 88, baseType: !963, size: 8, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !55, line: 30, baseType: !964)
!964 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !955, file: !332, line: 95, baseType: !963, size: 8, offset: 72)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !385, line: 1184, baseType: !967, size: 128, offset: 12416)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !385, line: 1184, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !967, file: !385, line: 1185, baseType: !399, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !967, file: !385, line: 1186, baseType: !677, size: 128, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !384, file: !385, line: 1190, baseType: !972, size: 64, offset: 12544)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !385, line: 53, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !384, file: !385, line: 1192, baseType: !975, size: 128, offset: 12608)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !332, line: 64, size: 128, elements: !976)
!976 = !{!977, !1070, !1071}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !975, file: !332, line: 65, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !227, line: 68, size: 512, align: 128, elements: !980)
!980 = !{!981, !982, !1062, !1069}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !227, line: 69, baseType: !61, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !227, line: 77, baseType: !983, size: 320, offset: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !227, line: 77, size: 320, elements: !984)
!984 = !{!985, !994, !999, !1027, !1035, !1041, !1054, !1061}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !227, line: 78, baseType: !986, size: 320)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !227, line: 78, size: 320, elements: !987)
!987 = !{!988, !989, !992, !993}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !986, file: !227, line: 84, baseType: !82, size: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !986, file: !227, line: 86, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !227, line: 26, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !986, file: !227, line: 87, baseType: !61, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !986, file: !227, line: 94, baseType: !61, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !227, line: 96, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !227, line: 96, size: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !995, file: !227, line: 101, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !55, line: 143, baseType: !255)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !227, line: 103, baseType: !1000, size: 320)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !227, line: 103, size: 320, elements: !1001)
!1001 = !{!1002, !1012, !1015, !1016}
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !227, line: 104, baseType: !1003, size: 128)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !227, line: 104, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1003, file: !227, line: 105, baseType: !82, size: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !227, line: 106, baseType: !1007, size: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1003, file: !227, line: 106, size: 128, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !227, line: 107, baseType: !978, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1007, file: !227, line: 109, baseType: !121, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1007, file: !227, line: 110, baseType: !121, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1000, file: !227, line: 117, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !227, line: 117, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1000, file: !227, line: 119, baseType: !60, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !227, line: 120, baseType: !1017, size: 64, offset: 256)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !227, line: 120, size: 64, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1017, file: !227, line: 121, baseType: !60, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1017, file: !227, line: 122, baseType: !61, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !227, line: 123, baseType: !1022, size: 32)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !227, line: 123, size: 32, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1022, file: !227, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1022, file: !227, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1022, file: !227, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !227, line: 130, baseType: !1028, size: 192)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !227, line: 130, size: 192, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1028, file: !227, line: 131, baseType: !61, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1028, file: !227, line: 134, baseType: !532, size: 8, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1028, file: !227, line: 135, baseType: !532, size: 8, offset: 72)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1028, file: !227, line: 136, baseType: !277, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1028, file: !227, line: 137, baseType: !5, size: 32, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !227, line: 139, baseType: !1036, size: 256)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !227, line: 139, size: 256, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1036, file: !227, line: 140, baseType: !61, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1036, file: !227, line: 141, baseType: !277, size: 32, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1036, file: !227, line: 143, baseType: !82, size: 128, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !227, line: 145, baseType: !1042, size: 256)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !227, line: 145, size: 256, elements: !1043)
!1043 = !{!1044, !1045, !1047, !1048, !1053}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1042, file: !227, line: 146, baseType: !61, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1042, file: !227, line: 147, baseType: !1046, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !216, line: 509, baseType: !978)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1042, file: !227, line: 148, baseType: !61, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !227, line: 149, baseType: !1049, size: 64, offset: 192)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !227, line: 149, size: 64, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1049, file: !227, line: 150, baseType: !243, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1049, file: !227, line: 151, baseType: !277, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1042, file: !227, line: 156, baseType: !95, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !227, line: 159, baseType: !1055, size: 128)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !227, line: 159, size: 128, elements: !1056)
!1056 = !{!1057, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1055, file: !227, line: 161, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !227, line: 161, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1055, file: !227, line: 162, baseType: !60, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !983, file: !227, line: 176, baseType: !677, size: 128, align: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !227, line: 179, baseType: !1063, size: 32, offset: 384)
!1063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !227, line: 179, size: 32, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1063, file: !227, line: 184, baseType: !277, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1063, file: !227, line: 192, baseType: !5, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1063, file: !227, line: 194, baseType: !5, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1063, file: !227, line: 195, baseType: !121, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !979, file: !227, line: 199, baseType: !277, size: 32, offset: 416)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !975, file: !332, line: 67, baseType: !394, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !975, file: !332, line: 68, baseType: !394, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !384, file: !385, line: 1206, baseType: !121, size: 32, offset: 12736)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !384, file: !385, line: 1207, baseType: !121, size: 32, offset: 12768)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !384, file: !385, line: 1209, baseType: !61, size: 64, offset: 12800)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !384, file: !385, line: 1219, baseType: !255, size: 64, offset: 12864)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !384, file: !385, line: 1220, baseType: !255, size: 64, offset: 12928)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !384, file: !385, line: 1317, baseType: !121, size: 32, offset: 12992)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !384, file: !385, line: 1319, baseType: !383, size: 64, offset: 13056)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !384, file: !385, line: 1322, baseType: !1080, size: 64, offset: 13120)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !385, line: 1322, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !384, file: !385, line: 1326, baseType: !399, size: 32, offset: 13184)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !384, file: !385, line: 1342, baseType: !60, size: 64, offset: 13248)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !384, file: !385, line: 1343, baseType: !257, size: 64, offset: 13312)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !384, file: !385, line: 1344, baseType: !255, size: 64, offset: 13376)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !384, file: !385, line: 1345, baseType: !257, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !384, file: !385, line: 1346, baseType: !257, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !384, file: !385, line: 1347, baseType: !257, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !384, file: !385, line: 1348, baseType: !677, size: 128, align: 64, offset: 13504)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !384, file: !385, line: 1358, baseType: !1091, size: 34816, offset: 13824)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1092, line: 485, size: 34816, elements: !1093)
!1092 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1123, !1124, !1125, !1126, !1127, !1128, !1131, !1132, !1133}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1091, file: !1092, line: 487, baseType: !1095, size: 192)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1096, size: 192, elements: !138)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1097, line: 16, size: 64, elements: !1098)
!1097 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1096, file: !1097, line: 17, baseType: !367, size: 16)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1096, file: !1097, line: 18, baseType: !367, size: 16, offset: 16)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1096, file: !1097, line: 19, baseType: !367, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1096, file: !1097, line: 19, baseType: !367, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1096, file: !1097, line: 19, baseType: !367, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1096, file: !1097, line: 19, baseType: !367, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1096, file: !1097, line: 19, baseType: !367, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1096, file: !1097, line: 20, baseType: !367, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1096, file: !1097, line: 20, baseType: !367, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1096, file: !1097, line: 20, baseType: !367, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1096, file: !1097, line: 20, baseType: !367, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1096, file: !1097, line: 20, baseType: !367, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1096, file: !1097, line: 20, baseType: !367, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1091, file: !1092, line: 491, baseType: !61, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1091, file: !1092, line: 495, baseType: !179, size: 16, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1091, file: !1092, line: 496, baseType: !179, size: 16, offset: 272)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1091, file: !1092, line: 497, baseType: !179, size: 16, offset: 288)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1091, file: !1092, line: 498, baseType: !179, size: 16, offset: 304)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1091, file: !1092, line: 502, baseType: !61, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1091, file: !1092, line: 503, baseType: !61, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1091, file: !1092, line: 514, baseType: !1120, size: 256, offset: 448)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1121, size: 256, elements: !336)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1092, line: 483, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1091, file: !1092, line: 516, baseType: !61, size: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1091, file: !1092, line: 518, baseType: !61, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1091, file: !1092, line: 520, baseType: !61, size: 64, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1091, file: !1092, line: 521, baseType: !61, size: 64, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1091, file: !1092, line: 522, baseType: !61, size: 64, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1091, file: !1092, line: 528, baseType: !1129, size: 64, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1092, line: 10, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1091, file: !1092, line: 535, baseType: !61, size: 64, offset: 1088)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1091, file: !1092, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1091, file: !1092, line: 540, baseType: !1134, size: 33280, offset: 1536)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1135, line: 317, size: 33280, elements: !1136)
!1135 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1134, file: !1135, line: 330, baseType: !5, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1134, file: !1135, line: 337, baseType: !61, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1134, file: !1135, line: 348, baseType: !1140, size: 32768, offset: 512)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1135, line: 304, size: 32768, elements: !1141)
!1141 = !{!1142, !1157, !1196, !1246, !1263}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1140, file: !1135, line: 305, baseType: !1143, size: 896)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1135, line: 12, size: 896, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1156}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1143, file: !1135, line: 13, baseType: !393, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1143, file: !1135, line: 14, baseType: !393, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1143, file: !1135, line: 15, baseType: !393, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1143, file: !1135, line: 16, baseType: !393, size: 32, offset: 96)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1143, file: !1135, line: 17, baseType: !393, size: 32, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1143, file: !1135, line: 18, baseType: !393, size: 32, offset: 160)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1143, file: !1135, line: 19, baseType: !393, size: 32, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1143, file: !1135, line: 22, baseType: !1153, size: 640, offset: 224)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 640, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: 20)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1143, file: !1135, line: 25, baseType: !393, size: 32, offset: 864)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1140, file: !1135, line: 306, baseType: !1158, size: 4096, align: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1135, line: 34, size: 4096, align: 128, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1179, !1180, !1181, !1185, !1187, !1191}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1158, file: !1135, line: 35, baseType: !367, size: 16)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1158, file: !1135, line: 36, baseType: !367, size: 16, offset: 16)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1158, file: !1135, line: 37, baseType: !367, size: 16, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1158, file: !1135, line: 38, baseType: !367, size: 16, offset: 48)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1135, line: 39, baseType: !1165, size: 128, offset: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !1135, line: 39, size: 128, elements: !1166)
!1166 = !{!1167, !1172}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1135, line: 40, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1165, file: !1135, line: 40, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1168, file: !1135, line: 41, baseType: !255, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1168, file: !1135, line: 42, baseType: !255, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1135, line: 44, baseType: !1173, size: 128)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1165, file: !1135, line: 44, size: 128, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1173, file: !1135, line: 45, baseType: !393, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1173, file: !1135, line: 46, baseType: !393, size: 32, offset: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1173, file: !1135, line: 47, baseType: !393, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1173, file: !1135, line: 48, baseType: !393, size: 32, offset: 96)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1158, file: !1135, line: 51, baseType: !393, size: 32, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1158, file: !1135, line: 52, baseType: !393, size: 32, offset: 224)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1158, file: !1135, line: 55, baseType: !1182, size: 1024, offset: 256)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 1024, elements: !1183)
!1183 = !{!1184}
!1184 = !DISubrange(count: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1158, file: !1135, line: 58, baseType: !1186, size: 2048, offset: 1280)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 2048, elements: !142)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1158, file: !1135, line: 60, baseType: !1188, size: 384, offset: 3328)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 384, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 12)
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1135, line: 62, baseType: !1192, size: 384, offset: 3712)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !1135, line: 62, size: 384, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1192, file: !1135, line: 63, baseType: !1188, size: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1192, file: !1135, line: 64, baseType: !1188, size: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1140, file: !1135, line: 307, baseType: !1197, size: 1088)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1135, line: 79, size: 1088, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1245}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1197, file: !1135, line: 80, baseType: !393, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1197, file: !1135, line: 81, baseType: !393, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1197, file: !1135, line: 82, baseType: !393, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1197, file: !1135, line: 83, baseType: !393, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1197, file: !1135, line: 84, baseType: !393, size: 32, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1197, file: !1135, line: 85, baseType: !393, size: 32, offset: 160)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1197, file: !1135, line: 86, baseType: !393, size: 32, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1197, file: !1135, line: 88, baseType: !1153, size: 640, offset: 224)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1197, file: !1135, line: 89, baseType: !530, size: 8, offset: 864)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1197, file: !1135, line: 90, baseType: !530, size: 8, offset: 872)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1197, file: !1135, line: 91, baseType: !530, size: 8, offset: 880)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1197, file: !1135, line: 92, baseType: !530, size: 8, offset: 888)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1197, file: !1135, line: 93, baseType: !530, size: 8, offset: 896)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1197, file: !1135, line: 94, baseType: !530, size: 8, offset: 904)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1197, file: !1135, line: 95, baseType: !1214, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1216, line: 11, size: 128, elements: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1215, file: !1216, line: 12, baseType: !172, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1215, file: !1216, line: 13, baseType: !1220, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1222, line: 56, size: 1344, elements: !1223)
!1222 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1221, file: !1222, line: 61, baseType: !61, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1221, file: !1222, line: 62, baseType: !61, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1221, file: !1222, line: 63, baseType: !61, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1221, file: !1222, line: 64, baseType: !61, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1221, file: !1222, line: 65, baseType: !61, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1221, file: !1222, line: 66, baseType: !61, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1221, file: !1222, line: 68, baseType: !61, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1221, file: !1222, line: 69, baseType: !61, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1221, file: !1222, line: 70, baseType: !61, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1221, file: !1222, line: 71, baseType: !61, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1221, file: !1222, line: 72, baseType: !61, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1221, file: !1222, line: 73, baseType: !61, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1221, file: !1222, line: 74, baseType: !61, size: 64, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1221, file: !1222, line: 75, baseType: !61, size: 64, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1221, file: !1222, line: 76, baseType: !61, size: 64, offset: 896)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1221, file: !1222, line: 81, baseType: !61, size: 64, offset: 960)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1221, file: !1222, line: 83, baseType: !61, size: 64, offset: 1024)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1221, file: !1222, line: 84, baseType: !61, size: 64, offset: 1088)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !1222, line: 85, baseType: !61, size: 64, offset: 1152)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1221, file: !1222, line: 86, baseType: !61, size: 64, offset: 1216)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1221, file: !1222, line: 87, baseType: !61, size: 64, offset: 1280)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1197, file: !1135, line: 96, baseType: !393, size: 32, offset: 1024)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1140, file: !1135, line: 308, baseType: !1247, size: 4608, align: 512)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1135, line: 289, size: 4608, align: 512, elements: !1248)
!1248 = !{!1249, !1250, !1259}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1247, file: !1135, line: 290, baseType: !1158, size: 4096, align: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1247, file: !1135, line: 291, baseType: !1251, size: 512, offset: 4096)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1135, line: 268, size: 512, elements: !1252)
!1252 = !{!1253, !1254, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1251, file: !1135, line: 269, baseType: !255, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1251, file: !1135, line: 270, baseType: !255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1251, file: !1135, line: 271, baseType: !1256, size: 384, offset: 128)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 384, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 6)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1247, file: !1135, line: 292, baseType: !1260, offset: 4608)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1140, file: !1135, line: 309, baseType: !1264, size: 32768)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 32768, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 4096)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !227, line: 378, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !376, file: !227, line: 384, baseType: !699, size: 192, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !247, file: !227, line: 500, baseType: !95, offset: 6656)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !247, file: !227, line: 501, baseType: !1272, size: 64, offset: 6656)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !227, line: 387, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !247, file: !227, line: 516, baseType: !1275, size: 64, offset: 6720)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1277, line: 18, flags: DIFlagFwdDecl)
!1277 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !247, file: !227, line: 519, baseType: !214, size: 64, offset: 6784)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !247, file: !227, line: 521, baseType: !1280, size: 64, offset: 6848)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !227, line: 521, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !247, file: !227, line: 545, baseType: !277, size: 32, offset: 6912)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !247, file: !227, line: 548, baseType: !963, size: 8, offset: 6944)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !247, file: !227, line: 550, baseType: !1285, offset: 6952)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1286, line: 142, elements: !109)
!1286 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !247, file: !227, line: 554, baseType: !1288, size: 256, offset: 6976)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1289, line: 102, size: 256, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1290 = !{!1291, !1292, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1288, file: !1289, line: 103, baseType: !285, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1288, file: !1289, line: 104, baseType: !82, size: 128, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1288, file: !1289, line: 105, baseType: !1294, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1289, line: 21, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !247, file: !227, line: 557, baseType: !393, size: 32, offset: 7232)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !244, file: !227, line: 565, baseType: !1301, offset: 7296)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: -1)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !226, file: !227, line: 333, baseType: !1305, size: 64, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !216, line: 284, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !216, line: 284, size: 64, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1306, file: !216, line: 284, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !275, line: 19, baseType: !61)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !226, file: !227, line: 334, baseType: !61, size: 64, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !226, file: !227, line: 343, baseType: !1312, size: 256, offset: 704)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !227, line: 340, size: 256, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1312, file: !227, line: 341, baseType: !234, size: 192, align: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1312, file: !227, line: 342, baseType: !61, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !226, file: !227, line: 351, baseType: !82, size: 128, offset: 960)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !226, file: !227, line: 353, baseType: !1318, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !227, line: 353, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !226, file: !227, line: 356, baseType: !1321, size: 64, offset: 1152)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !227, line: 356, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !226, file: !227, line: 359, baseType: !61, size: 64, offset: 1216)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !226, file: !227, line: 361, baseType: !214, size: 64, offset: 1280)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !226, file: !227, line: 362, baseType: !60, size: 64, offset: 1344)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !226, file: !227, line: 365, baseType: !285, size: 64, offset: 1408)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !226, file: !227, line: 373, baseType: !1329, offset: 1472)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !227, line: 296, elements: !109)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !193, file: !162, line: 90, baseType: !188, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !193, file: !162, line: 91, baseType: !1332, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !152, file: !75, line: 143, baseType: !1334, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!1337, !88}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1340)
!1340 = !{!1341, !1342, !1346, !1350, !1358, !1362}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1339, file: !16, line: 40, baseType: !15, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1339, file: !16, line: 41, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!963}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1339, file: !16, line: 42, baseType: !1347, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!60}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1339, file: !16, line: 43, baseType: !1351, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1354, !1356}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1339, file: !16, line: 44, baseType: !1359, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1354}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1339, file: !16, line: 45, baseType: !1363, size: 64, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !60}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !152, file: !75, line: 144, baseType: !1367, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1354, !88}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !152, file: !75, line: 145, baseType: !1371, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !88, !1374, !1380}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1277, line: 23, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1277, line: 21, size: 32, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1376, file: !1277, line: 22, baseType: !1379, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !55, line: 32, baseType: !859)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1277, line: 28, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1277, line: 26, size: 32, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1382, file: !1277, line: 27, baseType: !1385, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !55, line: 33, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !170, line: 50, baseType: !5)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !74, file: !75, line: 70, baseType: !1388, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1390, line: 123, size: 1024, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1533, !1534, !1535, !1536, !1537}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1389, file: !1390, line: 124, baseType: !277, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1389, file: !1390, line: 125, baseType: !277, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1389, file: !1390, line: 135, baseType: !1388, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1389, file: !1390, line: 136, baseType: !78, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1389, file: !1390, line: 138, baseType: !234, size: 192, align: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1389, file: !1390, line: 140, baseType: !1354, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1389, file: !1390, line: 141, baseType: !5, size: 32, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 142, baseType: !1400, size: 256, offset: 512)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 142, size: 256, elements: !1401)
!1401 = !{!1402, !1456, !1460}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1400, file: !1390, line: 143, baseType: !1403, size: 192)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1390, line: 91, size: 192, elements: !1404)
!1404 = !{!1405, !1406, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1403, file: !1390, line: 92, baseType: !61, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1403, file: !1390, line: 94, baseType: !251, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1403, file: !1390, line: 100, baseType: !1408, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1390, line: 180, size: 704, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1426, !1427, !1428, !1454, !1455}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1409, file: !1390, line: 182, baseType: !1388, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1409, file: !1390, line: 183, baseType: !5, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1409, file: !1390, line: 186, baseType: !1414, size: 192, offset: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1415, line: 19, size: 192, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1416 = !{!1417, !1424, !1425}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1414, file: !1415, line: 20, baseType: !1418, size: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1419, line: 292, size: 128, elements: !1420)
!1419 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1420 = !{!1421, !1422, !1423}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1418, file: !1419, line: 293, baseType: !95)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1418, file: !1419, line: 295, baseType: !54, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1418, file: !1419, line: 296, baseType: !60, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1414, file: !1415, line: 21, baseType: !5, size: 32, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1414, file: !1415, line: 22, baseType: !5, size: 32, offset: 160)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1409, file: !1390, line: 187, baseType: !393, size: 32, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1409, file: !1390, line: 188, baseType: !393, size: 32, offset: 352)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1409, file: !1390, line: 189, baseType: !1429, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1390, line: 168, size: 320, elements: !1431)
!1431 = !{!1432, !1438, !1442, !1446, !1450}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1430, file: !1390, line: 169, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!121, !1436, !1408}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !216, line: 539, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1430, file: !1390, line: 171, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!121, !1388, !78, !178}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1430, file: !1390, line: 173, baseType: !1443, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!121, !1388}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1430, file: !1390, line: 174, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!121, !1388, !1388, !78}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1430, file: !1390, line: 176, baseType: !1451, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!121, !1436, !1388, !1408}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1409, file: !1390, line: 192, baseType: !82, size: 128, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1409, file: !1390, line: 194, baseType: !670, size: 128, offset: 576)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1400, file: !1390, line: 144, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1390, line: 103, size: 64, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1457, file: !1390, line: 104, baseType: !1388, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1400, file: !1390, line: 145, baseType: !1461, size: 256)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1390, line: 107, size: 256, elements: !1462)
!1462 = !{!1463, !1528, !1531, !1532}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1461, file: !1390, line: 108, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1390, line: 217, size: 768, elements: !1467)
!1467 = !{!1468, !1488, !1492, !1496, !1501, !1505, !1509, !1513, !1514, !1515, !1516, !1524}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1466, file: !1390, line: 222, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!121, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1390, line: 197, size: 1088, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1473, file: !1390, line: 199, baseType: !1388, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1473, file: !1390, line: 200, baseType: !214, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1473, file: !1390, line: 201, baseType: !1436, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1473, file: !1390, line: 202, baseType: !60, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1473, file: !1390, line: 205, baseType: !354, size: 192, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1473, file: !1390, line: 206, baseType: !354, size: 192, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1473, file: !1390, line: 207, baseType: !121, size: 32, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1473, file: !1390, line: 208, baseType: !82, size: 128, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1473, file: !1390, line: 209, baseType: !137, size: 64, offset: 832)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1473, file: !1390, line: 211, baseType: !184, size: 64, offset: 896)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1473, file: !1390, line: 212, baseType: !963, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1473, file: !1390, line: 213, baseType: !963, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1473, file: !1390, line: 214, baseType: !1321, size: 64, offset: 1024)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1466, file: !1390, line: 223, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1472}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1466, file: !1390, line: 236, baseType: !1493, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!121, !1436, !60}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1466, file: !1390, line: 238, baseType: !1497, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!60, !1436, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1466, file: !1390, line: 239, baseType: !1502, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!60, !1436, !60, !1500}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1466, file: !1390, line: 240, baseType: !1506, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1436, !60}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1466, file: !1390, line: 242, baseType: !1510, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!168, !1472, !137, !184, !217}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1466, file: !1390, line: 252, baseType: !184, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1466, file: !1390, line: 259, baseType: !963, size: 8, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1466, file: !1390, line: 260, baseType: !1510, size: 64, offset: 576)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1466, file: !1390, line: 263, baseType: !1517, size: 64, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1520, !1472, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1521, line: 52, baseType: !5)
!1521 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1390, line: 27, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1466, file: !1390, line: 266, baseType: !1525, size: 64, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!121, !1472, !225}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1461, file: !1390, line: 109, baseType: !1529, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1390, line: 31, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1461, file: !1390, line: 110, baseType: !217, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1461, file: !1390, line: 111, baseType: !1388, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1389, file: !1390, line: 148, baseType: !60, size: 64, offset: 768)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1389, file: !1390, line: 154, baseType: !255, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1389, file: !1390, line: 156, baseType: !179, size: 16, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1389, file: !1390, line: 157, baseType: !178, size: 16, offset: 912)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1389, file: !1390, line: 158, baseType: !1538, size: 64, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1390, line: 32, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !74, file: !75, line: 71, baseType: !1541, size: 32, offset: 448)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1542, line: 19, size: 32, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1541, file: !1542, line: 20, baseType: !399, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !74, file: !75, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !74, file: !75, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !74, file: !75, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !74, file: !75, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !74, file: !75, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !28, line: 463, baseType: !70, size: 64, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !71, file: !28, line: 465, baseType: !1552, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !71, file: !28, line: 467, baseType: !78, size: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !28, line: 468, baseType: !1556, size: 64, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1566, !1571, !1575}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1558, file: !28, line: 88, baseType: !78, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1558, file: !28, line: 89, baseType: !190, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1558, file: !28, line: 90, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!121, !70, !132}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1558, file: !28, line: 91, baseType: !1567, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!137, !70, !1570, !1374, !1380}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1558, file: !28, line: 93, baseType: !1572, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !70}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1558, file: !28, line: 95, baseType: !1576, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1579)
!1579 = !{!1580, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1578, file: !35, line: 279, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!121, !70}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1578, file: !35, line: 280, baseType: !1572, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1578, file: !35, line: 281, baseType: !1581, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1578, file: !35, line: 282, baseType: !1581, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1578, file: !35, line: 283, baseType: !1581, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1578, file: !35, line: 284, baseType: !1581, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1578, file: !35, line: 285, baseType: !1581, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1578, file: !35, line: 286, baseType: !1581, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1578, file: !35, line: 287, baseType: !1581, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1578, file: !35, line: 288, baseType: !1581, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1578, file: !35, line: 289, baseType: !1581, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1578, file: !35, line: 290, baseType: !1581, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1578, file: !35, line: 291, baseType: !1581, size: 64, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1578, file: !35, line: 292, baseType: !1581, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1578, file: !35, line: 293, baseType: !1581, size: 64, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1578, file: !35, line: 294, baseType: !1581, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1578, file: !35, line: 295, baseType: !1581, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1578, file: !35, line: 296, baseType: !1581, size: 64, offset: 1088)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1578, file: !35, line: 297, baseType: !1581, size: 64, offset: 1152)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1578, file: !35, line: 298, baseType: !1581, size: 64, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1578, file: !35, line: 299, baseType: !1581, size: 64, offset: 1280)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1578, file: !35, line: 300, baseType: !1581, size: 64, offset: 1344)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1578, file: !35, line: 301, baseType: !1581, size: 64, offset: 1408)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !71, file: !28, line: 470, baseType: !1607, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1609, line: 82, size: 1408, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1677, !1680, !1683}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1608, file: !1609, line: 83, baseType: !78, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1608, file: !1609, line: 84, baseType: !78, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1608, file: !1609, line: 85, baseType: !70, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1608, file: !1609, line: 86, baseType: !190, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1608, file: !1609, line: 87, baseType: !190, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1608, file: !1609, line: 88, baseType: !190, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1608, file: !1609, line: 90, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!121, !70, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1630, !1631, !1632, !1633, !1637, !1641, !1642, !1643, !1644, !1645, !1653, !1654, !1655, !1656, !1657, !1658}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1622, file: !22, line: 96, baseType: !78, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1622, file: !22, line: 97, baseType: !1607, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1622, file: !22, line: 99, baseType: !1627, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1629, line: 76, flags: DIFlagFwdDecl)
!1629 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1622, file: !22, line: 100, baseType: !78, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1622, file: !22, line: 102, baseType: !963, size: 8, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1622, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1622, file: !22, line: 105, baseType: !1634, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !22, line: 105, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1622, file: !22, line: 106, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !22, line: 106, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1622, file: !22, line: 108, baseType: !1581, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1622, file: !22, line: 109, baseType: !1572, size: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1622, file: !22, line: 110, baseType: !1581, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1622, file: !22, line: 111, baseType: !1572, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1622, file: !22, line: 112, baseType: !1646, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!121, !70, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1651)
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1650, file: !35, line: 51, baseType: !121, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1622, file: !22, line: 113, baseType: !1581, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1622, file: !22, line: 114, baseType: !190, size: 64, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1622, file: !22, line: 115, baseType: !190, size: 64, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1622, file: !22, line: 117, baseType: !1576, size: 64, offset: 960)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1622, file: !22, line: 118, baseType: !1572, size: 64, offset: 1024)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1622, file: !22, line: 120, baseType: !1659, size: 64, offset: 1088)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1608, file: !1609, line: 91, baseType: !1563, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1608, file: !1609, line: 92, baseType: !1581, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1608, file: !1609, line: 93, baseType: !1572, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1608, file: !1609, line: 94, baseType: !1581, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1608, file: !1609, line: 95, baseType: !1572, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1608, file: !1609, line: 97, baseType: !1581, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1608, file: !1609, line: 98, baseType: !1581, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1608, file: !1609, line: 100, baseType: !1646, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1608, file: !1609, line: 101, baseType: !1581, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1608, file: !1609, line: 103, baseType: !1581, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1608, file: !1609, line: 105, baseType: !1581, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1608, file: !1609, line: 107, baseType: !1576, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1608, file: !1609, line: 109, baseType: !1674, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1609, line: 109, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1608, file: !1609, line: 111, baseType: !1678, size: 64, offset: 1280)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1609, line: 111, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1608, file: !1609, line: 112, baseType: !1681, offset: 1344)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1682, line: 187, elements: !109)
!1682 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1608, file: !1609, line: 114, baseType: !963, size: 8, offset: 1344)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !71, file: !28, line: 471, baseType: !1621, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !71, file: !28, line: 473, baseType: !60, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !71, file: !28, line: 475, baseType: !60, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !71, file: !28, line: 480, baseType: !354, size: 192, offset: 1024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !71, file: !28, line: 484, baseType: !1689, size: 576, offset: 1216)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1689, file: !28, line: 362, baseType: !82, size: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1689, file: !28, line: 363, baseType: !82, size: 128, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1689, file: !28, line: 364, baseType: !82, size: 128, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1689, file: !28, line: 365, baseType: !82, size: 128, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1689, file: !28, line: 366, baseType: !963, size: 8, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1689, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !71, file: !28, line: 485, baseType: !1698, size: 2304, offset: 1792)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1795, !1799}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1698, file: !35, line: 566, baseType: !1649, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1698, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1698, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1698, file: !35, line: 569, baseType: !963, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1698, file: !35, line: 570, baseType: !963, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1698, file: !35, line: 571, baseType: !963, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1698, file: !35, line: 572, baseType: !963, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1698, file: !35, line: 573, baseType: !963, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1698, file: !35, line: 574, baseType: !963, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1698, file: !35, line: 575, baseType: !963, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1698, file: !35, line: 576, baseType: !963, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1698, file: !35, line: 577, baseType: !393, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1698, file: !35, line: 578, baseType: !95, offset: 96)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1698, file: !35, line: 580, baseType: !82, size: 128, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1698, file: !35, line: 581, baseType: !699, size: 192, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1698, file: !35, line: 582, baseType: !1716, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1718, line: 43, size: 1472, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1727, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1717, file: !1718, line: 44, baseType: !78, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1717, file: !1718, line: 45, baseType: !121, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1717, file: !1718, line: 46, baseType: !82, size: 128, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1717, file: !1718, line: 47, baseType: !95, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1717, file: !1718, line: 48, baseType: !1725, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1717, file: !1718, line: 49, baseType: !1728, size: 320, offset: 320)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1729, line: 11, size: 320, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !{!1731, !1732, !1733, !1738}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1728, file: !1729, line: 16, baseType: !663, size: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1728, file: !1729, line: 17, baseType: !61, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1728, file: !1729, line: 18, baseType: !1734, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !1729, line: 19, baseType: !393, size: 32, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1717, file: !1718, line: 50, baseType: !61, size: 64, offset: 640)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1717, file: !1718, line: 51, baseType: !469, size: 64, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1717, file: !1718, line: 52, baseType: !469, size: 64, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1717, file: !1718, line: 53, baseType: !469, size: 64, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1717, file: !1718, line: 54, baseType: !469, size: 64, offset: 896)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1717, file: !1718, line: 55, baseType: !469, size: 64, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1717, file: !1718, line: 56, baseType: !61, size: 64, offset: 1024)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1717, file: !1718, line: 57, baseType: !61, size: 64, offset: 1088)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1717, file: !1718, line: 58, baseType: !61, size: 64, offset: 1152)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1717, file: !1718, line: 59, baseType: !61, size: 64, offset: 1216)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1717, file: !1718, line: 60, baseType: !61, size: 64, offset: 1280)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1717, file: !1718, line: 61, baseType: !70, size: 64, offset: 1344)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1717, file: !1718, line: 62, baseType: !963, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1717, file: !1718, line: 63, baseType: !963, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1698, file: !35, line: 583, baseType: !963, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1698, file: !35, line: 584, baseType: !963, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1698, file: !35, line: 585, baseType: !963, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1698, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1698, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1698, file: !35, line: 592, baseType: !461, size: 512, offset: 576)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1698, file: !35, line: 593, baseType: !255, size: 64, offset: 1088)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1698, file: !35, line: 594, baseType: !1288, size: 256, offset: 1152)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1698, file: !35, line: 595, baseType: !670, size: 128, offset: 1408)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1698, file: !35, line: 596, baseType: !1725, size: 64, offset: 1536)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1698, file: !35, line: 597, baseType: !277, size: 32, offset: 1600)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1698, file: !35, line: 598, baseType: !277, size: 32, offset: 1632)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1698, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1698, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1698, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1698, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1698, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1698, file: !35, line: 604, baseType: !963, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1698, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1698, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1698, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1698, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1698, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1698, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1698, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1698, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1698, file: !35, line: 613, baseType: !121, size: 32, offset: 1792)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1698, file: !35, line: 614, baseType: !121, size: 32, offset: 1824)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1698, file: !35, line: 615, baseType: !255, size: 64, offset: 1856)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1698, file: !35, line: 616, baseType: !255, size: 64, offset: 1920)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1698, file: !35, line: 617, baseType: !255, size: 64, offset: 1984)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1698, file: !35, line: 618, baseType: !255, size: 64, offset: 2048)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1698, file: !35, line: 620, baseType: !1786, size: 64, offset: 2112)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1787, file: !35, line: 537, baseType: !95)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1787, file: !35, line: 538, baseType: !5, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1787, file: !35, line: 540, baseType: !82, size: 128, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1787, file: !35, line: 543, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1698, file: !35, line: 621, baseType: !1796, size: 64, offset: 2176)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !70, !623}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1698, file: !35, line: 622, baseType: !1800, size: 64, offset: 2240)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !71, file: !28, line: 486, baseType: !1803, size: 64, offset: 4096)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1812, !1813, !1814}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1804, file: !35, line: 643, baseType: !1578, size: 1472)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1804, file: !35, line: 644, baseType: !1581, size: 64, offset: 1472)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1804, file: !35, line: 645, baseType: !1809, size: 64, offset: 1536)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !70, !963}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1804, file: !35, line: 646, baseType: !1581, size: 64, offset: 1600)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1804, file: !35, line: 647, baseType: !1572, size: 64, offset: 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1804, file: !35, line: 648, baseType: !1572, size: 64, offset: 1728)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !71, file: !28, line: 493, baseType: !1816, size: 64, offset: 4160)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !71, file: !28, line: 499, baseType: !82, size: 128, offset: 4224)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !71, file: !28, line: 502, baseType: !1820, size: 64, offset: 4352)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1822)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !71, file: !28, line: 504, baseType: !1824, size: 64, offset: 4416)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !71, file: !28, line: 505, baseType: !255, size: 64, offset: 4480)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !71, file: !28, line: 510, baseType: !255, size: 64, offset: 4544)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !71, file: !28, line: 511, baseType: !1828, size: 64, offset: 4608)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1830)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !71, file: !28, line: 513, baseType: !1832, size: 64, offset: 4672)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1833, file: !28, line: 293, baseType: !5, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1833, file: !28, line: 294, baseType: !61, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !71, file: !28, line: 515, baseType: !82, size: 128, offset: 4736)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !71, file: !28, line: 526, baseType: !1839, offset: 4864)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1840, line: 5, elements: !109)
!1840 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !71, file: !28, line: 528, baseType: !1842, size: 64, offset: 4864)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !59, line: 18, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !71, file: !28, line: 529, baseType: !1845, size: 64, offset: 4928)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1609, line: 22, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !71, file: !28, line: 534, baseType: !1848, size: 32, offset: 4992)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !55, line: 16, baseType: !1849)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !55, line: 13, baseType: !393)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !71, file: !28, line: 535, baseType: !393, size: 32, offset: 5024)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !71, file: !28, line: 537, baseType: !95, offset: 5056)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !71, file: !28, line: 538, baseType: !82, size: 128, offset: 5056)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !71, file: !28, line: 540, baseType: !1854, size: 64, offset: 5184)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1856, line: 54, size: 960, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1868, !1872, !1873, !1874, !1875, !1879, !1883, !1884}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1855, file: !1856, line: 55, baseType: !78, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1855, file: !1856, line: 56, baseType: !1627, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1855, file: !1856, line: 58, baseType: !190, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1855, file: !1856, line: 59, baseType: !190, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1855, file: !1856, line: 60, baseType: !88, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1855, file: !1856, line: 62, baseType: !1563, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1855, file: !1856, line: 63, baseType: !1865, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!137, !70, !1570}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1855, file: !1856, line: 65, baseType: !1869, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !1854}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1855, file: !1856, line: 66, baseType: !1572, size: 64, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1855, file: !1856, line: 68, baseType: !1581, size: 64, offset: 576)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1855, file: !1856, line: 70, baseType: !1337, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1855, file: !1856, line: 71, baseType: !1876, size: 64, offset: 704)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1354, !70}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1855, file: !1856, line: 73, baseType: !1880, size: 64, offset: 768)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !70, !1374, !1380}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1855, file: !1856, line: 75, baseType: !1576, size: 64, offset: 832)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1855, file: !1856, line: 77, baseType: !1678, size: 64, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !71, file: !28, line: 541, baseType: !190, size: 64, offset: 5248)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !71, file: !28, line: 543, baseType: !1572, size: 64, offset: 5312)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !71, file: !28, line: 544, baseType: !1888, size: 64, offset: 5376)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !71, file: !28, line: 545, baseType: !1891, size: 64, offset: 5440)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !71, file: !28, line: 547, baseType: !963, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !71, file: !28, line: 548, baseType: !963, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !71, file: !28, line: 549, baseType: !963, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !71, file: !28, line: 550, baseType: !963, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1897 = !DILocalVariable(name: "dev", arg: 1, scope: !67, file: !1, line: 12, type: !70)
!1898 = !DILocation(line: 12, column: 41, scope: !67)
!1899 = !DILocalVariable(name: "id", arg: 2, scope: !67, file: !1, line: 12, type: !78)
!1900 = !DILocation(line: 12, column: 58, scope: !67)
!1901 = !DILocalVariable(name: "ptr", scope: !67, file: !1, line: 14, type: !56)
!1902 = !DILocation(line: 14, column: 15, scope: !67)
!1903 = !DILocalVariable(name: "clk", scope: !67, file: !1, line: 14, type: !57)
!1904 = !DILocation(line: 14, column: 21, scope: !67)
!1905 = !DILocation(line: 16, column: 8, scope: !67)
!1906 = !DILocation(line: 16, column: 6, scope: !67)
!1907 = !DILocation(line: 17, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !67, file: !1, line: 17, column: 6)
!1909 = !DILocation(line: 17, column: 6, scope: !67)
!1910 = !DILocation(line: 18, column: 10, scope: !1908)
!1911 = !DILocation(line: 18, column: 3, scope: !1908)
!1912 = !DILocation(line: 20, column: 16, scope: !67)
!1913 = !DILocation(line: 20, column: 21, scope: !67)
!1914 = !DILocation(line: 20, column: 8, scope: !67)
!1915 = !DILocation(line: 20, column: 6, scope: !67)
!1916 = !DILocation(line: 21, column: 14, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !67, file: !1, line: 21, column: 6)
!1918 = !DILocation(line: 21, column: 7, scope: !1917)
!1919 = !DILocation(line: 21, column: 6, scope: !67)
!1920 = !DILocation(line: 22, column: 10, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 21, column: 20)
!1922 = !DILocation(line: 22, column: 4, scope: !1921)
!1923 = !DILocation(line: 22, column: 8, scope: !1921)
!1924 = !DILocation(line: 23, column: 14, scope: !1921)
!1925 = !DILocation(line: 23, column: 19, scope: !1921)
!1926 = !DILocation(line: 23, column: 3, scope: !1921)
!1927 = !DILocation(line: 24, column: 2, scope: !1921)
!1928 = !DILocation(line: 25, column: 15, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 24, column: 9)
!1930 = !DILocation(line: 25, column: 3, scope: !1929)
!1931 = !DILocation(line: 28, column: 9, scope: !67)
!1932 = !DILocation(line: 28, column: 2, scope: !67)
!1933 = !DILocation(line: 29, column: 1, scope: !67)
!1934 = distinct !DISubprogram(name: "devres_alloc", scope: !28, file: !28, line: 178, type: !1935, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !109)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!60, !1937, !184, !54}
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !28, line: 165, baseType: !1938)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !70, !60}
!1941 = !DILocalVariable(name: "release", arg: 1, scope: !1934, file: !28, line: 178, type: !1937)
!1942 = !DILocation(line: 178, column: 47, scope: !1934)
!1943 = !DILocalVariable(name: "size", arg: 2, scope: !1934, file: !28, line: 178, type: !184)
!1944 = !DILocation(line: 178, column: 63, scope: !1934)
!1945 = !DILocalVariable(name: "gfp", arg: 3, scope: !1934, file: !28, line: 178, type: !54)
!1946 = !DILocation(line: 178, column: 75, scope: !1934)
!1947 = !DILocation(line: 180, column: 27, scope: !1934)
!1948 = !DILocation(line: 180, column: 36, scope: !1934)
!1949 = !DILocation(line: 180, column: 42, scope: !1934)
!1950 = !DILocation(line: 180, column: 9, scope: !1934)
!1951 = !DILocation(line: 180, column: 2, scope: !1934)
!1952 = distinct !DISubprogram(name: "devm_clk_release", scope: !1, file: !1, line: 7, type: !1939, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !109)
!1953 = !DILocalVariable(name: "dev", arg: 1, scope: !1952, file: !1, line: 7, type: !70)
!1954 = !DILocation(line: 7, column: 45, scope: !1952)
!1955 = !DILocalVariable(name: "res", arg: 2, scope: !1952, file: !1, line: 7, type: !60)
!1956 = !DILocation(line: 7, column: 56, scope: !1952)
!1957 = !DILocation(line: 9, column: 26, scope: !1952)
!1958 = !DILocation(line: 9, column: 11, scope: !1952)
!1959 = !DILocation(line: 9, column: 10, scope: !1952)
!1960 = !DILocation(line: 9, column: 2, scope: !1952)
!1961 = !DILocation(line: 10, column: 1, scope: !1952)
!1962 = distinct !DISubprogram(name: "ERR_PTR", scope: !1963, file: !1963, line: 24, type: !1964, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !109)
!1963 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!60, !172}
!1966 = !DILocalVariable(name: "error", arg: 1, scope: !1962, file: !1963, line: 24, type: !172)
!1967 = !DILocation(line: 24, column: 48, scope: !1962)
!1968 = !DILocation(line: 26, column: 18, scope: !1962)
!1969 = !DILocation(line: 26, column: 9, scope: !1962)
!1970 = !DILocation(line: 26, column: 2, scope: !1962)
!1971 = distinct !DISubprogram(name: "IS_ERR", scope: !1963, file: !1963, line: 34, type: !1972, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !109)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!963, !1354}
!1974 = !DILocalVariable(name: "ptr", arg: 1, scope: !1971, file: !1963, line: 34, type: !1354)
!1975 = !DILocation(line: 34, column: 60, scope: !1971)
!1976 = !DILocation(line: 36, column: 9, scope: !1971)
!1977 = !DILocation(line: 36, column: 2, scope: !1971)
!1978 = distinct !DISubprogram(name: "devm_clk_get_optional", scope: !1, file: !1, line: 32, type: !68, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !109)
!1979 = !DILocalVariable(name: "dev", arg: 1, scope: !1978, file: !1, line: 32, type: !70)
!1980 = !DILocation(line: 32, column: 50, scope: !1978)
!1981 = !DILocalVariable(name: "id", arg: 2, scope: !1978, file: !1, line: 32, type: !78)
!1982 = !DILocation(line: 32, column: 67, scope: !1978)
!1983 = !DILocalVariable(name: "clk", scope: !1978, file: !1, line: 34, type: !57)
!1984 = !DILocation(line: 34, column: 14, scope: !1978)
!1985 = !DILocation(line: 34, column: 33, scope: !1978)
!1986 = !DILocation(line: 34, column: 38, scope: !1978)
!1987 = !DILocation(line: 34, column: 20, scope: !1978)
!1988 = !DILocation(line: 36, column: 6, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 36, column: 6)
!1990 = !DILocation(line: 36, column: 13, scope: !1989)
!1991 = !DILocation(line: 36, column: 10, scope: !1989)
!1992 = !DILocation(line: 36, column: 6, scope: !1978)
!1993 = !DILocation(line: 37, column: 3, scope: !1989)
!1994 = !DILocation(line: 39, column: 9, scope: !1978)
!1995 = !DILocation(line: 39, column: 2, scope: !1978)
!1996 = !DILocation(line: 40, column: 1, scope: !1978)
!1997 = distinct !DISubprogram(name: "devm_clk_bulk_get", scope: !1, file: !1, line: 81, type: !1998, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !109)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!121, !70, !121, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_bulk_data", file: !59, line: 87, size: 128, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2001, file: !59, line: 88, baseType: !78, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2001, file: !59, line: 89, baseType: !57, size: 64, offset: 64)
!2005 = !DILocalVariable(name: "dev", arg: 1, scope: !1997, file: !1, line: 81, type: !70)
!2006 = !DILocation(line: 81, column: 51, scope: !1997)
!2007 = !DILocalVariable(name: "num_clks", arg: 2, scope: !1997, file: !1, line: 81, type: !121)
!2008 = !DILocation(line: 81, column: 60, scope: !1997)
!2009 = !DILocalVariable(name: "clks", arg: 3, scope: !1997, file: !1, line: 82, type: !2000)
!2010 = !DILocation(line: 82, column: 31, scope: !1997)
!2011 = !DILocation(line: 84, column: 29, scope: !1997)
!2012 = !DILocation(line: 84, column: 34, scope: !1997)
!2013 = !DILocation(line: 84, column: 44, scope: !1997)
!2014 = !DILocation(line: 84, column: 9, scope: !1997)
!2015 = !DILocation(line: 84, column: 2, scope: !1997)
!2016 = distinct !DISubprogram(name: "__devm_clk_bulk_get", scope: !1, file: !1, line: 55, type: !2017, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !109)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!121, !70, !121, !2000, !963}
!2019 = !DILocalVariable(name: "dev", arg: 1, scope: !2016, file: !1, line: 55, type: !70)
!2020 = !DILocation(line: 55, column: 47, scope: !2016)
!2021 = !DILocalVariable(name: "num_clks", arg: 2, scope: !2016, file: !1, line: 55, type: !121)
!2022 = !DILocation(line: 55, column: 56, scope: !2016)
!2023 = !DILocalVariable(name: "clks", arg: 3, scope: !2016, file: !1, line: 56, type: !2000)
!2024 = !DILocation(line: 56, column: 33, scope: !2016)
!2025 = !DILocalVariable(name: "optional", arg: 4, scope: !2016, file: !1, line: 56, type: !963)
!2026 = !DILocation(line: 56, column: 44, scope: !2016)
!2027 = !DILocalVariable(name: "devres", scope: !2016, file: !1, line: 58, type: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_bulk_devres", file: !1, line: 43, size: 128, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "clks", scope: !2029, file: !1, line: 44, baseType: !2000, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "num_clks", scope: !2029, file: !1, line: 45, baseType: !121, size: 32, offset: 64)
!2033 = !DILocation(line: 58, column: 26, scope: !2016)
!2034 = !DILocalVariable(name: "ret", scope: !2016, file: !1, line: 59, type: !121)
!2035 = !DILocation(line: 59, column: 6, scope: !2016)
!2036 = !DILocation(line: 61, column: 11, scope: !2016)
!2037 = !DILocation(line: 61, column: 9, scope: !2016)
!2038 = !DILocation(line: 63, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2016, file: !1, line: 63, column: 6)
!2040 = !DILocation(line: 63, column: 6, scope: !2016)
!2041 = !DILocation(line: 64, column: 3, scope: !2039)
!2042 = !DILocation(line: 66, column: 6, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2016, file: !1, line: 66, column: 6)
!2044 = !DILocation(line: 66, column: 6, scope: !2016)
!2045 = !DILocation(line: 67, column: 31, scope: !2043)
!2046 = !DILocation(line: 67, column: 36, scope: !2043)
!2047 = !DILocation(line: 67, column: 46, scope: !2043)
!2048 = !DILocation(line: 67, column: 9, scope: !2043)
!2049 = !DILocation(line: 67, column: 7, scope: !2043)
!2050 = !DILocation(line: 67, column: 3, scope: !2043)
!2051 = !DILocation(line: 69, column: 22, scope: !2043)
!2052 = !DILocation(line: 69, column: 27, scope: !2043)
!2053 = !DILocation(line: 69, column: 37, scope: !2043)
!2054 = !DILocation(line: 69, column: 9, scope: !2043)
!2055 = !DILocation(line: 69, column: 7, scope: !2043)
!2056 = !DILocation(line: 70, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2016, file: !1, line: 70, column: 6)
!2058 = !DILocation(line: 70, column: 6, scope: !2016)
!2059 = !DILocation(line: 71, column: 18, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 70, column: 12)
!2061 = !DILocation(line: 71, column: 3, scope: !2060)
!2062 = !DILocation(line: 71, column: 11, scope: !2060)
!2063 = !DILocation(line: 71, column: 16, scope: !2060)
!2064 = !DILocation(line: 72, column: 22, scope: !2060)
!2065 = !DILocation(line: 72, column: 3, scope: !2060)
!2066 = !DILocation(line: 72, column: 11, scope: !2060)
!2067 = !DILocation(line: 72, column: 20, scope: !2060)
!2068 = !DILocation(line: 73, column: 14, scope: !2060)
!2069 = !DILocation(line: 73, column: 19, scope: !2060)
!2070 = !DILocation(line: 73, column: 3, scope: !2060)
!2071 = !DILocation(line: 74, column: 2, scope: !2060)
!2072 = !DILocation(line: 75, column: 15, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 74, column: 9)
!2074 = !DILocation(line: 75, column: 3, scope: !2073)
!2075 = !DILocation(line: 78, column: 9, scope: !2016)
!2076 = !DILocation(line: 78, column: 2, scope: !2016)
!2077 = !DILocation(line: 79, column: 1, scope: !2016)
!2078 = distinct !DISubprogram(name: "devm_clk_bulk_get_optional", scope: !1, file: !1, line: 88, type: !1998, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !109)
!2079 = !DILocalVariable(name: "dev", arg: 1, scope: !2078, file: !1, line: 88, type: !70)
!2080 = !DILocation(line: 88, column: 60, scope: !2078)
!2081 = !DILocalVariable(name: "num_clks", arg: 2, scope: !2078, file: !1, line: 88, type: !121)
!2082 = !DILocation(line: 88, column: 69, scope: !2078)
!2083 = !DILocalVariable(name: "clks", arg: 3, scope: !2078, file: !1, line: 89, type: !2000)
!2084 = !DILocation(line: 89, column: 31, scope: !2078)
!2085 = !DILocation(line: 91, column: 29, scope: !2078)
!2086 = !DILocation(line: 91, column: 34, scope: !2078)
!2087 = !DILocation(line: 91, column: 44, scope: !2078)
!2088 = !DILocation(line: 91, column: 9, scope: !2078)
!2089 = !DILocation(line: 91, column: 2, scope: !2078)
!2090 = distinct !DISubprogram(name: "devm_clk_bulk_get_all", scope: !1, file: !1, line: 95, type: !2091, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !109)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!121, !70, !2093}
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2094 = !DILocalVariable(name: "dev", arg: 1, scope: !2090, file: !1, line: 95, type: !70)
!2095 = !DILocation(line: 95, column: 55, scope: !2090)
!2096 = !DILocalVariable(name: "clks", arg: 2, scope: !2090, file: !1, line: 96, type: !2093)
!2097 = !DILocation(line: 96, column: 35, scope: !2090)
!2098 = !DILocalVariable(name: "devres", scope: !2090, file: !1, line: 98, type: !2028)
!2099 = !DILocation(line: 98, column: 26, scope: !2090)
!2100 = !DILocalVariable(name: "ret", scope: !2090, file: !1, line: 99, type: !121)
!2101 = !DILocation(line: 99, column: 6, scope: !2090)
!2102 = !DILocation(line: 101, column: 11, scope: !2090)
!2103 = !DILocation(line: 101, column: 9, scope: !2090)
!2104 = !DILocation(line: 103, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 103, column: 6)
!2106 = !DILocation(line: 103, column: 6, scope: !2090)
!2107 = !DILocation(line: 104, column: 3, scope: !2105)
!2108 = !DILocation(line: 106, column: 25, scope: !2090)
!2109 = !DILocation(line: 106, column: 31, scope: !2090)
!2110 = !DILocation(line: 106, column: 39, scope: !2090)
!2111 = !DILocation(line: 106, column: 8, scope: !2090)
!2112 = !DILocation(line: 106, column: 6, scope: !2090)
!2113 = !DILocation(line: 107, column: 6, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 107, column: 6)
!2115 = !DILocation(line: 107, column: 10, scope: !2114)
!2116 = !DILocation(line: 107, column: 6, scope: !2090)
!2117 = !DILocation(line: 108, column: 11, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 107, column: 15)
!2119 = !DILocation(line: 108, column: 19, scope: !2118)
!2120 = !DILocation(line: 108, column: 4, scope: !2118)
!2121 = !DILocation(line: 108, column: 9, scope: !2118)
!2122 = !DILocation(line: 109, column: 22, scope: !2118)
!2123 = !DILocation(line: 109, column: 3, scope: !2118)
!2124 = !DILocation(line: 109, column: 11, scope: !2118)
!2125 = !DILocation(line: 109, column: 20, scope: !2118)
!2126 = !DILocation(line: 110, column: 14, scope: !2118)
!2127 = !DILocation(line: 110, column: 19, scope: !2118)
!2128 = !DILocation(line: 110, column: 3, scope: !2118)
!2129 = !DILocation(line: 111, column: 2, scope: !2118)
!2130 = !DILocation(line: 112, column: 15, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 111, column: 9)
!2132 = !DILocation(line: 112, column: 3, scope: !2131)
!2133 = !DILocation(line: 115, column: 9, scope: !2090)
!2134 = !DILocation(line: 115, column: 2, scope: !2090)
!2135 = !DILocation(line: 116, column: 1, scope: !2090)
!2136 = distinct !DISubprogram(name: "devm_clk_bulk_release", scope: !1, file: !1, line: 48, type: !1939, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !109)
!2137 = !DILocalVariable(name: "dev", arg: 1, scope: !2136, file: !1, line: 48, type: !70)
!2138 = !DILocation(line: 48, column: 50, scope: !2136)
!2139 = !DILocalVariable(name: "res", arg: 2, scope: !2136, file: !1, line: 48, type: !60)
!2140 = !DILocation(line: 48, column: 61, scope: !2136)
!2141 = !DILocalVariable(name: "devres", scope: !2136, file: !1, line: 50, type: !2028)
!2142 = !DILocation(line: 50, column: 26, scope: !2136)
!2143 = !DILocation(line: 50, column: 35, scope: !2136)
!2144 = !DILocation(line: 52, column: 15, scope: !2136)
!2145 = !DILocation(line: 52, column: 23, scope: !2136)
!2146 = !DILocation(line: 52, column: 33, scope: !2136)
!2147 = !DILocation(line: 52, column: 41, scope: !2136)
!2148 = !DILocation(line: 52, column: 2, scope: !2136)
!2149 = !DILocation(line: 53, column: 1, scope: !2136)
!2150 = distinct !DISubprogram(name: "devm_clk_put", scope: !1, file: !1, line: 129, type: !2151, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !109)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !70, !57}
!2153 = !DILocalVariable(name: "dev", arg: 1, scope: !2150, file: !1, line: 129, type: !70)
!2154 = !DILocation(line: 129, column: 34, scope: !2150)
!2155 = !DILocalVariable(name: "clk", arg: 2, scope: !2150, file: !1, line: 129, type: !57)
!2156 = !DILocation(line: 129, column: 51, scope: !2150)
!2157 = !DILocalVariable(name: "ret", scope: !2150, file: !1, line: 131, type: !121)
!2158 = !DILocation(line: 131, column: 6, scope: !2150)
!2159 = !DILocation(line: 133, column: 23, scope: !2150)
!2160 = !DILocation(line: 133, column: 62, scope: !2150)
!2161 = !DILocation(line: 133, column: 8, scope: !2150)
!2162 = !DILocation(line: 133, column: 6, scope: !2150)
!2163 = !DILocalVariable(name: "__ret_warn_on", scope: !2164, file: !1, line: 135, type: !121)
!2164 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 135, column: 2)
!2165 = !DILocation(line: 135, column: 2, scope: !2164)
!2166 = !DILocation(line: 135, column: 2, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 135, column: 2)
!2168 = !DILocation(line: 135, column: 2, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2167, file: !1, line: 135, column: 2)
!2170 = !DILocation(line: 135, column: 2, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 135, column: 2)
!2172 = !DILocation(line: 135, column: 2, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 135, column: 2)
!2174 = !{i32 -2143784915, i32 -2143784886, i32 -2143784840, i32 -2143784782, i32 -2143784728, i32 -2143784674, i32 -2143784619, i32 -2143784588}
!2175 = !DILocation(line: 135, column: 2, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 135, column: 2)
!2177 = !{i32 -2143784182, i32 -2143784175, i32 -2143784123, i32 -2143784092, i32 -2143784062}
!2178 = !DILocation(line: 135, column: 2, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 135, column: 2)
!2180 = !DILocation(line: 136, column: 1, scope: !2150)
!2181 = distinct !DISubprogram(name: "devm_clk_match", scope: !1, file: !1, line: 119, type: !2182, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !109)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!121, !70, !60, !60}
!2184 = !DILocalVariable(name: "dev", arg: 1, scope: !2181, file: !1, line: 119, type: !70)
!2185 = !DILocation(line: 119, column: 42, scope: !2181)
!2186 = !DILocalVariable(name: "res", arg: 2, scope: !2181, file: !1, line: 119, type: !60)
!2187 = !DILocation(line: 119, column: 53, scope: !2181)
!2188 = !DILocalVariable(name: "data", arg: 3, scope: !2181, file: !1, line: 119, type: !60)
!2189 = !DILocation(line: 119, column: 64, scope: !2181)
!2190 = !DILocalVariable(name: "c", scope: !2181, file: !1, line: 121, type: !56)
!2191 = !DILocation(line: 121, column: 15, scope: !2181)
!2192 = !DILocation(line: 121, column: 19, scope: !2181)
!2193 = !DILocation(line: 122, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 122, column: 6)
!2195 = !DILocation(line: 122, column: 9, scope: !2194)
!2196 = !DILocation(line: 122, column: 14, scope: !2194)
!2197 = !DILocation(line: 122, column: 13, scope: !2194)
!2198 = !DILocation(line: 122, column: 6, scope: !2181)
!2199 = !DILocalVariable(name: "__ret_warn_on", scope: !2200, file: !1, line: 123, type: !121)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !1, line: 123, column: 3)
!2201 = distinct !DILexicalBlock(scope: !2194, file: !1, line: 122, column: 17)
!2202 = !DILocation(line: 123, column: 3, scope: !2200)
!2203 = !DILocation(line: 123, column: 3, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !1, line: 123, column: 3)
!2205 = !DILocation(line: 123, column: 3, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 123, column: 3)
!2207 = !DILocation(line: 123, column: 3, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 123, column: 3)
!2209 = !DILocation(line: 123, column: 3, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 123, column: 3)
!2211 = !{i32 -2143786343, i32 -2143786314, i32 -2143786268, i32 -2143786210, i32 -2143786156, i32 -2143786102, i32 -2143786047, i32 -2143786016}
!2212 = !DILocation(line: 123, column: 3, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 123, column: 3)
!2214 = !{i32 -2143785610, i32 -2143785603, i32 -2143785551, i32 -2143785520, i32 -2143785490}
!2215 = !DILocation(line: 123, column: 3, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 123, column: 3)
!2217 = !DILocation(line: 124, column: 3, scope: !2201)
!2218 = !DILocation(line: 126, column: 10, scope: !2181)
!2219 = !DILocation(line: 126, column: 9, scope: !2181)
!2220 = !DILocation(line: 126, column: 15, scope: !2181)
!2221 = !DILocation(line: 126, column: 12, scope: !2181)
!2222 = !DILocation(line: 126, column: 2, scope: !2181)
!2223 = !DILocation(line: 127, column: 1, scope: !2181)
!2224 = distinct !DISubprogram(name: "devm_get_clk_from_child", scope: !1, file: !1, line: 139, type: !2225, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !109)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!57, !70, !1842, !78}
!2227 = !DILocalVariable(name: "dev", arg: 1, scope: !2224, file: !1, line: 139, type: !70)
!2228 = !DILocation(line: 139, column: 52, scope: !2224)
!2229 = !DILocalVariable(name: "np", arg: 2, scope: !2224, file: !1, line: 140, type: !1842)
!2230 = !DILocation(line: 140, column: 29, scope: !2224)
!2231 = !DILocalVariable(name: "con_id", arg: 3, scope: !2224, file: !1, line: 140, type: !78)
!2232 = !DILocation(line: 140, column: 45, scope: !2224)
!2233 = !DILocalVariable(name: "ptr", scope: !2224, file: !1, line: 142, type: !56)
!2234 = !DILocation(line: 142, column: 15, scope: !2224)
!2235 = !DILocalVariable(name: "clk", scope: !2224, file: !1, line: 142, type: !57)
!2236 = !DILocation(line: 142, column: 21, scope: !2224)
!2237 = !DILocation(line: 144, column: 8, scope: !2224)
!2238 = !DILocation(line: 144, column: 6, scope: !2224)
!2239 = !DILocation(line: 145, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 145, column: 6)
!2241 = !DILocation(line: 145, column: 6, scope: !2224)
!2242 = !DILocation(line: 146, column: 10, scope: !2240)
!2243 = !DILocation(line: 146, column: 3, scope: !2240)
!2244 = !DILocation(line: 148, column: 27, scope: !2224)
!2245 = !DILocation(line: 148, column: 31, scope: !2224)
!2246 = !DILocation(line: 148, column: 8, scope: !2224)
!2247 = !DILocation(line: 148, column: 6, scope: !2224)
!2248 = !DILocation(line: 149, column: 14, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 149, column: 6)
!2250 = !DILocation(line: 149, column: 7, scope: !2249)
!2251 = !DILocation(line: 149, column: 6, scope: !2224)
!2252 = !DILocation(line: 150, column: 10, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 149, column: 20)
!2254 = !DILocation(line: 150, column: 4, scope: !2253)
!2255 = !DILocation(line: 150, column: 8, scope: !2253)
!2256 = !DILocation(line: 151, column: 14, scope: !2253)
!2257 = !DILocation(line: 151, column: 19, scope: !2253)
!2258 = !DILocation(line: 151, column: 3, scope: !2253)
!2259 = !DILocation(line: 152, column: 2, scope: !2253)
!2260 = !DILocation(line: 153, column: 15, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 152, column: 9)
!2262 = !DILocation(line: 153, column: 3, scope: !2261)
!2263 = !DILocation(line: 156, column: 9, scope: !2224)
!2264 = !DILocation(line: 156, column: 2, scope: !2224)
!2265 = !DILocation(line: 157, column: 1, scope: !2224)
